SELECT COUNT(DISTINCT l_suppkey) 
  FROM (
           SELECT l_suppkey,
                  COUNT(DISTINCT o_orderkey) AS new
             FROM nation,
                  customer,
                  orders,
                  lineitem
            WHERE (n_name = 'GERMANY' OR 
                   n_name = 'FRANCE') AND 
                  n_nationkey = c_nationkey AND 
                  c_custkey = o_custkey AND 
                  o_orderkey = l_orderkey
            GROUP BY l_suppkey
       )
       AS q1
 WHERE q1.new < 30;