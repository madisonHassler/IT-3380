# Challenge: Subqueries & Wildcards in MySQL

<div class="user_content enhanced" data-test-id="assignments-2-assignment-toggle-details-text"><h1 class="code-line" data-line-start="0" data-line-end="1">Subqueries &amp; Wildcards in SQL</h1>
<h2 class="code-line" data-line-start="2" data-line-end="3"><a id="Goals_2"></a>Goals</h2>
<ul>
<li class="has-line-data" data-line-start="4" data-line-end="5">To gain experience writing more complex SQL queries using subqueries</li>
<li class="has-line-data" data-line-start="5" data-line-end="7">To gain continue using wildcards in SQL</li>
</ul>
<h2 class="code-line" data-line-start="7" data-line-end="8"><a id="Description_7"></a>Description</h2>
<p class="has-line-data" data-line-start="9" data-line-end="10">In this challenge you will be using the classicmodels SQL database and are asked to write complex SQL queries using subqueries and wildcards. A subquery is a nested query and a wildcard character is used to substitute one or more characters in a string.</p>
<h2 class="code-line" data-line-start="11" data-line-end="12"><a id="Purpose_11"></a>Purpose</h2>
<p class="has-line-data" data-line-start="13" data-line-end="14">This challenge will provide you with experience developing complex SQL queries.</p>
<h2 class="code-line" data-line-start="15" data-line-end="16"><a id="Project_Tasks_15"></a>Project Tasks</h2>
<ol>
<li class="has-line-data" data-line-start="17" data-line-end="18">Log into the Docker and the MySQL server, and choose the classicmodels database</li>
<li class="has-line-data" data-line-start="18" data-line-end="19">Construct queries to answer the questions about the database and save queries to an .sql file.</li>
<li class="has-line-data" data-line-start="19" data-line-end="21">Submit the .sql file to Canvas.</li>
</ol>
<h2 class="code-line" data-line-start="21" data-line-end="22"><a id="1_Log_into_the_Docker_and_MySQL_21"></a>1. Log into the Docker and MySQL</h2>
<ol>
<li class="has-line-data" data-line-start="23" data-line-end="24">Log into the sql-container</li>
<li class="has-line-data" data-line-start="24" data-line-end="25">Log into the MySQL server with username root and password root</li>
<li class="has-line-data" data-line-start="25" data-line-end="27">Select the classicmodels database</li>
</ol>
<h2 class="code-line" data-line-start="27" data-line-end="28">2. Develop SQL Queries</h2>
<p class="has-line-data" data-line-start="29" data-line-end="30"><strong><em>Write queries using subqueries for the following questions</em></strong>. Your solution from module 6 will be of help to you for the following.</p>
<ol>
<li class="has-line-data" data-line-start="31" data-line-end="32">Write a query to show the customer number, name, payment date, and payment amount for payments greater than the average payment.</li>
<li class="has-line-data" data-line-start="32" data-line-end="33">Create a query to generate a list of managers. Show their employee number, first name, and last name.</li>
<li class="has-line-data" data-line-start="33" data-line-end="34">Which offices have the same number of employees as the London office? Show the city, office code and number of employees.</li>
<li class="has-line-data" data-line-start="34" data-line-end="35">Which product(s) have a higher quantity ordered than “1940s Ford truck”? Show the product names and quantity ordered.</li>
<li class="has-line-data" data-line-start="35" data-line-end="36">Show the products that have a lower dollar value in orders than the “1957 Corvette Convertible”. Show the product name and total value.</li>
<li class="has-line-data" data-line-start="36" data-line-end="38">Show the order number, customer number, and order total for orders with a larger order total than order number 10222.</li>
</ol>
<p class="has-line-data" data-line-start="38" data-line-end="39"><strong><em>Write queries using wildcards for the following questions</em></strong>.</p>
<ol>
<li class="has-line-data" data-line-start="40" data-line-end="41">Show the customer name and total payments for companies whose name ends in “Ltd”.</li>
<li class="has-line-data" data-line-start="41" data-line-end="42">How many employees have a three digit extension? A three digit extension looks like xXXX.</li>
<li class="has-line-data" data-line-start="42" data-line-end="43">Show the product code, name, vendor, and buy price for products from the 1950s (1950 - 1959). The year appears is in the name.</li>
<li class="has-line-data" data-line-start="43" data-line-end="44">show all office information for offices in the 212 area code. Hint. Look at the phone number.</li>
<li class="has-line-data" data-line-start="44" data-line-end="45">Show first name, last name, employee number and email for the sales managers.</li>
<li class="has-line-data" data-line-start="45" data-line-end="47">Show the name, product code, quantity in stock, and buy price for products with “Chevy” in the name.</li>
</ol>
<h2 class="code-line" data-line-start="47" data-line-end="48"><a id="3_What_to_Submit_47"></a>3. What to Submit</h2>
<p class="has-line-data" data-line-start="49" data-line-end="50">Submit a zip file named mod10_queries_[pawrint].zip that contains the following files: mod10_[pawrint].sql with the queries you constructed in the previous steps to Canvas.</p></div>

# Challenge: Joins In MySQL

<div class="user_content enhanced" data-test-id="assignments-2-assignment-toggle-details-text"><h2 class="code-line" data-line-start="0" data-line-end="1">Goals</h2>
<ul>
<li class="has-line-data" data-line-start="2" data-line-end="3">To gain experience writing more complex SQL queries using Joins</li>
<li class="has-line-data" data-line-start="3" data-line-end="4">To develop an understanding of the differences between Join types</li>
<li class="has-line-data" data-line-start="4" data-line-end="6">To develop an understanding of the differences between connecting tables using WHERE vs JOIN</li>
</ul>
<h2 class="code-line" data-line-start="6" data-line-end="7"><a id="Description_6"></a>Description</h2>
<p class="has-line-data" data-line-start="8" data-line-end="9">In this challenge you will be using the classicmodels SQL database and are asked to write SQL queries using the Joins. Joins are based in set theory and changing the type of join used in a query will likely change the result of the query.</p>
<h2 class="code-line" data-line-start="10" data-line-end="11"><a id="Purpose_10"></a>Purpose</h2>
<p class="has-line-data" data-line-start="12" data-line-end="13">This challenge will provide you with experience developing queries using Joins in MySQL.</p>
<h2 class="code-line" data-line-start="14" data-line-end="15"><a id="Project_Tasks_14"></a>Project Tasks</h2>
<ol>
<li class="has-line-data" data-line-start="16" data-line-end="17">Log into the Docker and the MySQL server, and choose the classicmodels database</li>
<li class="has-line-data" data-line-start="17" data-line-end="18">Construct queries to answer the questions about the database and save queries to an .sql file.</li>
<li class="has-line-data" data-line-start="18" data-line-end="20">Submit the .sql file to Canvas.</li>
</ol>
<h2 class="code-line" data-line-start="20" data-line-end="21"><a id="1_Log_into_the_Docker_and_MySQL_20"></a>1. Log into the Docker and MySQL</h2>
<ol>
<li class="has-line-data" data-line-start="22" data-line-end="23">Log into the sql-container</li>
<li class="has-line-data" data-line-start="23" data-line-end="24">Log into the MySQL server with username root and password root</li>
<li class="has-line-data" data-line-start="24" data-line-end="26">Select the classicmodels database</li>
</ol>
<h2 class="code-line" data-line-start="26" data-line-end="27"><a id="2_Develop_Queries_26"></a>2. Develop Queries</h2>
<h3 class="code-line" data-line-start="28" data-line-end="29"><a id="2A_28"></a>2A</h3>
<p class="has-line-data" data-line-start="30" data-line-end="31">For each of the following questions you will write queries using the following three (3) types of joins. You also have to write a description of if/how the results differ. In your description you should include the number of results returned and the columns where NULL values are returned.</p>
<ul>
<li class="has-line-data" data-line-start="32" data-line-end="33">JOIN</li>
<li class="has-line-data" data-line-start="34" data-line-end="35">LEFT JOIN</li>
<li class="has-line-data" data-line-start="35" data-line-end="37">RIGHT JOIN</li>
</ul>
<ol>
<li class="has-line-data" data-line-start="37" data-line-end="38">Display the customer name, customer number, along with their sales rep’s number, first name, and last name.</li>
<li class="has-line-data" data-line-start="38" data-line-end="39">Display each employee’s first and last name and their office code, city, and phone.</li>
<li class="has-line-data" data-line-start="39" data-line-end="40">Display the customer’s name, and number along with the order number order date, product name, quantity, and price for each of the customer’s orders.</li>
<li class="has-line-data" data-line-start="40" data-line-end="41">Display the customer name and customer number along with the payment date, check number, and amount for each payment</li>
<li class="has-line-data" data-line-start="41" data-line-end="43">Display the product line, description, and product name for all products</li>
</ol>
<h3 class="code-line" data-line-start="43" data-line-end="44"><a id="2B_43"></a>2B</h3>
<p class="has-line-data" data-line-start="45" data-line-end="46">For the following questions you should write a query using the most appropriate join.</p>
<ol>
<li class="has-line-data" data-line-start="48" data-line-end="49">Show the customer name, order number and order date only for customers who have placed orders.</li>
<li class="has-line-data" data-line-start="49" data-line-end="50">Show the order number, and order total for all orders. Include orders with no order details.</li>
<li class="has-line-data" data-line-start="50" data-line-end="51">Show the employee name (first, last) and office address (address line 1, state and country) for all employees.</li>
<li class="has-line-data" data-line-start="51" data-line-end="53">Show the customer, number, payment date, check number, and amount for each payment. Include customers who have not made any payments.</li>
<li>Show the employee name, customer name and the total sales for that customer. The results should include employees even if they have do not have customers.</li>
</ol>
<h2 class="code-line" data-line-start="53" data-line-end="54"><a id="3_What_to_Submit_53"></a>3. What to Submit</h2>
<p class="has-line-data" data-line-start="55" data-line-end="56">In Canvas you should submit a zip folder named joins_[pawrint].zip containing the queries in a file named joins_[pawrint].sql and a the descriptions from part 2A in a text file named joins_[pawrint].txt.</p></div>
