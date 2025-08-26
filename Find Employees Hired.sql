SELECT Name, HireDate
FROM Employees
WHERE HireDate >= CURRENT_DATE - INTERVAL '30 days';
