# ONE BLOOM — Normalization Document
**Project:** ONE BLOOM Handmade Jewelry E-Commerce Database  
**DBMS:** MySQL 8.0  
**Milestone:** M2 — ERD Design & Normalization  

---

## Overview

This document applies database normalization formally to every table in the ONE BLOOM schema. For each normal form (1NF, 2NF, 3NF), we explain: what the rule requires, whether each table already satisfies it, what problem existed (if any), and what change was made. Tables that already satisfy a normal form include a written justification confirming why no change was needed.

---

## First Normal Form (1NF)

**Rule:** Every column must hold one single, atomic (indivisible) value. No comma-separated lists. No repeating column groups. Every row must be unique.

### Problem That Would Have Existed (Before Fix)

If we had designed the Product table naively:

| product_id | name | themes | materials |
|---|---|---|---|
| 1 | Rosette Earrings | Cottagecore, Fairycore | Clay, Wire |
| 2 | Moon Pendant | Gothic, Celestial | Resin |

The `themes` and `materials` columns store multiple values in one cell. This violates 1NF because:
- You cannot filter by a single theme without string parsing
- Inserting a new theme means rewriting the entire cell
- No referential integrity is possible

### Fix Applied

Multi-valued attributes were separated into dedicated tables:
- `Theme` table — one theme per row
- `Product_Theme` (bridge) — one row per product-theme relationship
- `Category` table — one material category per product

### 1NF Status — All Tables

| Table | Status | Justification |
|---|---|---|
| Admin | ✅ Satisfied | Every column (name, email, role) holds one atomic value per row. No repeating groups exist. |
| Customer | ✅ Satisfied | name, email, phone are all single-valued. No lists stored anywhere. |
| Category | ✅ Satisfied | Simple two-column lookup table. One category name and description per row. |
| Product | ✅ Satisfied | Themes and collections were moved to bridge tables. Each remaining column is atomic. |
| Theme | ✅ Satisfied | One theme name and description per row. Atomic by design. |
| Collection | ✅ Satisfied | One collection per row. launch_date is a single DATE value. |
| Product_Theme | ✅ Satisfied | Each row stores exactly one product-theme pair. Bridge table by design. |
| Product_Collection | ✅ Satisfied | Each row stores exactly one product-collection pair. Bridge table by design. |
| Cart | ✅ Satisfied | cart_id and customer_id are both single atomic values. |
| Cart_Item | ✅ Satisfied | One product per row. quantity is a single integer. |
| Order | ✅ Satisfied | shipping_address is a single text field. status is one ENUM value. |
| Order_Item | ✅ Satisfied | One product line per row. unit_price is a single decimal value. |
| Payment | ✅ Satisfied | One payment method and one status per row. |
| Shipping | ✅ Satisfied | One tracking number and one courier name per row. |
| Review | ✅ Satisfied | One rating integer and one comment text per row. |
| Wishlist | ✅ Satisfied | One saved product per customer per row. |

**Conclusion:** The schema satisfies 1NF across all 16 tables. Multi-valued attributes (themes, collections) were proactively separated into normalized tables during design.

---

## Second Normal Form (2NF)

**Rule:** The schema must already be in 1NF. Additionally, every non-key column must depend on the ENTIRE primary key — not just part of it. Partial dependencies are only possible in tables with composite primary keys.

### Problem That Would Have Existed (Before Fix)

If Order_Item had been designed as:

| order_id | product_id | quantity | unit_price | product_name | category_name |
|---|---|---|---|---|---|
| 1 | 5 | 2 | 450.00 | Rosette Earrings | Clay |

Here, `product_name` and `category_name` depend only on `product_id` — not on the full composite key `(order_id, product_id)`. This is a partial dependency and violates 2NF.

### Fix Applied

`product_name` and `category_name` were not included in `Order_Item`. This information is retrieved via JOIN from the `Product` and `Category` tables when needed. Only `unit_price` is stored as an intentional snapshot (price at time of purchase may differ from current price).

### 2NF Status — All Tables

| Table | Composite Key? | Partial Dependency Found? | Action | Status |
|---|---|---|---|---|
| Admin | No (single PK) | N/A — rule does not apply | None needed | ✅ Satisfied |
| Customer | No (single PK) | N/A | None needed | ✅ Satisfied |
| Category | No (single PK) | N/A | None needed | ✅ Satisfied |
| Product | No (single PK) | N/A | None needed | ✅ Satisfied |
| Theme | No (single PK) | N/A | None needed | ✅ Satisfied |
| Collection | No (single PK) | N/A | None needed | ✅ Satisfied |
| Product_Theme | Yes — (product_id, theme_id) | None — no non-key columns exist | None needed | ✅ Satisfied |
| Product_Collection | Yes — (product_id, collection_id) | None — no non-key columns exist | None needed | ✅ Satisfied |
| Cart | No (single PK) | N/A | None needed | ✅ Satisfied |
| Cart_Item | Single PK; two FK columns | quantity depends on both cart+product combo — not partial | None needed | ✅ Satisfied |
| Order | No (single PK) | N/A | None needed | ✅ Satisfied |
| Order_Item | Single PK; two FK columns | unit_price is intentional snapshot — not a partial dependency | None needed | ✅ Satisfied |
| Payment | No (single PK) | N/A | None needed | ✅ Satisfied |
| Shipping | No (single PK) | N/A | None needed | ✅ Satisfied |
| Review | No (single PK) | N/A | None needed | ✅ Satisfied |
| Wishlist | No (single PK) | N/A | None needed | ✅ Satisfied |

**Conclusion:** The schema satisfies 2NF. The only tables with composite primary keys (Product_Theme and Product_Collection) contain no non-key columns, so partial dependencies cannot exist. All other tables use single-column primary keys, making 2NF automatically satisfied.

---

## Third Normal Form (3NF)

**Rule:** The schema must already be in 2NF. Additionally, no non-key column should depend on another non-key column. Such indirect dependencies are called transitive dependencies.

### Problem That Would Have Existed — Example 1: Order table

If Order had been designed as:

| order_id | customer_id | customer_email | customer_city | total_amount |
|---|---|---|---|---|
| 1001 | 3 | sara@gmail.com | Lahore | 1200.00 |
| 1002 | 3 | sara@gmail.com | Lahore | 450.00 |

`customer_email` and `customer_city` depend on `customer_id`, not on `order_id`. This is a transitive dependency: order_id → customer_id → customer_email. Violations:
- If Sara changes her email, every order row must be updated
- Duplicate customer data stored across many rows

### Fix Applied

Customer data lives exclusively in the `Customer` table. The `Order` table stores only `customer_id` as a foreign key and retrieves customer details via JOIN.

### Problem That Would Have Existed — Example 2: Shipping table

| shipping_id | order_id | courier_name | courier_city | courier_phone |
|---|---|---|---|---|
| 1 | 1001 | TCS | Karachi | 0800-12345 |

`courier_city` and `courier_phone` depend on `courier_name`, not on `shipping_id`. Transitive dependency: shipping_id → courier_name → courier_city.

### Fix Applied

Only `courier_name` is stored in Shipping. Courier contact details are out of scope for this project. No separate Courier table was needed because courier details are informational only and do not drive any other table relationships.

### 3NF Status — All Tables

| Table | Transitive Dependency Found? | Action Taken | Status |
|---|---|---|---|
| Admin | No | All columns (name, email, role) describe the admin directly via admin_id | ✅ Satisfied |
| Customer | No | All columns describe the customer directly via customer_id | ✅ Satisfied |
| Category | No | name and description both describe the category directly | ✅ Satisfied |
| Product | No | price, stock, image_url, is_active all describe the product directly | ✅ Satisfied |
| Theme | No | name and description both describe the theme directly | ✅ Satisfied |
| Collection | No | name, description, launch_date all describe the collection directly | ✅ Satisfied |
| Product_Theme | No | Contains only primary key columns — no non-key columns exist | ✅ Satisfied |
| Product_Collection | No | Contains only primary key columns — no non-key columns exist | ✅ Satisfied |
| Cart | No | created_at depends directly on cart_id | ✅ Satisfied |
| Cart_Item | No | quantity describes this specific cart+product combination | ✅ Satisfied |
| Order | Yes — fixed | Removed customer_name, customer_email; kept only customer_id FK | ✅ Satisfied |
| Order_Item | No | unit_price is an intentional price snapshot — not derived from another non-key column | ✅ Satisfied |
| Payment | No | method, amount, status, payment_date all describe this payment directly | ✅ Satisfied |
| Shipping | Yes — fixed | Removed courier_city, courier_phone; kept only courier_name as text | ✅ Satisfied |
| Review | No | rating and comment describe this specific customer-product review directly | ✅ Satisfied |
| Wishlist | No | added_at describes when this specific customer saved this specific product | ✅ Satisfied |

**Conclusion:** The schema satisfies 3NF. Two potential transitive dependencies were identified during the normalization review (in Order and Shipping) and resolved by removing derived or indirectly dependent attributes, keeping only foreign key references to related tables.

---

## Summary of All Changes Made During Normalization

| Change | Normal Form | Reason |
|---|---|---|
| Moved themes into separate Theme table + Product_Theme bridge | 1NF | Eliminated multi-valued theme column in Product |
| Moved material types into Category table | 1NF | Eliminated repeating material attribute in Product |
| Removed product_name from Order_Item | 2NF | product_name depends only on product_id, not full key |
| Removed category_name from Order_Item | 2NF | category_name depends only on product_id, not full key |
| Removed customer_email, customer_city from Order | 3NF | Transitive dependency via customer_id |
| Removed courier_city, courier_phone from Shipping | 3NF | Transitive dependency via courier_name |

---

## Final Schema Confirmation

After applying all three normal forms, the schema is confirmed to be in **Third Normal Form (3NF)**. No further normalization (BCNF or 4NF) is required for this project scope.

All 16 tables retain their original structure as designed. No tables needed to be split or restructured. The normalization process confirmed that the initial design was well-planned.
