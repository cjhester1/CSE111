select p_mfgr, o_orderpriority, count(p_partkey)
from orders, part,lineitem
where o_orderkey=l_orderkey and
p_partkey=l_partkey
group by p_mfgr,o_orderpriority;