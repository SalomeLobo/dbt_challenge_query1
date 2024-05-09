select
    date_trunc(date_date, MONTH) AS date_month,
    sum(ads_margin) as ads_margin,
    round(sum(average_basket),2) as average_basket,
    sum(operational_margin) as operational_margin,
    sum(ads_cost) as ads_cost

from {{ ref("finance_campaigns_day")}}

group by date_month
order by date_month desc