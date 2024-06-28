-- Identify a few customers who have ordered delivery
-- from the restaurant the most often, so we can send
-- them a promotional coupon.

select FIRSTNAME, LASTNAME, EMAIL, COUNT(ORDERS.CUSTOMERID) AS NUMBEROFORDERS
FROM CUSTOMERS
JOIN ORDERS
  ON CUSTOMERS.CUSTOMERID=ORDERS.CUSTOMERID
GROUP BY FIRSTNAME, LASTNAME, EMAIL
ORDER BY NUMBEROFORDERS DESC
