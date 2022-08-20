select activity_date as day, count(distinct user_id) as active_users
from Activity
where datediff('2019-07-27', activity_date) <30
      and
      activity_date <= '2019-07-27'
group by activity_date

--  The DATEDIFF() function returns the number of days between two date values.

--  Syntax
--  DATEDIFF(date1, date2)