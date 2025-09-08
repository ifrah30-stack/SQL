WITH HighSalary AS (
    SELECT EmpID, EmpName, Salary
    FROM Employees
    WHERE Salary > 60000
)
SELECT * FROM HighSalary;
