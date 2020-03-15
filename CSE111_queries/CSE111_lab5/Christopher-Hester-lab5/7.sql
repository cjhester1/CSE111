select o_orderpriority, count(p_partkey)
from orders, part, lineitem
where o_orderkey=l_orderkey and
l_partkey=p_partkey and
o_orderdate between '1996-01-01' and '1996-12-31' and
l_receiptdate<l_commitdate 
group by o_orderpriority;