-- =============================================
-- Seed Data Part 3: Product Details, News & Promotions
-- =============================================

-- Product Images (Gallery) - Sample for key products
INSERT INTO product_images
    (product_id, image_url, display_order)
VALUES
    -- PC Gaming RTX 4090
    ('1', 'https://images.unsplash.com/photo-1587202372634-32705e3bf49c?w=800&q=80', 1),
    ('1', 'https://images.unsplash.com/photo-1591238372338-a663a95ab2f4?w=800&q=80', 2),
    ('1', 'https://images.unsplash.com/photo-1600861194802-a2b11f26e9c4?w=800&q=80', 3),
    ('1', 'https://images.unsplash.com/photo-1555680202-c86f0e12f086?w=800&q=80', 4),
    -- Laptop ASUS ROG
    ('2', 'https://images.unsplash.com/photo-1603302576837-37561b2e2302?w=800&q=80', 1),
    ('2', 'https://images.unsplash.com/photo-1588872657578-7efd1f1555ed?w=800&q=80', 2),
    ('2', 'https://images.unsplash.com/photo-1593642702821-c8da6771f0c6?w=800&q=80', 3),
    -- Chuột Logitech
    ('4', 'https://images.unsplash.com/photo-1527814050087-3793815479db?w=800&q=80', 1),
    ('4', 'https://images.unsplash.com/photo-1615663245857-ac93bb7c39e7?w=800&q=80', 2),
    -- Bàn phím Keychron
    ('5', 'https://images.unsplash.com/photo-1595225476474-87563907a212?w=800&q=80', 1),
    ('5', 'https://images.unsplash.com/photo-1587829741301-dc798b83add3?w=800&q=80', 2),
    -- Màn hình ASUS
    ('6', 'https://images.unsplash.com/photo-1527443224154-c4a3942d3acf?w=800&q=80', 1),
    ('6', 'https://images.unsplash.com/photo-1585792180666-f7347c490ee2?w=800&q=80', 2);

-- Product Specs - Sample for key products
INSERT INTO product_specs
    (product_id, spec_key, spec_value)
VALUES
    -- PC Gaming RTX 4090 (id: 1)
    ('1', 'cpu', 'Intel Core Ultra 9 285K'),
    ('1', 'ram', '32GB DDR5 6400MHz'),
    ('1', 'gpu', 'NVIDIA RTX 4090 24GB'),
    ('1', 'storage', '2TB NVMe Gen4 SSD'),
    ('1', 'weight', '15kg'),
    -- Laptop ASUS ROG (id: 2)
    ('2', 'cpu', 'Intel Core i9-14900HX'),
    ('2', 'ram', '16GB DDR5 5600MHz'),
    ('2', 'gpu', 'NVIDIA RTX 4070 8GB'),
    ('2', 'storage', '1TB NVMe SSD'),
    ('2', 'display', '16" 2K 240Hz IPS'),
    ('2', 'weight', '2.5kg'),
    -- Laptop MSI Titan (id: 3)
    ('3', 'cpu', 'Intel Core i9-13980HX'),
    ('3', 'ram', '64GB DDR5 5600MHz'),
    ('3', 'gpu', 'NVIDIA RTX 4090 16GB'),
    ('3', 'storage', '4TB NVMe SSD'),
    ('3', 'display', '17.3" 4K 144Hz Mini LED'),
    ('3', 'weight', '3.3kg'),
    -- Chuột Logitech (id: 4)
    ('4', 'sensor', 'HERO 25K'),
    ('4', 'dpi', '100-25,600 DPI'),
    ('4', 'weight', '63g'),
    ('4', 'battery', '70 giờ'),
    ('4', 'connectivity', 'Wireless 2.4GHz'),
    -- Bàn phím Keychron (id: 5)
    ('5', 'layout', '75% (82 phím)'),
    ('5', 'switch', 'Gateron Pro'),
    ('5', 'keycap', 'Double-shot PBT'),
    ('5', 'battery', '4000mAh'),
    ('5', 'connectivity', 'Wireless + USB-C'),
    -- Màn hình ASUS (id: 6)
    ('6', 'size', '27 inch'),
    ('6', 'resolution', '2560 x 1440 (2K)'),
    ('6', 'refreshRate', '240Hz'),
    ('6', 'panelType', 'OLED'),
    ('6', 'responseTime', '0.03ms'),
    -- PC RTX 4070 (id: 7)
    ('7', 'cpu', 'Intel Core i5-14400F'),
    ('7', 'ram', '32GB DDR4 3200MHz'),
    ('7', 'gpu', 'NVIDIA RTX 4070 12GB'),
    ('7', 'storage', '1TB NVMe SSD'),
    -- Laptop Acer Nitro (id: 8)
    ('8', 'cpu', 'Intel Core i5-12500H'),
    ('8', 'ram', '16GB DDR4 3200MHz'),
    ('8', 'gpu', 'NVIDIA RTX 4050 6GB'),
    ('8', 'storage', '512GB NVMe SSD'),
    ('8', 'display', '15.6" FHD 144Hz'),
    ('8', 'weight', '2.3kg');

-- Product Variants
INSERT INTO product_variants
    (id, product_id, name, price_adjustment)
VALUES
    -- PC RTX 4090 variants
    ('v1-1', '1', 'RAM 32GB', 0),
    ('v2-1', '1', 'RAM 64GB', 8000000),
    ('v3-1', '1', 'SSD 2TB', 0),
    ('v4-1', '1', 'SSD 4TB', 5000000),
    -- Laptop ASUS ROG variants
    ('v1-2', '2', 'RAM 16GB', 0),
    ('v2-2', '2', 'RAM 32GB', 4000000),
    -- Laptop MSI Titan variants
    ('v1-3', '3', 'RAM 64GB', 0),
    ('v2-3', '3', 'SSD 4TB', 0),
    ('v3-3', '3', 'SSD 8TB', 12000000),
    -- Chuột Logitech variants
    ('v1-4', '4', 'Màu Trắng', 0),
    ('v2-4', '4', 'Màu Đen', 0),
    ('v3-4', '4', 'Màu Hồng', 200000),
    -- Bàn phím Keychron variants
    ('v1-5', '5', 'Gateron Red', 0),
    ('v2-5', '5', 'Gateron Blue', 0),
    ('v3-5', '5', 'Gateron Brown', 0),
    -- PC RTX 4070 variants
    ('v1-7', '7', 'RAM 32GB', 0),
    ('v2-7', '7', 'RAM 64GB', 4000000),
    -- Bàn phím Logitech variants
    ('v1-39', '39', 'GL Clicky', 0),
    ('v2-39', '39', 'GL Tactile', 0),
    ('v3-39', '39', 'GL Linear', 0),
    -- Bàn phím Ducky variants
    ('v1-43', '43', 'Cherry MX Red', 0),
    ('v2-43', '43', 'Cherry MX Blue', 0),
    ('v3-43', '43', 'Cherry MX Brown', 0),
    ('v4-43', '43', 'Cherry MX Silent Red', 200000);

-- Product Highlights
INSERT INTO product_highlights
    (product_id, feature, display_order)
VALUES
    -- PC RTX 4090 (id: 1)
    ('1', 'Intel Core Ultra 9 285K - Hiệu năng vượt trội', 1),
    ('1', 'RTX 4090 24GB - Chiến mọi tựa game 4K', 2),
    ('1', 'RAM 32GB DDR5 6400MHz - Đa nhiệm mượt mà', 3),
    ('1', '2TB NVMe Gen4 - Tốc độ đọc/ghi siêu nhanh', 4),
    ('1', 'Tản nhiệt AIO 360mm - Làm mát hiệu quả', 5),
    ('1', 'Nguồn 1000W 80+ Gold - Ổn định tuyệt đối', 6),
    -- Laptop ASUS ROG (id: 2)
    ('2', 'CPU i9-14900HX 24 nhân - Hiệu năng khủng', 1),
    ('2', 'RTX 4070 8GB - Chiến game 2K mượt mà', 2),
    ('2', 'Màn hình 240Hz - Hình ảnh siêu mượt', 3),
    ('2', 'Bàn phím RGB Per-Key - Đẹp mắt, chuyên nghiệp', 4),
    ('2', 'Tản nhiệt ROG Intelligent Cooling', 5),
    -- Laptop MSI Titan (id: 3)
    ('3', 'i9-13980HX 24 nhân 32 luồng - Mạnh mẽ nhất', 1),
    ('3', 'RTX 4090 16GB Laptop - Đồ họa đỉnh cao', 2),
    ('3', 'Màn hình 4K Mini LED - Màu sắc tuyệt đẹp', 3),
    ('3', 'Bàn phím cơ Cherry MX - Trải nghiệm tuyệt vời', 4),
    ('3', 'Tản nhiệt Cooler Boost Titan', 5),
    -- Chuột Logitech (id: 4)
    ('4', 'Trọng lượng siêu nhẹ chỉ 63g', 1),
    ('4', 'Sensor HERO 25K DPI', 2),
    ('4', 'Pin 70 giờ sử dụng', 3),
    ('4', 'Kết nối LIGHTSPEED không trễ', 4),
    ('4', 'Thiết kế đối xứng tiện lợi', 5),
    -- Bàn phím Keychron (id: 5)
    ('5', 'Khung nhôm CNC nguyên khối', 1),
    ('5', 'Hot-swappable PCB', 2),
    ('5', 'QMK/VIA programming', 3),
    ('5', 'Kết nối không dây + USB-C', 4),
    ('5', 'Gasket mount - Typing êm ái', 5),
    -- Màn hình ASUS (id: 6)
    ('6', 'Tấm nền OLED - Màu sắc tuyệt đẹp', 1),
    ('6', 'Tần số quét 240Hz', 2),
    ('6', 'Thời gian phản hồi 0.03ms', 3),
    ('6', 'HDR True Black 400', 4),
    ('6', 'G-Sync Compatible', 5);

-- =============================================
-- Insert News
-- =============================================
INSERT INTO news
    (id, slug, title, excerpt, content, thumbnail, published_at, category, author)
VALUES
    ('1', 'nvidia-rtx-50-series-announcement', 'NVIDIA công bố dòng card RTX 50 series với hiệu năng vượt trội', 'Thế hệ card đồ họa mới nhất của NVIDIA hứa hẹn mang đến hiệu năng gấp đôi so với thế hệ trước, hỗ trợ AI và ray tracing thế hệ mới.', NULL, '/nvidia-rtx-graphics-card.jpg', '2024-01-15', 'Tin tức', 'GEARVN Editorial'),
    ('2', 'intel-core-ultra-review', 'Đánh giá chi tiết Intel Core Ultra 9 285K - CPU gaming mạnh nhất', 'Intel Core Ultra 9 285K với kiến trúc mới hoàn toàn, hiệu năng đơn nhân và đa nhân đều vượt trội, tiêu thụ điện năng tối ưu.', NULL, '/intel-processor-cpu.jpg', '2024-01-12', 'Review', 'Tech Reviewer'),
    ('3', 'gaming-monitor-buying-guide-2024', 'Hướng dẫn chọn mua màn hình gaming 2024', 'Tổng hợp đầy đủ các tiêu chí quan trọng khi chọn màn hình gaming: tần số quét, độ phân giải, tấm nền, thời gian phản hồi.', NULL, '/gaming-monitor-display.jpg', '2024-01-10', 'Hướng dẫn', 'Hardware Guide'),
    ('4', 'best-gaming-laptops-2024', 'Top 10 laptop gaming đáng mua nhất năm 2024', 'Danh sách những chiếc laptop gaming tốt nhất hiện nay, phù hợp với mọi tầm giá từ sinh viên đến game thủ chuyên nghiệp.', NULL, '/gaming-laptop.png', '2024-01-08', 'Top sản phẩm', 'Product Expert');

-- =============================================
-- Insert Promotions
-- =============================================
INSERT INTO promotions
    (id, slug, title, description, image, link, bg_color, start_date, end_date, discount, featured)
VALUES
    ('1', 'black-friday', 'Black Friday', 'Giảm đến 50% toàn bộ Gaming Gear', 'https://images.unsplash.com/photo-1607082348824-0a96f2a4b9da?w=800&q=80', '/promotion/black-friday', 'bg-gradient-to-r from-red-600 to-red-800', '2024-11-20', '2024-11-30', 'Giảm đến 50%', TRUE),
    ('2', 'build-pc', 'Build PC', 'Tặng màn hình khi mua PC', 'https://images.unsplash.com/photo-1587202372634-32705e3bf49c?w=800&q=80', '/promotion/build-pc', 'bg-gradient-to-r from-blue-600 to-blue-800', '2024-11-01', '2024-12-31', 'Tặng màn hình 24 inch', TRUE),
    ('3', 'laptop-gaming', 'Laptop Gaming', 'Trả góp 0% - Voucher 500K', 'https://images.unsplash.com/photo-1603302576837-37561b2e2302?w=800&q=80', '/promotion/laptop-gaming', 'bg-gradient-to-r from-purple-600 to-purple-800', '2024-11-15', '2024-12-15', 'Trả góp 0% + Voucher 500K', TRUE),
    ('4', 'gaming-gear', 'Gaming Gear', 'Mua 1 tặng 1 các phụ kiện', 'https://images.unsplash.com/photo-1538481199705-c710c4e965fc?w=800&q=80', '/promotion/gaming-gear', 'bg-gradient-to-r from-green-600 to-green-800', '2024-11-10', '2024-12-10', 'Mua 1 tặng 1', FALSE),
    ('5', 'monitor-sale', 'Flash Sale Màn Hình', 'Giảm 30% màn hình gaming', 'https://images.unsplash.com/photo-1527443224154-c4a3942d3acf?w=800&q=80', '/promotion/monitor-sale', 'bg-gradient-to-r from-orange-600 to-orange-800', '2024-11-22', '2024-11-25', 'Giảm 30%', TRUE),
    ('6', 'student-discount', 'Ưu đãi Sinh viên', 'Giảm 10% cho sinh viên', 'https://images.unsplash.com/photo-1588872657578-7efd1f1555ed?w=800&q=80', '/promotion/student-discount', 'bg-gradient-to-r from-indigo-600 to-indigo-800', '2024-11-01', '2024-12-31', 'Giảm 10%', FALSE);

-- =============================================
-- Insert Promotion Terms
-- =============================================
INSERT INTO promotion_terms
    (promotion_id, term_text, display_order)
VALUES
    -- Black Friday
    ('1', 'Áp dụng cho tất cả sản phẩm Gaming Gear', 1),
    ('1', 'Không áp dụng đồng thời với chương trình khác', 2),
    ('1', 'Số lượng có hạn, áp dụng đến hết 30/11', 3),
    ('1', 'Miễn phí vận chuyển cho đơn hàng trên 5 triệu', 4),
    -- Build PC
    ('2', 'Áp dụng khi mua PC Gaming từ 30 triệu', 1),
    ('2', 'Tặng màn hình 24 inch FHD 75Hz', 2),
    ('2', 'Hoặc giảm ngay 3 triệu nếu không nhận màn hình', 3),
    ('2', 'Bảo hành chính hãng đầy đủ', 4),
    -- Laptop Gaming
    ('3', 'Trả góp 0% lãi suất qua thẻ tín dụng', 1),
    ('3', 'Tặng voucher 500K cho đơn hàng từ 20 triệu', 2),
    ('3', 'Miễn phí giao hàng toàn quốc', 3),
    ('3', 'Tặng thêm chuột + balo laptop', 4),
    -- Gaming Gear
    ('4', 'Mua chuột gaming tặng mousepad', 1),
    ('4', 'Mua bàn phím tặng keycap set', 2),
    ('4', 'Áp dụng cho sản phẩm có giá từ 500K', 3),
    ('4', 'Quà tặng có giá trị tương đương hoặc thấp hơn', 4),
    -- Monitor Sale
    ('5', 'Flash sale 3 ngày duy nhất', 1),
    ('5', 'Áp dụng cho màn hình gaming từ 144Hz', 2),
    ('5', 'Giới hạn 5 sản phẩm/khách hàng', 3),
    ('5', 'Không áp dụng cho sản phẩm đã giảm giá', 4),
    -- Student Discount
    ('6', 'Xuất trình thẻ sinh viên hợp lệ', 1),
    ('6', 'Áp dụng cho laptop và PC gaming', 2),
    ('6', 'Tối đa 3 triệu đồng', 3),
    ('6', 'Miễn phí vận chuyển nội thành', 4);
