{{ config( alias= 'customer',
    schema= 'STAGE',
    database= 'DBT',
    unique_key='Ç_CUSTKEY',
    incremental_strategy='merge'
)}}

SELECT * 
FROM {{ source('RAW_SOURCE', 'CUSTOMER') }} 
order by C_CUSTKEY desc
{% if is_incremental() %}
where Ç_CUSTKEY > (select max(Ç_CUSTKEY) from {{ this }})
{% endif %}
