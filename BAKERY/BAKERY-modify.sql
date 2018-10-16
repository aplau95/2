Delete FROM Goods Where Food != 'Cake';
UPDATE Goods SET Price = Price * 1.2 WHERE Flavor = 'Chocolate';
UPDATE Goods SET Price = Price * 1.2 WHERE Flavor = 'Opera';
UPDATE Goods SET Price = Price - 2 WHERE Flavor = 'Lemon';
UPDATE Goods SET Price = Price - 2 WHERE Flavor = 'Napoleon';
UPDATE Goods SET Price = Price * .90 WHERE Flavor != 'Napoleon' AND Flavor != 'Lemon' AND Flavor != 'Opera' AND Flavor != 'Chocolate';
SELECT * FROM Goods ORDER BY ID;