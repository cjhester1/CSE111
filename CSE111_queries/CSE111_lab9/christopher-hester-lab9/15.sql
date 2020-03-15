SELECT count(DISTINCT o_orderkey) 
  FROM Q152,
       orders,
       Q151,
       lineitem
 WHERE l_suppkey = s_suppkey AND 
       o_custkey = c_custkey AND 
       l_orderkey = o_orderkey;