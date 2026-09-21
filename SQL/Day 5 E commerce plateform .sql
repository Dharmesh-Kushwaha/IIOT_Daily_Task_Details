CREATE DATABASE Ecommerce;

USE Ecommerce;

CREATE TABLE Customer (
    Customer_ID INT PRIMARY KEY,
    Customer_Name VARCHAR(100) NOT NULL,
    Email VARCHAR(100) UNIQUE,
    City VARCHAR(50),
    Age INT CHECK (Age > 18),
    PhoneNo VARCHAR(15)
);


CREATE TABLE Product (
    Product_ID INT PRIMARY KEY,
    Product_Name VARCHAR(100) NOT NULL,
    Category VARCHAR(50),
    Price DECIMAL(10,2) CHECK (Price > 0),
    Stock INT DEFAULT 0
);


CREATE TABLE Shipment (
    Shipment_ID INT PRIMARY KEY,
    Product_Name VARCHAR(100),
    Address VARCHAR(200),
    PhoneNo VARCHAR(15)
);


CREATE TABLE Return_Product (
    Return_ID INT PRIMARY KEY,
    Product_Category VARCHAR(50),
    Product_Name VARCHAR(100),
    Region VARCHAR(50),
    PhoneNo VARCHAR(15)
);


INSERT INTO Customer
(Customer_ID, Customer_Name, Email, City, Age, PhoneNo)
VALUES
(101, 'Rahul Sharma', 'rahul@gmail.com', 'Delhi', 24, '9876543210'),
(102, 'Priya Singh', 'priya@gmail.com', 'Lucknow', 27, '9876543211'),
(103, 'Aman Verma', 'aman@gmail.com', 'Bareilly', 22, '9876543212'),
(104, 'Neha Gupta', 'neha@gmail.com', 'Jaipur', 31, '9876543213'),
(105, 'Rohit Kumar', 'rohit@gmail.com', 'Mumbai', 26, '9876543214');



INSERT INTO Product
(Product_ID, Product_Name, Category, Price, Stock)
VALUES
(201, 'Laptop', 'Electronics', 55000, 15),
(202, 'Smartphone', 'Electronics', 25000, 25),
(203, 'Keyboard', 'Accessories', 1200, 40),
(204, 'Headphones', 'Accessories', 2500, 30),
(205, 'Office Chair', 'Furniture', 8500, 10);



INSERT INTO Shipment
(Shipment_ID, Product_Name, Address, PhoneNo)
VALUES
(301, 'Laptop', 'Sector 18, Noida', '9876500011'),
(302, 'Smartphone', 'Gomti Nagar, Lucknow', '9876500012'),
(303, 'Keyboard', 'Civil Lines, Bareilly', '9876500013'),
(304, 'Headphones', 'Malviya Nagar, Jaipur', '9876500014'),
(305, 'Office Chair', 'Andheri West, Mumbai', '9876500015');



INSERT INTO Return_Product
(Return_ID, Product_Category, Product_Name, Region, PhoneNo)
VALUES
(401, 'Electronics', 'Laptop', 'North', '9876400011'),
(402, 'Electronics', 'Smartphone', 'Central', '9876400012'),
(403, 'Accessories', 'Keyboard', 'North', '9876400013'),
(404, 'Accessories', 'Headphones', 'West', '9876400014'),
(405, 'Furniture', 'Office Chair', 'West', '9876400015');



SELECT * FROM Customer;

SELECT * FROM Product;

SELECT * FROM Shipment;

SELECT * FROM Return_Product;