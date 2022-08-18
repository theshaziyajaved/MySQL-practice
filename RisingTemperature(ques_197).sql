select w1.id 
from Weather w1 , Weather w2
where w1.temperature > w2.temperature and 
      DATEDIFF(w1.recordDate , w2.recordDate) = 1
      
-- The DATEDIFF() function returns the number of days between two date values.
