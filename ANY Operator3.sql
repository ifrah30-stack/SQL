SELECT EmpName, Salary
FROM Employees
WHERE Salary > ANY (SELECT Salary FROM Employees WHERE DeptID = 2);
