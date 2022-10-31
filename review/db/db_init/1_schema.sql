DROP SCHEMA IF EXISTS review;
CREATE SCHEMA review;
USE review;

CREATE TABLE review (
    review_id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
    user_id VARCHAR(10),
    product_id SMALLINT,
    review_content TEXT,
    review_rank INT,
    created_at TIMESTAMP,
    PRIMARY KEY(review_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;