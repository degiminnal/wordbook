import pymysql
import config
import json
from datetime import *
from pymysql.converters import escape_string as escape


class DataBase:
    def __init__(self, host, user, password, database, port, **args):
        self.host = host
        self.user = user
        self.password = password
        self.database = database
        self.port = port
        self.connect_database()
        self.db = None
        self.cursor = None

        self.connect_database()

    def connect_database(self):
        self.db = pymysql.connect(
            host=self.host,
            user=self.user,
            password=self.password,
            database=self.database,
            port=self.port
        )
        self.cursor = self.db.cursor()

    def insert_single_trans(self, word, dic, api):
        try:
            # 将 "//degim.top/web/wordbook/pronounces/caiyun/university.wav" 的冗余前缀去掉
            # dic["wav_path"] = dic["wav_path"][dic["wav_path"].index("pronounces"):]
            dic = json.dumps(dic, ensure_ascii=False)
            dic = escape(dic)
            sql = "INSERT INTO translations(word, api, json) VALUES('{}','{}','{}')".format(word, api, dic)
            self.cursor.execute(sql)
            self.db.commit()
            return True
        except:
            return False

    def insert_single_word(self, word_data):
        try:
            word_data = [escape(data) if str(type(data)) == "<class 'str'>" else data for data in word_data]
            word, sentence, paper, coll_date, period = word_data
            sql = "INSERT INTO words(word, sentence, paper, coll_date, review_date, period) VALUES" \
                  " ('{}','{}','{}','{}','{}','{}')".format(word, sentence, paper, coll_date, coll_date, period)
            self.cursor.execute(sql)
            self.db.commit()
            return True
        except:
            return False

    def translation_exists(self, word, api) -> bool:
        sql = "SELECT * FROM translations WHERE word='{}' AND api='{}'".format(word, api)
        self.cursor.execute(sql)
        _translations = self.cursor.fetchall()
        if len(_translations) == 0:
            return False
        return True

    def set_review_date(self):
        sql = "SELECT words.index, coll_date, counts, period_1, period_2,period_3,period_4,period_5,period_6," \
              "period_7, review_date FROM words join period_type on words.period=period_type.period where next<counts;"
        self.cursor.execute(sql)
        _words = self.cursor.fetchall()
        for _word in _words:
            # _word looks like (1, datetime.date(2023, 2, 6), 5, 1, 2, 4, 7, 15, None, None, datetime.date(2023, 2, 7))
            review_date = _word[10]
            if datetime.now().date() == review_date:
                continue
            for i in range(_word[2]):
                review_date = _word[1] + timedelta(days=_word[i + 3])
                if datetime.now().date() <= review_date:
                    sql = "UPDATE words SET review_date='{}', next='{}' WHERE words.index={}".format(review_date, i+1, _word[0])
                    self.cursor.execute(sql)
                    self.db.commit()
                    break

    @staticmethod
    def get_coll_date():
        coll_date = str(datetime.now()).split('.')[0]
        coll_date = datetime.strptime(coll_date, '%Y-%m-%d %H:%M:%S')
        return coll_date

    def get_word(self):
        coll_date = self.get_coll_date()
        word = "hello"
        sentence = "Hello, My name is degiminnal! Nice to meat you."
        paper = "temporary paper"
        period = "paper"
        word_data = (word, sentence, paper, coll_date, period)
        return word_data


if __name__ == '__main__':
    config = config.load_config()
    db = DataBase(**config)
    db.set_review_date()

