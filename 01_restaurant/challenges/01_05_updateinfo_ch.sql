-- Update a customer's contact information.

-- Taylor Jenkins, of 27170 6th Ave., Washington, DC,
-- has moved to 74 Pine St., New York, NY.

UPDATE Customers
SET ADDRESS ='74 PINE ST' ,
    CITY= 'New York',
    STATE='NY'
WHERE CUSTOMERID=26