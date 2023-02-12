import wx
from ui import WordFrame


if __name__ == "__main__":
    app = wx.App()
    wordFrame = WordFrame()
    wordFrame.Show()
    app.MainLoop()

