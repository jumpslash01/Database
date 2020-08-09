/* RELATIONAL SCHEMA
Tour (TourName, Description)
    PK (TourName)
Client (ClientID, Surname, Given, NameGender)
    PK (ClientID)
Event (Tourname, EventYear, EventMonth, EventDay, Fee)
    PK (EventYear, EventMonth, EventDay)
    FK (TourName) References Tour
Booking (TourName, EventYear, EventMonth, EventDay, ClientID, Date Booked, Payment)
    PK (TourName, EventYear, EventMonth, EventDay, ClientID)
    FK(TourName, EventYear, EventMonth, EventDay) References Event
    FK(ClientID) References Client
*/
  
  
  
    /*VIEW LIST OF ALL TABLES */
---SELECT table_catalog [database], table_schema [schema], table_name name, table_type type
---FROM INFORMATION_SCHEMA.TABLES
---GO

    /*VIEW CURRENT DATABASE*/
---SELECT db_name()

use test;


    /* DELETES AND UPDATES THE TABLE EVERYTIME THE QUERY IS EXECUTED*/ 
IF OBJECT_ID('Students') IS NOT NULL
	DROP TABLE Students;










CREATE TABLE Students (
    fName VARCHAR(100)  
);

INSERT INTO Students(fName) VALUES('test2');
INSERT INTO Students(fName) VALUES('test3');

select * from Students;