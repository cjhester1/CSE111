SELECT count(DISTINCT c_custkey) 
  FROM customer,
       orders
 WHERE c_custkey = o_custkey AND 
       o_orderkey NOT IN (
           SELECT DISTINCT o_orderkey
             FROM lineitem,
                  orders,
                  supplier,
                  nation,
                  region
            WHERE l_orderkey = o_orderkey AND 
                  s_suppkey = l_suppkey AND 
                  s_nationkey = n_nationkey AND 
                  r_regionkey = n_regionkey AND 
                  r_name NOT IN ('ASIA') 
       );