CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    Status VARCHAR(20),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

INSERT INTO Orders VALUES (1, 1, '2024-12-20', 'Shipped'), (2, 2, '2024-12-21', 'Pending');

SELECT * FROM Orders WHERE Status = 'Shipped';
