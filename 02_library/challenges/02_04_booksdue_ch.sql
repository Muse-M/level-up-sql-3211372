-- Prepare a report of books due to be returned
-- to the library on July 13, 2022.
-- Provide the due date, the book title, and
-- the borrower's first name and email address.


select title, firstname,lastname,duedate
from loans L
join Books B
  on b.bookid=l.bookid
join patrons p
  on p.patronid=l.patronid
where duedate= '2022-07-13' and returneddate is null