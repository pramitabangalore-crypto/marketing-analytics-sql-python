-- Customer segmentation by order value
select
 case
  when total_revenue > 1000 then 'High value'
  when total_revenue < 1000 and  total_revenue >= 400 then 'Mid value'
  when total_revenue >0 and total_revenue< 400 then'Low value'
  else 'Non-Buyers'
  end as customer_segment,
  count(*) as customers
from vw_customer_features
group by customer_segment;


-- customer segmentation by country
select 
     c.country,
    count(*) as transactions_made,
    sum(t.gross_revenue) as total_revenue_value
from transactions t
join customers c
on c.customer_id = t.customer_id
where gross_revenue > 0
group by 1
order by 2 desc, 3 desc;

-- customer segmentation by age
select
 case
  when c.age >= 50 then 'Old Age'
  when c.age >= 30 then 'Mid Age'
  else 'Young Age'
  end as customer_age_segment,
  c.loyalty_tier,
  count(t.customer_id) as customers,
  sum(t.gross_revenue) as total_revenue_value
from transactions t
join customers c
on t.customer_id = c.customer_id
group by customer_age_segment,c.loyalty_tier
order by customers desc, total_revenue_value desc;

-- customer segmentation by gender
select    c.country,c.gender,c.loyalty_tier,
    count(*) as transactions_made,
    sum(t.gross_revenue) as total_revenue_value
from transactions t
join customers c
on c.customer_id = t.customer_id
where gross_revenue > 0
group by 1,2,3
order by 4 desc, 5 desc;