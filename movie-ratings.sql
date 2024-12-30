CREATE TABLE Movies (
    MovieID INT PRIMARY KEY,
    Title VARCHAR(100),
    Genre VARCHAR(30)
);

CREATE TABLE Ratings (
    RatingID INT PRIMARY KEY,
    MovieID INT,
    UserID INT,
    Rating INT,
    FOREIGN KEY (MovieID) REFERENCES Movies(MovieID)
);

INSERT INTO Movies VALUES (1, 'Inception', 'Sci-Fi'), (2, 'Titanic', 'Romance');
INSERT INTO Ratings VALUES (1, 1, 101, 5), (2, 2, 102, 4);

SELECT Title, AVG(Rating) AS AverageRating FROM Movies JOIN Ratings ON Movies.MovieID = Ratings.MovieID GROUP BY Title;
