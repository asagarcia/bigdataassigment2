with source as (

    select *
    from bigdatatechnology-448017.food_access_and_debt.access_and_demographics

),

renamed as (

    select
        censustract as census_tract,
        latracts_half as low_access_half_mile_flag,
        latracts1 as low_access_one_mile_flag,
        latracts10 as low_access_ten_mile_flag,
        latracts20 as low_access_twenty_mile_flag,
        lapophalfshare as pop_beyond_half_mile_share,
        lalowihalfshare as low_income_pop_beyond_half_mile_share
    from source

)

select *
from renamed