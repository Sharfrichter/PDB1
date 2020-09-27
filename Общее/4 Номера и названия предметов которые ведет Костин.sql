SELECT `subject`.`subject_id`, `subject`.`subject_name` FROM `subject` WHERE
`subject`.`subject_id` 
IN (SELECT DISTINCT `lecturer_teaches`.`subject_id` 
FROM `lecturer_teaches` 
WHERE `lecturer_teaches`.`personal_id`=(
SELECT `lecturer`.`personal_id` 
FROM `lecturer` 
WHERE `lecturer`.`second_name`="Костин"))
