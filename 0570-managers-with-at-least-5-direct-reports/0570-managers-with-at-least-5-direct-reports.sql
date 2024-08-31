# Write your MySQL query statement below
SELECT e1.name FROM employee e1
JOIN ( SELECT managerID from Employee 
     Group By managerID
     Having count(managerID) >= 5 ) e2
ON e1.id = e2.managerId ;
     
    
