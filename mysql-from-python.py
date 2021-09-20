import pymysql
import os
import datetime

#Gets username from our workspace not explained how it changes for gitpod
username = os.getenv('C9_USER')

#Connect to the database
connection = pymysql.connect(host='localhost', user=username, password='', db='Chinook')

try:
    #run a query
    with connection.cursor() as cursor:
        rows=[('Bill', 35, '0101-01-01 01:04:01'), ( 'Jim', 40, '0101-01-01 01:04:01'), ( 'Terry', 50, '0101-01-01 01:04:01')]
        cursor.executemany("INSERT INTO Friends VALUES (%s, %s, %s);", rows)
        connection.commit()
        
finally:
    # Close the connection, regardless of whether the above was succesful
    connection.close()

