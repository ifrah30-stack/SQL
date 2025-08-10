SELECT Name, Course,
       ROW_NUMBER() OVER(PARTITION BY Course ORDER BY Age DESC) AS Rank
FROM Students;
