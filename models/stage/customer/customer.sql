{{ config( alias= 'customer',
    schema= 'STAGE',
    database= 'DBT',
    unique_key= 'C_CUSTKEY',
    incremental_strategy= 'merge'
)}}

SELECT * 
FROM {{ source('RAW_SOURCE', 'CUSTOMER') }}

{% if is_incremental() %}
where C_CUSTKEY > (select max(C_CUSTKEY) from {{ this }})
{% endif %} 
