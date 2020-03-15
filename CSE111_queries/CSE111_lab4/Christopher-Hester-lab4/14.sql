select region1.r_name, region2.r_name, sum (l_extendedprice)
from  lineitem, orders, supplier, customer, nation nation1, nation nation2, region region1, region region2
where l_suppkey = s_suppkey and 
o_custkey = c_custkey and 
l_orderkey = o_orderkey and 
s_nationkey = nation1.n_nationkey and 
nation1.n_regionkey = region1.r_regionkey and 
nation2.n_regionkey = region2.r_regionkey and 
c_nationkey = nation2.n_nationkey
group by region1.r_name, region2.r_name;		