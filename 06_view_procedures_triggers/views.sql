CREATE VIEW monthly_revenue AS
SELECT
    DATE_FORMAT(o.order_date, '%Y-%m') AS month,
    SUM(s.total_amount) AS revenue
FROM orders o
JOIN sales s ON o.order_id = s.order_id
GROUP BY month;
