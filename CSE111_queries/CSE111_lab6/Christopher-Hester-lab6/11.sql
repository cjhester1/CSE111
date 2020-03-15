SELECT n_name
  FROM (
           SELECT n_name,
                  count(c_custkey) AS customer
             FROM nation,
                  customer
            WHERE n_nationkey = c_nationkey
            GROUP BY n_name
            ORDER BY customer DESC
            LIMIT 2
       );