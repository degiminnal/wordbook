import wx
import os
import config
import win32api
import win32con
import translator
from database import DataBase


class WordFrame(wx.Frame):
    def __init__(self):
        self.config = config.load_config()
        self.database = DataBase(**self.config)
        frame_width = 520
        frame_height = 300
        self.translators = {
            "caiyun": translator.CloudTrans(wav_path=self.config["wav_path_caiyun"])
        }
        # 居中显示
        # frame_x = (win32api.GetSystemMetrics(win32con.SM_CXSCREEN) - frame_width) / 2
        # frame_y = (win32api.GetSystemMetrics(win32con.SM_CYSCREEN) - frame_height) / 2
        #
        frame_x = win32api.GetSystemMetrics(win32con.SM_CXSCREEN) - frame_width
        frame_y = 30
        frame_x, frame_y = int(frame_x), int(frame_y)
        wx.Frame.__init__(self, None, -1, 'Word Book', pos=(frame_x, frame_y), size=(frame_width, frame_height))
        self.SetMaxSize((frame_width, frame_height))
        self.SetMinSize((frame_width, frame_height))
        panel = wx.Panel(self, -1, style=wx.BORDER_NONE)

        wx.StaticText(panel, -1, "word", pos=(10, 10), size=(50, 20), style=wx.ALIGN_RIGHT)
        self.word_txt = wx.TextCtrl(panel, -1, "", pos=(70, 10), size=(300, 30),
                                    style=wx.TE_PROCESS_ENTER)
        self.search_bnt = wx.Button(panel, -1, "search", pos=(380, 10), size=(90, 30),
                                    style=wx.TE_PROCESS_ENTER)

        wx.StaticText(panel, -1, "sentence", pos=(10, 50), size=(50, 20), style=wx.ALIGN_RIGHT)
        self.sentence_txt = wx.TextCtrl(panel, -1, "", pos=(70, 50), size=(400, 100),
                                        style=wx.TE_PROCESS_ENTER | wx.TE_MULTILINE)

        wx.StaticText(panel, -1, "paper", pos=(10, 160), size=(50, 20), style=wx.ALIGN_RIGHT)
        self.paper_txt = wx.TextCtrl(panel, -1, self.config["paper"], pos=(70, 160), size=(400, 50),
                                     style=wx.TE_PROCESS_ENTER | wx.TE_MULTILINE)

        self.submit_bnt = wx.Button(panel, -1, "submit", pos=(10, 220), size=(90, 30))
        self.info_txt = wx.StaticText(panel, -1, "Press enter to submit!", pos=(120, 230), size=(350, 30), style=wx.ALIGN_RIGHT)

        icon = wx.Icon()
        icon.LoadFile(config.app_path() + r"\word.ico", wx.BITMAP_TYPE_ICO)
        self.SetIcon(icon)

        self.Bind(wx.EVT_BUTTON, self.search_word, self.search_bnt)
        self.Bind(wx.EVT_BUTTON, self.submit_word, self.submit_bnt)
        self.Bind(wx.EVT_TEXT_ENTER, self.submit_word, self.word_txt)
        self.Bind(wx.EVT_TEXT_ENTER, self.submit_word, self.sentence_txt)
        self.Bind(wx.EVT_TEXT_ENTER, self.submit_word, self.paper_txt)

        self.Bind(wx.EVT_TEXT, self.set_default_info, self.word_txt)
        self.Bind(wx.EVT_TEXT, self.set_default_info, self.sentence_txt)
        self.Bind(wx.EVT_TEXT, self.set_default_info, self.paper_txt)

    def search_word(self, event):
        import re
        import webbrowser
        word = self.word_txt.GetValue().strip()
        if not word:
            self.info_txt.SetLabelText(f"Error, please input the word to search!")
        elif not re.fullmatch(r"[A-Za-z]+", word):
            self.info_txt.SetLabelText(f"Error, '{word}' is not a valid word!")
        else:
            flag = False
            for api_name, trans in self.translators.items():
                try:
                    if self.database.translation_exists(word, api_name):
                        flag = True
                        continue
                    dic = trans(word)
                    res = self.database.insert_single_trans(word, dic, api_name)
                    if res is True:
                        flag = True
                        self.info_txt.SetLabelText(f"The translated '{word}' with {api_name} api successfully.")
                    else:
                        self.log(f"trans failed: word:{word} api:{api_name}")
                        self.info_txt.SetLabelText(f"Error, Can't insert translation into database!")
                except:
                    self.log(f"trans failed: word:{word} api:{api_name}")
            if flag:
                url = self.config["word_detail_url"] + word
                webbrowser.open(url)

    def submit_word(self, event):
        words = self.word_txt.GetValue().strip().split()
        sentence = self.sentence_txt.GetValue().strip()
        paper = self.paper_txt.GetValue()
        if len(words) == 0:
            self.info_txt.SetLabelText(f"Error, word can not be empty!")
            return None
        coll_date = self.database.get_coll_date()
        period = "paper"
        if sentence != "":
            for word in words:
                word_data = (word, sentence, paper, coll_date, period)
                result = self.database.insert_single_word(word_data)
                if result is True:
                    self.info_txt.SetLabelText(f"Success, submitted '{word}' to database.")
                    self.config["paper"] = paper
                    config.save_config(self.config)
                else:
                    self.info_txt.SetLabelText(f"Error, Can't insert word into database!")
                    break
        for word in words:
            for api_name, trans in self.translators.items():
                try:
                    if self.database.translation_exists(word, api_name):
                        self.info_txt.SetLabelText(f"The translation of '{word}' with {api_name} api exists.")
                        continue
                    dic = trans(word)
                    res = self.database.insert_single_trans(word, dic, api_name)
                    if res is True:
                        self.info_txt.SetLabelText(f"The translated '{word}' with {api_name} api successfully.")
                    else:
                        self.log(f"trans failed: word:{word} api:{api_name}")
                        self.info_txt.SetLabelText(f"Error, Can't insert translation into database!")
                except:
                    self.log(f"trans failed: word:{word} api:{api_name}")

    def set_default_info(self, event):
        self.set_info("Press enter to submit!")

    def set_info(self, info):
        self.info_txt.SetLabelText(info)

    def log(self, content):
        if not os.path.exists(self.config["log_dir"]):
            f = open(self.config["log_dir"], "w", encoding="utf-8")
            f.close()
        f = open(config.app_path() + r'\log.txt', 'a+', encoding='utf-8')
        f.write(f"{content}\n")
        f.close()
