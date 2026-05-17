"""
ONE BLOOM — Synthetic Data Generator
Generates realistic CSV files for all 16 tables
Minimum 50-100 rows per core table
"""

import csv, os, random
from datetime import datetime, timedelta, date
from faker import Faker

fake = Faker('en_PK')
random.seed(42)
fake.seed_instance(42)

OUT = "/mnt/user-data/outputs/csv"
os.makedirs(OUT, exist_ok=True)

def write_csv(filename, headers, rows):
    path = f"{OUT}/{filename}"
    with open(path, 'w', newline='', encoding='utf-8') as f:
        w = csv.writer(f)
        w.writerow(headers)
        w.writerows(rows)
    print(f"  ✅ {filename:<40} {len(rows)} rows")

def rand_date(start, end):
    delta = end - start
    return start + timedelta(days=random.randint(0, delta.days))

def rand_dt(start, end):
    d = rand_date(start, end)
    h, m, s = random.randint(0,23), random.randint(0,59), random.randint(0,59)
    return datetime(d.year, d.month, d.day, h, m, s).strftime('%Y-%m-%d %H:%M:%S')

START = date(2023, 1, 1)
END   = date(2025, 4, 30)

print("\n🌸 ONE BLOOM — Generating Synthetic Data\n")

# ─────────────────────────────────────────────
# TABLE 1: Admin (5 rows)
# ─────────────────────────────────────────────
admin_names = [
    ("Zara","Malik"),("Ayesha","Khan"),("Hira","Ahmed"),
    ("Sana","Raza"),("Noor","Fatima")
]
admin_roles = ["Super Admin","Manager","Manager","Manager","Manager"]
admins = []
for i, ((fn, ln), role) in enumerate(zip(admin_names, admin_roles), 1):
    admins.append([
        i, f"{fn} {ln}",
        f"{fn.lower()}.{ln.lower()}@onebloom.pk",
        f"$2b$12$hashedpassword{i:03d}ABCDEF",
        role,
        rand_dt(START, date(2023,6,30))
    ])
write_csv("01_admin.csv",
    ["admin_id","name","email","password_hash","role","created_at"],
    admins)

# ─────────────────────────────────────────────
# TABLE 2: Customer (80 rows)
# ─────────────────────────────────────────────
pk_cities   = ["Karachi","Lahore","Islamabad","Rawalpindi","Peshawar",
               "Quetta","Multan","Faisalabad","Sialkot","Hyderabad"]
pk_first    = ["Ayesha","Sara","Hira","Zara","Noor","Maryam","Fatima","Sana",
               "Amna","Layla","Mehwish","Iqra","Rida","Mahnoor","Alishba",
               "Nimra","Sadia","Rabea","Hafsa","Kiran","Zainab","Sidra",
               "Anum","Bushra","Fiza","Naila","Shazia","Uzma","Yumna","Asma"]
pk_last     = ["Khan","Ahmed","Malik","Raza","Sheikh","Butt","Chaudhry",
               "Siddiqui","Ansari","Mirza","Qureshi","Hashmi","Baig",
               "Akhtar","Nawaz","Javed","Rana","Gill","Cheema","Warraich"]
customers   = []
used_emails = set()
for i in range(1, 81):
    fn = random.choice(pk_first)
    ln = random.choice(pk_last)
    base = f"{fn.lower()}.{ln.lower()}{random.randint(1,999)}"
    domain = random.choice(["gmail.com","yahoo.com","hotmail.com","outlook.com"])
    email = f"{base}@{domain}"
    while email in used_emails:
        email = f"{base}{random.randint(1,99)}@{domain}"
    used_emails.add(email)
    ph_prefix = random.choice(["0300","0301","0302","0303","0311","0312",
                               "0313","0321","0322","0333","0345","0346"])
    phone = f"{ph_prefix}-{random.randint(1000000,9999999)}"
    customers.append([
        i, fn, ln, email, phone,
        f"$2b$12$custpass{i:04d}WXYZ",
        rand_dt(START, END)
    ])
write_csv("02_customer.csv",
    ["customer_id","first_name","last_name","email","phone",
     "password_hash","created_at"],
    customers)

# ─────────────────────────────────────────────
# TABLE 3: Category (11 rows)
# ─────────────────────────────────────────────
categories = [
    (1,"Clay Jewelry",       "Handcrafted polymer clay pieces — earrings, rings, pendants"),
    (2,"Metal Wire Jewelry", "Intricate wire-wrapped and coiled metal jewelry"),
    (3,"Beaded Jewelry",     "Colorful seed bead and crystal bead creations"),
    (4,"Natural Stone Jewelry","Semi-precious stone and crystal jewelry"),
    (5,"Resin Jewelry",      "Hand-poured resin with embedded flowers, glitter, and art"),
    (6,"Charm Jewelry",      "Customizable charm bracelets, necklaces, and accessories"),
    (7,"Handmade Necklaces", "Statement and delicate handcrafted necklaces"),
    (8,"Earrings",           "All styles of handmade earrings — studs, dangles, hoops"),
    (9,"Bracelets",          "Handmade wrist jewelry in all materials"),
    (10,"Rings",             "Adjustable and sized handmade rings"),
    (11,"Keychains & Accessories","Decorative keychains and bag charms"),
]
write_csv("03_category.csv",
    ["category_id","name","description"],
    categories)

# ─────────────────────────────────────────────
# TABLE 4: Product (80 rows)
# ─────────────────────────────────────────────
product_templates = [
    # (name_base, category_id, price_range)
    ("Rosette Clay Stud Earrings",          8,  (350,600)),
    ("Mushroom Clay Earrings",              8,  (400,650)),
    ("Daisy Clay Ring",                     10, (300,500)),
    ("Sunflower Clay Pendant",              7,  (500,800)),
    ("Pastel Star Clay Earrings",           8,  (350,550)),
    ("Butterfly Clay Brooch",               11, (400,700)),
    ("Moon Phase Clay Necklace",            7,  (600,950)),
    ("Cherry Blossom Clay Studs",           8,  (350,600)),
    ("Wire-Wrapped Crystal Ring",           10, (450,750)),
    ("Copper Wire Leaf Earrings",           8,  (400,700)),
    ("Silver Wire Moon Pendant",            7,  (550,900)),
    ("Wire Coiled Statement Ring",          10, (400,650)),
    ("Twisted Wire Bangle",                 9,  (500,800)),
    ("Seed Bead Friendship Bracelet",       9,  (250,450)),
    ("Crystal Bead Choker",                 7,  (600,1000)),
    ("Rainbow Bead Hoop Earrings",          8,  (350,600)),
    ("Miyuki Bead Ring",                    10, (300,500)),
    ("Beaded Tassel Necklace",              7,  (700,1100)),
    ("Rose Quartz Drop Earrings",           8,  (600,1000)),
    ("Amethyst Crystal Ring",               10, (700,1200)),
    ("Lapis Lazuli Pendant",                7,  (800,1300)),
    ("Tiger Eye Bracelet",                  9,  (650,1050)),
    ("Moonstone Stud Earrings",             8,  (750,1200)),
    ("Clear Quartz Wire Ring",              10, (500,850)),
    ("Pressed Flower Resin Pendant",        7,  (550,900)),
    ("Glitter Galaxy Resin Earrings",       8,  (450,750)),
    ("Resin Ocean Wave Ring",               10, (400,700)),
    ("Dried Rose Resin Necklace",           7,  (600,1000)),
    ("Sparkle Resin Stud Earrings",         8,  (350,600)),
    ("Resin Floral Keychain",               11, (300,500)),
    ("Star Charm Bracelet",                 9,  (450,750)),
    ("Heart Charm Necklace",                7,  (500,850)),
    ("Celestial Charm Earrings",            8,  (400,700)),
    ("Initial Letter Charm Ring",           10, (350,600)),
    ("Mushroom Charm Keychain",             11, (250,450)),
    ("Butterfly Charm Bracelet",            9,  (500,800)),
    ("Coquette Bow Earrings",               8,  (400,650)),
    ("Gothic Cross Pendant",                7,  (600,1000)),
    ("Y2K Chunky Chain Bracelet",           9,  (550,900)),
    ("Fairycore Petal Earrings",            8,  (380,620)),
    ("Cottagecore Mushroom Ring",           10, (350,580)),
    ("K-pop Inspired Pearl Necklace",       7,  (700,1100)),
    ("Anime Eye Pin Brooch",                11, (300,500)),
    ("Vintage Cameo Pendant",               7,  (800,1300)),
    ("Celestial Sun Moon Earrings",         8,  (500,800)),
    ("Grunge Safety Pin Earrings",          8,  (300,500)),
    ("Minimalist Bar Necklace",             7,  (450,750)),
    ("Soft Girl Pastel Bracelet",           9,  (400,650)),
    ("Nature Leaf Stud Earrings",           8,  (380,620)),
    ("Garden Fairy Drop Earrings",          8,  (450,750)),
    ("Floral Wreath Ring",                  10, (400,680)),
    ("Vintage Pearl Drop Earrings",         8,  (600,950)),
    ("Coquette Lace Bracelet",              9,  (500,800)),
    ("Gothic Bat Charm Keychain",           11, (280,480)),
    ("Crystal Aurora Bead Necklace",        7,  (750,1200)),
    ("Bohemian Stone Wrap Bracelet",        9,  (600,1000)),
    ("Pressed Lavender Resin Ring",         10, (420,680)),
    ("Cherry Charm Earrings",               8,  (380,620)),
    ("Moon Bead Anklet",                    9,  (350,580)),
    ("Wire Sunburst Pendant",               7,  (550,900)),
    ("Fairy Wing Resin Earrings",           8,  (480,780)),
    ("Gothic Skull Ring",                   10, (450,750)),
    ("K-pop Idol Star Earrings",            8,  (400,650)),
    ("Vintage Filigree Pendant",            7,  (700,1100)),
    ("Cottagecore Acorn Earrings",          8,  (350,580)),
    ("Celestial Crescent Necklace",         7,  (650,1050)),
    ("Y2K Jelly Bead Bracelet",             9,  (300,500)),
    ("Anime Sakura Hair Pin",               11, (250,420)),
    ("Minimalist Gold Bar Ring",            10, (500,850)),
    ("Soft Girl Cloud Earrings",            8,  (380,620)),
    ("Nature Fern Resin Pendant",           7,  (580,950)),
    ("Grunge Chain Ring",                   10, (400,680)),
    ("Floral Pastel Headband",              11, (350,580)),
    ("Coquette Pink Bow Ring",              10, (320,520)),
    ("Fairycore Dewdrop Earrings",          8,  (420,700)),
    ("Celestial Star Map Necklace",         7,  (750,1250)),
    ("Gothic Velvet Choker",                7,  (600,1000)),
    ("Natural Amethyst Stud Earrings",      8,  (650,1050)),
    ("Resin Monarch Butterfly Pendant",     7,  (550,900)),
    ("Handmade Pearl Stud Earrings",        8,  (400,700)),
]

products = []
for i, (name, cat_id, (pmin, pmax)) in enumerate(product_templates[:80], 1):
    price     = round(random.uniform(pmin, pmax), 2)
    stock     = random.randint(0, 50)
    admin_id  = random.randint(1, 5)
    is_active = 1 if random.random() > 0.08 else 0
    created   = rand_dt(START, date(2024,12,31))
    image_url = f"https://cdn.onebloom.pk/products/p{i:04d}.jpg"
    desc = f"Handcrafted with love. Each piece is unique and made to order. Perfect for gifting."
    products.append([i, cat_id, admin_id, name, desc,
                     price, stock, image_url, is_active, created])

write_csv("04_product.csv",
    ["product_id","category_id","admin_id","name","description",
     "price","stock_quantity","image_url","is_active","created_at"],
    products)

# ─────────────────────────────────────────────
# TABLE 5: Theme (15 rows)
# ─────────────────────────────────────────────
themes = [
    (1,"Grunge",            "Dark, edgy aesthetic with chains, safety pins, and distressed elements"),
    (2,"Nature-Inspired",   "Botanical and organic designs — leaves, flowers, animals, earth tones"),
    (3,"Garden Whimsical",  "Playful garden motifs: mushrooms, snails, butterflies, fairies"),
    (4,"Cottagecore",       "Cozy rural aesthetic with florals, acorns, and vintage charm"),
    (5,"Fairycore",         "Delicate, ethereal designs inspired by fairy tales and magic"),
    (6,"Anime-Inspired",    "Japanese anime and manga aesthetics, kawaii characters"),
    (7,"K-pop Inspired",    "Trendy Korean pop culture — pearls, stars, idol-inspired styles"),
    (8,"Vintage",           "Classic, antique-inspired pieces with old-world elegance"),
    (9,"Minimalist",        "Clean, simple, understated designs in neutral or metallic tones"),
    (10,"Gothic",           "Dark romantic aesthetic — bats, skulls, crosses, velvet"),
    (11,"Celestial",        "Stars, moons, sun, planets and cosmic-inspired jewelry"),
    (12,"Soft Girl",        "Pastel, cute, feminine aesthetic with bows and clouds"),
    (13,"Coquette",         "Flirty, feminine style with bows, lace, and romantic details"),
    (14,"Y2K",              "Early 2000s revival — jelly beads, chunky chains, neon accents"),
    (15,"Floral",           "All things flower-inspired — roses, daisies, cherry blossoms"),
]
write_csv("05_theme.csv",
    ["theme_id","name","description"],
    themes)

# ─────────────────────────────────────────────
# TABLE 6: Collection (10 rows)
# ─────────────────────────────────────────────
collections = [
    (1,"Summer Garden 2023",    "Fresh floral and pastel pieces for summer",    "2023-05-01"),
    (2,"Moonlit Nights",        "Celestial and gothic pieces for the dark romantic", "2023-09-01"),
    (3,"Cottagecore Dreams",    "Cozy autumn collection with nature-inspired pieces", "2023-10-15"),
    (4,"Winter Wonderland",     "Icy blues, silvers, and snowflake-inspired jewelry", "2023-12-01"),
    (5,"Spring Awakening 2024", "Delicate florals and pastels for the new season", "2024-03-01"),
    (6,"Y2K Revival",           "Throwback to early 2000s bold and fun jewelry",  "2024-04-15"),
    (7,"Celestial Drop",        "Stars, moons, and cosmic wonders",               "2024-07-01"),
    (8,"Fairytale Endings",     "Enchanted forest and fairycore collection",       "2024-09-15"),
    (9,"Minimal Luxe",          "Understated elegance for the minimalist lover",   "2024-11-01"),
    (10,"Bloom & Blossom 2025", "ONE BLOOM signature spring launch for 2025",     "2025-03-01"),
]
write_csv("06_collection.csv",
    ["collection_id","name","description","launch_date"],
    collections)

# ─────────────────────────────────────────────
# TABLE 7: Product_Theme (bridge) ~140 rows
# Each product gets 1-3 themes, realistic matches
# ─────────────────────────────────────────────
theme_map = {
    # product_id: [theme_ids]
    1:[15,4],  2:[3,4],   3:[15,4],  4:[15,2],  5:[11,12], 6:[3,2],
    7:[11,10], 8:[15,4],  9:[11,5],  10:[2,4],  11:[11,9], 12:[9,10],
    13:[9,1],  14:[4,3],  15:[11,8], 16:[12,14],17:[9,15], 18:[15,5],
    19:[12,15],20:[10,8], 21:[8,9],  22:[2,8],  23:[11,9], 24:[9,11],
    25:[15,4], 26:[11,14],27:[2,11], 28:[15,13],29:[11,12],30:[3,4],
    31:[11,13],32:[15,13],33:[11,5], 34:[9,13], 35:[3,4],  36:[2,4],
    37:[13,12],38:[10,1], 39:[14,1], 40:[5,3],  41:[4,3],  42:[7,9],
    43:[6,7],  44:[8,13], 45:[11,10],46:[1,10], 47:[9,14], 48:[12,13],
    49:[2,15], 50:[5,3],  51:[15,4], 52:[8,13], 53:[10,1], 54:[11,5],
    55:[2,4],  56:[5,3],  57:[15,13],58:[11,2], 59:[2,11], 60:[5,3],
    61:[10,1], 62:[7,6],  63:[8,9],  64:[4,15], 65:[11,5], 66:[14,12],
    67:[6,7],  68:[9,14], 69:[12,13],70:[2,15], 71:[1,10], 72:[15,13],
    73:[5,11], 74:[10,1], 75:[14,6], 76:[10,13],77:[5,3],  78:[11,9],
    79:[15,4], 80:[12,9],
}
pt_rows = []
seen_pt = set()
for pid, tids in theme_map.items():
    for tid in tids:
        if (pid, tid) not in seen_pt:
            pt_rows.append([pid, tid])
            seen_pt.add((pid, tid))
write_csv("07_product_theme.csv",
    ["product_id","theme_id"],
    pt_rows)

# ─────────────────────────────────────────────
# TABLE 8: Product_Collection (bridge) ~80 rows
# ─────────────────────────────────────────────
coll_map = {
    1:[1,5],   2:[1,3],   3:[5,10],  4:[1,10],  5:[7,10],  6:[1,3],
    7:[2,7],   8:[1,5],   9:[5,9],   10:[3,10], 11:[2,7],  12:[9,2],
    13:[9,6],  14:[3,10], 15:[2,7],  16:[6,10], 17:[9,4],  18:[1,5],
    19:[5,1],  20:[2,8],  21:[4,9],  22:[3,4],  23:[4,9],  24:[9,7],
    25:[1,10], 26:[7,6],  27:[3,7],  28:[1,8],  29:[10,7], 30:[3,10],
    31:[7,10], 32:[5,8],  33:[7,8],  34:[9,10], 35:[3,8],  36:[5,3],
    37:[5,10], 38:[2,8],  39:[6,4],  40:[8,1],  41:[3,10], 42:[7,9],
    43:[4,9],  44:[4,9],  45:[2,7],  46:[2,4],  47:[9,6],  48:[5,10],
    49:[1,10], 50:[8,3],  51:[1,5],  52:[4,9],  53:[2,8],  54:[7,8],
    55:[3,10], 56:[8,3],  57:[5,10], 58:[7,10], 59:[7,3],  60:[8,3],
}
pc_rows = []
seen_pc = set()
for pid, cids in coll_map.items():
    for cid in cids:
        if (pid, cid) not in seen_pc:
            pc_rows.append([pid, cid])
            seen_pc.add((pid, cid))
write_csv("08_product_collection.csv",
    ["product_id","collection_id"],
    pc_rows)

# ─────────────────────────────────────────────
# TABLE 9: Cart (70 rows)
# ─────────────────────────────────────────────
carts = []
cart_customer = []
for i in range(1, 71):
    cust_id = random.randint(1, 80)
    cart_customer.append(cust_id)
    carts.append([i, cust_id, rand_dt(date(2024,1,1), END)])
write_csv("09_cart.csv",
    ["cart_id","customer_id","created_at"],
    carts)

# ─────────────────────────────────────────────
# TABLE 10: Cart_Item (120 rows)
# ─────────────────────────────────────────────
ci_rows = []
ci_seen = set()
ci_id   = 1
for cart_id in range(1, 71):
    n_items = random.randint(1, 4)
    prods   = random.sample(range(1, 81), n_items)
    for pid in prods:
        if (cart_id, pid) in ci_seen:
            continue
        ci_seen.add((cart_id, pid))
        ci_rows.append([ci_id, cart_id, pid, random.randint(1, 3)])
        ci_id += 1
        if len(ci_rows) >= 120:
            break
    if len(ci_rows) >= 120:
        break
write_csv("10_cart_item.csv",
    ["cart_item_id","cart_id","product_id","quantity"],
    ci_rows)

# ─────────────────────────────────────────────
# TABLE 11: Order (80 rows)
# ─────────────────────────────────────────────
pk_addresses = [
    "House 12, Street 4, F-7/1, Islamabad",
    "Flat 3B, Gulshan-e-Iqbal Block 13, Karachi",
    "45-C, Model Town, Lahore",
    "Shop 7, Saddar Bazar, Rawalpindi",
    "House 88, Phase 6, DHA, Karachi",
    "Street 9, G-11/2, Islamabad",
    "Flat 201, Askari Towers, Lahore",
    "House 33, Hayatabad Phase 3, Peshawar",
    "Plot 14, Clifton Block 5, Karachi",
    "House 5, Johar Town, Lahore",
    "22-B, Satellite Town, Rawalpindi",
    "House 67, Bahria Town Phase 4, Islamabad",
    "Flat 5, Al-Habib Plaza, Multan",
    "House 19, PECHS Block 6, Karachi",
    "Street 3, Wapda Town, Lahore",
]
statuses    = ["Pending","Processing","Shipped","Delivered","Cancelled"]
status_wts  = [10, 15, 20, 45, 10]
orders      = []
order_cust  = []
for i in range(1, 81):
    cust_id = random.randint(1, 80)
    order_cust.append(cust_id)
    total   = round(random.uniform(350, 4500), 2)
    status  = random.choices(statuses, weights=status_wts)[0]
    odate   = rand_dt(date(2023,6,1), END)
    addr    = random.choice(pk_addresses)
    orders.append([i, cust_id, odate, status, total, addr])
write_csv("11_order.csv",
    ["order_id","customer_id","order_date","status","total_amount","shipping_address"],
    orders)

# ─────────────────────────────────────────────
# TABLE 12: Order_Item (120 rows)
# ─────────────────────────────────────────────
oi_rows = []
oi_seen = set()
oi_id   = 1
prod_prices = {p[0]: float(p[5]) for p in products}
for order_id in range(1, 81):
    n = random.randint(1, 3)
    pids = random.sample(range(1, 81), n)
    for pid in pids:
        if (order_id, pid) in oi_seen:
            continue
        oi_seen.add((order_id, pid))
        base_price = prod_prices.get(pid, 500.0)
        snapshot   = round(base_price * random.uniform(0.9, 1.0), 2)
        qty        = random.randint(1, 3)
        oi_rows.append([oi_id, order_id, pid, qty, snapshot])
        oi_id += 1
write_csv("12_order_item.csv",
    ["order_item_id","order_id","product_id","quantity","unit_price"],
    oi_rows)

# ─────────────────────────────────────────────
# TABLE 13: Payment (80 rows — one per order)
# ─────────────────────────────────────────────
methods     = ["Cash","EasyPaisa","JazzCash","Bank Transfer","Card"]
meth_wts    = [15, 30, 30, 15, 10]
pay_statuses= ["Paid","Pending","Failed"]
pay_wts     = [75, 18, 7]
payments    = []
for i, order in enumerate(orders, 1):
    order_id  = order[0]
    amount    = order[4]
    method    = random.choices(methods, weights=meth_wts)[0]
    pstatus   = random.choices(pay_statuses, weights=pay_wts)[0]
    pdate     = order[2] if pstatus == "Paid" else None
    payments.append([i, order_id, method, amount, pstatus, pdate])
write_csv("13_payment.csv",
    ["payment_id","order_id","method","amount","status","payment_date"],
    payments)

# ─────────────────────────────────────────────
# TABLE 14: Shipping (70 rows — only non-Pending/Cancelled orders)
# ─────────────────────────────────────────────
couriers      = ["TCS","Leopards","M&P","PostEx","BlueEx","Swyft"]
ship_statuses = ["Processing","Dispatched","In Transit","Delivered"]
shippings     = []
ship_id       = 1
seen_ship     = set()
for order in orders:
    order_id = order[0]
    status   = order[3]
    if status in ("Pending","Cancelled") or order_id in seen_ship:
        continue
    seen_ship.add(order_id)
    courier  = random.choice(couriers)
    track_no = f"{courier[:3].upper()}-{random.randint(100000,999999)}"
    odate    = datetime.strptime(order[2], '%Y-%m-%d %H:%M:%S').date()
    shipped  = odate + timedelta(days=random.randint(1,3))
    est_del  = shipped + timedelta(days=random.randint(2,5))
    if status == "Delivered":
        sstatus = "Delivered"
    elif status == "Shipped":
        sstatus = random.choice(["Dispatched","In Transit"])
    else:
        sstatus = "Processing"
    shippings.append([
        ship_id, order_id, courier, track_no,
        shipped.strftime('%Y-%m-%d'),
        est_del.strftime('%Y-%m-%d'),
        sstatus
    ])
    ship_id += 1
write_csv("14_shipping.csv",
    ["shipping_id","order_id","courier_name","tracking_number",
     "shipped_date","estimated_delivery","status"],
    shippings)

# ─────────────────────────────────────────────
# TABLE 15: Review (65 rows)
# ─────────────────────────────────────────────
review_comments = [
    "Absolutely love this piece! The quality is amazing.",
    "Came exactly as described, very happy with my purchase.",
    "So beautiful, even better in person. Will order again!",
    "Perfect gift for my friend. She was delighted!",
    "High quality handmade work. Seller was very responsive.",
    "Packaging was lovely. The earrings are so delicate and pretty.",
    "Took a little time to arrive but totally worth the wait.",
    "Great quality for the price. Highly recommend this seller.",
    "The colors are exactly as shown in the photos.",
    "My go-to shop for handmade jewelry in Pakistan!",
    "Beautifully crafted. You can tell a lot of love went into it.",
    "I ordered for Eid and it arrived on time. Thank you!",
    "The ring fits perfectly. Will definitely order more.",
    "Lovely bracelet, very well made. Comfortable to wear.",
    "Average quality. Expected better finishing for the price.",
    "Looks okay but not as vibrant as the photos.",
    "Good seller but delivery took longer than expected.",
    "The necklace broke after a week. Disappointed.",
    "Stunning piece! Got so many compliments on it.",
    "Fast shipping and lovely packaging. 5 stars!",
]
reviews     = []
rev_seen    = set()
rev_id      = 1
rev_ratings = [1,2,3,4,4,4,5,5,5,5]
for _ in range(100):
    if rev_id > 65:
        break
    pid  = random.randint(1, 80)
    cid  = random.randint(1, 80)
    if (pid, cid) in rev_seen:
        continue
    rev_seen.add((pid, cid))
    rating  = random.choice(rev_ratings)
    comment = random.choice(review_comments)
    rdate   = rand_dt(date(2023,6,1), END)
    reviews.append([rev_id, pid, cid, rating, comment, rdate])
    rev_id += 1
write_csv("15_review.csv",
    ["review_id","product_id","customer_id","rating","comment","review_date"],
    reviews)

# ─────────────────────────────────────────────
# TABLE 16: Wishlist (80 rows)
# ─────────────────────────────────────────────
wishlists  = []
wl_seen    = set()
wl_id      = 1
for _ in range(200):
    if wl_id > 80:
        break
    cid = random.randint(1, 80)
    pid = random.randint(1, 80)
    if (cid, pid) in wl_seen:
        continue
    wl_seen.add((cid, pid))
    wishlists.append([wl_id, cid, pid, rand_dt(date(2023,6,1), END)])
    wl_id += 1
write_csv("16_wishlist.csv",
    ["wishlist_id","customer_id","product_id","added_at"],
    wishlists)

# ─────────────────────────────────────────────
print(f"\n✅ All CSV files saved to: {OUT}")
print("─" * 50)
import os
total = 0
for f in sorted(os.listdir(OUT)):
    if f.endswith('.csv'):
        path = f"{OUT}/{f}"
        with open(path) as fh:
            rows = sum(1 for _ in fh) - 1
        total += rows
        print(f"  {f:<45} {rows:>4} rows")
print(f"─" * 50)
print(f"  {'TOTAL ROWS':<45} {total:>4}")
