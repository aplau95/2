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

CREATE TABLE Degree(
	Year INT,
	CAMPUS INT,
	DEGREES INT
);

CREATE TABLE DisciplineEnrollments(
	Campus INT,
	Discipline INT,
	Year INT,
	Undergraduate INT,
	Graduate INT	
)

CREATE TABLE Discipline(
	Id INT PRIMARY KEY,
	Name VARCHAR(255)
);

CREATE TABLE Enrollments(
	Campus INT,
	Year INT,
	Total INT,
	Enrollment_AY INT,
	FTE_AY INT
);

CREATE TABLE Faculty(
	Campus INT,
	Year INT,
	Faculty FLOAT
);