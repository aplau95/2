import mysql.connector
import csv
from datetime import datetime

connection = mysql.connector.connect(
    host="ambari-head.csc.calpoly.edu",
    user="alau23",
    passwd="6184431",
    database="alau23"
)

with open ('../csv_files/receipts.csv', 'r') as f:
    reader = csv.reader(f)
    data = next(reader) 
    query = 'INSERT INTO Receipts VALUES({0});'
    query = query.format(', '.join(['%s'] * len(data)))
    cursor = connection.cursor()
    for counter, data in enumerate(reader):
        if counter != 0:
            temp1 = data[1].strip('\"').replace("'",'').replace(" ", '')
            temp2 = datetime.strptime(temp1, "%d-%b-%Y").strftime('%Y-%m-%d')
            data[1] = "'" + temp2 + "'"
            print (format(query % tuple(data)))
    connection.commit()
