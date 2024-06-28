-- Check out two books for Jack Vaan (jvaan@wisdompets.com).
-- Book 1: The Picture of Dorian Gray, 2855934983
-- Book 2: Great Expectations, 4043822646
-- The checkout date is August 25, 2022 and the 
-- due date is September 8, 2022.

SELECT PATRONID 
FROM PATRONS
WHERE FIRSTNAME='Jack'

Select bookid
from books
where barcode= 2855934983 or barcode=4043822646

insert into loans(bookid,patronid,loandate,duedate)
values((Select bookid
from books
where barcode= 2855934983),(SELECT PATRONID 
FROM PATRONS
WHERE FIRSTNAME='Jack'),'2022-08-25','2022-09-08'),
      ((Select bookid
from books
where barcode= 4043822646),(SELECT PATRONID 
FROM PATRONS
WHERE FIRSTNAME='Jack'),'2022-08-25','2022-09-08')