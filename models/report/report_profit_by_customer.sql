select 
customerid, customername, segment, country, sum(profit) as customer_profit
from 
{{ ref('stg_order') }}
group by 
customerid, customername, segment, country