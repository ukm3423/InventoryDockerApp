-- db/migration/V2__create_purchase_details_table.sql

-- Create table purchase_details
CREATE TABLE purchase_details (
    id SERIAL PRIMARY KEY,
    quantity INT NOT NULL,
    rate DOUBLE PRECISION NOT NULL,
    purchase_master_id BIGINT NOT NULL,
    item BIGINT NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT fk_purchase_master_id FOREIGN KEY (purchase_master_id) REFERENCES purchase_master(id),
    CONSTRAINT fk_item FOREIGN KEY (item) REFERENCES items(id)
);
