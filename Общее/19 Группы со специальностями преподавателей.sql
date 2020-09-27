SELECT `students_group`.`group_id`
FROM `students_group` WHERE `students_group`.`speciality` IN
(SELECT `lecturer`.`speciality`
FROM `lecturer`)
