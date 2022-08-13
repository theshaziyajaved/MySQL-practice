select name
from SalesPerson
where sales_id not in
        (select sales_id from orders
LEFT JOIN
         company
             ON orders.com_id=company.com_id 
         where company.name='RED')
         


