/***************************************************************************** 
 * Author:      Madison Hassler
 * Pawprint:    mehfmd
 * Course:      INFOTC 3380
 * Semester:    Fall 2022
 * Date:        November 04, 2022
 * Module:      11
 * Challenge:   Views In MySQL
 ****************************************************************************/

-- 1. Write a query to create a view named "SFEmployees" for those salespeople who work in the San Francisco office. Include the employee name (first, last), number, email, and job title.
CREATE VIEW SFEmployees AS
SELECT e.firstName, e.lastName, e.employeeNumber, e.email, e.jobTitle
FROM employees e
INNER JOIN offices o ON e.officeCode = o.officeCode
WHERE o.city = 'San Francisco';

    -- 1. Query the SFEmployees view to count the number of employees in the San Francisco office.
        SELECT COUNT(employeeNumber) AS NumberOfEmployees 
        FROM SFEmployees; 



-- 2. Write a query to create a view named "managers" to display all the managers. Include the manager's name (first, last), number, email, job title, and office city.
CREATE VIEW managers AS
SELECT e.firstName, e.lastName, e.employeeNumber, e.email, e.jobTitle, o.city
FROM employees e
INNER JOIN offices o ON e.officeCode = o.officeCode
WHERE e.jobTitle LIKE '%Manager%';

    -- 1. Query the managers view to show the number of managers in each city.
        SELECT city, COUNT(employeeNumber) AS NumberOfManagers
        FROM managers
        GROUP BY city;



-- 3. Write a query to create a view named "custByCity" to get a count of how many customers there are in each city.
CREATE VIEW custByCity AS
SELECT c.city, COUNT(c.customerName) AS NumberOfCustomers
FROM customers c
GROUP BY c.city;

    -- 1. Query the custByCity view to show the number of customers in Singapore.
        SELECT city, NumberOfCustomers 
        FROM custByCity 
        WHERE city = 'Singapore';


-- 4. Write a query to create a view named "paymentsByMonth" that calculates payments per month. You will have to group by multiple columns for this query: month and year because payments from January 2004 and January 2005 should not be grouped together. Remember the SQL month() and year() functions.
CREATE VIEW paymentsByMonth AS
SELECT month(p.paymentDate) AS Month, year(p.paymentDate) AS Year, SUM(p.amount) AS Payments
FROM payments p
GROUP BY month(p.paymentDate), year(p.paymentDate);

    -- 1. Query the paymentsByMonth view to show payments in November 2004
            SELECT *
            FROM paymentsByMonth
            WHERE Month = 11 AND Year = 2004;



-- 5. a Write a query to create a view named "orderTotalsByMonth" to calculate order totals (in dollars) per month.
CREATE VIEW orderTotalsByMonth AS
SELECT month(o.orderDate) AS Month, year(o.orderDate) AS Year, SUM(od.quantityOrdered * od.priceEach) AS orderTotals
FROM orders o
INNER JOIN orderdetails od ON o.orderNumber = od.orderNumber
GROUP BY month(o.orderDate), year(o.orderDate);

    -- 1. Query the orderTotalsByMonth view to show the order total in August 2004.
        SELECT * 
        FROM orderTotalsByMonth
        WHERE Month = 8 AND Year = 2004;



-- 6. Write a query to create a view named "salesPerLine" that calculates sales per product line.
CREATE VIEW salesPerLine AS
SELECT pl.productLine, SUM(od.quantityOrdered * od.priceEach) AS SalesTotal
FROM products p
INNER JOIN productlines pl ON p.productLine = pl.productLine
INNER JOIN orderdetails od ON p.productCode = od.productCode
GROUP BY pl.productLine;    
    -- 1. Query the salesPerLine view to show the total sales for the "Classic Cars" line.
        SELECT *
        FROM salesPerLine
        WHERE productLine = 'Classic Cars';


-- 7. Write a query to create a view named "productSalesYear" that calculates sales per product per year. Include the product name, sales total, and year.
CREATE VIEW productSalesYear AS
SELECT p.productName, SUM(od.quantityOrdered * od.priceEach) AS SalesTotal, year(o.orderDate) AS Year
FROM products p
INNER JOIN orderdetails od ON p.productCode = od.productCode
INNER JOIN orders o ON od.orderNumber = o.orderNumber
GROUP BY p.productName, year(o.orderDate);

    -- 1. Query the productSalesYear view to show the sales per year for the "2001 Ferrari Enzo" in 2004.
        SELECT *
        FROM productSalesYear
        WHERE productName = '2001 Ferrari Enzo' AND Year = 2004;



-- 8. Write a query to create a view named "orderTotals" that displays the order total for each order. Include order number, customer name, and total.
CREATE VIEW orderTotals AS
SELECT o.orderNumber, c.customerName, SUM(od.quantityOrdered * od.priceEach) AS OrderTotal
FROM orders o
INNER JOIN customers c ON o.customerNumber = c.customerNumber
INNER JOIN orderdetails od ON o.orderNumber = od.orderNumber
GROUP BY o.orderNumber;

    -- 1. Query the orderTotals view to select the top 15 orders.
        SELECT *
        FROM orderTotals
        ORDER BY OrderTotal DESC
        LIMIT 15;



-- 9. Write a query to create a view named "salesPerRep" that calculates total sales for each sales rep.
CREATE VIEW salesPerRep AS
SELECT e.firstName, e.lastName, SUM(od.quantityOrdered * od.priceEach) AS TotalSales
FROM employees e
INNER JOIN customers c ON c.salesRepEmployeeNumber = e.employeeNumber
INNER JOIN orders o ON o.customerNumber = c.customerNumber
INNER JOIN orderdetails od ON o.orderNumber = od.orderNumber
GROUP BY e.firstName, e.lastName;



-- 10. Write a query to create a view named "salesPerOffice" that displays sales per office.
CREATE VIEW salesPerOffice AS
SELECT oc.city, SUM(od.quantityOrdered * od.priceEach) AS "TotalSales"
FROM offices oc
INNER JOIN employees e ON e.officeCode = oc.officeCode
INNER JOIN customers c ON c.salesRepEmployeeNumber = e.employeeNumber
INNER JOIN orders o ON o.customerNumber = c.customerNumber
INNER JOIN orderdetails od ON o.orderNumber = od.orderNumber
GROUP BY oc.city;