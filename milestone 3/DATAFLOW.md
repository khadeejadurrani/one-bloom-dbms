# ONE BLOOM — Dataflow Description
**Project:** ONE BLOOM Handmade Jewelry E-Commerce Database  
**Milestone:** M3 — Dataset Preprocessing  

---

## Overview

This document describes how data enters the ONE BLOOM system, how it moves through the database tables, which tables depend on others, and what comes out at the end. This dataflow reflects the actual structure of the ONE BLOOM schema.

---

## Where Data Enters the System

Data enters ONE BLOOM through three entry points:

### 1. Admin Panel (Business Owner Input)
The admin (jewelry shop owner) manually enters:
- New products → inserted into `Product` table
- Material categories → inserted into `Category` table
- Aesthetic themes → inserted into `Theme` table
- Curated collections → inserted into `Collection` table
- Theme and collection assignments → inserted into `Product_Theme` and `Product_Collection` bridge tables

This is the first data that must exist before anything else can function. No customer can browse or order a product that has not been entered by the admin.

### 2. Customer Registration
When a new shopper signs up:
- Their name, email, phone, and password → inserted into `Customer` table
- A `Customer` record must exist before that person can place orders, save wishlists, or leave reviews

### 3. Customer Shopping Activity
Once a customer is registered and products exist, customers generate transactional data:
- Adding items to cart → `Cart` and `Cart_Item` tables
- Placing an order → `Order` and `Order_Item` tables
- Making payment → `Payment` table
- Receiving delivery → `Shipping` table
- Leaving a review → `Review` table
- Saving a product → `Wishlist` table

---

## How Data Moves Through the Database

The diagram below shows the dependency chain — data must flow in this exact order:

```
[Admin] ──────────────────────────────────────────────────────────┐
    │                                                              │
    ▼                                                             ▼
[Category] ──► [Product] ◄── [Admin]          [Customer] ──► [Cart]
                   │                                │              │
                   ├──► [Product_Theme] ◄── [Theme] │              ▼
                   │                               │         [Cart_Item]
                   └──► [Product_Collection] ◄─ [Collection]       │
                   │                                │              │ (customer
                   │                                │               decides to
                   │                                │               checkout)
                   │                                ▼              │
                   │                           [Order] ◄───────────┘
                   │                               │
                   ├──────────────────────────► [Order_Item]
                   │                               │
                   │                               ├──► [Payment]
                   │                               │
                   │                               └──► [Shipping]
                   │
                   ├──► [Review] ◄──── [Customer]
                   │
                   └──► [Wishlist] ◄── [Customer]
```

### Step-by-Step Data Movement

**Step 1 — Setup (Admin enters catalog data)**
- `Admin` record created first
- `Category` records created (Clay, Resin, Beads, etc.)
- `Theme` records created (Cottagecore, Gothic, Y2K, etc.)
- `Collection` records created (Summer Garden, Moonlit Nights, etc.)
- `Product` records created — each product references one `Category` and one `Admin`
- `Product_Theme` rows inserted — linking products to their aesthetic themes
- `Product_Collection` rows inserted — linking products to curated collections

**Step 2 — Customer joins**
- `Customer` record created with personal details

**Step 3 — Browsing and saving**
- Customer saves items → `Wishlist` rows created (references `Customer` + `Product`)

**Step 4 — Shopping cart**
- Customer opens cart → `Cart` row created (references `Customer`)
- Customer adds products → `Cart_Item` rows created (references `Cart` + `Product`)

**Step 5 — Checkout / Order placed**
- Customer confirms purchase → `Order` row created (references `Customer`)
- Each product in the cart becomes a row in `Order_Item` (references `Order` + `Product`)
- The `unit_price` in `Order_Item` is copied (snapshotted) from the product's current price at time of purchase

**Step 6 — Payment**
- One `Payment` row created per order (references `Order`)
- Payment method recorded: EasyPaisa, JazzCash, Cash, Bank Transfer, or Card

**Step 7 — Shipping**
- One `Shipping` row created per dispatched order (references `Order`)
- Courier name, tracking number, and estimated delivery date recorded

**Step 8 — Post-delivery**
- Customer leaves feedback → `Review` row created (references `Product` + `Customer`)

---

## Table Dependency Order (Load Sequence)

This is the exact order CSV files must be loaded into MySQL. A table cannot be loaded before the tables it references via foreign keys.

| Load Order | Table | Depends On |
|---|---|---|
| 1 | Admin | Nothing |
| 2 | Customer | Nothing |
| 3 | Category | Nothing |
| 4 | Theme | Nothing |
| 5 | Collection | Nothing |
| 6 | Product | Admin, Category |
| 7 | Product_Theme | Product, Theme |
| 8 | Product_Collection | Product, Collection |
| 9 | Cart | Customer |
| 10 | Cart_Item | Cart, Product |
| 11 | Order | Customer |
| 12 | Order_Item | Order, Product |
| 13 | Payment | Order |
| 14 | Shipping | Order |
| 15 | Review | Product, Customer |
| 16 | Wishlist | Customer, Product |

---

## What Comes Out of the System

The ONE BLOOM database produces the following outputs through SQL queries:

| Output | Query Type | Example Use |
|---|---|---|
| Product catalog by category | SELECT + JOIN | Show all Clay Jewelry products on the website |
| Products filtered by theme | SELECT + JOIN via Product_Theme | Show all Cottagecore products |
| Products in a collection | SELECT + JOIN via Product_Collection | Show all items in "Summer Garden 2025" |
| Customer order history | SELECT + JOIN (Customer + Order + Order_Item) | Customer views past purchases |
| Order status tracking | SELECT on Order + Shipping | Admin checks delivery status |
| Revenue reports | SUM(total_amount) GROUP BY month | Business performance overview |
| Best-selling products | COUNT(order_item) GROUP BY product | Identify top sellers |
| Average product ratings | AVG(rating) GROUP BY product | Show star ratings on product page |
| Low stock alerts | SELECT WHERE stock_quantity < 5 | Admin restocks inventory |
| Wishlist summary | SELECT + JOIN (Wishlist + Product) | Customer views saved items |

---

## Data Cleaning Applied to Synthetic Dataset

The following cleaning rules were applied during data generation:

| Issue | Table Affected | Fix Applied |
|---|---|---|
| Duplicate emails | Customer | `UNIQUE` constraint + deduplication check in Python |
| Duplicate (product, customer) reviews | Review | Set-based deduplication before inserting |
| Duplicate (cart, product) pairs | Cart_Item | `UNIQUE` constraint enforced in generation |
| Duplicate (customer, product) wishlists | Wishlist | Set-based deduplication |
| Duplicate bridge table pairs | Product_Theme, Product_Collection | Set-based deduplication |
| Inconsistent phone format | Customer | Standardized to `XXXX-XXXXXXX` format |
| Negative prices | Product | `CHECK (price > 0)` enforced |
| Shipping for cancelled orders | Shipping | Filtered out — only active orders get shipping rows |
| NULL payment dates for unpaid orders | Payment | NULL intentionally left for Pending/Failed payments |
| Price snapshot drift | Order_Item | unit_price set to ±10% of product price at time of order |
