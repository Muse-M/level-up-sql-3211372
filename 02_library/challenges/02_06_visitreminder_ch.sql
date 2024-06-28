-- Prepare a report of the library patrons
-- who have checked out the fewest books.

SELECT P.PATRONID,P.EMAIL, COUNT(*)
FROM LOANS 
JOIN PATRONS P
ON LOANS.PATRONID=P.PATRONID
GROUP BY P.PATRONID
ORDER BY COUNT(*) 
LIMIT 9