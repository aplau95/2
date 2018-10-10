import mysql.connector
import csv

connection = mysql.connector.connect(
    host="ambari-head.csc.calpoly.edu",
    user="alau23",
    passwd="6184431",
    database="alau23"
)

cursor = connection.cursor()

def executeScript(filename):
    fd = open(filename, 'r')
    sqlFile = fd.read()
    fd.close()
    sqlCommands = sqlFile.split(';')
    for line in sqlCommands:
        try:
            if line.strip() != '':
                cursor.execute(line)
        except IOError, msg:
            print "Command skipped: ", msg

executeScript('../WINE-setup.sql')
connection.commit()
