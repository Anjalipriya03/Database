-- Load tables
.read tables/create_users_table.sql
.read tables/create_products_table.sql
.read tables/create_orders_table.sql
.read tables/create_order_items_table.sql
.read tables/create_reviews_table.sql

-- Load indexes
.read indexes/create_products_name_index.sql
.read indexes/create_reviews_product_id_index.sql

-- Load views
.read view/create_order_details_view.sql

-- Load triggers
.read trigger/order_trigger.sql
.read trigger/order_item_trigger.sql

-- Insert sample data
.read data/sample_users.sql
.read data/sample_products.sql
.read data/sample_orders.sql
.read data/sample_order_items.sql
