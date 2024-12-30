CREATE TABLE Rooms (
    RoomID INT PRIMARY KEY,
    Type VARCHAR(30),
    Price DECIMAL(10, 2)
);

CREATE TABLE Bookings (
    BookingID INT PRIMARY KEY,
    RoomID INT,
    CustomerID INT,
    CheckInDate DATE,
    CheckOutDate DATE,
    FOREIGN KEY (RoomID) REFERENCES Rooms(RoomID)
);

INSERT INTO Rooms VALUES (1, 'Single', 100.00), (2, 'Double', 200.00);
INSERT INTO Bookings VALUES (1, 1, 1, '2024-12-20', '2024-12-22');

SELECT * FROM Bookings WHERE CheckInDate <= '2024-12-21';
