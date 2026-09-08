select avg(salary),department, count(*)
from employee
group by department;

Q1Find the number of employees in each department.

select department ,count(*) as employ_count
from employee
group by department;

Q2 Find the total salary and average salary of each department.
select department,sum(salary), avg(salary)
from employee
group by department;

Q3 Find departments whose average salary is greater than 60,000.
select *
from employee 
where salary > 60000;

Q4Categorize employees based on salary using CASE: High (≥70,000), Medium (≥60,000), otherwise Low.
SELECT name, salary,
       CASE
           WHEN salary >= 70000 THEN 'High'
           WHEN salary >= 60000 THEN 'Medium'
           ELSE 'Low'
       END AS salary_category
FROM employee;

Q5 Find employees whose salary is greater than the company's average salary using a subquery.
select avg(salary)
from employee;
SELECT name, salary
FROM employee
WHERE salary > (
    SELECT AVG(salary)
    FROM employee
);
