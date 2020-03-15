select count(distinct o_orderkey)
from  lineitem, orders, supplier, customer
where l_suppkey = s_suppkey and 
o_custkey = c_custkey and 
l_orderkey = o_orderkey and
c_acctbal<'0' and s_acctbal>0;