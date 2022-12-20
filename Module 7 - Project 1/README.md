<div id="uxb73xybffkT" class="MlJlv_ebWM MlJlv_ycrn MlJlv_cMGi MlJlv_dUEG"><div class="MlJlv_caGd"><span class="fOyUs_bGBk" style="margin: 0px; padding: 0px;"><div class="user_content enhanced" data-test-id="assignments-2-assignment-toggle-details-text"><h1 class="code-line" data-line-start="0" data-line-end="1">Project1</h1>
<h2 class="code-line" data-line-start="2" data-line-end="3"><a id="Goals_2"></a>Goals</h2>
<ul>
<li class="has-line-data" data-line-start="4" data-line-end="5">To test your knowledge and skill writing basic and advanced queries in MySQL and MongoDB.</li>
<li class="has-line-data" data-line-start="5" data-line-end="7">To continue developing the skill to logically solve more complex queries.</li>
</ul>
<h2 class="code-line" data-line-start="7" data-line-end="8"><a id="Description_7"></a>Description</h2>
<p class="has-line-data" data-line-start="9" data-line-end="10">In this project you will begin working with relational and non-relational databases to test you knowledge thus far in the course, using MySQL and MongoDB</p>
<h2 class="code-line" data-line-start="11" data-line-end="12"><a id="Purpose_11"></a>Purpose</h2>
<p class="has-line-data" data-line-start="13" data-line-end="14">This project will test your knowledge of developing simple and more complex queries using MySQL and MongoDB.</p>
<h2 class="code-line" data-line-start="15" data-line-end="16"><a id="Part1_Project_Tasks_15"></a>Part1: Project Tasks</h2>
<ol>
<li class="has-line-data" data-line-start="17" data-line-end="18">Copy the files into Docker from your local file system.</li>
<li class="has-line-data" data-line-start="18" data-line-end="19">Log into the respective mongo-container and mysql-container in your docker environment.</li>
<li class="has-line-data" data-line-start="19" data-line-end="20">Load the Databases.</li>
<li class="has-line-data" data-line-start="20" data-line-end="21">Construct queries to answer the questions about the database and save queries to the appropriate file file.</li>
<li class="has-line-data" data-line-start="21" data-line-end="23">Submit you solutions to Canvas.</li>
</ol>
<h2 class="code-line" data-line-start="23" data-line-end="24"><a id="1_Copy_SQL_file_into_Docker_Container_23"></a>1. Copy SQL file into Docker Container</h2>
<ol>
<li class="has-line-data" data-line-start="25" data-line-end="26">Save and uncompress the <span class="instructure_file_holder link_holder instructure_file_link_holder"><a class="inline_disabled" title="employeesDB.zip" href="https://umsystem.instructure.com/courses/137455/files/12898727?wrap=1" target="_blank" data-api-endpoint="https://umsystem.instructure.com/api/v1/courses/137455/files/12898727" data-api-returntype="File">employeesDB.zip</a><a class="file_download_btn" role="button" download="" style="margin-inline-start: 5px; text-decoration: none;" href="https://umsystem.instructure.com/courses/137455/files/12898727/download?download_frd=1"><span role="presentation"><svg viewBox="0 0 1920 1920" version="1.1" xmlns="http://www.w3.org/2000/svg" style="width:1em; height:1em; vertical-align:middle; fill:currentColor">
    <path d="M1807.09271,1482.47718 L1886.82918,1562.43953 L1531.51624,1917.75247 L355.346824,1917.75247 L0.0338823529,1562.43953 L79.8832941,1482.47718 L402.104471,1804.81129 L1484.75859,1804.81129 L1807.09271,1482.47718 Z M997.677176,-0.0338823529 L997.677176,1166.98729 L1352.99012,811.674353 L1432.95247,891.523765 L941.093647,1383.15671 L449.460706,891.523765 L529.423059,811.674353 L884.736,1166.98729 L884.736,-0.0338823529 L997.677176,-0.0338823529 Z" stroke="none" stroke-width="1" fill-rule="evenodd"></path>
</svg>
</span><span class="screenreader-only">Download employeesDB.zip</span></a></span> file in the sql folder inside of the Docker folder you created in module 1. When you uncompress the zip file it should extract to a folder with the same name. There is also an image of the database schema in this folder. <strong>You should look at the files inside this folder. There are a number of files that will be used to load the database.</strong></li>
<li class="has-line-data" data-line-start="26" data-line-end="27">Open your terminal (mac) or command prompt (PC) and navigate to the Docker -&gt; sql folder you just created.</li>
<li class="has-line-data" data-line-start="27" data-line-end="30">You can now copy the employeesDB folder into the sql-files folder in your mysql-container in the Docker environment using the docker copy command.
<ul>
<li class="has-line-data" data-line-start="28" data-line-end="30"><code>docker cp employeesDB mysql-container:/root/sql-files</code></li>
</ul>
</li>
</ol>
<p><strong>Employee DB schema</strong></p>
<p><img id="14021305" src="https://umsystem.instructure.com/courses/137455/files/14021305/preview" alt="Employees.png" width="500" height="372" data-api-endpoint="https://umsystem.instructure.com/api/v1/courses/137455/files/14021305" data-api-returntype="File"></p>
<h2 class="code-line" data-line-start="30" data-line-end="31"><a id="2_Log_into_the_MySQL_Server_30"></a>2. Log into the MySQL Server</h2>
<p class="has-line-data" data-line-start="32" data-line-end="33">Next, you will have to log into the sql-container to login into the MySQL server. And before you log in you will check to ensure the copy you performed in the previous step was successful.</p>
<ol>
<li class="has-line-data" data-line-start="34" data-line-end="35">Open your terminal (mac) or command prompt (PC) and type the following commands:</li>
<li class="has-line-data" data-line-start="35" data-line-end="37">Log into the server root of the mysql-container.
<ul>
<li class="has-line-data" data-line-start="36" data-line-end="37"><code>docker exec -it mysql-container bash</code></li>
</ul>
</li>
<li class="has-line-data" data-line-start="37" data-line-end="39">Change directory to the sql-files directory.
<ul>
<li class="has-line-data" data-line-start="38" data-line-end="39"><code>cd ~/sql-files/</code></li>
</ul>
</li>
<li class="has-line-data" data-line-start="39" data-line-end="41">Check to ensure the employeesDB folder was copied to the directory. After you type the following command you should see the employeesDB folder listed.
<ul>
<li class="has-line-data" data-line-start="40" data-line-end="41"><code>ls</code></li>
</ul>
</li>
<li class="has-line-data" data-line-start="41" data-line-end="46">Change directories into the employeesDB directory
<ol>
<li class="has-line-data" data-line-start="41" data-line-end="46"><code>cd ~/sql-files/employeesDB/</code></li>
</ol>
</li>
<li class="has-line-data" data-line-start="41" data-line-end="46">Login to the MySQL server from the sql-files directory with username root and password “root” by typing the following
<ul>
<li class="has-line-data" data-line-start="42" data-line-end="43"><code>mysql -u root -p</code></li>
<li class="has-line-data" data-line-start="43" data-line-end="46">When the password appears, enter the password
<ul>
<li class="has-line-data" data-line-start="44" data-line-end="46"><code>root</code></li>
</ul>
</li>
</ul>
</li>
</ol>
<p class="has-line-data" data-line-start="46" data-line-end="47">You will now be logged into the mysql server.</p>
<h2 class="code-line" data-line-start="48" data-line-end="49"><a id="3_Load_the_Database_48"></a>3. Load the Database</h2>
<p class="has-line-data" data-line-start="50" data-line-end="51">You will now tell the MySQL server to load the classicmodels database from the classicmodels.sql file. While logged into the mysql server type the following command.</p>
<ul>
<li class="has-line-data" data-line-start="52" data-line-end="54"><code>source ~/sql-files/employeesDB/employees.sql</code></li>
</ul>
<p class="has-line-data" data-line-start="54" data-line-end="55"><strong><em>This command looks different from the source command we used in previous modules because this uses an absolute path reference instead of a relative path reference.</em></strong></p>
<p class="has-line-data" data-line-start="56" data-line-end="57">You should see a number of messages like this “Query OK, 0 rows affected (0.00 sec)”. This means that MySQL successfully loaded the database and you can now exlore the database with the following commands.</p>
<ol>
<li class="has-line-data" data-line-start="58" data-line-end="60">View the databases that are currently on the MySQL server. There is more than the one you just created
<ul>
<li class="has-line-data" data-line-start="59" data-line-end="60"><code>SHOW databases;</code></li>
</ul>
</li>
<li class="has-line-data" data-line-start="60" data-line-end="62">Select the database you want to query. We want to use the module2 database. Type
<ul>
<li class="has-line-data" data-line-start="61" data-line-end="62"><code>USE employees;</code></li>
</ul>
</li>
<li class="has-line-data" data-line-start="62" data-line-end="64">Show the database tables that are in the modules Database.
<ul>
<li class="has-line-data" data-line-start="63" data-line-end="64"><code>SHOW tables;</code></li>
</ul>
</li>
<li class="has-line-data" data-line-start="64" data-line-end="68">Look a the columns (fields) and their data types in a table. Let’s try the customer table.
<ul>
<li class="has-line-data" data-line-start="65" data-line-end="66"><code>DESCRIBE employees;</code></li>
<li class="has-line-data" data-line-start="66" data-line-end="68">Now try it with the other tables.</li>
</ul>
</li>
</ol>
<h2 class="code-line" data-line-start="68" data-line-end="69"><a id="4_Construct_MYSQL_Queries_68"></a>4. Construct MYSQL Queries</h2>
<p class="has-line-data" data-line-start="70" data-line-end="71">Now that we have our database loaded we can develop queries to access and manipulate the data in the database. You should write queries for the following questions. Save all of your queries in a file names project1_sql_queries_[pawprint].sql.</p>
<p class="has-line-data" data-line-start="72" data-line-end="73"><strong>Note: In the employee database you can identify a current employee where the value of the to_date column is “9999-01-01”</strong></p>
<ol>
<li class="has-line-data" data-line-start="74" data-line-end="75">List all of the current employees first name, last name, salary and department name. (265332 rows returned)</li>
<li class="has-line-data" data-line-start="75" data-line-end="76">List the first name, last name, and salary of the current employees with the ten (10) highest salaries. (#1 Salary Tokuyasu Pesch 158220, #10 salary Weicheng Hatcliff&nbsp; 152687 )
<ol>
<li class="has-line-data" data-line-start="75" data-line-end="76">+------------+-----------+--------+<br>| first_name | last_name &nbsp;&nbsp; | salary &nbsp; &nbsp; |<br>+------------+---------------+--------+<br>| Tokuyasu &nbsp; | Pesch &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; | 158220 |<br>| Honesty &nbsp; &nbsp; | Mukaidono &nbsp; | 156286 |<br>| Xiahua &nbsp; &nbsp; &nbsp; | Whitcomb &nbsp;&nbsp;&nbsp; | 155709 |<br>| Sanjai &nbsp; &nbsp; &nbsp;&nbsp; | Luders &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; | 155513 |<br>| Tsutomu &nbsp; &nbsp;| Alameldin &nbsp; &nbsp;&nbsp; | 155190 |<br>| Willard &nbsp; &nbsp;&nbsp; | Baca &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp; | 154459 |<br>| Lidong &nbsp; &nbsp; &nbsp; | Meriste &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; | 154376 |<br>| Charmane | Griswold &nbsp; &nbsp; &nbsp;&nbsp; | 153715 |<br>| Weijing &nbsp; &nbsp; &nbsp; | Chenoweth&nbsp; | 152710 |<br>| Weicheng &nbsp; | Hatcliff &nbsp; &nbsp; &nbsp; &nbsp; | 152687 |<br>+------------+-----------+---------------+</li>
</ol>
</li>
<li class="has-line-data" data-line-start="76" data-line-end="77">What is the total payroll (sum of all current salaries) for the company. (17291866123)</li>
<li class="has-line-data" data-line-start="77" data-line-end="78">Display a list of the unique titles for this company. (7 Titles: Senior Engineer, Staff, Staff Engineer, Senior Staff, Assistant Engineer, Technique Leader, Manager)</li>
<li class="has-line-data" data-line-start="78" data-line-end="79">List the first name, last name, and department name for all current department managers. Remember that a current manager has a to_date value of 9999-01-01. (9 results)<br>+------------+------------+--------------------+<br>| first_name | last_name &nbsp;| dept_name &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;|<br>+------------+------------+--------------------+<br>| Vishwani &nbsp; | Minakawa &nbsp; | Marketing &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;|<br>| Isamu &nbsp; &nbsp; &nbsp;&nbsp; | Legleitner&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | Finance &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;|<br>| Karsten &nbsp; &nbsp; | Sigstam &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; | Human Resources &nbsp; &nbsp;|<br>| Oscar &nbsp; &nbsp; &nbsp;&nbsp; | Ghazalie &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | Production &nbsp; &nbsp; &nbsp; &nbsp; |<br>| Leon &nbsp; &nbsp; &nbsp; &nbsp; | DasSarma &nbsp; &nbsp;&nbsp; | Development &nbsp; &nbsp; &nbsp; &nbsp;|<br>| Dung &nbsp; &nbsp; &nbsp;&nbsp; | Pesch &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; | Quality Management |<br>| Hauke &nbsp; &nbsp;&nbsp;&nbsp; | Zhang &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; | Sales &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;|<br>| Hilary &nbsp; &nbsp; &nbsp; | Kambil &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | Research &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; |<br>| Yuchang &nbsp; &nbsp;| Weedman &nbsp; &nbsp;| Customer Service &nbsp; |<br>+------------+------------+--------------------+</li>
<li class="has-line-data" data-line-start="79" data-line-end="80">How many employees does each department currently have? List the department name and number of employees in a column named “Number of Employees”. <br>|Customer Service &nbsp; | &nbsp; &nbsp;&nbsp; 17569 |<br>| Development &nbsp; &nbsp; &nbsp; &nbsp;| &nbsp; &nbsp; &nbsp; 61386 |<br>| Finance &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 12437 |<br>| Human Resources &nbsp; &nbsp;| &nbsp;&nbsp; 12898 |<br>| Marketing &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 14842 |<br>| Production &nbsp; &nbsp; &nbsp; &nbsp; | &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 53304 |<br>| Quality Management |&nbsp; 14546 |<br>| Research &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; | &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; 15441 |<br>| Sales &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 37701&nbsp; |</li>
<li class="has-line-data" data-line-start="80" data-line-end="81">How many males and how many females have been hired by this company in its history?<br>+--------+---------------------+<br>| gender | Number of Employees |<br>+--------+---------------------+<br>| M &nbsp; &nbsp; &nbsp;| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;179973 &nbsp; &nbsp;&nbsp; |<br>| F &nbsp; &nbsp; &nbsp; | &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 120051 &nbsp;&nbsp; |<br>+--------+---------------------+</li>
<li class="has-line-data" data-line-start="81" data-line-end="83">List the titles and the number of current employees that hold that title.<br>+--------------------+---------------------+<br>| title &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;| Number of Employees |<br>+--------------------+---------------------+<br>| Senior Engineer &nbsp; &nbsp;| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 85939 |<br>| Staff &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; | &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 25526 |<br>| Senior Staff &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 82024 |<br>| Engineer &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; | &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 30983 |<br>| Assistant Engineer | &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;3588 |<br>| Technique Leader &nbsp; | &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 12055 |<br>| Manager &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; | &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 9 |<br>+--------------------+---------------------+<br><br></li>
</ol>
<h2 class="code-line" data-line-start="83" data-line-end="84">Part2: Construct Mongo Queries</h2>
<h3 class="code-line" data-line-start="24" data-line-end="25">. Copy JSON files into Docker Container</h3>
<ol>
<li class="has-line-data" data-line-start="26" data-line-end="27">Download the data files for this module. <span class="instructure_file_holder link_holder instructure_file_link_holder"><a class="" title="classic-mongo.zip" href="https://umsystem.instructure.com/courses/137455/files/12898723?wrap=1" target="_blank" data-api-endpoint="https://umsystem.instructure.com/api/v1/courses/137455/files/12898723" data-api-returntype="File">Classic Files</a><a class="file_download_btn" style="text-decoration: none;" role="button" href="https://umsystem.instructure.com/courses/137455/files/12898723/download" data-api-endpoint="https://umsystem.instructure.com/api/v1/courses/137455/files/12898723" data-api-returntype="File"> <img style="width: 16px; height: 16px;" role="presentation" src="https://umsystem.instructure.com/images/svg-icons/svg_icon_download.svg" alt=""> <span class="screenreader-only"> Download Classic Files </span> </a></span></li>
<li class="has-line-data" data-line-start="27" data-line-end="32">Create a folder named ‘classic’ inside of the ‘mongo-files’ folder inside of the Docker folder you created in Module 1. Your Docker folder structure should now look like the following:
<ul>
<li class="has-line-data" data-line-start="28" data-line-end="29">it-3380-dev-env</li>
<li class="has-line-data" data-line-start="29" data-line-end="30">sql</li>
<li class="has-line-data" data-line-start="30" data-line-end="32">mongo-files
<ul>
<li class="has-line-data" data-line-start="31" data-line-end="32">classic</li>
</ul>
</li>
</ul>
</li>
<li class="has-line-data" data-line-start="32" data-line-end="33">Extract the .json files from the zip file you downloaded inside of your classic folder.</li>
<li class="has-line-data" data-line-start="33" data-line-end="34">Open your terminal (mac) or command prompt (PC) and navigate to the Docker -&gt; mongo-files -&gt; classic folder you just created.</li>
<li class="has-line-data" data-line-start="34" data-line-end="37">You can now copy the classic directory containing the files customer, employees, porducts, and orders json files into the mongo-container in the Docker environment using the docker copy command.
<ul>
<li class="has-line-data" data-line-start="35" data-line-end="37"><code>docker cp classic-new mongo-container:/root/mongo-files/</code></li>
</ul>
</li>
</ol>
<p class="has-line-data" data-line-start="37" data-line-end="38">If you don’t get an error message that means the copy was successful.</p>
<h3 class="code-line" data-line-start="39" data-line-end="40"><a id="2_Load_the_Database_39"></a>2. Load the Database</h3>
<p class="has-line-data" data-line-start="41" data-line-end="42">Next, you will log into the mongo-container to login into the MongoDB server. And before you log in you will check to ensure the copy you performed in the previous step was successful.</p>
<ol>
<li class="has-line-data" data-line-start="43" data-line-end="44">Open your terminal (mac) or command prompt (PC) and log into your mongo-container:</li>
<li class="has-line-data" data-line-start="44" data-line-end="46">Change directory to the classic-new directory.
<ul>
<li class="has-line-data" data-line-start="45" data-line-end="46"><code>cd ~/mongo-files/classic-new</code></li>
</ul>
</li>
<li class="has-line-data" data-line-start="46" data-line-end="48">Check to ensure that the four json files are in the folder using the ls command
<ul>
<li class="has-line-data" data-line-start="47" data-line-end="48"><code>ls</code></li>
</ul>
</li>
<li class="has-line-data" data-line-start="48" data-line-end="61">Use the following commands to create a database named classicmodels and load the data from the json files into their respective collections. Type the following commands:
<ul>
<li class="has-line-data" data-line-start="49" data-line-end="50"><code>mongoimport --db classicmodels --collection customers --drop --file customers.json --jsonArray</code></li>
<li class="has-line-data" data-line-start="50" data-line-end="51"><code>mongoimport --db classicmodels --collection orders --drop --file orders.json --jsonArray</code></li>
<li class="has-line-data" data-line-start="51" data-line-end="52"><code>mongoimport --db classicmodels --collection products --drop --file products.json --jsonArray</code></li>
<li class="has-line-data" data-line-start="52" data-line-end="53"><code>mongoimport --db classicmodels --collection employees --drop --file employees.json --jsonArray</code></li>
<li class="has-line-data" data-line-start="53" data-line-end="61"><strong>Understanding the Commands</strong>
<ul>
<li class="has-line-data" data-line-start="54" data-line-end="55"><strong>mongoimport</strong>: the mongodb command to load data into a database</li>
<li class="has-line-data" data-line-start="55" data-line-end="56"><strong>–db</strong>: specifies which database to load the data into. If the database does not exist, it will be created.</li>
<li class="has-line-data" data-line-start="56" data-line-end="57"><strong>–collection</strong>: specifies which collection in the database to load the data into. If the collection does not exist, it will be created.</li>
<li class="has-line-data" data-line-start="57" data-line-end="58"><strong>–drop</strong>: if the collection exists before the import it will be dropped and a new collection created.</li>
<li class="has-line-data" data-line-start="58" data-line-end="59"><strong>–file</strong>: specifies which file to load the data from.</li>
<li class="has-line-data" data-line-start="59" data-line-end="61"><strong>–jsonArray</strong>: specifies the data format in the file is a JSON array.</li>
</ul>
</li>
</ul>
</li>
</ol>
<h3 class="code-line" data-line-start="61" data-line-end="62"><a id="3_Log_In_To_the_Mongo_Server_61"></a>3. Log In To the Mongo Server</h3>
<p class="has-line-data" data-line-start="63" data-line-end="64">You can now log in to the mongodb server and access the database. You should have a database named classicmodels that contains four collections: employees, products, orders, and customers.</p>
<ol>
<li class="has-line-data" data-line-start="65" data-line-end="66">Log in to the mongodb server.</li>
<li class="has-line-data" data-line-start="66" data-line-end="72">You can view the structure of the documents in each collection using the following commands
<ul>
<li class="has-line-data" data-line-start="67" data-line-end="68"><code>db.orders.findOne()</code></li>
<li class="has-line-data" data-line-start="68" data-line-end="69"><code>db.customers.findOne()</code></li>
<li class="has-line-data" data-line-start="69" data-line-end="70"><code>db.products.findOne()</code></li>
<li class="has-line-data" data-line-start="70" data-line-end="72"><code>db.employees.findOne()</code></li>
</ul>
</li>
</ol>
<p class="has-line-data" data-line-start="85" data-line-end="86">For part 2 of this project you will use the mongoDB classicmodels database you just loaded to answer the following questions. Save all of your queries in a file names project1_mongo_queries_[pawprint].js .</p>
<ol>
<li class="has-line-data" data-line-start="87" data-line-end="88">How many products have an MSRP greater than or equal to $100?<br>{ "MSRP &gt; 100" : 51 }<br><br></li>
<li class="has-line-data" data-line-start="88" data-line-end="89">Calculate the number of orders each customer has placed and display the top 25 in descending order based on orders placed. Display the customer name and the orders placed in a columns called “Orders Placed”.<br>{ "_id" : "Euro+ Shopping Channel", "numOrders" : 26 }<br>{ "_id" : "Mini Gifts Distributors Ltd.", "numOrders" : 17 }<br>{ "_id" : "Down Under Souveniers, Inc", "numOrders" : 5 }<br>{ "_id" : "Reims Collectables", "numOrders" : 5 }<br>{ "_id" : "Danish Wholesale Imports", "numOrders" : 5 }<br>{ "_id" : "Dragon Souveniers, Ltd.", "numOrders" : 5 }<br>{ "_id" : "Australian Collectors, Co.", "numOrders" : 5 }<br>{ "_id" : "Kelly's Gift Shop", "numOrders" : 4 }<br>{ "_id" : "Blauer See Auto, Co.", "numOrders" : 4 }<br>{ "_id" : "Tokyo Collectables, Ltd", "numOrders" : 4 }<br>{ "_id" : "Salzburg Collectables", "numOrders" : 4 }<br>{ "_id" : "Technics Stores Inc.", "numOrders" : 4 }<br>{ "_id" : "Diecast Classics Inc.", "numOrders" : 4 }<br>{ "_id" : "Corporate Gift Ideas Co.", "numOrders" : 4 }<br>{ "_id" : "Souveniers And Things Co.", "numOrders" : 4 }<br>{ "_id" : "Royale Belge", "numOrders" : 4 }<br>{ "_id" : "La Rochelle Gifts", "numOrders" : 4 }<br>{ "_id" : "Muscle Machine Inc", "numOrders" : 4 }<br>{ "_id" : "Baane Mini Imports", "numOrders" : 4 }<br>{ "_id" : "Anna's Decorations, Ltd", "numOrders" : 4 }<br>{ "_id" : "The Sharp Gifts Warehouse", "numOrders" : 4 }<br>{ "_id" : "Volvo Model Replicas, Co", "numOrders" : 4 }<br>{ "_id" : "Handji Gifts&amp; Co", "numOrders" : 4 }<br>{ "_id" : "Land of Toys Inc.", "numOrders" : 4 }<br>{ "_id" : "Extreme Desk Decorations, Ltd", "numOrders" : 3 }<br><br></li>
<li class="has-line-data" data-line-start="89" data-line-end="90">List the product names where the quantity in stock is greater than 5000 (58 documents returned)<br><br></li>
<li class="has-line-data" data-line-start="90" data-line-end="91">Calculate and display the number of customers in each state. Display the stateand and number of customers in each state in a column called “Number of Customers in State”. Sort the results by the Number of Customers in State.<br>{ "_id" : "Osaka", "totalCustomers" : 1 }<br>{ "_id" : "Victoria", "totalCustomers" : 2 }<br>{ "_id" : "NJ", "totalCustomers" : 1 }<br>{ "_id" : "NV", "totalCustomers" : 1 }<br>{ "_id" : "Tokyo", "totalCustomers" : 1 }<br>{ "_id" : "PA", "totalCustomers" : 3 }<br>{ "_id" : "MA", "totalCustomers" : 9 }<br>{ "_id" : "NY", "totalCustomers" : 6 }<br>{ "_id" : "Queensland", "totalCustomers" : 1 }<br>{ "_id" : "NSW", "totalCustomers" : 2 }<br>{ "_id" : "CA", "totalCustomers" : 11 }<br>{ "_id" : "Québec", "totalCustomers" : 1 }<br>{ "_id" : "CT", "totalCustomers" : 4 }<br>{ "_id" : "NH", "totalCustomers" : 1 }<br>{ "_id" : "BC", "totalCustomers" : 2 }<br>{ "_id" : "Isle of Wight", "totalCustomers" : 1 }<br>{ "_id" : null, "totalCustomers" : 53 }<br><br></li>
<li class="has-line-data" data-line-start="91" data-line-end="92">Which employees manage the most people? Develop a query to calculate the number of people each employees manages. Display the employee name and number of employees employees they manage in a column called “Number of Reports”.<br>{ "_id" : "Gerard Bondur", "NumberOfReports" : 6 }<br>{ "_id" : "William Patterson", "NumberOfReports" : 3 }<br>{ "_id" : "Mami Nishi", "NumberOfReports" : 1 }<br>{ "_id" : "N/A", "NumberOfReports" : 1 }<br>{ "_id" : "Diane Murphy", "NumberOfReports" : 2 }<br>{ "_id" : "Mary Patterson", "NumberOfReports" : 4 }<br>{ "_id" : "Anthony Bow", "NumberOfReports" : 6 }<br><br></li>
<li class="has-line-data" data-line-start="92" data-line-end="93">List the names and credit limit of the customers with the 10 highest credit limits<br>{ "customerName" : "Euro+ Shopping Channel", "creditLimit" : 227600 }<br>{ "customerName" : "Mini Gifts Distributors Ltd.", "creditLimit" : 210500 }<br>{ "customerName" : "Vida Sport, Ltd", "creditLimit" : 141300 }<br>{ "customerName" : "Muscle Machine Inc", "creditLimit" : 138500 }<br>{ "customerName" : "AV Stores, Co.", "creditLimit" : 136800 }<br>{ "customerName" : "Saveley &amp; Henriot, Co.", "creditLimit" : 123900 }<br>{ "customerName" : "Marta's Replicas Co.", "creditLimit" : 123700 }<br>{ "customerName" : "L'ordine Souveniers", "creditLimit" : 121400 }<br>{ "customerName" : "Heintze Collectables", "creditLimit" : 120800 }<br>{ "customerName" : "Toms Spezialitäten, Ltd", "creditLimit" : 120400 }<br><br></li>
<li class="has-line-data" data-line-start="93" data-line-end="94">Write a query to calculate the number of product lines in the database. Display the result in a column called “Number of Lines”.&nbsp;<br>{ "Number of ProductLines" : 7 }<br><br></li>
<li class="has-line-data" data-line-start="94" data-line-end="96">Calculate the dollar value of each product in inventory. You can calculate this by multiplying the quantity in stock by the buy price. Display the product name, quantity in stock, buy price, and in its dollar value in a column called “Dollar Value”. Sort the results in descending order based on dollar value. The results show the first 5 and last&nbsp; 5 results.<br>
<ol>
<li class="has-line-data" data-line-start="94" data-line-end="96">{ "productName" : "1995 Honda Civic", "quantityInStock" : 9772, "buyPrice" : 93.89, "DollarValue" : 917493.08 }<br>{ "productName" : "1952 Alpine Renault 1300", "quantityInStock" : 7305, "buyPrice" : 98.58, "DollarValue" : 720126.9 }<br>{ "productName" : "1962 LanciaA Delta 16V", "quantityInStock" : 6791, "buyPrice" : 103.42, "DollarValue" : 702325.22 }<br>{ "productName" : "1968 Dodge Charger", "quantityInStock" : 9123, "buyPrice" : 75.16, "DollarValue" : 685684.6799999999 }<br>{ "productName" : "1976 Ford Gran Torino", "quantityInStock" : 9127, "buyPrice" : 73.49, "DollarValue" : 670743.23 }<br>...<br>{ "productName" : "Pont Yacht", "quantityInStock" : 414, "buyPrice" : 33.3, "DollarValue" : 13786.199999999999 }<br>{ "productName" : "1997 BMW F650 ST", "quantityInStock" : 178, "buyPrice" : 66.92, "DollarValue" : 11911.76 }<br>{ "productName" : "1968 Ford Mustang", "quantityInStock" : 68, "buyPrice" : 95.34, "DollarValue" : 6483.12 }<br>{ "productName" : "1928 Ford Phaeton Deluxe", "quantityInStock" : 136, "buyPrice" : 33.02, "DollarValue" : 4490.72 }<br>{ "productName" : "1960 BSA Gold Star DBD34", "quantityInStock" : 15, "buyPrice" : 37.32, "DollarValue" : 559.8 }</li>
</ol>
</li>
</ol>
<h2 class="code-line" data-line-start="96" data-line-end="97"><a id="5_What_to_Submit_96"></a>5. What to Submit</h2>
<p class="has-line-data" data-line-start="98" data-line-end="99">Submit a zip file named [pawprint]_project1.zip with both query files and submit to Canvas.</p></div></span></div></div>
