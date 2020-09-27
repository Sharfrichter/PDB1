SELECT DISTINCT `students_group`.`group_name`, `subject`.`subject_name`
FROM `lecturer_teaches` 
JOIN `students_group` ON `students_group`.`group_id`=`lecturer_teaches`.`group_id` 
JOIN `subject` ON `subject`.`subject_id`=`lecturer_teaches`.`subject_id`
 WHERE `lecturer_teaches`.`auditory_number` BETWEEN 100 AND 200 
