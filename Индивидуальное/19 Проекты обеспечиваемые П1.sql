SELECT DISTINCT `project`.`project_name` 
FROM (`number_of_supplied_details_for_the_project`JOIN `project` 
ON `number_of_supplied_details_for_the_project`.`project_id`=`project`.`project_id`) 
WHERE `number_of_supplied_details_for_the_project`.`provider_id`="П1"