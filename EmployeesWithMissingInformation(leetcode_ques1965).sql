SELECT employee_id FROM Employees WHERE employee_id NOT IN (SELECT employee_id FROM Salaries)
UNION 
SELECT employee_id FROM Salaries WHERE employee_id NOT IN (SELECT employee_id FROM Employees)

ORDER BY employee_id ASC





-- We can implement OUTER JOIN in MySQL by taking a LEFT JOIN and RIGHT JOIN union.
--  If column names of two tables are identical, we can use the USING clause instead of the ON clause.
 SELECT T.employee_id
 FROM  
   (SELECT * FROM Employees LEFT JOIN Salaries USING(employee_id)
    UNION 
    SELECT * FROM Employees RIGHT JOIN Salaries USING(employee_id))
 AS T
 WHERE T.salary IS NULL OR T.name IS NULL
 ORDER BY employee_id;

