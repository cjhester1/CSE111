SELECT count(s_suppkey) 
  FROM (
           SELECT s_suppkey
             FROM supplier,
                  part,
                  partsupp,
                  nation
            WHERE ps_suppkey = s_suppkey AND 
                  ps_partkey = p_partkey AND 
                  s_nationkey = n_nationkey AND 
                  n_name = 'CANADA'
            GROUP BY s_suppkey
           HAVING count(p_partkey) >= 4
       );