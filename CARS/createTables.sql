CREATE TABLE CarNames 
(
    CarID int,
    Model varchar(255),
    Make varchar(255)
);

CREATE TABLE CarMakers 
(
    MakerID int,
    Maker varchar(255),
    FullName varchar(255),
    Country varchar(255)
);

CREATE TABLE CarsData
(
    ID int,
    MPG int,
    Cylinders int
    Edispl int,
    Horsepower int,
    Weight int,
    Accelerate float,
    Yr int
);

CREATE TABLE Continent
(
    ContID int,
    Continent varchar(255)
);

CREATE TABLE Country
(
    CountryId int,
    CountryName varchar(255),
    Continent varchar(255)
);

CREATE TABLE ModelList
(
    ModelId int,
    Maker varchar(255),
    Model varchar(255)
);