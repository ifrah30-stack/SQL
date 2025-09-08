SELECT EmpName, Salary,
       DENSE_RANK() OVER (ORDER BY Salary DESC) AS DenseRank
FROM Employees;
