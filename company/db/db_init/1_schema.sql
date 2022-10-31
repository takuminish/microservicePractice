DROP SCHEMA IF EXISTS company;
CREATE SCHEMA company;
USE company;

CREATE TABLE company (
    company_id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
    company_name VARCHAR(50),
    created_at TIMESTAMP,
    update_at TIMESTAMP,
    PRIMARY KEY(company_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;