with temp
as
(
    select * from {{ ref('customer') }}
)
select customerid, count(customerid) as c 
from  temp
group by customerid
having c > 1