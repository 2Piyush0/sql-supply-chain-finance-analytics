-- Total revenue generated
SELECT 
    SUM(net_sales) AS total_revenue
FROM sales;

-- Revenue by region
SELECT 
    c.region,
    SUM(s.net_sales) AS revenue
FROM sales s
JOIN customers c ON s.customer_id = c.customer_id
GROUP BY c.region
ORDER BY revenue DESC;
