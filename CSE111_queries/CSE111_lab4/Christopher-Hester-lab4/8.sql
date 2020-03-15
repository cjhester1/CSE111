select n_name, o_orderstatus,count(distinct o_orderkey)
from nation, orders, supplier, lineitem, region
where o_orderkey=l_orderkey and
l_suppkey=s_suppkey and
s_nationkey= n_nationkey and
n_regionkey=r_regionkey and
r_name='AMERICA' and
o_orderstatus='F' and
o_orderdate between '1995-01-01' and '1995-12-31'
group by n_name;