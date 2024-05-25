DROP TRIGGER IF EXISTS update_order_total_after_order_item;
CREATE TRIGGER update_order_total_after_order_item
AFTER INSERT ON order_items
FOR EACH ROW
BEGIN
    UPDATE orders
    SET total = total + (NEW.price * NEW.quantity)
    WHERE order_id = NEW.order_id;
END;
