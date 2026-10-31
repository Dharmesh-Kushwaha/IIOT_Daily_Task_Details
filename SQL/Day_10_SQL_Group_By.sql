USE Product;

CREATE TABLE Sales
(
    SaleID INT PRIMARY KEY,
    ProductName VARCHAR(50),
    Category VARCHAR(30),
    City VARCHAR(40),
    Quantity INT,
    Amount DECIMAL(10,2)
);

INSERT INTO Sales(SaleID, ProductName, Category, City, Quantity, Amount)
VALUES
(1, 'Laptop', 'Electronics', 'Bareilly', 2, 110000.00),
(2, 'Mouse', 'Accessories', 'Delhi', 5, 3250.00),
(3, 'Keyboard', 'Accessories', 'Bareilly', 3, 3600.00),
(4, 'Monitor', 'Electronics', 'Lucknow', 1, 12500.00),
(5, 'Notebook', 'Stationery', 'Delhi', 10, 800.00),
(6, 'Headphones', 'Accessories', 'Lucknow', 2, 5000.00),
(7, 'Laptop', 'Electronics', 'Delhi', 1, 55000.00),
(8, 'Notebook', 'Stationery', 'Bareilly', 8, 640.00);


SELECT Category, SUM(Amount) AS TotalSales
FROM Sales
GROUP BY Category;


SELECT ProductName, SUM(Quantity) AS TotalQuantity
FROM Sales
GROUP BY ProductName;
