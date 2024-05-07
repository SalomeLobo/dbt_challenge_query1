select
    cast(quantity as float64) * cast(purchase_price as float64) as purchase_cost,
    round(cast(revenue as float64) - cast(quantity as float64) * cast(purchase_price as float64),2) as margin

from {{ ref("stg_raw__sales")}}

join {{ ref("stg_raw__product")}}
using (products_id)