create table if not exists properties as 		
select listing_id,count(case when available = 't'then listing_id end) as available_days,
       count(case when available = 'f'then listing_id end) as unavailable_days, 
	   round(count(case when available = 't'then listing_id end)/cast(count(*) as real),2) as available_fraction
from duplicate
group by listing_id;
				
select * from properties

