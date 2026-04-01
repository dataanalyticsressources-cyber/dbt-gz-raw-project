SELECT 
    date_date,
    operational_margin - ads_cost AS operational_margin,
    revenue,
    ads_cost,
    click,
    impression,
    quantity,
    purchase_cost,
    shipping_fee,
    log_cost,
    ship_cost,
    margin,
    average_basket    
FROM {{ref ('int_campaigns_day')}} AS c
FULL OUTER JOIN {{ ref ('finance_days')}} AS f USING (date_date)
ORDER BY date_date DESC 
