SELECT employee_name, department, salary
FROM employees
WHERE salary > (
    SELECT AVG(salary)
    FROM employees
    WHERE department = 'Sales'
);
