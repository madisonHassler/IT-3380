--Calculate the average payment made by each customer
--Show customer number and average amount
SELECT customerNumber, AVG(amount) AS "Average Payment"
FROM payments
GROUP BY customerNumber;

--Same as above but return customer name and number, round the average to 2 decimal places
SELECT c.customerNumber, c.customerName, ROUND(AVG(p.amount), 2) AS "Average Payment"
FROM payments p, customers c
WHERE p.customerNumber = c.customerNumber
GROUP BY customerNumber;

--Calaculate the number of payments made by customers who made payments
--Show customer number and number of payments
SELECT customerNumber, COUNT(amount) AS "Number of Payments"
FROM payments
GROUP BY customerNumber;

--Calculate the total payments made by each customer who made payments
SELECT customerNumber, SUM(amount) AS "Total Payments"
FROM payments
GROUP BY customerNumber;

--Calculate the number of customers and employee has. Display the employee
--first name, last name, number of customers
--Display results in descending based on number of customers
SELECT e.firstName, e.lastName, COUNT(c.salesRepEmployeeNumber) AS "Number of Customers"
FROM employees e, customers c
WHERE c.salesRepEmployeeNumber = e.employeeNumber
GROUP BY c.salesRepEmployeeNumber
ORDER BY COUNT(c.salesRepEmployeeNumber) DESC;

--Calculate the total charge for each orderand display the 10 most expensive orders
--in descending order. Display order number and total charge
SELECT orderNumber, SUM(quantityOrdered * priceEach) AS "Total Charge"
FROM orderdetails
GROUP BY orderNumber
ORDER BY SUM(quantityOrdered * priceEach) DESC
LIMIT 10;



















