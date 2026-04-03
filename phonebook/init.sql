CREATE DATABASE IF NOT EXISTS phonebook_db;
USE phonebook_db;

CREATE USER 'admin'@'%' IDENTIFIED WITH caching_sha2_password BY 'admin123';
GRANT ALL PRIVILEGES ON phonebook_db.* TO 'admin'@'%';
FLUSH PRIVILEGES;

CREATE TABLE IF NOT EXISTS phonebook_db.phonebook (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    number VARCHAR(100) NOT NULL,
    PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO phonebook_db.phonebook (name, number) VALUES
  ("Ali", "1234567890"),
  ("Ayşe", "5443210987"),
  ("Emre", "8765435544");
