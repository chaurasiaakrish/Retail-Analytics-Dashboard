USE superstore;
-- ======================================
-- Business Question 1
-- Get an overview of the dataset
-- ======================================
SELECT * FROM Superstore; 
-- ===========================================
-- Business Question 2
-- Find all orders where the Region is West.
-- ===========================================
SELECT * 
FROM Superstore
WHERE `Region`="West"; 
-- ===================================================
-- Business Question 3
-- Find all orders where the Category is Technology.
-- ===================================================
SELECT * 
FROM Superstore
WHERE `Category`="Technology"; 
-- =======================================================
-- Business Question 4
-- Find all orders where the Sales are greater than 1000.
-- =======================================================
SELECT * 
FROM Superstore
WHERE `Sales`>1000; 
-- ======================================================================
-- Business Question 5
-- Find all orders where the Profit is less than 0 (loss-making orders).
-- ======================================================================
SELECT * 
FROM Superstore
WHERE `Profit`<0;
-- =================================================
-- Business Question 6
-- Find all orders where the Discount is exactly 0.
-- =================================================
SELECT * 
FROM Superstore
WHERE `Discount`=0;
-- ===============================================================================
-- Business Question 7
-- Find all orders where the State is California and the Category is Furniture.
-- ===============================================================================
SELECT * 
FROM Superstore
WHERE `Category`="Furniture" AND `State`="California";
-- ===============================================================
-- Business Question 8
-- Find all orders where the Segment is Consumer or Corporate.
-- ===============================================================
SELECT * 
FROM Superstore
WHERE `Segment`="Consumer" OR `Segment`="Corporate";
-- =============================================================
-- Business Question 9
-- Find all orders where the Sales are between 500 and 1000.
-- =============================================================
SELECT * 
FROM Superstore
WHERE `Sales`BETWEEN 500 AND 1000; 
-- ===================================================================
-- Business Question 10
-- Find all customers whose Customer Name starts with the letter A.
-- ===================================================================
SELECT * 
FROM Superstore
WHERE `Customer Name` LIKE "A%";
-- ==============================================================================
-- Business Question 11
-- Find all orders where the Ship Mode is either First Class or Second Class.
-- ==============================================================================
SELECT * 
FROM Superstore
WHERE `Ship Mode`="First Class" OR `Ship Mode`="Second Class";
