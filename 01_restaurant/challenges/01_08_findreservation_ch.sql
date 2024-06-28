-- Find the reservation information for a customer whose
-- name we aren't quite sure how to spell.

-- Variations of the name include:
-- Stevensen, Stephensen, Stevenson, Stephenson, Stuyvesant

-- There are four people in the party. Today is June 14th.

SELECT *
FROM CUSTOMERS
JOIN RESERVATIONS
ON CUSTOMERS.CUSTOMERID=RESERVATIONS.CUSTOMERID
WHERE LASTNAME LIKE 'Ste%'
      AND PARTYSIZE=4
      AND DATE(Date)='2022-06-14'
