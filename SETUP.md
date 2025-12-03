# 🚀 Hướng dẫn Setup MySQL Database

## Bước 1: Cài đặt MySQL

### Windows

1. Download MySQL Community Server từ: https://dev.mysql.com/downloads/mysql/
2. Cài đặt và thiết lập password cho user `root`
3. Khởi động MySQL service

### macOS (Homebrew)

```bash
brew install mysql
brew services start mysql
mysql_secure_installation
```

### Linux (Ubuntu/Debian)

```bash
sudo apt update
sudo apt install mysql-server
sudo systemctl start mysql
sudo mysql_secure_installation
```

## Bước 2: Tạo Database

Mở MySQL command line hoặc MySQL Workbench và chạy:

```sql
CREATE DATABASE ecommerce_db CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
```

## Bước 3: Cấu hình môi trường

Cập nhật file `.env.local` với thông tin database của bạn:

```env
DB_HOST=localhost
DB_USER=root
DB_PASSWORD=your_password_here
DB_NAME=ecommerce_db
```

## Bước 4: Chạy Schema Migration

Import schema để tạo các bảng:

```bash
mysql -u root -p ecommerce_db < database/schema.sql
```

Hoặc trong MySQL Workbench:

1. File → Open SQL Script → chọn `database/schema.sql`
2. Execute

## Bước 5: Import Seed Data

Import dữ liệu mẫu (theo thứ tự):

```bash
# Import data chính
mysql -u root -p ecommerce_db < database/seed.sql

# Import sản phẩm còn lại
mysql -u root -p ecommerce_db < database/seed-part2.sql

# Import chi tiết sản phẩm, news và promotions
mysql -u root -p ecommerce_db < database/seed-part3.sql
```

Hoặc trong MySQL Workbench, chạy lần lượt 3 file SQL trên.

## Bước 6: Kiểm tra Database

Kiểm tra xem dữ liệu đã được import thành công:

```sql
USE ecommerce_db;

-- Kiểm tra số lượng records
SELECT 'categories' as table_name, COUNT(*) as count FROM categories
UNION ALL
SELECT 'products', COUNT(*) FROM products
UNION ALL
SELECT 'product_images', COUNT(*) FROM product_images
UNION ALL
SELECT 'product_specs', COUNT(*) FROM product_specs
UNION ALL
SELECT 'product_variants', COUNT(*) FROM product_variants
UNION ALL
SELECT 'product_highlights', COUNT(*) FROM product_highlights
UNION ALL
SELECT 'news', COUNT(*) FROM news
UNION ALL
SELECT 'promotions', COUNT(*) FROM promotions
UNION ALL
SELECT 'promotion_terms', COUNT(*) FROM promotion_terms;
```

Kết quả mong đợi:

- categories: 13
- products: 64
- news: 4
- promotions: 6
- Các bảng khác sẽ có số lượng tương ứng

## Bước 7: Khởi động Development Server

```bash
pnpm dev
```

Server sẽ chạy tại: http://localhost:3000

## Kiểm tra API Endpoints

### Products

- GET `/api/products` - Lấy tất cả sản phẩm
- GET `/api/products?category=Laptop Gaming` - Lọc theo category
- GET `/api/products?limit=10` - Giới hạn số lượng
- GET `/api/products?search=gaming` - Tìm kiếm
- GET `/api/products/[slug]` - Lấy chi tiết sản phẩm

### Categories

- GET `/api/categories` - Lấy tất cả danh mục

### News

- GET `/api/news` - Lấy tất cả tin tức
- GET `/api/news?limit=4` - Giới hạn số lượng
- GET `/api/news/[slug]` - Lấy chi tiết bài viết

### Promotions

- GET `/api/promotions` - Lấy tất cả khuyến mãi
- GET `/api/promotions?featured=true` - Chỉ lấy featured
- GET `/api/promotions/[slug]` - Lấy chi tiết khuyến mãi

## Test API với curl

```bash
# Test products API
curl http://localhost:3000/api/products?limit=5

# Test single product
curl http://localhost:3000/api/products/laptop-gaming-asus-rog-strix

# Test categories
curl http://localhost:3000/api/categories

# Test news
curl http://localhost:3000/api/news

# Test promotions
curl http://localhost:3000/api/promotions?featured=true
```

## Troubleshooting

### Lỗi kết nối Database

- Kiểm tra MySQL service đang chạy
- Kiểm tra thông tin trong `.env.local` chính xác
- Kiểm tra user có quyền truy cập database

### Lỗi Import SQL

- Đảm bảo charset database là utf8mb4
- Chạy lại schema.sql trước khi import seed data
- Kiểm tra không có lỗi syntax trong file SQL

### Lỗi API 500

- Kiểm tra logs trong terminal
- Kiểm tra database connection
- Kiểm tra table names và column names chính xác

## Cấu trúc Database

```
ecommerce_db/
├── categories (13 records)
├── products (64 records)
├── product_images (gallery images)
├── product_specs (technical specifications)
├── product_variants (price variants)
├── product_highlights (feature highlights)
├── news (4 records)
├── promotions (6 records)
└── promotion_terms (terms for each promotion)
```

## API Response Format

### Product Object

```json
{
  "id": "1",
  "slug": "pc-gaming-rtx-4090-ultra",
  "name": "PC Gaming GVN Intel Core Ultra 9 285K | RTX 4090",
  "price": 85990000,
  "originalPrice": 95000000,
  "rating": 5.0,
  "reviewCount": 127,
  "mainImage": "https://...",
  "gallery": ["https://...", "https://..."],
  "specs": {
    "cpu": "Intel Core Ultra 9 285K",
    "ram": "32GB DDR5 6400MHz",
    "gpu": "NVIDIA RTX 4090 24GB"
  },
  "variants": [
    {
      "id": "v1-1",
      "name": "RAM 32GB",
      "priceAdjustment": 0
    }
  ],
  "description": "...",
  "highlightFeatures": ["Feature 1", "Feature 2"],
  "category": "PC Gaming",
  "brand": "GVN",
  "badge": "Quà tặng HOT"
}
```

## Bước tiếp theo

Sau khi setup xong database và API, bạn có thể:

1. Cập nhật các components để fetch từ API thay vì import data fake
2. Thêm loading states và error handling
3. Implement pagination cho danh sách sản phẩm
4. Thêm các API endpoints mới (filters, sorting, etc.)
5. Implement caching với Redis hoặc Next.js cache

---

**Note:** File này được tạo tự động. Nếu gặp vấn đề, vui lòng kiểm tra logs và database connection.
