INSERT INTO Employees_Backup (EmpID, Name, Department, Salary, HireDate)
SELECT EmpID, Name, Department, Salary, HireDate
FROM Employees
WHERE Department = 'HR';
