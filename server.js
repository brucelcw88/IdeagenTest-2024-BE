const express = require('express');
const cors = require('cors');
const mysql = require('mysql2');
require('dotenv').config();

const app = express();
const PORT = process.env.PORT || 3000;

const getProductCategoriesQuery = "SELECT * FROM product_category";
const getSalesOrderQuery = "select so.*, pc.name as 'category' from product_category pc right join sales_order so on pc.object_id = so.category_id where pc.is_active = 1 order by object_id;"


app.use(express.json());
app.use(cors());


// MySQL Connection
const db = mysql.createConnection({
    host: process.env.DB_HOST, //'localhost'
    user: process.env.DB_USER, //'root'
    password: process.env.DB_PASSWORD, //'password'
    database: process.env.DB_DATABASE, //'vuetest'
    port: process.env.DB_PORT
});


// Connect to the database
db.connect(err => {
    if (err) {
        console.error('Error connecting to the database:', err);
        return;
    }
    console.log('Connected to MySQL database');
});


// Perform a query
// API endpoint to retrieve data (GET) - test
app.get('/api/products_cat', (req, res) => {
    db.query(getProductCategoriesQuery, (err, results) => {
        if (err) {
            return res.status(500).json({ error: 'Internal Server Error: ' + err });
        }
        console.log("query results: ", res, req);
        res.json(results);
    });
});

// API endpoint to retrieve sales order list (GET)
app.get('/api/sales_order', (req, res) => {
    db.query(getSalesOrderQuery, (err, results) => {
        if (err) {
            return res.status(500).json({ error: 'Internal Server Error: ' + err });
        }
        console.log("query results: ", res, req);
        res.json(results);
    });
});


app.listen(PORT, () => {
    console.log(`Server is running on http://localhost:${PORT}`);
});