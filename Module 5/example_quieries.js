// list the 10 most expensive stocks in the stocks collection according to its price
// sort by Price in decending order. Show symbol, name, price
db.stocks.aggregate([
    { $sort: { "Price": -1 } },
    { $limit: 10 },
    { $project: { "Symbol": 1, "Name": 1, "Price": 1, "_id": 0 } }
])


// same as above but show 11 - 20 most expensive in terms of price
db.stocks.aggregate([
    { $sort: { "Price": -1 } },
    { $skip: 10 },
    { $limit: 10 },
    { $project: { "Symbol": 1, "Name": 1, "Price": 1, "_id": 0 } }
])

// same as above but show 6 - 15 most expensive in terms of price
db.stocks.aggregate([
    { $sort: { "Price": -1 } },
    { $skip: 5 },
    { $limit: 10 },
    { $project: { "Symbol": 1, "Name": 1, "Price": 1, "_id": 0 } }
])


// show the population of the 10 least populous cities in MO
db.zips.find({ "state": "MO", "city": "COLUMBIA" })
// only look at documents where state = "MO" - $match
// group documents based on city & sum the total population - $group
// sort documents by population - $sort
// limit to 10 - $limit
db.zips.aggregate([
    { $match: { state: "MO" } },
    { $group: { _id: "$city", TotalPopulation: { $sum: "$pop" } } },
    { $sort: { TotalPopulation: 1 } },
    { $limit: 10 }
])

// What is the population of Columbia, Missouri
db.zips.aggregate([
    { $match: { state: "MO", city: "COLUMBIA" } },
    { $group: { _id: "$city", TotalPopulation: { $sum: "$pop" } } },
    { $sort: { TotalPopulation: 1 } },
    { $limit: 10 }
])

// list the cities in MO where population > 50,000. Sort accending
db.zips.aggregate([
    { $match: { state: "MO" } },
    { $group: { _id: "$city", TotalPopulation: { $sum: "$pop" } } },
    { $match: { TotalPopulation: { $gte: 50000 } } },
    { $sort: { TotalPopulation: 1 } }
])

// how many zip codes in the state of Florida?
db.zips.aggregate([
    {$match: {state: "FL"}},
    {$count: "Total Zips in FL"}
])

// Difference between $sum and $count
db.zips.aggregate([
    {$match: {state: "MO", city: "COLUMBIA"}},
    {$group: {_id: "$city", TotalPopulation:{$sum: "$pop"}}}
])

db.zips.aggregate([
    {$match: {state: "MO", city: "COLUMBIA"}},
    {$count: "Total Zips in Columbia MO"}
])