SELECT Name,
       CASE 
           WHEN Age < 18 THEN 'Minor'
           WHEN Age BETWEEN 18 AND 21 THEN 'Young Adult'
           ELSE 'Adult'
       END AS Category
FROM Students;
