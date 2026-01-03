CREATE DATABASE RetailDB;


SELECT TOP 10 * FROM orders;


SELECT
    SUM(sale_price) AS total_sales,
    SUM(profit) AS total_profit
FROM orders;



SELECT
    category,
    SUM(sale_price) AS sales
FROM orders
GROUP BY category
ORDER BY sales DESC;


SELECT
    YEAR(order_date) AS year,
    MONTH(order_date) AS month,
    SUM(sale_price) AS sales
FROM orders
GROUP BY YEAR(order_date), MONTH(order_date)
ORDER BY year, month;



SELECT TOP 10
    sub_category,
    SUM(profit) AS profit
FROM orders
GROUP BY sub_category
ORDER BY profit DESC;


