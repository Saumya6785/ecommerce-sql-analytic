DELIMITER //
CREATE TRIGGER before_sales_insert
BEFORE INSERT ON sales
FOR EACH ROW
BEGIN
    IF NEW.total_amount <= 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Invalid sale amount';
    END IF;
END //
DELIMITER ;
