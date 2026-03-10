-- Views created for respective analysis
-- 1. vw_events_base
-- A Base View
create view vw_events_base as
select e.event_id, e.timestamp, e.customer_id, e.session_id, e.event_type, e.product_id, e.device_type, e.traffic_source, e.campaign_id, e.experiment_group, c.loyalty_tier, c.acquisition_channel
from events e
left join customers c
on e.customer_id= c.customer_id;

-- 2. vw_ab_test_base
CREATE OR REPLACE VIEW  vw_ab_test_base AS
WITH first_exposure AS (
      SELECT
           customer_id, experiment_group, campaign_id,
           MIN(timestamp) as first_exposure_time
     FROM vw_events_base
     GROUP BY customer_id, experiment_group, campaign_id          
)
SELECT
      fe.customer_id, fe.experiment_group,
      MAX(CASE WHEN t.transaction_id IS NOT NULL
      AND t.timestamp >= fe.first_exposure_time
      AND t.timestamp BETWEEN c.start_date AND c.end_date
      THEN 1 ELSE 0 END) AS purchased
FROM first_exposure fe
LEFT JOIN campaigns c
      ON fe.campaign_id = c.campaign_id
LEFT JOIN transactions t
      ON fe.customer_id = t.customer_id
      AND fe.campaign_id = t.campaign_id
GROUP BY fe.customer_id, fe.experiment_group;

