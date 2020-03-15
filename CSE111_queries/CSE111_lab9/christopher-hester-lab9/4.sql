
SELECT s_name,
       count(p_size) 
  FROM part,
       Q2,
       partsupp
 WHERE p_partkey = ps_partkey AND 
       ps_suppkey = s_suppkey AND 
       p_size < '20' AND 
       s_nation = 'BRAZIL'
 GROUP BY s_name;