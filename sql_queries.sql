-- SQL Aggregation Basics — Veda Technology
-- Author: M. Navya Sri
-- Database used and verified: SQLite (not MySQL or PostgreSQL).
-- Amounts are illustrative units; no currency is specified.

DROP TABLE IF EXISTS Sales;

CREATE TABLE Sales (
    SaleID INTEGER PRIMARY KEY,
    Product TEXT NOT NULL,
    Category TEXT NOT NULL,
    Amount REAL,
    Quantity INTEGER NOT NULL
);

-- Synthetic practice data; one Amount is intentionally NULL.
INSERT INTO Sales (SaleID, Product, Category, Amount, Quantity) VALUES
    (1,  'Laptop',       'Electronics', 1200, 1),
    (2,  'Headphones',   'Electronics',  850, 2),
    (3,  'Keyboard',     'Electronics', NULL, 1),
    (4,  'Monitor',      'Electronics', 1500, 1),
    (5,  'Office Chair', 'Furniture',    400, 1),
    (6,  'Desk',         'Furniture',    700, 1),
    (7,  'Bookshelf',    'Furniture',    550, 1),
    (8,  'Notebook',     'Stationery',    50, 5),
    (9,  'Pens',         'Stationery',   120, 10),
    (10, 'Stapler',      'Stationery',    80, 2);

-- 1. Count all records.
SELECT COUNT(*) AS total_records
FROM Sales;

-- 2. Total of known (non-NULL) amounts.
SELECT SUM(Amount) AS total_sales
FROM Sales;

-- 3. Average of known (non-NULL) amounts.
SELECT AVG(Amount) AS average_sale
FROM Sales;

-- 4. Smallest known amount.
SELECT MIN(Amount) AS minimum_sale
FROM Sales;

-- 5. Largest known amount.
SELECT MAX(Amount) AS maximum_sale
FROM Sales;

-- 6. Number of records in each category.
SELECT Category, COUNT(*) AS record_count
FROM Sales
GROUP BY Category
ORDER BY Category;

-- 7. Total known amount in each category.
SELECT Category, SUM(Amount) AS total_sales
FROM Sales
GROUP BY Category
ORDER BY Category;

-- 8. Average known amount in each category.
SELECT Category, AVG(Amount) AS average_sale
FROM Sales
GROUP BY Category
ORDER BY Category;

-- 9. Minimum and maximum known amount in each category.
SELECT Category,
       MIN(Amount) AS minimum_sale,
       MAX(Amount) AS maximum_sale
FROM Sales
GROUP BY Category
ORDER BY Category;

-- 10. Compare all rows, non-NULL amounts, and missing amounts.
SELECT COUNT(*) AS total_records,
       COUNT(Amount) AS non_null_amounts,
       COUNT(*) - COUNT(Amount) AS missing_amounts
FROM Sales;
