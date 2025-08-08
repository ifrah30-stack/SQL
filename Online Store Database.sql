CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    Name VARCHAR(100),
    Email VARCHAR(100)
);

CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    Price DECIMAL(10,2)
);

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

CREATE TABLE OrderDetails (
    OrderDetailID INT PRIMARY KEY,
    OrderID INT,
    ProductID INT,
    Quantity INT,
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);

INSERT INTO Customers VALUES
(1, 'Amit Sharma', 'amit@example.com'),
(2, 'Priya Mehta', 'priya@example.com');

INSERT INTO Products VALUES
(1, 'Laptop', 75000.00),
(2, 'Mouse', 1200.00),
(3, 'Keyboard', 2500.00);

INSERT INTO Orders VALUES
(1, 1, '2025-08-05'),
(2, 2, '2025-08-06');

INSERT INTO OrderDetails VALUES
(1, 1, 1, 1),
(2, 1, 2, 2),
(3, 2, 3, 1);

-- Query Total Order Amount
SELECT o.OrderID, c.Name, SUM(p.Price * od.Quantity) AS TotalAmount
FROM Orders o
JOIN Customers c ON o.CustomerID = c.CustomerID
JOIN OrderDetails od ON o.OrderID = od.OrderID
JOIN Products p ON od.ProductID = p.ProductID
GROUP BY o.OrderID, c.Name;
