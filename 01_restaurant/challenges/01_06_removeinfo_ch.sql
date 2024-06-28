-- Remove incorrect information from the database.

-- A customer named Norby has notified us he won't 
-- be able to keep his Friday reservation. 
-- Today is July 24, 2022.

SELECT *
FROM CUSTOMERS
WHERE FIRSTNAME='Norby'

SELECT * 
FROM Reservations
WHERE CUSTOMERID=64

DELETE --SHOULD PROBABLY NOT DELETE RECORDS, UPDATE TO REMOVE DATE OR SET TO INACTIVE?
FROM Reservations
WHERE reservationid=2000