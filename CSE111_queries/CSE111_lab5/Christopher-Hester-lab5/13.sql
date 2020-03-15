select o_orderpriority, count(distinct o_orderkey)
from orders,customer,lineitem
where c_custkey=o_custkey and
o_orderkey=l_orderkey and
o_orderdate between '1996-10-01' and '1996-12-31' and
l_orderkey in (select l_orderkey from orders,lineitem where o_orderkey=l_orderkey and l_receiptdate>l_commitdate )
group by o_orderpriority
having count( l_orderkey)>0;