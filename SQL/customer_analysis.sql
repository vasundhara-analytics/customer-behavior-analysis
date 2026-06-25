--1. Revenue by gender

SELECT 
    gender, 
    SUM(purchase_amount) AS revenue
FROM customer
GROUP BY gender;


--2. Discount users spending above average

SELECT 
    customer_id, 
    purchase_amount
FROM customer
WHERE discount_applied = 'Yes'
AND purchase_amount >= (
    SELECT AVG(purchase_amount)
    FROM customer
);


--3. Top 5 products by rating

SELECT 
    item_purchased,
    ROUND(AVG(review_rating::numeric),2) AS average_rating
FROM customer
GROUP BY item_purchased
ORDER BY AVG(review_rating) DESC
LIMIT 5;


--4. Shipping type average purchase

SELECT 
    shipping_type,
    ROUND(AVG(purchase_amount),2) AS average_purchase
FROM customer
WHERE shipping_type IN ('Standard','Express')
GROUP BY shipping_type;


--5. Subscriber vs non-subscriber spend

SELECT 
    subscription_status,
    COUNT(customer_id) AS customers,
    ROUND(AVG(purchase_amount),2) AS avg_spend,
    ROUND(SUM(purchase_amount),2) AS total_revenue
FROM customer
GROUP BY subscription_status
ORDER BY total_revenue DESC, avg_spend DESC;


--6. Products with highest discount rate

SELECT 
    item_purchased,
    ROUND(
        100.0 * SUM(
            CASE WHEN discount_applied = 'Yes' THEN 1 ELSE 0 END
        ) / COUNT(*),2
    ) AS discount_rate
FROM customer
GROUP BY item_purchased
ORDER BY discount_rate DESC
LIMIT 5;


--7. Customer segmentation

WITH customer_type AS (
    SELECT 
        customer_id,
        previous_purchases,
        CASE
            WHEN previous_purchases = 1 THEN 'New'
            WHEN previous_purchases BETWEEN 2 AND 10 THEN 'Returning'
            ELSE 'Loyal'
        END AS customer_segment
    FROM customer
)

SELECT 
    customer_segment,
    COUNT(*) AS customer_count
FROM customer_type
GROUP BY customer_segment;


--8. Top 3 products by category

WITH item_counts AS (
    SELECT
        category,
        item_purchased,
        COUNT(customer_id) AS orders,
        ROW_NUMBER() OVER(
            PARTITION BY category 
            ORDER BY COUNT(customer_id) DESC
        ) AS rank
    FROM customer
    GROUP BY category, item_purchased
)

SELECT 
    rank,
    category,
    item_purchased,
    orders
FROM item_counts
WHERE rank <= 3;


--9. Repeat buyers subscription

SELECT 
    subscription_status,
    COUNT(customer_id) AS repeat_buyers
FROM customer
WHERE previous_purchases > 5
GROUP BY subscription_status;


--10. Revenue by age group

SELECT 
    age_group,
    SUM(purchase_amount) AS revenue
FROM customer
GROUP BY age_group
ORDER BY revenue DESC;
