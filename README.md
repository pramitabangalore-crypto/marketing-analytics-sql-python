# Marketing Analytics & A/B Testing for E-commerce Platform

## Project Overview
This project analyzes **user behavior, marketing campaign performance, and revenue drivers** for a simulated e-commerce platform. Using **SQL for data modeling and analysis** and **Python for statistical testing**, the project evaluates conversion funnels, marketing experiment results, and customer segments to generate actionable business insights.

The objective is to understand:

- How users interact with the platform  
- Which customer segments drive the most revenue  
- Whether marketing experiments improve conversion performance  

---

## Business Problem
E-commerce platforms continuously run marketing campaigns and product experiments to improve engagement and sales. However, understanding the effectiveness of these initiatives requires analyzing **user journeys, conversion funnels, and customer purchasing behavior**.

This project builds an **end-to-end analytics workflow** to evaluate marketing performance, identify high-value customers, and assess whether experimental campaign variants outperform the existing platform experience.

---

## Dataset
The dataset simulates a **modern e-commerce environment** and contains multiple tables including:

- **Customers**
- **Products**
- **Marketing campaigns**
- **User interaction events**
- **Transactions**

These datasets allow analysis of the **complete user journey**, from browsing behavior to final purchase decisions.
https://www.kaggle.com/datasets/geethasagarbonthu/marketing-and-e-commerce-analytics-dataset

---

## Tools & Technologies
- **SQL (Snowflake)** – Data modeling and analytical queries  
- **Python** – Statistical analysis and A/B testing  
- **Pandas & NumPy** – Data analysis and transformation  
- **Statsmodels** – Hypothesis testing and statistical validation  

---

# Analytical Workflow

## Exploratory Data Analysis
Initial exploration validated dataset structure, event distributions, and transaction patterns to ensure **data quality and consistency** before deeper analysis.

---

## Funnel & Behavioral Analysis
User behavior was analyzed across the purchase funnel stages:

**View → Click → Add to Cart → Purchase**

Key findings:

- The overall **view-to-purchase conversion rate is ~64%**, indicating strong purchase intent among users entering the funnel.
- **Bounce behavior remained stable across traffic sources**, with bounce rates around **9–10%**.
- User drop-off does not appear to be significantly influenced by acquisition channels.

---

## A/B Testing Analysis
Marketing experiment groups were evaluated using **statistical hypothesis testing**.

Key findings:

- The **control group achieved the highest conversion rate**.
- Both experimental variants produced **negative uplift compared to the control group**.
- **Variant B performed slightly better than Variant A**, but still underperformed the control experience.
- Large sample sizes resulted in **statistically significant outcomes**.

**Conclusion:**  
The experimental changes should **not replace the current control experience**.

---

## Revenue Analysis
Revenue trends were analyzed across **time, product categories, and loyalty tiers**.

Key observations:

- **Bronze-tier customers generated the highest total revenue** due to a larger customer base.
- Higher loyalty tiers such as **Gold and Platinum generated greater revenue per customer**.
- **Electronics products generated the highest sales volume**, but also showed the **largest number of refunds and discounts**.

This suggests that while electronics drive revenue growth, they may also introduce **higher operational risk**.

---

## Customer Segmentation
Customers were segmented based on:

- Order value
- Country
- Age group
- Gender
- Loyalty tier

Key insights:

- **Mid-value and low-value customers represent the majority of the user base**.
- **Mid-age customers generate the largest share of transactions**.
- Certain **geographic regions contribute disproportionately to total revenue**.

Customer segmentation helps identify **high-value audiences for targeted marketing campaigns**.

---

# Key Insights

- The purchase funnel conversion rate is approximately **64%**, indicating strong purchase intent.
- **Bounce rates remain stable across traffic channels (~9–10%)**.
- Marketing experiment variants **did not outperform the control experience**.
- **Bronze loyalty tier customers drive the highest total revenue** due to volume.
- Higher loyalty tiers generate **greater revenue per customer**.
- **Electronics category produces the highest sales but also the highest refunds and discounts**.

---

# Business Recommendations

Based on the analysis:

- **Maintain the current control experience** instead of deploying experimental variants.
- Focus marketing investment on **high-performing acquisition channels**.
- Target **mid-age and mid-value customers** through personalized campaigns.
- Monitor **electronics category refunds** to improve product quality or pricing strategies.

---


# Author
**Pramita Mondal**  
Data Analytics Portfolio Project
