-- Forecast accuracy calculation
SELECT 
    product_id,
    SUM(actual_quantity) AS actual,
    SUM(forecast_quantity) AS forecast,
    ROUND(
        (1 - ABS(SUM(actual_quantity - forecast_quantity)) 
        / SUM(actual_quantity)) * 100, 2
    ) AS forecast_accuracy
FROM forecasts
GROUP BY product_id;
