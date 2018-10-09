import csv 
import MySQLdb

connection = MySQLdb.connector.connect(
    host="ambari-head.csc.calpoly.edu",
    user="alau23",
    passwd="6184431",
    database="alau23"
)

with open ('car-makers.csv', 'r') as f:
    reader = csv.reader(f)
    data = next(reader) 
    query = 'insert into CarMakers values ({0})'
    query = query.format(','.join('?' * len(data)))
    cursor = connection.cursor()
    cursor.execute(query, data)
    for data in reader:
        cursor.execute(query, data)
    cursor.commit()