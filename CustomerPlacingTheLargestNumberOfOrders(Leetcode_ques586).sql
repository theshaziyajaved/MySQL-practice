select customer_number 
from Orders
group by customer_number
order by count(order_number) DESC 
LIMIT 1



--  select customer_number 
--  from Orders
--  group by customer_number
--  having count(order_number) >= all (Select count(order_number)
--                                     from orders
--                                     group by customer_number)