CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    Name VARCHAR(50)
);

CREATE TABLE Accounts (
    AccountID INT PRIMARY KEY,
    CustomerID INT,
    Balance DECIMAL(10, 2),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

INSERT INTO Customers VALUES (1, 'Alice'), (2, 'Bob');
INSERT INTO Accounts VALUES (101, 1, 1000.00), (102, 2, 2000.00);

UPDATE Accounts SET Balance = Balance - 200 WHERE AccountID = 101;

SELECT * FROM Accounts WHERE Balance > 1000;
