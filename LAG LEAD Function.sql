SELECT EmpName, Salary,
       LAG(Salary) OVER (ORDER BY Salary) AS PrevSalary,
       LEAD(Salary) OVER (ORDER BY Salary) AS NextSalary
FROM Employees;
