SELECT strftime('%m', l_shipdate) AS m,
       avg(l_quantity) 
  FROM lineitem
 WHERE l_shipdate LIKE '%1996%'
 GROUP BY m;
;