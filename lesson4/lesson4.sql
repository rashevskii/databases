select distinct `firstname`
from `users`;

alter table `profiles`
add `is_active` boolean default true;

SELECT
  `birthday`,
  (
    (YEAR(CURRENT_DATE) - YEAR(`birthday`)) -                             
    (DATE_FORMAT(CURRENT_DATE, '%m%d') < DATE_FORMAT(`birthday`, '%m%d')) 
  ) AS age
FROM `profiles`;

update `profiles`
	set `is_active` = false 
	where 
		(SELECT
		  `birthday`,
		  (
		    (YEAR(CURRENT_DATE) - YEAR(`birthday`)) -                             
		    (DATE_FORMAT(CURRENT_DATE, '%m%d') < DATE_FORMAT(`birthday`, '%m%d')) 
		  )) AS age
		FROM `profiles`;