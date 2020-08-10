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


/* DELETES AND UPDATES THE TABLE EVERYTIME THE QUERY IS EXECUTED*/



                                                            /*TABLE CREATION*/
-- CREATE TABLE Tour
-- (
--     TourName NVARCHAR(100),
--     Descroption NVARCHAR(500),
--     PRIMARY KEY (TourName)
-- );

-- CREATE TABLE Client
-- (
--     ClientId INT  ,
--     Surname NVARCHAR(100) NOT NULL,
--     GivenName NVARCHAR(100) NOT NULL,
--     Gender NVARCHAR(1),
--     CHECK (Gender IN  ('M', 'F', 'I')  ),
--     PRIMARY KEY (ClientId)
-- );

-- CREATE TABLE testEvent
-- (
--     TourName NVARCHAR(100),
--     EventMonth NVARCHAR(3),
--     EventDay INT ,
--     EventYear INT  ,
--     EventFee MONEY NOT NULL,

--     CHECK (EventMonth IN ('Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec')),
--     CHECK (EventDay >= 0 AND EventDay < =31) ,
--     CHECK (EventYear > 999 AND EventYear < 9999),
--     CHECK (EventFee > 0),
--     PRIMARY KEY (EventYear, EventMonth, EventDay),
--         FOREIGN KEY (TourName) REFERENCES Tour(TourName)
-- );

-- CREATE TABLE Booking (
--     ClientId INT,
--     TourName NVARCHAR(100),
--     EventMonth NVARCHAR(3) ,
--     EventDay INT,
--     EventYear INT,
--     Payment MONEY,
--     DateBooked DATE NOT NULL,

--     CHECK (EventMonth IN ('Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec')),
--     CHECK (EventDay >= 0 AND EventDay < =31) ,
--     CHECK (EventYear > 999 AND EventYear < 9999),
--     CHECK (Payment > 0),



--     PRIMARY KEY (TourName, EventYear, EventMonth, EventDay, ClientID),
--     FOREIGN KEY (TourName) REFERENCES Tour,
--     FOREIGN KEY (EventYear, EventMonth, EventDay) REFERENCES testEvent,
--     FOREIGN KEY (ClientID) REFERENCES Client
-- );



