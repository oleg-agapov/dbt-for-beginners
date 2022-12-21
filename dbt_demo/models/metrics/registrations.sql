{{ 
	config(materialized="table")
}}

SELECT
	date_trunc('month', reg_date) AS reg_month,
	count(1) as registrations
FROM dbt.users
GROUP BY 1
