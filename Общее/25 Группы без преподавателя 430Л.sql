SELECT DISTINCT `lecturer_teaches`.`group_id`
FROM `lecturer_teaches` 
WHERE `lecturer_teaches`.`group_id` 
NOT IN (SELECT `lecturer_teaches`.`group_id` FROM `lecturer_teaches`
WHERE `lecturer_teaches`.`personal_id`="430Л")
