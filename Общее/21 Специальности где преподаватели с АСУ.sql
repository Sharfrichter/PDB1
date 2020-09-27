SELECT DISTINCT `students_group`.`speciality` 
FROM `students_group` 
JOIN `lecturer_teaches` 
ON `students_group`.`group_id`=`lecturer_teaches`.`group_id`
JOIN `lecturer`
ON `lecturer`.`personal_id`=`lecturer_teaches`.`personal_id`
WHERE `lecturer`.`department`="АСУ"
