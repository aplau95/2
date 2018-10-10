
CREATE TABLE Albums (
AId INT PRIMARY KEY,
Title VARCHAR(255),
Year INT,
Label VARCHAR(255),
Type VARCHAR(255)
);

CREATE TABLE Band (
Id INT,
Firstname VARCHAR(255),
Lastname VARCHAR(255),
PRIMARY KEY (Id)
);

CREATE TABLE Songs (
SongId INT,
Title VARCHAR(255),
PRIMARY KEY (SongId)
);

CREATE TABLE Tracklists (
AlbumId INT,
Position INT,
SongId INT,
FOREIGN KEY (AlbumId) REFERENCES Albums(AId)
);

CREATE TABLE Instruments (
SongId INT,
BandmateId INT,
Instrument VARCHAR(255),
FOREIGN KEY (SongId) REFERENCES Songs(SongId),
FOREIGN KEY (BandmateId) REFERENCES Band(Id)
);

CREATE TABLE Performance (
SongId INT,
Bandmate INT,
StatePosition VARCHAR(255),
FOREIGN KEY (SongId) REFERENCES Songs(SongId),
FOREIGN KEY (Bandmate) REFERENCES Band(Id)
);

CREATE TABLE Vocals (
SongId INT,
Bandmate INT,
Type VARCHAR(255),
FOREIGN KEY (SongId) REFERENCES Songs(SongId),
FOREIGN KEY (Bandmate) REFERENCES Band(Id)
);
