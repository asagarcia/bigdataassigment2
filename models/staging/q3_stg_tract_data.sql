with source as (

    select *
    from bigdatatechnology-448017.food_access_and_debt.tract_data

),

renamed as (

    select
        censustract as census_tract,
        state,
        county,
        urban,
        pop2010 as population_2010,
        ohu2010 as occupied_housing_units_2010,
        povertyrate as poverty_rate,
        medianfamilyincome as median_family_income,
        tractlowi as tract_low_income_population,
        tractkids as tract_kids_population,
        tractseniors as tract_seniors_population,
        tractwhite as tract_white_population,
        tractblack as tract_black_population,
        tractasian as tract_asian_population,
        tractnhopi as tract_nhopi_population,
        tractaian as tract_aian_population,
        tractomultir as tract_multirace_population,
        tracthispanic as tract_hispanic_population,
        tracthunv as housing_units_no_vehicle,
        tractsnap as housing_units_snap
    from source

)

select *
from renamed