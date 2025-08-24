SELECT MAX(Salary) AS Second_Highest
FROM Employees
WHERE Salary < (SELECT MAX(Salary) FROM Employees);
