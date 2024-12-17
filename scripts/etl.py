import pandas as pd
from sqlalchemy import create_engine

df = pd.read_csv('/cvs/data.csv')

engine = create_engine('postgresql://admin:admin@localhost:5432/postgres')

df.to_sql(name='employment', con=engine, if_exists='append', index=False)

print("ETL COMPLETED")
