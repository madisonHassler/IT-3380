/***************************************************************************** 
 * Author:      Madison Hassler
 * Pawprint:    mehfmd
 * Course:      INFOTC 3380
 * Semester:    Fall 2022
 * Date:        October 28, 2022
 * Module:      10
 * Challenge:   Subqueries & Wildcards in MySQL
 ****************************************************************************/

-- Write queries using subqueries for the following questions. Your solution from module 6 will be of help to you for the following.


-- 1. Write a query to show the customer number, name, payment date, and payment amount for payments greater than the average payment.
SELECT c.customerNumber, c.customerName, p.paymentDate, AVG(p.amount)
FROM customers c, payments p
WHERE c.customerNumber = p.customerNumber
GROUP BY p.paymentDate, c.customerNumber
HAVING AVG(p.amount) > (SELECT AVG(p.amount)
                        FROM payments p);



-- 2. Create a query to generate a list of managers. Show their employee number, first name, and last name.
SELECT employeeNumber, firstName, lastName
FROM employees
WHERE reportsTo IN (SELECT employeeNumber 
                    FROM employees);


-- 3. Which offices have the same number of employees as the London office? Show the city, office code and number of employees.
SELECT o.city, e.officeCode, COUNT(e.employeeNumber) AS "Number of Employees"
FROM employees e, offices o
WHERE e.officeCode = o.officeCode
GROUP BY e.officeCode
HAVING COUNT(e.employeeNumber) = (SELECT COUNT(e.employeeNumber) 
                                    FROM employees e, offices o 
                                    WHERE o.city = "London" 
                                    AND  e.officeCode = o.officeCode);

-- 4. Which product(s) have a higher quantity ordered than "1940s Ford truck"? Show the product names and quantity ordered.
SELECT p.productName, SUM(o.quantityOrdered)
FROM orderdetails o, products p
WHERE o.productCode = p.productCode
GROUP BY productName
HAVING SUM(o.quantityOrdered) > (SELECT SUM(o.quantityOrdered) 
                                    FROM orderdetails o, products p 
                                    WHERE p.productName = '1940s Ford truck' 
                                    AND o.productCode = p.productCode);

-- 5. Show the products that have a lower dollar value in orders than the "1957 Corvette Convertible". Show the product name and total value.
SELECT productName, SUM(quantityInStock * buyPrice) AS "Total Value"
FROM products
GROUP BY productName, quantityInStock, buyPrice
HAVING SUM(quantityInStock * buyPrice) < (SELECT SUM(quantityInStock * buyPrice) 
                                            FROM products 
                                            WHERE productName = "1957 Corvette Convertible");


-- 6. Show the order number, customer number, and order total for orders with a larger order total than order number 10222.
SELECT o.orderNumber, s.customerNumber, SUM(quantityOrdered*priceEach) AS "Order Total"
FROM orderdetails o, orders s
WHERE o.orderNumber = s.orderNumber
GROUP BY o.orderNumber
HAVING SUM(quantityOrdered*priceEach) > (SELECT SUM(quantityOrdered*priceEach)
                                            FROM orderdetails
                                            WHERE orderNumber = 10222);







-- Write queries using wildcards for the following questions.

-- 1. Show the company name and total payments for companies whose name ends in "Ltd".
SELECT c.customerName, SUM(p.amount) AS "Total Payments" 
FROM customers c, payments p
WHERE c.customerName LIKE '%Ltd'
AND c.customerNumber = p.customerNumber
GROUP BY c.customerName;


-- 2. How many employees have a three digit extension? A three digit extension looks like xXXX.
SELECT COUNT(extension) AS 'Number of Employees with a Three Digit Extension'
FROM employees
WHERE extension LIKE 'x___';


-- 3. Show the product code, name, vendor, and buy price for products from the 1950s (1950 - 1959). The year appears is in the name.
SELECT productCode, productName, productVendor, buyPrice
FROM products
WHERE productName LIKE '%195_%';


-- 4. show all office information for offices in the 212 area code. Hint. Look at the phone number.
SELECT *
FROM offices
WHERE phone LIKE '%212%';


-- 5. Show first name, last name, employee number and email for the sales managers.
SELECT firstName, lastName, employeeNumber, email
FROM employees
WHERE jobTitle LIKE '%Manager%';


-- 6. Show the name, product code, quantity in stock, and buy price for products with "Chevy" in the name.
SELECT productName, productCode, quantityInStock, buyPrice
FROM products
WHERE productName LIKE '%Chevy%';

