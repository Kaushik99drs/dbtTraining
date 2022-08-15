{{ config( 
    schema= 'STAGE',
    database= 'DBT' 
)}}

SELECT * 
FROM {{ source('RAW_SOURCE', 'PART') }}