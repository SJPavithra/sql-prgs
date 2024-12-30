CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    Name VARCHAR(50),
    Department VARCHAR(30),
    Salary DECIMAL(10, 2)
);

INSERT INTO Employees VALUES (1, 'Alice', 'HR', 50000), (2, 'Bob', 'IT', 70000);

SELECT * FROM Employees WHERE Department = 'IT';
