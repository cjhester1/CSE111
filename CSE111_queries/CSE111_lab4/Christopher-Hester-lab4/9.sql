select  count(distinct o_clerk)
from orders, nation, supplier, lineitem
where o_orderkey=l_orderkey and
l_suppkey=s_suppkey and
s_nationkey=n_nationkey and
n_name='RUSSIA';