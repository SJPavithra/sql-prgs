CREATE TABLE Attendance (
    StudentID INT,
    Date DATE,
    Present BOOLEAN,
    PRIMARY KEY (StudentID, Date)
);

INSERT INTO Attendance VALUES (1, '2024-12-20', TRUE), (2, '2024-12-20', FALSE);

SELECT * FROM Attendance WHERE Present = TRUE;
