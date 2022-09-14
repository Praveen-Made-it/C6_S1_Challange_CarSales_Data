// write a query to create a database car_sales
CREATE DATABASE IF NOT EXISTS `CAR_SALES`

//write a query to use the database car_sales
USE `CAR_SALES`

//write a query to create the table for customer

CREATE TABLE IF NOT EXISTS `CUSTOMER_TABLE`(
CUSTOMER_ID INT NOT NULL,
FIRST_NAME VARCHAR(26) NOT NULL,
SECOND_NAME VARCHAR(20) NOT NULL,
CITY VARCHAR(25) NOT NULL,
RATING INT NOT NULL,
SALES_ID INT,
FOREIGN KEY (SALES_ID)REFERENCES SALES_PERSON(SALES_ID)
);

//write a query to create the primary key to CUSTOMER_ID

ALTER TABLE `CAR_SALES`.`CUSTOMER_TABLE`
ADD PRIMARY KEY (`CUSTOMER_ID`);

// write a query to insert the customer data into customer_table

INSERT INTO CUSTOMER_TABLE VALUES  (2001,"HOFFMAAN","ANNY","LONDON",100,1001),
                                   (2002,"GIOVANNI","JENNY","ROME",200,1003),
                                    (2003,"LIU","WILLIAM","SAN JOSE",100,1002),
                                    (2004,"HARRY","GRASS","BERLIN",300,1002),
                                    (2005,"CLEMENS","JOHN","LONDON",200,1001),
                                    (2006,"FANNY","JOHN","SAN JOSE",200,1005),
                                    (2007,"JONATHAN","BOB","ROME",300,1004);

//write a query to create the order table inside the Database

CREATE TABLE IF NOT EXISTS `ORDER`(
ORDER_ID INT NOT NULL,
AMOUNT INT NOT NULL,
ORDER_DATE VARCHAR(30)  NOT NULL,
CUSTOMER_ID INT,
FOREIGN KEY (CUSTOMER_ID)REFERENCES CUSTOMER_TABLE(CUSTOMER_ID)
);

//write a query to insert the order details into the  order table

INSERT INTO CAR_SALES.ORDER VALUES (3001,123,"01-02-2020",2001),
                                   (3003,187,"02-10-2020",2007),
                                   (3002,100,"03-07-2000",2003),
                                   (3005,201,"09-10-2011",2007),
                                   (3009,145,"10-10-2012",2002),
                                   (3007,167,"02-04-2021",2002),
                                   (3008,189,"02-03-1999",2006),
                                   (3010,100,"18-09-2000",2004);

//write a query to delete the order details of order id 3008 in the order table

DELETE FROM car_sales.ORDER WHERE ORDER_ID=3008;

//write a query to update the amount 100 to 200

UPDATE CAR_SALES.ORDER SET AMOUNT=200 WHERE ORDER_ID=3010;
UPDATE CAR_SALES.ORDER SET AMOUNT=200 WHERE ORDER_ID=3002;

//write a query to create  sales_person in the database

CREATE TABLE IF NOT EXISTS SALES_PERSON

(SALES_ID INT NOT NULL,
FIRST_NAME VARCHAR(26) NOT NULL,
CITY VARCHAR(15) NOT NULL,
COMMISSION_RATE INT NOT NULL
);

//write a query to add the data to sales_person table

INSERT INTO SALES_PERSON VALUES(1001,"JOHN","LONDON",12);
INSERT INTO SALES_PERSON VALUES(1002,"BOB","SAN_JOSE",13);
INSERT INTO SALES_PERSON VALUES(1004,"JUDITH","LONDON",11);
INSERT INTO SALES_PERSON VALUES(1007,"ROBIN","BARCELONA",15);
INSERT INTO SALES_PERSON VALUES(1003,"HARRY","NEW_YORK",10);
INSERT INTO SALES_PERSON VALUES(1005,"JAMES","LONDON",26);
INSERT INTO SALES_PERSON VALUES(1008,"CHARLES","FLORIDA",0);

//write a query to delete person with 0 commission_rate

DELETE FROM  CAR_SALES.SALES_PERSON WHERE COMMISSION_RATE=0;

//write a query to set rating as 150 from hundred on customer_table

UPDATE CAR_SALES.CUSTOMER_TABLE SET RATING=150 WHERE CUSTOMER_ID=2003;
UPDATE CAR_SALES.CUSTOMER_TABLE SET RATING=150 WHERE CUSTOMER_ID=2001;






