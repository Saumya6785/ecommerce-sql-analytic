SELECT
    DATE_FORMAT(order_date, '%Y-%m') AS month,
    SUM(total_amount) AS monthly_sales
FROM orders o
JOIN sales s ON o.order_id = s.order_id
GROUP BY month
ORDER BY month;
