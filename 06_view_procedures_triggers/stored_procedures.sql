DELIMITER //
CREATE PROCEDURE get_customer_orders(IN cid INT)
BEGIN
    SELECT *
    FROM orders
    WHERE customer_id = cid;
END //
DELIMITER ;
