SELECT`sg1`.`group_id` , `sg2`.`group_id`  
FROM `students_group` `sg1`,`students_group` `sg2` 
WHERE `sg1`.`speciality`=`sg2`.`speciality` AND `sg1`.`group_id`<`sg2`.`group_id`;
