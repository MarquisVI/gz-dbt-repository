SELECT *
    ,ROUND((s.margin + sh.shipping_fee - sh.logcost - sh.ship_cost),2) AS operational_margin
FROM {{ref("int_sales_margin")}} AS s
    JOIN {{ref("stg_raw__ship")}} AS sh
USING (orders_id)