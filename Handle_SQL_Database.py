from sqlalchemy import create_engine
import pandas as pd

engine = create_engine("mysql+pymysql://{user}:{pw}@localhost/{db}".format(
    user="root", pw="6381581291", db="ChicagoCrimeAnalyzer"))

data = pd.read_csv(r'Processed_Crime_Data.csv')

data.to_sql('crime_data', con=engine, if_exists='append', index=False, chunksize=10000)