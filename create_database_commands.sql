-- to create a new database
CREATE DATABASE database_name;

-- for show all created databases
SHOW DATABASES;

-- Switching to Your New Database
USE database_name;

-- Deleting a Database
DROP DATABASE database_name;

-- Ensures that database supports all Unicode characters and is compatible with various languages and symbols.
CREATE DATABASE GeeksForGeeks CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- Database Already Exists
CREATE DATABASE IF NOT EXISTS GeeksForGeeks;
