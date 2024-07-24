-- db/migration/V5__create_sale_details_table.sql

-- Create table sale_details
CREATE TABLE sale_details (
    id SERIAL PRIMARY KEY,
    sale_master_id BIGINT NOT NULL,
    item BIGINT NOT NULL,
    quantity INT NOT NULL,
    rate DOUBLE PRECISION NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT fk_sale_master_id FOREIGN KEY (sale_master_id) REFERENCES sale_masters(id),
    CONSTRAINT fk_item FOREIGN KEY (item) REFERENCES items(id)
);
