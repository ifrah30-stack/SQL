SELECT DeptName
FROM Departments d
WHERE EXISTS (
    SELECT 1 FROM Employees e
    WHERE e.DeptID = d.DeptID
);
