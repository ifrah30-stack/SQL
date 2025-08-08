CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    Name VARCHAR(100)
);

CREATE TABLE Subjects (
    SubjectID INT PRIMARY KEY,
    SubjectName VARCHAR(50)
);

CREATE TABLE Marks (
    MarkID INT PRIMARY KEY,
    StudentID INT,
    SubjectID INT,
    MarksObtained INT,
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
    FOREIGN KEY (SubjectID) REFERENCES Subjects(SubjectID)
);

INSERT INTO Students VALUES
(1, 'Ravi Kumar'), (2, 'Anjali Gupta');

INSERT INTO Subjects VALUES
(1, 'Math'), (2, 'Science'), (3, 'History');

INSERT INTO Marks VALUES
(1, 1, 1, 85),
(2, 1, 2, 78),
(3, 1, 3, 90),
(4, 2, 1, 92),
(5, 2, 2, 88),
(6, 2, 3, 80);

-- Calculate Average Marks
SELECT s.Name, AVG(m.MarksObtained) AS AverageMarks
FROM Students s
JOIN Marks m ON s.StudentID = m.StudentID
GROUP BY s.Name;
