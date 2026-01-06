WITH customer_revenue AS (
    SELECT
        o.customer_id,
        SUM(s.total_amount) AS revenue
    FROM orders o
    JOIN sales s ON o.order_id = s.order_id
    GROUP BY o.customer_id
)
SELECT *
FROM customer_revenue
ORDER BY revenue DESC;

