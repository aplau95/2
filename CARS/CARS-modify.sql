DELETE FROM CarsData WHERE NOT (1979 <= Year AND Year <= 1980 AND MPG >= 20) 
AND NOT (MPG >= 26 AND MPG IS NOT NULL AND Horsepower > 110 AND Horsepower IS NOT NULL)
AND NOT (Cylinders = 8 AND Accelerate < 10);  
SELECT * FROM CarsData ORDER BY Year, ID;
ALTER TABLE CarsData DROP Edispl, DROP Horsepower, DROP Weight;
DELETE FROM CarsData WHERE Cylinders <= 5;
SELECT * FROM CarsData ORDER BY Year, ID;