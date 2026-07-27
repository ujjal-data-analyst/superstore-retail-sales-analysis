SELECT * FROM superstore;

-- TOTAL SALES

SELECT SUM(sales) AS total_sales
FROM superstore;

-- TOTAL PROFIT

SELECT SUM(profit) AS total_profit
FROM superstore;

--TOTAL ORDER

SELECT COUNT(DISTINCT order_id) AS total_orders
FROM superstore;

-- CATEGORY WISE SALES

SELECT
	category,
	SUM(sales) AS total_sales
FROM superstore
GROUP BY category
ORDER BY total_sales DESC;

-- WHICH CATEGORY GENERATE HIGH PROFIT

SELECT
	category,
	SUM(profit) AS category_wise_profit
FROM superstore
GROUP BY category;

-- REGION WISE SALES AND PROFIT

SELECT 
	region,
	ROUND(SUM(sales)::numeric,2) AS total_sales,
	ROUND(SUM(profit)::numeric,2) AS total_profit
FROM superstore
GROUP BY region
ORDER BY total_sales DESC;

-- TOP 10 SALES STATES

SELECT
	state,
	ROUND(SUM(sales)::numeric,2) AS total_sales
FROM superstore
GROUP BY state
ORDER BY total_sales DESC LIMIT 10;

-- WHICH STATE LOSS?

SELECT 
	state,
	ROUND(SUM(profit)::numeric,2) AS total_profit
FROM superstore
GROUP BY state
HAVING SUM(profit) < 0
ORDER BY total_profit;

-- TOP 5 PROFITABLE SUB-CATEGORIES

SELECT 
	sub_category,
	ROUND(SUM(profit)::numeric,2) AS total_profits
FROM superstore
GROUP BY sub_category
ORDER BY total_profits DESC LIMIT 5;

-- BOTTOM 5 PROFITABLE SUB-CATEGORIES

SELECT 
	sub_category,
	ROUND(SUM(profit)::numeric,2) AS total_profits
FROM superstore
GROUP BY sub_category
ORDER BY total_profits ASC LIMIT 5;

-- SEGMENT WISE SALES AND PROFIT

SELECT 
	segment,
	ROUND(SUM(sales)::numeric,2) AS total_sales,
	ROUND(SUM(profit)::numeric,2) AS total_profit
FROM superstore
GROUP BY segment
ORDER BY total_sales DESC;

-- SHIP-MODE WISE SALES AND PROFIT

SELECT 
	ship_mode,
	ROUND(SUM(sales)::numeric,2) AS total_sales,
	ROUND(SUM(profit)::numeric,2) AS total_profit
FROM superstore
GROUP BY ship_mode
ORDER BY total_sales DESC;









