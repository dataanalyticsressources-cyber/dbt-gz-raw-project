SELECT 
    date_trunc (date_date, MONTH) AS datemonth,
    SUM( operational_margin)  AS operational_margin,
    SUM (revenue) AS revenue,
    SUM (ads_cost) AS ads_cost,
    SUM (click) AS click,
    SUM (impression) AS impression,
    SUM (quantity) AS quantity,
    SUM (purchase_cost) AS purchase_cost,
    SUM (shipping_fee) AS shipping_fee,
    SUM (log_cost) AS log_cost,
    SUM (ship_cost) AS ship_cost,
    SUM (margin) AS margin,
    AVG (average_basket) AS average_basket 
FROM {{ ref ('finance_campaigns_day')}}
GROUP BY datemonth
ORDER BY datemonth DESC