select
    orders_id,
    date_date,
    round(margin + shipping_fee - logcost - cast(ship_cost as float64), 2) as operational_margin,
    margin

from {{ ref("int_orders_margin")}}
join {{ ref("stg_raw__ship")}}
using (orders_id)