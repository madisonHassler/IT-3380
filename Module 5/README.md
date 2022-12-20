# Challenge: Aggregation Pipeline Queries

<div id="ubx7DsjnVzDC" class="MlJlv_ebWM MlJlv_ycrn MlJlv_cMGi MlJlv_dUEG"><div class="MlJlv_caGd"><span class="fOyUs_bGBk" style="margin: 0px; padding: 0px;"><div class="user_content enhanced" data-test-id="assignments-2-assignment-toggle-details-text"><h1 class="code-line" data-line-start="0" data-line-end="1">Advanced MongoDB Queries using the Aggregation Pipeline</h1>
<h2 class="code-line" data-line-start="2" data-line-end="3"><a id="Goals_2"></a>Goals</h2>
<ul>
<li class="has-line-data" data-line-start="4" data-line-end="5">To gain experience and develop skill writing advanced queries in Mongodb using the aggregation pipeline.</li>
<li class="has-line-data" data-line-start="5" data-line-end="7">To begin continue developing the skill to logically solve more complex queries</li>
</ul>
<h2 class="code-line" data-line-start="7" data-line-end="8"><a id="Description_7"></a>Description</h2>
<p class="has-line-data" data-line-start="9" data-line-end="10">In this challenge you will continue working with the module4 database you created in the previous challenge. You will write ust the aggregation pipeline in MongoDB to develop queries to answer the questions posed below</p>
<h2 class="code-line" data-line-start="11" data-line-end="12"><a id="Purpose_11"></a>Purpose</h2>
<p class="has-line-data" data-line-start="13" data-line-end="14">This challenge will provide experience with generating computed values from data stored in our database using aggregation in mongodb.</p>
<h2 class="code-line" data-line-start="15" data-line-end="16"><a id="Project_Tasks_15"></a>Project Tasks</h2>
<ol>
<li class="has-line-data" data-line-start="17" data-line-end="18">Log into the MongoDB server in the mongo-container in your docker environment.</li>
<li class="has-line-data" data-line-start="18" data-line-end="19">Construct queries to answer the questions about the database and save queries to a javascript (.js) file.</li>
<li class="has-line-data" data-line-start="19" data-line-end="21">Submit the .js file to Canvas.</li>
</ol>
<h2 class="code-line" data-line-start="21" data-line-end="22"><a id="1_Log_Into_the_Mongo_Server_21"></a>1. Log Into the Mongo Server</h2>
<ol>
<li class="has-line-data" data-line-start="23" data-line-end="26">
<p class="has-line-data" data-line-start="23" data-line-end="24">You will first need to log into your mongo-container. Oopen your terminal (Mac) or command prompt (PC) and type the following command from anywhere.</p>
<ul>
<li class="has-line-data" data-line-start="24" data-line-end="26"><code>docker exec -it mongo-container bash</code></li>
</ul>
</li>
<li class="has-line-data" data-line-start="26" data-line-end="29">
<p class="has-line-data" data-line-start="26" data-line-end="27">From insode the mongo-container log into the mongodb server by typing the following command. Remember, our mongodb server does not require authentication now, but that will change in future modules and so the command to login will look different in the future.</p>
<ul>
<li class="has-line-data" data-line-start="27" data-line-end="29"><code>mongo</code></li>
</ul>
</li>
<li class="has-line-data" data-line-start="29" data-line-end="32">
<p class="has-line-data" data-line-start="29" data-line-end="30">Select the module4 database so that you can create your queries. Type the following command</p>
<ul>
<li class="has-line-data" data-line-start="30" data-line-end="32"><code>use module4</code></li>
</ul>
</li>
</ol>
<h2 class="code-line" data-line-start="32" data-line-end="33"><a id="2_Run_MongoDB_Queries_from_the_Commmand_Line_32"></a>2. Run MongoDB Queries from the Commmand Line</h2>
<p class="has-line-data" data-line-start="34" data-line-end="35">Execute queries to answer the following questions.</p>
<p class="has-line-data" data-line-start="36" data-line-end="37">As you are working, save your queries to a text file with a “.js” extension named <strong>aggregation_queries_[pawprint].js</strong>. You will need to submit that when you are done.</p>
<ol>
<li class="has-line-data" data-line-start="38" data-line-end="39">Which states have zip codes with populations greater than (75,000) people?</li>
<li class="has-line-data" data-line-start="39" data-line-end="40">Which cities have populations greater than 200,000 people?</li>
<li class="has-line-data" data-line-start="40" data-line-end="41">What is the total population of each city in FL. Sort in ascending order based on total population?</li>
<li class="has-line-data" data-line-start="41" data-line-end="42">What are the 10 most populous cities in MO?</li>
<li class="has-line-data" data-line-start="42" data-line-end="43">What is the population of New York City, NY?</li>
<li class="has-line-data" data-line-start="43" data-line-end="44">List the cities in Illinois that have 3 or more zip codes? Sort in descending order by total number of zip codes. Hint: count multiple occurrences of a city’s name.</li>
<li class="has-line-data" data-line-start="44" data-line-end="45">Which city has the fewest number of zip codes?</li>
<li class="has-line-data" data-line-start="45" data-line-end="46">What is the name and total population of the most populous city in the zips database?</li>
<li>What is the name and total population of the least populous city in the zips database?</li>
<li class="has-line-data" data-line-start="47" data-line-end="48">What is the name and total population for the 15 most populous cities in the zips database?</li>
<li class="has-line-data" data-line-start="48" data-line-end="49">List the symbol and company name of the companies with the ten (10) highest stock price.</li>
<li class="has-line-data" data-line-start="49" data-line-end="50">List total earnings (EBITDA) by sector.</li>
<li class="has-line-data" data-line-start="50" data-line-end="51">List the average earnings by sector</li>
<li class="has-line-data" data-line-start="51" data-line-end="52">Show the company name and symbol of the top 10 companies in earnings in the Industrials sector?</li>
<li class="has-line-data" data-line-start="52" data-line-end="53">List the names of the companies in the Information Technology sector that paid dividends to shareholders. You will know this if the “Dividend Yield” field is greater than 0.</li>
<li class="has-line-data" data-line-start="53" data-line-end="54">What are the top 10 companies in the “Health Care” sector when it comes to “Earnings/Share”?</li>
<li class="has-line-data" data-line-start="54" data-line-end="55">Calculate the total earnings (EBITDA) for all companies in the Information Technology sector.</li>
<li class="has-line-data" data-line-start="55" data-line-end="57">Calculate the number of outstanding shares for companies in the Industrials sector. Number of outstanding shares can be calculated by dividing the Market Cap by the Price. Display company name, symbol, and number of outstanding shares in ascending order.</li>
</ol>
<h2 class="code-line" data-line-start="57" data-line-end="58"><a id="3_What_to_Submit_57"></a>3. What to Submit</h2>
<p class="has-line-data" data-line-start="59" data-line-end="60">You should submit the javascript file named <strong>aggregation_queries_[pawprint].js</strong> with your queries to Canvas when you are done.</p></div></span></div></div>
