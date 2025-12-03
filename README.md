# E-commerce Frontend

## Setup Database

Import file database để tạo database:

```bash
mysql -u root -p < database/db.sql
```

Hoặc trong MySQL Workbench: File → Open SQL Script → chọn `database/db.sql` → Execute

## Cấu hình môi trường

Tạo file `.env.local`:

```env
DB_HOST=localhost
DB_USER=root
DB_PASSWORD=your_password
DB_NAME=ecommerce_db
```

## Chạy ứng dụng

```bash
# Cài đặt dependencies
npm install

# Chạy development server
npm run dev

# Hoặc khởi động server
npm start
```

Truy cập: http://localhost:3000
