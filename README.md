🛍 Customer Shopping Behavior Analysis

An end-to-end data analytics project analyzing 3,900 customer transactions to uncover actionable insights into spending patterns, customer segmentation, discount impact, and subscription behavior.

This project demonstrates the complete analytics workflow — from data cleaning (Python) to business querying (SQL) and interactive visualization (Power BI).

🚀 Business Problem

How can a retail business:

Increase subscription adoption?

Improve customer retention?

Optimize discount strategy?

Identify high-value customer segments?

Boost revenue through targeted marketing?

This project answers these questions using structured data analysis.

📊 Dataset Overview

Records: 3,900 transactions

Features: 18 columns

Data Type: Customer-level transactional data

Key Data Categories:

Customer Demographics

Age

Gender

Location

Subscription Status

Purchase Details

Item Purchased

Category

Purchase Amount

Season

Size

Color

Shopping Behavior

Discount Applied

Promo Code Used

Frequency of Purchases

Review Rating

Shipping Type

⚠️ Missing values: 37 records in Review Rating column (handled during cleaning).

🐍 Phase 1: Data Cleaning & Feature Engineering (Python)

Performed using pandas and PostgreSQL integration.

Key Steps:

Loaded dataset using pandas

Explored structure with df.info() and .describe()

Imputed missing review ratings using median rating per category

Standardized column names (snake_case)

Created new features:

age_group (customer segmentation)

purchase_frequency_days

Removed redundant column (promo_code_used)

Loaded cleaned data into PostgreSQL for business querying

This step ensured data consistency, reliability, and structured modeling.

🗄 Phase 2: Business Analysis using SQL (PostgreSQL)

Conducted structured analysis to extract strategic insights.

Key Business Questions Solved:

Revenue comparison by gender

High-spending customers who used discounts

Top 5 highest-rated products

Average spend by shipping type

Subscribers vs non-subscribers revenue comparison

Products most dependent on discounts

Customer segmentation (New / Returning / Loyal)

Top 3 products per category

Repeat buyers vs subscription likelihood

Revenue contribution by age group

This phase demonstrates strong SQL aggregation, grouping, window functions, and business logic application.

📈 Phase 3: Power BI Dashboard

Built an interactive dashboard to visualize:

Revenue distribution

Customer segments

Age group performance

Shipping behavior comparison

Subscription revenue impact

Discount dependency patterns

The dashboard translates raw data into executive-ready insights.

🔍 Key Insights

Certain age groups contribute significantly more revenue.

Loyal customers show higher average purchase value.

Some products are highly discount-dependent.

Subscribers generate stronger revenue consistency.

Express shipping customers tend to spend more on average.

💡 Business Recommendations

🎯 Promote subscription benefits to high-frequency buyers

🏆 Launch loyalty rewards to convert returning customers into loyal ones

💰 Re-evaluate discount-heavy products to protect margins

⭐ Highlight top-rated products in marketing campaigns

📦 Target high-spending express-shipping customers

🛠 Tech Stack

Python (pandas) – Data cleaning & feature engineering

SQL- SSMS – Business query analysis

Power BI – Data visualization & dashboarding

SQL – Aggregations, joins, segmentation logic
