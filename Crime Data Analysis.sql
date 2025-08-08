CREATE TABLE Cases (
    CaseID INT PRIMARY KEY,
    CaseType VARCHAR(50),
    Location VARCHAR(50),
    Status VARCHAR(20)
);

CREATE TABLE Suspects (
    SuspectID INT PRIMARY KEY,
    Name VARCHAR(100),
    CaseID INT,
    FOREIGN KEY (CaseID) REFERENCES Cases(CaseID)
);

CREATE TABLE Evidence (
    EvidenceID INT PRIMARY KEY,
    CaseID INT,
    Description TEXT,
    FOREIGN KEY (CaseID) REFERENCES Cases(CaseID)
);

INSERT INTO Cases VALUES
(1, 'Robbery', 'Delhi', 'Open'),
(2, 'Fraud', 'Mumbai', 'Closed');

INSERT INTO Suspects VALUES
(1, 'Ravi Kumar', 1),
(2, 'Anil Sharma', 2);

INSERT INTO Evidence VALUES
(1, 1, 'CCTV footage'),
(2, 2, 'Bank transaction records');

-- Query: Open Cases with Suspects
SELECT c.CaseType, c.Location, s.Name AS Suspect
FROM Cases c
JOIN Suspects s ON c.CaseID = s.CaseID
WHERE c.Status = 'Open';
