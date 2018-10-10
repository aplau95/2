CREATE TABLE Customers (
Id INT,
LastName VARCHAR(255),
FirstName VARCHAR(255),
PRIMARY KEY (ID)
);

CREATE TABLE Goods (
Id VARCHAR(255),
Flavor VARCHAR(255),
Food VARCHAR(255),
Price DECIMAL(5, 2),
PRIMARY KEY (ID)
);

CREATE TABLE Items (
Receipt INT,
Ordinal INT,
Item VARCHAR(255),
FOREIGN KEY (Receipt) REFERENCES Receipts(ReceiptNumber),
FOREIGN KEY (Item) REFERENCES Goods(Id)
);

CREATE TABLE Receipts (
ReceiptNumber INT,
_Date DATE,
CustomerId INT,
PRIMARY KEY (ReceiptNumber),
FOREIGN KEY (CustomerId) REFERENCES Customers(Id)
);