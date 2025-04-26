-- models/student_debt_income_analysis.sql

with base as (
    select * from {{ ref('student_debt_income_base') }}
),

percentiles as (
    select
        percentile_cont(StuDBTDflt_All, 0.25) over () as p25,
        percentile_cont(StuDBTDflt_All, 0.75) over () as p75
    from base
    limit 1
)

select
    b.County_FIPS,
    b.State,
    b.County_Name,
    b.StuDBTDflt_All,
    b.AvgIncome_All,
    case
        when b.StuDBTDflt_All <= p.p25 then 'Low'
        when b.StuDBTDflt_All <= p.p75 then 'Medium'
        else 'High'
    end as DefaultRateCategory
from base b
cross join percentiles p