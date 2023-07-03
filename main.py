import wx
from ui import WordFrame
from queue import Queue
import threading


def pron_holder(que):  # 用于处理音频下载的线程，通过队列 que 传递需要下载的单词
    while True:
        tran = que.get()
        tran.pron()


if __name__ == "__main__":
    queue = Queue()
    thread = threading.Thread(target=pron_holder, args=(queue,))
    thread.start()

    app = wx.App()
    wordFrame = WordFrame(queue)
    wordFrame.Show()
    app.MainLoop()

