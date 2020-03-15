select p_type, max(l_discount)
from orders, lineitem, part
where o_orderkey=l_orderkey and
l_partkey=p_partkey and 
p_type like '%ECONOMY%'
group by p_type;