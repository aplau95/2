ALTER TABLE Students ADD COLUMN GPA Decimal(3,2);
DELETE FROM Students Where Grade != 5 AND Grade != 6;
INSERT INTO Teachers VALUES('GAWAIN', 'AP-MAWR', 120);
UPDATE Students Set Classroom = 120 
WHERE FirstName = 'JEFFRY' AND LastName = 'FLACHS' 
OR FirstName = 'TAWANNA' AND LastName = 'HUANG'
OR FirstName = 'ELVIRA' AND LastName = 'JAGNEAUX';
UPDATE Students Set GPA = 3.25 
WHERE Grade = 6;
UPDATE Students Set GPA = 2.9 
WHERE Grade = 5 AND Classroom = 109;
UPDATE Students Set GPA = 3.5 
WHERE Grade = 5 AND Classroom = 120;
UPDATE Students Set GPA = 4.0 
WHERE FirstName = 'CHET' AND LastName = 'MACIAG';
UPDATE Students Set GPA = GPA + .3 
WHERE FirstName = 'AL' AND LastName = 'GERSTEIN';
UPDATE Students Set GPA = GPA * 1.1 
WHERE FirstName = 'TAWANNA' AND LastName = 'HUANG'
OR FirstName = 'ELVIRA' AND LastName = 'JAGNEAUX';
SELECT * FROM Students ORDER BY GPA, Grade, LastName;
SELECT * FROM Teachers;