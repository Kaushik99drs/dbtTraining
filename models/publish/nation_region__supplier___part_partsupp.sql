{{ config( 
    schema= 'PUBLISH',
    database= 'DBT' 
)}}

SELECT nrs.*,pps.* 
FROM {{ ref('nation_region__supplier' )}} as nrs
    left join {{ ref('part_partsupp' )}} as pps
        on nrs.S_SUPPKEY=pps.PS_SUPPKEY