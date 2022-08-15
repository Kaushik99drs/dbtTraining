{{ config( 
    schema= 'PUBLISH',
    database= 'DBT' 
)}}

SELECT l.*,c.*,nr.* 
FROM {{ ref('lineitem' )}} as l
    left join {{ ref('customer_orders' )}} as c
        on c.O_ORDERKEY=l.L_ORDERKEY
    left join {{ ref('nation_region__supplier___part_partsupp' )}} as nr
        on l.L_PARTKEY=nr.P_PARTKEY