--LINH NGUYEN
DROP TABLE Cars;

CREATE TABLE Cars (

    CarID number(5) primary key,
    
    VIN number(10) CONSTRAINT UniqueVIN UNIQUE,
    
    Color char(15),
    
    Brand varchar2(25),
    
    Make varchar(20),
    
    YearofMake number(4)

);

DELETE FROM Cars;
--table data
INSERT INTO Cars
    VALUES(123, 3456783412, 'Red', 'Toyota', 'Camry', 2010);
INSERT INTO Cars 
    VALUES (234, 2876309034, 'Blue', 'Toyota', 'Corolla', 2003);
    
--FIND CONSTRAINT NAME
--SELECT CONSTRAINT_NAME FROM USER_CONSTRAINTS WHERE TABLE_NAME='CARS' AND CONSTRAINT_TYPE='U';
    
--alter here I guess
ALTER TABLE Cars
    DROP CONSTRAINT UniqueVIN;

--student data--SUPPOSED TO RESULT IN ERROR (constraint violation)
INSERT INTO Cars 
    VALUES (235, 3456783412, 'Silver', 'Toyota', 'Camry', 2010);