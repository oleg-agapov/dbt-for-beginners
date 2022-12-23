{{ 
	config(materialized="table")
}}

SELECT
	date_trunc('month', event_date) AS payment_month,
	count(1) AS orders_number
FROM {{ source('raw_data', 'payments') }}
GROUP BY 1
