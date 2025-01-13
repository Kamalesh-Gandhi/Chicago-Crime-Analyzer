import pandas as pd
import mysql.connector as db
from mysql.connector import Error

# SQL connection function
def SQL_Connection():
    config = {
        "user": "root",
        "password": "6381581291",
        "host": "127.0.0.1",
        "database": "ChicagoCrimeAnalyzer"
    }
    try:
        conn = db.connect(**config)
        cursor = conn.cursor()
        print("Connection Established!")
        return conn, cursor
    except Error as e:
        print(f"Error connecting to MySQL: {e}")
        return None, None


#this Create_Table will create a table in the database
def Create_Table(cursor,table_query):
    try:
        cursor.execute(table_query)
        print("\nSuccessfully Created Table")
    except Error as e:
        print("\nCreateTable_Error: ", e)  


# Connect to the MySQL server
print("Starting the script...")
conn, cursor = SQL_Connection()

# Check if the connection was successful
if conn is not None and cursor is not None:
    print("Connection Successful!")

else:
    print("Connection Failed. Check the error above.")

#-----------------------------------------------------------------------------------------------------------------------------

# SQL command
create_table_query = '''
CREATE TABLE IF NOT EXISTS CRIME_DATE (
    Crime_ID INT PRIMARY KEY,
    Date DATE NOT NULL,
    Location VARCHAR(255) NOT NULL,
    Description VARCHAR(255) NOT NULL,
    Arrest BOOLEAN NOT NULL
);
'''

Create_Table(cursor, create_table_query)

#------------------------------------------------------------------------------------------------------------------------------