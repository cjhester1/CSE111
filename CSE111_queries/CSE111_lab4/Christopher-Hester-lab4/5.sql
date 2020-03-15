select c_name, count(o_orderkey)
from customer, orders,nation
where c_custkey=o_custkey and
c_nationkey= n_nationkey and
n_name='GERMANY' and
o_orderdate between '1995-01-01' and '1995-12-31'
group by c_name;