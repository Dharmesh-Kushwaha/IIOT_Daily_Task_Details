CREATE DATABASE StoreDB;

USE StoreDB;

CREATE TABLE Products (
    Product_ID INT PRIMARY KEY,
    Product_Name VARCHAR(50),
    Category VARCHAR(30),
    Price INT,
    Stock INT,
    Brand VARCHAR(30)
);


INSERT INTO Products
(Product_ID, Product_Name, Category, Price, Stock, Brand)
VALUES
(201, 'Laptop', 'Electronics', 55000, 12, 'Dell'),
(202, 'Keyboard', 'Accessories', 1200, 35, 'Logitech'),
(203, 'Monitor', 'Electronics', 18000, 8, 'Samsung'),
(204, 'Mouse', 'Accessories', 800, 50, 'HP'),
(205, 'Printer', 'Electronics', 14500, 6, 'Canon'),
(206, 'Headphones', 'Accessories', 2500, 25, 'Sony'),
(207, 'Tablet', 'Electronics', 22000, 10, 'Samsung'),
(208, 'Webcam', 'Accessories', 3500, 15, 'Logitech');

SELECT * FROM Products;

SELECT * FROM Products
WHERE Category = 'Electronics';

SELECT * FROM Products
WHERE Price > 10000;

SELECT * FROM Products
WHERE Brand = 'Samsung' OR Brand = 'Logitech';