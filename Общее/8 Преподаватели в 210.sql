SELECT `lecturer`.`second_name`
FROM `lecturer`
WHERE `lecturer`.`personal_id`IN
(SELECT DISTINCT `lecturer_teaches`.`personal_id`
FROM `lecturer_teaches` WHERE
`lecturer_teaches`.`auditory_number`='210')
