select E1.name as Employee
from Employee E1 , Employee E2
where E1.ManagerId = E2.Id and E1.Salary > E2.Salary



