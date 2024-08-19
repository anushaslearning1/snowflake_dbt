with temp
as 
(
    select * from {{ ref('customer') }}
)
select customername 
from temp
where customername is null