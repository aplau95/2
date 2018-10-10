import mysql.connector
import csv

connection = mysql.connector.connect(
    host="ambari-head.csc.calpoly.edu",
    user="alau23",
    passwd="6184431",
    database="alau23"
)

with open ('../csv_files/goods.csv', 'r') as f:
    reader = csv.reader(f)
    data = next(reader) 
    query = 'INSERT INTO Goods VALUES({0})'
    query = query.format(', '.join(['%s'] * len(data)))
    cursor = connection.cursor()
    for data in reader:
        cursor.execute(query % tuple(data))
    connection.commit()