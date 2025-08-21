SELECT employee_id, department, salary,
       salary - LAG(salary) OVER (PARTITION BY department ORDER BY hire_date) as salary_change,
       AVG(salary) OVER (PARTITION BY department) as dept_avg_salary,
       PERCENT_RANK() OVER (PARTITION BY department ORDER BY salary) as salary_percentile
FROM employees
WHERE hire_date > '2020-01-01';
