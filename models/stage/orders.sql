{{ config(
    schema= 'STAGE',
    database= 'DBT' 
)}}

SELECT * FROM "DBT"."RAW_SOURCE"."ORDERS"