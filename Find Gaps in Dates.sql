SELECT 
    DATE_ADD(prev.OrderDate, INTERVAL 1 DAY) AS GapStart,
    DATE_SUB(next.OrderDate, INTERVAL 1 DAY) AS GapEnd
FROM Orders prev
JOIN Orders next ON next.OrderDate > prev.OrderDate
WHERE DATEDIFF(next.OrderDate, prev.OrderDate) > 1;
