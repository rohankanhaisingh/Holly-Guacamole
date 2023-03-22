const mysql = require("mysql");

const pool = mysql.createPool({
    host: '192.168.1.186',
    user: 'sussy',
    password: 'nigga1234',
    database: 'hg'
});


async function fetchQuery(connection, query) {

    return new Promise(function (resolve, reject) {

        connection.query(query, function (err, results, fields) {

            if (err)
                reject(err);

            resolve(results);
        });
    });
}

pool.getConnection(async function (err, connection) {

    if (err)
        throw err;

    console.log(`Verbinding gemaakt met server ${connection.threadId}.`);
    
    const fetchedQuery = await fetchQuery(connection, "SELECT * FROM producten JOIN soortprod ON producten.SoortProdID = soortprod.SoortProdID LIMIT 0, 25");

    console.log(fetchedQuery);
});