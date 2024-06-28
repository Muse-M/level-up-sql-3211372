-- Determine how many copies of the book 'Dracula'
-- are available for library patrons to borrow.

select loanid, returnedDate 
from loans 
join books 
on loans.bookid=books.bookid
where books.title ='Dracula'
      and returnedDate is null

--1 copy out of 3 not returned