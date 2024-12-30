CREATE TABLE Authors (
    AuthorID INT PRIMARY KEY,
    Name VARCHAR(50)
);

CREATE TABLE Books (
    BookID INT PRIMARY KEY,
    Title VARCHAR(100),
    AuthorID INT,
    IsAvailable BOOLEAN,
    FOREIGN KEY (AuthorID) REFERENCES Authors(AuthorID)
);

INSERT INTO Authors VALUES (1, 'J.K. Rowling'), (2, 'George Orwell');
INSERT INTO Books VALUES (1, 'Harry Potter', 1, TRUE), (2, '1984', 2, FALSE);

SELECT Title, Name AS Author FROM Books JOIN Authors ON Books.AuthorID = Authors.AuthorID WHERE IsAvailable = TRUE;
