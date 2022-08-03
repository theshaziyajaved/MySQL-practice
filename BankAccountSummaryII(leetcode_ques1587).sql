Select name, SUM(amount) as balance
from
Users u JOIN Transactions t on u.account=t.account
GROUP BY
t.account HAVING balance>10000;