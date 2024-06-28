-- Update information in the database.

-- Set Cleo Goldwater's favorite dish to
-- the Quinoa Salmon Salad.

select dishid 
from dishes
where name='Quinoa Salmon Salad'

update Customers
set FavoriteDish = (select dishid 
                        from dishes
                        where name='Quinoa Salmon Salad')
where firstname='Cleo'
        and lastname='Goldwater'
