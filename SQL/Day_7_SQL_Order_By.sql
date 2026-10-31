CREATE DATABASE Product; 
USE Product;
CREATE TABLE Products
(
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(50),
    Category VARCHAR(30),
    Price DECIMAL(10,2),
    Stock INT
);

INSERT INTO Products(ProductID, ProductName, Category, Price, Stock)
VALUES
(1, 'Laptop', 'Electronics', 55000.00, 12),
(2, 'Mouse', 'Accessories', 650.00, 50),
(3, 'Keyboard', 'Accessories', 1200.00, 30),
(4, 'Monitor', 'Electronics', 12500.00, 8),
(5, 'Notebook', 'Stationery', 80.00, 100),
(6, 'Headphones', 'Accessories', 2500.00, 20);


SELECT * FROM Products
ORDER BY Price ASC;


SELECT * FROM Products
ORDER BY Price DESC;
