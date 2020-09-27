SELECT DISTINCT `group_id` FROM `lecturer_teaches`
WHERE `lecturer_teaches`.`subject_id` IN
(SELECT DISTINCT `subject`.`subject_id` FROM 
`students_group` 
JOIN `lecturer_teaches` ON `students_group`.`group_id`=`lecturer_teaches`.`group_id`
JOIN `subject` 
ON `lecturer_teaches`.`subject_id`=`subject`.`subject_id`
WHERE `students_group`.`group_name`="АС-8")
