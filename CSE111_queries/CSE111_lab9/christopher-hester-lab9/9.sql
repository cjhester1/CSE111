SELECT count(DISTINCT o_clerk) 
  FROM Q5,
       Q2,
       lineitem
 WHERE o_orderkey = l_orderkey AND 
       l_suppkey = s_suppkey AND 
       s_nation = 'RUSSIA';