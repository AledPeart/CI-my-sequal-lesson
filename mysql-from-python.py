import pymysql
import os

#Gets username from our workspace not explained how it changes for gitpod
username = os.getenv('C9_USER')

#Connect to the database
connection = pymysql.connect(host='localhost', user=username, password='', db='Chinook')

try:
    #ren a query
    with connection.cursor() as cursor:
        sql = "SELECT * FROM Artist;"
        cursor.execute(sql)
        result = cursor.fetchall()
        print(result)
finally:
    # Close the connection, regardless of whether the above was succesful
    connection.close()