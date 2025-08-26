SELECT Department,
SUM(CASE WHEN Gender='M' THEN Salary ELSE 0 END) AS MaleSalary,
SUM(CASE WHEN Gender='F' THEN Salary ELSE 0 END) AS FemaleSalary
FROM Employees
GROUP BY Department;
