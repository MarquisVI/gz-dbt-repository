SELECT
    orders_id
    ,data_date
    ,products_id
    ,SUM(revenue) AS revenue
    ,SUM(quantity) AS quantity
    ,SUM(purchase_cost) AS purchase_cost
    ,SUM(margin) AS margin
FROM {{ref("int_sales_margin")}}
GROUP BY orders_id, data_date, products_id
ORDER BY orders_id