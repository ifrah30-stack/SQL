CREATE TABLE Doctors (
    DoctorID INT PRIMARY KEY,
    Name VARCHAR(100),
    Specialty VARCHAR(50)
);

CREATE TABLE Patients (
    PatientID INT PRIMARY KEY,
    Name VARCHAR(100),
    DOB DATE
);

CREATE TABLE Appointments (
    AppointmentID INT PRIMARY KEY,
    PatientID INT,
    DoctorID INT,
    AppointmentDate DATE,
    FOREIGN KEY (PatientID) REFERENCES Patients(PatientID),
    FOREIGN KEY (DoctorID) REFERENCES Doctors(DoctorID)
);

INSERT INTO Doctors VALUES
(1, 'Dr. Arjun Mehta', 'Cardiologist'),
(2, 'Dr. Sneha Kapoor', 'Dermatologist');

INSERT INTO Patients VALUES
(1, 'Rahul Sharma', '1990-05-10'),
(2, 'Ananya Verma', '1985-03-22');

INSERT INTO Appointments VALUES
(1, 1, 1, '2025-08-08'),
(2, 2, 2, '2025-08-10');

-- Get Appointments with Doctor Names
SELECT p.Name AS Patient, d.Name AS Doctor, d.Specialty, a.AppointmentDate
FROM Appointments a
JOIN Patients p ON a.PatientID = p.PatientID
JOIN Doctors d ON a.DoctorID = d.DoctorID;
