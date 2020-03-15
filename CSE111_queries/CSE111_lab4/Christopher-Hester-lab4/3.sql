select n_name, count(o_orderkey)
from customer, orders, nation,region
where c_custkey=o_custkey and
c_nationkey= n_nationkey and 
n_regionkey= r_regionkey and
r_name='EUROPE'
group by n_name;