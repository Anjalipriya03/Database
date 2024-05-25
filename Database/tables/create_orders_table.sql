BEGIN TRANSACTION;
-- Drop existing table if it exists
DROP TABLE IF EXISTS orders;

-- Create new table
CREATE TABLE orders (
    order_id INTEGER PRIMARY KEY AUTOINCREMENT,
    user_id INTEGER NOT NULL,
    order_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    total REAL NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);
COMMIT;