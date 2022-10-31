DROP SCHEMA IF EXISTS product;
CREATE SCHEMA product;
USE product;

CREATE TABLE product (
    product_id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
    product_name VARCHAR(50),
    price INT UNSIGNED,
    stock_num INT UNSIGNED,
    company_id SMALLINT,
    created_at TIMESTAMP,
    update_at TIMESTAMP,
    PRIMARY KEY(product_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;