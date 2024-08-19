select customerid, segment, country, sum(profit) as profit
from 
{{ ref('stg_order') }}
group by 
customerid, 
segment,
country 
