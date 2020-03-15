SELECT s_region,
       max(s_acctbal) 
  FROM Q2
 GROUP BY s_region;
;