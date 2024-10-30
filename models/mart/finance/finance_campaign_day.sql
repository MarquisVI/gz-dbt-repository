SELECT
    CAST(date_date AS DATE) AS date_date,
    ROUND((operational_margin - ads_cost),2) AS ads_margin,
    average_basket,
    operational_margin,
    ads_cost,
    ads_impressions,
    ads_clicks,
    revenue,
    purchase_cost,
    shipping_fee,
    logcost,
FROM {{ref("int_campaign_day")}}
JOIN {{ref("finance_days")}}
USING (date_date)