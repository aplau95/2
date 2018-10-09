import mysql.connector
import csv

connection = mysql.connector.connect(
    host="ambari-head.csc.calpoly.edu",
    user="alau23",
    passwd="6184431",
    database="alau23"
)

with open ('car-makers.csv', 'r') as f:
    reader = csv.reader(f)
    data = next(reader) 
    data = next(reader)
    query = 'INSERT INTO CarMakers VALUES({0})'
    query = query.format(', '.join(['%s'] * len(data)))
    cursor = connection.cursor()
    for data in reader:
        cursor.execute(query % tuple(data))
    connection.commit()
    
with open ('car-names.csv', 'r') as f:
    reader = csv.reader(f)
    data = next(reader) 
    data = next(reader)
    query = 'INSERT INTO CarNames VALUES({0})'
    query = query.format(', '.join(['%s'] * len(data)))
    cursor = connection.cursor()
    for data in reader:
        cursor.execute(query % tuple(data))
    connection.commit()

with open ('car-data.csv', 'r') as f:
    reader = csv.reader(f)
    data = next(reader) 
    data = next(reader)
    query = 'INSERT INTO CarData VALUES({0})'
    query = query.format(', '.join(['%s'] * len(data)))
    cursor = connection.cursor()
    for data in reader:
        cursor.execute(query % tuple(data))
    connection.commit()

with open ('countries.csv', 'r') as f:
    reader = csv.reader(f)
    data = next(reader) 
    data = next(reader)
    query = 'INSERT INTO Country VALUES({0})'
    query = query.format(', '.join(['%s'] * len(data)))
    cursor = connection.cursor()
    for data in reader:
        cursor.execute(query % tuple(data))
    connection.commit()

with open ('model-list.csv', 'r') as f:
    reader = csv.reader(f)
    data = next(reader) 
    data = next(reader)
    query = 'INSERT INTO ModelList VALUES({0})'
    query = query.format(', '.join(['%s'] * len(data)))
    cursor = connection.cursor()
    for data in reader:
        cursor.execute(query % tuple(data))
    connection.commit()

with open ('continents.csv', 'r') as f:
    reader = csv.reader(f)
    data = next(reader) 
    data = next(reader)
    query = 'INSERT INTO Continent VALUES({0})'
    query = query.format(', '.join(['%s'] * len(data)))
    cursor = connection.cursor()
    for data in reader:
        cursor.execute(query % tuple(data))
    connection.commit()