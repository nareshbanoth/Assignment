update Duplicate
set price = '$0.00'
where price is NULL

create table if not exists prices as
select listing_id,'$'||max(cost)as max_price,'$'||min(cost) as min_price,'$'||round(avg(cost),2) as avg_price from(
select *,substr(price,2) cost
from Duplicate)
group by listing_id

select * from prices

