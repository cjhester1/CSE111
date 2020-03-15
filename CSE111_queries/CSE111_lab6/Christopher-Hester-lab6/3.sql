SELECT count(p_partkey) 
  FROM (
           SELECT p_partkey
             FROM supplier,
                  part,
                  partsupp,
                  nation
            WHERE ps_suppkey = s_suppkey AND 
                  ps_partkey = p_partkey AND 
                  s_nationkey = n_nationkey AND 
                  n_name = 'CANADA'
            GROUP BY p_partkey
           HAVING count(s_suppkey) > 1
       );