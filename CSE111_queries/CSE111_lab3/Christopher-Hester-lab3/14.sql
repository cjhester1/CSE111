select count(o_orderpriority)
from customer, orders, nation
where c_custkey= o_custkey and
c_nationkey= n_nationkey and 
n_name= 'BRAZIL' and 
o_orderpriority='1-URGENT' and 
o_orderdate between '1994-01-01' and '1997-12-31';
