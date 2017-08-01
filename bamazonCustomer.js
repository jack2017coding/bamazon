var mysql = require("mysql");
var prompt = require("prompt");
var Table = require("cli-table");

var connection = mysql.createConnection({
  host: "localhost",
  port: 3306,

  // Your username
  user: "root",

  // Your password
  password: "xxxpornstar",
  database: "bamazon_DB"
});

connection.connect();

// Connect to MySQL database and pull products information
connection.query("SELECT ItemId, ProductName, DepartmentName, Price, StockQuanitiy FROM Products", function(err, result){
  if(err) console.log(err);

  // Create a table with prodcts' information
  var table = new Table({
    head: ["Item Id#", "Product Name", "Department Name" , "Price", "Stock Quanitiy"],
    style: {
      head: ["white"],
      colAligns: ["center"],
    }
  });

  for(var i = 0; i < result.length; i++){
    table.push(
      [result[i].ItemId, result[i].ProductName, result[i].DepartmentName, result[i].Price ,result[i].StockQuanitiy]
    );
  }
  console.log(table.toString());

  purchase();
});

// Creating a function so that a user can purchase an item
function purchase(){

  var productInfo = {
    properties: {
      itemId:{description: "Enter the ID # of the item you would like to purchase"},
      Quantity:{description: "How many items would you like to purchase?"}
    },
  };

  prompt.start();

  // Get the responses from above prompts
  prompt.get(productInfo, function(err, res){

    // Place the variables in object customerPurchase
    var customerPurchase = {
      itemId: res.itemId,
      Quantity: res.Quantity
    };
 
var productPurchased = []; 
    productPurchased.push(customerPurchase);

    // Connects to the mysql database and selects the item selecteb based on ID
    connection.query("SELECT * FROM Products WHERE ItemId=?", productPurchased[0].itemId, function(err, res){
        if(err) console.log(err, "That item ID doesn\'t exist");
        
        // If the user request more than available items in stock
        if(res[0].StockQuanitiy < productPurchased[0].Quantity){
          console.log("We don't have that many products in stock!");
          connection.end();

        } else if(res[0].StockQuanitiy >= productPurchased[0].Quantity){

          console.log(productPurchased[0].Quantity + " items purchased");

          console.log(res[0].ProductName + " " + res[0].Price);

          // Total sale amount 
          var saleTotal = res[0].Price * productPurchased[0].Quantity;

          console.log("Total: " + saleTotal);

          // Declare a variable with new quantity 
          newQuantity = res[0].StockQuanitiy - productPurchased[0].Quantity;
      
          // Updated quantity in database
          connection.query("UPDATE Products SET StockQuanitiy = " + newQuantity +" WHERE ItemId = " + productPurchased[0].itemId, function(err, res){
            if(err) console.log('Problem ', err);

            console.log("Your order has been processed. Thank you for your business!");

            connection.end();
          })
        };
    })
  })
};