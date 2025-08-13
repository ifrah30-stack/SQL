SELECT a.StudentID, a.Marks,
       (SELECT SUM(b.Marks) 
        FROM Results b 
        WHERE b.StudentID <= a.StudentID) AS RunningTotal
FROM Results a;
