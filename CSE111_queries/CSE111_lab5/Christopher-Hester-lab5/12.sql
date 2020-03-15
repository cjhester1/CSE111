select sum(ps_supplycost) 
from partsupp, part
where ps_partkey =p_partkey and ps_partkey in 
(select l_partkey 
from lineitem 
where l_shipdate between '1996-01-01' and '1996-12-31') and 
p_retailprice < 1000 and not 
ps_suppkey in (select l_suppkey from lineitem where l_shipdate between '1995-01-01' and '1995-12-31' and l_extendedprice < 1000);