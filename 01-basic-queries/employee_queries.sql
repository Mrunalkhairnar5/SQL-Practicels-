-- Author: Mrunal
-- Topic: Basic SQL Queries
-- Database: MySQL
-- Practice Level: Beginner



CREATE DATABASE Mrunal;
USE hitesh;

CREATE TABLE employee (
    dept_id INT PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(50),
    salary DECIMAL(10,2) CHECK (salary > 0),
    email VARCHAR(100) UNIQUE,
    city VARCHAR(50)
);

INSERT INTO employee VALUES
(1, 'Amit', 'IT', 50000, 'amit@gmail.com', 'Pune'),
(2, 'Rahul', 'HR', 60000, 'rahul@gmail.com', 'Mumbai'),
(3, 'Neha', 'IT', 70000, 'neha@gmail.com', 'Pune'),
(4, 'Priya', 'Finance', 80000, 'priya@gmail.com', 'Nashik'),
(5, 'Karan', 'IT', 60000, 'karan@gmail.com', 'Pune');

SELECT * FROM employee;

SELECT *
FROM employee
WHERE department = 'IT';

SELECT name, salary
FROM employee
WHERE salary > 60000;

SELECT DISTINCT department
FROM employee;

SELECT *
FROM employee
ORDER BY salary DESC;

SELECT *
FROM employee
ORDER BY salary DESC
LIMIT 1 OFFSET 1;

SELECT MAX(salary)
FROM employee;
