SELECT count(DISTINCT ps_suppkey) 
  FROM (
           SELECT min(p_retailprice) AS l
             FROM part
       ),
       partsupp,
       part
 WHERE ps_partkey = p_partkey AND 
       p_retailprice = l;
;