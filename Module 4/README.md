# Challenge: MongoDB Queries

<div class="user_content enhanced" data-test-id="assignments-2-assignment-toggle-details-text"><h1 class="code-line" data-line-start="0" data-line-end="1">MongoDB Queries</h1>
<h2 class="code-line" data-line-start="2" data-line-end="3"><a id="Goals_2"></a>Goals</h2>
<ul>
<li class="has-line-data" data-line-start="4" data-line-end="5">To continue developing skill working in the Docker development environment and on the command line.</li>
<li class="has-line-data" data-line-start="5" data-line-end="6">To gain experience and develop skill loading data into a Mongo database and constructing basic queires.</li>
<li class="has-line-data" data-line-start="6" data-line-end="8">To begin to develop a working understanding of the differences between relational and non-relational databases.</li>
</ul>
<h2 class="code-line" data-line-start="8" data-line-end="9"><a id="Description_8"></a>Description</h2>
<p class="has-line-data" data-line-start="10" data-line-end="11">In this challenge you are being provided with two JSON files and are asked to log into the mongodb server in the mongo-container in your Docker environment and load the data from the JSON files into a database. You will then develop basic queries to run on that database to get acquanted with MongoDB.</p>
<h2 class="code-line" data-line-start="12" data-line-end="13"><a id="Purpose_12"></a>Purpose</h2>
<p class="has-line-data" data-line-start="14" data-line-end="15">This challenge will provide you with experience wouking with database data in a MongoDB server in a command line environment.</p>
<h2 class="code-line" data-line-start="16" data-line-end="17"><a id="Project_Tasks_16"></a>Project Tasks</h2>
<ol>
<li class="has-line-data" data-line-start="18" data-line-end="19">Copy the JSON files into Docker from your local file system.</li>
<li class="has-line-data" data-line-start="19" data-line-end="20">Load the Database and explore basic mongodb commands.</li>
<li class="has-line-data" data-line-start="20" data-line-end="21">Log into the MongoDB server in the mongo-container in your docker environment.</li>
<li class="has-line-data" data-line-start="21" data-line-end="22">Construct queries to answer the questions about the database and save queries to a javascript (.js) file.</li>
<li class="has-line-data" data-line-start="22" data-line-end="24">Submit the .js file to Canvas.</li>
</ol>
<h2 class="code-line" data-line-start="24" data-line-end="25"><a id="1_Copy_JSON_files_into_Docker_Container_24"></a>1. Copy JSON files into Docker Container</h2>
<ol>
<li class="has-line-data" data-line-start="26" data-line-end="27"><span class="instructure_file_holder link_holder instructure_file_link_holder"><a class="" title="mod4_json_files.zip" href="https://umsystem.instructure.com/courses/137455/files/12898708/download?wrap=1" data-api-endpoint="https://umsystem.instructure.com/api/v1/courses/137455/files/12898708" data-api-returntype="File">Download the json files for this module</a><a class="file_download_btn" role="button" download="" style="margin-inline-start: 5px; text-decoration: none;" href="https://umsystem.instructure.com/courses/137455/files/12898708/download?download_frd=1"><span role="presentation"><svg viewBox="0 0 1920 1920" version="1.1" xmlns="http://www.w3.org/2000/svg" style="width:1em; height:1em; vertical-align:middle; fill:currentColor">
    <path d="M1807.09271,1482.47718 L1886.82918,1562.43953 L1531.51624,1917.75247 L355.346824,1917.75247 L0.0338823529,1562.43953 L79.8832941,1482.47718 L402.104471,1804.81129 L1484.75859,1804.81129 L1807.09271,1482.47718 Z M997.677176,-0.0338823529 L997.677176,1166.98729 L1352.99012,811.674353 L1432.95247,891.523765 L941.093647,1383.15671 L449.460706,891.523765 L529.423059,811.674353 L884.736,1166.98729 L884.736,-0.0338823529 L997.677176,-0.0338823529 Z" stroke="none" stroke-width="1" fill-rule="evenodd"></path>
</svg>
</span><span class="screenreader-only">Download Download the json files for this module</span></a></span>.</li>
<li class="has-line-data" data-line-start="27" data-line-end="31">Create a folder named ‘mongo-files’ inside of the Docker folder you created in Module 1. Inside of the Docker folder you should now have these three folders:
<ul>
<li class="has-line-data" data-line-start="28" data-line-end="29">it-3380-dev-env</li>
<li class="has-line-data" data-line-start="29" data-line-end="30">sql</li>
<li class="has-line-data" data-line-start="30" data-line-end="31">mongo-files</li>
</ul>
</li>
<li class="has-line-data" data-line-start="31" data-line-end="32">Save the zips.json and sp500-stocks.json files in the mongo-files folder.</li>
<li class="has-line-data" data-line-start="32" data-line-end="33">Open your terminal (mac) or command prompt (PC) and navigate to the Docker -&gt; mongo folder you just created.</li>
<li class="has-line-data" data-line-start="33" data-line-end="36">You can now copy the mongo-files directory containing the zips.json and sp500-stocks.json files into the mongo-container in the Docker environment using the docker copy command.
<ul>
<li class="has-line-data" data-line-start="34" data-line-end="36"><code>docker cp mongo-files mongo-container:/root/</code></li>
</ul>
</li>
</ol>
<p class="has-line-data" data-line-start="36" data-line-end="37">If you don’t get an error message that means the copy was successful.</p>
<h2 class="code-line" data-line-start="38" data-line-end="39"><a id="2_Load_the_Database_38"></a>2. Load the Database</h2>
<p class="has-line-data" data-line-start="40" data-line-end="41">Next, you will log into the mongo-container to login into the MongoDB server. And before you log in you will check to ensure the copy you performed in the previous step was successful.</p>
<ol>
<li class="has-line-data" data-line-start="42" data-line-end="43">Open your terminal (mac) or command prompt (PC) and type the following commands:</li>
<li class="has-line-data" data-line-start="43" data-line-end="45">Log into the server root of the mysql-container.
<ul>
<li class="has-line-data" data-line-start="44" data-line-end="45"><code>docker exec -it mongo-container bash</code></li>
</ul>
</li>
<li class="has-line-data" data-line-start="45" data-line-end="47">Change directory to the mongo-files directory.
<ul>
<li class="has-line-data" data-line-start="46" data-line-end="47"><code>cd ~/mongo-files/</code></li>
</ul>
</li>
<li class="has-line-data" data-line-start="47" data-line-end="49">Check to ensure the zips.json and sp500-stocks.json files were copied to the directory. After you type the following command you should see the zips.json and sp500-stocks.json files listed. If you do not see the files that means something went wrong with the copy and you should now go back to step 1 to copy the files to your mongo-container again.
<ul>
<li class="has-line-data" data-line-start="48" data-line-end="49"><code>ls</code></li>
</ul>
</li>
<li class="has-line-data" data-line-start="49" data-line-end="60">The following commands will create a database named module4 and load the data from the zips.json and sp500-stocks.json into collections named zips and stocks. Type the following commands:
<ul>
<li class="has-line-data" data-line-start="50" data-line-end="51"><code>mongoimport --db module4 --collection stocks --drop --file sp500-stocks.json --jsonArray</code></li>
<li class="has-line-data" data-line-start="51" data-line-end="52"><code>mongoimport --db module4 --collection zips --drop --file zips.json --jsonArray</code></li>
<li class="has-line-data" data-line-start="52" data-line-end="60"><strong>Understanding the Commands</strong>
<ul>
<li class="has-line-data" data-line-start="53" data-line-end="54"><strong>mongoimport</strong>: the mongodb command to load data into a database</li>
<li class="has-line-data" data-line-start="54" data-line-end="55"><strong>–db</strong>: specifies which database to load the data into. If the database does not exist, it will be created.</li>
<li class="has-line-data" data-line-start="55" data-line-end="56"><strong>–collection</strong>: specifies which collection in the database to load the data into. If the collection does not exist, it will be created.</li>
<li class="has-line-data" data-line-start="56" data-line-end="57"><strong>–drop</strong>: if the collection exists before the import it will be dropped and a new collection created.</li>
<li class="has-line-data" data-line-start="57" data-line-end="58"><strong>–file</strong>: specifies which file to load the data from.</li>
<li class="has-line-data" data-line-start="58" data-line-end="60"><strong>–jsonArray</strong>: specifies the data format in the file is a JSON array.</li>
</ul>
</li>
</ul>
</li>
</ol>
<p>Your should get success messages like the following if the previous commands were successful.</p>
<p><img src="https://umsystem.instructure.com/courses/137455/files/12898710/preview" alt="success-mongo.png" width="1000" height="150" data-api-endpoint="https://umsystem.instructure.com/api/v1/courses/137455/files/12898710" data-api-returntype="File"></p>
<h2 class="code-line" data-line-start="60" data-line-end="61">3. Log into the Mongo Server</h2>
<p class="has-line-data" data-line-start="62" data-line-end="63">You can now log in to the mongodb server and access the database. You should have a database named module4 that contains two collections: zips and stocks.</p>
<ol>
<li class="has-line-data" data-line-start="64" data-line-end="67">Log in to the mongodb server by typing the following command. Our mongodb server does not require authentication now, but that will change in future modules and so the command to login will look different in the future.
<ul>
<li class="has-line-data" data-line-start="65" data-line-end="67"><code>mongo</code></li>
</ul>
</li>
</ol>
<p class="has-line-data" data-line-start="67" data-line-end="68">You will now be logged into the mongodb server.</p>
<ol>
<li class="has-line-data" data-line-start="69" data-line-end="71">View the databases that are currently on the mongodb server. There is more than the one you just created
<ul>
<li class="has-line-data" data-line-start="70" data-line-end="71"><code>show dbs</code></li>
</ul>
</li>
<li class="has-line-data" data-line-start="71" data-line-end="73">Select the database you want to query. We want to use the module4 database. Type
<ul>
<li class="has-line-data" data-line-start="72" data-line-end="73"><code>use module4</code></li>
</ul>
</li>
<li class="has-line-data" data-line-start="73" data-line-end="75">Show the collections that are in the module4 database.
<ul>
<li class="has-line-data" data-line-start="74" data-line-end="75"><code>show collections</code></li>
</ul>
</li>
<li class="has-line-data" data-line-start="75" data-line-end="79">Take a look at the structure of the data in your collections.
<ul>
<li class="has-line-data" data-line-start="76" data-line-end="77"><code>db.zips.findOne();</code></li>
<li class="has-line-data" data-line-start="77" data-line-end="79"><code>db.stocks.findOne();</code></li>
</ul>
</li>
</ol>
<p><img src="https://umsystem.instructure.com/courses/137455/files/12898707/preview" alt="db-mongo-use.png" width="500" height="135" data-api-endpoint="https://umsystem.instructure.com/api/v1/courses/137455/files/12898707" data-api-returntype="File"></p>
<h3 class="code-line" data-line-start="79" data-line-end="80"><a id="Zip_Code_Data_79"></a>Zip Code Data</h3>
<blockquote>
<pre><code class="has-line-data" data-line-start="82" data-line-end="88">{ "<span class="hljs-attribute">city</span>" : <span class="hljs-value"><span class="hljs-string">"CHESTERFIELD"</span></span>,
"<span class="hljs-attribute">loc</span>" : <span class="hljs-value">[ -<span class="hljs-number">72.833309</span>, <span class="hljs-number">42.38167</span> ]</span>,
"<span class="hljs-attribute">pop</span>" : <span class="hljs-value"><span class="hljs-number">177</span></span>,
"<span class="hljs-attribute">state</span>" : <span class="hljs-value"><span class="hljs-string">"MA"</span></span>,
"<span class="hljs-attribute">_id</span>" : <span class="hljs-value"><span class="hljs-string">"01012"</span> </span>}
</code></pre>
</blockquote>
<h3 class="code-line" data-line-start="89" data-line-end="90"><a id="SP_500_Data_89"></a>S&amp;P 500 Data</h3>
<blockquote>
<pre><code class="has-line-data" data-line-start="92" data-line-end="109">{
"<span class="hljs-attribute">52 Week High</span>": <span class="hljs-value"><span class="hljs-number">42.28</span></span>,
"<span class="hljs-attribute">52 Week Low</span>": <span class="hljs-value"><span class="hljs-number">64.6</span></span>,
"<span class="hljs-attribute">Dividend Yield</span>": <span class="hljs-value"><span class="hljs-number">1.9089824</span></span>,
"<span class="hljs-attribute">EBITDA</span>": <span class="hljs-value"><span class="hljs-number">5744000000.0</span></span>,
"<span class="hljs-attribute">Earnings/Share</span>": <span class="hljs-value"><span class="hljs-number">0.26</span></span>,
"<span class="hljs-attribute">Market Cap</span>": <span class="hljs-value"><span class="hljs-number">102121042306.0</span></span>,
"<span class="hljs-attribute">Name</span>": <span class="hljs-value"><span class="hljs-string">"Abbott Laboratories"</span></span>,
"<span class="hljs-attribute">Price</span>": <span class="hljs-value"><span class="hljs-number">56.27</span></span>,
"<span class="hljs-attribute">Price/Book</span>": <span class="hljs-value"><span class="hljs-number">3.19</span></span>,
"<span class="hljs-attribute">Price/Earnings</span>": <span class="hljs-value"><span class="hljs-number">22.51</span></span>,
"<span class="hljs-attribute">Price/Sales</span>": <span class="hljs-value"><span class="hljs-number">3.7404804</span></span>,
"<span class="hljs-attribute">SEC Filings</span>": <span class="hljs-value"><span class="hljs-string">"http://www.sec.gov/cgi-bin/browse-edgar?action=getcompany&amp;CIK=ABT"</span></span>,
"<span class="hljs-attribute">Sector</span>": <span class="hljs-value"><span class="hljs-string">"Health Care"</span></span>,
"<span class="hljs-attribute">Symbol</span>": <span class="hljs-value"><span class="hljs-string">"ABT"</span>
</span>}
</code></pre>
</blockquote>
<h2 class="code-line" data-line-start="110" data-line-end="111"><a id="4_Run_MongoDB_Queries_from_the_Commmand_Line_110"></a>4. Run MongoDB Queries from the Commmand Line</h2>
<p class="has-line-data" data-line-start="112" data-line-end="113">Execute queries to answer the following questions.</p>
<p class="has-line-data" data-line-start="114" data-line-end="115">As you are working, save your queries to a text file with a “.js” extension named stocks_zips_[pawprint].js. You will need to submit that when you are done.</p>
<ol>
<li class="has-line-data" data-line-start="116" data-line-end="117">List all zip codes and city from your home state.</li>
<li class="has-line-data" data-line-start="117" data-line-end="118">List all of the zip codes and cities from the states of Missouri, Florida, Iowa, and Kansas.</li>
<li class="has-line-data" data-line-start="118" data-line-end="119">List the zip codes, city, and population in Ohio for all the zip codes with populations of less than 2000 people?</li>
<li class="has-line-data" data-line-start="119" data-line-end="120">List the zip codes, city, and population for zip codes in the United States that have populations greater than 50,000 people?</li>
<li class="has-line-data" data-line-start="120" data-line-end="121">Which zip codes are located in the city of Columbia, Missouri?</li>
<li class="has-line-data" data-line-start="121" data-line-end="122">List the population by zip code for all zip codes in the state of Missouri.</li>
<li class="has-line-data" data-line-start="122" data-line-end="123">Which states have cities named Springfield?</li>
<li class="has-line-data" data-line-start="123" data-line-end="124">How many cities named Springfield are there in the United States?</li>
<li class="has-line-data" data-line-start="124" data-line-end="125">List the zip code, population, and state for cities named Emerald.</li>
<li class="has-line-data" data-line-start="125" data-line-end="126">List the zip code, city, and state for cities with a population of 10 people.</li>
<li class="has-line-data" data-line-start="126" data-line-end="127">List all of the documents in the stocks collection.</li>
<li class="has-line-data" data-line-start="127" data-line-end="128">List the company name and symbol for all companies in the “Information Technology” sector.</li>
<li class="has-line-data" data-line-start="128" data-line-end="129">List the symbol, company name, and stock price for all companies in the “Financials” sector whose stock price is greater than $75.</li>
<li class="has-line-data" data-line-start="129" data-line-end="130">List the Company name, sector, and earnings (EBITDA) for all companies with earnings (EBITDA) of at least $2.5 Billion</li>
<li class="has-line-data" data-line-start="130" data-line-end="131">List the company name, symbol and sector for all companies with a 52 Week High greater than or equal to 150.</li>
<li class="has-line-data" data-line-start="131" data-line-end="132">List the symbol, company name, and stock price for all companies in the “Real Estate” sector whose stock price is less than $50.</li>
<li class="has-line-data" data-line-start="132" data-line-end="133">List the company name, symbol and dividend yield for companies in the Utilities or Industrials sectors.</li>
<li class="has-line-data" data-line-start="133" data-line-end="135">List the company name, symbol and market cap for companies whose dividend yield is greater than 3 or whose earnings/share is less than 1.</li>
</ol>
<h2 class="code-line" data-line-start="135" data-line-end="136"><a id="5_What_to_Submit_135"></a>5. What to Submit</h2>
<p class="has-line-data" data-line-start="137" data-line-end="138">You should submit the javascript file with your queries to Canvas when you are done.</p></div>
