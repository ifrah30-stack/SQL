SELECT s.name, d.dept_name
FROM Students s
JOIN Departments d
ON s.department = d.dept_name;
