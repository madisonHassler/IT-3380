#import the mongo library
import pymongo

#connect to the mongo server
try:
    mongo_client = pymongo.MongoClient(
        host = "mongo-container",
        username = "",
        password = "",
        serverSelectionTimeoutMS = 3000
    )
    print("Successfully connected to the database.")
except Exception as err:
    print(f"Error Occured: {err}\nExiting the program...")
    quit()

#select the database
classic_db = mongo_client["classicmodels"]

#select the collections
employee_collection = classic_db["employees"]
customers_collection = classic_db["customers"]
orders_collection = classic_db["orders"]
products_collection = classic_db["products"]

#write and execute an aggregation query
#show total payments (dollar value) made by each customer
aggregation_result = customers_collection.aggregate([
    {"$unwind": "$payments"},
    {"$group": {"totalPayments": {"$sum": "$payments.amount"},"_id": "$customerName"}}
])

#print query results
for document in aggregation_result:
    print(f"{document['_id']}: ${round(document['totalPayments'], 2)}")



