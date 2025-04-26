SELECT
  cd.county_fips,
  cd.county_name,
  cd.state,
  cd.pct_with_medical_debt,
  cd.auto_loan_delinquency_rate,
  cd.student_loan_default_rate,
  fa.avg_far_from_store,
  fa.avg_lowincome_far_from_store,
  fa.pct_tracts_low_access
FROM {{ ref('q3_stg_county_debt') }} cd
LEFT JOIN {{ ref('q3_int_food_access_by_county') }} fa
ON cd.state = fa.state AND cd.county_name = fa.county