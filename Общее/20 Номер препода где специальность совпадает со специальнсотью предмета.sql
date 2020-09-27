SELECT DISTINCT `lecturer`.`personal_id` FROM
`lecturer` JOIN `lecturer_teaches` 
ON `lecturer`.`personal_id`=`lecturer_teaches`.`personal_id`
JOIN `subject` 
ON `lecturer_teaches`.`subject_id`=`subject`.`subject_id`
JOIN `students_group` 
ON `lecturer_teaches`.`group_id`=`students_group`.`group_id`
WHERE `lecturer`.`department`="ЭВМ" AND `subject`.`speciality`=`students_group`.`speciality`
