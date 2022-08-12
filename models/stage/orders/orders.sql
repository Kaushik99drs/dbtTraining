{{ config( alias= 'orders',
    schema= 'STAGE',
    database= 'DBT' 
)}}

SELECT ord.* 
FROM {{ source('RAW_SOURCE', 'ORDERS') }} as ord
inner join {{ source('RAW_SOURCE', 'CUSTOMER') }} as cust
on (ord.O_CUSTKEY=cust.C_CUSTKEY)
where cust.C_NATIONKEY not in (14)