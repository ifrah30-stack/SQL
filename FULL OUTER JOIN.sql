SELECT s.Name, c.CourseName
FROM Students s
FULL OUTER JOIN Courses c
ON s.Course = c.CourseID;
