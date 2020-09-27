SELECT DISTINCT `number_of_supplied_details_for_the_project`.`detail_id`
FROM `number_of_supplied_details_for_the_project` 
WHERE `number_of_supplied_details_for_the_project`.`project_id` IN
(SELECT DISTINCT `project_id`
FROM `number_of_supplied_details_for_the_project` 
GROUP BY `number_of_supplied_details_for_the_project`.`project_id` 
HAVING AVG(`number_of_supplied_details_for_the_project`.`detail_sum`)>320)