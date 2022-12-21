{{
    config(materialized="table")
}}

SELECT *
FROM {{ ref('registrations') }} AS r
FULL OUTER JOIN {{ ref('sales') }} AS s 
    ON s.payment_month = r.reg_month