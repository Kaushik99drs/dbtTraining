{{ config( alias= 'customer',
    schema= 'STAGE',
    database= 'DBT' 
)}}

SELECT * 
FROM {{ source('RAW_SOURCE', 'CUSTOMER') }}
where C_NATIONKEY not in (14)
 