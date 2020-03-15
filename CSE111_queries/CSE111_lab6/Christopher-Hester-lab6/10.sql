SELECT r_name
  FROM (
           SELECT sum(l_extendedprice) AS total,
                  r_name
             FROM region,
                  nation,
                  customer,
                  supplier,
                  lineitem,
                  orders
            WHERE r_regionkey = n_regionkey AND 
                  n_nationkey = s_nationkey AND 
                  s_nationkey = c_nationkey AND 
                  o_custkey = c_custkey AND 
                  o_orderkey = l_orderkey AND 
                  s_suppkey = l_suppkey
            GROUP BY r_name
            ORDER BY total DESC
            LIMIT 1
       );