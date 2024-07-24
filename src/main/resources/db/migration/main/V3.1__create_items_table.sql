-- db/migration/V3__create_items_table.sql

-- Create table items
CREATE TABLE items (
    id SERIAL PRIMARY KEY,
    item VARCHAR(255) NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT UK_items_item UNIQUE (item)
);
