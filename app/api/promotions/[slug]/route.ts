import { NextResponse } from 'next/server';
import pool from '@/lib/db/connection';
import { RowDataPacket } from 'mysql2';

interface PromotionRow extends RowDataPacket {
  id: string;
  slug: string;
  title: string;
  description: string;
  image: string;
  link: string;
  bg_color: string;
  start_date: Date;
  end_date: Date;
  discount: string;
  featured: boolean;
}

interface PromotionTermRow extends RowDataPacket {
  term_text: string;
}

export async function GET(
  request: Request,
  { params }: { params: Promise<{ slug: string }> }
) {
  try {
    const { slug } = await params;

    const [promotions] = await pool.query<PromotionRow[]>(
      'SELECT * FROM promotions WHERE slug = ? LIMIT 1',
      [slug]
    );

    if (promotions.length === 0) {
      return NextResponse.json(
        { error: 'Promotion not found' },
        { status: 404 }
      );
    }

    const promo = promotions[0];

    const [terms] = await pool.query<PromotionTermRow[]>(
      'SELECT term_text FROM promotion_terms WHERE promotion_id = ? ORDER BY display_order',
      [promo.id]
    );

    return NextResponse.json({
      id: promo.id,
      slug: promo.slug,
      title: promo.title,
      description: promo.description,
      image: promo.image,
      link: promo.link,
      bgColor: promo.bg_color,
      startDate: promo.start_date,
      endDate: promo.end_date,
      discount: promo.discount,
      terms: terms.map((t) => t.term_text),
      featured: promo.featured,
    });
  } catch (error: any) {
    console.error('Error fetching promotion:', error);
    return NextResponse.json(
      { error: 'Failed to fetch promotion', details: error.message },
      { status: 500 }
    );
  }
}
