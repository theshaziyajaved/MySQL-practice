select id,
case 
    when id%2 = 0 then (select student from seat where id = (S.id-1) )  
    when id%2 = 1 and id<(select count(student) from seat) then (select student from seat where id = (S.id+1) )  
    else student
END as student
from seat S



