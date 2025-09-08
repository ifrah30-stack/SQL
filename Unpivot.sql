SELECT DeptID, MonthName, Amount
FROM Sales
UNPIVOT (
    Amount FOR MonthName IN (Jan, Feb, Mar)
) unpvt;
