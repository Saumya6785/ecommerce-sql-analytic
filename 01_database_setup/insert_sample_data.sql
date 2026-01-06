-- Customers (5000)
INSERT INTO customers
SELECT
    seq,
    CONCAT('Customer_', seq),
    ELT(FLOOR(1 + RAND()*5), 'Mumbai','Delhi','Pune','Bangalore','Hyderabad'),
    DATE_SUB(CURDATE(), INTERVAL FLOOR(RAND()*1200) DAY)
FROM (
    SELECT @i:=@i+1 AS seq
    FROM information_schema.tables, (SELECT @i:=0) t
    LIMIT 5000
) x;

-- Products (50)
INSERT INTO products
SELECT
    seq,
    CONCAT('Product_', seq),
    ELT(FLOOR(1 + RAND()*4), 'Electronics','Fashion','Home','Books'),
    ROUND(RAND()*5000,2)
FROM (
    SELECT @p:=@p+1 AS seq
    FROM information_schema.tables, (SELECT @p:=0) t
    LIMIT 50
) y;

-- Orders (10000)
INSERT INTO orders
SELECT
    seq,
    FLOOR(1 + RAND()*5000),
    DATE_SUB(CURDATE(), INTERVAL FLOOR(RAND()*365) DAY)
FROM (
    SELECT @o:=@o+1 AS seq
    FROM information_schema.tables, (SELECT @o:=0) t
    LIMIT 10000
) z;

-- Sales (20000)
INSERT INTO sales
SELECT
    seq,
    FLOOR(1 + RAND()*10000),
    FLOOR(1 + RAND()*50),
    FLOOR(1 + RAND()*5),
    ROUND(RAND()*8000,2)
FROM (
    SELECT @s:=@s+1 AS seq
    FROM information_schema.tables, (SELECT @s:=0) t
    LIMIT 20000
) w;

