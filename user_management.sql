-- Creating a database for user management
CREATE DATABASE UserManagement;

-- Switching to the database
USE UserManagement;

-- Creating a table to store user information
CREATE TABLE Users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    email VARCHAR(100) NOT NULL UNIQUE,
    password_hash VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Inserting sample users
INSERT INTO Users (username, email, password_hash) 
VALUES ('john_doe', 'john.doe@example.com', 'hashed_password_123');

-- Retrieving all users
SELECT * FROM Users;

-- Updating a user's email
UPDATE Users 
SET email = 'john.new@example.com'
WHERE username = 'john_doe';

-- Deleting a user
DELETE FROM Users WHERE username = 'john_doe';
