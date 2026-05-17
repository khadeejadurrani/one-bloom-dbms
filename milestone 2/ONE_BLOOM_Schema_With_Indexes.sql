-- ============================================================
--  ONE BLOOM — Handmade Jewelry E-Commerce
--  Database: MySQL 8.0
--  Phase 4: CREATE TABLE Statements (All 16 Tables)
-- ============================================================

CREATE DATABASE IF NOT EXISTS one_bloom;
USE one_bloom;

-- ────────────────────────────────────────────
-- TABLE 1: Admin
-- Who: The business owner / manager
-- Why: Admins manage products, orders, inventory
-- ────────────────────────────────────────────
CREATE TABLE Admin (
    admin_id        INT             NOT NULL AUTO_INCREMENT,
    name            VARCHAR(100)    NOT NULL,
    email           VARCHAR(150)    NOT NULL,
    password_hash   VARCHAR(255)    NOT NULL,
    role            ENUM('Super Admin', 'Manager') NOT NULL DEFAULT 'Manager',
    created_at      DATETIME        NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT pk_admin     PRIMARY KEY (admin_id),
    CONSTRAINT uq_admin_email UNIQUE (email)
);

-- ────────────────────────────────────────────
-- TABLE 2: Customer
-- Who: People who shop on ONE BLOOM
-- Why: We need to track who places orders, writes reviews, saves wishlists
-- ────────────────────────────────────────────
CREATE TABLE Customer (
    customer_id     INT             NOT NULL AUTO_INCREMENT,
    first_name      VARCHAR(80)     NOT NULL,
    last_name       VARCHAR(80)     NOT NULL,
    email           VARCHAR(150)    NOT NULL,
    phone           VARCHAR(20),
    password_hash   VARCHAR(255)    NOT NULL,
    created_at      DATETIME        NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT pk_customer      PRIMARY KEY (customer_id),
    CONSTRAINT uq_customer_email UNIQUE (email),
    CONSTRAINT chk_phone CHECK (phone REGEXP '^[0-9+\\-\\s]{7,20}$')
);

-- ────────────────────────────────────────────
-- TABLE 3: Category
-- Who: Material types (Clay, Resin, Beads…)
-- Why: Each product belongs to exactly one material category
-- ────────────────────────────────────────────
CREATE TABLE Category (
    category_id     INT             NOT NULL AUTO_INCREMENT,
    name            VARCHAR(100)    NOT NULL,
    description     TEXT,

    CONSTRAINT pk_category  PRIMARY KEY (category_id),
    CONSTRAINT uq_category_name UNIQUE (name)
);

-- ────────────────────────────────────────────
-- TABLE 4: Product
-- Who: Every jewelry item sold on ONE BLOOM
-- Why: Core of the entire business — everything links here
-- ────────────────────────────────────────────
CREATE TABLE Product (
    product_id      INT             NOT NULL AUTO_INCREMENT,
    category_id     INT             NOT NULL,
    admin_id        INT             NOT NULL,
    name            VARCHAR(200)    NOT NULL,
    description     TEXT,
    price           DECIMAL(10,2)   NOT NULL,
    stock_quantity  INT             NOT NULL DEFAULT 0,
    image_url       VARCHAR(500),
    is_active       BOOLEAN         NOT NULL DEFAULT TRUE,
    created_at      DATETIME        NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT pk_product       PRIMARY KEY (product_id),
    CONSTRAINT fk_product_cat   FOREIGN KEY (category_id) REFERENCES Category(category_id),
    CONSTRAINT fk_product_admin FOREIGN KEY (admin_id)    REFERENCES Admin(admin_id),
    CONSTRAINT chk_price        CHECK (price > 0),
    CONSTRAINT chk_stock        CHECK (stock_quantity >= 0)
);

-- ────────────────────────────────────────────
-- TABLE 5: Theme
-- Who: Aesthetic tags (Cottagecore, Gothic, Y2K…)
-- Why: Products can belong to multiple themes — drives collection browsing
-- ────────────────────────────────────────────
CREATE TABLE Theme (
    theme_id        INT             NOT NULL AUTO_INCREMENT,
    name            VARCHAR(100)    NOT NULL,
    description     TEXT,

    CONSTRAINT pk_theme     PRIMARY KEY (theme_id),
    CONSTRAINT uq_theme_name UNIQUE (name)
);

-- ────────────────────────────────────────────
-- TABLE 6: Collection
-- Who: Curated product sets (e.g. "Summer Garden 2025")
-- Why: Groups products for seasonal or editorial drops
-- ────────────────────────────────────────────
CREATE TABLE Collection (
    collection_id   INT             NOT NULL AUTO_INCREMENT,
    name            VARCHAR(150)    NOT NULL,
    description     TEXT,
    launch_date     DATE,

    CONSTRAINT pk_collection    PRIMARY KEY (collection_id),
    CONSTRAINT uq_collection_name UNIQUE (name)
);

-- ────────────────────────────────────────────
-- TABLE 7: Product_Theme  (BRIDGE — M:M)
-- Why: One product can have many themes; one theme has many products
-- Example: Mushroom Ring → Cottagecore + Fairycore
-- ────────────────────────────────────────────
CREATE TABLE Product_Theme (
    product_id      INT     NOT NULL,
    theme_id        INT     NOT NULL,

    CONSTRAINT pk_product_theme     PRIMARY KEY (product_id, theme_id),
    CONSTRAINT fk_pt_product        FOREIGN KEY (product_id) REFERENCES Product(product_id) ON DELETE CASCADE,
    CONSTRAINT fk_pt_theme          FOREIGN KEY (theme_id)   REFERENCES Theme(theme_id)   ON DELETE CASCADE
);

-- ────────────────────────────────────────────
-- TABLE 8: Product_Collection  (BRIDGE — M:M)
-- Why: One product can be in many collections; one collection has many products
-- ────────────────────────────────────────────
CREATE TABLE Product_Collection (
    product_id      INT     NOT NULL,
    collection_id   INT     NOT NULL,

    CONSTRAINT pk_product_collection    PRIMARY KEY (product_id, collection_id),
    CONSTRAINT fk_pc_product            FOREIGN KEY (product_id)    REFERENCES Product(product_id)    ON DELETE CASCADE,
    CONSTRAINT fk_pc_collection         FOREIGN KEY (collection_id) REFERENCES Collection(collection_id) ON DELETE CASCADE
);

-- ────────────────────────────────────────────
-- TABLE 9: Cart
-- Who: A shopping basket before checkout
-- Why: Customers build their order before confirming it
-- ────────────────────────────────────────────
CREATE TABLE Cart (
    cart_id         INT             NOT NULL AUTO_INCREMENT,
    customer_id     INT             NOT NULL,
    created_at      DATETIME        NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT pk_cart          PRIMARY KEY (cart_id),
    CONSTRAINT fk_cart_customer FOREIGN KEY (customer_id) REFERENCES Customer(customer_id) ON DELETE CASCADE
);

-- ────────────────────────────────────────────
-- TABLE 10: Cart_Item
-- Who: Individual products sitting inside a cart
-- Why: One cart holds many different products
-- ────────────────────────────────────────────
CREATE TABLE Cart_Item (
    cart_item_id    INT     NOT NULL AUTO_INCREMENT,
    cart_id         INT     NOT NULL,
    product_id      INT     NOT NULL,
    quantity        INT     NOT NULL DEFAULT 1,

    CONSTRAINT pk_cart_item         PRIMARY KEY (cart_item_id),
    CONSTRAINT fk_ci_cart           FOREIGN KEY (cart_id)    REFERENCES Cart(cart_id)       ON DELETE CASCADE,
    CONSTRAINT fk_ci_product        FOREIGN KEY (product_id) REFERENCES Product(product_id),
    CONSTRAINT uq_cart_product      UNIQUE (cart_id, product_id),
    CONSTRAINT chk_ci_quantity      CHECK (quantity > 0)
);

-- ────────────────────────────────────────────
-- TABLE 11: `Order`  (backticks — ORDER is a reserved word in MySQL)
-- Who: A confirmed purchase
-- Why: Tracks every sale from placement to delivery
-- ────────────────────────────────────────────
CREATE TABLE `Order` (
    order_id        INT             NOT NULL AUTO_INCREMENT,
    customer_id     INT             NOT NULL,
    order_date      DATETIME        NOT NULL DEFAULT CURRENT_TIMESTAMP,
    status          ENUM('Pending','Processing','Shipped','Delivered','Cancelled')
                                    NOT NULL DEFAULT 'Pending',
    total_amount    DECIMAL(10,2)   NOT NULL,
    shipping_address VARCHAR(500)   NOT NULL,

    CONSTRAINT pk_order         PRIMARY KEY (order_id),
    CONSTRAINT fk_order_customer FOREIGN KEY (customer_id) REFERENCES Customer(customer_id),
    CONSTRAINT chk_total        CHECK (total_amount >= 0)
);

-- ────────────────────────────────────────────
-- TABLE 12: Order_Item
-- Who: Each product line within an order
-- Why: One order = multiple products; we need a row per product
-- Note: unit_price is stored as a SNAPSHOT — price might change later
-- ────────────────────────────────────────────
CREATE TABLE Order_Item (
    order_item_id   INT             NOT NULL AUTO_INCREMENT,
    order_id        INT             NOT NULL,
    product_id      INT             NOT NULL,
    quantity        INT             NOT NULL,
    unit_price      DECIMAL(10,2)   NOT NULL,

    CONSTRAINT pk_order_item        PRIMARY KEY (order_item_id),
    CONSTRAINT fk_oi_order          FOREIGN KEY (order_id)    REFERENCES `Order`(order_id)  ON DELETE CASCADE,
    CONSTRAINT fk_oi_product        FOREIGN KEY (product_id)  REFERENCES Product(product_id),
    CONSTRAINT chk_oi_quantity      CHECK (quantity > 0),
    CONSTRAINT chk_oi_price         CHECK (unit_price > 0)
);

-- ────────────────────────────────────────────
-- TABLE 13: Payment
-- Who: The transaction record for an order
-- Why: 1:1 with Order — every order needs exactly one payment record
-- ────────────────────────────────────────────
CREATE TABLE Payment (
    payment_id      INT             NOT NULL AUTO_INCREMENT,
    order_id        INT             NOT NULL,
    method          ENUM('Cash','EasyPaisa','JazzCash','Bank Transfer','Card')
                                    NOT NULL,
    amount          DECIMAL(10,2)   NOT NULL,
    status          ENUM('Paid','Pending','Failed')
                                    NOT NULL DEFAULT 'Pending',
    payment_date    DATETIME,

    CONSTRAINT pk_payment       PRIMARY KEY (payment_id),
    CONSTRAINT fk_pay_order     FOREIGN KEY (order_id) REFERENCES `Order`(order_id) ON DELETE CASCADE,
    CONSTRAINT uq_pay_order     UNIQUE (order_id),
    CONSTRAINT chk_pay_amount   CHECK (amount > 0)
);

-- ────────────────────────────────────────────
-- TABLE 14: Shipping
-- Who: Delivery details for an order
-- Why: 1:1 with Order — tracks courier, tracking number, delivery date
-- ────────────────────────────────────────────
CREATE TABLE Shipping (
    shipping_id         INT             NOT NULL AUTO_INCREMENT,
    order_id            INT             NOT NULL,
    courier_name        VARCHAR(100)    NOT NULL,
    tracking_number     VARCHAR(100),
    shipped_date        DATE,
    estimated_delivery  DATE,
    status              ENUM('Processing','Dispatched','In Transit','Delivered')
                                        NOT NULL DEFAULT 'Processing',

    CONSTRAINT pk_shipping      PRIMARY KEY (shipping_id),
    CONSTRAINT fk_ship_order    FOREIGN KEY (order_id) REFERENCES `Order`(order_id) ON DELETE CASCADE,
    CONSTRAINT uq_ship_order    UNIQUE (order_id)
);

-- ────────────────────────────────────────────
-- TABLE 15: Review
-- Who: Customer feedback on a product
-- Why: Builds trust; only customers who ordered can review (enforced in app logic)
-- ────────────────────────────────────────────
CREATE TABLE Review (
    review_id       INT             NOT NULL AUTO_INCREMENT,
    product_id      INT             NOT NULL,
    customer_id     INT             NOT NULL,
    rating          TINYINT         NOT NULL,
    comment         TEXT,
    review_date     DATETIME        NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT pk_review        PRIMARY KEY (review_id),
    CONSTRAINT fk_rev_product   FOREIGN KEY (product_id)   REFERENCES Product(product_id)   ON DELETE CASCADE,
    CONSTRAINT fk_rev_customer  FOREIGN KEY (customer_id)  REFERENCES Customer(customer_id) ON DELETE CASCADE,
    CONSTRAINT uq_one_review    UNIQUE (product_id, customer_id),
    CONSTRAINT chk_rating       CHECK (rating BETWEEN 1 AND 5)
);

-- ────────────────────────────────────────────
-- TABLE 16: Wishlist
-- Who: Products a customer saves for later
-- Why: Common e-commerce feature; encourages return visits
-- ────────────────────────────────────────────
CREATE TABLE Wishlist (
    wishlist_id     INT             NOT NULL AUTO_INCREMENT,
    customer_id     INT             NOT NULL,
    product_id      INT             NOT NULL,
    added_at        DATETIME        NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT pk_wishlist      PRIMARY KEY (wishlist_id),
    CONSTRAINT fk_wl_customer   FOREIGN KEY (customer_id) REFERENCES Customer(customer_id) ON DELETE CASCADE,
    CONSTRAINT fk_wl_product    FOREIGN KEY (product_id)  REFERENCES Product(product_id)  ON DELETE CASCADE,
    CONSTRAINT uq_wishlist      UNIQUE (customer_id, product_id)
);

-- ============================================================
--  END OF SCHEMA
-- ============================================================

-- ============================================================
--  M4 REQUIREMENT: Indexes on FK columns & frequently queried cols
--  Why: Speeds up JOIN queries and WHERE filters significantly
-- ============================================================

-- Product table
CREATE INDEX idx_product_category   ON Product(category_id);
CREATE INDEX idx_product_admin      ON Product(admin_id);
CREATE INDEX idx_product_name       ON Product(name);
CREATE INDEX idx_product_price      ON Product(price);

-- Product_Theme bridge
CREATE INDEX idx_pt_theme           ON Product_Theme(theme_id);

-- Product_Collection bridge
CREATE INDEX idx_pc_collection      ON Product_Collection(collection_id);

-- Cart & Cart_Item
CREATE INDEX idx_cart_customer      ON Cart(customer_id);
CREATE INDEX idx_ci_cart            ON Cart_Item(cart_id);
CREATE INDEX idx_ci_product         ON Cart_Item(product_id);

-- Order & Order_Item
CREATE INDEX idx_order_customer     ON `Order`(customer_id);
CREATE INDEX idx_order_status       ON `Order`(status);
CREATE INDEX idx_order_date         ON `Order`(order_date);
CREATE INDEX idx_oi_order           ON Order_Item(order_id);
CREATE INDEX idx_oi_product         ON Order_Item(product_id);

-- Payment
CREATE INDEX idx_pay_status         ON Payment(status);

-- Shipping
CREATE INDEX idx_ship_status        ON Shipping(status);

-- Review
CREATE INDEX idx_rev_product        ON Review(product_id);
CREATE INDEX idx_rev_customer       ON Review(customer_id);
CREATE INDEX idx_rev_rating         ON Review(rating);

-- Wishlist
CREATE INDEX idx_wl_customer        ON Wishlist(customer_id);
CREATE INDEX idx_wl_product         ON Wishlist(product_id);

-- ============================================================
--  END OF DDL + INDEXES
-- ============================================================
