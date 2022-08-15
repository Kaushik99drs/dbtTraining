{{ config( 
    schema= 'PUBLISH',
    database= 'DBT' 
)}}

SELECT n.*,r.* 
FROM {{ ref('nation' )}} as n
    left join {{ ref('region' )}} as r
        on n.N_REGIONKEY=r.R_REGIONKEY