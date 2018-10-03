CREATE TABLE Campuses(
	Id INT,
	Campus VARCHAR(255),
	Location VARCHAR(255),
	County, VARCHAR(255),
	Year, INT
);

CREATE TABLE Fees(
Campus INT,
Year INT,
Fee INT
);