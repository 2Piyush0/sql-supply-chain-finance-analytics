-- Database Schema for Manufacturing Analytics
-- Company: Atliq Hardware (Simulated)

CREATE TABLE customers (
    customer_id INT,
    customer_name VARCHAR(100),
    market VARCHAR(50),
    region VARCHAR(50)
);

CREATE TABLE products (
    product_id INT,
    product_name VARCHAR(100),
    category VARCHAR(50),
    segment VARCHAR(50)
);

CREATE TABLE sales (
    order_id INT,
    order_date DATE,
    customer_id INT,
    product_id INT,
    quantity INT,
    net_sales DECIMAL(12,2)
);

CREATE TABLE finance (
    order_id INT,
    cost DECIMAL(12,2),
    profit DECIMAL(12,2)
);

CREATE TABLE forecasts (
    product_id INT,
    forecast_quantity INT,
    actual_quantity INT
);
