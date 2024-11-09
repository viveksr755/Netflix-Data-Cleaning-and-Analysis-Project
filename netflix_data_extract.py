import pandas as pd 
df = pd.read_csv('netflix_titles.csv')
import sqlalchemy as sal
engine = sal.create_engine('mssql://ANKIT\SQLEXPRESS/master?driver=ODBC+DRIVER+17+FOR+SQL+SERVER')
conn=engine.connect()


# df.to_sql('netflix_raw', con=conn , index=False, if_exists = 'replace') first replace then append.
# (automatically created tables will have default data types & max memory, which is not good for performance)
df.to_sql('netflix_raw', con=conn , index=False, if_exists = 'append')
conn.close()

df.head()

df[df.show_id=='s5023'] # checking for foregin lang or spl char in the loaded table

max(df.description.dropna().str.len()) #finding the max length of each column in the table one by one

df.isna().sum()
