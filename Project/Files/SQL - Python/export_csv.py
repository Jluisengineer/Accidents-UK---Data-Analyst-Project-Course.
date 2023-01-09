# libraries needed to read csv files and connect with database
import csv
import mysql.connector

# connecting with database
cnx = mysql.connector.connect(host= 'localhost',
                                user='root',
                                password='',
                                database='bigdollar')

# Creating a cursor that is used to execute statements to communicate with the MySQL database.
cursor = cnx.cursor()
# Defining the query insert into Name_table(columns) vaues (data)
sql = "select Name, Surname, Date_of_birth from customers;" 
# Executing the query
cursor.execute(sql)
data = cursor.fetchall()
# Opening csv file
with open("customer.csv","w", newline="") as f:
    # csv,reader = reads the file line by line, and lists all the columns in the reader object
    writer = csv.writer(f)
    header = ["Name","Surname","Date of birth"]
    writer.writerow(header)
    writer.writerows(data)
    # Loop row is an array with the data from the columns
    """for row in data:
        writer.writerow(row)
"""