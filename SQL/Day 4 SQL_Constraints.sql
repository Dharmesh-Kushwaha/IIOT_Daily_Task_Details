
CREATE DATABASE CompanyDB;
USE CompanyDB;

CREATE TABLE Employees (
    Employee_ID INT PRIMARY KEY,
    Employee_Name VARCHAR(50) NOT NULL,
    Email VARCHAR(100) UNIQUE,
    Department VARCHAR(50) DEFAULT 'IT',
    Salary INT
);

INSERT INTO Employees
(Employee_ID, Employee_Name, Email, Salary)
VALUES
(101, 'Rahul Sharma', 'rahul@gmail.com', 35000),
(102, 'Priya Singh', 'priya@gmail.com', 42000),
(103, 'Aman Verma', 'aman@gmail.com', 38000);

SELECT * FROM Employees;