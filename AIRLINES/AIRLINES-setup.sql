CREATE TABLE Airlines(
Id INT,
Airline VARCHAR(255),
Abbreviation VARCHAR(255),
Country VARCHAR(255),
PRIMARY KEY (Id)
);

CREATE TABLE Airports(
City VARCHAR(255),
AirportCode CHAR(3),
AirportName VARCHAR(255),
Country VARCHAR(255),
Abbrev VARCHAR(255)
PRIMARY KEY (AirportCode)
);

CREATE TABLE Flights(
Airline INT,
FlightNo INT,
SourceAirport CHAR(3),
DestAirport CHAR(3)
PRIMARY KEY (Airline, FightNo),
FOREIGN KEY (SourceAirport) REFERENCES Airports(AirportCode),
FOREIGN KEY (DestAirport) REFERENCES Airports(AirportCode)
);

