DROP INDEX IF EXISTS idx_orders_user_id;

CREATE INDEX idx_orders_user_id ON orders (user_id);
