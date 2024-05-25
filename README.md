# E-commerce Database Setup

This repository contains SQL scripts to set up an e-commerce database using SQLite. The database includes tables for users, products, orders, order items, and reviews, as well as associated indexes, views, and triggers.


## Getting Started

Follow these steps to set up and populate the database.

### Prerequisites

- Ensure you have SQLite installed. You can download it from the [SQLite website](https://www.sqlite.org/download.html).

### Setup Instructions

1. **Clone the Repository**:
    ```sh
    git clone https://github.com/Anjalipriya03/database.git
    cd database
    ```

2. **Open SQLite**:
    ```sh
    sqlite3 database.db
    ```

3. **Execute SQL Scripts**:
    Execute the SQL scripts in the following order to set up the database schema, indexes, views, triggers, and insert sample data.

    ```sql
    .read tables/create_users_table.sql
    .read tables/create_products_table.sql
    .read tables/create_orders_table.sql
    .read tables/create_order_items_table.sql
    .read tables/create_reviews_table.sql

    .read indexes/create_products_name_index.sql
    .read indexes/create_orders_user_id_index.sql

    .read views/create_order_details_view.sql

    .read triggers/create_update_stock_after_order_trigger.sql
    .read triggers/create_update_order_total_after_order_item_trigger.sql

    .read data/insert_sample_users.sql
    .read data/insert_sample_products.sql
    .read data/insert_sample_orders.sql
    .read data/insert_sample_order_items.sql
    ```

4. **Verify Setup**:
    After running the scripts, you can verify the setup by querying the database to ensure tables, indexes, views, and triggers are created correctly.

    ```sql
    .tables
    ```

    You should see the following tables:
    ```
    users
    products
    orders
    order_items
    reviews
    ```

## SQL Scripts Explanation

- **Tables**: SQL scripts to create tables for users, products, orders, order items, and reviews.
- **Indexes**: SQL scripts to create indexes on the product name and order user ID.
- **Views**: SQL script to create a view that joins order details with user and product information.
- **Triggers**: SQL scripts to create triggers that update stock after an order and update the order total after an order item is added.
- **Data**: SQL scripts to insert sample data into the tables.

## Contact

If you have any questions or need further assistance, please open an issue or contact the repository owner.



