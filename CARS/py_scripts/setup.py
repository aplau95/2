import mysql.connector
import csv

connection = mysql.connector.connect(
    host="ambari-head.csc.calpoly.edu",
    user="alau23",
    passwd="6184431",
    database="alau23"
)

cursor = connection.cursor()
for line in open('../CARS-setup.sql'):
    cursor.execute(line)
connection.commit()

