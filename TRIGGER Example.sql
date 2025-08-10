CREATE TRIGGER log_student_insert
AFTER INSERT ON Students
FOR EACH ROW
INSERT INTO Student_Log (StudentID, Action, ActionTime)
VALUES (NEW.StudentID, 'INSERT', NOW());
