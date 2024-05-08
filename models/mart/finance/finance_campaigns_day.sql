select
    date_date,
    round(operational_margin - ads_cost,2) as ads_margin,
    average_basket,
    operational_margin,
    ads_cost

from {{ ref("int_campaigns_day")}}
join {{ ref("finance_days")}}
using (date_date)

order by date_date desc