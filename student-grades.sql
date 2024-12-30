CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    Name VARCHAR(50)
);

CREATE TABLE Grades (
    StudentID INT,
    Subject VARCHAR(30),
    Grade INT,
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID)
);

INSERT INTO Students VALUES (1, 'John'), (2, 'Jane');
INSERT INTO Grades VALUES (1, 'Math', 85), (1, 'Science', 90), (2, 'Math', 78);

SELECT Students.Name, AVG(Grades.Grade) AS AverageGrade
FROM Students
JOIN Grades ON Students.StudentID = Grades.StudentID
GROUP BY Students.Name;
