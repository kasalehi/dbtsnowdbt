{{ config(materialized='table', schema='stgs',) }}


select * from {{source('raw', 'raw_customers')}};