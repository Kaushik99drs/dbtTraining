{{ config( 
    schema= 'PUBLISH',
    database= 'DBT' 
)}}

SELECT nr.*,s.* 
FROM {{ ref('nation_region' )}} as nr
    left join {{ ref('supplier' )}} as s
        on nr.N_NATIONKEY=s.S_NATIONKEY