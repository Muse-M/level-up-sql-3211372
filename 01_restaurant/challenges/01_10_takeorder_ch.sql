-- Enter a customer's delivery order into our database, 
-- and provide the total cost of the items ordered.

-- Use this order information:
-- Customer: Loretta Hundey, at 6939 Elka Place
-- Items: 1 House Salad, 1 Mini Cheeseburgers, and
-- 1 Tropical Blue Smoothie
-- Delivery date and time: September 20, 2022 @ 2PM (14:00)
-- There are no taxes or other fees.

SELECT  t1.orderID, t1.dishid, d.name
FROM 
  (SELECT ORDERID, DISHID
  FROM ORDERSDISHES
  WHERE ORDERID IN (
    SELECT ORDERID 
    FROM ORDERS 
    WHERE CUSTOMERID=(
      SELECT CUSTOMERID
      FROM CUSTOMERS
      WHERE FIRSTNAME='Loretta'))
  )t1
join dishes d
on t1.dishid=d.dishid
--order doesnt already exist 

INSERT INTO ORDERS(CUSTOMERID, ORDERDATE)
VALUES(
  (SELECT CUSTOMERID
    FROM CUSTOMERS
    WHERE FIRSTNAME='Loretta'),
    '2022-09-20 14:00:00')

SELECT ORDERID
FROM ORDERS
WHERE CUSTOMERID =70 AND ORDERDATE LIKE '2022-09-20 14:00:00'

SELECT DISHID, NAME
FROM DISHES 
WHERE NAME IN ('House Salad',
              'Mini Cheeseburgers',
              'Tropical Blue Smoothie')

INSERT INTO ORDERSDISHES(ORDERID, DISHID)
  VALUES
          (1001,4),
          (1001,7),
          (1001,20)

select orderid, sum(dishes.price) as totalprice
from dishes 
join ordersdishes 
on dishes.dishid=ordersdishes.dishid
group by orderid 
having orderid=1001

