/***************************************************************************** 
 * Author:      Madison Hassler
 * Pawprint:    mehfmd
 * Course:      INFOTC 3380
 * Semester:    Fall 2022
 * Date:        September 30, 2022
 * Module:      6
 * Challenge:   Aggregate Queries in MySQL
 ****************************************************************************/

-- Calculate the number of orders for each product that has been ordered. 
-- Display the product name and number of orders in a column called “Number of Orders”. 
-- Display the results in descending order based on “Number of Orders”. 
-- Note: You are calculating the number of orders and not quantity ordered. 
-- For example, if Alice orders 3 pizzas today and 5 pizzas next week then pizza orders equals 2 and the quantity of pizzas ordered equals 8. 
-- 109 rows returned.
SELECT p.productName, COUNT(o.productCode) AS "Number of Orders"
FROM products p, orderdetails o
WHERE p.productCode = o.productCode
GROUP BY p.productCode
ORDER BY COUNT(o.productCode) DESC;


-- Calculate the total number of each product that has been ordered. 
-- Display the product name and quantity ordered in a column called “Quantity Ordered”. 
-- Display the results in descending order based on Quantity Ordered. 109 rows returned.
SELECT p.productName, SUM(o.quantityOrdered) AS "Quantity Ordered"
FROM products p, orderdetails o
WHERE p.productCode = o.productCode
GROUP BY p.productCode
ORDER BY SUM(o.quantityOrdered) DESC;


-- Calculate the total dollar value of the top 25 products that has been ordered in the database. 
-- Display the product name and the dollar value in a column called “Total Value”.
SELECT p.productName, SUM(o.priceEach*o.quantityOrdered) AS "Total Value"
FROM products p, orderdetails o
WHERE p.productCode = o.productCode
GROUP BY p.productCode
ORDER BY SUM(o.priceEach*o.quantityOrdered) DESC
LIMIT 25;


-- Calculate the number of orders each customer has placed and display the top 25 in descending order based on orders placed. 
-- Display the customer name and the orders placed in a columns called “Orders Placed”.
SELECT c.customerName, COUNT(o.customerNumber) AS "Orders PLaced"
FROM customers c, orders o
WHERE c.customerNumber = o.customerNumber
GROUP BY o.customerNumber
ORDER BY COUNT(o.customerNumber) DESC
LIMIT 25;


-- Calculate the total payments made each year. 
-- Display the year and total payments in a column called “Total Payments”. 
-- Note: you will have to use the YEAR() function to get the year portion of the payment date.
SELECT YEAR(paymentDate) AS "YEAR", SUM(amount) AS "Total Payments"
FROM payments
GROUP BY paymentDate;


-- Calculate the total payments made each month in 2004. 
-- Display the month and total payments in a column called “Total Payments”. 
-- Order the results by month in ascending order. Note: you will have to use the MONTH() and YEAR() functions.
SELECT MONTH(paymentDate) AS "Month", SUM(amount) AS "Total Payments"
FROM payments
WHERE YEAR(paymentDate) = 2004
GROUP BY MONTH(paymentDate)
ORDER BY MONTH(paymentDate) ASC;


-- Calculate the total payments made each day in December of 2004. 
-- Display the day in a column named “Day” and total payments in a column called “Total Payments”. 
-- Order the results by day in ascending order. Note: you will have to use the MONTH(), DAY(), and YEAR() functions.
SELECT DAY(paymentDate) AS "DAY", SUM(amount) AS "Total Payments"
FROM payments
WHERE YEAR(paymentDate) = 2004 AND MONTH(paymentDate) = 12
GROUP BY DAY(paymentDate)
ORDER BY DAY(paymentDate) ASC;


-- Calculate the total payments made by each customer in the database who has made a payment. 
-- Display the customer name and the total payments in a column named “Total Payments”. 
-- Order the results by total payments.
SELECT c.customerName, SUM(p.amount) AS "Total Payments"
FROM payments p, customers c
WHERE c.customerNumber = p.customerNumber
GROUP BY c.customerNumber
ORDER BY SUM(p.amount);


-- Calculate and display the number of customers in each state. 
-- Display the state name and and number of customers in each state in a column called “Number of Customers in State”. 
-- Sort the results by the Number of Customers in State.
SELECT state, COUNT(state) AS "Number of Customers in State"
FROM customers
GROUP BY state
ORDER BY COUNT(state) DESC;


-- Which employees manage the most people? 
-- Develop a query to calculate the number of people each employees manages. 
-- Display the employee number and number of employees employees they manage in a column called “Number of Reports”. 
-- Hint: we know an employee manages another employee if their employee number appears in the reportsTo column in the employee table.
SELECT reportsTo, COUNT(reportsTo) AS "Number of Reports"
FROM employees
GROUP BY reportsTo;


-- Write a query to calculate the number of product lines in the database. 
-- Display the result in a column called “Number of Lines”.
SELECT COUNT(productLine) AS "Number of Lines"
FROM productlines;


-- Calculate the dollar value of each product in inventory. 
-- You can calculate this by multiplying the quantity in stock by the buy price. 
-- Display the product name, quantity in stock, buy price, and in its dollar value in a column called “Dollar Value”. 
-- Sort the results in descending order based on dollar value.
SELECT productName, quantityInStock, buyPrice, SUM(quantityInStock * buyPrice) AS "Dollar Value"
FROM products
GROUP BY productCode
ORDER BY SUM(quantityInStock * buyPrice) DESC;