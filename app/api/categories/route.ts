import { NextResponse } from 'next/server';
import pool from '@/lib/db/connection';
import { RowDataPacket } from 'mysql2';

interface CategoryRow extends RowDataPacket {
  id: string;
  name: string;
  slug: string;
  image: string;
}

export async function GET() {
  try {
    const [categories] = await pool.query<CategoryRow[]>(
      'SELECT id, name, slug, image FROM categories ORDER BY name'
    );

    return NextResponse.json(categories);
  } catch (error: any) {
    console.error('Error fetching categories:', error);
    return NextResponse.json(
      { error: 'Failed to fetch categories', details: error.message },
      { status: 500 }
    );
  }
}
