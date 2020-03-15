select n_name, strftime('%Y',o_orderdate) as year, count(o_orderpriority)
from orders, nation,supplier, lineitem
where 
s_suppkey=l_suppkey and
n_nationkey=s_nationkey and 
o_orderkey=l_orderkey and
o_orderpriority='3-MEDIUM'
group by year,n_name
order by n_name;
