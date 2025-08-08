-- Create Tables
CREATE TABLE Authors (
    AuthorID INT PRIMARY KEY,
    Name VARCHAR(100)
);

CREATE TABLE Books (
    BookID INT PRIMARY KEY,
    Title VARCHAR(200),
    AuthorID INT,
    Genre VARCHAR(50),
    YearPublished INT,
    FOREIGN KEY (AuthorID) REFERENCES Authors(AuthorID)
);

CREATE TABLE Borrowers (
    BorrowerID INT PRIMARY KEY,
    Name VARCHAR(100),
    Phone VARCHAR(15)
);

CREATE TABLE Loans (
    LoanID INT PRIMARY KEY,
    BookID INT,
    BorrowerID INT,
    LoanDate DATE,
    ReturnDate DATE,
    FOREIGN KEY (BookID) REFERENCES Books(BookID),
    FOREIGN KEY (BorrowerID) REFERENCES Borrowers(BorrowerID)
);

-- Insert Sample Data
INSERT INTO Authors VALUES
(1, 'J.K. Rowling'), (2, 'George Orwell'), (3, 'Agatha Christie');

INSERT INTO Books VALUES
(1, 'Harry Potter', 1, 'Fantasy', 1997),
(2, '1984', 2, 'Dystopian', 1949),
(3, 'Murder on the Orient Express', 3, 'Mystery', 1934);

INSERT INTO Borrowers VALUES
(1, 'Amit Sharma', '9876543210'),
(2, 'Priya Mehta', '9123456780');

INSERT INTO Loans VALUES
(1, 1, 1, '2025-08-01', NULL),
(2, 2, 2, '2025-07-28', '2025-08-05');

-- Example Queries
SELECT * FROM Books;
SELECT Borrowers.Name, Books.Title, Loans.LoanDate
FROM Loans
JOIN Borrowers ON Loans.BorrowerID = Borrowers.BorrowerID
JOIN Books ON Loans.BookID = Books.BookID
WHERE Loans.ReturnDate IS NULL;
