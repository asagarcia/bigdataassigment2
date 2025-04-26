SELECT
  a.CensusTract,
  t.County,
  a.lawhitehalfshare,
  a.lablackhalfshare,
  a.laasianhalfshare,
  a.lahisphalfshare,
  t.MedianFamilyIncome,
  t.PovertyRate
FROM {{ ref('stg_access_and_demographics') }} a
INNER JOIN {{ ref('stg_tract_data') }} t
  ON a.CensusTract = t.CensusTract
  