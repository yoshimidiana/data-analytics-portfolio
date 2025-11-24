-- Sample SQL queries for data analytics

-- 1. Count of orders by status
SELECT status, COUNT(*) AS order_count
FROM orders
GROUP BY status;

-- 2. Top 5 customers by total spend
SELECT customer_id, SUM(amount) AS total_spent
FROM transactions
GROUP BY customer_id
ORDER BY total_spent DESC
LIMIT 5;
