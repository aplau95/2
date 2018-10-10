CREATE TABLE CarNames 
(
    CarID int,
    Model varchar(255),
    Make varchar(255),
    primary key(CarID)
);

CREATE TABLE CarMakers 
(
    MakerID int primary key,
    Maker varchar(255),
    FullName varchar(255),
    Country varchar(255)
);

CREATE TABLE CarsData
(
    ID int primary key,
    MPG int,
    Cylinders int,
    Edispl int,
    Horsepower int,
    Weight int,
    Accelerate float,
    Year int
);

CREATE TABLE Continent
(
    ContID int primary key,
    Continent varchar(255)
);

CREATE TABLE Country
(
    CountryId int primary key,
    CountryName varchar(255),
    Continent varchar(255)
);

CREATE TABLE ModelList
(
    ModelId int primary key,
    Maker varchar(255),
    Model varchar(255)
);