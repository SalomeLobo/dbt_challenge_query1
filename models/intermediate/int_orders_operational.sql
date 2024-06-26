SELECT
  o.orders_id,
  o.date_date,
  ROUND(cast(o.margin as float64) + cast(s.shipping_fee as float64) - (cast(s.logcost as float64) + cast(s.ship_cost as float64)),2) AS operational_margin, 
  o.quantity,
  o.revenue,
  o.purchase_cost,
  o.margin,
  s.shipping_fee,
  s.logcost,
  s.ship_cost
FROM {{ref("int_orders_margin")}} o
LEFT JOIN {{ref("stg_raw__ship")}} s 
  USING(orders_id)
ORDER BY orders_id desc