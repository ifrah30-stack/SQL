SELECT Name, COUNT(*) AS Count
FROM Students
GROUP BY Name
HAVING COUNT(*) > 1;
