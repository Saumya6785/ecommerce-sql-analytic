WITH customer_sales AS (
    SELECT
        o.customer_id,
        SUM(s.total_amount) AS spend
    FROM orders o
    JOIN sales s ON o.order_id = s.order_id
    GROUP BY o.customer_id
)
SELECT
    customer_id,
    spend,
    CASE
        WHEN spend > 70000 THEN 'High Value'
        WHEN spend > 30000 THEN 'Medium Value'
        ELSE 'Low Value'
    END AS segment
FROM customer_sales;
;
