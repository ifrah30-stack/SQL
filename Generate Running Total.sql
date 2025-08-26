SELECT Name, Salary,
SUM(Salary) OVER (ORDER BY HireDate) AS RunningTotal
FROM Employees;
