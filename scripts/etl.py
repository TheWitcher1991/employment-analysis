import os

import pandas as pd
from sqlalchemy import create_engine


def load_data(csv_file, db_url):
    try:
        df = pd.read_csv(csv_file)
        engine = create_engine(db_url)

        df.dropna(
            subset=[
                "num_economactivepopulation_all",
                "employed_num_all",
                "unemployed_num_all",
                "eactivity_lvl",
                "employment_lvl",
                "unemployment_lvl",
            ],
            inplace=True,
        )

        df.to_sql("employment", engine, if_exists="replace", index=False)
        print("Данные загружены успешно!")
    except pd.errors.EmptyDataError:
        print("Ошибка: Пустой CSV файл.")
    except Exception as e:
        print(f"Ошибка при загрузке данных: {e}")


if __name__ == "__main__":
    csv_file = "./data/data.csv"
    db_url = os.environ.get("POSTGRES_URI")
    load_data(csv_file, db_url)
