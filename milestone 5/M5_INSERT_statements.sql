-- ============================================================
--  ONE BLOOM — Milestone 5: INSERT Statements (All 16 Tables)
--  Run this AFTER ONE_BLOOM_Schema_With_Indexes.sql
--  MySQL 8.0
-- ============================================================

USE one_bloom;

-- Disable foreign key checks while inserting
-- (re-enabled at the end)
SET FOREIGN_KEY_CHECKS = 0;


-- ──────────────────────────────────────────────────
-- Admin (5 rows)
-- ──────────────────────────────────────────────────
INSERT INTO Admin (`admin_id`, `name`, `email`, `password_hash`, `role`, `created_at`) VALUES
  ('1', 'Zara Malik', 'zara.malik@onebloom.pk', '$2b$12$hashedpassword001ABCDEF', 'Super Admin', '2023-06-13 03:01:47'),
  ('2', 'Ayesha Khan', 'ayesha.khan@onebloom.pk', '$2b$12$hashedpassword002ABCDEF', 'Manager', '2023-03-12 07:14:08'),
  ('3', 'Hira Ahmed', 'hira.ahmed@onebloom.pk', '$2b$12$hashedpassword003ABCDEF', 'Manager', '2023-01-27 21:47:57'),
  ('4', 'Sana Raza', 'sana.raza@onebloom.pk', '$2b$12$hashedpassword004ABCDEF', 'Manager', '2023-05-20 02:37:27'),
  ('5', 'Noor Fatima', 'noor.fatima@onebloom.pk', '$2b$12$hashedpassword005ABCDEF', 'Manager', '2023-01-09 00:05:13');

-- ──────────────────────────────────────────────────
-- Customer (80 rows)
-- ──────────────────────────────────────────────────
INSERT INTO Customer (`customer_id`, `first_name`, `last_name`, `email`, `phone`, `password_hash`, `created_at`) VALUES
  ('1', 'Sana', 'Rana', 'sana.rana617@gmail.com', '0322-4335942', '$2b$12$custpass0001WXYZ', '2025-01-03 20:44:34'),
  ('2', 'Mahnoor', 'Siddiqui', 'mahnoor.siddiqui460@hotmail.com', '0300-3678638', '$2b$12$custpass0002WXYZ', '2024-12-15 13:21:17'),
  ('3', 'Noor', 'Chaudhry', 'noor.chaudhry981@hotmail.com', '0301-2556017', '$2b$12$custpass0003WXYZ', '2024-01-25 03:22:54'),
  ('4', 'Iqra', 'Warraich', 'iqra.warraich271@gmail.com', '0346-8707870', '$2b$12$custpass0004WXYZ', '2024-07-03 03:59:24'),
  ('5', 'Hira', 'Gill', 'hira.gill301@hotmail.com', '0333-4226067', '$2b$12$custpass0005WXYZ', '2024-12-22 02:02:42'),
  ('6', 'Sana', 'Mirza', 'sana.mirza82@yahoo.com', '0301-7377459', '$2b$12$custpass0006WXYZ', '2023-10-12 14:40:53'),
  ('7', 'Iqra', 'Butt', 'iqra.butt380@hotmail.com', '0303-5479144', '$2b$12$custpass0007WXYZ', '2024-12-19 21:41:04'),
  ('8', 'Kiran', 'Butt', 'kiran.butt547@yahoo.com', '0302-8755439', '$2b$12$custpass0008WXYZ', '2024-01-24 08:59:40'),
  ('9', 'Anum', 'Gill', 'anum.gill225@hotmail.com', '0300-4842788', '$2b$12$custpass0009WXYZ', '2025-04-21 01:51:20'),
  ('10', 'Rida', 'Ansari', 'rida.ansari68@yahoo.com', '0333-6279418', '$2b$12$custpass0010WXYZ', '2023-08-06 20:31:25');
INSERT INTO Customer (`customer_id`, `first_name`, `last_name`, `email`, `phone`, `password_hash`, `created_at`) VALUES
  ('11', 'Yumna', 'Nawaz', 'yumna.nawaz147@hotmail.com', '0302-5137722', '$2b$12$custpass0011WXYZ', '2025-02-01 17:34:16'),
  ('12', 'Bushra', 'Cheema', 'bushra.cheema439@outlook.com', '0312-4679591', '$2b$12$custpass0012WXYZ', '2023-05-22 16:31:05'),
  ('13', 'Fiza', 'Ahmed', 'fiza.ahmed882@gmail.com', '0302-3684052', '$2b$12$custpass0013WXYZ', '2025-03-22 21:27:38'),
  ('14', 'Hira', 'Baig', 'hira.baig391@outlook.com', '0322-5218028', '$2b$12$custpass0014WXYZ', '2024-07-20 00:43:46'),
  ('15', 'Zara', 'Gill', 'zara.gill769@hotmail.com', '0345-6707197', '$2b$12$custpass0015WXYZ', '2023-04-25 09:27:10'),
  ('16', 'Alishba', 'Khan', 'alishba.khan977@hotmail.com', '0322-3997281', '$2b$12$custpass0016WXYZ', '2024-06-03 03:55:40'),
  ('17', 'Layla', 'Rana', 'layla.rana624@yahoo.com', '0302-7273233', '$2b$12$custpass0017WXYZ', '2025-02-19 05:34:49'),
  ('18', 'Asma', 'Rana', 'asma.rana941@gmail.com', '0333-6438436', '$2b$12$custpass0018WXYZ', '2024-05-15 00:07:59'),
  ('19', 'Iqra', 'Mirza', 'iqra.mirza246@gmail.com', '0303-2321324', '$2b$12$custpass0019WXYZ', '2023-03-29 23:31:52'),
  ('20', 'Hira', 'Gill', 'hira.gill785@yahoo.com', '0302-8973915', '$2b$12$custpass0020WXYZ', '2024-07-16 05:16:33');
INSERT INTO Customer (`customer_id`, `first_name`, `last_name`, `email`, `phone`, `password_hash`, `created_at`) VALUES
  ('21', 'Uzma', 'Warraich', 'uzma.warraich434@yahoo.com', '0322-4374754', '$2b$12$custpass0021WXYZ', '2024-12-31 09:25:42'),
  ('22', 'Zainab', 'Hashmi', 'zainab.hashmi449@outlook.com', '0301-5159166', '$2b$12$custpass0022WXYZ', '2023-08-19 02:21:01'),
  ('23', 'Hafsa', 'Gill', 'hafsa.gill236@yahoo.com', '0300-2191066', '$2b$12$custpass0023WXYZ', '2024-12-25 20:03:14'),
  ('24', 'Hira', 'Ahmed', 'hira.ahmed881@hotmail.com', '0301-9626108', '$2b$12$custpass0024WXYZ', '2023-09-01 08:42:31'),
  ('25', 'Fatima', 'Gill', 'fatima.gill136@outlook.com', '0303-8935169', '$2b$12$custpass0025WXYZ', '2025-04-06 13:12:06'),
  ('26', 'Zara', 'Akhtar', 'zara.akhtar363@outlook.com', '0313-8835373', '$2b$12$custpass0026WXYZ', '2025-01-16 01:43:41'),
  ('27', 'Zainab', 'Raza', 'zainab.raza63@outlook.com', '0346-6692553', '$2b$12$custpass0027WXYZ', '2025-03-30 03:15:12'),
  ('28', 'Fatima', 'Gill', 'fatima.gill460@yahoo.com', '0313-4078418', '$2b$12$custpass0028WXYZ', '2023-10-13 14:15:55'),
  ('29', 'Asma', 'Malik', 'asma.malik454@gmail.com', '0300-1247595', '$2b$12$custpass0029WXYZ', '2023-04-06 07:10:26'),
  ('30', 'Nimra', 'Javed', 'nimra.javed219@outlook.com', '0300-3762152', '$2b$12$custpass0030WXYZ', '2024-01-24 00:24:16');
INSERT INTO Customer (`customer_id`, `first_name`, `last_name`, `email`, `phone`, `password_hash`, `created_at`) VALUES
  ('31', 'Asma', 'Nawaz', 'asma.nawaz293@outlook.com', '0346-9164991', '$2b$12$custpass0031WXYZ', '2023-06-08 06:18:13'),
  ('32', 'Sara', 'Cheema', 'sara.cheema754@gmail.com', '0346-6261415', '$2b$12$custpass0032WXYZ', '2023-02-28 01:37:30'),
  ('33', 'Sadia', 'Rana', 'sadia.rana162@gmail.com', '0322-2344047', '$2b$12$custpass0033WXYZ', '2023-07-10 02:38:04'),
  ('34', 'Sidra', 'Siddiqui', 'sidra.siddiqui414@gmail.com', '0333-5130808', '$2b$12$custpass0034WXYZ', '2024-08-15 19:02:39'),
  ('35', 'Hira', 'Akhtar', 'hira.akhtar674@hotmail.com', '0311-4426900', '$2b$12$custpass0035WXYZ', '2024-11-16 22:20:15'),
  ('36', 'Amna', 'Baig', 'amna.baig135@hotmail.com', '0321-6304573', '$2b$12$custpass0036WXYZ', '2025-02-08 02:00:29'),
  ('37', 'Kiran', 'Cheema', 'kiran.cheema103@gmail.com', '0322-4576135', '$2b$12$custpass0037WXYZ', '2024-06-02 08:08:59'),
  ('38', 'Iqra', 'Malik', 'iqra.malik901@yahoo.com', '0312-5781295', '$2b$12$custpass0038WXYZ', '2023-06-11 14:53:34'),
  ('39', 'Anum', 'Mirza', 'anum.mirza627@gmail.com', '0345-6022741', '$2b$12$custpass0039WXYZ', '2024-11-10 03:56:08'),
  ('40', 'Amna', 'Raza', 'amna.raza912@gmail.com', '0346-3607983', '$2b$12$custpass0040WXYZ', '2023-10-06 09:38:13');
INSERT INTO Customer (`customer_id`, `first_name`, `last_name`, `email`, `phone`, `password_hash`, `created_at`) VALUES
  ('41', 'Anum', 'Qureshi', 'anum.qureshi209@hotmail.com', '0322-9196204', '$2b$12$custpass0041WXYZ', '2023-09-15 01:05:40'),
  ('42', 'Mahnoor', 'Ansari', 'mahnoor.ansari46@gmail.com', '0312-3194789', '$2b$12$custpass0042WXYZ', '2024-10-14 08:10:47'),
  ('43', 'Alishba', 'Gill', 'alishba.gill723@outlook.com', '0322-1162230', '$2b$12$custpass0043WXYZ', '2023-04-25 02:56:44'),
  ('44', 'Yumna', 'Sheikh', 'yumna.sheikh559@gmail.com', '0312-3484601', '$2b$12$custpass0044WXYZ', '2024-03-16 04:02:19'),
  ('45', 'Iqra', 'Ahmed', 'iqra.ahmed921@hotmail.com', '0303-5186414', '$2b$12$custpass0045WXYZ', '2024-11-13 03:22:49'),
  ('46', 'Rabea', 'Akhtar', 'rabea.akhtar998@yahoo.com', '0303-3726327', '$2b$12$custpass0046WXYZ', '2025-03-30 05:56:26'),
  ('47', 'Ayesha', 'Butt', 'ayesha.butt755@hotmail.com', '0313-5163555', '$2b$12$custpass0047WXYZ', '2023-10-01 05:50:44'),
  ('48', 'Zara', 'Baig', 'zara.baig894@gmail.com', '0321-4731818', '$2b$12$custpass0048WXYZ', '2023-07-24 14:22:19'),
  ('49', 'Shazia', 'Siddiqui', 'shazia.siddiqui229@gmail.com', '0345-4240180', '$2b$12$custpass0049WXYZ', '2024-02-13 10:17:55'),
  ('50', 'Hira', 'Ansari', 'hira.ansari360@outlook.com', '0345-9996207', '$2b$12$custpass0050WXYZ', '2023-12-06 00:07:56');
INSERT INTO Customer (`customer_id`, `first_name`, `last_name`, `email`, `phone`, `password_hash`, `created_at`) VALUES
  ('51', 'Amna', 'Butt', 'amna.butt595@hotmail.com', '0300-2818692', '$2b$12$custpass0051WXYZ', '2024-09-02 13:22:46'),
  ('52', 'Naila', 'Qureshi', 'naila.qureshi447@gmail.com', '0313-4188992', '$2b$12$custpass0052WXYZ', '2023-09-18 01:45:27'),
  ('53', 'Ayesha', 'Rana', 'ayesha.rana948@yahoo.com', '0312-8235969', '$2b$12$custpass0053WXYZ', '2023-03-13 21:58:21'),
  ('54', 'Kiran', 'Qureshi', 'kiran.qureshi680@gmail.com', '0346-6038571', '$2b$12$custpass0054WXYZ', '2024-06-03 09:42:26'),
  ('55', 'Mehwish', 'Baig', 'mehwish.baig714@hotmail.com', '0322-3135534', '$2b$12$custpass0055WXYZ', '2023-07-16 13:42:24'),
  ('56', 'Sidra', 'Butt', 'sidra.butt631@hotmail.com', '0313-1006810', '$2b$12$custpass0056WXYZ', '2023-11-08 09:13:27'),
  ('57', 'Naila', 'Cheema', 'naila.cheema622@hotmail.com', '0321-8411939', '$2b$12$custpass0057WXYZ', '2024-03-28 21:13:32'),
  ('58', 'Nimra', 'Butt', 'nimra.butt675@gmail.com', '0311-9647849', '$2b$12$custpass0058WXYZ', '2024-11-10 20:39:21'),
  ('59', 'Hira', 'Siddiqui', 'hira.siddiqui689@hotmail.com', '0303-4340845', '$2b$12$custpass0059WXYZ', '2023-05-31 00:02:15'),
  ('60', 'Nimra', 'Warraich', 'nimra.warraich871@gmail.com', '0321-7953166', '$2b$12$custpass0060WXYZ', '2024-10-06 18:12:45');
INSERT INTO Customer (`customer_id`, `first_name`, `last_name`, `email`, `phone`, `password_hash`, `created_at`) VALUES
  ('61', 'Anum', 'Baig', 'anum.baig507@outlook.com', '0303-3475836', '$2b$12$custpass0061WXYZ', '2024-11-02 22:00:57'),
  ('62', 'Fiza', 'Raza', 'fiza.raza798@outlook.com', '0303-3950888', '$2b$12$custpass0062WXYZ', '2025-04-03 22:33:29'),
  ('63', 'Sara', 'Gill', 'sara.gill256@gmail.com', '0321-3237058', '$2b$12$custpass0063WXYZ', '2025-03-31 14:42:33'),
  ('64', 'Rabea', 'Warraich', 'rabea.warraich325@outlook.com', '0333-9468772', '$2b$12$custpass0064WXYZ', '2024-03-12 17:28:57'),
  ('65', 'Maryam', 'Javed', 'maryam.javed461@hotmail.com', '0303-5652512', '$2b$12$custpass0065WXYZ', '2025-02-23 16:31:40'),
  ('66', 'Sana', 'Ansari', 'sana.ansari451@gmail.com', '0346-5793722', '$2b$12$custpass0066WXYZ', '2023-08-29 08:21:20'),
  ('67', 'Yumna', 'Gill', 'yumna.gill83@yahoo.com', '0302-4879923', '$2b$12$custpass0067WXYZ', '2024-01-28 22:09:45'),
  ('68', 'Fatima', 'Malik', 'fatima.malik425@outlook.com', '0312-8816912', '$2b$12$custpass0068WXYZ', '2024-03-01 01:13:53'),
  ('69', 'Mahnoor', 'Baig', 'mahnoor.baig927@gmail.com', '0333-7381734', '$2b$12$custpass0069WXYZ', '2024-05-03 00:22:19'),
  ('70', 'Fiza', 'Baig', 'fiza.baig874@outlook.com', '0322-4700025', '$2b$12$custpass0070WXYZ', '2024-05-14 07:17:27');
INSERT INTO Customer (`customer_id`, `first_name`, `last_name`, `email`, `phone`, `password_hash`, `created_at`) VALUES
  ('71', 'Nimra', 'Khan', 'nimra.khan399@hotmail.com', '0345-7783308', '$2b$12$custpass0071WXYZ', '2025-01-11 05:53:29'),
  ('72', 'Asma', 'Sheikh', 'asma.sheikh638@gmail.com', '0313-1454696', '$2b$12$custpass0072WXYZ', '2023-03-27 20:27:08'),
  ('73', 'Uzma', 'Nawaz', 'uzma.nawaz187@gmail.com', '0311-7360307', '$2b$12$custpass0073WXYZ', '2023-12-02 06:29:20'),
  ('74', 'Mehwish', 'Baig', 'mehwish.baig285@outlook.com', '0311-2374158', '$2b$12$custpass0074WXYZ', '2024-04-26 00:47:34'),
  ('75', 'Sara', 'Hashmi', 'sara.hashmi230@gmail.com', '0345-1675419', '$2b$12$custpass0075WXYZ', '2025-02-11 00:15:12'),
  ('76', 'Shazia', 'Khan', 'shazia.khan637@yahoo.com', '0303-3117636', '$2b$12$custpass0076WXYZ', '2024-04-29 21:07:36'),
  ('77', 'Fatima', 'Nawaz', 'fatima.nawaz717@hotmail.com', '0312-3815034', '$2b$12$custpass0077WXYZ', '2024-09-12 19:47:45'),
  ('78', 'Zara', 'Butt', 'zara.butt988@hotmail.com', '0301-1430812', '$2b$12$custpass0078WXYZ', '2023-11-16 18:43:58'),
  ('79', 'Rida', 'Baig', 'rida.baig965@yahoo.com', '0301-5074336', '$2b$12$custpass0079WXYZ', '2023-04-15 22:49:19'),
  ('80', 'Uzma', 'Warraich', 'uzma.warraich825@gmail.com', '0333-1689025', '$2b$12$custpass0080WXYZ', '2023-12-22 17:27:42');

-- ──────────────────────────────────────────────────
-- Category (11 rows)
-- ──────────────────────────────────────────────────
INSERT INTO Category (`category_id`, `name`, `description`) VALUES
  ('1', 'Clay Jewelry', 'Handcrafted polymer clay pieces — earrings, rings, pendants'),
  ('2', 'Metal Wire Jewelry', 'Intricate wire-wrapped and coiled metal jewelry'),
  ('3', 'Beaded Jewelry', 'Colorful seed bead and crystal bead creations'),
  ('4', 'Natural Stone Jewelry', 'Semi-precious stone and crystal jewelry'),
  ('5', 'Resin Jewelry', 'Hand-poured resin with embedded flowers, glitter, and art'),
  ('6', 'Charm Jewelry', 'Customizable charm bracelets, necklaces, and accessories'),
  ('7', 'Handmade Necklaces', 'Statement and delicate handcrafted necklaces'),
  ('8', 'Earrings', 'All styles of handmade earrings — studs, dangles, hoops'),
  ('9', 'Bracelets', 'Handmade wrist jewelry in all materials'),
  ('10', 'Rings', 'Adjustable and sized handmade rings');
INSERT INTO Category (`category_id`, `name`, `description`) VALUES
  ('11', 'Keychains & Accessories', 'Decorative keychains and bag charms');

-- ──────────────────────────────────────────────────
-- Theme (15 rows)
-- ──────────────────────────────────────────────────
INSERT INTO Theme (`theme_id`, `name`, `description`) VALUES
  ('1', 'Grunge', 'Dark, edgy aesthetic with chains, safety pins, and distressed elements'),
  ('2', 'Nature-Inspired', 'Botanical and organic designs — leaves, flowers, animals, earth tones'),
  ('3', 'Garden Whimsical', 'Playful garden motifs: mushrooms, snails, butterflies, fairies'),
  ('4', 'Cottagecore', 'Cozy rural aesthetic with florals, acorns, and vintage charm'),
  ('5', 'Fairycore', 'Delicate, ethereal designs inspired by fairy tales and magic'),
  ('6', 'Anime-Inspired', 'Japanese anime and manga aesthetics, kawaii characters'),
  ('7', 'K-pop Inspired', 'Trendy Korean pop culture — pearls, stars, idol-inspired styles'),
  ('8', 'Vintage', 'Classic, antique-inspired pieces with old-world elegance'),
  ('9', 'Minimalist', 'Clean, simple, understated designs in neutral or metallic tones'),
  ('10', 'Gothic', 'Dark romantic aesthetic — bats, skulls, crosses, velvet');
INSERT INTO Theme (`theme_id`, `name`, `description`) VALUES
  ('11', 'Celestial', 'Stars, moons, sun, planets and cosmic-inspired jewelry'),
  ('12', 'Soft Girl', 'Pastel, cute, feminine aesthetic with bows and clouds'),
  ('13', 'Coquette', 'Flirty, feminine style with bows, lace, and romantic details'),
  ('14', 'Y2K', 'Early 2000s revival — jelly beads, chunky chains, neon accents'),
  ('15', 'Floral', 'All things flower-inspired — roses, daisies, cherry blossoms');

-- ──────────────────────────────────────────────────
-- Collection (10 rows)
-- ──────────────────────────────────────────────────
INSERT INTO Collection (`collection_id`, `name`, `description`, `launch_date`) VALUES
  ('1', 'Summer Garden 2023', 'Fresh floral and pastel pieces for summer', '2023-05-01'),
  ('2', 'Moonlit Nights', 'Celestial and gothic pieces for the dark romantic', '2023-09-01'),
  ('3', 'Cottagecore Dreams', 'Cozy autumn collection with nature-inspired pieces', '2023-10-15'),
  ('4', 'Winter Wonderland', 'Icy blues, silvers, and snowflake-inspired jewelry', '2023-12-01'),
  ('5', 'Spring Awakening 2024', 'Delicate florals and pastels for the new season', '2024-03-01'),
  ('6', 'Y2K Revival', 'Throwback to early 2000s bold and fun jewelry', '2024-04-15'),
  ('7', 'Celestial Drop', 'Stars, moons, and cosmic wonders', '2024-07-01'),
  ('8', 'Fairytale Endings', 'Enchanted forest and fairycore collection', '2024-09-15'),
  ('9', 'Minimal Luxe', 'Understated elegance for the minimalist lover', '2024-11-01'),
  ('10', 'Bloom & Blossom 2025', 'ONE BLOOM signature spring launch for 2025', '2025-03-01');

-- ──────────────────────────────────────────────────
-- Product (80 rows)
-- ──────────────────────────────────────────────────
INSERT INTO Product (`product_id`, `category_id`, `admin_id`, `name`, `description`, `price`, `stock_quantity`, `image_url`, `is_active`, `created_at`) VALUES
  ('1', '8', '3', 'Rosette Clay Stud Earrings', 'Handcrafted with love. Each piece is unique and made to order. Perfect for gifting.', '442.64', '32', 'https://cdn.onebloom.pk/products/p0001.jpg', '0', '2024-03-06 15:06:27'),
  ('2', '8', '4', 'Mushroom Clay Earrings', 'Handcrafted with love. Each piece is unique and made to order. Perfect for gifting.', '640.2', '40', 'https://cdn.onebloom.pk/products/p0002.jpg', '1', '2024-03-21 05:46:33'),
  ('3', '10', '5', 'Daisy Clay Ring', 'Handcrafted with love. Each piece is unique and made to order. Perfect for gifting.', '493.09', '17', 'https://cdn.onebloom.pk/products/p0003.jpg', '1', '2024-07-05 15:29:27'),
  ('4', '7', '3', 'Sunflower Clay Pendant', 'Handcrafted with love. Each piece is unique and made to order. Perfect for gifting.', '747.72', '37', 'https://cdn.onebloom.pk/products/p0004.jpg', '1', '2023-09-09 02:17:56'),
  ('5', '8', '4', 'Pastel Star Clay Earrings', 'Handcrafted with love. Each piece is unique and made to order. Perfect for gifting.', '440.16', '48', 'https://cdn.onebloom.pk/products/p0005.jpg', '1', '2024-11-15 12:21:01'),
  ('6', '11', '2', 'Butterfly Clay Brooch', 'Handcrafted with love. Each piece is unique and made to order. Perfect for gifting.', '548.29', '20', 'https://cdn.onebloom.pk/products/p0006.jpg', '1', '2023-12-30 08:21:17'),
  ('7', '7', '3', 'Moon Phase Clay Necklace', 'Handcrafted with love. Each piece is unique and made to order. Perfect for gifting.', '908.11', '44', 'https://cdn.onebloom.pk/products/p0007.jpg', '1', '2024-06-13 06:05:15'),
  ('8', '8', '5', 'Cherry Blossom Clay Studs', 'Handcrafted with love. Each piece is unique and made to order. Perfect for gifting.', '530.02', '31', 'https://cdn.onebloom.pk/products/p0008.jpg', '1', '2024-12-08 15:41:45'),
  ('9', '10', '1', 'Wire-Wrapped Crystal Ring', 'Handcrafted with love. Each piece is unique and made to order. Perfect for gifting.', '597.25', '50', 'https://cdn.onebloom.pk/products/p0009.jpg', '1', '2023-08-15 12:44:15'),
  ('10', '8', '3', 'Copper Wire Leaf Earrings', 'Handcrafted with love. Each piece is unique and made to order. Perfect for gifting.', '491.86', '37', 'https://cdn.onebloom.pk/products/p0010.jpg', '1', '2024-06-27 11:27:47');
INSERT INTO Product (`product_id`, `category_id`, `admin_id`, `name`, `description`, `price`, `stock_quantity`, `image_url`, `is_active`, `created_at`) VALUES
  ('11', '7', '4', 'Silver Wire Moon Pendant', 'Handcrafted with love. Each piece is unique and made to order. Perfect for gifting.', '742.64', '22', 'https://cdn.onebloom.pk/products/p0011.jpg', '1', '2023-09-15 07:07:46'),
  ('12', '10', '5', 'Wire Coiled Statement Ring', 'Handcrafted with love. Each piece is unique and made to order. Perfect for gifting.', '448.15', '7', 'https://cdn.onebloom.pk/products/p0012.jpg', '1', '2024-12-07 05:12:13'),
  ('13', '9', '5', 'Twisted Wire Bangle', 'Handcrafted with love. Each piece is unique and made to order. Perfect for gifting.', '721.58', '17', 'https://cdn.onebloom.pk/products/p0013.jpg', '1', '2024-06-21 19:18:06'),
  ('14', '9', '2', 'Seed Bead Friendship Bracelet', 'Handcrafted with love. Each piece is unique and made to order. Perfect for gifting.', '416.53', '18', 'https://cdn.onebloom.pk/products/p0014.jpg', '1', '2023-11-06 00:45:34'),
  ('15', '7', '1', 'Crystal Bead Choker', 'Handcrafted with love. Each piece is unique and made to order. Perfect for gifting.', '650.63', '2', 'https://cdn.onebloom.pk/products/p0015.jpg', '1', '2024-12-15 04:40:55'),
  ('16', '8', '1', 'Rainbow Bead Hoop Earrings', 'Handcrafted with love. Each piece is unique and made to order. Perfect for gifting.', '538.2', '6', 'https://cdn.onebloom.pk/products/p0016.jpg', '1', '2024-04-25 15:28:21'),
  ('17', '10', '3', 'Miyuki Bead Ring', 'Handcrafted with love. Each piece is unique and made to order. Perfect for gifting.', '336.87', '3', 'https://cdn.onebloom.pk/products/p0017.jpg', '1', '2024-05-04 03:52:04'),
  ('18', '7', '5', 'Beaded Tassel Necklace', 'Handcrafted with love. Each piece is unique and made to order. Perfect for gifting.', '860.28', '4', 'https://cdn.onebloom.pk/products/p0018.jpg', '1', '2023-02-24 04:09:51'),
  ('19', '8', '1', 'Rose Quartz Drop Earrings', 'Handcrafted with love. Each piece is unique and made to order. Perfect for gifting.', '825.14', '19', 'https://cdn.onebloom.pk/products/p0019.jpg', '1', '2023-05-02 17:48:26'),
  ('20', '10', '5', 'Amethyst Crystal Ring', 'Handcrafted with love. Each piece is unique and made to order. Perfect for gifting.', '1003.16', '50', 'https://cdn.onebloom.pk/products/p0020.jpg', '1', '2024-06-19 12:28:58');
INSERT INTO Product (`product_id`, `category_id`, `admin_id`, `name`, `description`, `price`, `stock_quantity`, `image_url`, `is_active`, `created_at`) VALUES
  ('21', '7', '4', 'Lapis Lazuli Pendant', 'Handcrafted with love. Each piece is unique and made to order. Perfect for gifting.', '1021.36', '37', 'https://cdn.onebloom.pk/products/p0021.jpg', '1', '2024-09-27 01:39:47'),
  ('22', '9', '2', 'Tiger Eye Bracelet', 'Handcrafted with love. Each piece is unique and made to order. Perfect for gifting.', '689.69', '48', 'https://cdn.onebloom.pk/products/p0022.jpg', '1', '2023-09-28 21:05:10'),
  ('23', '8', '1', 'Moonstone Stud Earrings', 'Handcrafted with love. Each piece is unique and made to order. Perfect for gifting.', '857.94', '35', 'https://cdn.onebloom.pk/products/p0023.jpg', '1', '2024-02-23 14:44:38'),
  ('24', '10', '2', 'Clear Quartz Wire Ring', 'Handcrafted with love. Each piece is unique and made to order. Perfect for gifting.', '664.47', '2', 'https://cdn.onebloom.pk/products/p0024.jpg', '1', '2023-10-17 22:55:29'),
  ('25', '7', '3', 'Pressed Flower Resin Pendant', 'Handcrafted with love. Each piece is unique and made to order. Perfect for gifting.', '574.91', '14', 'https://cdn.onebloom.pk/products/p0025.jpg', '1', '2024-10-02 18:42:51'),
  ('26', '8', '1', 'Glitter Galaxy Resin Earrings', 'Handcrafted with love. Each piece is unique and made to order. Perfect for gifting.', '730.1', '27', 'https://cdn.onebloom.pk/products/p0026.jpg', '1', '2024-10-25 04:58:17'),
  ('27', '10', '1', 'Resin Ocean Wave Ring', 'Handcrafted with love. Each piece is unique and made to order. Perfect for gifting.', '647.99', '4', 'https://cdn.onebloom.pk/products/p0027.jpg', '1', '2023-11-11 19:47:52'),
  ('28', '7', '4', 'Dried Rose Resin Necklace', 'Handcrafted with love. Each piece is unique and made to order. Perfect for gifting.', '827.68', '18', 'https://cdn.onebloom.pk/products/p0028.jpg', '1', '2024-12-06 09:44:25'),
  ('29', '8', '5', 'Sparkle Resin Stud Earrings', 'Handcrafted with love. Each piece is unique and made to order. Perfect for gifting.', '585.67', '32', 'https://cdn.onebloom.pk/products/p0029.jpg', '1', '2023-03-24 19:02:56'),
  ('30', '11', '5', 'Resin Floral Keychain', 'Handcrafted with love. Each piece is unique and made to order. Perfect for gifting.', '386.41', '20', 'https://cdn.onebloom.pk/products/p0030.jpg', '1', '2023-04-04 07:43:53');
INSERT INTO Product (`product_id`, `category_id`, `admin_id`, `name`, `description`, `price`, `stock_quantity`, `image_url`, `is_active`, `created_at`) VALUES
  ('31', '9', '1', 'Star Charm Bracelet', 'Handcrafted with love. Each piece is unique and made to order. Perfect for gifting.', '708.16', '37', 'https://cdn.onebloom.pk/products/p0031.jpg', '1', '2024-11-19 08:36:02'),
  ('32', '7', '4', 'Heart Charm Necklace', 'Handcrafted with love. Each piece is unique and made to order. Perfect for gifting.', '767.09', '11', 'https://cdn.onebloom.pk/products/p0032.jpg', '1', '2024-03-28 08:11:37'),
  ('33', '8', '1', 'Celestial Charm Earrings', 'Handcrafted with love. Each piece is unique and made to order. Perfect for gifting.', '530.77', '31', 'https://cdn.onebloom.pk/products/p0033.jpg', '1', '2024-02-23 10:20:42'),
  ('34', '10', '3', 'Initial Letter Charm Ring', 'Handcrafted with love. Each piece is unique and made to order. Perfect for gifting.', '376.15', '10', 'https://cdn.onebloom.pk/products/p0034.jpg', '1', '2024-05-22 09:42:25'),
  ('35', '11', '1', 'Mushroom Charm Keychain', 'Handcrafted with love. Each piece is unique and made to order. Perfect for gifting.', '412.71', '35', 'https://cdn.onebloom.pk/products/p0035.jpg', '1', '2023-11-19 08:20:07'),
  ('36', '9', '5', 'Butterfly Charm Bracelet', 'Handcrafted with love. Each piece is unique and made to order. Perfect for gifting.', '791.06', '25', 'https://cdn.onebloom.pk/products/p0036.jpg', '1', '2023-01-02 21:55:34'),
  ('37', '8', '2', 'Coquette Bow Earrings', 'Handcrafted with love. Each piece is unique and made to order. Perfect for gifting.', '515.49', '3', 'https://cdn.onebloom.pk/products/p0037.jpg', '1', '2024-09-29 15:40:28'),
  ('38', '7', '3', 'Gothic Cross Pendant', 'Handcrafted with love. Each piece is unique and made to order. Perfect for gifting.', '904.0', '13', 'https://cdn.onebloom.pk/products/p0038.jpg', '1', '2023-10-22 14:56:44'),
  ('39', '9', '5', 'Y2K Chunky Chain Bracelet', 'Handcrafted with love. Each piece is unique and made to order. Perfect for gifting.', '719.65', '1', 'https://cdn.onebloom.pk/products/p0039.jpg', '1', '2024-12-27 05:19:35'),
  ('40', '8', '1', 'Fairycore Petal Earrings', 'Handcrafted with love. Each piece is unique and made to order. Perfect for gifting.', '383.28', '26', 'https://cdn.onebloom.pk/products/p0040.jpg', '1', '2023-04-27 14:07:41');
INSERT INTO Product (`product_id`, `category_id`, `admin_id`, `name`, `description`, `price`, `stock_quantity`, `image_url`, `is_active`, `created_at`) VALUES
  ('41', '10', '3', 'Cottagecore Mushroom Ring', 'Handcrafted with love. Each piece is unique and made to order. Perfect for gifting.', '541.39', '31', 'https://cdn.onebloom.pk/products/p0041.jpg', '1', '2023-10-07 13:53:30'),
  ('42', '7', '4', 'K-pop Inspired Pearl Necklace', 'Handcrafted with love. Each piece is unique and made to order. Perfect for gifting.', '1092.1', '15', 'https://cdn.onebloom.pk/products/p0042.jpg', '1', '2024-01-28 06:58:38'),
  ('43', '11', '1', 'Anime Eye Pin Brooch', 'Handcrafted with love. Each piece is unique and made to order. Perfect for gifting.', '401.65', '8', 'https://cdn.onebloom.pk/products/p0043.jpg', '1', '2024-02-29 10:59:50'),
  ('44', '7', '3', 'Vintage Cameo Pendant', 'Handcrafted with love. Each piece is unique and made to order. Perfect for gifting.', '1053.87', '0', 'https://cdn.onebloom.pk/products/p0044.jpg', '1', '2024-08-24 18:42:31'),
  ('45', '8', '5', 'Celestial Sun Moon Earrings', 'Handcrafted with love. Each piece is unique and made to order. Perfect for gifting.', '759.58', '28', 'https://cdn.onebloom.pk/products/p0045.jpg', '1', '2023-12-07 17:48:34'),
  ('46', '8', '2', 'Grunge Safety Pin Earrings', 'Handcrafted with love. Each piece is unique and made to order. Perfect for gifting.', '375.44', '20', 'https://cdn.onebloom.pk/products/p0046.jpg', '1', '2023-09-02 18:24:14'),
  ('47', '7', '1', 'Minimalist Bar Necklace', 'Handcrafted with love. Each piece is unique and made to order. Perfect for gifting.', '706.8', '26', 'https://cdn.onebloom.pk/products/p0047.jpg', '1', '2024-04-29 22:58:51'),
  ('48', '9', '2', 'Soft Girl Pastel Bracelet', 'Handcrafted with love. Each piece is unique and made to order. Perfect for gifting.', '495.31', '42', 'https://cdn.onebloom.pk/products/p0048.jpg', '1', '2023-02-07 04:32:37'),
  ('49', '8', '4', 'Nature Leaf Stud Earrings', 'Handcrafted with love. Each piece is unique and made to order. Perfect for gifting.', '459.68', '6', 'https://cdn.onebloom.pk/products/p0049.jpg', '1', '2024-04-12 00:46:09'),
  ('50', '8', '2', 'Garden Fairy Drop Earrings', 'Handcrafted with love. Each piece is unique and made to order. Perfect for gifting.', '572.99', '41', 'https://cdn.onebloom.pk/products/p0050.jpg', '0', '2023-09-29 10:39:44');
INSERT INTO Product (`product_id`, `category_id`, `admin_id`, `name`, `description`, `price`, `stock_quantity`, `image_url`, `is_active`, `created_at`) VALUES
  ('51', '10', '3', 'Floral Wreath Ring', 'Handcrafted with love. Each piece is unique and made to order. Perfect for gifting.', '511.3', '5', 'https://cdn.onebloom.pk/products/p0051.jpg', '1', '2024-06-30 12:20:40'),
  ('52', '8', '4', 'Vintage Pearl Drop Earrings', 'Handcrafted with love. Each piece is unique and made to order. Perfect for gifting.', '851.55', '48', 'https://cdn.onebloom.pk/products/p0052.jpg', '1', '2023-02-06 19:04:15'),
  ('53', '9', '2', 'Coquette Lace Bracelet', 'Handcrafted with love. Each piece is unique and made to order. Perfect for gifting.', '689.35', '18', 'https://cdn.onebloom.pk/products/p0053.jpg', '1', '2024-03-20 03:48:40'),
  ('54', '11', '4', 'Gothic Bat Charm Keychain', 'Handcrafted with love. Each piece is unique and made to order. Perfect for gifting.', '420.78', '6', 'https://cdn.onebloom.pk/products/p0054.jpg', '1', '2023-11-03 00:02:20'),
  ('55', '7', '3', 'Crystal Aurora Bead Necklace', 'Handcrafted with love. Each piece is unique and made to order. Perfect for gifting.', '1108.26', '18', 'https://cdn.onebloom.pk/products/p0055.jpg', '1', '2023-05-30 07:33:26'),
  ('56', '9', '2', 'Bohemian Stone Wrap Bracelet', 'Handcrafted with love. Each piece is unique and made to order. Perfect for gifting.', '826.37', '50', 'https://cdn.onebloom.pk/products/p0056.jpg', '1', '2023-03-22 19:55:24'),
  ('57', '10', '4', 'Pressed Lavender Resin Ring', 'Handcrafted with love. Each piece is unique and made to order. Perfect for gifting.', '581.12', '15', 'https://cdn.onebloom.pk/products/p0057.jpg', '1', '2023-05-27 07:29:40'),
  ('58', '8', '1', 'Cherry Charm Earrings', 'Handcrafted with love. Each piece is unique and made to order. Perfect for gifting.', '440.95', '16', 'https://cdn.onebloom.pk/products/p0058.jpg', '1', '2024-04-21 09:43:34'),
  ('59', '9', '3', 'Moon Bead Anklet', 'Handcrafted with love. Each piece is unique and made to order. Perfect for gifting.', '386.33', '28', 'https://cdn.onebloom.pk/products/p0059.jpg', '1', '2023-11-03 20:27:44'),
  ('60', '7', '2', 'Wire Sunburst Pendant', 'Handcrafted with love. Each piece is unique and made to order. Perfect for gifting.', '637.53', '19', 'https://cdn.onebloom.pk/products/p0060.jpg', '1', '2024-05-09 03:15:24');
INSERT INTO Product (`product_id`, `category_id`, `admin_id`, `name`, `description`, `price`, `stock_quantity`, `image_url`, `is_active`, `created_at`) VALUES
  ('61', '8', '3', 'Fairy Wing Resin Earrings', 'Handcrafted with love. Each piece is unique and made to order. Perfect for gifting.', '651.58', '36', 'https://cdn.onebloom.pk/products/p0061.jpg', '1', '2023-10-30 00:53:42'),
  ('62', '10', '5', 'Gothic Skull Ring', 'Handcrafted with love. Each piece is unique and made to order. Perfect for gifting.', '568.74', '0', 'https://cdn.onebloom.pk/products/p0062.jpg', '1', '2023-02-20 19:47:31'),
  ('63', '8', '2', 'K-pop Idol Star Earrings', 'Handcrafted with love. Each piece is unique and made to order. Perfect for gifting.', '608.21', '18', 'https://cdn.onebloom.pk/products/p0063.jpg', '1', '2023-12-27 07:40:12'),
  ('64', '7', '2', 'Vintage Filigree Pendant', 'Handcrafted with love. Each piece is unique and made to order. Perfect for gifting.', '948.36', '43', 'https://cdn.onebloom.pk/products/p0064.jpg', '1', '2024-10-04 20:02:19'),
  ('65', '8', '5', 'Cottagecore Acorn Earrings', 'Handcrafted with love. Each piece is unique and made to order. Perfect for gifting.', '531.38', '2', 'https://cdn.onebloom.pk/products/p0065.jpg', '1', '2023-05-15 02:58:18'),
  ('66', '7', '2', 'Celestial Crescent Necklace', 'Handcrafted with love. Each piece is unique and made to order. Perfect for gifting.', '780.69', '26', 'https://cdn.onebloom.pk/products/p0066.jpg', '1', '2024-07-06 11:33:32'),
  ('67', '9', '3', 'Y2K Jelly Bead Bracelet', 'Handcrafted with love. Each piece is unique and made to order. Perfect for gifting.', '482.7', '10', 'https://cdn.onebloom.pk/products/p0067.jpg', '1', '2024-05-08 09:47:55'),
  ('68', '11', '4', 'Anime Sakura Hair Pin', 'Handcrafted with love. Each piece is unique and made to order. Perfect for gifting.', '307.58', '7', 'https://cdn.onebloom.pk/products/p0068.jpg', '1', '2023-05-25 07:55:43'),
  ('69', '10', '5', 'Minimalist Gold Bar Ring', 'Handcrafted with love. Each piece is unique and made to order. Perfect for gifting.', '753.48', '25', 'https://cdn.onebloom.pk/products/p0069.jpg', '1', '2024-02-09 00:16:34'),
  ('70', '8', '3', 'Soft Girl Cloud Earrings', 'Handcrafted with love. Each piece is unique and made to order. Perfect for gifting.', '409.66', '23', 'https://cdn.onebloom.pk/products/p0070.jpg', '1', '2024-10-15 11:06:43');
INSERT INTO Product (`product_id`, `category_id`, `admin_id`, `name`, `description`, `price`, `stock_quantity`, `image_url`, `is_active`, `created_at`) VALUES
  ('71', '7', '5', 'Nature Fern Resin Pendant', 'Handcrafted with love. Each piece is unique and made to order. Perfect for gifting.', '666.51', '1', 'https://cdn.onebloom.pk/products/p0071.jpg', '1', '2024-07-28 10:58:39'),
  ('72', '10', '4', 'Grunge Chain Ring', 'Handcrafted with love. Each piece is unique and made to order. Perfect for gifting.', '461.98', '4', 'https://cdn.onebloom.pk/products/p0072.jpg', '1', '2023-11-06 20:26:07'),
  ('73', '11', '3', 'Floral Pastel Headband', 'Handcrafted with love. Each piece is unique and made to order. Perfect for gifting.', '382.15', '2', 'https://cdn.onebloom.pk/products/p0073.jpg', '1', '2023-04-29 03:15:56'),
  ('74', '10', '4', 'Coquette Pink Bow Ring', 'Handcrafted with love. Each piece is unique and made to order. Perfect for gifting.', '427.51', '24', 'https://cdn.onebloom.pk/products/p0074.jpg', '1', '2024-12-14 17:26:37'),
  ('75', '8', '4', 'Fairycore Dewdrop Earrings', 'Handcrafted with love. Each piece is unique and made to order. Perfect for gifting.', '627.84', '9', 'https://cdn.onebloom.pk/products/p0075.jpg', '1', '2024-05-16 19:26:17'),
  ('76', '7', '2', 'Celestial Star Map Necklace', 'Handcrafted with love. Each piece is unique and made to order. Perfect for gifting.', '766.36', '23', 'https://cdn.onebloom.pk/products/p0076.jpg', '1', '2023-08-30 11:06:43'),
  ('77', '7', '3', 'Gothic Velvet Choker', 'Handcrafted with love. Each piece is unique and made to order. Perfect for gifting.', '746.93', '41', 'https://cdn.onebloom.pk/products/p0077.jpg', '0', '2023-10-10 06:07:54'),
  ('78', '8', '2', 'Natural Amethyst Stud Earrings', 'Handcrafted with love. Each piece is unique and made to order. Perfect for gifting.', '979.68', '5', 'https://cdn.onebloom.pk/products/p0078.jpg', '1', '2024-09-03 00:03:50'),
  ('79', '7', '5', 'Resin Monarch Butterfly Pendant', 'Handcrafted with love. Each piece is unique and made to order. Perfect for gifting.', '666.73', '8', 'https://cdn.onebloom.pk/products/p0079.jpg', '1', '2024-07-21 06:37:13'),
  ('80', '8', '3', 'Handmade Pearl Stud Earrings', 'Handcrafted with love. Each piece is unique and made to order. Perfect for gifting.', '643.92', '14', 'https://cdn.onebloom.pk/products/p0080.jpg', '1', '2024-09-02 00:17:54');

-- ──────────────────────────────────────────────────
-- Product_Theme (160 rows)
-- ──────────────────────────────────────────────────
INSERT INTO Product_Theme (`product_id`, `theme_id`) VALUES
  ('1', '15'),
  ('1', '4'),
  ('2', '3'),
  ('2', '4'),
  ('3', '15'),
  ('3', '4'),
  ('4', '15'),
  ('4', '2'),
  ('5', '11'),
  ('5', '12');
INSERT INTO Product_Theme (`product_id`, `theme_id`) VALUES
  ('6', '3'),
  ('6', '2'),
  ('7', '11'),
  ('7', '10'),
  ('8', '15'),
  ('8', '4'),
  ('9', '11'),
  ('9', '5'),
  ('10', '2'),
  ('10', '4');
INSERT INTO Product_Theme (`product_id`, `theme_id`) VALUES
  ('11', '11'),
  ('11', '9'),
  ('12', '9'),
  ('12', '10'),
  ('13', '9'),
  ('13', '1'),
  ('14', '4'),
  ('14', '3'),
  ('15', '11'),
  ('15', '8');
INSERT INTO Product_Theme (`product_id`, `theme_id`) VALUES
  ('16', '12'),
  ('16', '14'),
  ('17', '9'),
  ('17', '15'),
  ('18', '15'),
  ('18', '5'),
  ('19', '12'),
  ('19', '15'),
  ('20', '10'),
  ('20', '8');
INSERT INTO Product_Theme (`product_id`, `theme_id`) VALUES
  ('21', '8'),
  ('21', '9'),
  ('22', '2'),
  ('22', '8'),
  ('23', '11'),
  ('23', '9'),
  ('24', '9'),
  ('24', '11'),
  ('25', '15'),
  ('25', '4');
INSERT INTO Product_Theme (`product_id`, `theme_id`) VALUES
  ('26', '11'),
  ('26', '14'),
  ('27', '2'),
  ('27', '11'),
  ('28', '15'),
  ('28', '13'),
  ('29', '11'),
  ('29', '12'),
  ('30', '3'),
  ('30', '4');
INSERT INTO Product_Theme (`product_id`, `theme_id`) VALUES
  ('31', '11'),
  ('31', '13'),
  ('32', '15'),
  ('32', '13'),
  ('33', '11'),
  ('33', '5'),
  ('34', '9'),
  ('34', '13'),
  ('35', '3'),
  ('35', '4');
INSERT INTO Product_Theme (`product_id`, `theme_id`) VALUES
  ('36', '2'),
  ('36', '4'),
  ('37', '13'),
  ('37', '12'),
  ('38', '10'),
  ('38', '1'),
  ('39', '14'),
  ('39', '1'),
  ('40', '5'),
  ('40', '3');
INSERT INTO Product_Theme (`product_id`, `theme_id`) VALUES
  ('41', '4'),
  ('41', '3'),
  ('42', '7'),
  ('42', '9'),
  ('43', '6'),
  ('43', '7'),
  ('44', '8'),
  ('44', '13'),
  ('45', '11'),
  ('45', '10');
INSERT INTO Product_Theme (`product_id`, `theme_id`) VALUES
  ('46', '1'),
  ('46', '10'),
  ('47', '9'),
  ('47', '14'),
  ('48', '12'),
  ('48', '13'),
  ('49', '2'),
  ('49', '15'),
  ('50', '5'),
  ('50', '3');
INSERT INTO Product_Theme (`product_id`, `theme_id`) VALUES
  ('51', '15'),
  ('51', '4'),
  ('52', '8'),
  ('52', '13'),
  ('53', '10'),
  ('53', '1'),
  ('54', '11'),
  ('54', '5'),
  ('55', '2'),
  ('55', '4');
INSERT INTO Product_Theme (`product_id`, `theme_id`) VALUES
  ('56', '5'),
  ('56', '3'),
  ('57', '15'),
  ('57', '13'),
  ('58', '11'),
  ('58', '2'),
  ('59', '2'),
  ('59', '11'),
  ('60', '5'),
  ('60', '3');
INSERT INTO Product_Theme (`product_id`, `theme_id`) VALUES
  ('61', '10'),
  ('61', '1'),
  ('62', '7'),
  ('62', '6'),
  ('63', '8'),
  ('63', '9'),
  ('64', '4'),
  ('64', '15'),
  ('65', '11'),
  ('65', '5');
INSERT INTO Product_Theme (`product_id`, `theme_id`) VALUES
  ('66', '14'),
  ('66', '12'),
  ('67', '6'),
  ('67', '7'),
  ('68', '9'),
  ('68', '14'),
  ('69', '12'),
  ('69', '13'),
  ('70', '2'),
  ('70', '15');
INSERT INTO Product_Theme (`product_id`, `theme_id`) VALUES
  ('71', '1'),
  ('71', '10'),
  ('72', '15'),
  ('72', '13'),
  ('73', '5'),
  ('73', '11'),
  ('74', '10'),
  ('74', '1'),
  ('75', '14'),
  ('75', '6');
INSERT INTO Product_Theme (`product_id`, `theme_id`) VALUES
  ('76', '10'),
  ('76', '13'),
  ('77', '5'),
  ('77', '3'),
  ('78', '11'),
  ('78', '9'),
  ('79', '15'),
  ('79', '4'),
  ('80', '12'),
  ('80', '9');

-- ──────────────────────────────────────────────────
-- Product_Collection (120 rows)
-- ──────────────────────────────────────────────────
INSERT INTO Product_Collection (`product_id`, `collection_id`) VALUES
  ('1', '1'),
  ('1', '5'),
  ('2', '1'),
  ('2', '3'),
  ('3', '5'),
  ('3', '10'),
  ('4', '1'),
  ('4', '10'),
  ('5', '7'),
  ('5', '10');
INSERT INTO Product_Collection (`product_id`, `collection_id`) VALUES
  ('6', '1'),
  ('6', '3'),
  ('7', '2'),
  ('7', '7'),
  ('8', '1'),
  ('8', '5'),
  ('9', '5'),
  ('9', '9'),
  ('10', '3'),
  ('10', '10');
INSERT INTO Product_Collection (`product_id`, `collection_id`) VALUES
  ('11', '2'),
  ('11', '7'),
  ('12', '9'),
  ('12', '2'),
  ('13', '9'),
  ('13', '6'),
  ('14', '3'),
  ('14', '10'),
  ('15', '2'),
  ('15', '7');
INSERT INTO Product_Collection (`product_id`, `collection_id`) VALUES
  ('16', '6'),
  ('16', '10'),
  ('17', '9'),
  ('17', '4'),
  ('18', '1'),
  ('18', '5'),
  ('19', '5'),
  ('19', '1'),
  ('20', '2'),
  ('20', '8');
INSERT INTO Product_Collection (`product_id`, `collection_id`) VALUES
  ('21', '4'),
  ('21', '9'),
  ('22', '3'),
  ('22', '4'),
  ('23', '4'),
  ('23', '9'),
  ('24', '9'),
  ('24', '7'),
  ('25', '1'),
  ('25', '10');
INSERT INTO Product_Collection (`product_id`, `collection_id`) VALUES
  ('26', '7'),
  ('26', '6'),
  ('27', '3'),
  ('27', '7'),
  ('28', '1'),
  ('28', '8'),
  ('29', '10'),
  ('29', '7'),
  ('30', '3'),
  ('30', '10');
INSERT INTO Product_Collection (`product_id`, `collection_id`) VALUES
  ('31', '7'),
  ('31', '10'),
  ('32', '5'),
  ('32', '8'),
  ('33', '7'),
  ('33', '8'),
  ('34', '9'),
  ('34', '10'),
  ('35', '3'),
  ('35', '8');
INSERT INTO Product_Collection (`product_id`, `collection_id`) VALUES
  ('36', '5'),
  ('36', '3'),
  ('37', '5'),
  ('37', '10'),
  ('38', '2'),
  ('38', '8'),
  ('39', '6'),
  ('39', '4'),
  ('40', '8'),
  ('40', '1');
INSERT INTO Product_Collection (`product_id`, `collection_id`) VALUES
  ('41', '3'),
  ('41', '10'),
  ('42', '7'),
  ('42', '9'),
  ('43', '4'),
  ('43', '9'),
  ('44', '4'),
  ('44', '9'),
  ('45', '2'),
  ('45', '7');
INSERT INTO Product_Collection (`product_id`, `collection_id`) VALUES
  ('46', '2'),
  ('46', '4'),
  ('47', '9'),
  ('47', '6'),
  ('48', '5'),
  ('48', '10'),
  ('49', '1'),
  ('49', '10'),
  ('50', '8'),
  ('50', '3');
INSERT INTO Product_Collection (`product_id`, `collection_id`) VALUES
  ('51', '1'),
  ('51', '5'),
  ('52', '4'),
  ('52', '9'),
  ('53', '2'),
  ('53', '8'),
  ('54', '7'),
  ('54', '8'),
  ('55', '3'),
  ('55', '10');
INSERT INTO Product_Collection (`product_id`, `collection_id`) VALUES
  ('56', '8'),
  ('56', '3'),
  ('57', '5'),
  ('57', '10'),
  ('58', '7'),
  ('58', '10'),
  ('59', '7'),
  ('59', '3'),
  ('60', '8'),
  ('60', '3');

-- ──────────────────────────────────────────────────
-- Cart (70 rows)
-- ──────────────────────────────────────────────────
INSERT INTO Cart (`cart_id`, `customer_id`, `created_at`) VALUES
  ('1', '19', '2024-03-07 17:16:51'),
  ('2', '23', '2024-02-26 21:55:01'),
  ('3', '17', '2024-01-08 11:50:50'),
  ('4', '31', '2024-10-28 10:01:11'),
  ('5', '34', '2024-01-27 04:47:26'),
  ('6', '68', '2024-02-28 23:04:30'),
  ('7', '58', '2025-02-02 11:32:37'),
  ('8', '14', '2024-08-19 16:14:39'),
  ('9', '6', '2025-01-07 21:33:19'),
  ('10', '59', '2024-11-25 00:03:30');
INSERT INTO Cart (`cart_id`, `customer_id`, `created_at`) VALUES
  ('11', '52', '2024-08-06 21:06:31'),
  ('12', '57', '2024-02-07 02:20:38'),
  ('13', '19', '2024-02-03 04:17:39'),
  ('14', '75', '2024-10-07 22:20:24'),
  ('15', '77', '2024-09-28 09:29:32'),
  ('16', '78', '2024-08-08 03:50:44'),
  ('17', '15', '2025-03-12 20:41:56'),
  ('18', '71', '2025-01-04 06:27:28'),
  ('19', '30', '2024-07-30 10:52:29'),
  ('20', '52', '2024-07-31 23:06:20');
INSERT INTO Cart (`cart_id`, `customer_id`, `created_at`) VALUES
  ('21', '55', '2024-06-09 21:16:23'),
  ('22', '20', '2024-12-17 15:04:05'),
  ('23', '11', '2024-02-17 13:06:47'),
  ('24', '48', '2025-02-19 04:35:03'),
  ('25', '76', '2024-10-14 17:21:42'),
  ('26', '16', '2024-07-29 11:55:42'),
  ('27', '55', '2025-03-20 23:03:18'),
  ('28', '77', '2024-06-08 11:06:36'),
  ('29', '65', '2024-04-18 04:42:30'),
  ('30', '29', '2025-03-09 03:22:54');
INSERT INTO Cart (`cart_id`, `customer_id`, `created_at`) VALUES
  ('31', '72', '2024-07-07 03:48:17'),
  ('32', '74', '2024-04-25 13:54:35'),
  ('33', '80', '2024-11-10 21:41:35'),
  ('34', '4', '2024-11-07 21:53:44'),
  ('35', '35', '2024-01-15 05:17:44'),
  ('36', '40', '2025-04-16 10:22:00'),
  ('37', '24', '2025-03-21 04:36:42'),
  ('38', '52', '2024-02-05 04:47:40'),
  ('39', '4', '2024-02-16 23:33:13'),
  ('40', '49', '2024-08-02 14:21:10');
INSERT INTO Cart (`cart_id`, `customer_id`, `created_at`) VALUES
  ('41', '48', '2024-06-08 23:20:49'),
  ('42', '73', '2024-11-01 02:56:03'),
  ('43', '20', '2024-03-21 19:03:43'),
  ('44', '11', '2024-05-19 14:42:27'),
  ('45', '63', '2024-11-06 14:26:17'),
  ('46', '28', '2025-01-21 16:07:22'),
  ('47', '56', '2024-02-26 09:43:43'),
  ('48', '76', '2024-09-06 16:42:19'),
  ('49', '6', '2024-04-22 12:38:03'),
  ('50', '1', '2024-04-14 09:13:49');
INSERT INTO Cart (`cart_id`, `customer_id`, `created_at`) VALUES
  ('51', '18', '2025-01-26 08:18:20'),
  ('52', '16', '2024-01-04 15:47:27'),
  ('53', '23', '2024-03-07 12:34:45'),
  ('54', '30', '2024-09-13 17:53:42'),
  ('55', '46', '2024-02-06 12:55:47'),
  ('56', '6', '2024-08-11 00:29:58'),
  ('57', '10', '2025-03-17 10:36:27'),
  ('58', '74', '2024-07-26 22:40:26'),
  ('59', '38', '2024-02-28 12:01:20'),
  ('60', '22', '2025-02-14 19:29:53');
INSERT INTO Cart (`cart_id`, `customer_id`, `created_at`) VALUES
  ('61', '47', '2024-02-15 13:54:06'),
  ('62', '32', '2024-08-11 18:25:33'),
  ('63', '11', '2024-07-21 09:47:21'),
  ('64', '29', '2024-06-19 05:04:32'),
  ('65', '15', '2024-09-28 16:12:57'),
  ('66', '45', '2024-06-28 23:52:41'),
  ('67', '19', '2024-04-30 03:09:16'),
  ('68', '26', '2024-03-29 19:09:48'),
  ('69', '10', '2024-03-31 20:31:29'),
  ('70', '73', '2025-01-24 18:28:43');

-- ──────────────────────────────────────────────────
-- Cart_Item (120 rows)
-- ──────────────────────────────────────────────────
INSERT INTO Cart_Item (`cart_item_id`, `cart_id`, `product_id`, `quantity`) VALUES
  ('1', '1', '41', '1'),
  ('2', '1', '20', '2'),
  ('3', '1', '57', '2'),
  ('4', '2', '36', '2'),
  ('5', '2', '76', '3'),
  ('6', '2', '8', '1'),
  ('7', '3', '60', '1'),
  ('8', '3', '58', '2'),
  ('9', '3', '5', '2'),
  ('10', '4', '12', '3');
INSERT INTO Cart_Item (`cart_item_id`, `cart_id`, `product_id`, `quantity`) VALUES
  ('11', '5', '60', '2'),
  ('12', '5', '75', '3'),
  ('13', '5', '71', '3'),
  ('14', '5', '6', '1'),
  ('15', '6', '78', '1'),
  ('16', '6', '61', '1'),
  ('17', '6', '65', '2'),
  ('18', '7', '44', '3'),
  ('19', '8', '65', '3'),
  ('20', '9', '6', '3');
INSERT INTO Cart_Item (`cart_item_id`, `cart_id`, `product_id`, `quantity`) VALUES
  ('21', '9', '32', '2'),
  ('22', '10', '68', '2'),
  ('23', '10', '67', '2'),
  ('24', '10', '79', '2'),
  ('25', '10', '21', '2'),
  ('26', '11', '44', '1'),
  ('27', '11', '77', '2'),
  ('28', '11', '7', '1'),
  ('29', '11', '43', '3'),
  ('30', '12', '37', '2');
INSERT INTO Cart_Item (`cart_item_id`, `cart_id`, `product_id`, `quantity`) VALUES
  ('31', '12', '33', '1'),
  ('32', '12', '78', '3'),
  ('33', '12', '20', '3'),
  ('34', '13', '45', '3'),
  ('35', '13', '40', '3'),
  ('36', '14', '17', '3'),
  ('37', '14', '77', '2'),
  ('38', '14', '11', '3'),
  ('39', '14', '40', '2'),
  ('40', '15', '68', '3');
INSERT INTO Cart_Item (`cart_item_id`, `cart_id`, `product_id`, `quantity`) VALUES
  ('41', '15', '12', '3'),
  ('42', '16', '66', '1'),
  ('43', '16', '47', '1'),
  ('44', '16', '3', '2'),
  ('45', '16', '40', '2'),
  ('46', '17', '29', '1'),
  ('47', '17', '18', '1'),
  ('48', '18', '13', '3'),
  ('49', '18', '65', '3'),
  ('50', '18', '70', '1');
INSERT INTO Cart_Item (`cart_item_id`, `cart_id`, `product_id`, `quantity`) VALUES
  ('51', '19', '80', '2'),
  ('52', '19', '17', '1'),
  ('53', '19', '77', '1'),
  ('54', '20', '80', '3'),
  ('55', '20', '22', '2'),
  ('56', '21', '53', '2'),
  ('57', '22', '57', '2'),
  ('58', '22', '79', '3'),
  ('59', '23', '30', '2'),
  ('60', '23', '69', '1');
INSERT INTO Cart_Item (`cart_item_id`, `cart_id`, `product_id`, `quantity`) VALUES
  ('61', '23', '31', '2'),
  ('62', '23', '40', '3'),
  ('63', '24', '60', '3'),
  ('64', '24', '37', '2'),
  ('65', '24', '49', '1'),
  ('66', '24', '65', '1'),
  ('67', '25', '33', '3'),
  ('68', '25', '7', '2'),
  ('69', '26', '71', '1'),
  ('70', '26', '14', '2');
INSERT INTO Cart_Item (`cart_item_id`, `cart_id`, `product_id`, `quantity`) VALUES
  ('71', '26', '67', '1'),
  ('72', '27', '35', '3'),
  ('73', '27', '58', '1'),
  ('74', '28', '12', '1'),
  ('75', '28', '29', '2'),
  ('76', '28', '58', '1'),
  ('77', '28', '45', '2'),
  ('78', '29', '31', '2'),
  ('79', '29', '50', '1'),
  ('80', '29', '11', '1');
INSERT INTO Cart_Item (`cart_item_id`, `cart_id`, `product_id`, `quantity`) VALUES
  ('81', '30', '13', '1'),
  ('82', '30', '43', '1'),
  ('83', '30', '19', '2'),
  ('84', '31', '18', '1'),
  ('85', '31', '61', '1'),
  ('86', '31', '58', '1'),
  ('87', '31', '79', '2'),
  ('88', '32', '20', '3'),
  ('89', '32', '71', '3'),
  ('90', '33', '15', '1');
INSERT INTO Cart_Item (`cart_item_id`, `cart_id`, `product_id`, `quantity`) VALUES
  ('91', '33', '37', '1'),
  ('92', '33', '31', '1'),
  ('93', '33', '39', '2'),
  ('94', '34', '9', '3'),
  ('95', '34', '15', '1'),
  ('96', '34', '64', '3'),
  ('97', '34', '77', '3'),
  ('98', '35', '19', '2'),
  ('99', '35', '38', '1'),
  ('100', '36', '31', '1');
INSERT INTO Cart_Item (`cart_item_id`, `cart_id`, `product_id`, `quantity`) VALUES
  ('101', '36', '74', '3'),
  ('102', '36', '54', '3'),
  ('103', '37', '68', '2'),
  ('104', '38', '68', '3'),
  ('105', '39', '50', '2'),
  ('106', '40', '50', '2'),
  ('107', '41', '3', '2'),
  ('108', '41', '46', '1'),
  ('109', '41', '9', '3'),
  ('110', '42', '75', '3');
INSERT INTO Cart_Item (`cart_item_id`, `cart_id`, `product_id`, `quantity`) VALUES
  ('111', '43', '18', '3'),
  ('112', '43', '6', '2'),
  ('113', '43', '46', '3'),
  ('114', '44', '60', '3'),
  ('115', '44', '62', '1'),
  ('116', '45', '9', '1'),
  ('117', '45', '59', '2'),
  ('118', '46', '6', '1'),
  ('119', '46', '26', '2'),
  ('120', '47', '66', '2');

-- ──────────────────────────────────────────────────
-- Order (80 rows)
-- ──────────────────────────────────────────────────
INSERT INTO `Order` (`order_id`, `customer_id`, `order_date`, `status`, `total_amount`, `shipping_address`) VALUES
  ('1', '33', '2024-03-19 11:55:49', 'Delivered', '501.98', 'House 12, Street 4, F-7/1, Islamabad'),
  ('2', '43', '2024-08-21 12:47:28', 'Delivered', '1483.85', 'Street 3, Wapda Town, Lahore'),
  ('3', '50', '2024-10-22 11:59:51', 'Processing', '1757.0', 'Plot 14, Clifton Block 5, Karachi'),
  ('4', '35', '2023-08-20 13:38:52', 'Delivered', '3674.76', '45-C, Model Town, Lahore'),
  ('5', '70', '2024-05-01 21:18:19', 'Processing', '1569.13', 'House 33, Hayatabad Phase 3, Peshawar'),
  ('6', '78', '2024-08-28 11:28:02', 'Processing', '3328.3', 'House 67, Bahria Town Phase 4, Islamabad'),
  ('7', '46', '2025-03-16 01:04:42', 'Shipped', '2901.63', '22-B, Satellite Town, Rawalpindi'),
  ('8', '52', '2025-04-26 05:01:09', 'Delivered', '1857.74', 'House 19, PECHS Block 6, Karachi'),
  ('9', '78', '2023-10-08 02:15:49', 'Shipped', '3164.07', '22-B, Satellite Town, Rawalpindi'),
  ('10', '47', '2023-07-04 19:09:43', 'Cancelled', '1852.92', 'House 33, Hayatabad Phase 3, Peshawar');
INSERT INTO `Order` (`order_id`, `customer_id`, `order_date`, `status`, `total_amount`, `shipping_address`) VALUES
  ('11', '48', '2025-01-08 04:33:23', 'Delivered', '1893.86', 'Flat 201, Askari Towers, Lahore'),
  ('12', '41', '2023-09-25 00:47:11', 'Processing', '3045.68', 'House 33, Hayatabad Phase 3, Peshawar'),
  ('13', '67', '2024-02-24 08:45:28', 'Delivered', '1956.0', 'Shop 7, Saddar Bazar, Rawalpindi'),
  ('14', '79', '2024-10-15 06:07:08', 'Cancelled', '1535.14', 'House 19, PECHS Block 6, Karachi'),
  ('15', '10', '2024-08-29 02:51:43', 'Delivered', '2225.98', 'House 19, PECHS Block 6, Karachi'),
  ('16', '41', '2024-12-15 17:18:57', 'Delivered', '3121.54', 'House 88, Phase 6, DHA, Karachi'),
  ('17', '21', '2025-03-15 05:50:23', 'Cancelled', '3304.01', 'Plot 14, Clifton Block 5, Karachi'),
  ('18', '29', '2023-10-21 07:50:31', 'Processing', '853.65', 'House 12, Street 4, F-7/1, Islamabad'),
  ('19', '47', '2024-12-16 04:39:56', 'Shipped', '2649.19', 'Flat 3B, Gulshan-e-Iqbal Block 13, Karachi'),
  ('20', '9', '2024-10-03 16:26:49', 'Cancelled', '1633.56', 'Flat 201, Askari Towers, Lahore');
INSERT INTO `Order` (`order_id`, `customer_id`, `order_date`, `status`, `total_amount`, `shipping_address`) VALUES
  ('21', '74', '2025-03-19 02:28:29', 'Cancelled', '656.07', '22-B, Satellite Town, Rawalpindi'),
  ('22', '67', '2024-12-16 20:37:11', 'Delivered', '1779.74', 'Flat 5, Al-Habib Plaza, Multan'),
  ('23', '17', '2023-07-27 03:33:09', 'Cancelled', '2145.37', 'House 88, Phase 6, DHA, Karachi'),
  ('24', '22', '2024-01-17 11:33:57', 'Cancelled', '1022.16', 'House 88, Phase 6, DHA, Karachi'),
  ('25', '11', '2024-12-16 08:08:40', 'Delivered', '1390.01', 'House 88, Phase 6, DHA, Karachi'),
  ('26', '79', '2023-11-20 18:37:09', 'Delivered', '2563.93', '45-C, Model Town, Lahore'),
  ('27', '80', '2024-12-29 01:52:55', 'Delivered', '3340.63', 'House 12, Street 4, F-7/1, Islamabad'),
  ('28', '11', '2025-01-11 08:41:13', 'Delivered', '538.67', 'Flat 5, Al-Habib Plaza, Multan'),
  ('29', '74', '2024-10-22 20:34:18', 'Delivered', '2078.84', '22-B, Satellite Town, Rawalpindi'),
  ('30', '39', '2024-07-20 09:29:04', 'Delivered', '2354.22', 'House 67, Bahria Town Phase 4, Islamabad');
INSERT INTO `Order` (`order_id`, `customer_id`, `order_date`, `status`, `total_amount`, `shipping_address`) VALUES
  ('31', '8', '2024-09-18 06:21:38', 'Shipped', '1006.03', '45-C, Model Town, Lahore'),
  ('32', '41', '2024-05-19 12:08:48', 'Shipped', '3925.16', 'Street 9, G-11/2, Islamabad'),
  ('33', '66', '2024-09-20 03:17:28', 'Shipped', '2680.85', 'Shop 7, Saddar Bazar, Rawalpindi'),
  ('34', '19', '2024-06-28 19:26:15', 'Shipped', '751.77', 'House 19, PECHS Block 6, Karachi'),
  ('35', '21', '2024-04-16 06:48:10', 'Cancelled', '3725.93', 'House 33, Hayatabad Phase 3, Peshawar'),
  ('36', '66', '2024-10-22 00:05:25', 'Delivered', '2287.28', 'Plot 14, Clifton Block 5, Karachi'),
  ('37', '59', '2024-05-27 01:03:18', 'Processing', '4361.75', 'House 33, Hayatabad Phase 3, Peshawar'),
  ('38', '77', '2024-09-24 09:34:00', 'Delivered', '4011.71', 'House 19, PECHS Block 6, Karachi'),
  ('39', '14', '2024-06-09 12:23:02', 'Delivered', '2138.35', 'Flat 201, Askari Towers, Lahore'),
  ('40', '7', '2024-12-18 09:04:24', 'Processing', '2716.67', 'Plot 14, Clifton Block 5, Karachi');
INSERT INTO `Order` (`order_id`, `customer_id`, `order_date`, `status`, `total_amount`, `shipping_address`) VALUES
  ('41', '58', '2025-02-28 21:39:07', 'Shipped', '3522.28', '45-C, Model Town, Lahore'),
  ('42', '13', '2024-05-13 17:23:48', 'Delivered', '1984.7', '45-C, Model Town, Lahore'),
  ('43', '26', '2023-07-12 01:02:08', 'Shipped', '2850.22', 'House 67, Bahria Town Phase 4, Islamabad'),
  ('44', '43', '2023-10-31 19:57:32', 'Delivered', '3686.46', '45-C, Model Town, Lahore'),
  ('45', '42', '2024-07-07 19:47:53', 'Shipped', '4215.18', 'House 88, Phase 6, DHA, Karachi'),
  ('46', '76', '2024-11-27 15:45:36', 'Delivered', '1745.95', 'House 88, Phase 6, DHA, Karachi'),
  ('47', '61', '2025-04-20 03:26:37', 'Shipped', '3735.36', 'House 88, Phase 6, DHA, Karachi'),
  ('48', '4', '2025-04-02 18:36:14', 'Shipped', '2827.17', 'House 67, Bahria Town Phase 4, Islamabad'),
  ('49', '7', '2025-03-06 23:39:49', 'Processing', '2771.62', 'House 19, PECHS Block 6, Karachi'),
  ('50', '49', '2023-07-03 18:44:07', 'Delivered', '963.27', 'Shop 7, Saddar Bazar, Rawalpindi');
INSERT INTO `Order` (`order_id`, `customer_id`, `order_date`, `status`, `total_amount`, `shipping_address`) VALUES
  ('51', '3', '2024-07-27 22:13:26', 'Shipped', '2180.31', 'Plot 14, Clifton Block 5, Karachi'),
  ('52', '79', '2023-08-03 22:08:33', 'Delivered', '4170.16', 'Shop 7, Saddar Bazar, Rawalpindi'),
  ('53', '72', '2024-11-20 12:20:11', 'Delivered', '1698.96', 'House 33, Hayatabad Phase 3, Peshawar'),
  ('54', '69', '2025-04-28 20:51:44', 'Shipped', '1770.66', 'House 88, Phase 6, DHA, Karachi'),
  ('55', '79', '2024-03-12 17:19:14', 'Cancelled', '2359.35', 'House 88, Phase 6, DHA, Karachi'),
  ('56', '37', '2024-10-13 10:30:22', 'Delivered', '3275.34', 'Plot 14, Clifton Block 5, Karachi'),
  ('57', '36', '2024-12-08 12:57:25', 'Delivered', '1544.33', 'House 19, PECHS Block 6, Karachi'),
  ('58', '45', '2024-03-24 01:18:45', 'Delivered', '4311.63', 'Flat 3B, Gulshan-e-Iqbal Block 13, Karachi'),
  ('59', '45', '2024-10-03 06:12:52', 'Delivered', '4184.64', 'Plot 14, Clifton Block 5, Karachi'),
  ('60', '35', '2023-10-19 03:39:47', 'Delivered', '4222.05', 'House 5, Johar Town, Lahore');
INSERT INTO `Order` (`order_id`, `customer_id`, `order_date`, `status`, `total_amount`, `shipping_address`) VALUES
  ('61', '31', '2024-11-25 07:40:14', 'Delivered', '1356.2', 'House 12, Street 4, F-7/1, Islamabad'),
  ('62', '13', '2023-09-11 21:49:08', 'Delivered', '2065.2', 'House 12, Street 4, F-7/1, Islamabad'),
  ('63', '71', '2025-03-30 15:30:41', 'Processing', '4408.33', 'Shop 7, Saddar Bazar, Rawalpindi'),
  ('64', '37', '2023-08-31 20:36:14', 'Delivered', '1682.85', 'Plot 14, Clifton Block 5, Karachi'),
  ('65', '5', '2023-11-28 01:53:25', 'Processing', '4139.9', 'Flat 5, Al-Habib Plaza, Multan'),
  ('66', '64', '2024-03-23 01:00:19', 'Delivered', '1123.19', 'House 5, Johar Town, Lahore'),
  ('67', '78', '2024-03-18 14:41:34', 'Cancelled', '795.3', 'Plot 14, Clifton Block 5, Karachi'),
  ('68', '64', '2024-10-29 14:17:12', 'Processing', '4040.43', 'Flat 5, Al-Habib Plaza, Multan'),
  ('69', '15', '2025-03-25 08:45:11', 'Delivered', '1722.34', 'House 12, Street 4, F-7/1, Islamabad'),
  ('70', '44', '2023-12-15 05:39:54', 'Delivered', '3631.69', '22-B, Satellite Town, Rawalpindi');
INSERT INTO `Order` (`order_id`, `customer_id`, `order_date`, `status`, `total_amount`, `shipping_address`) VALUES
  ('71', '52', '2023-08-28 12:42:06', 'Delivered', '3782.01', '45-C, Model Town, Lahore'),
  ('72', '18', '2023-06-07 08:24:15', 'Cancelled', '2331.43', 'House 33, Hayatabad Phase 3, Peshawar'),
  ('73', '35', '2025-01-07 00:16:41', 'Shipped', '4309.24', 'Street 9, G-11/2, Islamabad'),
  ('74', '31', '2024-04-10 05:25:43', 'Processing', '607.82', 'Plot 14, Clifton Block 5, Karachi'),
  ('75', '40', '2024-03-29 11:39:14', 'Delivered', '3214.71', 'Shop 7, Saddar Bazar, Rawalpindi'),
  ('76', '18', '2025-02-10 11:26:44', 'Delivered', '2334.45', 'Plot 14, Clifton Block 5, Karachi'),
  ('77', '61', '2024-01-10 07:43:48', 'Delivered', '3493.0', 'House 5, Johar Town, Lahore'),
  ('78', '11', '2024-06-05 02:58:36', 'Delivered', '2530.85', 'Flat 3B, Gulshan-e-Iqbal Block 13, Karachi'),
  ('79', '8', '2023-12-25 18:34:09', 'Cancelled', '3789.41', '45-C, Model Town, Lahore'),
  ('80', '42', '2025-04-27 06:45:37', 'Shipped', '3896.12', 'House 33, Hayatabad Phase 3, Peshawar');

-- ──────────────────────────────────────────────────
-- Order_Item (160 rows)
-- ──────────────────────────────────────────────────
INSERT INTO Order_Item (`order_item_id`, `order_id`, `product_id`, `quantity`, `unit_price`) VALUES
  ('1', '1', '66', '1', '737.4'),
  ('2', '2', '17', '3', '317.18'),
  ('3', '2', '66', '2', '707.13'),
  ('4', '3', '40', '1', '354.7'),
  ('5', '3', '3', '3', '480.56'),
  ('6', '3', '51', '2', '463.9'),
  ('7', '4', '9', '1', '596.9'),
  ('8', '4', '70', '2', '409.09'),
  ('9', '5', '37', '1', '485.02'),
  ('10', '6', '54', '2', '397.58');
INSERT INTO Order_Item (`order_item_id`, `order_id`, `product_id`, `quantity`, `unit_price`) VALUES
  ('11', '6', '48', '3', '464.39'),
  ('12', '6', '49', '3', '458.03'),
  ('13', '7', '45', '3', '692.63'),
  ('14', '8', '68', '1', '299.21'),
  ('15', '8', '17', '1', '331.31'),
  ('16', '9', '60', '2', '600.82'),
  ('17', '9', '70', '1', '402.42'),
  ('18', '10', '45', '3', '704.56'),
  ('19', '10', '20', '1', '979.63'),
  ('20', '11', '54', '1', '388.83');
INSERT INTO Order_Item (`order_item_id`, `order_id`, `product_id`, `quantity`, `unit_price`) VALUES
  ('21', '11', '79', '1', '606.78'),
  ('22', '11', '3', '3', '465.79'),
  ('23', '12', '7', '1', '853.83'),
  ('24', '12', '32', '1', '731.79'),
  ('25', '12', '6', '2', '501.14'),
  ('26', '13', '74', '3', '398.39'),
  ('27', '14', '42', '3', '1078.59'),
  ('28', '14', '31', '2', '674.26'),
  ('29', '14', '39', '1', '669.31'),
  ('30', '15', '76', '1', '732.32');
INSERT INTO Order_Item (`order_item_id`, `order_id`, `product_id`, `quantity`, `unit_price`) VALUES
  ('31', '15', '23', '3', '855.56'),
  ('32', '15', '55', '3', '1071.84'),
  ('33', '16', '54', '2', '384.98'),
  ('34', '16', '53', '3', '633.09'),
  ('35', '17', '31', '3', '658.64'),
  ('36', '17', '29', '2', '535.56'),
  ('37', '18', '72', '2', '434.85'),
  ('38', '19', '68', '1', '284.29'),
  ('39', '19', '18', '1', '802.66'),
  ('40', '19', '50', '2', '568.53');
INSERT INTO Order_Item (`order_item_id`, `order_id`, `product_id`, `quantity`, `unit_price`) VALUES
  ('41', '20', '69', '1', '732.73'),
  ('42', '21', '35', '3', '387.01'),
  ('43', '22', '6', '3', '537.58'),
  ('44', '22', '10', '3', '478.3'),
  ('45', '22', '25', '1', '529.9'),
  ('46', '23', '39', '1', '662.93'),
  ('47', '23', '2', '1', '637.77'),
  ('48', '24', '62', '2', '551.89'),
  ('49', '24', '32', '3', '760.58'),
  ('50', '24', '78', '2', '913.22');
INSERT INTO Order_Item (`order_item_id`, `order_id`, `product_id`, `quantity`, `unit_price`) VALUES
  ('51', '25', '60', '2', '615.13'),
  ('52', '25', '69', '3', '697.84'),
  ('53', '26', '60', '3', '624.96'),
  ('54', '26', '13', '2', '683.3'),
  ('55', '27', '48', '1', '461.28'),
  ('56', '28', '29', '3', '542.38'),
  ('57', '28', '19', '2', '790.41'),
  ('58', '28', '3', '1', '458.34'),
  ('59', '29', '30', '1', '369.79'),
  ('60', '29', '49', '3', '436.66');
INSERT INTO Order_Item (`order_item_id`, `order_id`, `product_id`, `quantity`, `unit_price`) VALUES
  ('61', '30', '44', '3', '1050.34'),
  ('62', '30', '33', '2', '516.95'),
  ('63', '30', '63', '2', '557.62'),
  ('64', '31', '18', '2', '836.22'),
  ('65', '32', '70', '1', '409.26'),
  ('66', '33', '5', '2', '429.79'),
  ('67', '33', '10', '3', '449.44'),
  ('68', '33', '7', '3', '838.32'),
  ('69', '34', '2', '2', '590.18'),
  ('70', '35', '8', '3', '510.82');
INSERT INTO Order_Item (`order_item_id`, `order_id`, `product_id`, `quantity`, `unit_price`) VALUES
  ('71', '35', '80', '3', '638.3'),
  ('72', '36', '3', '2', '470.02'),
  ('73', '36', '1', '3', '398.9'),
  ('74', '37', '36', '3', '713.31'),
  ('75', '37', '69', '1', '728.92'),
  ('76', '37', '37', '1', '469.46'),
  ('77', '38', '20', '2', '965.02'),
  ('78', '38', '31', '2', '695.07'),
  ('79', '38', '25', '1', '563.12'),
  ('80', '39', '52', '3', '814.51');
INSERT INTO Order_Item (`order_item_id`, `order_id`, `product_id`, `quantity`, `unit_price`) VALUES
  ('81', '39', '59', '3', '356.42'),
  ('82', '40', '5', '2', '400.26'),
  ('83', '41', '71', '1', '603.6'),
  ('84', '41', '61', '1', '632.22'),
  ('85', '42', '56', '1', '790.49'),
  ('86', '42', '43', '1', '397.42'),
  ('87', '43', '28', '3', '819.51'),
  ('88', '44', '61', '3', '646.64'),
  ('89', '44', '35', '3', '409.64'),
  ('90', '44', '6', '1', '524.36');
INSERT INTO Order_Item (`order_item_id`, `order_id`, `product_id`, `quantity`, `unit_price`) VALUES
  ('91', '45', '41', '1', '488.1'),
  ('92', '46', '19', '3', '767.32'),
  ('93', '46', '51', '2', '472.47'),
  ('94', '46', '10', '3', '475.97'),
  ('95', '47', '50', '3', '560.99'),
  ('96', '47', '18', '3', '836.55'),
  ('97', '48', '45', '1', '716.82'),
  ('98', '48', '7', '3', '848.23'),
  ('99', '48', '13', '2', '718.32'),
  ('100', '49', '4', '2', '731.54');
INSERT INTO Order_Item (`order_item_id`, `order_id`, `product_id`, `quantity`, `unit_price`) VALUES
  ('101', '49', '35', '2', '391.69'),
  ('102', '50', '49', '3', '444.96'),
  ('103', '50', '56', '3', '775.14'),
  ('104', '50', '24', '1', '617.65'),
  ('105', '51', '10', '3', '450.26'),
  ('106', '51', '11', '1', '726.59'),
  ('107', '51', '35', '2', '401.97'),
  ('108', '52', '14', '2', '375.09'),
  ('109', '52', '12', '2', '423.27'),
  ('110', '53', '17', '2', '306.12');
INSERT INTO Order_Item (`order_item_id`, `order_id`, `product_id`, `quantity`, `unit_price`) VALUES
  ('111', '54', '72', '1', '434.63'),
  ('112', '54', '66', '3', '709.62'),
  ('113', '55', '77', '2', '716.91'),
  ('114', '56', '2', '1', '602.67'),
  ('115', '56', '38', '3', '879.13'),
  ('116', '57', '74', '3', '407.04'),
  ('117', '58', '22', '2', '639.27'),
  ('118', '58', '18', '1', '816.67'),
  ('119', '59', '56', '2', '766.54'),
  ('120', '60', '10', '1', '455.05');
INSERT INTO Order_Item (`order_item_id`, `order_id`, `product_id`, `quantity`, `unit_price`) VALUES
  ('121', '60', '47', '2', '687.07'),
  ('122', '61', '79', '2', '607.19'),
  ('123', '61', '26', '2', '657.58'),
  ('124', '61', '59', '3', '360.53'),
  ('125', '62', '43', '3', '374.93'),
  ('126', '62', '57', '1', '579.62'),
  ('127', '63', '42', '1', '1086.34'),
  ('128', '63', '78', '1', '928.64'),
  ('129', '64', '41', '3', '527.04'),
  ('130', '64', '38', '3', '857.99');
INSERT INTO Order_Item (`order_item_id`, `order_id`, `product_id`, `quantity`, `unit_price`) VALUES
  ('131', '65', '42', '2', '1023.96'),
  ('132', '66', '15', '3', '598.57'),
  ('133', '66', '73', '3', '350.81'),
  ('134', '67', '60', '1', '633.89'),
  ('135', '68', '38', '2', '887.63'),
  ('136', '68', '9', '1', '577.72'),
  ('137', '69', '39', '3', '695.09'),
  ('138', '69', '31', '2', '667.31'),
  ('139', '69', '33', '3', '481.62'),
  ('140', '70', '75', '3', '598.61');
INSERT INTO Order_Item (`order_item_id`, `order_id`, `product_id`, `quantity`, `unit_price`) VALUES
  ('141', '70', '52', '1', '802.02'),
  ('142', '71', '69', '1', '726.22'),
  ('143', '71', '77', '1', '680.41'),
  ('144', '72', '46', '3', '339.56'),
  ('145', '72', '22', '2', '667.45'),
  ('146', '72', '79', '2', '664.52'),
  ('147', '73', '14', '1', '378.98'),
  ('148', '73', '2', '3', '608.87'),
  ('149', '74', '75', '2', '593.04'),
  ('150', '74', '74', '3', '404.56');
INSERT INTO Order_Item (`order_item_id`, `order_id`, `product_id`, `quantity`, `unit_price`) VALUES
  ('151', '74', '29', '3', '561.57'),
  ('152', '75', '45', '2', '759.41'),
  ('153', '76', '38', '1', '851.2'),
  ('154', '77', '19', '2', '771.37'),
  ('155', '78', '27', '2', '614.48'),
  ('156', '78', '67', '3', '439.14'),
  ('157', '79', '58', '3', '410.1'),
  ('158', '79', '41', '2', '493.48'),
  ('159', '79', '9', '3', '576.23'),
  ('160', '80', '32', '3', '729.96');

-- ──────────────────────────────────────────────────
-- Payment (80 rows)
-- ──────────────────────────────────────────────────
INSERT INTO Payment (`payment_id`, `order_id`, `method`, `amount`, `status`, `payment_date`) VALUES
  ('1', '1', 'EasyPaisa', '501.98', 'Paid', '2024-03-19 11:55:49'),
  ('2', '2', 'Card', '1483.85', 'Paid', '2024-08-21 12:47:28'),
  ('3', '3', 'EasyPaisa', '1757.0', 'Paid', '2024-10-22 11:59:51'),
  ('4', '4', 'JazzCash', '3674.76', 'Paid', '2023-08-20 13:38:52'),
  ('5', '5', 'Cash', '1569.13', 'Paid', '2024-05-01 21:18:19'),
  ('6', '6', 'EasyPaisa', '3328.3', 'Paid', '2024-08-28 11:28:02'),
  ('7', '7', 'EasyPaisa', '2901.63', 'Paid', '2025-03-16 01:04:42'),
  ('8', '8', 'EasyPaisa', '1857.74', 'Pending', NULL),
  ('9', '9', 'Bank Transfer', '3164.07', 'Paid', '2023-10-08 02:15:49'),
  ('10', '10', 'Cash', '1852.92', 'Pending', NULL);
INSERT INTO Payment (`payment_id`, `order_id`, `method`, `amount`, `status`, `payment_date`) VALUES
  ('11', '11', 'EasyPaisa', '1893.86', 'Paid', '2025-01-08 04:33:23'),
  ('12', '12', 'JazzCash', '3045.68', 'Paid', '2023-09-25 00:47:11'),
  ('13', '13', 'Bank Transfer', '1956.0', 'Paid', '2024-02-24 08:45:28'),
  ('14', '14', 'JazzCash', '1535.14', 'Paid', '2024-10-15 06:07:08'),
  ('15', '15', 'JazzCash', '2225.98', 'Paid', '2024-08-29 02:51:43'),
  ('16', '16', 'EasyPaisa', '3121.54', 'Pending', NULL),
  ('17', '17', 'JazzCash', '3304.01', 'Pending', NULL),
  ('18', '18', 'JazzCash', '853.65', 'Paid', '2023-10-21 07:50:31'),
  ('19', '19', 'JazzCash', '2649.19', 'Paid', '2024-12-16 04:39:56'),
  ('20', '20', 'Cash', '1633.56', 'Paid', '2024-10-03 16:26:49');
INSERT INTO Payment (`payment_id`, `order_id`, `method`, `amount`, `status`, `payment_date`) VALUES
  ('21', '21', 'EasyPaisa', '656.07', 'Paid', '2025-03-19 02:28:29'),
  ('22', '22', 'JazzCash', '1779.74', 'Paid', '2024-12-16 20:37:11'),
  ('23', '23', 'EasyPaisa', '2145.37', 'Paid', '2023-07-27 03:33:09'),
  ('24', '24', 'EasyPaisa', '1022.16', 'Paid', '2024-01-17 11:33:57'),
  ('25', '25', 'JazzCash', '1390.01', 'Paid', '2024-12-16 08:08:40'),
  ('26', '26', 'JazzCash', '2563.93', 'Failed', NULL),
  ('27', '27', 'JazzCash', '3340.63', 'Paid', '2024-12-29 01:52:55'),
  ('28', '28', 'Cash', '538.67', 'Paid', '2025-01-11 08:41:13'),
  ('29', '29', 'JazzCash', '2078.84', 'Paid', '2024-10-22 20:34:18'),
  ('30', '30', 'EasyPaisa', '2354.22', 'Paid', '2024-07-20 09:29:04');
INSERT INTO Payment (`payment_id`, `order_id`, `method`, `amount`, `status`, `payment_date`) VALUES
  ('31', '31', 'Cash', '1006.03', 'Pending', NULL),
  ('32', '32', 'Card', '3925.16', 'Paid', '2024-05-19 12:08:48'),
  ('33', '33', 'JazzCash', '2680.85', 'Paid', '2024-09-20 03:17:28'),
  ('34', '34', 'EasyPaisa', '751.77', 'Pending', NULL),
  ('35', '35', 'JazzCash', '3725.93', 'Paid', '2024-04-16 06:48:10'),
  ('36', '36', 'Cash', '2287.28', 'Pending', NULL),
  ('37', '37', 'EasyPaisa', '4361.75', 'Paid', '2024-05-27 01:03:18'),
  ('38', '38', 'JazzCash', '4011.71', 'Paid', '2024-09-24 09:34:00'),
  ('39', '39', 'JazzCash', '2138.35', 'Paid', '2024-06-09 12:23:02'),
  ('40', '40', 'Bank Transfer', '2716.67', 'Paid', '2024-12-18 09:04:24');
INSERT INTO Payment (`payment_id`, `order_id`, `method`, `amount`, `status`, `payment_date`) VALUES
  ('41', '41', 'Cash', '3522.28', 'Paid', '2025-02-28 21:39:07'),
  ('42', '42', 'Bank Transfer', '1984.7', 'Pending', NULL),
  ('43', '43', 'EasyPaisa', '2850.22', 'Pending', NULL),
  ('44', '44', 'Cash', '3686.46', 'Paid', '2023-10-31 19:57:32'),
  ('45', '45', 'JazzCash', '4215.18', 'Failed', NULL),
  ('46', '46', 'Cash', '1745.95', 'Pending', NULL),
  ('47', '47', 'Bank Transfer', '3735.36', 'Paid', '2025-04-20 03:26:37'),
  ('48', '48', 'Card', '2827.17', 'Paid', '2025-04-02 18:36:14'),
  ('49', '49', 'EasyPaisa', '2771.62', 'Pending', NULL),
  ('50', '50', 'EasyPaisa', '963.27', 'Failed', NULL);
INSERT INTO Payment (`payment_id`, `order_id`, `method`, `amount`, `status`, `payment_date`) VALUES
  ('51', '51', 'Bank Transfer', '2180.31', 'Paid', '2024-07-27 22:13:26'),
  ('52', '52', 'Bank Transfer', '4170.16', 'Paid', '2023-08-03 22:08:33'),
  ('53', '53', 'EasyPaisa', '1698.96', 'Paid', '2024-11-20 12:20:11'),
  ('54', '54', 'JazzCash', '1770.66', 'Paid', '2025-04-28 20:51:44'),
  ('55', '55', 'Cash', '2359.35', 'Paid', '2024-03-12 17:19:14'),
  ('56', '56', 'EasyPaisa', '3275.34', 'Paid', '2024-10-13 10:30:22'),
  ('57', '57', 'EasyPaisa', '1544.33', 'Paid', '2024-12-08 12:57:25'),
  ('58', '58', 'JazzCash', '4311.63', 'Paid', '2024-03-24 01:18:45'),
  ('59', '59', 'JazzCash', '4184.64', 'Paid', '2024-10-03 06:12:52'),
  ('60', '60', 'EasyPaisa', '4222.05', 'Pending', NULL);
INSERT INTO Payment (`payment_id`, `order_id`, `method`, `amount`, `status`, `payment_date`) VALUES
  ('61', '61', 'Card', '1356.2', 'Paid', '2024-11-25 07:40:14'),
  ('62', '62', 'Cash', '2065.2', 'Failed', NULL),
  ('63', '63', 'Bank Transfer', '4408.33', 'Pending', NULL),
  ('64', '64', 'Card', '1682.85', 'Pending', NULL),
  ('65', '65', 'Cash', '4139.9', 'Pending', NULL),
  ('66', '66', 'EasyPaisa', '1123.19', 'Paid', '2024-03-23 01:00:19'),
  ('67', '67', 'Bank Transfer', '795.3', 'Pending', NULL),
  ('68', '68', 'JazzCash', '4040.43', 'Paid', '2024-10-29 14:17:12'),
  ('69', '69', 'JazzCash', '1722.34', 'Paid', '2025-03-25 08:45:11'),
  ('70', '70', 'EasyPaisa', '3631.69', 'Paid', '2023-12-15 05:39:54');
INSERT INTO Payment (`payment_id`, `order_id`, `method`, `amount`, `status`, `payment_date`) VALUES
  ('71', '71', 'JazzCash', '3782.01', 'Pending', NULL),
  ('72', '72', 'Cash', '2331.43', 'Paid', '2023-06-07 08:24:15'),
  ('73', '73', 'EasyPaisa', '4309.24', 'Failed', NULL),
  ('74', '74', 'EasyPaisa', '607.82', 'Failed', NULL),
  ('75', '75', 'EasyPaisa', '3214.71', 'Paid', '2024-03-29 11:39:14'),
  ('76', '76', 'Bank Transfer', '2334.45', 'Paid', '2025-02-10 11:26:44'),
  ('77', '77', 'JazzCash', '3493.0', 'Paid', '2024-01-10 07:43:48'),
  ('78', '78', 'JazzCash', '2530.85', 'Paid', '2024-06-05 02:58:36'),
  ('79', '79', 'Cash', '3789.41', 'Paid', '2023-12-25 18:34:09'),
  ('80', '80', 'EasyPaisa', '3896.12', 'Paid', '2025-04-27 06:45:37');

-- ──────────────────────────────────────────────────
-- Shipping (68 rows)
-- ──────────────────────────────────────────────────
INSERT INTO Shipping (`shipping_id`, `order_id`, `courier_name`, `tracking_number`, `shipped_date`, `estimated_delivery`, `status`) VALUES
  ('1', '1', 'Leopards', 'LEO-618746', '2024-03-21', '2024-03-25', 'Delivered'),
  ('2', '2', 'M&P', 'M&P-454161', '2024-08-24', '2024-08-27', 'Delivered'),
  ('3', '3', 'BlueEx', 'BLU-993829', '2024-10-24', '2024-10-28', 'Processing'),
  ('4', '4', 'Swyft', 'SWY-899281', '2023-08-21', '2023-08-23', 'Delivered'),
  ('5', '5', 'TCS', 'TCS-756596', '2024-05-03', '2024-05-05', 'Processing'),
  ('6', '6', 'TCS', 'TCS-999312', '2024-08-29', '2024-09-03', 'Processing'),
  ('7', '7', 'PostEx', 'POS-100708', '2025-03-18', '2025-03-21', 'Dispatched'),
  ('8', '8', 'Swyft', 'SWY-416528', '2025-04-27', '2025-05-01', 'Delivered'),
  ('9', '9', 'TCS', 'TCS-786385', '2023-10-10', '2023-10-14', 'Dispatched'),
  ('10', '11', 'M&P', 'M&P-796787', '2025-01-11', '2025-01-14', 'Delivered');
INSERT INTO Shipping (`shipping_id`, `order_id`, `courier_name`, `tracking_number`, `shipped_date`, `estimated_delivery`, `status`) VALUES
  ('11', '12', 'TCS', 'TCS-515594', '2023-09-28', '2023-10-02', 'Processing'),
  ('12', '13', 'Swyft', 'SWY-833417', '2024-02-25', '2024-03-01', 'Delivered'),
  ('13', '15', 'Swyft', 'SWY-195629', '2024-09-01', '2024-09-03', 'Delivered'),
  ('14', '16', 'TCS', 'TCS-323788', '2024-12-17', '2024-12-19', 'Delivered'),
  ('15', '18', 'Leopards', 'LEO-722518', '2023-10-22', '2023-10-27', 'Processing'),
  ('16', '19', 'TCS', 'TCS-108454', '2024-12-19', '2024-12-23', 'Dispatched'),
  ('17', '22', 'PostEx', 'POS-827744', '2024-12-17', '2024-12-22', 'Delivered'),
  ('18', '25', 'TCS', 'TCS-340068', '2024-12-18', '2024-12-20', 'Delivered'),
  ('19', '26', 'Swyft', 'SWY-945106', '2023-11-21', '2023-11-23', 'Delivered'),
  ('20', '27', 'M&P', 'M&P-485416', '2024-12-31', '2025-01-03', 'Delivered');
INSERT INTO Shipping (`shipping_id`, `order_id`, `courier_name`, `tracking_number`, `shipped_date`, `estimated_delivery`, `status`) VALUES
  ('21', '28', 'PostEx', 'POS-911032', '2025-01-12', '2025-01-15', 'Delivered'),
  ('22', '29', 'TCS', 'TCS-656278', '2024-10-25', '2024-10-27', 'Delivered'),
  ('23', '30', 'BlueEx', 'BLU-781595', '2024-07-21', '2024-07-26', 'Delivered'),
  ('24', '31', 'M&P', 'M&P-857524', '2024-09-19', '2024-09-22', 'In Transit'),
  ('25', '32', 'BlueEx', 'BLU-819916', '2024-05-21', '2024-05-24', 'Dispatched'),
  ('26', '33', 'TCS', 'TCS-246814', '2024-09-21', '2024-09-26', 'In Transit'),
  ('27', '34', 'PostEx', 'POS-429780', '2024-06-29', '2024-07-02', 'In Transit'),
  ('28', '36', 'Swyft', 'SWY-188341', '2024-10-23', '2024-10-27', 'Delivered'),
  ('29', '37', 'Swyft', 'SWY-128127', '2024-05-30', '2024-06-03', 'Processing'),
  ('30', '38', 'Leopards', 'LEO-642899', '2024-09-27', '2024-09-30', 'Delivered');
INSERT INTO Shipping (`shipping_id`, `order_id`, `courier_name`, `tracking_number`, `shipped_date`, `estimated_delivery`, `status`) VALUES
  ('31', '39', 'Swyft', 'SWY-510780', '2024-06-11', '2024-06-13', 'Delivered'),
  ('32', '40', 'Leopards', 'LEO-618927', '2024-12-20', '2024-12-22', 'Processing'),
  ('33', '41', 'Leopards', 'LEO-623850', '2025-03-03', '2025-03-05', 'Dispatched'),
  ('34', '42', 'M&P', 'M&P-431845', '2024-05-14', '2024-05-19', 'Delivered'),
  ('35', '43', 'BlueEx', 'BLU-541307', '2023-07-14', '2023-07-17', 'In Transit'),
  ('36', '44', 'TCS', 'TCS-117500', '2023-11-03', '2023-11-05', 'Delivered'),
  ('37', '45', 'TCS', 'TCS-374921', '2024-07-08', '2024-07-10', 'Dispatched'),
  ('38', '46', 'PostEx', 'POS-631219', '2024-11-29', '2024-12-04', 'Delivered'),
  ('39', '47', 'PostEx', 'POS-835901', '2025-04-22', '2025-04-24', 'Dispatched'),
  ('40', '48', 'M&P', 'M&P-187657', '2025-04-04', '2025-04-06', 'Dispatched');
INSERT INTO Shipping (`shipping_id`, `order_id`, `courier_name`, `tracking_number`, `shipped_date`, `estimated_delivery`, `status`) VALUES
  ('41', '49', 'Leopards', 'LEO-662445', '2025-03-08', '2025-03-13', 'Processing'),
  ('42', '50', 'BlueEx', 'BLU-765105', '2023-07-06', '2023-07-08', 'Delivered'),
  ('43', '51', 'M&P', 'M&P-832614', '2024-07-29', '2024-08-01', 'Dispatched'),
  ('44', '52', 'Leopards', 'LEO-190400', '2023-08-05', '2023-08-07', 'Delivered'),
  ('45', '53', 'PostEx', 'POS-742039', '2024-11-23', '2024-11-25', 'Delivered'),
  ('46', '54', 'M&P', 'M&P-798435', '2025-05-01', '2025-05-04', 'Dispatched'),
  ('47', '56', 'TCS', 'TCS-842287', '2024-10-14', '2024-10-16', 'Delivered'),
  ('48', '57', 'Leopards', 'LEO-620526', '2024-12-10', '2024-12-14', 'Delivered'),
  ('49', '58', 'Leopards', 'LEO-489933', '2024-03-25', '2024-03-29', 'Delivered'),
  ('50', '59', 'Swyft', 'SWY-223791', '2024-10-04', '2024-10-08', 'Delivered');
INSERT INTO Shipping (`shipping_id`, `order_id`, `courier_name`, `tracking_number`, `shipped_date`, `estimated_delivery`, `status`) VALUES
  ('51', '60', 'PostEx', 'POS-385192', '2023-10-22', '2023-10-24', 'Delivered'),
  ('52', '61', 'M&P', 'M&P-846925', '2024-11-28', '2024-11-30', 'Delivered'),
  ('53', '62', 'PostEx', 'POS-577309', '2023-09-14', '2023-09-18', 'Delivered'),
  ('54', '63', 'TCS', 'TCS-623879', '2025-04-02', '2025-04-05', 'Processing'),
  ('55', '64', 'M&P', 'M&P-264951', '2023-09-02', '2023-09-04', 'Delivered'),
  ('56', '65', 'BlueEx', 'BLU-806866', '2023-12-01', '2023-12-03', 'Processing'),
  ('57', '66', 'Leopards', 'LEO-876764', '2024-03-26', '2024-03-28', 'Delivered'),
  ('58', '68', 'TCS', 'TCS-112884', '2024-10-30', '2024-11-01', 'Processing'),
  ('59', '69', 'PostEx', 'POS-481657', '2025-03-27', '2025-03-30', 'Delivered'),
  ('60', '70', 'Leopards', 'LEO-999138', '2023-12-16', '2023-12-21', 'Delivered');
INSERT INTO Shipping (`shipping_id`, `order_id`, `courier_name`, `tracking_number`, `shipped_date`, `estimated_delivery`, `status`) VALUES
  ('61', '71', 'Leopards', 'LEO-437433', '2023-08-29', '2023-09-03', 'Delivered'),
  ('62', '73', 'Swyft', 'SWY-435476', '2025-01-09', '2025-01-11', 'In Transit'),
  ('63', '74', 'TCS', 'TCS-626428', '2024-04-13', '2024-04-15', 'Processing'),
  ('64', '75', 'Leopards', 'LEO-334026', '2024-04-01', '2024-04-03', 'Delivered'),
  ('65', '76', 'PostEx', 'POS-172274', '2025-02-12', '2025-02-16', 'Delivered'),
  ('66', '77', 'M&P', 'M&P-443199', '2024-01-11', '2024-01-16', 'Delivered'),
  ('67', '78', 'TCS', 'TCS-486839', '2024-06-06', '2024-06-10', 'Delivered'),
  ('68', '80', 'BlueEx', 'BLU-922615', '2025-04-29', '2025-05-02', 'In Transit');

-- ──────────────────────────────────────────────────
-- Review (65 rows)
-- ──────────────────────────────────────────────────
INSERT INTO Review (`review_id`, `product_id`, `customer_id`, `rating`, `comment`, `review_date`) VALUES
  ('1', '48', '76', '5', 'Took a little time to arrive but totally worth the wait.', '2024-12-11 07:09:00'),
  ('2', '53', '4', '4', 'The necklace broke after a week. Disappointed.', '2024-05-20 20:53:44'),
  ('3', '2', '43', '1', 'The ring fits perfectly. Will definitely order more.', '2024-04-10 03:13:33'),
  ('4', '31', '54', '5', 'Came exactly as described, very happy with my purchase.', '2023-10-24 22:17:05'),
  ('5', '6', '30', '5', 'Lovely bracelet, very well made. Comfortable to wear.', '2024-06-16 14:47:05'),
  ('6', '75', '13', '5', 'High quality handmade work. Seller was very responsive.', '2025-03-14 12:04:37'),
  ('7', '73', '8', '5', 'High quality handmade work. Seller was very responsive.', '2024-01-29 09:16:54'),
  ('8', '41', '51', '4', 'Beautifully crafted. You can tell a lot of love went into it.', '2024-09-06 08:14:04'),
  ('9', '26', '18', '5', 'Perfect gift for my friend. She was delighted!', '2023-11-07 03:10:28'),
  ('10', '60', '41', '5', 'Perfect gift for my friend. She was delighted!', '2024-11-30 11:49:13');
INSERT INTO Review (`review_id`, `product_id`, `customer_id`, `rating`, `comment`, `review_date`) VALUES
  ('11', '58', '40', '5', 'The colors are exactly as shown in the photos.', '2023-10-01 02:10:51'),
  ('12', '39', '78', '1', 'Took a little time to arrive but totally worth the wait.', '2024-05-01 04:05:45'),
  ('13', '32', '46', '5', 'Good seller but delivery took longer than expected.', '2023-07-21 21:19:16'),
  ('14', '23', '4', '5', 'Average quality. Expected better finishing for the price.', '2024-12-21 23:35:15'),
  ('15', '13', '60', '2', 'High quality handmade work. Seller was very responsive.', '2023-10-03 00:03:53'),
  ('16', '29', '17', '4', 'The ring fits perfectly. Will definitely order more.', '2024-06-16 21:40:41'),
  ('17', '11', '75', '5', 'The colors are exactly as shown in the photos.', '2023-08-16 00:04:12'),
  ('18', '57', '17', '2', 'Beautifully crafted. You can tell a lot of love went into it.', '2023-10-04 01:29:03'),
  ('19', '22', '74', '5', 'The ring fits perfectly. Will definitely order more.', '2024-10-21 00:24:43'),
  ('20', '55', '23', '4', 'Took a little time to arrive but totally worth the wait.', '2023-12-09 08:17:28');
INSERT INTO Review (`review_id`, `product_id`, `customer_id`, `rating`, `comment`, `review_date`) VALUES
  ('21', '20', '5', '5', 'Fast shipping and lovely packaging. 5 stars!', '2025-02-21 07:41:18'),
  ('22', '64', '53', '5', 'Looks okay but not as vibrant as the photos.', '2023-08-02 02:17:24'),
  ('23', '18', '54', '4', 'Good seller but delivery took longer than expected.', '2024-02-11 20:51:34'),
  ('24', '3', '49', '4', 'Looks okay but not as vibrant as the photos.', '2024-12-09 15:22:58'),
  ('25', '73', '65', '4', 'The ring fits perfectly. Will definitely order more.', '2024-03-03 05:01:20'),
  ('26', '77', '29', '1', 'The colors are exactly as shown in the photos.', '2023-07-30 15:33:22'),
  ('27', '75', '30', '3', 'Perfect gift for my friend. She was delighted!', '2024-02-09 21:15:17'),
  ('28', '69', '8', '4', 'Stunning piece! Got so many compliments on it.', '2024-07-02 11:59:53'),
  ('29', '23', '23', '4', 'Stunning piece! Got so many compliments on it.', '2024-04-21 23:44:22'),
  ('30', '76', '4', '4', 'Stunning piece! Got so many compliments on it.', '2024-12-29 04:36:12');
INSERT INTO Review (`review_id`, `product_id`, `customer_id`, `rating`, `comment`, `review_date`) VALUES
  ('31', '64', '70', '4', 'Packaging was lovely. The earrings are so delicate and pretty.', '2024-10-15 01:05:03'),
  ('32', '30', '78', '4', 'Absolutely love this piece! The quality is amazing.', '2024-11-21 15:00:21'),
  ('33', '79', '26', '3', 'Beautifully crafted. You can tell a lot of love went into it.', '2023-11-29 10:03:01'),
  ('34', '19', '76', '3', 'Perfect gift for my friend. She was delighted!', '2024-11-20 11:04:23'),
  ('35', '51', '76', '2', 'Beautifully crafted. You can tell a lot of love went into it.', '2024-04-05 10:08:10'),
  ('36', '56', '63', '4', 'Packaging was lovely. The earrings are so delicate and pretty.', '2024-12-27 22:56:59'),
  ('37', '79', '46', '4', 'Stunning piece! Got so many compliments on it.', '2023-11-27 12:19:46'),
  ('38', '38', '17', '3', 'Absolutely love this piece! The quality is amazing.', '2025-01-07 12:54:49'),
  ('39', '73', '5', '3', 'Fast shipping and lovely packaging. 5 stars!', '2024-04-21 19:14:40'),
  ('40', '73', '14', '5', 'High quality handmade work. Seller was very responsive.', '2024-05-05 23:04:15');
INSERT INTO Review (`review_id`, `product_id`, `customer_id`, `rating`, `comment`, `review_date`) VALUES
  ('41', '45', '41', '3', 'So beautiful, even better in person. Will order again!', '2025-04-17 20:46:56'),
  ('42', '43', '58', '1', 'The colors are exactly as shown in the photos.', '2024-01-01 07:44:04'),
  ('43', '45', '33', '2', 'Absolutely love this piece! The quality is amazing.', '2023-07-20 12:28:46'),
  ('44', '54', '22', '5', 'Looks okay but not as vibrant as the photos.', '2024-06-22 11:34:24'),
  ('45', '13', '62', '5', 'Great quality for the price. Highly recommend this seller.', '2023-11-14 14:04:51'),
  ('46', '5', '38', '1', 'Beautifully crafted. You can tell a lot of love went into it.', '2024-02-23 03:04:21'),
  ('47', '22', '49', '3', 'So beautiful, even better in person. Will order again!', '2024-12-12 02:21:38'),
  ('48', '79', '62', '1', 'Lovely bracelet, very well made. Comfortable to wear.', '2025-03-31 05:38:56'),
  ('49', '56', '21', '1', 'Perfect gift for my friend. She was delighted!', '2024-05-05 06:12:26'),
  ('50', '71', '70', '4', 'My go-to shop for handmade jewelry in Pakistan!', '2024-03-31 07:06:03');
INSERT INTO Review (`review_id`, `product_id`, `customer_id`, `rating`, `comment`, `review_date`) VALUES
  ('51', '51', '74', '5', 'Looks okay but not as vibrant as the photos.', '2023-11-05 01:23:00'),
  ('52', '55', '12', '4', 'Fast shipping and lovely packaging. 5 stars!', '2024-10-04 06:06:01'),
  ('53', '27', '22', '4', 'So beautiful, even better in person. Will order again!', '2024-09-27 03:19:50'),
  ('54', '51', '61', '5', 'The colors are exactly as shown in the photos.', '2023-09-02 20:34:24'),
  ('55', '24', '48', '5', 'I ordered for Eid and it arrived on time. Thank you!', '2023-12-09 14:02:16'),
  ('56', '57', '60', '4', 'Great quality for the price. Highly recommend this seller.', '2024-03-02 18:03:09'),
  ('57', '13', '11', '4', 'The necklace broke after a week. Disappointed.', '2024-07-28 18:14:35'),
  ('58', '8', '50', '5', 'Lovely bracelet, very well made. Comfortable to wear.', '2024-11-30 21:55:59'),
  ('59', '61', '74', '4', 'Looks okay but not as vibrant as the photos.', '2024-04-02 02:25:57'),
  ('60', '5', '65', '5', 'Good seller but delivery took longer than expected.', '2025-01-06 21:39:09');
INSERT INTO Review (`review_id`, `product_id`, `customer_id`, `rating`, `comment`, `review_date`) VALUES
  ('61', '16', '58', '3', 'Packaging was lovely. The earrings are so delicate and pretty.', '2024-01-03 06:08:02'),
  ('62', '55', '11', '5', 'Took a little time to arrive but totally worth the wait.', '2025-03-04 04:53:38'),
  ('63', '34', '41', '2', 'So beautiful, even better in person. Will order again!', '2024-07-02 17:25:35'),
  ('64', '42', '36', '5', 'Average quality. Expected better finishing for the price.', '2023-06-13 22:39:37'),
  ('65', '67', '54', '2', 'Lovely bracelet, very well made. Comfortable to wear.', '2023-11-01 04:36:37');

-- ──────────────────────────────────────────────────
-- Wishlist (80 rows)
-- ──────────────────────────────────────────────────
INSERT INTO Wishlist (`wishlist_id`, `customer_id`, `product_id`, `added_at`) VALUES
  ('1', '75', '13', '2023-09-17 18:49:06'),
  ('2', '37', '69', '2024-05-18 13:16:24'),
  ('3', '63', '74', '2025-02-13 15:02:11'),
  ('4', '36', '52', '2023-10-26 19:38:43'),
  ('5', '52', '5', '2024-07-10 10:44:15'),
  ('6', '7', '61', '2024-03-02 11:01:21'),
  ('7', '39', '40', '2024-03-14 15:54:44'),
  ('8', '13', '30', '2023-10-16 09:47:28'),
  ('9', '42', '35', '2024-07-31 19:41:05'),
  ('10', '25', '57', '2024-01-03 13:47:31');
INSERT INTO Wishlist (`wishlist_id`, `customer_id`, `product_id`, `added_at`) VALUES
  ('11', '67', '48', '2023-07-28 16:50:10'),
  ('12', '9', '40', '2024-10-31 12:08:49'),
  ('13', '68', '73', '2023-06-30 05:12:56'),
  ('14', '26', '8', '2024-02-11 01:29:03'),
  ('15', '47', '26', '2024-03-07 11:52:29'),
  ('16', '65', '51', '2025-03-12 03:43:01'),
  ('17', '31', '48', '2024-10-13 19:28:11'),
  ('18', '61', '76', '2024-12-16 11:22:10'),
  ('19', '34', '12', '2024-03-18 00:24:03'),
  ('20', '21', '74', '2024-01-06 07:41:14');
INSERT INTO Wishlist (`wishlist_id`, `customer_id`, `product_id`, `added_at`) VALUES
  ('21', '27', '35', '2025-03-29 13:32:01'),
  ('22', '2', '61', '2023-10-14 20:11:38'),
  ('23', '2', '29', '2024-02-14 19:51:19'),
  ('24', '36', '55', '2024-06-20 11:29:16'),
  ('25', '28', '60', '2024-04-05 21:33:52'),
  ('26', '80', '51', '2025-01-19 03:00:32'),
  ('27', '48', '72', '2025-03-24 19:38:18'),
  ('28', '39', '14', '2024-10-06 02:21:17'),
  ('29', '42', '36', '2024-02-23 20:45:57'),
  ('30', '39', '25', '2023-11-01 16:48:15');
INSERT INTO Wishlist (`wishlist_id`, `customer_id`, `product_id`, `added_at`) VALUES
  ('31', '8', '77', '2024-07-18 21:20:43'),
  ('32', '18', '4', '2025-04-02 15:18:16'),
  ('33', '54', '52', '2024-07-02 23:02:37'),
  ('34', '74', '25', '2024-05-17 23:45:14'),
  ('35', '69', '61', '2025-04-18 11:32:19'),
  ('36', '22', '72', '2023-12-03 09:06:30'),
  ('37', '17', '34', '2024-12-24 05:43:57'),
  ('38', '43', '12', '2024-01-14 11:14:47'),
  ('39', '40', '54', '2024-05-05 11:16:37'),
  ('40', '38', '60', '2023-09-29 15:03:55');
INSERT INTO Wishlist (`wishlist_id`, `customer_id`, `product_id`, `added_at`) VALUES
  ('41', '75', '75', '2025-02-25 02:30:56'),
  ('42', '25', '65', '2023-10-01 21:24:33'),
  ('43', '39', '53', '2023-07-26 04:08:12'),
  ('44', '44', '53', '2025-01-04 14:09:20'),
  ('45', '24', '11', '2024-10-12 10:40:11'),
  ('46', '41', '8', '2023-06-05 14:17:13'),
  ('47', '22', '74', '2023-11-10 15:50:48'),
  ('48', '12', '17', '2025-02-19 13:40:27'),
  ('49', '52', '55', '2024-10-01 12:00:02'),
  ('50', '69', '26', '2024-06-17 00:57:20');
INSERT INTO Wishlist (`wishlist_id`, `customer_id`, `product_id`, `added_at`) VALUES
  ('51', '68', '25', '2023-06-19 21:00:40'),
  ('52', '32', '29', '2024-05-18 09:08:06'),
  ('53', '50', '65', '2025-01-23 09:10:04'),
  ('54', '6', '39', '2024-03-24 14:46:33'),
  ('55', '77', '68', '2024-05-11 13:56:43'),
  ('56', '18', '44', '2024-10-14 11:48:12'),
  ('57', '22', '52', '2023-06-20 07:14:46'),
  ('58', '17', '28', '2023-06-23 18:32:10'),
  ('59', '16', '47', '2025-03-28 01:24:56'),
  ('60', '33', '69', '2025-02-28 01:38:03');
INSERT INTO Wishlist (`wishlist_id`, `customer_id`, `product_id`, `added_at`) VALUES
  ('61', '14', '3', '2023-07-20 22:07:26'),
  ('62', '57', '49', '2023-10-05 17:16:30'),
  ('63', '20', '27', '2025-03-07 00:19:26'),
  ('64', '13', '67', '2024-03-03 19:38:44'),
  ('65', '18', '54', '2023-09-16 16:46:39'),
  ('66', '16', '37', '2023-09-25 03:31:12'),
  ('67', '78', '26', '2024-02-25 16:12:22'),
  ('68', '53', '38', '2023-11-12 01:35:31'),
  ('69', '27', '62', '2024-05-04 07:00:00'),
  ('70', '12', '15', '2025-01-08 21:31:09');
INSERT INTO Wishlist (`wishlist_id`, `customer_id`, `product_id`, `added_at`) VALUES
  ('71', '12', '66', '2023-08-16 23:46:06'),
  ('72', '33', '30', '2024-09-10 09:16:29'),
  ('73', '7', '13', '2023-11-26 01:54:18'),
  ('74', '47', '41', '2024-08-10 23:07:06'),
  ('75', '6', '2', '2023-10-20 21:41:10'),
  ('76', '43', '46', '2024-08-22 19:17:56'),
  ('77', '12', '48', '2024-05-16 05:07:25'),
  ('78', '52', '59', '2024-03-05 12:44:54'),
  ('79', '62', '54', '2025-03-26 05:07:08'),
  ('80', '8', '21', '2023-09-15 13:58:37');

-- ============================================================
--  Re-enable foreign key checks
-- ============================================================
SET FOREIGN_KEY_CHECKS = 1;

-- ============================================================
--  PART 2: UPDATE QUERIES
-- ============================================================

-- UPDATE 1: Customer updated her phone number
UPDATE Customer
SET phone = '0312-9876543'
WHERE customer_id = 5;

-- UPDATE 2: Admin restocked a product
UPDATE Product
SET stock_quantity = 25
WHERE product_id = 12;

-- UPDATE 3: Order status changed to Shipped
UPDATE `Order`
SET status = 'Shipped'
WHERE order_id = 7;

-- UPDATE 4: Payment confirmed
UPDATE Payment
SET status = 'Paid',
    payment_date = NOW()
WHERE order_id = 15
  AND status = 'Pending';

-- UPDATE 5: Price reduced for sale
UPDATE Product
SET price = 399.00
WHERE product_id = 3;

-- ============================================================
--  PART 3: DELETE QUERIES
-- ============================================================

-- DELETE 1: Customer removed item from wishlist
DELETE FROM Wishlist
WHERE customer_id = 10
  AND product_id = 22;

-- DELETE 2: Admin removed inactive product
DELETE FROM Product
WHERE product_id = 80
  AND is_active = 0;

-- DELETE 3: Cart cleared after checkout
DELETE FROM Cart_Item
WHERE cart_id = 5;

-- ============================================================
--  PART 4: VALIDATION QUERIES
--  Run each one and take a screenshot of the result
-- ============================================================

-- VALIDATION 1: Row count for every table
SELECT 'Admin'             AS table_name, COUNT(*) AS row_count FROM Admin
UNION ALL SELECT 'Customer',              COUNT(*) FROM Customer
UNION ALL SELECT 'Category',              COUNT(*) FROM Category
UNION ALL SELECT 'Product',               COUNT(*) FROM Product
UNION ALL SELECT 'Theme',                 COUNT(*) FROM Theme
UNION ALL SELECT 'Collection',            COUNT(*) FROM Collection
UNION ALL SELECT 'Product_Theme',         COUNT(*) FROM Product_Theme
UNION ALL SELECT 'Product_Collection',    COUNT(*) FROM Product_Collection
UNION ALL SELECT 'Cart',                  COUNT(*) FROM Cart
UNION ALL SELECT 'Cart_Item',             COUNT(*) FROM Cart_Item
UNION ALL SELECT 'Order',                 COUNT(*) FROM `Order`
UNION ALL SELECT 'Order_Item',            COUNT(*) FROM Order_Item
UNION ALL SELECT 'Payment',               COUNT(*) FROM Payment
UNION ALL SELECT 'Shipping',              COUNT(*) FROM Shipping
UNION ALL SELECT 'Review',                COUNT(*) FROM Review
UNION ALL SELECT 'Wishlist',              COUNT(*) FROM Wishlist;

-- VALIDATION 2: NULL check on critical columns
SELECT 'Customers with NULL email'        AS check_name, COUNT(*) AS issues FROM Customer WHERE email IS NULL
UNION ALL SELECT 'Products with NULL price',              COUNT(*) FROM Product WHERE price IS NULL
UNION ALL SELECT 'Orders with NULL customer_id',          COUNT(*) FROM `Order` WHERE customer_id IS NULL
UNION ALL SELECT 'Payments with NULL order_id',           COUNT(*) FROM Payment WHERE order_id IS NULL
UNION ALL SELECT 'Order items with NULL price',           COUNT(*) FROM Order_Item WHERE unit_price IS NULL;

-- VALIDATION 3: Orders with customer names (FK integrity check)
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

-- VALIDATION 4: Products with category names
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

-- VALIDATION 5: Products with their themes
SELECT
    p.name   AS product_name,
    t.name   AS theme
FROM Product p
JOIN Product_Theme pt ON p.product_id = pt.product_id
JOIN Theme t           ON pt.theme_id  = t.theme_id
ORDER BY p.product_id
LIMIT 15;

-- VALIDATION 6: Full order summary
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
JOIN Customer c      ON o.customer_id = c.customer_id
JOIN Payment  p      ON o.order_id    = p.order_id
LEFT JOIN Shipping s ON o.order_id    = s.order_id
LIMIT 10;

-- VALIDATION 7: Average rating per product
SELECT
    p.name                  AS product_name,
    COUNT(r.review_id)      AS total_reviews,
    ROUND(AVG(r.rating), 1) AS avg_rating
FROM Product p
JOIN Review r ON p.product_id = r.product_id
GROUP BY p.product_id, p.name
ORDER BY avg_rating DESC
LIMIT 10;

-- VALIDATION 8: Low stock alert
SELECT product_id, name, stock_quantity, price
FROM Product
WHERE stock_quantity < 10
ORDER BY stock_quantity ASC;

-- ============================================================
--  END OF M5 SCRIPT
-- ============================================================
