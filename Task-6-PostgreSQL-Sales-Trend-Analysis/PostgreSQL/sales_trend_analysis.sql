CREATE TABLE online_sales (
    order_id INT PRIMARY KEY,
    order_date DATE,
    product_id INT,
    amount DECIMAL(10,2)
);

SELECT * FROM online_sales;

SELECT COUNT(*) AS total_orders
FROM online_sales;

SELECT *
FROM online_sales
LIMIT 10;

SELECT COUNT(*) AS total_orders
FROM online_sales;

SELECT * FROM online_sales;

SELECT COUNT(*) AS total_orders
FROM online_sales;

SELECT SUM(amount) AS total_revenue
FROM online_sales;

SELECT
EXTRACT(YEAR FROM order_date) AS year,
EXTRACT(MONTH FROM order_date) AS month,
SUM(amount) AS monthly_revenue
FROM online_sales
GROUP BY year, month
ORDER BY year, month;

SELECT
EXTRACT(YEAR FROM order_date) AS year,
EXTRACT(MONTH FROM order_date) AS month,
COUNT(DISTINCT order_id) AS total_orders
FROM online_sales
GROUP BY year, month
ORDER BY year, month;

SELECT
EXTRACT(YEAR FROM order_date) AS year,
EXTRACT(MONTH FROM order_date) AS month,
SUM(amount) AS monthly_revenue
FROM online_sales
GROUP BY year, month
ORDER BY monthly_revenue DESC
LIMIT 3;

SELECT
ROUND(AVG(amount), 2) AS average_order_value
FROM online_sales;

SELECT MAX(amount) AS highest_sale
FROM online_sales;

SELECT MIN(amount) AS lowest_sale
FROM online_sales;


SELECT SUM(amount) AS total_revenue
FROM online_sales;

SELECT COUNT(*) AS total_orders
FROM online_sales;

SELECT
EXTRACT(YEAR FROM order_date) AS year,
EXTRACT(MONTH FROM order_date) AS month,
SUM(amount) AS monthly_revenue
FROM online_sales
GROUP BY year, month
ORDER BY year, month;

SELECT
EXTRACT(YEAR FROM order_date) AS year,
EXTRACT(MONTH FROM order_date) AS month,
COUNT(*) AS total_orders
FROM online_sales
GROUP BY year, month
ORDER BY year, month;

SELECT
EXTRACT(YEAR FROM order_date) AS year,
EXTRACT(MONTH FROM order_date) AS month,
SUM(amount) AS monthly_revenue
FROM online_sales
GROUP BY year, month
ORDER BY monthly_revenue DESC
LIMIT 3;