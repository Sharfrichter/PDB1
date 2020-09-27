SELECT * FROM `subject` WHERE `subject`.`subject_id` NOT IN
(SELECT DISTINCT `lecturer_teaches`.`subject_id`
FROM `lecturer_teaches` WHERE
`lecturer_teaches`.`personal_id` ='221Л')
