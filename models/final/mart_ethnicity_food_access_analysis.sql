SELECT *,
  lablackhalfshare - lawhitehalfshare AS disparity_black_vs_white,
  lahisphalfshare - lawhitehalfshare AS disparity_hispanic_vs_white,
  CASE 
    WHEN MedianFamilyIncome < 40000 THEN 'Low Income'
    WHEN MedianFamilyIncome BETWEEN 40000 AND 80000 THEN 'Middle Income'
    ELSE 'High Income'
  END AS income_bracket
FROM {{ ref('q2_int_food_access_income') }}