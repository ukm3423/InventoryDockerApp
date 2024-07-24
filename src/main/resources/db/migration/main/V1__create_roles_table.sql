-- db/migration/V2__create_roles_table.sql

-- Create roles table
CREATE TABLE IF NOT EXISTS roles (
    id SERIAL PRIMARY KEY,
    role_name VARCHAR(100) NOT NULL,
    description VARCHAR(255)
);
