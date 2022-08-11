{{ config( alias= 'supplier',
    schema= 'STAGE',
    database= 'DBT' 
)}}

SELECT * 
FROM {{ source('RAW_SOURCE', 'SUPPLIER') }}
where S_NATIONKEY not in (14)
and S_ACCTBAL >= 100