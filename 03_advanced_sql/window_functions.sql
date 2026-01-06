SELECT
    customer_id,
    SUM(total_amount) AS total_revenue,
    RANK() OVER (ORDER BY SUM(total_amount) DESC) AS rank_position
FROM orders o
JOIN sales s ON o.order_id = s.order_id
GROUP BY customer_id;

