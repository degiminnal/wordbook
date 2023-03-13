import translator
from database import DataBase
import os
import config

trans = translator.CloudTrans("/volume1/web/wordbook/pronounces/caiyun")
config = config.load_config()
db = DataBase(**config)
sql = "SELECT word FROM translations where wav=0"
db.cursor.execute(sql)
words = db.cursor.fetchall()
for word in words:
    word = word[0]
    if not os.path.exists(f"/volume1/web/wordbook/pronounces/caiyun/{word}.wav"):
        trans.word = word
        trans.pron()
    sql = f"UPDATE translations SET wav=1 where translations.word='{word}'"
    db.cursor.execute(sql)
    db.db.commit()
db.db.close()

