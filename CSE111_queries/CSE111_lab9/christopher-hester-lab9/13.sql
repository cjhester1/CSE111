SELECT count(DISTINCT l_orderkey) 
  FROM (
           SELECT l_orderkey
             FROM Q1,
                  lineitem,
                  orders
            WHERE c_nation = 'CANADA' AND 
                  c_custkey = o_custkey AND 
                  l_orderkey = o_orderkey
       ),
       (
           SELECT l_orderkey AS ll_orderkey
             FROM Q2,
                  lineitem
            WHERE s_region = 'EUROPE' AND 
                  l_suppkey = s_suppkey
       )
 WHERE l_orderkey = ll_orderkey;