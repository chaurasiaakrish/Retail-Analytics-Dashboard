USE superstore;
-- ======================================
-- Business Question 1
-- Get an overview of the dataset
-- ======================================
SELECT * FROM Superstore; 
-- ======================================
-- Business Question 2
-- Find the total number of orders
-- ======================================
SELECT COUNT(`Order ID`) AS TOTAL_ORDERS FROM Superstore; 
-- ======================================
-- Business Question 3
-- Find the most frequently used shipping mode
-- ======================================
SELECT `Ship Mode`,COUNT(`Ship Mode`) 
FROM Superstore
GROUP BY `Ship Mode`
ORDER BY COUNT(`Ship Mode`) DESC 
lIMIT 1;
-- ================================================
-- Business Question 4
-- Find the most frequent Customer with customerID 
-- ================================================
SELECT `Customer ID`,COUNT(`Customer ID`),`Customer Name`
FROM Superstore
GROUP BY `Customer ID`,`Customer Name`
ORDER BY COUNT(`Customer ID`) DESC
LIMIT 1;
-- ==========================================================
-- Business Question 5
-- Find the most frequent Segment from where order is palced
-- ==========================================================
SELECT `Segment`,COUNT(`Segment`)
FROM Superstore
GROUP BY `Segment`
ORDER BY COUNT(`Segment`) DESC
LIMIT 1;
-- =========================================
-- Business Question 6
-- What are the total sales of the company?
-- =========================================
SELECT SUM(`Sales`) AS Total_Sales
FROM Superstore;
-- =========================================
-- Business Question 7
-- What regions has the highest sales ?
-- =========================================
SELECT `Region` as Highest_Sales_by_Region,SUM(`Sales`) as Total_Sales
FROM Superstore
GROUP BY `Region`
ORDER BY SUM(`Sales`) DESC 
LIMIT 1;
-- ==============================================================
-- Business Question 8
-- Which category and the `Sub-Category` has the highest profit ?
-- ==============================================================
SELECT `Category`,`Sub-Category`,SUM(`Profit`) as Highest_Profit
FROM Superstore
GROUP BY `Category`,`Sub-Category`
ORDER BY SUM(`Profit`) DESC 
LIMIT 1;
-- =======================================
-- Business Question 9
-- Which state has the highest sales? ?
-- =======================================
SELECT `State`,SUM(`Sales`) as Highest_Sales
FROM Superstore
GROUP BY `State`
ORDER BY SUM(`Sales`) DESC 
LIMIT 1;
-- =======================================
-- Business Question 10
-- What is the average discount given ?
-- =======================================
SELECT AVG(`Discount`) as AVG_Discount
FROM Superstore;