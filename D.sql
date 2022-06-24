--LINH NGUYEN
DROP TABLE Emps;

CREATE TABLE Emps(
    empID NUMBER(6),
    ssNo NUMBER(9),
    name VARCHAR(20),
    mgrID NUMBER(6) REFERENCES Emps,--goes back into table to look for pk
    
    PRIMARY KEY (empID)
    --THIS ALSO WORKS: FOREIGN KEY mgdID REFERENCES Emps(empID)
);

--"ALL MANAGERS ARE EMPLOYEES" = self referential--self ref only works with pk
--create manager as employee without manager
INSERT INTO Emps 
    VALUES(123456, 123456789, 'Bob',NULL);
--create employee with manager prev created
INSERT INTO Emps
    VALUES(654321,987654321,'Ben',123456);
--negative test : try manager that has not been created as employee first
INSERT INTO Emps
    VALUES(246812,444444444,'Bill',222222);