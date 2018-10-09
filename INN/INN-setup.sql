CREATE TABLE Rooms (
RoomId CHAR(3),
roomName VARCHAR(255),
beds INT,
bedType VARCHAR(255),
maxOccupancy INT,
basePrice INT,
decor VARCHAR(255)
);

CREATE TABLE Reservations (
Code INT,
RoomId CHAR(3),
CheckIn DATE,
CheckOut DATE,
Rate DECIMAL(6,2),
LastName VARCHAR(255),
FirstName VARCHAR(255),
Adults INT,
Kids INT
);