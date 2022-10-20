/***************************************************************************** 
 * Author:      Madison Hassler
 * Pawprint:    mehfmd
 * Course:      INFOTC 3380
 * Semester:    Spring 2022
 * Date:        October 7, 2022
 * Module:      7
 * Challenge:   Project1
 ****************************************************************************/

// 1. How many products have an MSRP greater than or equal to $100?
db.products.aggregate([
    { $match: { "MSRP": { $gte: 100 } } },
    { $count: "MSRP > 100" }
])


// 2. Calculate the number of orders each customer has placed and display the top 25 in descending order based on orders placed. 
// Display the customer name and the orders placed in a columns called “Orders Placed”.
db.orders.aggregate([
    { $group: { _id: "$customerName", "Orders Placed": { $sum: 1 } } },
    { $sort: { "Orders Placed": -1 } },
    { $limit: 25 }
])


// 3. List the product names where the quantity in stock is greater than 5000 (58 documents returned)
db.products.aggregate([
    { $match: { "quantityInStock": { $gt: 5000 } } },
    { $group: { _id: "$productName" } }
])

// 4. Calculate and display the number of customers in each state. 
// Display the stateand and number of customers in each state in a column called “Number of Customers in State”. 
// Sort the results by the Number of Customers in State.
db.customers.aggregate([
    { $group: { _id: "$state", "Number of Customers in State": { $sum: 1 } } }
])


// 5. Which employees manage the most people? 
// Develop a query to calculate the number of people each employees manages. 
// Display the employee name and number of employees employees they manage in a column called “Number of Reports”.
db.employees.aggregate([
    { $group: { _id: "$reportsTo", "Number of Reports": { $sum: 1 } } },
])


// 6. List the names and credit limit of the customers with the 10 highest credit limits
db.customers.aggregate([
    { $sort: { creditLimit: -1 } },
    { $limit: 10 },
    { $project: { customerName: 1, creditLimit: 1, _id: 0 } }
])

// 7. Write a query to calculate the number of product lines in the database. 
// Display the result in a column called “Number of Lines”.
db.products.aggregate([
    { $unwind: { path: "$productLine.line" } },
    { $group: { _id: "$productLine.line" } },
    { $count: "Number of Lines" }
])


// 8. Calculate the dollar value of each product in inventory. 
// You can calculate this by multiplying the quantity in stock by the buy price. 
// Display the product name, quantity in stock, buy price, and in its dollar value in a column called “Dollar Value”. 
// Sort the results in descending order based on dollar value.
db.products.aggregate([
    { $project: { _id: 0, productName: 1, quantityInStock: 1, buyPrice: 1, "Dollar Value": { $multiply: ["$quantityInStock", "$buyPrice"] } } },
    { $sort: { "Dollar Value": -1 } }
])

