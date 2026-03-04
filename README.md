# olist-sql-analysis
Portfolio SQL project analyzing the Olist Brazilian e-commerce dataset using SQLite, covering data modeling, quality checks, and analytical queries.

## 📂 Dataset
- **Source:** Olist Brazilian E-commerce Public Dataset  
- **Database:** SQLite  
- **Query Tools:** VS Code + SQLite  
- **Tables Used:**
  - customers
  - orders
  - order_items
  - payments
  
  ## 🎯 Project Objective

- Create and manage a relational database using SQLite  
- Import raw CSV files into structured tables  
- Perform exploratory data analysis using SQL  
- Identify data quality issues  
- Generate business insights using joins and aggregations  
- Write advanced SQL queries using subqueries and

  ### ✅ Day 1 – Database Setup & Table Creation

- Created SQLite database (`olist.db`)
- Created tables using `CREATE TABLE`
- Defined appropriate data types
- Verified schema structure
- Imported CSV files into respective tables

    ### ✅ Day 2 – Basic SQL Queries

- Performed SELECT queries on main tables
- Used WHERE, ORDER BY, LIMIT, DISTINCT
- Filtered NULL values
- Explored order statuses and customer distribution
- Generated summary counts for understanding data

  ### ✅ Day 3 – Join Queries (Relational Analysis)

- Implemented INNER JOIN between customers and orders
- Linked orders with order_items
- Combined multiple tables for regional analysis
- Verified relational consistency through joins

  ### ✅ Day 11 - Added aggregation and business metric queries

- Executed SELECT queries to explore dataset structure  
- Applied COUNT(), SUM(), and AVG() functions for metric calculation  
- Used GROUP BY to summarize customer and order data  
- Created foundational queries for further analytical work  


### ✅ Day 12 – Advanced SQL Queries 

- Used Subqueries for customer-level revenue analysis
- Implemented CTEs (WITH clause)
- Generated monthly revenue trends
- Identified top customers by total payments
- Analyzed order distribution by region

### ✅ Day 13 – Data Quality Checks & Insights (SQL Validation)

Performed systematic checks for:

- Missing (NULL) values
- Duplicate records
- Invalid or inconsistent timestamps
- Orders without matching customers
- Payments without matching orders
- Negative or zero values in price/payment fields
- Logical inconsistencies in purchase and delivery dates
- Created summary insight queries for reporting

## 📊 Key Business Insights

- Identified top-performing states by order volume
- Calculated monthly revenue trends
- Evaluated payment type distribution
- Measured order status breakdown
- Detected data quality issues affecting reporting
- Generated customer-level revenue metrics

## 🛠 Skills Practiced

- Relational database design
- Multi-table joins
- Aggregation and metric calculation
- SQL-based data validation
- Writing structured and modular SQL scripts
- Version control using Git & GitHub


## 🚀 Final Outcome

This project strengthened my ability to:

- Convert raw transactional data into a structured relational format  
- Perform analytical querying using SQL  
- Detect and document data quality issues  
- Generate meaningful business insights  

