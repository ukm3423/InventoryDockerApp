-- db/migration/V3.3__add_amount_to_items_table.sql

-- Add amount column to items table
ALTER TABLE items 
ADD COLUMN amount DOUBLE PRECISION ;
