#Create simple app that connects to a mysql database
#import mysql module
import mysql.connector

#connect to database
mydb = mysql.connector.connect(
    host="mysql-container",
    user="root",
    passwd="root",
    database="classicmodels"
)

#create a cursor to execute queries
my_cursor = mydb.cursor()

#create the query
sql_query = "select * from employees;"

#execute the query
my_cursor.execute(sql_query)

#get the results
query_result = my_cursor.fetchall()

#print the results
for record in query_result:
    print(f"Name {record[2]} {record[1]}")
    print(f"Email: {record[4]}")
    print(f"Title: {record[7]}\n------------------------\n")