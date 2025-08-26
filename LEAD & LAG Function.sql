SELECT Name, Salary,
LAG(Salary,1) OVER (ORDER BY Salary) AS PrevSalary,
LEAD(Salary,1) OVER (ORDER BY Salary) AS NextSalary
FROM Employees;
