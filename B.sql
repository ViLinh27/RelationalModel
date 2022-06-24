--LINH NGUYEN
Create Table Location (

       latitude float, 

       longitude float,

       name varchar(50)

);


/*
    response i)
        An appropriate primary key for this relation would be longitude and latitude together to keep each data piece unique(individually latitute would repeat, as would longitude).
*/


--response ii)
        INSERT INTO Location
            VALUES(41.881832, -87.623177, 'Chicago');
        INSERT INTO Location
            VALUES(42.881832, -87.623177,'Chicago');
        INSERT INTO Location
            VALUES(41.881832, -86.623177,'Chicago');


/*
    response iii)
        No violation because none of the values given violate any constraint because no constraint on the attributes were given. Plus when the insert statements are declared, each value is declared
        in the respective order according to the attributes' order in the create statement.
*/

