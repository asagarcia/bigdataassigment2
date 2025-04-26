SELECT
  td.census_tract,
  td.state,
  td.county,
  ad.low_access_half_mile_flag,
  ad.low_access_one_mile_flag,
  ad.low_access_ten_mile_flag,
  ad.low_access_twenty_mile_flag,
  ad.pop_beyond_half_mile_share,
  ad.low_income_pop_beyond_half_mile_share,
  td.poverty_rate,
  td.median_family_income
FROM {{ ref('q3_stg_tract_data') }} td
JOIN {{ ref('q3_stg_access_and_demographics') }} ad
ON td.census_tract = ad.census_tract