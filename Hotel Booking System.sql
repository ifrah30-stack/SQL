-- Tables
CREATE TABLE Hotels (
    HotelID INT PRIMARY KEY,
    HotelName VARCHAR(100),
    Location VARCHAR(50)
);

CREATE TABLE Rooms (
    RoomID INT PRIMARY KEY,
    HotelID INT,
    RoomType VARCHAR(50),
    Price DECIMAL(10,2),
    FOREIGN KEY (HotelID) REFERENCES Hotels(HotelID)
);

CREATE TABLE Guests (
    GuestID INT PRIMARY KEY,
    Name VARCHAR(100),
    Phone VARCHAR(15)
);

CREATE TABLE Bookings (
    BookingID INT PRIMARY KEY,
    GuestID INT,
    RoomID INT,
    CheckIn DATE,
    CheckOut DATE,
    FOREIGN KEY (GuestID) REFERENCES Guests(GuestID),
    FOREIGN KEY (RoomID) REFERENCES Rooms(RoomID)
);

-- Sample Data
INSERT INTO Hotels VALUES
(1, 'Grand Palace', 'Delhi'),
(2, 'Ocean View', 'Goa');

INSERT INTO Rooms VALUES
(1, 1, 'Deluxe', 3500.00),
(2, 1, 'Suite', 5000.00),
(3, 2, 'Standard', 2500.00);

INSERT INTO Guests VALUES
(1, 'Amit Sharma', '9876543210'),
(2, 'Riya Gupta', '9123456780');

INSERT INTO Bookings VALUES
(1, 1, 1, '2025-08-01', '2025-08-05'),
(2, 2, 3, '2025-08-03', '2025-08-06');

-- Query: Total Revenue per Hotel
SELECT h.HotelName, SUM(r.Price * (DATEDIFF(b.CheckOut, b.CheckIn))) AS TotalRevenue
FROM Bookings b
JOIN Rooms r ON b.RoomID = r.RoomID
JOIN Hotels h ON r.HotelID = h.HotelID
GROUP BY h.HotelName;
