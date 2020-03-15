select s_name, count(p_size)
from part, supplier, nation, partsupp
where p_partkey= ps_partkey and
ps_suppkey=s_suppkey and
s_nationkey=n_nationkey and
p_size<'20' and
n_name='BRAZIL'
group by s_name;