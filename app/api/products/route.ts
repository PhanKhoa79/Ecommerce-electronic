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

export async function GET(request: Request) {
  try {
    const { searchParams } = new URL(request.url);
    const category = searchParams.get('category');
    const limit = searchParams.get('limit');
    const search = searchParams.get('search');

    let query = 'SELECT * FROM products WHERE 1=1';
    const params: any[] = [];

    // Filter by category
    if (category) {
      query += ' AND category LIKE ?';
      params.push(`%${category}%`);
    }

    // Search by name
    if (search) {
      query += ' AND name LIKE ?';
      params.push(`%${search}%`);
    }

    // Order by rating and review count
    query += ' ORDER BY rating DESC, review_count DESC';

    // Limit results
    if (limit) {
      query += ' LIMIT ?';
      params.push(parseInt(limit));
    }

    const [products] = await pool.query<ProductRow[]>(query, params);

    // Get additional data for each product
    const productsWithDetails = await Promise.all(
      products.map(async (product) => {
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

        return {
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
      })
    );

    return NextResponse.json(productsWithDetails);
  } catch (error: any) {
    console.error('Error fetching products:', error);
    return NextResponse.json(
      { error: 'Failed to fetch products', details: error.message },
      { status: 500 }
    );
  }
}
