SELECT s.Name
FROM Students s
LEFT JOIN Courses c ON s.StudentID = c.StudentID
WHERE c.StudentID IS NULL;
