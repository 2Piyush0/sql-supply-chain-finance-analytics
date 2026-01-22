-- Total records explored
SELECT 
    COUNT(*) AS total_sales_records
FROM sales;

-- Date range of data
SELECT 
    MIN(order_date) AS start_date,
    MAX(order_date) AS end_date
FROM sales;
