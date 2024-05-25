DROP VIEW IF EXISTS order_details;

CREATE VIEW order_details AS
SELECT
    o.order_id,
    u.username,
    p.name AS product_name,
    oi.quantity,
    oi.price,
    o.total,
    o.order_date
FROM
    orders o
JOIN
    users u ON o.user_id = u.user_id
JOIN
    order_items oi ON o.order_id = oi.order_id
JOIN
    products p ON oi.product_id = p.product_id;
