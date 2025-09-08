SELECT EmpName, Salary
FROM Employees
WHERE Salary > ALL (SELECT Salary FROM Employees WHERE DeptID = 3);
