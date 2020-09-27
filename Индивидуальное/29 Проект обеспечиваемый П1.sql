SELECT DISTINCT p.project_id
FROM project p
WHERE NOT p.project_id IN (
	SELECT DISTINCT nsdp.project_id
	FROM number_of_supplied_details_for_the_project nsdp
	WHERE nsdp.provider_id IN (
		SELECT provider.provider_id
		FROM provider
		WHERE UPPER(provider.provider_id)!='П1'
	)
);