

# 🧾 Customer Behavior Analysis
_End-to-end project focused on data cleaning, data analysis and dashboard-driven business insights using Python, SQL, Power BI._

---
---
---


## 📌 Table of Contents

- [Overview](#overview)
- [Business Problem](#business-problem)
- [Dataset](#dataset)
- [Tools Used](#tools-used)
- [Data Cleaning & Preparation](#data-cleaning--preparation)
- [Data analysis](#data-analysis)
- [Key Insights](#key-insights)
- [Dashboard](#dashboard)
- [Project Structure](#project-structure)
- [How to Run](#how-to-run)
- [Author and contact](#author-and-contact)

## 📌 Overview

This project analyzes customer shopping behavior using **3,900 transactional records** to identify customer segments, spending patterns, product preferences, and subscription trends.

The goal is to generate business insights that improve customer retention, marketing strategy, and revenue growth.

---

## 🎯 Business Problem

An e-commerce company wants to understand customer behavior beyond basic sales reports.

This analysis focuses on:

- Customer spending patterns
- Product performance
- Subscription impact
- Customer segmentation
- Purchasing trends

---
## 📂 Dataset

- CSV file containing customer transaction data, demographics, and purchasing     behavior details.

- The dataset is cleaned and used for customer segmentation, purchase pattern analysis, and dashboard creation.

---

## 🛠 Tools & Technologies

- **Python** (Pandas, Data Cleaning, EDA)
- **PostgreSQL** (CTEs, Joins, Filtering, Aggregations, Window Functions)
- **Power BI** (Data Visualization, Business Insights)
- **GitHub** 

---

## 🧹 Data Cleaning & Preparation (Python)

- Checked data structure and summary statistics
- Handled missing values in Review Rating
- Standardized column names using snake_case format
- Removed redundant columns
- Created new features such as age groups and purchase frequency metrics
- Prepared cleaned dataset for further analysis

---

## 🔍 Data Analysis using SQL (PostgreSQL)


- Analyze customer revenue and spending patterns
- Identify high-value customers and repeat buyers
- Segment customers based on purchase behavior
- Find top-performing products and categories
- Compare subscriber vs non-subscriber behavior
- Evaluate discount and shipping trends

---

## 💡 Key Insights


- Generated $38K revenue from 627 customers (Avg. purchase: $60.73).
- Clothing was the top category with $17K revenue.
- Spring was the highest-performing season ($10.4K sales).
- Young adults contributed the highest revenue ($11K).
- PayPal was the most used payment method (17.38%).
- Low subscription adoption (17.65%) shows growth opportunity.

---

## 📈 Dashboard

- Power BI Dashboard shows:
- Revenue and Customer Analysis
- Sales Trends by Season and Category
- Customer Segmentation Insights
- Payment Method and Subscription Analysis
- Key Business Performance Metrics

![Customer Behavior analysis Dashboard](Images/dashboard_image.png)

---

## 📁 Project Structure

```text
Customer-Behavior-Analysis
│
├── README.md
├── .gitignore
│
├── Data
│   └── customer_behavior_analysis.csv
│
├── Python
│   └── Customer_behavior_analysis.ipynb
│
├── SQL
│   └── customer_analysis.sql
│
├── Dashboard
│   └── Customer_Behavior_Analysis.pbix 
│
├── Images
│   └── Dashboard_image.png
│
└── Reports
    └── Customer_behavior_analysis_report.pdf
```

---

## 🚀 How to Run This Project

1. Clone the repository:

```bash
git clone <your-github-link>
```

2. Load the CSV and Run Python Jyputer notebook:

```bash
Python/Customer_Behavior_Analysis.ipynb
```

4. Create database and Run SQL queries from:

```bash
SQL/customer_analysis.sql
```

5. Open Power BI dashboard:

```bash
PowerBI/Customer_behavior_Dashboard.pbix
```

---

## 👩‍💻 Author and Contact

**Vasundhara Deshmukh**\
Data Analyst\
📧 Email: vasu.deshmukh004@gmail.com\
🔗 [LinkedIn](www.linkedin.com/in/vasundharadeshmukh17)