# -*- coding: utf-8 -*-
import sys
import os
import json


def app_path():
    """Returns the base application path."""
    if hasattr(sys, 'frozen'):
        # Handles PyInstaller
        return os.path.dirname(sys.executable)  # 使用pyinstaller打包后的exe目录
    return os.path.dirname(__file__)  # 没打包前的py目录


def load_config():
    try:
        f = open(app_path() + r"\config.json", "r", encoding="utf-8")
    except:
        f = open("/volume2/homes/degiminnal/Drive/degiminnal/01_Coding/21_wordbook/config.json", "r", encoding="utf-8")
    config = json.load(f)
    return config


def save_config(config):
    config = json.dumps(config)
    try:
        f = open(app_path() + r"\config.json", "w", encoding="utf-8")
    except:
        f = open("/volume2/homes/degiminnal/Drive/degiminnal/01_Coding/21_wordbook/config.json", "w", encoding="utf-8")
    f.write(config)
    f.close()


if __name__ == "__main__":
    print(app_path())
