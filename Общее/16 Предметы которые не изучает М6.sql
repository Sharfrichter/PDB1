SELECT * FROM `subject` WHERE `subject`.`subject_id` NOT IN
(SELECT `lecturer_teaches`.`subject_id`
FROM `lecturer_teaches` WHERE `lecturer_teaches`.`group_id` =
(SELECT `students_group`.`group_id` 
FROM `students_group` WHERE `students_group`.`group_name`='М-6'))
