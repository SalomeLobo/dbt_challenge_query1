select
    date_date,
    round(operational_margin - ads_cost,2) as ads_margin,
    ROUND(average_basket,2) AS average_basket,
    operational_margin,
    ads_cost

from {{ ref("int_campaigns_day")}}
full outer join {{ ref("finance_days")}}
using (date_date)

order by date_date desc