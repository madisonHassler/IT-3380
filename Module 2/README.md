<div class="user_content enhanced" data-test-id="assignments-2-assignment-toggle-details-text"><h2 class="code-line" data-line-start="2" data-line-end="3"><a class="instructure_file_link instructure_image_thumbnail" title="Screen Shot 2020-08-28 at 4.44.35 PM.png" href="https://umsystem.instructure.com/courses/137455/files/12898703/download?wrap=1" data-api-endpoint="https://umsystem.instructure.com/api/v1/courses/137455/files/12898703" data-api-returntype="File"></a>Goals</h2>
<ul>
<li class="has-line-data" data-line-start="4" data-line-end="5">To gain experience and develop skill working in the Docker development environment.</li>
<li class="has-line-data" data-line-start="5" data-line-end="6">To gain experience and develop skill loading MySQL data and constructing basic queires.</li>
<li class="has-line-data" data-line-start="6" data-line-end="8">To gain experience and develop skill working on the command line.</li>
</ul>
<h2 class="code-line" data-line-start="8" data-line-end="9"><a id="Description_8"></a>Description</h2>
<p class="has-line-data" data-line-start="10" data-line-end="11">In this challenge you are being provided with an sql file which contains the MySQL statements and data to create a database and load it with data.&nbsp; You are asked to log into the mysql server in the mysql-container in your Docker environment, copy the sql file into the mysql-container, and execute the statements in the MySQL server to create and load the database. You will then develop queries to run on that database. The following is the <a href="https://www.lucidchart.com/pages/database-diagram/database-schema" class="external" target="_blank" rel="noreferrer noopener"><span>schema</span><span class="external_link_icon" style="margin-inline-start: 5px; " role="presentation"><svg viewBox="0 0 1920 1920" version="1.1" xmlns="http://www.w3.org/2000/svg" style="width:1em; height:1em; vertical-align:middle; fill:currentColor">
    <path d="M1226.66667,267 C1314.88,267 1386.66667,338.786667 1386.66667,427 L1386.66667,427 L1386.66667,853.666667 L1280,853.666667 L1280,693.666667 L106.666667,693.666667 L106.666667,1493.66667 C106.666667,1523 130.56,1547 160,1547 L160,1547 L1226.66667,1547 C1256.10667,1547 1280,1523 1280,1493.66667 L1280,1493.66667 L1280,1280.33333 L1386.66667,1280.33333 L1386.66667,1493.66667 C1386.66667,1581.88 1314.88,1653.66667 1226.66667,1653.66667 L1226.66667,1653.66667 L160,1653.66667 C71.7866667,1653.66667 0,1581.88 0,1493.66667 L0,1493.66667 L0,427 C0,338.786667 71.7866667,267 160,267 L160,267 Z M1584.37333,709.293333 L1904.37333,1029.29333 C1925.17333,1050.09333 1925.17333,1083.90667 1904.37333,1104.70667 L1904.37333,1104.70667 L1584.37333,1424.70667 L1508.96,1349.29333 L1737.86667,1120.38667 L906.613333,1120.38667 L906.613333,1013.72 L1737.86667,1013.72 L1508.96,784.706667 L1584.37333,709.293333 Z M1226.66667,373.666667 L160,373.666667 C130.56,373.666667 106.666667,397.666667 106.666667,427 L106.666667,427 L106.666667,587 L1280,587 L1280,427 C1280,397.666667 1256.10667,373.666667 1226.66667,373.666667 L1226.66667,373.666667 Z" stroke="none" stroke-width="1" fill-rule="evenodd"></path>
</svg>
<span class="screenreader-only">Links to an external site.</span></span></a> of the database that you will create.</p>
<p class="has-line-data" data-line-start="10" data-line-end="11"><img src="https://umsystem.instructure.com/courses/137455/files/12898704/preview" alt="mod2-schema.png" width="500" height="279" data-api-endpoint="https://umsystem.instructure.com/api/v1/courses/137455/files/12898704" data-api-returntype="File"></p>
<p class="has-line-data" data-line-start="10" data-line-end="11"><a class="inline_disabled external" href="https://www.youtube.com/watch?v=ymb9gsl_x1U" target="_blank" rel="noreferrer noopener"><span>Watch Database Schema Explained</span><span class="external_link_icon" style="margin-inline-start: 5px; " role="presentation"><svg viewBox="0 0 1920 1920" version="1.1" xmlns="http://www.w3.org/2000/svg" style="width:1em; height:1em; vertical-align:middle; fill:currentColor">
    <path d="M1226.66667,267 C1314.88,267 1386.66667,338.786667 1386.66667,427 L1386.66667,427 L1386.66667,853.666667 L1280,853.666667 L1280,693.666667 L106.666667,693.666667 L106.666667,1493.66667 C106.666667,1523 130.56,1547 160,1547 L160,1547 L1226.66667,1547 C1256.10667,1547 1280,1523 1280,1493.66667 L1280,1493.66667 L1280,1280.33333 L1386.66667,1280.33333 L1386.66667,1493.66667 C1386.66667,1581.88 1314.88,1653.66667 1226.66667,1653.66667 L1226.66667,1653.66667 L160,1653.66667 C71.7866667,1653.66667 0,1581.88 0,1493.66667 L0,1493.66667 L0,427 C0,338.786667 71.7866667,267 160,267 L160,267 Z M1584.37333,709.293333 L1904.37333,1029.29333 C1925.17333,1050.09333 1925.17333,1083.90667 1904.37333,1104.70667 L1904.37333,1104.70667 L1584.37333,1424.70667 L1508.96,1349.29333 L1737.86667,1120.38667 L906.613333,1120.38667 L906.613333,1013.72 L1737.86667,1013.72 L1508.96,784.706667 L1584.37333,709.293333 Z M1226.66667,373.666667 L160,373.666667 C130.56,373.666667 106.666667,397.666667 106.666667,427 L106.666667,427 L106.666667,587 L1280,587 L1280,427 C1280,397.666667 1256.10667,373.666667 1226.66667,373.666667 L1226.66667,373.666667 Z" stroke="none" stroke-width="1" fill-rule="evenodd"></path>
</svg>
<span class="screenreader-only">Links to an external site.</span></span></a> (6:19)</p>
<h2 class="code-line" data-line-start="12" data-line-end="13"><a id="Purpose_12"></a>Purpose</h2>
<p class="has-line-data" data-line-start="14" data-line-end="15">This challenge will provide you with experience wouking with database data in a MySQL server in a command line environment.</p>
<h2 class="code-line" data-line-start="16" data-line-end="17">Challenge Tasks</h2>
<ol>
<li class="has-line-data" data-line-start="18" data-line-end="19">Copy the sql file into Docker from your local file system.</li>
<li class="has-line-data" data-line-start="19" data-line-end="20">Log into the MySQL server in the mysql-container in your docker environment.</li>
<li class="has-line-data" data-line-start="20" data-line-end="21">Load the Database and explore basic SQL commands.</li>
<li class="has-line-data" data-line-start="21" data-line-end="22">Construct queries to answer the questions about the database and save queries to an sql file.</li>
<li class="has-line-data" data-line-start="22" data-line-end="24">Submit sql file to Canvas</li>
</ol>
<h2 class="code-line" data-line-start="24" data-line-end="25"><a id="1_Copy_SQL_file_into_Docker_Container_24"></a>1. Copy SQL file into Docker Container</h2>
<h3 class="code-line" data-line-start="26" data-line-end="27"><a id="Log_into_mysqlcontainer_and_create_a_directory_for_the_sql_file_26"></a>Log into mysql-container and create a directory for the sql file</h3>
<p class="has-line-data" data-line-start="28" data-line-end="29">The following steps will log you into the mysql-contaner where you will then create a directory named ‘sql-files’ in the root home directory.</p>
<ol>
<li class="has-line-data" data-line-start="30" data-line-end="42">Open your terminal (mac) or command prompt (PC) and type the following commands:
<ul>
<li class="has-line-data" data-line-start="31" data-line-end="33">Log into the server root of the mysql-container.
<ul>
<li class="has-line-data" data-line-start="32" data-line-end="33"><code>docker exec -it mysql-container bash</code></li>
</ul>
</li>
<li class="has-line-data" data-line-start="33" data-line-end="35">Change your working directory to the root home directory
<ul>
<li class="has-line-data" data-line-start="34" data-line-end="35"><code>cd ~/</code></li>
</ul>
</li>
<li class="has-line-data" data-line-start="35" data-line-end="37">Create a directory named sql-files
<ul>
<li class="has-line-data" data-line-start="36" data-line-end="37"><code>mkdir sql-files</code></li>
</ul>
</li>
<li class="has-line-data" data-line-start="37" data-line-end="39">Check to ensure the sql-files directory was created
<ul>
<li class="has-line-data" data-line-start="38" data-line-end="39"><code>ls</code> You should see the directory listed</li>
</ul>
</li>
<li class="has-line-data" data-line-start="39" data-line-end="42">Exit the container
<ul>
<li class="has-line-data" data-line-start="40" data-line-end="42"><code>exit</code></li>
</ul>
</li>
</ul>
</li>
</ol>
<h3 class="code-line" data-line-start="42" data-line-end="43"><a id="Copy_SQL_file_42"></a>Copy SQL file</h3>
<ol>
<li class="has-line-data" data-line-start="44" data-line-end="47">Create a folder named ‘sql’ inside of the Docker folder you created in Module 1. Inside of the Docker folder you should now have two folders:
<ul>
<li class="has-line-data" data-line-start="45" data-line-end="46">it-3380-dev-env</li>
<li class="has-line-data" data-line-start="46" data-line-end="47">sql</li>
</ul>
</li>
<li class="has-line-data" data-line-start="47" data-line-end="48"><span class="instructure_file_holder link_holder instructure_file_link_holder"><a class="" title="module2.sql.zip" href="https://umsystem.instructure.com/courses/137455/files/12898702/download?wrap=1" data-api-endpoint="https://umsystem.instructure.com/api/v1/courses/137455/files/12898702" data-api-returntype="File">Download and save the module2.sql</a><a class="file_download_btn" role="button" download="" style="margin-inline-start: 5px; text-decoration: none;" href="https://umsystem.instructure.com/courses/137455/files/12898702/download?download_frd=1"><span role="presentation"><svg viewBox="0 0 1920 1920" version="1.1" xmlns="http://www.w3.org/2000/svg" style="width:1em; height:1em; vertical-align:middle; fill:currentColor">
    <path d="M1807.09271,1482.47718 L1886.82918,1562.43953 L1531.51624,1917.75247 L355.346824,1917.75247 L0.0338823529,1562.43953 L79.8832941,1482.47718 L402.104471,1804.81129 L1484.75859,1804.81129 L1807.09271,1482.47718 Z M997.677176,-0.0338823529 L997.677176,1166.98729 L1352.99012,811.674353 L1432.95247,891.523765 L941.093647,1383.15671 L449.460706,891.523765 L529.423059,811.674353 L884.736,1166.98729 L884.736,-0.0338823529 L997.677176,-0.0338823529 Z" stroke="none" stroke-width="1" fill-rule="evenodd"></path>
</svg>
</span><span class="screenreader-only">Download Download and save the module2.sql</span></a></span> file in the sql folder. You will have to unzip the file.</li>
<li class="has-line-data" data-line-start="48" data-line-end="49">Open your terminal (mac) or command prompt (PC) and navigate to the Docker -&gt; sql folder you just created.</li>
<li class="has-line-data" data-line-start="49" data-line-end="52">You can now copy the module2.sql file into the mysql-container in the Docker environment using the docker copy command
<ul>
<li class="has-line-data" data-line-start="50" data-line-end="52"><code>docker cp module2.sql mysql-container:/root/sql-files</code></li>
</ul>
</li>
</ol>
<p class="has-line-data" data-line-start="52" data-line-end="53">If you don’t get an error message that means the copy was successful.</p>
<h2 class="code-line" data-line-start="54" data-line-end="55"><a id="2_Log_into_the_MySQL_Server_54"></a>2. Log into the MySQL Server</h2>
<p class="has-line-data" data-line-start="56" data-line-end="57">Next, you will have to log back into the sql-container to login into the MySQL server. And before you log in you will check to ensure the copy you performed in the previous step was successful.</p>
<ol>
<li class="has-line-data" data-line-start="58" data-line-end="59">Open your terminal (mac) or command prompt (PC) and type the following commands:</li>
<li class="has-line-data" data-line-start="59" data-line-end="61">Log into the server root of the mysql-container.
<ul>
<li class="has-line-data" data-line-start="60" data-line-end="61"><code>docker exec -it mysql-container bash</code></li>
</ul>
</li>
<li class="has-line-data" data-line-start="61" data-line-end="63">Change directory to the sql-files directory.
<ul>
<li class="has-line-data" data-line-start="62" data-line-end="63"><code>cd ~/sql-files/</code></li>
</ul>
</li>
<li class="has-line-data" data-line-start="63" data-line-end="65">Check to ensure the module2.sql file was copied to the directory. After you type the following command you should see the module2.sql file listed.
<ul>
<li class="has-line-data" data-line-start="64" data-line-end="65"><code>ls</code></li>
</ul>
</li>
<li class="has-line-data" data-line-start="65" data-line-end="70">Login to the MySQL server from the sql-files directory with username root and password “root” by typing the following
<ul>
<li class="has-line-data" data-line-start="66" data-line-end="67"><code>mysql -u root -p</code></li>
<li class="has-line-data" data-line-start="67" data-line-end="70">When the password appears, enter the password
<ul>
<li class="has-line-data" data-line-start="68" data-line-end="70"><code>root</code></li>
</ul>
</li>
</ul>
</li>
</ol>
<p class="has-line-data" data-line-start="70" data-line-end="71">You will now be loggod into the mysql server and should see the a screen resembling the following image.</p>
<p class="has-line-data" data-line-start="70" data-line-end="71"><img src="https://umsystem.instructure.com/courses/137455/files/12898703/preview" alt="Mysql login screen" width="400" height="248" data-api-endpoint="https://umsystem.instructure.com/api/v1/courses/137455/files/12898703" data-api-returntype="File"></p>
<h2 class="code-line" data-line-start="72" data-line-end="73"><a id="3_Load_the_Database_72"></a>3. Load the Database</h2>
<p class="has-line-data" data-line-start="74" data-line-end="75">You will now tell the MySQL server to load the module2 database from the module.sql file. While logged into the mysql server type the following command.</p>
<ol>
<li class="has-line-data" data-line-start="76" data-line-end="78"><code>source module2.sql</code></li>
</ol>
<p class="has-line-data" data-line-start="78" data-line-end="79">You should see a number of messages like this “Query OK, 1 row affected (0.00 sec)”. This means that MySQL successfully loaded the database and you can now exlore the database with the following commands.</p>
<ol>
<li class="has-line-data" data-line-start="80" data-line-end="82">View the databases that are currently on the MySQL server. There is more than the one you just created
<ul>
<li class="has-line-data" data-line-start="81" data-line-end="82"><code>SHOW databases;</code></li>
</ul>
</li>
<li class="has-line-data" data-line-start="82" data-line-end="84">Select the database you want to query. We want to use the module2 database. Type
<ul>
<li class="has-line-data" data-line-start="83" data-line-end="84"><code>USE module2;</code></li>
</ul>
</li>
<li class="has-line-data" data-line-start="84" data-line-end="86">Show the database tables that are in the modules Database.
<ul>
<li class="has-line-data" data-line-start="85" data-line-end="86"><code>SHOW tables;</code></li>
</ul>
</li>
<li class="has-line-data" data-line-start="86" data-line-end="90">Look a the columns (fields) and their data types in a table. Let’s try the customer table.
<ul>
<li class="has-line-data" data-line-start="87" data-line-end="88"><code>DESCRIBE customer;</code></li>
<li class="has-line-data" data-line-start="88" data-line-end="90">Now try it with the other two tables.</li>
</ul>
</li>
</ol>
<h2 class="code-line" data-line-start="90" data-line-end="91"><a id="4_Construct_Queries_90"></a>4. Construct Queries</h2>
<p class="has-line-data" data-line-start="92" data-line-end="93">Now that we have our database loaded we can develop queries to access and manipulate the data in the database. You should write queries for the following questions. Save all of your queries in a file names mod2-queries.sql. An sql file is just a text file with a “.sql” extension so it can be created in any text editor. <strong>Hint:</strong> the following queries will be select queries, most of the using the WHERE, AND, OR clauses. You should complete the Tutorialspoint tutorial and view the examples in the <a title="Relational Databases and Structured Query Language (SQL)" href="https://umsystem.instructure.com/courses/137455/pages/relational-databases-and-structured-query-language-sql" data-api-endpoint="https://umsystem.instructure.com/api/v1/courses/137455/pages/relational-databases-and-structured-query-language-sql" data-api-returntype="Page">Relational Databases and Structured Query Language (SQL)</a> page before attempting to write the following queries.</p>
<ol>
<li class="has-line-data" data-line-start="94" data-line-end="95">Display all of the customer data</li>
<li class="has-line-data" data-line-start="95" data-line-end="96">Display all of the agent data</li>
<li class="has-line-data" data-line-start="96" data-line-end="97">Display customer names and grades</li>
<li class="has-line-data" data-line-start="97" data-line-end="98">Display agent code, name, and working area</li>
<li class="has-line-data" data-line-start="98" data-line-end="99">Display order number, order amount, and order date</li>
<li class="has-line-data" data-line-start="99" data-line-end="100">Show all customer code, name, country, and phone number, for all customers from the United States</li>
<li class="has-line-data" data-line-start="100" data-line-end="101">Show agent names and phone numbers for agents from Bangalore</li>
<li class="has-line-data" data-line-start="101" data-line-end="102">Show orders with advance amounts of $100</li>
<li class="has-line-data" data-line-start="102" data-line-end="103">Show the names of grade 2 customers</li>
<li class="has-line-data" data-line-start="103" data-line-end="104">Show all customer information for customers from New York</li>
<li class="has-line-data" data-line-start="104" data-line-end="105">Show all agent information for agents who work in London with commission rates greater than 0.12</li>
<li class="has-line-data" data-line-start="105" data-line-end="106">Show order number, agent code, and customer code for orders with advance amount less than or equal to $500, and order amount greater than or equal to $1500.</li>
<li class="has-line-data" data-line-start="106" data-line-end="107">Show customer code, customer name, agent code, and outstanding amount for customers with outstanding amounts greater than $6000 and pay amount less tha or equal to $3000</li>
<li class="has-line-data" data-line-start="107" data-line-end="108">Show order numbers for order amounts less than $1000</li>
<li class="has-line-data" data-line-start="108" data-line-end="110">Show customer names from India with outstanding amounts less than $10,000</li>
</ol>
<h2 class="code-line" data-line-start="110" data-line-end="111"><a id="5_What_to_Submit_110"></a>5. What to Submit</h2>
<p class="has-line-data" data-line-start="112" data-line-end="113">Submit the sql file with the queries you constructed in the previous step to Canvas</p></div><img width="643" alt="mod2-schema" src="https://user-images.githubusercontent.com/97800093/208740860-2a23a2f2-942f-40c6-bac2-7786a54d7ac0.png">
