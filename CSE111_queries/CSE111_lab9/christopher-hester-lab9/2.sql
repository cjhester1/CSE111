SELECT s_nation,
       count(s_suppkey) 
  FROM Q2
 GROUP BY s_nation;