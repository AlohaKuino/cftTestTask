CREATE TABLE firstTable(
 	PersonID integer primary key, 
    FirstName varchar(20), 
    LastName varchar(20)
);
    
CREATE TABLE secondTable(
  AddressID integer primary key,
  PersonID integer, 
  Region varchar(30), 
  City varchar(20)
);

INSERT INTO firstTable (PersonID, FirstName, LastName)
	VALUES (1, 'Петр', 'Иванов');
INSERT INTO firstTable (PersonID, FirstName, LastName)
	VALUES (2, 'Алексей', 'Смирнов');
INSERT INTO firstTable (PersonID, FirstName, LastName) 
	VALUES (3, 'Райан', 'Гослинг');

INSERT INTO secondTable (AddressID, PersonID, Region, City)
	VALUES (1, 2, 'Новосибирская Область', 'Новосибирск');
INSERT INTO secondTable (AddressID, PersonID, Region, City)
	VALUES (2, 3, 'Новосибирская Область', 'Бердск');
    
SELECT 
    persons.PersonID,
    COALESCE(addresses.City, 'город не указан') AS City
FROM 
    firstTable persons
LEFT JOIN 
    secondTable addresses
ON 
    persons.PersonID = addresses.PersonID;
