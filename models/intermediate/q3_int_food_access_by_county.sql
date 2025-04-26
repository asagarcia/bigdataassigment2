SELECT
  state,
  county,
  AVG(pop_beyond_half_mile_share) AS avg_far_from_store,
  AVG(low_income_pop_beyond_half_mile_share) AS avg_lowincome_far_from_store,
  SUM(CASE WHEN low_access_half_mile_flag THEN 1 ELSE 0 END) * 1.0 / COUNT(*) AS pct_tracts_low_access
FROM {{ ref('q3_int_food_access') }}
GROUP BY state, county