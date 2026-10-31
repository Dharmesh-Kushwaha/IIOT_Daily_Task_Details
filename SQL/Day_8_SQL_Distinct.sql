Use Product

CREATE TABLE Orders
(
    OrderID INT PRIMARY KEY,
    CustomerName VARCHAR(50),
    City VARCHAR(40),
    PaymentMode VARCHAR(20),
    OrderStatus VARCHAR(20)
);

INSERT INTO Orders (OrderID, CustomerName, City, PaymentMode, OrderStatus)
VALUES
(101, 'Amit', 'Bareilly', 'UPI', 'Delivered'),
(102, 'Priya', 'Lucknow', 'Card', 'Shipped'),
(103, 'Rahul', 'Bareilly', 'Cash', 'Delivered'),
(104, 'Neha', 'Delhi', 'UPI', 'Pending'),
(105, 'Karan', 'Lucknow', 'Card', 'Delivered'),
(106, 'Pooja', 'Delhi', 'UPI', 'Cancelled'),
(107, 'Amit', 'Bareilly', 'Card', 'Shipped');


SELECT DISTINCT City
FROM Orders;

SELECT DISTINCT PaymentMode
FROM Orders;

SELECT DISTINCT City, PaymentMode
FROM Orders
ORDER BY City, PaymentMode;
