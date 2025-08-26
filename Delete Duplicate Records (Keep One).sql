DELETE FROM Employees
WHERE EmpID NOT IN (
    SELECT MIN(EmpID)
    FROM Employees
    GROUP BY Name
);
