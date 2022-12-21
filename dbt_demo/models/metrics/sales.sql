{{ 
	config(materialized="table")
}}

SELECT
	date_trunc('month', event_date) AS payment_month,
	count(1) AS orders_number
FROM dbt.payments
GROUP BY 1
