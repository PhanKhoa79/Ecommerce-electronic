-- =============================================
-- Complete Product Specs & Highlights for All 64 Products
-- =============================================
-- This file supplements seed-part3.sql with COMPLETE data
-- Run this AFTER running seed.sql, seed-part2.sql, and seed-part3.sql

-- First, clean existing data to avoid duplicates
TRUNCATE TABLE product_specs;
TRUNCATE TABLE product_highlights;

-- =============================================
-- PRODUCT SPECS - All 64 Products
-- =============================================

-- PC Gaming Products (1, 7, 9-16)
INSERT INTO product_specs
    (product_id, spec_key, spec_value)
VALUES
    -- Product 7: PC Gaming RTX 4070
    ('7', 'cpu', 'Intel Core i5-14400F'),
    ('7', 'ram', '32GB DDR4 3200MHz'),
    ('7', 'gpu', 'NVIDIA RTX 4070 12GB'),
    ('7', 'storage', '1TB NVMe SSD'),

    -- Product 9: PC Gaming AMD RX 7900XTX
    ('9', 'cpu', 'AMD Ryzen 9 7950X3D'),
    ('9', 'ram', '64GB DDR5 6000MHz'),
    ('9', 'gpu', 'AMD RX 7900 XTX 24GB'),
    ('9', 'storage', '2TB NVMe Gen4 SSD'),

    -- Product 10: PC Gaming RTX 4060Ti
    ('10', 'cpu', 'Intel Core i5-13400F'),
    ('10', 'ram', '16GB DDR4 3200MHz'),
    ('10', 'gpu', 'NVIDIA RTX 4060 Ti 16GB'),
    ('10', 'storage', '512GB NVMe SSD'),

    -- Product 11: PC Workstation RTX 4000
    ('11', 'cpu', 'Intel Xeon W-2445'),
    ('11', 'ram', '64GB DDR5 ECC'),
    ('11', 'gpu', 'NVIDIA RTX 4000 Ada 20GB'),
    ('11', 'storage', '2TB NVMe SSD'),

    -- Product 12: PC Gaming Mini ITX
    ('12', 'cpu', 'Intel Core i7-14700K'),
    ('12', 'ram', '32GB DDR5 6000MHz'),
    ('12', 'gpu', 'NVIDIA RTX 4070 Ti 12GB'),
    ('12', 'storage', '1TB NVMe SSD'),
    ('12', 'formFactor', 'Mini ITX'),

    -- Product 13: PC Gaming Budget RX 6700XT
    ('13', 'cpu', 'AMD Ryzen 5 5600'),
    ('13', 'ram', '16GB DDR4 3200MHz'),
    ('13', 'gpu', 'AMD RX 6700 XT 12GB'),
    ('13', 'storage', '500GB NVMe SSD'),

    -- Product 14: PC Gaming White Build
    ('14', 'cpu', 'Intel Core i5-14600K'),
    ('14', 'ram', '32GB DDR5 6000MHz'),
    ('14', 'gpu', 'NVIDIA RTX 4070 12GB White'),
    ('14', 'storage', '1TB NVMe SSD'),

    -- Product 15: PC Gaming Streamer Build
    ('15', 'cpu', 'Intel Core i9-14900K'),
    ('15', 'ram', '64GB DDR5 6400MHz'),
    ('15', 'gpu', 'NVIDIA RTX 4080 16GB'),
    ('15', 'storage', '2TB NVMe SSD + 2TB HDD'),

    -- Product 16: PC Gaming Silent Build
    ('16', 'cpu', 'Intel Core i7-13700 (Non-K)'),
    ('16', 'ram', '32GB DDR5 5600MHz'),
    ('16', 'gpu', 'NVIDIA RTX 4060 Ti 8GB'),
    ('16', 'storage', '1TB NVMe SSD'),

    -- Laptop Gaming Products (2, 3, 8, 17-29)

    -- Product 8: Laptop Acer Nitro 5
    ('8', 'cpu', 'Intel Core i5-12500H'),
    ('8', 'ram', '16GB DDR4 3200MHz'),
    ('8', 'gpu', 'NVIDIA RTX 4050 6GB'),
    ('8', 'storage', '512GB NVMe SSD'),
    ('8', 'display', '15.6" FHD 144Hz'),
    ('8', 'weight', '2.3kg'),

    -- Product 17: Laptop Lenovo Legion 5 Pro
    ('17', 'cpu', 'Intel Core i7-14700HX'),
    ('17', 'ram', '16GB DDR5 5600MHz'),
    ('17', 'gpu', 'NVIDIA RTX 4060 8GB'),
    ('17', 'storage', '512GB NVMe SSD'),
    ('17', 'display', '16" 2.5K 165Hz IPS'),
    ('17', 'weight', '2.6kg'),

    -- Product 18: Laptop HP OMEN 16
    ('18', 'cpu', 'Intel Core i7-13700HX'),
    ('18', 'ram', '16GB DDR5 4800MHz'),
    ('18', 'gpu', 'NVIDIA RTX 4070 8GB'),
    ('18', 'storage', '1TB NVMe SSD'),
    ('18', 'display', '16.1" QHD 240Hz'),
    ('18', 'weight', '2.4kg'),

    -- Product 19: Laptop Dell G15
    ('19', 'cpu', 'Intel Core i5-13450HX'),
    ('19', 'ram', '8GB DDR5 4800MHz'),
    ('19', 'gpu', 'NVIDIA RTX 3050 6GB'),
    ('19', 'storage', '512GB NVMe SSD'),
    ('19', 'display', '15.6" FHD 120Hz'),
    ('19', 'weight', '2.65kg'),

    -- Product 20: Laptop GIGABYTE AORUS 15
    ('20', 'cpu', 'Intel Core i7-13700H'),
    ('20', 'ram', '16GB DDR5 4800MHz'),
    ('20', 'gpu', 'NVIDIA RTX 4070 8GB'),
    ('20', 'storage', '1TB NVMe SSD'),
    ('20', 'display', '15.6" QHD 165Hz'),
    ('20', 'weight', '2.2kg'),

    -- Product 21: Laptop Razer Blade 15
    ('21', 'cpu', 'Intel Core i7-13800H'),
    ('21', 'ram', '16GB DDR5 5200MHz'),
    ('21', 'gpu', 'NVIDIA RTX 4070 8GB'),
    ('21', 'storage', '1TB NVMe SSD'),
    ('21', 'display', '15.6" QHD 240Hz'),
    ('21', 'weight', '2.01kg'),

    -- Product 22: Laptop ASUS TUF A15
    ('22', 'cpu', 'AMD Ryzen 7 7735HS'),
    ('22', 'ram', '16GB DDR5 4800MHz'),
    ('22', 'gpu', 'NVIDIA RTX 4060 8GB'),
    ('22', 'storage', '512GB NVMe SSD'),
    ('22', 'display', '15.6" FHD 144Hz'),
    ('22', 'weight', '2.2kg'),

    -- Product 23: Laptop MSI Cyborg 15
    ('23', 'cpu', 'Intel Core i5-12450H'),
    ('23', 'ram', '8GB DDR5 4800MHz'),
    ('23', 'gpu', 'NVIDIA RTX 4050 6GB'),
    ('23', 'storage', '512GB NVMe SSD'),
    ('23', 'display', '15.6" FHD 144Hz'),
    ('23', 'weight', '1.98kg'),

    -- Product 24: Laptop Alienware M16
    ('24', 'cpu', 'Intel Core i9-14900HX'),
    ('24', 'ram', '32GB DDR5 5600MHz'),
    ('24', 'gpu', 'NVIDIA RTX 4080 12GB'),
    ('24', 'storage', '2TB NVMe SSD'),
    ('24', 'display', '16" QHD+ 240Hz'),
    ('24', 'weight', '2.9kg'),

    -- Product 25: Laptop ASUS ROG Zephyrus Duo 16
    ('25', 'cpu', 'Intel Core i9-13980HX'),
    ('25', 'ram', '64GB DDR5 4800MHz'),
    ('25', 'gpu', 'NVIDIA RTX 4090 16GB'),
    ('25', 'storage', '4TB NVMe SSD'),
    ('25', 'display', '16" 4K 120Hz Mini LED + 14" 4K ScreenPad'),
    ('25', 'weight', '2.7kg'),

    -- Product 26: Laptop Lenovo Legion 7i
    ('26', 'cpu', 'Intel Core i9-14900HX'),
    ('26', 'ram', '32GB DDR5 5600MHz'),
    ('26', 'gpu', 'NVIDIA RTX 4080 12GB'),
    ('26', 'storage', '2TB NVMe SSD'),
    ('26', 'display', '16" 2.5K 240Hz IPS'),
    ('26', 'weight', '2.5kg'),

    -- Product 27: Laptop Acer Predator Helios Neo 16
    ('27', 'cpu', 'Intel Core i7-13700HX'),
    ('27', 'ram', '16GB DDR5 5600MHz'),
    ('27', 'gpu', 'NVIDIA RTX 4060 8GB'),
    ('27', 'storage', '1TB NVMe SSD'),
    ('27', 'display', '16" WUXGA 165Hz'),
    ('27', 'weight', '2.6kg'),

    -- Product 28: Laptop MSI Stealth 16
    ('28', 'cpu', 'Intel Core i9-13900H'),
    ('28', 'ram', '32GB DDR5 5200MHz'),
    ('28', 'gpu', 'NVIDIA RTX 4070 8GB'),
    ('28', 'storage', '1TB NVMe SSD'),
    ('28', 'display', '16" 4K+ 120Hz Mini LED'),
    ('28', 'weight', '1.99kg'),

    -- Product 29: Laptop ASUS ROG Flow X16
    ('29', 'cpu', 'Intel Core i9-13900H'),
    ('29', 'ram', '16GB DDR5 4800MHz'),
    ('29', 'gpu', 'NVIDIA RTX 4070 8GB'),
    ('29', 'storage', '1TB NVMe SSD'),
    ('29', 'display', '16" 2.5K 165Hz Touch + Stylus'),
    ('29', 'weight', '2.1kg'),

    -- Mouse Products (4, 30-36)

    -- Product 30: Chuột Razer Viper V3 Pro
    ('30', 'sensor', 'Focus Pro 30K'),
    ('30', 'dpi', '100-30,000 DPI'),
    ('30', 'weight', '54g'),
    ('30', 'battery', '95 giờ'),
    ('30', 'connectivity', 'Wireless HyperSpeed'),

    -- Product 31: Chuột Logitech G502 X Plus
    ('31', 'sensor', 'HERO 25K'),
    ('31', 'dpi', '100-25,600 DPI'),
    ('31', 'weight', '102g'),
    ('31', 'battery', '120 giờ'),
    ('31', 'connectivity', 'Wireless + USB-C'),

    -- Product 32: Chuột SteelSeries Rival 3
    ('32', 'sensor', 'TrueMove Core'),
    ('32', 'dpi', '100-8,500 DPI'),
    ('32', 'weight', '77g'),
    ('32', 'connectivity', 'USB Wired'),

    -- Product 33: Chuột Corsair Dark Core RGB Pro
    ('33', 'sensor', 'PMW3392'),
    ('33', 'dpi', '100-18,000 DPI'),
    ('33', 'weight', '133g'),
    ('33', 'battery', '50 giờ'),
    ('33', 'connectivity', 'Wireless + Bluetooth + USB'),

    -- Product 34: Chuột Razer DeathAdder V3
    ('34', 'sensor', 'Focus+ 26K'),
    ('34', 'dpi', '100-26,000 DPI'),
    ('34', 'weight', '59g'),
    ('34', 'connectivity', 'USB Wired'),

    -- Product 35: Chuột ASUS ROG Gladius III
    ('35', 'sensor', 'ROG AimPoint Pro'),
    ('35', 'dpi', '100-36,000 DPI'),
    ('35', 'weight', '79g'),
    ('35', 'battery', '119 giờ'),
    ('35', 'connectivity', 'Wireless 2.4GHz + Bluetooth'),

    -- Product 36: Chuột Logitech G304
    ('36', 'sensor', 'HERO'),
    ('36', 'dpi', '200-12,000 DPI'),
    ('36', 'weight', '99g'),
    ('36', 'battery', '250 giờ'),
    ('36', 'connectivity', 'Wireless Lightspeed'),

    -- Product 37: Bàn phím Corsair K100 RGB
    ('37', 'layout', 'Full-size (104 phím)'),
    ('37', 'switch', 'Corsair OPX Optical'),
    ('37', 'keycap', 'Double-shot PBT'),
    ('37', 'connectivity', 'USB-C'),

    -- Product 38: Bàn phím Razer Huntsman V3 Pro
    ('38', 'layout', 'TKL (87 phím)'),
    ('38', 'switch', 'Razer Analog Optical'),
    ('38', 'keycap', 'Double-shot PBT'),
    ('38', 'connectivity', 'Wireless + USB-C'),

    -- Product 39: Bàn phím Logitech G915 TKL
    ('39', 'layout', 'TKL (87 phím)'),
    ('39', 'switch', 'GL Low-Profile'),
    ('39', 'keycap', 'Low-profile'),
    ('39', 'battery', '40 giờ'),
    ('39', 'connectivity', 'Wireless Lightspeed'),

    -- Product 40: Bàn phím AKKO MOD007B
    ('40', 'layout', '75% (82 phím)'),
    ('40', 'switch', 'Hall Effect Magnetic'),
    ('40', 'keycap', 'Double-shot PBT'),
    ('40', 'connectivity', 'USB-C'),

    -- Product 41: Bàn phím SteelSeries Apex Pro TKL
    ('41', 'layout', 'TKL (87 phím)'),
    ('41', 'switch', 'OmniPoint 2.0 Adjustable'),
    ('41', 'keycap', 'PBT'),
    ('41', 'connectivity', 'USB-C'),

    -- Product 42: Bàn phím ASUS ROG Azoth
    ('42', 'layout', '75% (82 phím)'),
    ('42', 'switch', 'ROG NX (Hot-swap)'),
    ('42', 'keycap', 'Double-shot PBT'),
    ('42', 'battery', '2000mAh'),
    ('42', 'connectivity', 'Wireless 2.4GHz + Bluetooth'),

    -- Product 43: Bàn phím Ducky One 3
    ('43', 'layout', 'TKL (87 phím)'),
    ('43', 'switch', 'Cherry MX'),
    ('43', 'keycap', 'Double-shot PBT'),
    ('43', 'connectivity', 'USB-C'),

    -- Monitor Products (6, 44-52)
    -- Product 6: Màn hình ASUS ROG Swift OLED

    -- Product 44: Màn hình LG UltraGear 27GP950
    ('44', 'size', '27 inch'),
    ('44', 'resolution', '3840 x 2160 (4K)'),
    ('44', 'refreshRate', '144Hz'),
    ('44', 'panelType', 'Nano IPS'),
    ('44', 'responseTime', '1ms'),

    -- Product 45: Màn hình Samsung Odyssey G7
    ('45', 'size', '32 inch'),
    ('45', 'resolution', '2560 x 1440 (2K)'),
    ('45', 'refreshRate', '240Hz'),
    ('45', 'panelType', 'VA Cong 1000R'),
    ('45', 'responseTime', '1ms'),

    -- Product 46: Màn hình Acer Nitro XV272U
    ('46', 'size', '27 inch'),
    ('46', 'resolution', '2560 x 1440 (2K)'),
    ('46', 'refreshRate', '170Hz'),
    ('46', 'panelType', 'IPS'),
    ('46', 'responseTime', '1ms'),

    -- Product 47: Màn hình MSI MAG274QRF-QD
    ('47', 'size', '27 inch'),
    ('47', 'resolution', '2560 x 1440 (2K)'),
    ('47', 'refreshRate', '165Hz'),
    ('47', 'panelType', 'Rapid IPS QD'),
    ('47', 'responseTime', '1ms'),

    -- Product 48: Màn hình Dell S2722DGM
    ('48', 'size', '27 inch'),
    ('48', 'resolution', '2560 x 1440 (2K)'),
    ('48', 'refreshRate', '165Hz'),
    ('48', 'panelType', 'VA Cong 1500R'),
    ('48', 'responseTime', '1ms'),

    -- Product 49: Màn hình ViewSonic XG2431
    ('49', 'size', '24 inch'),
    ('49', 'resolution', '1920 x 1080 (FHD)'),
    ('49', 'refreshRate', '240Hz'),
    ('49', 'panelType', 'IPS'),
    ('49', 'responseTime', '0.5ms'),

    -- Product 50: Màn hình GIGABYTE M32U
    ('50', 'size', '32 inch'),
    ('50', 'resolution', '3840 x 2160 (4K)'),
    ('50', 'refreshRate', '144Hz'),
    ('50', 'panelType', 'SS IPS'),
    ('50', 'responseTime', '1ms'),

    -- Product 51: Màn hình BenQ ZOWIE XL2546K
    ('51', 'size', '24.5 inch'),
    ('51', 'resolution', '1920 x 1080 (FHD)'),
    ('51', 'refreshRate', '240Hz'),
    ('51', 'panelType', 'TN'),
    ('51', 'responseTime', '0.5ms'),

    -- Product 52: Màn hình AOC CU34G2X
    ('52', 'size', '34 inch'),
    ('52', 'resolution', '3440 x 1440 (UltraWide)'),
    ('52', 'refreshRate', '144Hz'),
    ('52', 'panelType', 'VA Cong 1500R'),
    ('52', 'responseTime', '1ms'),

    -- CPU Products (53-57)
    -- Product 53: CPU Intel i9-14900K
    ('53', 'cores', '24 nhân (8P + 16E)'),
    ('53', 'threads', '32 luồng'),
    ('53', 'baseClock', '3.2 GHz'),
    ('53', 'boostClock', '6.0 GHz'),
    ('53', 'socket', 'LGA 1700'),
    ('53', 'tdp', '125W (253W Turbo)'),

    -- Product 54: CPU AMD Ryzen 9 7950X3D
    ('54', 'cores', '16 nhân'),
    ('54', 'threads', '32 luồng'),
    ('54', 'baseClock', '4.2 GHz'),
    ('54', 'boostClock', '5.7 GHz'),
    ('54', 'socket', 'AM5'),
    ('54', 'tdp', '120W'),

    -- Product 55: CPU Intel i5-14600K
    ('55', 'cores', '14 nhân (6P + 8E)'),
    ('55', 'threads', '20 luồng'),
    ('55', 'baseClock', '3.5 GHz'),
    ('55', 'boostClock', '5.3 GHz'),
    ('55', 'socket', 'LGA 1700'),
    ('55', 'tdp', '125W'),

    -- Product 56: CPU AMD Ryzen 5 7600X
    ('56', 'cores', '6 nhân'),
    ('56', 'threads', '12 luồng'),
    ('56', 'baseClock', '4.7 GHz'),
    ('56', 'boostClock', '5.3 GHz'),
    ('56', 'socket', 'AM5'),
    ('56', 'tdp', '105W'),

    -- Product 57: CPU Intel i7-14700K
    ('57', 'cores', '20 nhân (8P + 12E)'),
    ('57', 'threads', '28 luồng'),
    ('57', 'baseClock', '3.4 GHz'),
    ('57', 'boostClock', '5.6 GHz'),
    ('57', 'socket', 'LGA 1700'),
    ('57', 'tdp', '125W'),

    -- VGA Products (58-64)
    -- Product 58: VGA RTX 4090 ASUS
    ('58', 'gpu', 'NVIDIA GeForce RTX 4090'),
    ('58', 'vram', '24GB GDDR6X'),
    ('58', 'baseClock', '2.23 GHz'),
    ('58', 'boostClock', '2.64 GHz'),
    ('58', 'tdp', '450W'),

    -- Product 59: VGA RTX 4080 MSI
    ('59', 'gpu', 'NVIDIA GeForce RTX 4080'),
    ('59', 'vram', '16GB GDDR6X'),
    ('59', 'boostClock', '2.55 GHz'),
    ('59', 'tdp', '320W'),

    -- Product 60: VGA RTX 4070 GIGABYTE
    ('60', 'gpu', 'NVIDIA GeForce RTX 4070'),
    ('60', 'vram', '12GB GDDR6X'),
    ('60', 'boostClock', '2.48 GHz'),
    ('60', 'tdp', '200W'),

    -- Product 61: VGA RX 7900 XTX Sapphire
    ('61', 'gpu', 'AMD Radeon RX 7900 XTX'),
    ('61', 'vram', '24GB GDDR6'),
    ('61', 'boostClock', '2.68 GHz'),
    ('61', 'tdp', '355W'),

    -- Product 62: VGA RTX 4060 Ti ASUS
    ('62', 'gpu', 'NVIDIA GeForce RTX 4060 Ti'),
    ('62', 'vram', '16GB GDDR6'),
    ('62', 'boostClock', '2.59 GHz'),
    ('62', 'tdp', '165W'),

    -- Product 63: VGA RX 6700 XT PowerColor
    ('63', 'gpu', 'AMD Radeon RX 6700 XT'),
    ('63', 'vram', '12GB GDDR6'),
    ('63', 'boostClock', '2.62 GHz'),
    ('63', 'tdp', '230W'),

    -- Product 64: VGA RTX 4070 Ti EVGA
    ('64', 'gpu', 'NVIDIA GeForce RTX 4070 Ti'),
    ('64', 'vram', '12GB GDDR6X'),
    ('64', 'boostClock', '2.67 GHz'),
    ('64', 'tdp', '285W');

-- =============================================
-- PRODUCT HIGHLIGHTS - All 64 Products
-- =============================================

INSERT INTO product_highlights
    (product_id, feature, display_order)
VALUES
    -- Product 1: PC Gaming RTX 4090

    -- Product 7: PC Gaming RTX 4070
    ('7', 'i5-14400F 10 nhân - Hiệu năng tốt', 1),
    ('7', 'RTX 4070 12GB - Chiến game 2K/4K', 2),
    ('7', 'RAM 32GB - Đa nhiệm thoải mái', 3),
    ('7', 'SSD 1TB NVMe - Tốc độ cao', 4),

    -- Product 9: PC Gaming AMD RX 7900XTX
    ('9', 'Ryzen 9 7950X3D với 3D V-Cache', 1),
    ('9', 'RX 7900 XTX 24GB GDDR6', 2),
    ('9', 'RAM 64GB DDR5 6000MHz', 3),
    ('9', 'Tản nhiệt AIO 360mm', 4),

    -- Product 10: PC Gaming RTX 4060Ti
    ('10', 'i5-13400F 10 nhân', 1),
    ('10', 'RTX 4060 Ti 16GB', 2),
    ('10', 'Giá cả phải chăng', 3),
    ('10', 'Hiệu năng ổn định', 4),

    -- Product 11: PC Workstation RTX 4000
    ('11', 'Xeon W-2445 10 nhân', 1),
    ('11', 'RAM ECC - Ổn định tuyệt đối', 2),
    ('11', 'RTX 4000 Ada 20GB', 3),
    ('11', 'Bảo hành 3 năm', 4),

    -- Product 12: PC Gaming Mini ITX
    ('12', 'Thiết kế Mini ITX gọn gàng', 1),
    ('12', 'i7-14700K 20 nhân', 2),
    ('12', 'RTX 4070 Ti 12GB', 3),
    ('12', 'Tản nhiệt AIO 240mm', 4),

    -- Product 13: PC Gaming Budget RX 6700XT
    ('13', 'Ryzen 5 5600 6 nhân', 1),
    ('13', 'RX 6700 XT 12GB', 2),
    ('13', 'Giá siêu tốt', 3),
    ('13', 'Phù hợp sinh viên', 4),

    -- Product 14: PC Gaming White Build
    ('14', 'Thiết kế full màu trắng', 1),
    ('14', 'i5-14600K 14 nhân', 2),
    ('14', 'RTX 4070 White Edition', 3),
    ('14', 'RGB trắng đồng bộ', 4),

    -- Product 15: PC Gaming Streamer Build
    ('15', 'i9-14900K 24 nhân - Đa nhiệm mạnh mẽ', 1),
    ('15', 'RTX 4080 16GB - Encode NVENC', 2),
    ('15', 'RAM 64GB - Stream mượt mà', 3),
    ('15', 'Kèm capture card', 4),

    -- Product 16: PC Gaming Silent Build
    ('16', 'Tản nhiệt Noctua NH-D15', 1),
    ('16', 'Case cách âm Be Quiet!', 2),
    ('16', 'Nguồn 80+ Platinum', 3),
    ('16', 'Hoạt động gần như im lặng', 4),

    -- Product 2: Laptop ASUS ROG Strix
    -- Product 8: Laptop Acer Nitro 5
    ('8', 'i5-12500H 12 nhân', 1),
    ('8', 'RTX 4050 6GB GDDR6', 2),
    ('8', 'Màn hình 144Hz', 3),
    ('8', 'Tản nhiệt dual-fan', 4),

    -- Product 17: Laptop Lenovo Legion 5 Pro
    ('17', 'i7-14700HX 20 nhân', 1),
    ('17', 'RTX 4060 8GB', 2),
    ('17', 'Màn hình 16:10 2.5K', 3),
    ('17', 'Tản nhiệt Legion Coldfront 5.0', 4),

    -- Product 18: Laptop HP OMEN 16
    ('18', 'i7-13700HX 16 nhân', 1),
    ('18', 'RTX 4070 8GB', 2),
    ('18', 'Màn hình QHD 240Hz', 3),
    ('18', 'OMEN Tempest Cooling', 4),

    -- Product 19: Laptop Dell G15
    ('19', 'i5-13450HX 10 nhân', 1),
    ('19', 'RTX 3050 6GB', 2),
    ('19', 'Giá cực tốt', 3),
    ('19', 'Bảo hành Dell chính hãng', 4),

    -- Product 20: Laptop GIGABYTE AORUS 15
    ('20', 'i7-13700H 14 nhân', 1),
    ('20', 'RTX 4070 8GB', 2),
    ('20', 'Màn hình QHD 165Hz', 3),
    ('20', 'Bàn phím RGB Omron', 4),

    -- Product 21: Laptop Razer Blade 15
    ('21', 'Thiết kế CNC nhôm nguyên khối', 1),
    ('21', 'i7-13800H 14 nhân', 2),
    ('21', 'RTX 4070 8GB', 3),
    ('21', 'Màn hình QHD 240Hz calibrated', 4),

    -- Product 22: Laptop ASUS TUF A15
    ('22', 'Ryzen 7 7735HS 8 nhân', 1),
    ('22', 'RTX 4060 8GB', 2),
    ('22', 'Độ bền chuẩn quân đội MIL-STD-810H', 3),
    ('22', 'Màn hình 144Hz', 4),

    -- Product 23: Laptop MSI Cyborg 15
    ('23', 'Thiết kế trong suốt độc đáo', 1),
    ('23', 'i5-12450H 8 nhân', 2),
    ('23', 'RTX 4050 6GB', 3),
    ('23', 'Trọng lượng dưới 2kg', 4),

    -- Product 24: Laptop Alienware M16
    ('24', 'Thiết kế Alienware iconic', 1),
    ('24', 'i9-14900HX 24 nhân', 2),
    ('24', 'RTX 4080 12GB', 3),
    ('24', 'AlienFX RGB toàn bộ', 4),

    -- Product 25: Laptop ASUS ROG Zephyrus Duo 16
    ('25', 'Màn hình kép ScreenPad Plus', 1),
    ('25', 'i9-13980HX + RTX 4090', 2),
    ('25', 'Màn hình Mini LED 4K', 3),
    ('25', 'AniMe Matrix LED', 4),

    -- Product 26: Laptop Lenovo Legion 7i
    ('26', 'i9-14900HX 24 nhân', 1),
    ('26', 'RTX 4080 12GB', 2),
    ('26', 'Màn hình 16:10 2.5K 240Hz', 3),
    ('26', 'Legion Coldfront Hyper', 4),

    -- Product 27: Laptop Acer Predator Helios Neo 16
    ('27', 'i7-13700HX 16 nhân', 1),
    ('27', 'RTX 4060 8GB', 2),
    ('27', 'Màn hình 16 inch', 3),
    ('27', '5th Gen AeroBlade 3D Fan', 4),

    -- Product 28: Laptop MSI Stealth 16
    ('28', 'Thiết kế siêu mỏng dưới 2cm', 1),
    ('28', 'i9-13900H 14 nhân', 2),
    ('28', 'Màn hình 4K+ Mini LED', 3),
    ('28', 'Trọng lượng dưới 2kg', 4),

    -- Product 29: Laptop ASUS ROG Flow X16
    ('29', 'Thiết kế 2-in-1 xoay 360°', 1),
    ('29', 'i9-13900H 14 nhân', 2),
    ('29', 'RTX 4070 8GB', 3),
    ('29', 'Màn hình cảm ứng + Stylus', 4),

    -- Product 4: Chuột Logitech G Pro
    -- Product 30: Chuột Razer Viper V3 Pro
    ('30', 'Trọng lượng 54g siêu nhẹ', 1),
    ('30', 'Sensor Focus Pro 30K', 2),
    ('30', 'Pin 95 giờ', 3),
    ('30', 'HyperSpeed Wireless Gen-3', 4),

    -- Product 31: Chuột Logitech G502 X Plus
    ('31', '13 nút lập trình', 1),
    ('31', 'RGB LIGHTSYNC', 2),
    ('31', 'Switch quang học', 3),
    ('31', 'Hệ thống cân bằng tùy chỉnh', 4),

    -- Product 32: Chuột SteelSeries Rival 3
    ('32', 'Giá cực tốt', 1),
    ('32', 'RGB 3 vùng', 2),
    ('32', 'Sensor TrueMove Core', 3),
    ('32', 'Bền bỉ 60 triệu clicks', 4),

    -- Product 33: Chuột Corsair Dark Core RGB Pro
    ('33', '3 chế độ kết nối', 1),
    ('33', 'Sạc không dây Qi', 2),
    ('33', '8 nút lập trình', 3),
    ('33', 'RGB 4 vùng', 4),

    -- Product 34: Chuột Razer DeathAdder V3
    ('34', 'Thiết kế ergonomic', 1),
    ('34', 'Trọng lượng 59g', 2),
    ('34', 'Sensor Focus+ 26K', 3),
    ('34', 'Gen-3 Optical Switch', 4),

    -- Product 35: Chuột ASUS ROG Gladius III
    ('35', 'Switch Push-Fit có thể thay', 1),
    ('35', 'Sensor 36,000 DPI', 2),
    ('35', 'Pin 119 giờ', 3),
    ('35', 'ROG Aura Sync RGB', 4),

    -- Product 36: Chuột Logitech G304
    ('36', 'Giá cực tốt', 1),
    ('36', 'Wireless Lightspeed', 2),
    ('36', 'Pin 250 giờ', 3),
    ('36', 'Sensor HERO', 4),

    -- Product 5: Bàn phím Keychron Q1 Pro

    -- Product 37: Bàn phím Corsair K100 RGB
    ('37', 'Switch quang học OPX', 1),
    ('37', 'iCUE Control Wheel', 2),
    ('37', 'RGB Per-Key', 3),
    ('37', 'Tựa tay từ tính có đệm', 4),

    -- Product 38: Bàn phím Razer Huntsman V3 Pro
    ('38', 'Switch Analog Optical Gen-2', 1),
    ('38', 'Điều chỉnh actuation 0.1-4.0mm', 2),
    ('38', 'Rapid Trigger', 3),
    ('38', 'Wireless HyperSpeed', 4),

    -- Product 39: Bàn phím Logitech G915 TKL
    ('39', 'Thiết kế mỏng chỉ 22mm', 1),
    ('39', 'Wireless Lightspeed', 2),
    ('39', 'Khung nhôm hàng không', 3),
    ('39', 'Pin 40 giờ', 4),

    -- Product 40: Bàn phím AKKO MOD007B
    ('40', 'Switch Hall Effect từ tính', 1),
    ('40', 'Điều chỉnh actuation 0.2-3.8mm', 2),
    ('40', 'Rapid Trigger', 3),
    ('40', 'Giá cả phải chăng', 4),

    -- Product 41: Bàn phím SteelSeries Apex Pro TKL
    ('41', 'OmniPoint 2.0 Magnetic', 1),
    ('41', 'Rapid Trigger', 2),
    ('41', 'Điều chỉnh actuation 0.2-3.8mm', 3),
    ('41', 'OLED Smart Display', 4),

    -- Product 42: Bàn phím ASUS ROG Azoth
    ('42', 'OLED Display tích hợp', 1),
    ('42', 'Gasket mount', 2),
    ('42', 'Hot-swappable', 3),
    ('42', 'Wireless 2.4GHz + BT 5.1', 4),

    -- Product 43: Bàn phím Ducky One 3
    ('43', 'Switch Cherry MX chính hãng', 1),
    ('43', 'Keycap PBT chất lượng cao', 2),
    ('43', 'RGB Quack Mechanics', 3),
    ('43', 'Build quality tuyệt vời', 4),

    -- Product 6: Màn hình ASUS ROG Swift OLED

    -- Product 44: Màn hình LG UltraGear 27GP950
    ('44', '4K UHD 144Hz', 1),
    ('44', 'Nano IPS', 2),
    ('44', 'HDR600', 3),
    ('44', 'G-Sync + FreeSync Premium Pro', 4),

    -- Product 45: Màn hình Samsung Odyssey G7
    ('45', 'Độ cong 1000R', 1),
    ('45', '2K 240Hz', 2),
    ('45', 'G-Sync + FreeSync Premium Pro', 3),
    ('45', 'HDR600', 4),

    -- Product 46: Màn hình Acer Nitro XV272U
    ('46', '2K 170Hz', 1),
    ('46', 'IPS Wide Viewing', 2),
    ('46', 'FreeSync Premium', 3),
    ('46', 'Giá cả phải chăng', 4),

    -- Product 47: Màn hình MSI MAG274QRF-QD
    ('47', 'Rapid IPS + Quantum Dot', 1),
    ('47', '97% DCI-P3', 2),
    ('47', '2K 165Hz', 3),
    ('47', 'G-Sync Compatible', 4),

    -- Product 48: Màn hình Dell S2722DGM
    ('48', 'Cong 1500R', 1),
    ('48', '2K 165Hz', 2),
    ('48', 'Độ tương phản 3000:1', 3),
    ('48', 'FreeSync Premium', 4),

    -- Product 49: Màn hình ViewSonic XG2431
    ('49', '24 inch 240Hz', 1),
    ('49', 'Thời gian phản hồi 0.5ms', 2),
    ('49', 'Reflex Latency Analyzer', 3),
    ('49', 'FPS tối ưu', 4),

    -- Product 50: Màn hình GIGABYTE M32U
    ('50', '32 inch 4K 144Hz', 1),
    ('50', 'SS IPS 95% DCI-P3', 2),
    ('50', 'HDMI 2.1', 3),
    ('50', 'KVM Switch', 4),

    -- Product 51: Màn hình BenQ ZOWIE XL2546K
    ('51', 'DyAc+ Technology', 1),
    ('51', '240Hz TN Panel', 2),
    ('51', 'Esports monitor', 3),
    ('51', 'Shields bảo vệ ánh sáng', 4),

    -- Product 52: Màn hình AOC CU34G2X
    ('52', '34 inch UltraWide 21:9', 1),
    ('52', 'Cong 1500R', 2),
    ('52', '144Hz', 3),
    ('52', 'Giá tốt nhất phân khúc', 4),

    -- Product 53: CPU Intel i9-14900K
    ('53', '24 nhân 32 luồng', 1),
    ('53', 'Turbo boost 6.0 GHz', 2),
    ('53', 'Hỗ trợ DDR5 + DDR4', 3),
    ('53', 'Intel UHD Graphics 770', 4),

    -- Product 54: CPU AMD Ryzen 9 7950X3D
    ('54', '16 nhân 32 luồng', 1),
    ('54', '3D V-Cache 128MB', 2),
    ('54', 'Boost 5.7 GHz', 3),
    ('54', 'Gaming tốt nhất', 4),

    -- Product 55: CPU Intel i5-14600K
    ('55', '14 nhân 20 luồng', 1),
    ('55', 'Boost 5.3 GHz', 2),
    ('55', 'Giá cả phải chăng', 3),
    ('55', 'Tối ưu gaming', 4),

    -- Product 56: CPU AMD Ryzen 5 7600X
    ('56', '6 nhân 12 luồng', 1),
    ('56', 'Boost 5.3 GHz', 2),
    ('56', 'Zen 4 Architecture', 3),
    ('56', 'Giá tốt', 4),

    -- Product 57: CPU Intel i7-14700K
    ('57', '20 nhân 28 luồng', 1),
    ('57', 'Boost 5.6 GHz', 2),
    ('57', 'Đa nhiệm tốt', 3),
    ('57', 'Tối ưu gaming + work', 4),

    -- Product 58: VGA RTX 4090 ASUS
    ('58', 'RTX 4090 24GB', 1),
    ('58', 'Tản nhiệt Tri-Fan', 2),
    ('58', 'OC Mode 2.64 GHz', 3),
    ('58', 'DLSS 3 + Ray Tracing', 4),

    -- Product 59: VGA RTX 4080 MSI
    ('59', 'RTX 4080 16GB', 1),
    ('59', 'Tri Frozr 3 Cooling', 2),
    ('59', 'Boost 2.55 GHz', 3),
    ('59', 'DLSS 3', 4),

    -- Product 60: VGA RTX 4070 GIGABYTE
    ('60', 'RTX 4070 12GB', 1),
    ('60', 'WINDFORCE Cooling', 2),
    ('60', 'Boost 2.48 GHz', 3),
    ('60', 'Tiết kiệm điện', 4),

    -- Product 61: VGA RX 7900 XTX Sapphire
    ('61', 'RX 7900 XTX 24GB', 1),
    ('61', 'Boost 2.68 GHz', 2),
    ('61', 'FSR 3 + Ray Tracing', 3),
    ('61', '24GB VRAM lớn', 4),

    -- Product 62: VGA RTX 4060 Ti ASUS
    ('62', 'RTX 4060 Ti 16GB', 1),
    ('62', 'VRAM 16GB', 2),
    ('62', 'Boost 2.59 GHz', 3),
    ('62', 'DLSS 3', 4),

    -- Product 63: VGA RX 6700 XT PowerColor
    ('63', 'RX 6700 XT 12GB', 1),
    ('63', 'Boost 2.62 GHz', 2),
    ('63', 'Giá cực tốt', 3),
    ('63', '1440p gaming', 4),

    -- Product 64: VGA RTX 4070 Ti EVGA
    ('64', 'RTX 4070 Ti 12GB', 1),
    ('64', 'iCX3 Cooling', 2),
    ('64', 'OC 2.67 GHz', 3),
    ('64', '4K gaming', 4);

-- =============================================
-- Verification Queries
-- =============================================
-- Uncomment to verify data after import:

-- SELECT COUNT(*) as total_specs FROM product_specs;
-- SELECT COUNT(*) as total_highlights FROM product_highlights;
-- SELECT product_id, COUNT(*) as spec_count FROM product_specs GROUP BY product_id ORDER BY product_id;
-- SELECT product_id, COUNT(*) as highlight_count FROM product_highlights GROUP BY product_id ORDER BY product_id;
