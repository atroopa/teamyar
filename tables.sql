-- Create the database if it doesn't exist
CREATE DATABASE IF NOT EXISTS `teamyar`;

-- Use the `teamyar` database
USE `teamyar`;

-- Create the `products` table
CREATE TABLE `products` (
  `id` INT AUTO_INCREMENT PRIMARY KEY NOT NULL UNIQUE,
  `name` VARCHAR(100),
  `brand` VARCHAR(100),
  `color` VARCHAR(100),
  `model` VARCHAR(100),
  `features` TEXT
);

-- Create the `warehouses` table
CREATE TABLE `warehouses` (
  `id` INT AUTO_INCREMENT PRIMARY KEY NOT NULL UNIQUE,
  `name` VARCHAR(100)
);

-- Create the `customers` table
CREATE TABLE `customers` (
  `id` INT AUTO_INCREMENT PRIMARY KEY,
  `name` VARCHAR(100),
  `city` VARCHAR(100),
  `age` INT
);

-- Create the `sales_invoices` table
CREATE TABLE `sales_invoices` (
  `id` INT AUTO_INCREMENT PRIMARY KEY NOT NULL UNIQUE,
  `customer_id` INT,
  `warehouse_id` INT,
  `product_id` INT,
  `quantity` INT,
  `date` DATE,
  FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  FOREIGN KEY (`warehouse_id`) REFERENCES `warehouses` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
);

-- Create the `popular_products` table
CREATE TABLE `popular_products` (
  `id` INT AUTO_INCREMENT PRIMARY KEY NOT NULL UNIQUE,
  `product_id` INT,
  FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
);
