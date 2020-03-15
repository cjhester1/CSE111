SELECT s_region,
       c_region,
       sum(l_extendedprice) 
  FROM lineitem,
       orders,
       Q2,
       Q1
 WHERE l_suppkey = s_suppkey AND 
       o_custkey = c_custkey AND 
       l_orderkey = o_orderkey
 GROUP BY s_region,
          c_region;