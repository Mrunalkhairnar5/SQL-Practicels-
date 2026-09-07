1. Find the Second Highest Salary
SELECT *
FROM employee
ORDER BY salary DESC
LIMIT 1 OFFSET 1;
2. Find the Average Salary of Each Department
SELECT department, AVG(salary) AS average_salary
FROM employee
GROUP BY department;
3. Find Departments Whose Average Salary Is Greater Than 60,000
SELECT department, AVG(salary) AS average_salary
FROM employee
GROUP BY department
HAVING AVG(salary) > 60000;
4. Find Duplicate Records
SELECT email, COUNT(*) AS count
FROM employee
GROUP BY email
HAVING COUNT(*) > 1;
5. Rank Employees by Salary
SELECT name, salary,
       RANK() OVER (ORDER BY salary DESC) AS salary_rank
FROM employee;
