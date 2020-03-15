SELECT s_region,
       s_name
  FROM (
           SELECT s_region,
                  s_name,
                  max(s_acctbal) 
             FROM Q2
            
            GROUP BY s_region
       )
 ORDER BY s_region;