select n_name, o_orderstatus, count(o_orderkey)
from nation, orders, region, customer
where c_custkey= o_custkey and
c_nationkey=n_nationkey and
n_regionkey= r_regionkey and
r_name= 'ASIA'
group by n_name,o_orderstatus;