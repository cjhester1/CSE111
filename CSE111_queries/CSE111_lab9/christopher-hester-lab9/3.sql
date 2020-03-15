SELECT c_nation,
       count(o_orderkey) 
  FROM Q1,orders
 WHERE c_custkey = o_custkey AND 
       c_region = 'EUROPE'
 GROUP BY c_nation;