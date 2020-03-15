SELECT c_name,
       sum(o_totalprice),
       c_nation
  FROM Q1,
       orders
 WHERE c_custkey = o_custkey AND 
       c_nation = 'FRANCE'
 GROUP BY c_name;