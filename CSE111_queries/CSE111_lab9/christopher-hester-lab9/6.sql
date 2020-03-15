SELECT p_mfgr,
       o_orderpriority,
       count(p_partkey) 
  FROM Q5,
       part,
       lineitem
 WHERE o_orderkey = l_orderkey AND 
       p_partkey = l_partkey
 GROUP BY p_mfgr,
          o_orderpriority;