SELECT name FROM customer
WHERE referee_id != 2 OR referee_id IS NULL

--  It is not possible to test for NULL values with comparison operators, such as =, <, or <>.
--  So we will have to use the IS NULL and IS NOT NULL operators instead