#to create a database
Create database db;

#to show a database
SHOW DATABASES;

#to use a database
USE db;

#to create a table
CREATE TABLE customer (
   ID          INT NOT NULL,
   NAME        VARCHAR (20) NOT NULL,
   AGE         INT NOT NULL,
   ADDRESS     CHAR (25),
   SALARY      DECIMAL (18, 2),
   PRIMARY KEY (ID)
);

#to display a table content of created table
DESC customer;

#to insert element into a table
#METHOD - 1
INSERT INTO CUSTOMER (ID,NAME,AGE,ADDRESS,SALARY)
VALUES (1, 'Ramesh', 32, 'Ahmedabad', 2000.00 );

INSERT INTO CUSTOMER (ID,NAME,AGE,ADDRESS,SALARY)
VALUES (2, 'Khilan', 25, 'Delhi', 1500.00 );

INSERT INTO CUSTOMER (ID,NAME,AGE,ADDRESS,SALARY)
VALUES (3, 'Kaushik', 23, 'Kota', 2000.00 );

#METHOD-2
INSERT INTO CUSTOMER (ID,NAME,AGE,ADDRESS,SALARY) VALUES
(4, 'Chaitali', 25, 'Mumbai', 6500.00 ),
(5, 'Hardik', 27, 'Bhopal', 8500.00 ),
(6, 'Komal', 22, 'Hyderabad', 4500.00 );

#To display all the contents in the table
select * from customer;

#Consider a situation where you will try to create a table which already exists, in such situation MySQL will throw the following error.
#ERROR 1050 (42S01): Table 'CUSTOMERS' already exists
#So to avoid such error we can use SQL command CREATE TABLE IF NOT EXISTS to create a table.
CREATE TABLE IF NOT EXISTS CUSTOMERS(
   ID          INT NOT NULL,
   NAME        VARCHAR (20) NOT NULL,
   AGE         INT NOT NULL,
   ADDRESS     CHAR (25),
   SALARY      DECIMAL (18, 2),
   PRIMARY KEY (ID)
);

#Creating Table from an Existing Table
CREATE TABLE SALARY AS
SELECT ID, SALARY
FROM CUSTOMER;

#to see the created table content
desc salary;

#to display a details without inserting it
select * from salary;