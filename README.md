# SQL Aggregation Basics

## 1. Project Overview
This project demonstrates SQL aggregate functions using a sample Sales dataset in Google Colab. It covers counting records, calculating total and average sales, finding minimum and maximum values, grouping records by category, and checking missing values.

## 2. Objective
- Practise `COUNT()`, `SUM()`, `AVG()`, `MIN()`, and `MAX()`.
- Group data using `GROUP BY`.
- Calculate sales metrics for each category.
- Understand how aggregate functions handle NULL values.

## 3. Tools and Technologies
- Google Colab
- Python
- SQLite
- SQL
- Pandas

## 4. Dataset Description
A sample Sales table was created with 10 records.

| Column | Description |
|---|---|
| SaleID | Unique sales record ID |
| Product | Product name |
| Category | Product category |
| Amount | Sales amount |
| Quantity | Quantity sold |

The dataset contains Electronics, Furniture, and Stationery categories. One record has a missing Amount value to demonstrate NULL handling.

## 5. SQL Queries, Outputs, and Observations

### Query 1: Count Total Records

**SQL Query**
```sql
SELECT COUNT(*) AS TotalRecords
FROM Sales;
```

**Output**

| TotalRecords |
|---:|
| 10 |

**Observation:** `COUNT(*)` counts all records, including rows with missing values.

### Query 2: Calculate Total Sales

**SQL Query**
```sql
SELECT SUM(Amount) AS TotalSales
FROM Sales;
```

**Output**

| TotalSales |
|---:|
| 79120 |

**Observation:** `SUM()` adds all non-NULL Amount values.

### Query 3: Calculate Average Sales

**SQL Query**
```sql
SELECT AVG(Amount) AS AverageSales
FROM Sales;
```

**Output**

| AverageSales |
|---:|
| 8791.11 |

**Observation:** `AVG()` calculates the average using non-NULL Amount values.

### Query 4: Find Minimum Sale

**SQL Query**
```sql
SELECT MIN(Amount) AS MinimumSale
FROM Sales;
```

**Output**

| MinimumSale |
|---:|
| 20 |

**Observation:** `MIN()` returns the smallest non-NULL Amount, which is 20.

### Query 5: Find Maximum Sale

**SQL Query**
```sql
SELECT MAX(Amount) AS MaximumSale
FROM Sales;
```

**Output**

| MaximumSale |
|---:|
| 50000 |

**Observation:** `MAX()` returns the largest Amount, which is 50,000.

### Query 6: Count Records by Category

**SQL Query**
```sql
SELECT Category, COUNT(*) AS TotalRecords
FROM Sales
GROUP BY Category;
```

**Output**

| Category | TotalRecords |
|---|---:|
| Electronics | 4 |
| Furniture | 4 |
| Stationery | 2 |

**Observation:** Electronics and Furniture each contain four records, while Stationery contains two.

### Query 7: Calculate Total Sales by Category

**SQL Query**
```sql
SELECT Category, SUM(Amount) AS CategorySales
FROM Sales
GROUP BY Category;
```

**Output**

| Category | CategorySales |
|---|---:|
| Electronics | 64300 |
| Furniture | 14700 |
| Stationery | 120 |

**Observation:** Electronics has the highest total sales amount.

### Query 8: Calculate Average Sales by Category

**SQL Query**
```sql
SELECT Category, AVG(Amount) AS AverageSale
FROM Sales
GROUP BY Category;
```

**Output**

| Category | AverageSale |
|---|---:|
| Electronics | 16075 |
| Furniture | 4900 |
| Stationery | 60 |

**Observation:** Electronics has the highest average sale amount.

### Query 9: Find Minimum and Maximum Sales by Category

**SQL Query**
```sql
SELECT
    Category,
    MIN(Amount) AS MinimumSale,
    MAX(Amount) AS MaximumSale
FROM Sales
GROUP BY Category;
```

**Output**

| Category | MinimumSale | MaximumSale |
|---|---:|---:|
| Electronics | 800 | 50000 |
| Furniture | 1200 | 9000 |
| Stationery | 20 | 100 |

**Observation:** This query compares the lowest and highest sale amounts within each category.

### Query 10: Check NULL Values

**SQL Query**
```sql
SELECT
    COUNT(*) AS TotalRecords,
    COUNT(Amount) AS RecordsWithAmount,
    COUNT(*) - COUNT(Amount) AS MissingAmounts
FROM Sales;
```

**Output**

| TotalRecords | RecordsWithAmount | MissingAmounts |
|---:|---:|---:|
| 10 | 9 | 1 |

**Observation:** The table has 10 records, 9 non-NULL Amount values, and 1 missing Amount value.

## 6. Methodology
1. Imported SQLite and Pandas in Google Colab.
2. Created an in-memory SQLite database.
3. Created the Sales table and inserted 10 sample records.
4. Executed 10 SQL aggregation queries.
5. Grouped sales records by category.
6. Analysed the outputs and checked NULL-value behaviour.

## 7. Key Learnings
- `COUNT(*)` counts all rows.
- `COUNT(column)` counts non-NULL values.
- `SUM()` calculates the total of numeric values.
- `AVG()` calculates the average of non-NULL numeric values.
- `MIN()` and `MAX()` identify the lowest and highest values.
- `GROUP BY` calculates aggregate results for each category.
- Aggregate functions can help summarize and analyse data.

## 8. Conclusion
This task provided practical experience with SQL aggregate functions. It improved my understanding of summarizing sales data, comparing categories, and handling missing values using SQL in Google Colab.

## 9. Internship Details
- **Organization:** Veda Technology
- **Task:** SQL Aggregation Basics
- **Author:** M. Navya Sri

## 10. Note
This project uses a sample dataset created for practice. SQLite was used in Google Colab to execute the queries. MySQL and PostgreSQL are listed in the internship task requirements but were not used in this notebook.
