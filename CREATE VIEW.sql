CREATE VIEW high_earners AS
SELECT name, salary
FROM employees
WHERE salary > 60000;
