create table if not exists Duplicate as
select *, row_number() over(partition by listing_id,date,available,price) as rk 
from airbnb_calendar ;

select count(distinct listing_id) as Duplicate_properties
from duplicate
where rk>1;

Delete from Duplicate where rk>1

