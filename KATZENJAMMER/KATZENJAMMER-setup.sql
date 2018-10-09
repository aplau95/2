CREATE TABLE Albums (
AId INT,
Title VARCHAR(255),
Year INT,
Label VARCHAR(255),
Type VARCHAR(255)
);

CREATE TABLE Band (
Id INT,
Firstname VARCHAR(255),
Lastname VARCHAR(255)
);

CREATE TABLE Instruments (
SongId INT,
BandmateId INT,
Instrument VARCHAR(255)
);

CREATE TABLE Performance (
SongId INT,
Bandmate INT,
StatePosition VARCHAR(255)
);

CREATE TABLE Songs (
SongId INT,
Title VARCHAR(255),
);

CREATE TABLE Tracklists (
AlbumId INT,
Position INT,
SongId INT
);

CREATE TABLE Vocals (
SongId INT,
Bandmate INT,
Type VARCHAR(255)
);
