-- =============================================
-- E-Commerce Database Schema
-- Created: December 3, 2025
-- =============================================

-- Drop existing tables if they exist
DROP TABLE IF EXISTS promotion_terms;
DROP TABLE IF EXISTS promotions;
DROP TABLE IF EXISTS news;
DROP TABLE IF EXISTS product_variants;
DROP TABLE IF EXISTS product_specs;
DROP TABLE IF EXISTS product_images;
DROP TABLE IF EXISTS products;
DROP TABLE IF EXISTS categories;

-- =============================================
-- Categories Table
-- =============================================
CREATE TABLE categories
(
  id VARCHAR(50) PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  slug VARCHAR(255) NOT NULL UNIQUE,
  image VARCHAR(500),
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
  ON
  UPDATE CURRENT_TIMESTAMP,
  INDEX idx_slug (slug)
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

  -- =============================================
  -- Products Table
  -- =============================================
  CREATE TABLE products
  (
    id VARCHAR(50) PRIMARY KEY,
    slug VARCHAR(255) NOT NULL UNIQUE,
    name VARCHAR(500) NOT NULL,
    price DECIMAL(15, 2) NOT NULL,
    original_price DECIMAL(15, 2) NOT NULL,
    rating DECIMAL(2, 1) DEFAULT 0,
    review_count INT DEFAULT 0,
    main_image VARCHAR(500),
    description TEXT,
    category VARCHAR(255) NOT NULL,
    brand VARCHAR(255),
    badge VARCHAR(100),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
    ON
    UPDATE CURRENT_TIMESTAMP,
  INDEX idx_slug (slug),
  INDEX idx_category (category),
  INDEX idx_brand (brand),
  INDEX idx_price (price)
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

    -- =============================================
    -- Product Images Table (Gallery)
    -- =============================================
    CREATE TABLE product_images
    (
      id INT
      AUTO_INCREMENT PRIMARY KEY,
  product_id VARCHAR
      (50) NOT NULL,
  image_url VARCHAR
      (500) NOT NULL,
  display_order INT DEFAULT 0,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY
      (product_id) REFERENCES products
      (id) ON
      DELETE CASCADE,
  INDEX idx_product_id (product_id)
      ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

      -- =============================================
      -- Product Specifications Table
      -- =============================================
      CREATE TABLE product_specs
      (
        id INT
        AUTO_INCREMENT PRIMARY KEY,
  product_id VARCHAR
        (50) NOT NULL,
  spec_key VARCHAR
        (100) NOT NULL,
  spec_value TEXT,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY
        (product_id) REFERENCES products
        (id) ON
        DELETE CASCADE,
  INDEX idx_product_id (product_id),
  INDEX idx_spec_key
        (spec_key)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

        -- =============================================
        -- Product Variants Table
        -- =============================================
        CREATE TABLE product_variants
        (
          id VARCHAR(50) PRIMARY KEY,
          product_id VARCHAR(50) NOT NULL,
          name VARCHAR(255) NOT NULL,
          price_adjustment DECIMAL(15, 2) DEFAULT 0,
          created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
          FOREIGN KEY (product_id) REFERENCES products(id) ON DELETE CASCADE,
          INDEX idx_product_id (product_id)
        )
        ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

        -- =============================================
        -- Product Highlight Features Table
        -- =============================================
        CREATE TABLE product_highlights
        (
          id INT
          AUTO_INCREMENT PRIMARY KEY,
  product_id VARCHAR
          (50) NOT NULL,
  feature TEXT NOT NULL,
  display_order INT DEFAULT 0,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY
          (product_id) REFERENCES products
          (id) ON
          DELETE CASCADE,
  INDEX idx_product_id (product_id)
          ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

          -- =============================================
          -- News Table
          -- =============================================
          CREATE TABLE news
          (
            id VARCHAR(50) PRIMARY KEY,
            slug VARCHAR(255) NOT NULL UNIQUE,
            title VARCHAR(500) NOT NULL,
            excerpt TEXT,
            content LONGTEXT,
            thumbnail VARCHAR(500),
            published_at DATE,
            category VARCHAR(100),
            author VARCHAR(255),
            created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
            updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
            ON
            UPDATE CURRENT_TIMESTAMP,
  INDEX idx_slug (slug),
  INDEX idx_category (category),
  INDEX idx_published_at (published_at)
            ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

            -- =============================================
            -- Promotions Table
            -- =============================================
            CREATE TABLE promotions
            (
              id VARCHAR(50) PRIMARY KEY,
              slug VARCHAR(255) NOT NULL UNIQUE,
              title VARCHAR(500) NOT NULL,
              description TEXT,
              image VARCHAR(500),
              link VARCHAR(500),
              bg_color VARCHAR(100),
              start_date DATE,
              end_date DATE,
              discount VARCHAR(255),
              featured BOOLEAN DEFAULT FALSE,
              created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
              updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
              ON
              UPDATE CURRENT_TIMESTAMP,
  INDEX idx_slug (slug),
  INDEX idx_featured (featured),
  INDEX idx_dates (start_date, end_date)
              ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

              -- =============================================
              -- Promotion Terms Table
              -- =============================================
              CREATE TABLE promotion_terms
              (
                id INT
                AUTO_INCREMENT PRIMARY KEY,
  promotion_id VARCHAR
                (50) NOT NULL,
  term_text TEXT NOT NULL,
  display_order INT DEFAULT 0,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY
                (promotion_id) REFERENCES promotions
                (id) ON
                DELETE CASCADE,
  INDEX idx_promotion_id (promotion_id)
                ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
