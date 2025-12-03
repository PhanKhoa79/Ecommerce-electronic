# E-commerce Frontend

## Setup Database (MongoDB)

### 1. Cài đặt MongoDB

**Option A: MongoDB Local (Đơn giản)**

1. Tải MongoDB Community Server: https://www.mongodb.com/try/download/community
2. Cài đặt và khởi động MongoDB service
3. Mặc định MongoDB chạy tại `mongodb://localhost:27017`

**Option B: MongoDB Atlas (Cloud - Khuyến nghị)**

1. Tạo tài khoản tại: https://www.mongodb.com/cloud/atlas
2. Tạo cluster miễn phí (M0)
3. Lấy connection string

### 2. Cấu hình môi trường

Tạo file `.env.local` với nội dung:

**Nếu dùng MongoDB Local:**

```env
MONGODB_URI=mongodb://localhost:27017/ecommerce_db
```

**Nếu dùng MongoDB Atlas:**

```env
MONGODB_URI=mongodb+srv://<username>:<password>@cluster.mongodb.net/ecommerce_db?retryWrites=true&w=majority
```

### 3. Import dữ liệu vào MongoDB

Chỉ cần **1 lệnh** để có full data (64 products):

```bash
node database/seed-mongodb-from-json.js
```

Script này sẽ:

- Đọc dữ liệu từ `database/mongodb-seed-data.json`
- Xóa data cũ (nếu có)
- Import 13 categories, 64 products, 4 news, 6 promotions
- **KHÔNG cần MySQL!**

### 3.1. (Tùy chọn) Nếu muốn convert từ MySQL

Nếu bạn có database MySQL và muốn convert sang MongoDB:

**Bước 1: Cấu hình MySQL trong `.env.local`**

```env
# Thêm vào file .env.local
DB_HOST=localhost
DB_USER=root
DB_PASSWORD=your_mysql_password
DB_NAME=ecommerce_db
```

**Bước 2: Import MySQL data**

```bash
mysql -u root -p < database/db-mysql.sql
```

**Bước 3: Cài đặt mysql2 tạm thời**

```bash
npm install mysql2
```

**Bước 4: Chạy script convert**

```bash
node database/convert-mysql-to-mongodb.js
```

**Bước 5: Gỡ mysql2**

```bash
npm uninstall mysql2
```

## Chạy ứng dụng

```bash
# Cài đặt dependencies (nếu chưa)
npm install

# Chạy development server
npm run dev

# Hoặc khởi động production server
npm start
```

Truy cập: http://localhost:3000

## Cấu trúc dữ liệu MongoDB

```
ecommerce_db/
├── categories (13 documents)
├── products (64 documents)
│   ├── 16 PC Gaming
│   ├── 23 Laptop Gaming
│   ├── 7 Chuột Gaming
│   ├── 7 Bàn phím
│   ├── 9 Màn hình
│   ├── 5 CPU
│   └── 7 VGA
├── news (4 documents)
└── promotions (6 documents)
```

## Lưu ý

- Dữ liệu gốc từ MySQL đã được optimize cho MongoDB với embedded documents
- Không cần JOIN queries nữa, tất cả thông tin product trong 1 document
- Nhanh hơn 3-5 lần so với MySQL khi query products
