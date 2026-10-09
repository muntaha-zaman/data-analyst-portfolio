SELECT ROUND(SUM(Revenue), 2) AS total_revenue
FROM retail_sales;


SELECT
    Description,
    ROUND(SUM(Revenue), 2) AS total_revenue
FROM retail_sales
GROUP BY Description
ORDER BY total_revenue DESC
LIMIT 5;


SELECT
    Country,
    ROUND(SUM(Revenue), 2) AS total_revenue
FROM retail_sales
GROUP BY Country
ORDER BY total_revenue DESC
LIMIT 5;


SELECT
    SUBSTR(InvoiceDate, 1, 7) AS sales_month,
    ROUND(SUM(Revenue), 2) AS monthly_revenue
FROM retail_sales
GROUP BY sales_month
ORDER BY sales_month;



SELECT
    "Customer ID",
    ROUND(SUM(Revenue), 2) AS total_revenue,
    COUNT(DISTINCT Invoice) AS number_of_orders
FROM retail_sales
WHERE "Customer ID" IS NOT NULL
GROUP BY "Customer ID"
ORDER BY total_revenue DESC
LIMIT 5;


SELECT
    COUNT(*) AS total_customers,
    SUM(CASE WHEN number_of_orders > 1 THEN 1 ELSE 0 END) AS repeat_customers,
    ROUND(
        100.0 * SUM(CASE WHEN number_of_orders > 1 THEN 1 ELSE 0 END) / COUNT(*),
        2
    ) AS repeat_customer_rate
FROM (
    SELECT
        "Customer ID",
        COUNT(DISTINCT Invoice) AS number_of_orders
    FROM retail_sales
    WHERE "Customer ID" IS NOT NULL
    GROUP BY "Customer ID"
);
