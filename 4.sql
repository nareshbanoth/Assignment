select count(case when available_fraction>0.5 then listing_id end) as greaterthan50,
       count(case when available_fraction>0.75 then listing_id end) as greaterthan75
from properties 
where available_fraction > 0.5;

