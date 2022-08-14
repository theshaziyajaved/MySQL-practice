select name as customers
from Customers 
where Customers.id not in (select Orders.customerId from Orders) 

