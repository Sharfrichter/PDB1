SELECT * FROM `lecturer` 
WHERE `lecturer`.`position`='Доцент' AND `lecturer`.`personal_id` IN
(SELECT DISTINCT`lecturer_teaches`.`personal_id`
FROM `lecturer_teaches` WHERE `lecturer_teaches`.`group_id`='3Г' OR '8Г')
