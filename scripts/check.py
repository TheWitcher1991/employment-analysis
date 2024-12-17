import pandas as pd

DATA_FOLDER = './cvs/'

df = pd.read_csv(f'{DATA_FOLDER}data.csv')
meta = pd.read_csv(f'{DATA_FOLDER}meta.csv')
structure = pd.read_csv(f'{DATA_FOLDER}structure.csv')

print('ДАТАСЕТ data.csv \n')
print(df.info())

print('\n ДАТАСЕТ meta.csv \n')
print(meta.head())

print('\n ДАТАСЕТ structure.csv \n')
print(structure.head())
