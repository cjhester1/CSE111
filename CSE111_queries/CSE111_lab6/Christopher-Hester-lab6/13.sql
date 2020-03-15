SELECT n_name
  FROM region,
       nation,
       supplier,
       lineitem
 WHERE l_shipdate LIKE '%1996%' AND 
       n_nationkey = s_nationkey AND 
       s_suppkey = l_suppkey
 GROUP BY n_name
 ORDER BY sum(l_extendedprice) DESC
 LIMIT 1;