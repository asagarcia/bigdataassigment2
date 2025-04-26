select
    County_FIPS,
    State,
    County_Name,
    StuDBTDflt_All,
    AvgIncome_All
from bigdatatechnology-448017.food_access_and_debt.county_debt
where StuDBTDflt_All is not null
  and AvgIncome_All is not null