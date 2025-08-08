CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    Name VARCHAR(100)
);

CREATE TABLE Accounts (
    AccountID INT PRIMARY KEY,
    CustomerID INT,
    Balance DECIMAL(15,2),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

CREATE TABLE Transactions (
    TransactionID INT PRIMARY KEY,
    AccountID INT,
    Amount DECIMAL(10,2),
    TransactionType VARCHAR(10), -- 'Credit' or 'Debit'
    TransactionDate DATE,
    FOREIGN KEY (AccountID) REFERENCES Accounts(AccountID)
);

INSERT INTO Customers VALUES
(1, 'Amit Sharma'),
(2, 'Priya Mehta');

INSERT INTO Accounts VALUES
(1, 1, 50000.00),
(2, 2, 30000.00);

INSERT INTO Transactions VALUES
(1, 1, 5000.00, 'Credit', '2025-08-01'),
(2, 1, 2000.00, 'Debit', '2025-08-03'),
(3, 2, 10000.00, 'Credit', '2025-08-02');

-- Query: Account Balance After Transactions
SELECT a.AccountID, c.Name,
       a.Balance + SUM(CASE WHEN t.TransactionType='Credit' THEN t.Amount ELSE -t.Amount END) AS CurrentBalance
FROM Accounts a
JOIN Customers c ON a.CustomerID = c.CustomerID
LEFT JOIN Transactions t ON a.AccountID = t.AccountID
GROUP BY a.AccountID, c.Name;
