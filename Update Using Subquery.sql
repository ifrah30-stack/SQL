UPDATE Employees
SET Salary = Salary * 1.1
WHERE EmpID IN (
    SELECT EmpID FROM Employees WHERE Department = 'IT'
);
