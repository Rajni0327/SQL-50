# Write your MySQL query statement below
SELECT customer_id,count(customer_id ) AS "count_no_trans" 
FROM Visits 
LEFT JOIN Transactions
ON Visits.visit_id = Transactions.visit_id
WHERE transaction_id is Null 
GROUP BY customer_id ;