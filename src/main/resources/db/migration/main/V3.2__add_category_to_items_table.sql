-- db/migration/V4__add_category_to_items_table.sql

-- Add category column to items table
ALTER TABLE items
ADD COLUMN category VARCHAR(255);
