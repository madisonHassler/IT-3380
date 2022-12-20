# Challenge: Views In MySQL

<div class="user_content enhanced" data-test-id="assignments-2-assignment-toggle-details-text"><h2 class="code-line" data-line-start="2" data-line-end="3">
<a id="Goals_2"></a>Goals</h2>
<ul>
<li class="has-line-data" data-line-start="4" data-line-end="5">To further develop experience creating complex queries in MySQL and MongoDB.</li>
<li class="has-line-data" data-line-start="5" data-line-end="6">To gain experience creating and interacting with views in MySQL and MongoDB.</li>
</ul>
<h2 class="code-line" data-line-start="8" data-line-end="9">
<a id="Description_8"></a>Description</h2>
<p class="has-line-data" data-line-start="10" data-line-end="11">In this challenge you will be using the classicmodels SQL and MongoDB databases to create views in sql and mongodb respectively. You will save your work to .sql and&nbsp; .js file and submit to canvas</p>
<h2 class="code-line" data-line-start="12" data-line-end="13">
<a id="Purpose_12"></a>Purpose</h2>
<p class="has-line-data" data-line-start="14" data-line-end="15">This challenge will provide you with experience developing views in MySQL and MongoDB.</p>
<h2 class="code-line" data-line-start="16" data-line-end="17">
<a id="Project_Tasks_16"></a>Project Tasks</h2>
<ol>
<li class="has-line-data" data-line-start="18" data-line-end="19">Log into the Docker to access your MySQL and MongoDB servers, and choose the classicmodels database</li>
<li class="has-line-data" data-line-start="19" data-line-end="20">Construct views to answer the questions about the database and save queries to an .sql or .js file.</li>
<li class="has-line-data" data-line-start="20" data-line-end="22">Submit the .sql&nbsp; and .js files to Canvas.</li>
</ol>
<h2 class="code-line" data-line-start="22" data-line-end="23">1. Log into Docker and MySQL</h2>
<ol>
<li class="has-line-data" data-line-start="24" data-line-end="25">Log into the sql-container</li>
<li class="has-line-data" data-line-start="25" data-line-end="26">Log into the MySQL server with username root and password root</li>
<li class="has-line-data" data-line-start="26" data-line-end="28">Select the classicmodels database</li>
</ol>
<h2 class="code-line" data-line-start="28" data-line-end="29">
<a id="2_Create_Views_28"></a>2. Create SQL Views</h2>
<p class="has-line-data" data-line-start="30" data-line-end="31">For each of the following questions you will write queries to create views in the classicmodels database. Save your work to a file named views_[pawrint].sql.</p>
<ol>
<li class="has-line-data" data-line-start="32" data-line-end="33">Write a query to create a view named "SFEmployees" for those salespeople who work in the San Francisco office. Include the employee name (first, last), number, email, and job title.
<ol>
<li class="has-line-data" data-line-start="32" data-line-end="33">Query the SFEmployees view to count the number of employees in the San Francisco office.</li>
</ol>
</li>
<li class="has-line-data" data-line-start="33" data-line-end="34">Write a query to create a view named "managers" to display all the managers. Include the manager’s name (first, last), number, email,&nbsp; job title, and office city.
<ol>
<li class="has-line-data" data-line-start="33" data-line-end="34">Query the managers view to show the number of managers in each city.</li>
</ol>
</li>
<li class="has-line-data" data-line-start="34" data-line-end="35">Write a query to create a view named "custByCity" to get a count of how many customers there are in each city.
<ol>
<li>Query the custByCity view to show the number of customers in Singapore.</li>
</ol>
</li>
<li class="has-line-data" data-line-start="35" data-line-end="36">Write a query to create a view named "paymentsByMonth" that calculates payments per month. You will have to group by multiple columns for this query: month and year because payments from January 2004 and January 2005 should not be grouped together. Remember the SQL month() and year() functions.<br>
<ol>
<li class="has-line-data" data-line-start="35" data-line-end="36">Query the paymentsByMonth view to show payments in November 2004</li>
</ol>
</li>
<li class="has-line-data" data-line-start="36" data-line-end="37">Write a query to create a view named "orderTotalsByMonth" to calculate order totals (in dollars) per month.
<ol>
<li>Query the orderTotalsByMonth view to show the order total in August 2004.</li>
</ol>
</li>
<li class="has-line-data" data-line-start="37" data-line-end="38">Write a query to create a view named "salesPerLine" that calculates sales per product line.
<ol>
<li class="has-line-data" data-line-start="37" data-line-end="38">Query the salesPerLine view to show the total sales for the "Classic Cars" line.</li>
</ol>
</li>
<li class="has-line-data" data-line-start="38" data-line-end="39">Write a query to create a view named "productSalesYear" that calculates sales per product per year. Include the product name, sales total, and year.
<ol>
<li class="has-line-data" data-line-start="38" data-line-end="39">Query the productSalesYear view to show the sales per year for the "2001 Ferrari Enzo" in 2004.</li>
</ol>
</li>
<li>Write a query to create a view named "orderTotals" that displays the order total for each order. Include order number, customer name, and total.
<ol>
<li>Query the orderTotals view to select the top 15 orders.</li>
</ol>
</li>
<li class="has-line-data" data-line-start="39" data-line-end="40">Write a query to create a view named "salesPerRep" that calculates total sales for each sales rep.</li>
<li class="has-line-data" data-line-start="40" data-line-end="41">Write a query to create a view named "salesPerOffice" that displays sales per office.</li>
</ol>
<h2 class="code-line" data-line-start="22" data-line-end="23">3. Log into the Docker and MongoDB</h2>
<ol>
<li class="has-line-data" data-line-start="24" data-line-end="25">Log into the mongo-container</li>
<li class="has-line-data" data-line-start="25" data-line-end="26">Log into the mongodb server</li>
<li class="has-line-data" data-line-start="26" data-line-end="28">Select the classicmodels database</li>
</ol>
<h2 class="code-line" data-line-start="28" data-line-end="29">4. Create MongoDB Views</h2>
<p>For each of the following questions you will write queries to create views in the classicmodels database. Save your work to a file named views_[pawrint].js.</p>
<ol>
<li>Write a query to create a view named "custByCity" to get a count of how many customers there are in each city.
<ol>
<li>Query the custByCity view to show the number of customers in Singapore.</li>
</ol>
</li>
<li class="has-line-data" data-line-start="35" data-line-end="36">Write a query to create a view named "paymentsByMonth" that calculates payments per month. You will have to group by multiple columns for this query: month and year because payments from January 2004 and January 2005 should not be grouped together. Remember the SQL month() and year() functions.<br>
<ol>
<li class="has-line-data" data-line-start="35" data-line-end="36">Query the paymentsByMonth view to show payments in November 2004</li>
</ol>
</li>
<li class="has-line-data" data-line-start="36" data-line-end="37">Write a query to create a view named "orderTotalsByMonth" to calculate order totals (in dollars) per month.
<ol>
<li>Query the orderTotalsByMonth view to show the order total in August 2004.</li>
</ol>
</li>
<li>Write a query to create a view named "productSalesYear" that calculates sales per product per year. Include the product name, sales total, and year.
<ol>
<li class="has-line-data" data-line-start="38" data-line-end="39">Query the productSalesYear view to show the sales per year for the "2001 Ferrari Enzo"</li>
</ol>
</li>
<li>Write a query to create a view named "orderTotals" that displays the order total for each order. Include order number, customer name, and total.
<ol>
<li>Query the orderTotals view to select the top 15 orders.</li>
</ol>
</li>
</ol>
<p><strong>** Remember that you can add a field using <a class="inline_disabled external" href="https://www.mongodb.com/docs/manual/reference/operator/aggregation/addToSet/" target="_blank" rel="noreferrer noopener"><span>$addToSet</span><span class="external_link_icon" style="margin-inline-start: 5px; " role="presentation"><svg viewBox="0 0 1920 1920" version="1.1" xmlns="http://www.w3.org/2000/svg" style="width:1em; height:1em; vertical-align:middle; fill:currentColor">
    <path d="M1226.66667,267 C1314.88,267 1386.66667,338.786667 1386.66667,427 L1386.66667,427 L1386.66667,853.666667 L1280,853.666667 L1280,693.666667 L106.666667,693.666667 L106.666667,1493.66667 C106.666667,1523 130.56,1547 160,1547 L160,1547 L1226.66667,1547 C1256.10667,1547 1280,1523 1280,1493.66667 L1280,1493.66667 L1280,1280.33333 L1386.66667,1280.33333 L1386.66667,1493.66667 C1386.66667,1581.88 1314.88,1653.66667 1226.66667,1653.66667 L1226.66667,1653.66667 L160,1653.66667 C71.7866667,1653.66667 0,1581.88 0,1493.66667 L0,1493.66667 L0,427 C0,338.786667 71.7866667,267 160,267 L160,267 Z M1584.37333,709.293333 L1904.37333,1029.29333 C1925.17333,1050.09333 1925.17333,1083.90667 1904.37333,1104.70667 L1904.37333,1104.70667 L1584.37333,1424.70667 L1508.96,1349.29333 L1737.86667,1120.38667 L906.613333,1120.38667 L906.613333,1013.72 L1737.86667,1013.72 L1508.96,784.706667 L1584.37333,709.293333 Z M1226.66667,373.666667 L160,373.666667 C130.56,373.666667 106.666667,397.666667 106.666667,427 L106.666667,427 L106.666667,587 L1280,587 L1280,427 C1280,397.666667 1256.10667,373.666667 1226.66667,373.666667 L1226.66667,373.666667 Z" stroke="none" stroke-width="1" fill-rule="evenodd"></path>
</svg>
<span class="screenreader-only">Links to an external site.</span></span></a> to the group stage of the aggregation pipeline of a query.</strong></p>
<h2 class="code-line" data-line-start="43" data-line-end="44">5. What to Submit</h2>
<p class="has-line-data" data-line-start="45" data-line-end="46">Place both files in a folder named Views_[pawprint] and zip the folder. You should have a folder named Views_[pawprint].zip. Submit that file to Canvas.</p></div>
