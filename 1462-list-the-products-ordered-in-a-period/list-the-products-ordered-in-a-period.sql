# Write your MySQL query statement below
SELECT p.product_name, SUM(CASE 
            WHEN o.order_date BETWEEN '2020-02-01' AND '2020-02-29' 
            THEN o.unit 
            ELSE 0 
        END) AS unit
FROM Products AS p JOIN Orders AS o ON p.product_id = o.product_id
GROUP BY p.product_name
HAVING unit > 99