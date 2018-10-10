import mysql.connector
import csv

connection = mysql.connector.connect(
    host="ambari-head.csc.calpoly.edu",
    user="alau23",
    passwd="6184431",
    database="alau23"
)

with open ('../csv_files/Songs.csv', 'r') as f:
    reader = csv.reader(f)
    data = next(reader) 
    query = 'INSERT INTO Songs VALUES({0})'
    query = query.format(', '.join(['%s'] * len(data)))
    cursor = connection.cursor()
    print query 
    print data
    for data in reader:
        print data
        cursor.execute(query % tuple(data))
    connection.commit()