--Wildcards
--select all products whose name contains Ford
SELECT productName, productCode
FROM products
WHERE productName LIKE '%ford%';

--select all products whose name begins with the letter T
SELECT productName, productCode
FROM products
WHERE productName LIKE 'T%';

--JOINS
--Display the customer name and number along with the employee number and name (first, last)

--include only employees who have
SELECT c.customerName, c.customerNumber, e.employeeNumber, e.firstName, e.lastName
FROM customers c, employees e
WHERE c.salesRepEmployeeNumber = e.employeeNumber;

SELECT c.customerName, c.customerNumber, e.employeeNumber, e.firstName, e.lastName
FROM customers c
JOIN employees e ON c.salesRepEmployeeNumber = e.employeeNumber;

--include employees who have don't have customers as well
SELECT c.customerName, c.customerNumber, e.employeeNumber, e.firstName, e.lastName
FROM customers c
RIGHT JOIN employees e ON c.salesRepEmployeeNumber = e.employeeNumber;

SELECT c.customerName, c.customerNumber, e.employeeNumber, e.firstName, e.lastName
FROM employees e
LEFT JOIN customers c ON c.salesRepEmployeeNumber = e.employeeNumber;

SELECT c.customerName, c.customerNumber, e.employeeNumber, e.firstName, e.lastName
FROM customers c
LEFT JOIN employees e ON c.salesRepEmployeeNumber = e.employeeNumber;

--include customers who have don't have employees as well
SELECT c.customerName, c.customerNumber, e.employeeNumber, e.firstName, e.lastName
FROM customers c
LEFT JOIN employees e ON c.salesRepEmployeeNumber = e.employeeNumber;

-- only return employees who dont have customers
SELECT c.customerName, c.customerNumber, e.employeeNumber, e.firstName, e.lastName
FROM customers c
RIGHT JOIN employees e ON c.salesRepEmployeeNumber = e.employeeNumber
WHERE c.customerNumber IS NULL;

--Display the order number, customer name, employee first name and last name  for
-- who have and not placed orders
SELECT o.orderNumber, c.customerName, e.firstName, e.lastName
FROM customers c
JOIN orders o ON c.customerNumber = o.customerNumber
JOIN employees e ON e.employeeNumber = c.salesRepEmployeeNumber;

SELECT o.orderNumber, c.customerName, e.firstName, e.lastName
FROM customers c
LEFT JOIN orders o ON c.customerNumber = o.customerNumber
JOIN employees e ON e.employeeNumber = c.salesRepEmployeeNumber;

SELECT o.orderNumber, c.customerName, e.firstName, e.lastName
FROM customers c
LEFT JOIN orders o ON c.customerNumber = o.customerNumber
JOIN employees e ON e.employeeNumber = c.salesRepEmployeeNumber
WHERE o.orderNumber IS NULL;

--Show customer name of customers who have not made payments
SELECT c.customerName, p.amount
FROM customers c
LEFT JOIN payments p ON p.customerNumber = c.customerNumber
WHERE p.customerNumber IS NULL;

SELECT customerName
FROM customers
WHERE customerNumber NOT IN (SELECT customerNumber FROM payments);

--
SELECT AVG(amount) FROM payments;
Select c.customerName, od.orderNumber
From customers c
LEFT JOIN orders od On c.customerNumber = od.customerNumber;


SELECT SUM(od.quantityordered * od.priceEach)
FROM orderdetails od, products p 
Where od.productCode = p.productCode AND p.productName = "1957 Corvette Convertible"
GROUP BY od.productCode;

SELECT p.productName, SUM(od.quantityordered * od.priceEach) AS "Order Dollar Value"
FROM orderdetails od, products p 
Where od.productCode = p.productCode
GROUP BY od.productCode
HAVING SUM(od.quantityordered * od.priceEach) > 100000;


