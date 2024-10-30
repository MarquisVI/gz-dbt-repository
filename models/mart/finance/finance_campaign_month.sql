SELECT
    DATE_TRUNC(date_date,MONTH) AS datemonth,
    SUM(ads_margin) AS ads_margin,
    SUM(average_basket) AS average_basket,
    SUM(operational_margin) AS operational_margin,
    SUM(ads_cost) AS ads_cost,
    SUM(ads_impressions) AS ads_impressions,
    SUM(ads_clicks) AS ads_clicks,
    SUM(revenue) AS revenue,
    SUM(purchase_cost) AS purchase_cost,
    SUM(shipping_fee) AS shipping_fee,
    SUM(logcost) AS logcost
FROM {{ref("finance_campaign_day")}}
GROUP BY datemonth
ORDER BY datemonth