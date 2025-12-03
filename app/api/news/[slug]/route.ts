import { NextResponse } from 'next/server';
import pool from '@/lib/db/connection';
import { RowDataPacket } from 'mysql2';

interface NewsRow extends RowDataPacket {
  id: string;
  slug: string;
  title: string;
  excerpt: string;
  content: string | null;
  thumbnail: string;
  published_at: Date;
  category: string;
  author: string;
}

export async function GET(
  request: Request,
  { params }: { params: Promise<{ slug: string }> }
) {
  try {
    const { slug } = await params;

    const [news] = await pool.query<NewsRow[]>(
      'SELECT * FROM news WHERE slug = ? LIMIT 1',
      [slug]
    );

    if (news.length === 0) {
      return NextResponse.json(
        { error: 'News article not found' },
        { status: 404 }
      );
    }

    const article = news[0];

    return NextResponse.json({
      id: article.id,
      slug: article.slug,
      title: article.title,
      excerpt: article.excerpt,
      content: article.content,
      thumbnail: article.thumbnail,
      publishedAt: article.published_at,
      category: article.category,
      author: article.author,
    });
  } catch (error: any) {
    console.error('Error fetching news article:', error);
    return NextResponse.json(
      { error: 'Failed to fetch news article', details: error.message },
      { status: 500 }
    );
  }
}
