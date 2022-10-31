DROP SCHEMA IF EXISTS user;
CREATE SCHEMA user;
USE user;

CREATE TABLE user (
    user_id VARCHAR(10)  NOT NULL ,
    user_name VARCHAR(50),
    created_at TIMESTAMP,
    update_at TIMESTAMP,
    PRIMARY KEY(user_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;