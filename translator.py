import json
from os import path, makedirs
import requests


class Translator:
    def __init__(self, wav_path='pronounce/'):
        self.word = None
        # wav_path 形式为 “home/path/”
        self.wav_path = wav_path.rstrip('/')+'/'
        self.result = {
            "pronounces": None,
            "explanations": list(),
            "synonym": "",
            "antonym": "",
            "st_examples": None,
            "wav_path": "",
        }

    def __call__(self, word):
        self.__init__(self.wav_path)
        self.word = word
        self.trans()
        self.pron()
        wp = f"{self.wav_path}{self.word}.wav"
        wp = wp[wp.index("pronounces"):]
        self.result['wav_path'] = wp
        return self.result

    def pron(self):
        if not path.exists(self.wav_path):
            makedirs(self.wav_path)

    def trans(self):
        pass


class CloudTrans(Translator):
    def __init__(self, wav_path='wav_caiyun/'):
        super().__init__(wav_path)
        self.pronUrl = None
        self.resMap = {
            'pronounces': "prons",
            'explanations': "explanations",
            'synonym': "synonym",
            'antonym': "antonym",
            'st_examples': "wqx_example",
            'wav_path': "wav_path",
        }

    def trans(self):
        super().trans()
        headers = {
            'authority': 'api.interpreter.caiyunai.com',
            'accept': 'application/json, text/plain, */*',
            'accept-language': 'zh-CN,zh;q=0.9',
            'app-name': 'xy',
            'content-type': 'application/json;charset=UTF-8',
            'device-id': '',
            'origin': 'https://fanyi.caiyunapp.com',
            'os-type': 'web',
            'os-version': '',
            'referer': 'https://fanyi.caiyunapp.com/',
            'sec-ch-ua': '"Not_A Brand";v="99", "Google Chrome";v="109", "Chromium";v="109"',
            'sec-ch-ua-mobile': '?0',
            'sec-ch-ua-platform': '"Windows"',
            'sec-fetch-dest': 'empty',
            'sec-fetch-mode': 'cors',
            'sec-fetch-site': 'cross-site',
            'user-agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) '
                          'Chrome/109.0.0.0 Safari/537.36',
            'x-authorization': 'token:qgemv4jr1y38jyq6vhvi',
        }

        json_data = {
            'trans_type': 'en2zh',
            'source': self.word,
        }
        response = requests.post('https://api.interpreter.caiyunai.com/v1/dict', headers=headers, json=json_data)
        if response.status_code != 200:
            raise RuntimeError(f"Can't translate {self.word}")
        response.encoding = "utf-8"
        dic = json.loads(response.text)
        dic = dic['dictionary']
        for key in self.result.keys():
            k = self.resMap[key]
            if k in dic.keys():
                self.result[key] = dic[k]
        if not self.result["explanations"]:
            self.result["explanations"] = [self.trans_sentence(self.word)]

    @staticmethod
    def trans_sentence(source):
        url = "http://api.interpreter.caiyunai.com/v1/translator"
        token = "kjfx3xhzut65mvqatxed"
        payload = {
            "source": source,
            "trans_type": "auto2zh",
            "request_id": "demo",
            "detect": True,
        }
        headers = {
            "content-type": "application/json",
            "x-authorization": "token " + token,
        }
        response = requests.request("POST", url, data=json.dumps(payload), headers=headers)
        return json.loads(response.text)["target"]

    @staticmethod
    def pron_url(word):
        headers = {
            'authority': 'fog-umbrella.cyapi.cn',
            'accept': '*/*',
            'accept-language': 'zh-CN,zh;q=0.9',
            'content-type': 'application/json',
            'origin': 'https://fanyi.caiyunapp.com',
            'referer': 'https://fanyi.caiyunapp.com/',
            'sec-ch-ua': '"Not_A Brand";v="99", "Google Chrome";v="109", "Chromium";v="109"',
            'sec-ch-ua-mobile': '?0',
            'sec-ch-ua-platform': '"Windows"',
            'sec-fetch-dest': 'empty',
            'sec-fetch-mode': 'cors',
            'sec-fetch-site': 'cross-site',
            'user-agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) '
                          'Chrome/109.0.0.0 Safari/537.36',
        }

        json_data = {
            'text': word,
            'lang': 'en',
        }
        response = requests.post('https://fog-umbrella.cyapi.cn/tts', headers=headers, json=json_data)
        if response.status_code == 200:
            # {"status":0,"msg":"api is success","data":{"vioce":"fog-umbrella.cyapi.cn/files/1675747907000.wav"}}
            text = response.text
            dic = json.loads(text)
            return "https://" + dic["data"]["vioce"]
        else:
            raise RuntimeError(f"Can't fetch pronounce url of word {word}!")

    def pron(self):
        super().pron()
        self.pronUrl = self.pron_url(self.word)
        r = requests.get(self.pronUrl)
        if r.status_code != 200:
            raise RuntimeError(f"Can't fetch pronounce from url('{self.pronUrl}')")
        with open(self.wav_path + f'{self.word}.wav', 'wb') as f:
            f.write(r.content)
        f.close()


if __name__ == '__main__':
    trans = CloudTrans("/Volumes/web/wordbook/pronounces/caiyun")
    res = trans("putative")
    trans.pron()
    print(json.dumps(res))
