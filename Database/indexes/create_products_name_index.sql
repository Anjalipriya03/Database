BEGIN TRANSACTION;
DROP INDEX IF EXISTS idx_products_name;

CREATE INDEX idx_products_name ON products (name);
COMMIT;