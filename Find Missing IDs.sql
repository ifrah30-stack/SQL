SELECT n.Num
FROM (
    SELECT ROW_NUMBER() OVER () AS Num
    FROM Employees
) n
LEFT JOIN Employees e ON n.Num = e.EmpID
WHERE e.EmpID IS NULL;
