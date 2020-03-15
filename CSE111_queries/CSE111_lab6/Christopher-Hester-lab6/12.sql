SELECT n_name
  FROM (
           SELECT sum(o_totalprice) AS high,
                  n_name
             FROM nation,
                  customer,
                  orders
            WHERE n_nationkey = c_nationkey AND 
                  c_custkey = o_custkey
            GROUP BY n_name
            ORDER BY high DESC
            LIMIT 1
       );