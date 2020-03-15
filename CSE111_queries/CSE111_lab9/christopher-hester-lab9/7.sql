SELECT c_nation,
       o_orderstatus,
       count(o_orderkey) 
  FROM Q5,
       Q1
 WHERE c_custkey = o_custkey AND 
       c_region = 'ASIA'
 GROUP BY c_nation,
          o_orderstatus;