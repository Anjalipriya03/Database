BEGIN TRANSACTION;

-- Drop existing trigger if it exists
DROP TRIGGER IF EXISTS update_stock_after_order;

-- Create new trigger
CREATE TRIGGER update_stock_after_order 
AFTER INSERT ON order_items 
FOR EACH ROW 
BEGIN 
    UPDATE orders 
    SET total = (SELECT SUM(oi.price * oi.quantity) 
                 FROM order_items oi 
                 WHERE oi.order_id = NEW.order_id) 
    WHERE order_id = NEW.order_id; 
END;

COMMIT;
