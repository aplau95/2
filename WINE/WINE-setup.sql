CREATE TABLE Appellations (
    No INT,
    Appellation VARCHAR(255),
    County VARCHAR(255),
    Area VARCHAR(255),
    isAVA VARCHAR(255),
    UNIQUE (Appellation)
);

CREATE TABLE Grapes (
    ID INT,
    Grape VARCHAR(255),
    Color VARCHAR(255),
    PRIMARY KEY (ID),
    UNIQUE (Grape)
);

CREATE TABLE Wine (
    No Int,
    Grape VARCHAR(255),
    Winery VARCHAR(255),
    Appellation VARCHAR(255),
    State VARCHAR(255),
    Name VARCHAR(255),
    Year INT, 
    Price INT,
    Score INT,
    Cases INT,
    Drink VARCHAR(255),
    PRIMARY KEY (No),
    FOREIGN KEY (Grape) REFERENCES Grapes(Grape),
    FOREIGN KEY (Appellation) REFERENCES Appellations(Appellation)
);