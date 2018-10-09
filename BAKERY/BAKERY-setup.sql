CREATE TABLE Customers (
Id INT,
LastName VARCHAR(255),
FirstName VARCHAR(255)
);

CREATE TABLE Goods (
Id INT,
Flavor VARCHAR(255),
Food VARCHAR(255),
Price DECIMAL(5, 2)
);

CREATE TABLE Items (
Receipt INT,
Ordinal INT,
Item VARCHAR(255)
);

CREATE TABLE Receipts (
ReceiptNumber INT,
_Date DATE,
CustomerId INT
);