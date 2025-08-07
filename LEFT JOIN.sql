SELECT e.name, d.location
FROM employees e
LEFT JOIN departments d ON e.department = d.name;
