{{ config(materialized='incremental', schema='stgs',) }}

select * from {{source('raw', 'raw_shipments')}};