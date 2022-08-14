--  Firstly we need to fetch the first letter and convert it to upperCase
--  Then, we need to fetch the remaining string to lowerCase and then concat them

select user_id , concat(upper(substr(name,1,1)),lower(substr(name,2))) as name 
from Users
order by user_id

--  The CONCAT() function adds two or more strings together. 
--  Syntax : CONCAT(string1, string2, ...., string_n)

--  The SUBSTR() function extracts a substring from a string (starting at any position).
--  Syntax: SUBSTR(string, start, length/number of letters to extract )
