var mysql = require("mysql");
var inquirer = require("inquirer");
var Table = require('cli-table');

var connection = mysql.createConnection({
  host: "localhost",

  // Your port; if not 3306
  port: 8889,

  // Your username
  user: "root",

  // Your password
  password: "root",
  database: "bamazon"
});

connection.connect(function (err) {
  if (err) throw err;
  console.log("connected as id " + connection.threadId);
  selectAll();
});



function selectAll() {
  connection.query("SELECT * FROM products", function (err, res) {

    console.log("Welcome, what flavor Ice Cream would you like?");
    // instantiate
    var table = new Table({
      head: ['Product_Id', 'Product_Name', 'Price'],
      colWidths: [30, 30, 30]
    });
    // console.log(res);
    for (var i = 0; i < res.length; i++) {
      table.push([res[i].item_id, res[i].product_name, res[i].price])
    }

    console.log(table.toString());
    start();
  })
}

function start() {
  return inquirer
    .prompt([{
      type: 'list',
      name: 'product_id',
      choices: ['1', '2', '3', '4', '5', '6', '7', '8', '9', '10'],
      message: 'What is the ID of the product you would like to buy?',
    }, {
      type: 'input',
      name: 'quantity',
      message: 'How many would you like?',
    }]).then(data => {
      console.log(data.product_id);
      connection.query("SELECT * FROM products WHERE item_id=?", data.product_id, function (err, res) {
        return console.log(res);
        connection.end();
      })
      if (data.quantity > products.stock_quantity) {
        console.log("we have enough!");
        connection.query("UPDATE products SET stock_quantity = -data.quantity WHERE item_id=?", data.product_id, function (err, res) {
          return console.log(res);
          connection.end();
        })
      } else {
        console.log("sorry we don't have enough.");
      }
    });
}