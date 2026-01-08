**📱 #Smartphone SQL Analysis Project**

This repository contains a collection of SQL queries used to analyze and manipulate a smartphone database.
The queries demonstrate fundamental to advanced SQL concepts such as filtering, aggregation, grouping, subqueries, sorting, and data modification.

🗄️ Dataset Overview

The database revolves around a single table:

smartphone

It contains specifications and pricing information for different smartphone models, including:

Brand & Model details

Price & Rating

Processor & OS

RAM, Battery & Screen Size

Camera specifications

Connectivity features (5G, NFC, IR Blaster, etc.)

🧠 Concepts Covered

This project covers the following SQL concepts:

SELECT & DISTINCT

Column aliases

Arithmetic operations on columns

WHERE clause with conditions

Logical operators (AND, OR, IN, BETWEEN)

Aggregate functions (AVG, COUNT, MAX, MIN, STD)

Sorting with ORDER BY

Limiting results using LIMIT

Subqueries

GROUP BY & HAVING

Data modification using UPDATE & DELETE

🔍 Query Categories
1️⃣ Basic Data Retrieval

Fetch all records

Select specific columns

Use aliases

Add constant columns

2️⃣ Filtering & Conditions

Filter by brand, price, rating, RAM

Use AND, OR, IN, BETWEEN

3️⃣ Aggregations & Statistics

Average rating & price

Count total and unique brands

Standard deviation of screen size

4️⃣ Sorting & Ranking

Most expensive phones

Top Samsung phones by screen size

Phones sorted by camera count and PPI

5️⃣ Subqueries

Most expensive phone overall

Most expensive Samsung phone

6️⃣ Grouped Analysis

Brand-wise statistics

Feature-based grouping (NFC, 5G, Extended Memory)

Processor & brand combinations

7️⃣ Advanced Analysis

Brands with highest average RAM

Brands with most NFC + IR Blaster phones

Average price of highly rated 5G phones

8️⃣ Data Modification

Update processor brand names

Delete phones based on price condition

🛠️ Sample Highlights

Top 5 most expensive brands

Worst rated Apple phone

Second largest battery phone

Brands with more than 20 models

High refresh rate & fast charging phone analysis

🚀 How to Use

Import the smartphone dataset into your SQL database (MySQL / PostgreSQL compatible).

Run the queries sequentially or individually.

Modify conditions to explore deeper insights.

📌 Notes

Boolean fields are assumed to be stored as 'True' / 'False' or 1 / 0 depending on the column.

Queries are written in MySQL-style SQL.

Some queries modify data (UPDATE, DELETE) — use cautiously.

📄 License

This project is open-source and free to use for learning and educational purposes.

⭐ If you find this helpful, feel free to star the repository!
