SELECT * FROM `lecturer` 
WHERE `lecturer`.`personal_id`IN
(SELECT DISTINCT `lecturer_teaches`.`personal_id`
FROM `lecturer_teaches` 
WHERE `lecturer_teaches`.`group_id` IN
(SELECT `students_group`.`group_id`
FROM `students_group` WHERE
`students_group`.`speciality`='АСОИ'))
