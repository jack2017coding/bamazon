CREATE DATABASE bamazon;

USE bamazon;


create table products (
  ItemId INT NOT NULL AUTO_INCREMENT,
  ProductName VARCHAR(45) NOT NULL,
  DepartmentName VARCHAR(45) NOT NULL,
  Price DECIMAL(10,2) NOT NULL,
  StockQuanitiy INT NOT NULL,
  PRIMARY KEY (ItemId)
);


INSERT INTO products (ItemId, ProductName, DepartmentName, Price, StockQuanitiy)
VALUES ("Product01", "Department01", 1.00, 11);

INSERT INTO products (ItemId, ProductName, DepartmentName, Price, StockQuanitiy)
VALUES ("Product02", "Department02", 2.00, 12);

INSERT INTO products (ItemId, ProductName, DepartmentName, Price, StockQuanitiy)
VALUES ("Product03", "Department03", 3.00, 13);

INSERT INTO products (ItemId, ProductName, DepartmentName, Price, StockQuanitiy)
VALUES ("Product04", "Department04", 4.00, 14);

INSERT INTO products (ItemId, ProductName, DepartmentName, Price, StockQuanitiy)
VALUES ("Product05", "Department05", 5.00, 15);

INSERT INTO products (ItemId, ProductName, DepartmentName, Price, StockQuanitiy)
VALUES ("Product06", "Department06", 6.00, 16);

INSERT INTO products (ItemId, ProductName, DepartmentName, Price, StockQuanitiy)
VALUES ("Product07", "Department07", 7.00, 17);

INSERT INTO products (ItemId, ProductName, DepartmentName, Price, StockQuanitiy)
VALUES ("Product08", "Department08", 8.00, 18);

INSERT INTO products (ItemId, ProductName, DepartmentName, Price, StockQuanitiy)
VALUES ("Product09", "Department09", 9.00, 19);

INSERT INTO products (ItemId, ProductName, DepartmentName, Price, StockQuanitiy)
VALUES ("Product10", "Department10", 10.00, 20);
