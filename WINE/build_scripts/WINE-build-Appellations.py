import mysql.connector
import csv

connection = mysql.connector.connect(
    host="ambari-head.csc.calpoly.edu",
    user="alau23",
    passwd="6184431",
    database="alau23"
)

with open ('../csv_files/appellations.csv', 'r') as f:
    reader = csv.reader(f)
    data = next(reader) 
    query = 'INSERT INTO Appellations VALUES({0});'
    query = query.format(', '.join(['%s'] * (len(data) -1 )))
    cursor = connection.cursor()
    for data in reader:
        del data[3]
        cursor.execute(format(query % tuple(data)))
    connection.commit()