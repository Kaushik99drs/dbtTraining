{{ config( alias= 'customer_orders',
    schema= 'PUBLISH',
    database= 'DBT' 
)}}

SELECT C.*,O.* 
FROM {{ source('STAGE', 'CUSTOMER') }} as C
    LEFT JOIN {{ source('STAGE', 'ORDERS') }} as O
        on C.C_CUSTKEY = O.O_CUSTKEY