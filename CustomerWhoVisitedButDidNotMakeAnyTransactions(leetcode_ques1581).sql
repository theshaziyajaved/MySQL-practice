
select customer_id, COUNT(customer_id) AS count_no_trans
from Visits v
NATURAL LEFT JOIN Transactions t
WHERE t.visit_id IS NULL
GROUP BY customer_id






select customer_id, COUNT(customer_id) AS count_no_trans
 from Visits 
            where visit_id NOT IN (SELECT visit_id FROM Transactions)
                GROUP BY customer_id;
