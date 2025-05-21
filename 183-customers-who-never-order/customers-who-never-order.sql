# Write your MySQL query statement below
SELECT name AS Customers
FROM Customers as c
WHERE id NOT IN (
    SELECT customerId
    FROM Orders
)