create database customer_behaviour;

select *
from customer_data;

-- Total revenue generate by male vs. female customer.

Select gender, sum(purchase_amount) As Rvenue
from customer_data
group by gender;

-- Customer used discount still spent more than avg purchase amount

Select customer_id, purchase_amount
from customer_data
where discount_applied = 'Yes' and purchase_amount >= (select avg(purchase_amount) from customer_data)


--Top 5 products with highest average review rating

Select Top 5
item_purchased, Round(Avg(review_rating),2) As [Average Product Rating]
from customer_data
group by item_purchased
order by [Average Product Rating]
DESC;

-- Comparing the Average purchase amount between Standard and Express shipping

Select shipping_type,
AVG(purchase_amount) As Avg_Amount
From customer_data
where shipping_type in ('Standard', 'Express')
group by shipping_type;

-- Compare average spend and total revenue between subsriber and non-subscriber

Select subscription_status,
Count(customer_id) AS [Customer count],
Avg(purchase_amount)AS [Avg Spend],
Sum(purchase_amount) As [Total Revenue]
from customer_data
Group by subscription_status
order by [Avg Spend],[Total Revenue] DESC ;

-- Top 5 product with highest percentage of purchases with dicount applied

Select Top 5
item_purchased,
100 * sum(CASE When discount_applied = 'Yes' Then 1 Else 0 End) /count(*) As [discount rate]
from customer_data
group by item_purchased
order by [discount rate] Desc;

-- Segmenting customer into New, Returnig, Loyal based on their total number of purchase 
--with the count of segment

with customer_type as(
select customer_id, previous_purchases,
Case
    when previous_purchases = 1 Then 'New'
    when previous_purchases between 2 and 10 Then 'Returning'
    Else 'Loyal'
    End as Customer_Segment
From customer_data)
Select Customer_Segment, count(*) As [number of customer]
From customer_type
Group by Customer_Segment;

-- Top 3 products purchased within each category

With item_counts as(
select category, item_purchased,
count(customer_id) as total_orders,
Row_Number() over(partition by category order by count(customer_id) desc) As item_ranks
from customer_data
group by category, item_purchased
)
Select item_ranks,category, item_purchased,total_orders
from item_counts
where item_ranks <= 3;

-- Customer who are repeat buyers likely to subscribe. (More than 5 previous purchase)

select subscription_status,
count(customer_id) As repeat_buyers
from customer_data
where previous_purchases > 5
group by subscription_status;

-- Revenue contribution of each age group


Select age_group,
Sum(purchase_amount) As total_revenue
From customer_data
group by age_group
order by total_revenue desc;