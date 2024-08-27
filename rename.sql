#create a database
create database dbs;

#to show a database
show databases;

#to use a database
use dbs;

#to create a table
CREATE TABLE CUSTOMERStable (
   ID INT NOT NULL,
   NAME VARCHAR (20) NOT NULL,
   AGE INT NOT NULL,
   ADDRESS CHAR (25),
   SALARY DECIMAL (18, 2),
   PRIMARY KEY (ID)
);

#to insert a table
INSERT INTO CUSTOMERStable VALUES 
(1, 'Ramesh', 32, 'Ahmedabad', 2000.00 ),
(2, 'Khilan', 25, 'Delhi', 1500.00 ),
(3, 'Kaushik', 23, 'Kota', 2000.00 ),
(4, 'Chaitali', 25, 'Mumbai', 6500.00 ),
(5, 'Hardik', 27, 'Bhopal', 8500.00 ),
(6, 'Komal', 22, 'Hyderabad', 4500.00 ),
(7, 'Muffy', 24, 'Indore', 10000.00 );

#method 1 to rename a table name
RENAME TABLE CUSTOMERStable to BUYERS;

select * from buyers;

#method 2 to rename a table name
ALTER TABLE BUYERS RENAME TO CUSTOMERS;

select * from customers;


