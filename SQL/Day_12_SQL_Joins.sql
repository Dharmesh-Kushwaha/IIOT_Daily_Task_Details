CREATE DATABASE abc;
USE abc;
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(50)
);

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    ProductName VARCHAR(50)
);

INSERT INTO Customers (CustomerID, CustomerName)
VALUES
(1, 'Amit'),
(2, 'Priya'),
(3, 'Rahul'),
(4, 'Neha');

INSERT INTO Orders (OrderID, CustomerID, ProductName)
VALUES
(101, 1, 'Laptop'),
(102, 2, 'Mobile'),
(103, 2, 'Keyboard'),
(104, 5, 'Mouse');


SELECT * FROM Customers;
SELECT * FROM Orders;

--Inner Join
SELECT Customers.CustomerID,CustomerName,ProductName
FROM Customers
INNER JOIN Orders
ON Customers.CustomerID = Orders.CustomerID;

--Left Join
SELECT 
    Customers.CustomerID,
    CustomerName,
    ProductName
FROM Customers
LEFT JOIN Orders
ON Customers.CustomerID = Orders.CustomerID;

--Right Join 
SELECT 
    Customers.CustomerID,
    CustomerName,
    ProductName
FROM Customers
RIGHT JOIN Orders
ON Customers.CustomerID = Orders.CustomerID;

--Full Join
SELECT 
    Customers.CustomerID,
    CustomerName,
    ProductName
FROM Customers
FULL OUTER JOIN Orders
ON Customers.CustomerID = Orders.CustomerID;