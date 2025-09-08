SELECT EmpName, Salary
FROM Employees e
WHERE Salary > (
    SELECT AVG(Salary)
    FROM Employees
    WHERE DeptID = e.DeptID
);
