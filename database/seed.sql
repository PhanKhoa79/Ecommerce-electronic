-- =============================================
-- E-Commerce Seed Data
-- Created: December 3, 2025
-- =============================================

USE ecommerce_db;

-- Clear existing data
SET FOREIGN_KEY_CHECKS
= 0;
TRUNCATE TABLE promotion_terms;
TRUNCATE TABLE promotions;
TRUNCATE TABLE news;
TRUNCATE TABLE product_highlights;
TRUNCATE TABLE product_variants;
TRUNCATE TABLE product_specs;
TRUNCATE TABLE product_images;
TRUNCATE TABLE products;
TRUNCATE TABLE categories;
SET FOREIGN_KEY_CHECKS
= 1;

-- =============================================
-- Insert Categories
-- =============================================
INSERT INTO categories
    (id, name, slug, image)
VALUES
    ('1', 'Laptop', 'laptop', '/category1.png'),
    ('2', 'PC', 'pc', '/category2.png'),
    ('3', 'Màn hình', 'monitor', '/category3.jpg'),
    ('4', 'Mainboard', 'mainboard', '/category4.png'),
    ('5', 'CPU', 'cpu', '/category5.png'),
    ('6', 'VGA', 'vga', '/category6.jpg'),
    ('7', 'RAM', 'ram', '/category7.png'),
    ('8', 'Ổ cứng', 'storage', '/category8.png'),
    ('9', 'Case', 'case', '/category9.png'),
    ('10', 'Tản nhiệt', 'cooling', '/category10.png'),
    ('11', 'Nguồn', 'psu', '/category11.png'),
    ('12', 'Bàn phím', 'keyboard', '/category12.jpg'),
    ('15', 'Chuột', 'mouse', '/category13.jpg');

-- =============================================
-- Insert Products (PC Gaming)
-- =============================================
INSERT INTO products
    (id, slug, name, price, original_price, rating, review_count, main_image, description, category, brand, badge)
VALUES
    ('1', 'pc-gaming-rtx-4090-ultra', 'PC Gaming GVN Intel Core Ultra 9 285K | RTX 4090', 85990000, 95000000, 5.0, 127, 'https://images.unsplash.com/photo-1587202372634-32705e3bf49c?w=800&q=80', 'PC Gaming cao cấp với hiệu năng đỉnh cao, phù hợp cho game thủ chuyên nghiệp và content creator. Trang bị CPU Intel Core Ultra 9 thế hệ mới nhất cùng card đồ họa RTX 4090 mạnh mẽ.', 'PC Gaming', 'GVN', 'Quà tặng HOT'),
    ('7', 'pc-gaming-rtx-4070', 'PC GVN Intel i5-14400F | RTX 4070 | 32GB RAM', 32990000, 37990000, 4.7, 156, 'https://images.unsplash.com/photo-1591238372338-a663a95ab2f4?w=800&q=80', 'PC Gaming tầm trung với hiệu năng mạnh mẽ, phù hợp cho game thủ và streamer. Chiến mượt các tựa game ở độ phân giải 2K.', 'PC Gaming', 'GVN', NULL),
    ('9', 'pc-gaming-amd-rx-7900xtx', 'PC GVN AMD Ryzen 9 7950X3D | RX 7900 XTX', 78990000, 89990000, 4.9, 92, 'https://images.unsplash.com/photo-1600861194802-a2b11f26e9c4?w=800&q=80', 'PC Gaming AMD cao cấp với công nghệ 3D V-Cache, hiệu năng gaming vượt trội.', 'PC Gaming', 'GVN', 'AMD Build'),
    ('10', 'pc-gaming-rtx-4060ti', 'PC GVN Intel i5-13400F | RTX 4060 Ti 16GB', 26990000, 31990000, 4.6, 203, 'https://images.unsplash.com/photo-1555680202-c86f0e12f086?w=800&q=80', 'PC Gaming giá tốt với RTX 4060 Ti 16GB, phù hợp cho game thủ sinh viên.', 'PC Gaming', 'GVN', NULL),
    ('11', 'pc-workstation-rtx-4000', 'PC Workstation Intel Xeon W-2445 | RTX 4000 Ada', 95990000, 110000000, 5.0, 34, 'https://images.unsplash.com/photo-1593640408182-31c70c8268f5?w=800&q=80', 'Workstation chuyên nghiệp cho rendering, thiết kế 3D, AI/ML.', 'PC Gaming', 'GVN', 'Workstation'),
    ('12', 'pc-gaming-mini-itx', 'PC Gaming Mini ITX i7-14700K | RTX 4070 Ti', 52990000, 59990000, 4.7, 67, 'https://images.unsplash.com/photo-1625948515291-69613efd103f?w=800&q=80', 'PC Gaming nhỏ gọn nhưng mạnh mẽ, phù hợp cho không gian hạn chế.', 'PC Gaming', 'GVN', NULL),
    ('13', 'pc-gaming-budget-rx-6700xt', 'PC Gaming AMD Ryzen 5 5600 | RX 6700 XT', 18990000, 22990000, 4.5, 178, 'https://images.unsplash.com/photo-1587202372634-32705e3bf49c?w=800&q=80', 'PC Gaming giá rẻ nhưng vẫn chiến tốt game 1080p/1440p.', 'PC Gaming', 'GVN', 'Giá tốt'),
    ('14', 'pc-gaming-white-build', 'PC Gaming White Aesthetic i5-14600K | RTX 4070', 42990000, 48990000, 4.8, 112, 'https://images.unsplash.com/photo-1591238372338-a663a95ab2f4?w=800&q=80', 'PC Gaming full trắng với thiết kế thẩm mỹ cao, RGB trắng sang trọng.', 'PC Gaming', 'GVN', 'White Build'),
    ('15', 'pc-gaming-streamer-build', 'PC Gaming Streamer i9-14900K | RTX 4080 | 64GB', 72990000, 82990000, 4.9, 89, 'https://images.unsplash.com/photo-1600861194802-a2b11f26e9c4?w=800&q=80', 'PC Gaming tối ưu cho streamer, có thể stream + game + record cùng lúc.', 'PC Gaming', 'GVN', 'Streamer'),
    ('16', 'pc-gaming-silent-build', 'PC Gaming Silent i7-13700 | RTX 4060 Ti', 35990000, 39990000, 4.6, 94, 'https://images.unsplash.com/photo-1555680202-c86f0e12f086?w=800&q=80', 'PC Gaming siêu êm, tối ưu giảm ồn, phù hợp văn phòng hoặc phòng ngủ.', 'PC Gaming', 'GVN', 'Silent');

-- =============================================
-- Insert Products (Laptop Gaming)
-- =============================================
INSERT INTO products
    (id, slug, name, price, original_price, rating, review_count, main_image, description, category, brand, badge)
VALUES
    ('2', 'laptop-gaming-asus-rog-strix', 'Laptop Gaming ASUS ROG Strix G16 i9-14900HX RTX 4070', 45990000, 52990000, 4.8, 89, 'https://images.unsplash.com/photo-1603302576837-37561b2e2302?w=800&q=80', 'Laptop gaming cao cấp ASUS ROG Strix G16 với thiết kế mạnh mẽ, hiệu năng vượt trội. Màn hình 240Hz mang đến trải nghiệm chơi game mượt mà nhất.', 'Laptop Gaming', 'ASUS', 'Bán chạy'),
    ('3', 'laptop-msi-gaming-titan', 'Laptop MSI Titan GT77 HX i9-13980HX RTX 4090', 129990000, 145000000, 5.0, 45, 'https://images.unsplash.com/photo-1588872657578-7efd1f1555ed?w=800&q=80', 'MSI Titan GT77 HX - Laptop gaming đỉnh cao với cấu hình khủng nhất hiện nay. Thiết kế premium, bàn phím cơ Cherry MX, màn hình Mini LED 4K.', 'Laptop Gaming', 'MSI', 'Cao cấp'),
    ('8', 'laptop-acer-nitro-5', 'Laptop Gaming Acer Nitro 5 i5-12500H RTX 4050', 20990000, 24990000, 4.5, 289, 'https://images.unsplash.com/photo-1593642702821-c8da6771f0c6?w=800&q=80', 'Laptop gaming giá tốt với hiệu năng ổn định. Phù hợp cho game thủ mới bắt đầu hoặc sinh viên cần laptop đa năng.', 'Laptop Gaming', 'Acer', NULL),
    ('17', 'laptop-lenovo-legion-5-pro', 'Laptop Gaming Lenovo Legion 5 Pro i7-14700HX RTX 4060', 36990000, 42990000, 4.7, 167, 'https://images.unsplash.com/photo-1603302576837-37561b2e2302?w=800&q=80', 'Laptop gaming tầm trung cao với màn hình 16:10 độc đáo, hiệu năng mạnh mẽ.', 'Laptop Gaming', 'Lenovo', NULL),
    ('18', 'laptop-hp-omen-16', 'Laptop Gaming HP OMEN 16 i7-13700HX RTX 4070', 42990000, 48990000, 4.6, 134, 'https://images.unsplash.com/photo-1588872657578-7efd1f1555ed?w=800&q=80', 'HP OMEN 16 với thiết kế tinh tế, hiệu năng cao, màn hình QHD 240Hz.', 'Laptop Gaming', 'HP', NULL),
    ('19', 'laptop-dell-g15', 'Laptop Gaming Dell G15 5530 i5-13450HX RTX 3050', 18990000, 22990000, 4.4, 256, 'https://images.unsplash.com/photo-1593642702821-c8da6771f0c6?w=800&q=80', 'Laptop gaming giá rẻ, phù hợp sinh viên, game thủ mới bắt đầu.', 'Laptop Gaming', 'Dell', 'Giá tốt'),
    ('20', 'laptop-gigabyte-aorus-15', 'Laptop Gaming GIGABYTE AORUS 15 i7-13700H RTX 4070', 44990000, 51990000, 4.7, 98, 'https://images.unsplash.com/photo-1603302576837-37561b2e2302?w=800&q=80', 'GIGABYTE AORUS với thiết kế đẹp mắt, hiệu năng mạnh mẽ, trọng lượng nhẹ.', 'Laptop Gaming', 'GIGABYTE', NULL),
    ('21', 'laptop-razer-blade-15', 'Laptop Gaming Razer Blade 15 i7-13800H RTX 4070', 59990000, 68990000, 4.8, 76, 'https://images.unsplash.com/photo-1588872657578-7efd1f1555ed?w=800&q=80', 'Razer Blade 15 - Laptop gaming mỏng nhẹ cao cấp với thiết kế premium.', 'Laptop Gaming', 'Razer', 'Premium'),
    ('22', 'laptop-asus-tuf-a15', 'Laptop Gaming ASUS TUF A15 Ryzen 7 7735HS RTX 4060', 29990000, 34990000, 4.6, 189, 'https://images.unsplash.com/photo-1593642702821-c8da6771f0c6?w=800&q=80', 'ASUS TUF A15 với chip AMD Ryzen, hiệu năng tốt, giá cả hợp lý.', 'Laptop Gaming', 'ASUS', NULL),
    ('23', 'laptop-msi-cyborg-15', 'Laptop Gaming MSI Cyborg 15 i5-12450H RTX 4050', 19990000, 23990000, 4.4, 223, 'https://images.unsplash.com/photo-1603302576837-37561b2e2302?w=800&q=80', 'MSI Cyborg 15 - Laptop gaming nhẹ, giá rẻ, thiết kế trong suốt độc đáo.', 'Laptop Gaming', 'MSI', 'Nhẹ nhất'),
    ('24', 'laptop-alienware-m16', 'Laptop Gaming Alienware M16 R2 i9-14900HX RTX 4080', 89990000, 99990000, 4.9, 54, 'https://images.unsplash.com/photo-1588872657578-7efd1f1555ed?w=800&q=80', 'Alienware M16 R2 - Laptop gaming cao cấp với thiết kế futuristic đặc trưng.', 'Laptop Gaming', 'Dell', 'Alienware'),
    ('25', 'laptop-asus-zephyrus-duo-16', 'Laptop Gaming ASUS ROG Zephyrus Duo 16 i9 RTX 4090', 139990000, 159990000, 5.0, 38, 'https://images.unsplash.com/photo-1603302576837-37561b2e2302?w=800&q=80', 'ROG Zephyrus Duo 16 - Laptop gaming 2 màn hình độc đáo, hiệu năng đỉnh cao.', 'Laptop Gaming', 'ASUS', 'Dual Screen'),
    ('26', 'laptop-lenovo-legion-7i', 'Laptop Gaming Lenovo Legion 7i i9-14900HX RTX 4080', 74990000, 84990000, 4.8, 92, 'https://images.unsplash.com/photo-1588872657578-7efd1f1555ed?w=800&q=80', 'Legion 7i - Laptop gaming cao cấp với thiết kế sang trọng, hiệu năng mạnh mẽ.', 'Laptop Gaming', 'Lenovo', NULL),
    ('27', 'laptop-acer-predator-helios-neo-16', 'Laptop Gaming Acer Predator Helios Neo 16 i7 RTX 4060', 34990000, 39990000, 4.6, 143, 'https://images.unsplash.com/photo-1593642702821-c8da6771f0c6?w=800&q=80', 'Predator Helios Neo 16 - Laptop gaming tầm trung với hiệu năng tốt.', 'Laptop Gaming', 'Acer', NULL),
    ('28', 'laptop-msi-stealth-16', 'Laptop Gaming MSI Stealth 16 Studio i9 RTX 4070', 62990000, 72990000, 4.7, 81, 'https://images.unsplash.com/photo-1603302576837-37561b2e2302?w=800&q=80', 'MSI Stealth 16 Studio - Laptop gaming mỏng nhẹ cao cấp, phù hợp creator.', 'Laptop Gaming', 'MSI', 'Creator'),
    ('29', 'laptop-asus-rog-flow-x16', 'Laptop Gaming ASUS ROG Flow X16 2-in-1 i9 RTX 4070', 69990000, 79990000, 4.7, 67, 'https://images.unsplash.com/photo-1588872657578-7efd1f1555ed?w=800&q=80', 'ROG Flow X16 - Laptop gaming 2-in-1 convertible độc đáo với màn hình cảm ứng.', 'Laptop Gaming', 'ASUS', '2-in-1');

-- Continue with remaining products in next part due to length...
