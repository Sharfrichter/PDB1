SELECT `number_of_supplied_details_for_the_project`.`project_id`
FROM `number_of_supplied_details_for_the_project`
WHERE `number_of_supplied_details_for_the_project`.`detail_id`='Д1'
GROUP BY `number_of_supplied_details_for_the_project`.`project_id`
HAVING AVG(`number_of_supplied_details_for_the_project`.`detail_sum`)>(
        SELECT MAX(`number_of_supplied_details_for_the_project`.`detail_sum`) 
		FROM `number_of_supplied_details_for_the_project`
		WHERE `number_of_supplied_details_for_the_project`.`project_id`='ПР1'
    )