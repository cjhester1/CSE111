SELECT s_name,
       c_name
  FROM lineitem,
       supplier,
       customer,
       (
           SELECT o_orderkey AS e,
                  o_custkey
             FROM orders
            WHERE o_orderstatus = 'F'
            ORDER BY o_totalprice DESC
            LIMIT 1
       )
 WHERE c_custkey = o_custkey AND 
       s_suppkey = l_suppkey AND 
       l_orderkey = e
 ORDER BY s_name;