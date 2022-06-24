--LINH NGUYEN
--create tables
DROP TABLE requests;
DROP TABLE products;
DROP TABLE orders;
DROP TABLE customers;

CREATE TABLE customers(
    customerID NUMBER(3),
    name VARCHAR(25),
    address VARCHAR(50),
    
    PRIMARY KEY (customerID)
);

CREATE TABLE orders(
    orderID NUMBER(5),
    orderDate DATE,
    customerID NUMBER(3),
    
    PRIMARY KEY (orderID),
    FOREIGN KEY (customerID) REFERENCES customers(customerID)
);

CREATE TABLE products(
    productID NUMBER(2),
    description VARCHAR(28),
    finish VARCHAR(10),
    price FLOAT CHECK (price>=0 AND price <=899.99),/*constraints*/
    
    PRIMARY KEY (productID)
);

CREATE TABLE requests(
    orderID NUMBER(5),
    productID NUMBER(2),
    quantity NUMBER CHECK (quantity >=1 AND quantity<=50) ,/*constraints*/
    
    PRIMARY KEY (orderID, productID),
    FOREIGN KEY(orderID) REFERENCES orders(orderID),--more precise but already a pk in other tabe
    FOREIGN KEY(productID) REFERENCES products(productID)
);

--INSERT DATA
DELETE FROM requests;
DELETE FROM orders;
DELETE FROM products;
DELETE FROM customers;

INSERT INTO customers
    VALUES(2,'CASUAL FURNITURE','PLANO, TX');
INSERT INTO customers
    VALUES(6, 'MOUNTAIN GALLERY', 'BOULDER, CO');
    
INSERT INTO products
    VALUES(10, 'WRITING DESK','OAK', 425);
INSERT INTO products
    VALUES(30,'DINING TABLE','ASH',NULL);
INSERT INTO products
    VALUES(40,'ENTERTAINMENT CENTER','MAPLE',650);
INSERT INTO products
    VALUES(70,'CHILDRENS DRESSER','PINE',300);
    
INSERT INTO orders
    VALUES(1006,TO_DATE('24-MAR-2010','DD-Mon-YY'),2);
INSERT INTO orders
    VALUES(1007,TO_DATE('25-MAR-2010','DD-Mon-YY'),6);
INSERT INTO orders
    VALUES(1008,TO_DATE('25-MAR-2010','DD-Mon-YY'),6);
INSERT INTO orders
    VALUES(1009,TO_DATE('26-MAR-2010','DD-Mon-YY'),2);
    
INSERT INTO requests
    VALUES(1006,10,4);
INSERT INTO requests
    VALUES(1006,30,2);
INSERT INTO requests
    VALUES(1006,40,1);
INSERT INTO requests
    VALUES(1007,40,3);
INSERT INTO requests
    VALUES(1007,70,2);
INSERT INTO requests
    VALUES(1008,70,1);
INSERT INTO requests
    VALUES(1009,10,2);
INSERT INTO requests
    VALUES(1009,40,1);
    
--DISPLAY TABLES
SELECT * FROM customers;
SELECT * FROM orders;
SELECT * FROM products;
SELECT * FROM requests;