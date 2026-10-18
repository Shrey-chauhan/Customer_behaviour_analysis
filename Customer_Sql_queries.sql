SELECT * FROM customer limit(10)
Select gender,sum(purchase_amount) as revenue
from customer group by gender 
 select customer_id,purchase_amount
 from customer where discount_applied='Yes' and
  purchase_amount>= (select AVG(purchase_amount) from customer)
 select customer_id,item_purchased,review_rating  from
 customer where review_rating >=(select avg(review_rating) from customer) limit(5)
 select shipping_type,round(AVG(purchase_amount),2)
 from customer
 where shipping_type in ('Standard','Express')
 group by shipping_type
 select subscription_status,Round(sum(purchase_amount),2) 
 from customer 
 group by subscription_status
 select item_purchased,
 Round(100*sum(case when discount_applied='Yes' then 1 else 0 End)/count(*),2) as discount
 from customer
 group by item_purchased
 order by discount desc
 limit(5)
 with customer_type as(
select customer_id,previous_purchases,
CASE
 when previous_purchases=1 then 'New'
 when previous_purchases between 2 and 10 then 'Returning'
 else 'loyal'
 END as customer_segment
 from customer
 ) 
 select customer_segment,count(*) as "number of customer" from customer_type
 group by customer_segment
select subscription_status,
count(customer_id) as repeat_buyer
from customer
where previous_purchases>5
group by subscription_status
select age_group,
sum(purchase_amount) as total_revenue
from customer
group by age_group
order by total_revenue desc;