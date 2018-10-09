

CREATE TABLE CarMakers 
(
    MakerID int,
    Maker varchar(255),
    FullName varchar(255),
    Country varchar(255)
);


LOAD DATA INFILE 'car-makers.csv' INTO TABLE CarMakers
FIELDS TERMINATED BY '\n' 
ENCLOSED BY ','
IGNORE 1 LINES; 