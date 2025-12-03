import { NextResponse } from 'next/server';
import pool from '@/lib/db/connection';
import { RowDataPacket } from 'mysql2';

interface ProductRow extends RowDataPacket {
  id: string;
  slug: string;
  name: string;
  price: number;
  original_price: number;
  rating: number;
  review_count: number;
  main_image: string;
  description: string;
  category: string;
  brand: string;
  badge: string | null;
}

interface ProductImageRow extends RowDataPacket {
  image_url: string;
}

interface ProductSpecRow extends RowDataPacket {
  spec_key: string;
  spec_value: string;
}

interface ProductVariantRow extends RowDataPacket {
  id: string;
  name: string;
  price_adjustment: number;
}

interface ProductHighlightRow extends RowDataPacket {
  feature: string;
}

export async function GET(
  request: Request,
  { params }: { params: Promise<{ slug: string }> }
) {
  try {
    const { slug } = await params;

    // Get product by slug
    const [products] = await pool.query<ProductRow[]>(
      'SELECT * FROM products WHERE slug = ? LIMIT 1',
      [slug]
    );

    if (products.length === 0) {
      return NextResponse.json(
        { error: 'Product not found' },
        { status: 404 }
      );
    }

    const product = products[0];

    // Get gallery images
    const [images] = await pool.query<ProductImageRow[]>(
      'SELECT image_url FROM product_images WHERE product_id = ? ORDER BY display_order',
      [product.id]
    );

    // Get specs
    const [specs] = await pool.query<ProductSpecRow[]>(
      'SELECT spec_key, spec_value FROM product_specs WHERE product_id = ?',
      [product.id]
    );

    // Get variants
    const [variants] = await pool.query<ProductVariantRow[]>(
      'SELECT id, name, price_adjustment FROM product_variants WHERE product_id = ?',
      [product.id]
    );

    // Get highlight features
    const [highlights] = await pool.query<ProductHighlightRow[]>(
      'SELECT feature FROM product_highlights WHERE product_id = ? ORDER BY display_order',
      [product.id]
    );

    // Transform specs array to object
    const specsObject: Record<string, string> = {};
    specs.forEach((spec) => {
      specsObject[spec.spec_key] = spec.spec_value;
    });

    const productWithDetails = {
      id: product.id,
      slug: product.slug,
      name: product.name,
      price: product.price,
      originalPrice: product.original_price,
      rating: product.rating,
      reviewCount: product.review_count,
      mainImage: product.main_image,
      gallery: images.map((img) => img.image_url),
      specs: specsObject,
      variants: variants.map((v) => ({
        id: v.id,
        name: v.name,
        priceAdjustment: v.price_adjustment,
      })),
      description: product.description,
      highlightFeatures: highlights.map((h) => h.feature),
      category: product.category,
      brand: product.brand,
      badge: product.badge,
    };

    return NextResponse.json(productWithDetails);
  } catch (error: any) {
    console.error('Error fetching product:', error);
    return NextResponse.json(
      { error: 'Failed to fetch product', details: error.message },
      { status: 500 }
    );
  }
}
