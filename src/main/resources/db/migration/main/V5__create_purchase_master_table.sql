-- db/migration/V3__create_purchase_master_table.sql

-- Create table purchase_master
CREATE TABLE purchase_master (
    id SERIAL PRIMARY KEY,
    supplier_id BIGINT NOT NULL,
    invoice_no BIGINT UNIQUE,
    date VARCHAR(255),
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT fk_supplier_id FOREIGN KEY (supplier_id) REFERENCES suppliers(id)
);
