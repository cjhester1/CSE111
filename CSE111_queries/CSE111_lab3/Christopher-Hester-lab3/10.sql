select SUM(o_totalprice)
from orders, nation, region, customer
where c_custkey= o_custkey and
c_nationkey= n_nationkey and 
n_regionkey= r_regionkey and
r_name='EUROPE' and 
o_orderdate between '1996-01-01' and '1996-12-31';
