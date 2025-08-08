CREATE TABLE Flights (
    FlightID INT PRIMARY KEY,
    FlightNumber VARCHAR(20),
    Origin VARCHAR(50),
    Destination VARCHAR(50),
    DepartureTime DATETIME
);

CREATE TABLE Passengers (
    PassengerID INT PRIMARY KEY,
    Name VARCHAR(100)
);

CREATE TABLE Tickets (
    TicketID INT PRIMARY KEY,
    FlightID INT,
    PassengerID INT,
    SeatNumber VARCHAR(5),
    Price DECIMAL(10,2),
    FOREIGN KEY (FlightID) REFERENCES Flights(FlightID),
    FOREIGN KEY (PassengerID) REFERENCES Passengers(PassengerID)
);

INSERT INTO Flights VALUES
(1, 'AI101', 'Delhi', 'Mumbai', '2025-08-10 09:00:00'),
(2, 'AI202', 'Mumbai', 'Goa', '2025-08-12 14:30:00');

INSERT INTO Passengers VALUES
(1, 'Karan Singh'), (2, 'Anjali Mehta');

INSERT INTO Tickets VALUES
(1, 1, 1, '12A', 4500.00),
(2, 2, 2, '14B', 3200.00);

-- Query: Passenger Flight Details
SELECT p.Name, f.FlightNumber, f.Origin, f.Destination, t.SeatNumber
FROM Tickets t
JOIN Passengers p ON t.PassengerID = p.PassengerID
JOIN Flights f ON t.FlightID = f.FlightID;
