SELECT DeptID, [Jan], [Feb], [Mar]
FROM (
    SELECT DeptID, MONTH(OrderDate) AS MonthNum, Amount
    FROM Orders
) src
PIVOT (
    SUM(Amount) FOR MonthNum IN ([1] AS Jan, [2] AS Feb, [3] AS Mar)
) p;
