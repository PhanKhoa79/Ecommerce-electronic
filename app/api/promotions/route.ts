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

export async function GET(request: Request) {
  try {
    const { searchParams } = new URL(request.url);
    const featured = searchParams.get('featured');

    let query = 'SELECT * FROM promotions WHERE 1=1';
    const params: any[] = [];

    if (featured === 'true') {
      query += ' AND featured = TRUE';
    }

    query += ' ORDER BY start_date DESC';

    const [promotions] = await pool.query<PromotionRow[]>(query, params);

    // Get terms for each promotion
    const promotionsWithTerms = await Promise.all(
      promotions.map(async (promo) => {
        const [terms] = await pool.query<PromotionTermRow[]>(
          'SELECT term_text FROM promotion_terms WHERE promotion_id = ? ORDER BY display_order',
          [promo.id]
        );

        return {
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
        };
      })
    );

    return NextResponse.json(promotionsWithTerms);
  } catch (error: any) {
    console.error('Error fetching promotions:', error);
    return NextResponse.json(
      { error: 'Failed to fetch promotions', details: error.message },
      { status: 500 }
    );
  }
}
