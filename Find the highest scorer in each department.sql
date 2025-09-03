SELECT department, name, marks
FROM Students s1
WHERE marks = (
    SELECT MAX(marks) FROM Students s2
    WHERE s1.department = s2.department
);
