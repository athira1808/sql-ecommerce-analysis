# SQL E-Commerce Analysis

A hands-on SQL data analysis project using MySQL to analyze customer spending, orders, and product purchasing patterns.

## 📌 Project Overview

This project was created as part of my AI Engineering learning journey to strengthen practical SQL skills through a real-world style e-commerce dataset.

The analysis focuses on customers, orders, and products and uses SQL to answer common business and data-analysis questions.

## 🗄️ Database Structure

The project contains three tables:

### Customers
- customer_id
- name
- city

### Orders
- order_id
- customer_id
- order_date
- product_id
- amount

### Products
- product_id
- product_name
- category
- price

## 🔍 SQL Concepts Practiced

- SELECT, WHERE, ORDER BY, LIMIT
- Aggregate Functions: COUNT, SUM, AVG, MIN, MAX
- GROUP BY and HAVING
- INNER JOIN and multi-table JOINs
- CASE WHEN
- Subqueries
- Common Table Expressions (CTEs)
- Window Functions
- ROW_NUMBER()
- RANK()
- DENSE_RANK()
- PARTITION BY
- LAG() and LEAD()
- NULL handling and COALESCE
- Date and string functions
- Data cleaning concepts

## 📊 Analysis Performed

The project includes queries to:

- Calculate total spending for each customer
- Find customers spending above the average
- Categorize customers based on spending
- Rank customers by total spending
- Find the top 2 customers
- Find the highest-spending customer in each city
- Find the top 3 purchased products for each customer

## 🛠️ Tools Used

- MySQL
- MySQL Workbench
- SQL
- Git & GitHub

## 🎯 Key Learning

This project helped me understand how SQL can be used to extract, transform, and analyze structured data before moving into Python-based analysis and machine learning.

A simplified AI/ML data workflow is:

**Database → SQL → Pandas → Feature Engineering → Machine Learning**

## 📁 Project Structure

```text
sql-ecommerce-analysis/
│
├── database/
│   └── ecommerce_analysis.sql
│
├── queries/
│   ├── above_average_customer.sql
│   ├── customer_categories.sql
│   ├── customer_ranking_by_spending.sql
│   ├── highest-spending_customer_in_each_city.sql
│   ├── top_2_customers.sql
│   ├── top_3_product_purchased_by_each_customer.sql
│   └── total_spending_of_each_customer.sql
│
└── README.md
