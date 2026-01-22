-- Rank customers by revenue within each region
SELECT 
    c.region,
    c.customer_name,
    SUM(s.net_sales) AS revenue,
    RANK() OVER (
        PARTITION BY c.region 
        ORDER BY SUM(s.net_sales) DESC
    ) AS region_rank
FROM sales s
JOIN customers c ON s.customer_id = c.customer_id
GROUP BY c.region, c.customer_name;
