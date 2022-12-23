{{ 
	config(materialized="table")
}}

SELECT
	date_trunc('month', reg_date) AS reg_month,
	count(1) as registrations
FROM {{ source('raw_data', 'users') }}
GROUP BY 1
