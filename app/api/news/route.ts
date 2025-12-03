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

export async function GET(request: Request) {
  try {
    const { searchParams } = new URL(request.url);
    const limit = searchParams.get('limit');

    let query = 'SELECT * FROM news ORDER BY published_at DESC';
    const params: any[] = [];

    if (limit) {
      query += ' LIMIT ?';
      params.push(parseInt(limit));
    }

    const [news] = await pool.query<NewsRow[]>(query, params);

    const newsArticles = news.map((article) => ({
      id: article.id,
      slug: article.slug,
      title: article.title,
      excerpt: article.excerpt,
      content: article.content,
      thumbnail: article.thumbnail,
      publishedAt: article.published_at,
      category: article.category,
      author: article.author,
    }));

    return NextResponse.json(newsArticles);
  } catch (error: any) {
    console.error('Error fetching news:', error);
    return NextResponse.json(
      { error: 'Failed to fetch news', details: error.message },
      { status: 500 }
    );
  }
}
