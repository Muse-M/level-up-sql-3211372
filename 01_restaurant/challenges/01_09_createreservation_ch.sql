-- Create a reservation for a customer who may or may not
-- already be listed in our Customers table.

-- Use the following information:
-- Sam McAdams (smac@kinetecoinc.com), for 5 people
-- on August 12, 2022 at 6PM (18:00)

IF NOT EXISTS(Select CustomerID from Customers 
              where email='smac@kinetecoinc.com')
BEGIN
INSERT INTO Customers (FIRSTNAME,LASTNAME,EMAIL) 
  Values ('Sam','McAdams','smac@kinetecoinc.com')
END
--COMMAND DOESNT EXIST IRONICALLY

SELECT CUSTOMERID FROM CUSTOMERS
    WHERE EMAIL='smac@kinetecoinc.com'

INSERT INTO CUSTOMERS(FIRSTNAME, LASTNAME, EMAIL)
VALUES ('SAM', 'MCADAMS','smac@kinetecoinc.com')

INSERT INTO Reservations(CUSTOMERID,DATE,PARTYSIZE)
  VALUES( 
  (SELECT CUSTOMERID FROM CUSTOMERS
    WHERE EMAIL='smac@kinetecoinc.com'),
    '2022-08-12 18:00:00',
    5
  )