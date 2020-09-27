SELECT DISTINCT table1.detail_id,table2.detail_id FROM number_of_supplied_details_for_the_project as table1 
JOIN number_of_supplied_details_for_the_project as table2 
ON table1.provider_id=table2.provider_id
WHERE table1.detail_id!=table2.detail_id