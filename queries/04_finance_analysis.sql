-- Profit analysis
SELECT 
    SUM(profit) AS total_profit,
    SUM(cost) AS total_cost
FROM finance;

-- Profit by product category
SELECT 
    p.category,
    SUM(f.profit) AS total_profit
FROM finance f
JOIN sales s ON f.order_id = s.order_id
JOIN products p ON s.product_id = p.product_id
GROUP BY p.category
ORDER BY total_profit DESC;
