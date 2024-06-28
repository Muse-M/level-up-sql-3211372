-- Create reports that will be used to make three menus.

-- Create a report with all the items sorted by price (lowest to highest).
-- Create a report showing appetizers and beverages.
-- Create a report with all items except beverages.

SELECT * 
FROM DISHES 
ORDER BY PRICE ASC

SELECT * 
FROM DISHES
WHERE TYPE LIKE 'Appetizer' OR TYPE LIKE 'Beverage'

SELECT * 
FROM DISHES
WHERE TYPE NOT LIKE 'Beverage'
ORDER BY TYPE  
