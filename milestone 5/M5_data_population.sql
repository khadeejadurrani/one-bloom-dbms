-- ============================================================
--  ONE BLOOM — Milestone 5: Data Population (DML)
--  Run this AFTER ONE_BLOOM_Schema_With_Indexes.sql
--  MySQL 8.0
-- ============================================================

USE one_bloom;

-- ============================================================
--  PART 1: LOAD DATA FROM CSV FILES
--  IMPORTANT: Change the file path to match YOUR computer
--  Windows example: 'C:/Users/YourName/ONE-BLOOM/M3/csv/01_admin.csv'
--  Replace YourName with your actual Windows username
-- ============================================================

-- First, tell MySQL it's okay to load local files
SET GLOBAL local_infile = 1;

-- ────────────────────────────────────────────
-- TABLE 1: Admin
-- ────────────────────────────────────────────
LOAD DATA LOCAL INFILE 'C:/Users/YourName/ONE-BLOOM/M3/csv/01_admin.csv'
INTO TABLE Admin
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(admin_id, name, email, password_hash, role, created_at);

-- ────────────────────────────────────────────
-- TABLE 2: Customer
-- ────────────────────────────────────────────
LOAD DATA LOCAL INFILE 'C:/Users/YourName/ONE-BLOOM/M3/csv/02_customer.csv'
INTO TABLE Customer
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(customer_id, first_name, last_name, email, phone, password_hash, created_at);

-- ────────────────────────────────────────────
-- TABLE 3: Category
-- ────────────────────────────────────────────
LOAD DATA LOCAL INFILE 'C:/Users/YourName/ONE-BLOOM/M3/csv/03_category.csv'
INTO TABLE Category
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(category_id, name, description);

-- ────────────────────────────────────────────
-- TABLE 4: Theme
-- ────────────────────────────────────────────
LOAD DATA LOCAL INFILE 'C:/Users/YourName/ONE-BLOOM/M3/csv/05_theme.csv'
INTO TABLE Theme
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(theme_id, name, description);

-- ────────────────────────────────────────────
-- TABLE 5: Collection
-- ────────────────────────────────────────────
LOAD DATA LOCAL INFILE 'C:/Users/YourName/ONE-BLOOM/M3/csv/06_collection.csv'
INTO TABLE Collection
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(collection_id, name, description, launch_date);

-- ────────────────────────────────────────────
-- TABLE 6: Product
-- ────────────────────────────────────────────
LOAD DATA LOCAL INFILE 'C:/Users/YourName/ONE-BLOOM/M3/csv/04_product.csv'
INTO TABLE Product
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(product_id, category_id, admin_id, name, description,
 price, stock_quantity, image_url, is_active, created_at);

-- ────────────────────────────────────────────
-- TABLE 7: Product_Theme (bridge)
-- ────────────────────────────────────────────
LOAD DATA LOCAL INFILE 'C:/Users/YourName/ONE-BLOOM/M3/csv/07_product_theme.csv'
INTO TABLE Product_Theme
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(product_id, theme_id);

-- ────────────────────────────────────────────
-- TABLE 8: Product_Collection (bridge)
-- ────────────────────────────────────────────
LOAD DATA LOCAL INFILE 'C:/Users/YourName/ONE-BLOOM/M3/csv/08_product_collection.csv'
INTO TABLE Product_Collection
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(product_id, collection_id);

-- ────────────────────────────────────────────
-- TABLE 9: Cart
-- ────────────────────────────────────────────
LOAD DATA LOCAL INFILE 'C:/Users/YourName/ONE-BLOOM/M3/csv/09_cart.csv'
INTO TABLE Cart
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(cart_id, customer_id, created_at);

-- ────────────────────────────────────────────
-- TABLE 10: Cart_Item
-- ────────────────────────────────────────────
LOAD DATA LOCAL INFILE 'C:/Users/YourName/ONE-BLOOM/M3/csv/10_cart_item.csv'
INTO TABLE Cart_Item
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(cart_item_id, cart_id, product_id, quantity);

-- ────────────────────────────────────────────
-- TABLE 11: Order
-- ────────────────────────────────────────────
LOAD DATA LOCAL INFILE 'C:/Users/YourName/ONE-BLOOM/M3/csv/11_order.csv'
INTO TABLE `Order`
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(order_id, customer_id, order_date, status, total_amount, shipping_address);

-- ────────────────────────────────────────────
-- TABLE 12: Order_Item
-- ────────────────────────────────────────────
LOAD DATA LOCAL INFILE 'C:/Users/YourName/ONE-BLOOM/M3/csv/12_order_item.csv'
INTO TABLE Order_Item
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(order_item_id, order_id, product_id, quantity, unit_price);

-- ────────────────────────────────────────────
-- TABLE 13: Payment
-- ────────────────────────────────────────────
LOAD DATA LOCAL INFILE 'C:/Users/YourName/ONE-BLOOM/M3/csv/13_payment.csv'
INTO TABLE Payment
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(payment_id, order_id, method, amount, status, payment_date);

-- ────────────────────────────────────────────
-- TABLE 14: Shipping
-- ────────────────────────────────────────────
LOAD DATA LOCAL INFILE 'C:/Users/YourName/ONE-BLOOM/M3/csv/14_shipping.csv'
INTO TABLE Shipping
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(shipping_id, order_id, courier_name, tracking_number,
 shipped_date, estimated_delivery, status);

-- ────────────────────────────────────────────
-- TABLE 15: Review
-- ────────────────────────────────────────────
LOAD DATA LOCAL INFILE 'C:/Users/YourName/ONE-BLOOM/M3/csv/15_review.csv'
INTO TABLE Review
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(review_id, product_id, customer_id, rating, comment, review_date);

-- ────────────────────────────────────────────
-- TABLE 16: Wishlist
-- ────────────────────────────────────────────
LOAD DATA LOCAL INFILE 'C:/Users/YourName/ONE-BLOOM/M3/csv/16_wishlist.csv'
INTO TABLE Wishlist
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(wishlist_id, customer_id, product_id, added_at);


-- ============================================================
--  PART 2: UPDATE QUERIES (required by sir)
--  These show real business operations on the database
-- ============================================================

-- UPDATE 1: A customer updated her phone number
UPDATE Customer
SET phone = '0312-9876543'
WHERE customer_id = 5;

-- UPDATE 2: Admin restocked a product that ran out
UPDATE Product
SET stock_quantity = 25
WHERE product_id = 12;

-- UPDATE 3: An order status changed from Processing to Shipped
UPDATE `Order`
SET status = 'Shipped'
WHERE order_id = 7;

-- UPDATE 4: A payment was confirmed (status changed to Paid)
UPDATE Payment
SET status = 'Paid',
    payment_date = NOW()
WHERE order_id = 15
  AND status = 'Pending';

-- UPDATE 5: Admin reduced the price of a product for a sale
UPDATE Product
SET price = 399.00
WHERE product_id = 3;


-- ============================================================
--  PART 3: DELETE QUERIES (required by sir)
-- ============================================================

-- DELETE 1: Customer removed a product from their wishlist
DELETE FROM Wishlist
WHERE customer_id = 10
  AND product_id = 22;

-- DELETE 2: Admin removed an inactive product listing
DELETE FROM Product
WHERE product_id = 80
  AND is_active = 0;

-- DELETE 3: A cart was cleared after checkout
DELETE FROM Cart_Item
WHERE cart_id = 5;


-- ============================================================
--  PART 4: VALIDATION QUERIES (required by sir)
--  Run these and take screenshots of the output
-- ============================================================

-- ── VALIDATION 1: COUNT(*) for every table ──────────────────
-- Your sir specifically asked for this
SELECT 'Admin'              AS table_name, COUNT(*) AS row_count FROM Admin
UNION ALL
SELECT 'Customer',                         COUNT(*) FROM Customer
UNION ALL
SELECT 'Category',                         COUNT(*) FROM Category
UNION ALL
SELECT 'Product',                          COUNT(*) FROM Product
UNION ALL
SELECT 'Theme',                            COUNT(*) FROM Theme
UNION ALL
SELECT 'Collection',                       COUNT(*) FROM Collection
UNION ALL
SELECT 'Product_Theme',                    COUNT(*) FROM Product_Theme
UNION ALL
SELECT 'Product_Collection',               COUNT(*) FROM Product_Collection
UNION ALL
SELECT 'Cart',                             COUNT(*) FROM Cart
UNION ALL
SELECT 'Cart_Item',                        COUNT(*) FROM Cart_Item
UNION ALL
SELECT 'Order',                            COUNT(*) FROM `Order`
UNION ALL
SELECT 'Order_Item',                       COUNT(*) FROM Order_Item
UNION ALL
SELECT 'Payment',                          COUNT(*) FROM Payment
UNION ALL
SELECT 'Shipping',                         COUNT(*) FROM Shipping
UNION ALL
SELECT 'Review',                           COUNT(*) FROM Review
UNION ALL
SELECT 'Wishlist',                         COUNT(*) FROM Wishlist;

-- ── VALIDATION 2: NULL check on key columns ─────────────────
-- Checks for any missing critical data
SELECT 'Customers with NULL email'     AS check_name,
       COUNT(*) AS issues
FROM Customer WHERE email IS NULL
UNION ALL
SELECT 'Products with NULL price',
       COUNT(*)
FROM Product WHERE price IS NULL
UNION ALL
SELECT 'Orders with NULL customer_id',
       COUNT(*)
FROM `Order` WHERE customer_id IS NULL
UNION ALL
SELECT 'Payments with NULL order_id',
       COUNT(*)
FROM Payment WHERE order_id IS NULL
UNION ALL
SELECT 'Order items with NULL unit_price',
       COUNT(*)
FROM Order_Item WHERE unit_price IS NULL;

-- ── VALIDATION 3: Foreign key integrity check via JOIN ───────
-- Confirms every order belongs to a real customer
SELECT
    o.order_id,
    o.status,
    o.total_amount,
    c.first_name,
    c.last_name,
    c.email
FROM `Order` o
JOIN Customer c ON o.customer_id = c.customer_id
LIMIT 10;

-- ── VALIDATION 4: Product catalog with category names ────────
-- Confirms Product → Category foreign key works
SELECT
    p.product_id,
    p.name        AS product_name,
    p.price,
    p.stock_quantity,
    cat.name      AS category
FROM Product p
JOIN Category cat ON p.category_id = cat.category_id
ORDER BY cat.name
LIMIT 15;

-- ── VALIDATION 5: Products with their themes ─────────────────
-- Confirms the M:M bridge table (Product_Theme) works
SELECT
    p.name        AS product_name,
    t.name        AS theme
FROM Product p
JOIN Product_Theme pt ON p.product_id = pt.product_id
JOIN Theme t          ON pt.theme_id  = t.theme_id
ORDER BY p.product_id
LIMIT 15;

-- ── VALIDATION 6: Complete order summary ─────────────────────
-- Joins Order + Customer + Payment + Shipping together
SELECT
    o.order_id,
    CONCAT(c.first_name, ' ', c.last_name) AS customer_name,
    o.order_date,
    o.status                                AS order_status,
    o.total_amount,
    p.method                                AS payment_method,
    p.status                                AS payment_status,
    s.courier_name,
    s.tracking_number
FROM `Order` o
JOIN Customer c   ON o.customer_id  = c.customer_id
JOIN Payment  p   ON o.order_id     = p.order_id
LEFT JOIN Shipping s ON o.order_id  = s.order_id
LIMIT 10;

-- ── VALIDATION 7: Average rating per product ─────────────────
SELECT
    p.name              AS product_name,
    COUNT(r.review_id)  AS total_reviews,
    ROUND(AVG(r.rating), 1) AS avg_rating
FROM Product p
JOIN Review r ON p.product_id = r.product_id
GROUP BY p.product_id, p.name
ORDER BY avg_rating DESC
LIMIT 10;

-- ── VALIDATION 8: Low stock alert ────────────────────────────
SELECT
    product_id,
    name,
    stock_quantity,
    price
FROM Product
WHERE stock_quantity < 10
ORDER BY stock_quantity ASC;

-- ============================================================
--  END OF M5 SCRIPT
-- ============================================================
