select u.name, ifnull(sum(r.distance), 0) as travelled_distance
--  The IFNULL() function returns a specified value if the expression is NULL.
--  If the expression is NOT NULL, this function returns the expression.

from users u
left join rides r
--  The LEFT JOIN keyword returns all records from the left table (table1), and the matching records (if any) from the right table

on u.id = r.user_id
group by r.user_id
order by travelled_distance desc, u.name asc