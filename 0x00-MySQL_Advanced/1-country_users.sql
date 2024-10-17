-- Script to create the users table with specific attributes, including an enum for the country
-- The table includes an auto-incrementing primary key, a unique email, name, and country column

CREATE TABLE IF NOT EXISTS users (
    id INT NOT NULL AUTO_INCREMENT,              -- Primary key, auto-incrementing ID
    email VARCHAR(255) NOT NULL UNIQUE,          -- Email, must be unique and cannot be null
    name VARCHAR(255),                           -- Name, optional
    country ENUM('US', 'CO', 'TN') NOT NULL DEFAULT 'US',  -- Country enum, default is 'US'
    PRIMARY KEY (id)                             -- Set 'id' as the primary key
);
