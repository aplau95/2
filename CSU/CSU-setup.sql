CREATE TABLE Campuses(
	Id INT,
	Campus VARCHAR(255),
	Location VARCHAR(255),
	County VARCHAR(255),
	Year INT,
	PRIMARY KEY (Id)
);

CREATE TABLE Fees(
	Campus INT,
	Year INT,
	Fee INT,
	FOREIGN KEY (Campus) REFERENCES Campuses(Id)
);

CREATE TABLE Degree(
	Year INT,
	Campus INT,
	Degrees INT,
	FOREIGN KEY (Campus) REFERENCES Campuses(Id)
);

CREATE TABLE Disciplines(
	Id INT,
	Name VARCHAR(255),
	PRIMARY KEY (Id)
);

CREATE TABLE Enrollments(
	Campus INT,
	Year INT,
	TotalEnrollment_AY INT,
	FTE_AY INT,
	FOREIGN KEY (Campus) REFERENCES Campuses(Id)
);

CREATE TABLE Faculty(
	Campus INT,
	Year INT,
	Faculty DECIMAL(5,1),
	FOREIGN KEY (Campus) REFERENCES Campuses(Id)
);

CREATE TABLE DisciplineEnrollments(
	Campus INT,
	Discipline INT,
	Year INT,
	Undergraduate INT,
	Graduate INT,
	FOREIGN KEY (Campus) REFERENCES Campuses(Id),
	FOREIGN KEY (Discipline) REFERENCES Disciplines(Id)
)