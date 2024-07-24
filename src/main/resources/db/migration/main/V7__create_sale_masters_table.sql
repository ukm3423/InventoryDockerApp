-- db/migration/V4__create_sale_masters_table.sql

-- Create table sale_masters
CREATE TABLE sale_masters (
    id SERIAL PRIMARY KEY,
    customer_name VARCHAR(255),
    contact_no BIGINT,
    bill_no VARCHAR(255) UNIQUE,
    bill_date DATE,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);
