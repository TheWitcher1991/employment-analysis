import pandas as pd

datasets = "./data/"

df = pd.read_csv(f"{datasets}data.csv")
meta = pd.read_csv(f"{datasets}meta.csv")
structure = pd.read_csv(f"{datasets}structure.csv")

print("ДАТАСЕТ data.csv \n")
print(df.info())

print("Количество NaN в data.csv \n")
print(df.isnull().all(axis=1).sum())

print("Количество дупликатов в data.csv \n")
print(df.duplicated().sum())

print("\n ДАТАСЕТ meta.csv \n")
print(meta.head())

print("\n ДАТАСЕТ structure.csv \n")
print(structure.head())
