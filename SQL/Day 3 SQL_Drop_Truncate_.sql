CREATE DATABASE CollegeNew;

USE CollegeNew;


CREATE TABLE Students (
    Student_ID INT,
    Name VARCHAR(50),
    Course VARCHAR(20),
    Age INT
);

INSERT INTO Students(Student_ID,Name,Course,Age)
VALUES
(101, 'Rahul', 'MCA', 22),
(102, 'Priya', 'BCA', 21),
(103, 'Aman', 'MCA', 23),
(104, 'Neha', 'BCA', 20);

SELECT * FROM Students;

Drop Database CollegeNew;
Truncate Table Students;