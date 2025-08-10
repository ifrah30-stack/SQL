SELECT * FROM Students
WHERE Course IN (
    SELECT CourseName FROM Courses
    WHERE Duration > 6
);
