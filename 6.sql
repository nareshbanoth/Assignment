select *
from prices
where cast(substr(avg_price,2) as real) > 500

