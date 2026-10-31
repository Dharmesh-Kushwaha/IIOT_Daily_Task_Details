USE Product;

CREATE TABLE OrderItems
(
    OrderItemID INT PRIMARY KEY,
    ProductName VARCHAR(50),
    Category VARCHAR(30),
    Quantity INT,
    UnitPrice DECIMAL(10,2)
);

INSERT INTO OrderItems (OrderItemID, ProductName, Category, Quantity, UnitPrice)
VALUES
(1, 'Laptop', 'Electronics', 2, 55000.00),
(2, 'Mouse', 'Accessories', 5, 650.00),
(3, 'Keyboard', 'Accessories', 3, 1200.00),
(4, 'Monitor', 'Electronics', 1, 12500.00),
(5, 'Notebook', 'Stationery', 10, 80.00),
(6, 'Headphones', 'Accessories', 2, 2500.00);

SELECT COUNT(*) AS TotalRecords
FROM OrderItems;


SELECT SUM(Quantity) AS TotalQuantity
FROM OrderItems;


SELECT AVG(UnitPrice) AS AverageUnitPrice
FROM OrderItems;

SELECT MIN(UnitPrice) AS MinimumPrice,MAX(UnitPrice) AS MaximumPrice
FROM OrderItems;
