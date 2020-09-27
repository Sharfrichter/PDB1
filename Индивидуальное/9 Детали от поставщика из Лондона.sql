SELECT DISTINCT`number_of_supplied_details_for_the_project`.`detail_id` FROM
(`provider` JOIN `number_of_supplied_details_for_the_project`
ON `provider`.`provider_id`=`number_of_supplied_details_for_the_project`.`provider_id`)
WHERE `provider`.`city`="Лондон"