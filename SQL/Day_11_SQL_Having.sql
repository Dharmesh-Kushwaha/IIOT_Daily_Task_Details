Use Product;

CREATE TABLE Sale(
    SaleID INT PRIMARY KEY,
    Salesperson VARCHAR(50),
    Region VARCHAR(30),
    Amount DECIMAL(10,2)
);

INSERT INTO Sale(SaleID, Salesperson, Region, Amount)
VALUES
(1, 'Amit', 'North', 25000.00),
(2, 'Priya', 'South', 18000.00),
(3, 'Amit', 'North', 30000.00),
(4, 'Rahul', 'East', 12000.00),
(5, 'Priya', 'South', 22000.00),
(6, 'Neha', 'North', 40000.00),
(7, 'Rahul', 'East', 16000.00),
(8, 'Amit', 'North', 15000.00);


SELECT Salesperson, SUM(Amount) AS TotalSales
FROM Sale
GROUP BY Salesperson
HAVING SUM(Amount) > 50000;

SELECT Salesperson, AVG(Amount) AS AverageSale
FROM Sale
GROUP BY Salesperson
HAVING AVG(Amount) > 20000;
