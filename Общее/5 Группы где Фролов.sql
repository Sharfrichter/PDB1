SELECT `lecturer_teaches`.`group_id` 
FROM `lecturer_teaches` 
WHERE `lecturer_teaches`.`personal_id`=
( SELECT `lecturer`.`personal_id` 
FROM `lecturer` 
WHERE `lecturer`.`second_name`='Фролов') 
