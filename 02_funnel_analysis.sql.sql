
-- Funnel Metrics
SELECT
  EVENT_TYPE, COUNT(DISTINCT CUSTOMER_ID) AS users
FROM
  vw_events_base
WHERE event_type IN ('view','click','add_to_cart','purchase')
GROUP BY EVENT_TYPE
ORDER BY users DESC;

-- Analysis : Bounce events were escluded from conversion funnel as they represnt users who did not enter the purchase journey.

-- Funnel Conversion rates

with funnel as (
   select
       customer_id,
       MAX(CASE WHEN event_type = 'view' THEN 1 ELSE 0 END) as viewed,
       MAX(CASE WHEN event_type = 'click' THEN 1 ELSE 0 END) as clicked,
       MAX(CASE WHEN event_type = 'add_to_cart' THEN 1 ELSE 0 END) as added_to_cart,
       MAX(CASE WHEN event_type = 'purchase' THEN 1 ELSE 0 END) as purchased
    from vw_events_base
    group by customer_id  
)
select 
     count(*) as total_users,
     sum(viewed) as viewed_users,
     sum(clicked) as clicked_users,
     sum(added_to_cart) as cart_users,
     sum(purchased) as purchased_users,
     round(sum(purchased) / sum(viewed)::float, 4) as view_to_purchase_rate
from funnel;

-- view to purchase rate is 64%

select traffic_source,
    count(*) as total_events,
    sum(case when event_type = 'bounce' then 1 else 0 end) as bounce_events,
    round(sum(case when event_type = 'bounce' then 1 else 0 end)/ count(*)::float,4) as bounce_rate
from vw_events_base
group by 1
order by bounce_rate desc;

-- Bounce rate is 9-10% across all channels, bounce behaviour stable & not channel specific