CREATE TABLE Candidates (
    CandidateID INT PRIMARY KEY,
    Name VARCHAR(50),
    Party VARCHAR(30)
);

CREATE TABLE Votes (
    VoteID INT PRIMARY KEY,
    CandidateID INT,
    FOREIGN KEY (CandidateID) REFERENCES Candidates(CandidateID)
);

INSERT INTO Candidates VALUES (1, 'Alice', 'Party A'), (2, 'Bob', 'Party B');
INSERT INTO Votes VALUES (1, 1), (2, 2), (3, 1);

SELECT Name, COUNT(VoteID) AS TotalVotes FROM Candidates JOIN Votes ON Candidates.CandidateID = Votes.CandidateID GROUP BY Name;
