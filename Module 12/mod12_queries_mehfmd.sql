/***************************************************************************** 
 * Author:      Madison Hassler
 * Pawprint:    mehfmd
 * Course:      INFOTC 3380
 * Semester:    Fall 2022
 * Date:        November 11, 2022
 * Module:      12
 * Challenge:   CRUD Operations in MySQL
 ****************************************************************************/

-- Select (Read) Queries
        -- 1. Write a query to calculate the dollar amount of payments each sales agent is responsible for. Display the agent name and the total payments.
        SELECT a.AGENT_NAME, SUM(c.PAYMENT_AMT) AS "Total Payments"
        FROM agents a, customer c
        WHERE a.AGENT_CODE = c.AGENT_CODE
        GROUP BY a.AGENT_NAME;

        -- 2. Write a query to calculate payments for each sales agent country. Display the agent country and total payments.
        SELECT a.WORKING_AREA, SUM(c.PAYMENT_AMT) AS "Total Payments"
        FROM agents a, customer c
        WHERE a.AGENT_CODE = c.AGENT_CODE
        GROUP BY a.WORKING_AREA;

        -- 3 .Calculate the commission for each order. Display order id, customer name, agent name, and commission amount.
        SELECT o.ORD_NUM, c.CUST_NAME, a.AGENT_NAME, SUM(a.COMMISSION * ORD_AMOUNT) AS 'Commission'
        FROM orders o, customer c, agents a
        WHERE o.CUST_CODE = c.CUST_CODE AND c.AGENT_CODE = a.AGENT_CODE
        GROUP BY o.ORD_NUM;


-- Update Queries
    -- For this section you should take a screenshot of the results for queries A, B, C, in your terminal to submit.

        -- 1. In the customers table, for customers from New York update the CUST_CITY value to change it from “New York” to “NY”.
        UPDATE customer
        SET CUST_CITY = 'NY'
        WHERE CUST_CITY = 'New York';
            -- A. Now write an query to select all customers from New York City.
            SELECT * 
            FROM customer 
            WHERE CUST_CITY = 'NY';

        -- 2. Increase the commission for sales agents from London by 20%.
        UPDATE agents
        SET COMMISSION = (COMMISSION * 0.2) + COMMISSION
        WHERE WORKING_AREA = 'London';
            -- B. Calculate the commission for each order where the agent is from London. Display order id, customer name, agent name, and commission amount.
            SELECT ORD_NUM, c.CUST_NAME, a.AGENT_NAME, (ORD_AMOUNT * a.COMMISSION) AS COMMISSION
            FROM orders o, agents a, customer c
            WHERE a.AGENT_CODE = o.AGENT_CODE AND c.CUST_CODE = o.CUST_CODE AND a.WORKING_AREA = 'London';
        -- 3. Update customers with grade 2 to grade 3.
        UPDATE customer
        SET GRADE = 3
        WHERE GRADE = 2;
            -- C. Select all customers names and customer codes with grade 3.
            SELECT CUST_NAME, CUST_CODE 
            FROM customer 
            WHERE GRADE = 3;

-- Delete Queries
    -- For this section you should take a screenshot of the results for queries E, F in your terminal to submit.

        -- 1. Delete sales agents from Bangalore.
        DELETE FROM agents
        WHERE WORKING_AREA = 'Bangalore';
            -- E. Write a query to select all columns for all sales agents
            SELECT *
            FROM agents;

        -- 2. Delete customers whose name begins with the letter “S”.
        DELETE FROM customer
        WHERE CUST_NAME LIKE 'S%';
            -- F. Select all columns for all customers.
            SELECT *
            FROM customer;
