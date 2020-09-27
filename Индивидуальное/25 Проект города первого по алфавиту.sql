SELECT DISTINCT`project`.`project_id` FROM `project`
WHERE `project`.`city`=(SELECT DISTINCT `project`.`city` FROM `project` LIMIT 1)