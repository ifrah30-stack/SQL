CREATE TABLE Members (
    MemberID INT PRIMARY KEY,
    Name VARCHAR(100),
    JoinDate DATE
);

CREATE TABLE Trainers (
    TrainerID INT PRIMARY KEY,
    Name VARCHAR(100),
    Specialty VARCHAR(50)
);

CREATE TABLE MembershipPlans (
    PlanID INT PRIMARY KEY,
    PlanName VARCHAR(50),
    Price DECIMAL(10,2)
);

CREATE TABLE MemberPlans (
    MemberID INT,
    PlanID INT,
    StartDate DATE,
    FOREIGN KEY (MemberID) REFERENCES Members(MemberID),
    FOREIGN KEY (PlanID) REFERENCES MembershipPlans(PlanID)
);

INSERT INTO Members VALUES
(1, 'Karan Singh', '2025-07-01'),
(2, 'Ritika Jain', '2025-07-15');

INSERT INTO Trainers VALUES
(1, 'Ajay Sharma', 'Weight Training'),
(2, 'Meera Patel', 'Yoga');

INSERT INTO MembershipPlans VALUES
(1, 'Basic', 1500.00),
(2, 'Premium', 3000.00);

INSERT INTO MemberPlans VALUES
(1, 2, '2025-07-01'),
(2, 1, '2025-07-15');

-- List Members and Their Plans
SELECT m.Name, mp.StartDate, p.PlanName, p.Price
FROM MemberPlans mp
JOIN Members m ON mp.MemberID = m.MemberID
JOIN MembershipPlans p ON mp.PlanID = p.PlanID;
