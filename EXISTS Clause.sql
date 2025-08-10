SELECT Name FROM Students s
WHERE EXISTS (
    SELECT 1 FROM Courses c
    WHERE c.CourseName = s.Course
);
