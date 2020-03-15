SELECT s_nation,
       count(DISTINCT o_orderkey) 
  FROM Q5,
       Q2,
       lineitem
 WHERE o_orderkey = l_orderkey AND 
       l_suppkey = s_suppkey AND 
       s_region = 'AMERICA' AND 
       o_orderstatus = 'F' AND 
       o_orderyear LIKE '1995'
 GROUP BY s_nation;