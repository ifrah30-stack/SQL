WITH YoungStudents AS (
    SELECT * FROM Students
    WHERE Age < 21
)
SELECT Name, Course FROM YoungStudents;
