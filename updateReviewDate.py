from database import DataBase
from config import load_config

if __name__ == '__main__':
    config = load_config()
    db = DataBase(**config)
    db.set_review_date()
