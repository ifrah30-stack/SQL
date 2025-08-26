SELECT Salary 
FROM Employees e1
WHERE 3-1 = (
    SELECT COUNT(DISTINCT Salary)
    FROM Employees e2
    WHERE e2.Salary > e1.Salary
);
