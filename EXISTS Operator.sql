SELECT Name 
FROM Employees e
WHERE EXISTS (
    SELECT 1 FROM Projects p WHERE p.EmpID = e.EmpID
);
