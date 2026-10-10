# Online Retail Sales & Customer Analysis

## Overview

This project analyzes online retail transaction data to identify sales trends, product performance, customer purchasing behavior, and geographic sales patterns.

The project demonstrates an end-to-end data analytics workflow using Python, Pandas, SQL, SQLite, and Power BI, from data cleaning and validation to business analysis and interactive dashboard development.

## Interactive Power BI Dashboard
![Online Retail Sales Dashboard](./Retail%20sales%20dashboard.PNG)
The Power BI dashboard provides a visual overview of sales performance from December 2009 to December 2010.

The dashboard includes:

- **Total Revenue:** Overall sales revenue generated during the analysis period
- **Monthly Revenue Trend:** Changes in revenue over time
- **Top 10 Products by Revenue:** Products generating the highest sales revenue
- **Top 10 Countries by Revenue:** Countries contributing the most revenue
- **Top 10 Customers by Revenue:** Highest-revenue customers
- **Repeat Customer Rate:** Percentage of identified customers who made more than one purchase
- **Interactive Slicers:** Filters for country and invoice date

The dashboard helps users explore sales performance, identify leading markets and products, and understand customer purchasing behavior.

## Dataset

**Source:** [UCI Machine Learning Repository – Online Retail II](https://archive.ics.uci.edu/dataset/502/online+retail+ii)

This analysis uses 525,461 transaction records from the December 2009–December 2010 portion of the dataset.

Key fields include:

- Invoice
- StockCode
- Description
- Quantity
- InvoiceDate
- Price
- Customer ID
- Country

## Business Questions

1. What is the total sales revenue?
2. Which products generate the highest revenue?
3. Which countries generate the most revenue?
4. How does revenue change over time?
5. Which customers generate the most revenue?
6. Which products have weak sales performance?
7. What is the cancellation rate?
8. How many customers are repeat customers?

## Data Preparation

The data preparation process included:

- Inspecting dataset structure and data types
- Identifying and removing duplicate records
- Checking missing values
- Examining cancelled transactions
- Checking unusual quantities and prices
- Filtering qualifying sales transactions
- Creating a calculated revenue column
- Preparing cleaned data for analysis using Python and SQL

### Revenue Calculation

**Revenue = Quantity × Price**

The analysis uses qualifying sales transactions with positive quantities and prices, excluding specified non-product charges.

The dataset does not contain product cost information. Therefore, actual profit and profit margin are not calculated.

## Python Analysis

Python and Pandas were used to clean, transform, and analyze the retail transaction data.

The analysis included:

- **Data inspection:** Examined dataset dimensions, column names, data types, and missing values.
- **Duplicate removal:** Identified and removed 6,865 exact duplicate records.
- **Data quality checks:** Examined missing customer IDs, missing product descriptions, cancelled invoices, and unusual quantities and prices.
- **Data transformation:** Filtered qualifying sales transactions and created a revenue column.
- **Exploratory data analysis:** Analyzed revenue by product, country, month, and customer.
- **Customer analysis:** Identified high-value customers and calculated the repeat customer rate.
- **Business insights:** Identified leading products, the strongest market, monthly sales patterns, and customer purchasing behavior.

The Python code and analysis results are documented in `online_retail_analysis.ipynb`.

## SQL Analysis

SQL and SQLite were used to answer business questions through queries, aggregations, and customer-level analysis.

The SQL analysis included:

- Calculating total sales revenue
- Identifying the top five products by revenue
- Ranking countries by revenue
- Analyzing monthly revenue trends
- Identifying the top five customers by revenue and number of orders
- Calculating the repeat customer rate

The SQL queries are documented in `sql_sales_analysis.ipynb` and saved in the reusable script `sales_analysis.sql`.

## Power BI Dashboard Development

Power BI Desktop was used to create an interactive sales dashboard.

The dashboard presents key performance indicators and visualizations, including revenue cards, monthly revenue trends, top products, leading countries, and top customers. Country and invoice date slicers allow users to explore the data interactively.

The dashboard complements the Python and SQL analyses by presenting the findings in a format that is easier for business users to explore and interpret.

## Tools & Technologies

- **Python** – Data cleaning and exploratory analysis
- **Pandas** – Data manipulation and transformation
- **SQL** – Business queries and aggregations
- **SQLite** – Local database for SQL analysis
- **Jupyter Notebook** – Analysis and documentation
- **Power BI Desktop** – Interactive dashboard development and data visualization
- **GitHub** – Project version control and portfolio documentation

## Project Workflow

1. Data inspection
2. Data quality checks
3. Data cleaning and validation
4. Revenue calculation and transformation
5. Python/Pandas exploratory analysis
6. SQL business analysis
7. Power BI dashboard development
8. Business insights and recommendations

## Key Findings

- **Total sales revenue:** Approximately £10.01 million.
- **Top-performing country:** The United Kingdom, generating approximately £8.60 million in revenue.
- **Highest-revenue month:** November 2010, with approximately £1.46 million.
- **Top customer by revenue:** Customer 18102, generating approximately £349,164 across 89 distinct invoices.
- **Repeat customer rate:** Approximately 67% of identified customers made more than one purchase.
- **Cancellation rate:** Approximately 15.94% of distinct invoices were cancelled, based on the cancellation analysis.

These findings highlight the importance of the UK market, monthly sales patterns, high-value customers, and repeat purchasing behavior.

*Note: Revenue represents sales value, not profit. Monthly trends are based on the available December 2009–December 2010 data. Customer metrics exclude transactions without an identified Customer ID where customer identification is required. The cancellation rate is based on distinct invoices and should not be interpreted as a percentage of revenue.*

## Project Files

- `online_retail_analysis.ipynb` – Python data cleaning, validation, transformation, and analysis
- `sql_sales_analysis.ipynb` – SQL analysis and query results
- `sales_analysis.sql` – Reusable SQL queries
- `online_retail_sales_dashboard.pbix` – Power BI dashboard file, if included in the repository
- `dashboard_screenshot.png` – Dashboard preview, if included in the repository

The cleaned CSV and local SQLite database are not included because of file-size limitations. The cleaned dataset can be reproduced by running the Python analysis notebook with the source dataset available locally.

## Key Skills Demonstrated

- Data cleaning and validation
- Python programming and Pandas
- SQL querying and aggregation
- Exploratory data analysis
- Data transformation
- Revenue and sales analysis
- Customer purchasing behavior analysis
- Product performance analysis
- Time-series analysis
- Power BI dashboard development
- Data visualization and interactive filtering
- Business insight development
- Data documentation and communication

## Project Status

**Completed:** Python data cleaning, exploratory data analysis, SQL business queries, and interactive Power BI dashboard development.

**Outcome:** An end-to-end data analytics portfolio project demonstrating the ability to prepare data, answer business questions, visualize results, and communicate actionable findings.
