CREATE DATABASE bamazon_DB;

USE bamazon_DB;


CREATE TABLE products (
  ItemId INT(10) NOT NULL,
  ProductName VARCHAR(45) NOT NULL,
  DepartmentName VARCHAR(45) NOT NULL,
  Price DECIMAL(10,2) NOT NULL,
  StockQuanitiy INT(10) NOT NULL
);


INSERT INTO products (ItemId, ProductName, DepartmentName, Price, StockQuanitiy)
VALUES (1, "Product01", "Department01", 5.00, 11);

INSERT INTO products (ItemId, ProductName, DepartmentName, Price, StockQuanitiy)
VALUES (2, "Product02", "Department02", 3.25, 12);

INSERT INTO products (ItemId, ProductName, DepartmentName, Price, StockQuanitiy)
VALUES (3, "Product03", "Department03", 2.99, 13);

INSERT INTO products (ItemId, ProductName, DepartmentName, Price, StockQuanitiy)
VALUES (4, "Product04", "Department04", 4.00, 14);

INSERT INTO products (ItemId, ProductName, DepartmentName, Price, StockQuanitiy)
VALUES (5, "Product05", "Department05", 7.21, 15);

INSERT INTO products (ItemId, ProductName, DepartmentName, Price, StockQuanitiy)
VALUES (6, "Product06", "Department06", 1.12, 16);

INSERT INTO products (ItemId, ProductName, DepartmentName, Price, StockQuanitiy)
VALUES (7, "Product07", "Department07", 9.99, 17);

INSERT INTO products (ItemId, ProductName, DepartmentName, Price, StockQuanitiy)
VALUES (8, "Product08", "Department08", 7.49, 18);

INSERT INTO products (ItemId, ProductName, DepartmentName, Price, StockQuanitiy)
VALUES (9, "Product09", "Department09", 6.79, 19);

INSERT INTO products (ItemId, ProductName, DepartmentName, Price, StockQuanitiy)
VALUES (10, "Product10", "Department10", 4.99, 20);
