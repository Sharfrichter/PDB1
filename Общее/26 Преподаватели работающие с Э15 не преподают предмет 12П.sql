SELECT DISTINCT `lecturer_teaches`.`personal_id`
FROM (`students_group` JOIN `lecturer_teaches`
ON `students_group`.`group_id`=`lecturer_teaches`.`group_id`)
WHERE `students_group`.`group_name`="Э-15" AND `lecturer_teaches`.`personal_id` NOT IN
(SELECT DISTINCT `lecturer_teaches`.`personal_id` 
FROM `lecturer_teaches` 
WHERE `lecturer_teaches`.`subject_id`="12П")
