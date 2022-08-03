select sell_date, COUNT(DISTINCT(product)) AS num_sold , 
GROUP_CONCAT( DISTINCT product order by product separator ',' ) as products
   
--  The MySQL GROUP_CONCAT () function is an aggregate function that concatenates strings from a group into a single string with various options. 
   
        FROM Activities 
        GROUP BY sell_date 
        order by sell_date;

--  The ORDER BY keyword sorts the records in ascending order by default




