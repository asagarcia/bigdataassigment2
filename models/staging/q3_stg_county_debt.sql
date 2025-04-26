with source as (

    select *
    from bigdatatechnology-448017.food_access_and_debt.county_debt

),

renamed as (

    select
        county_fips,
        county_name,
        state,
        meddbtcoll_all as pct_with_medical_debt,
        autoretaildq_all as auto_loan_delinquency_rate,
        studbtdflt_all as student_loan_default_rate,
        crdbtdq_all as credit_card_delinquency_rate,
        avgincome_all as avg_household_income
    from source

)

select *
from renamed