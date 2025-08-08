CREATE TABLE Artists (
    ArtistID INT PRIMARY KEY,
    Name VARCHAR(100)
);

CREATE TABLE Songs (
    SongID INT PRIMARY KEY,
    Title VARCHAR(100),
    ArtistID INT,
    Duration INT, -- seconds
    FOREIGN KEY (ArtistID) REFERENCES Artists(ArtistID)
);

CREATE TABLE Users (
    UserID INT PRIMARY KEY,
    Name VARCHAR(100)
);

CREATE TABLE PlayHistory (
    PlayID INT PRIMARY KEY,
    UserID INT,
    SongID INT,
    PlayDate DATE,
    FOREIGN KEY (UserID) REFERENCES Users(UserID),
    FOREIGN KEY (SongID) REFERENCES Songs(SongID)
);

INSERT INTO Artists VALUES
(1, 'Arijit Singh'),
(2, 'Neha Kakkar');

INSERT INTO Songs VALUES
(1, 'Tum Hi Ho', 1, 240),
(2, 'Mile Ho Tum', 2, 230);

INSERT INTO Users VALUES
(1, 'Rahul'), (2, 'Sneha');

INSERT INTO PlayHistory VALUES
(1, 1, 1, '2025-08-01'),
(2, 2, 2, '2025-08-02'),
(3, 1, 2, '2025-08-03');

-- Query: Most Played Songs
SELECT s.Title, COUNT(*) AS PlayCount
FROM PlayHistory ph
JOIN Songs s ON ph.SongID = s.SongID
GROUP BY s.Title
ORDER BY PlayCount DESC;
