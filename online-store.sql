CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    Name VARCHAR(50),
    Category VARCHAR(30),
    Price DECIMAL(10, 2),
    Stock INT
);

INSERT INTO Products VALUES (1, 'Laptop', 'Electronics', 1000.00, 10), (2, 'Chair', 'Furniture', 50.00, 20);

UPDATE Products SET Stock = Stock - 1 WHERE ProductID = 1;

SELECT * FROM Products WHERE Stock > 0;
