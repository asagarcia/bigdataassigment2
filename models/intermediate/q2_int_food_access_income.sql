SELECT
  a.CensusTract,
  t.County,
  a.lawhitehalfshare,
  a.lablackhalfshare,
  a.laasianhalfshare,
  a.lahisphalfshare,
  t.MedianFamilyIncome,
  t.PovertyRate
FROM {{ ref('q2_stg_access_and_demographics') }} a
INNER JOIN {{ ref('q2_stg_tract_data') }} t
  ON a.CensusTract = t.CensusTract
  