SELECT DISTINCT `number_of_supplied_details_for_the_project`.`provider_id` 
FROM `number_of_supplied_details_for_the_project` 
WHERE `number_of_supplied_details_for_the_project`.`detail_id` IN(
SELECT `number_of_supplied_details_for_the_project`.`detail_id` 
FROM `number_of_supplied_details_for_the_project`
WHERE `number_of_supplied_details_for_the_project`.`provider_id` IN (
SELECT DISTINCT `number_of_supplied_details_for_the_project`.`provider_id` 
FROM `number_of_supplied_details_for_the_project`
JOIN `details` ON `details`.`detail_id` = `number_of_supplied_details_for_the_project`.`detail_id`
WHERE `details`.`detail_color` = 'Красный' ))