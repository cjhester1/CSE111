select s_name,p_size ,min(ps_supplycost)
from supplier, partsupp, nation, part, region
where s_suppkey= ps_suppkey and
s_nationkey=n_nationkey and
n_regionkey=r_regionkey and
r_name='AMERICA' and 
p_partkey=ps_partkey and
p_type like '_%STEEL'

group by p_size
order by s_name;