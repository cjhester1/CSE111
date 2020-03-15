select count(distinct s_suppkey)
from supplier, part,partsupp
where p_partkey=ps_partkey and
ps_suppkey=s_suppkey and
p_type like 'MEDIUM POLISHED_%' and
p_size in(select p_size from part where p_size='3' or p_size='23' or p_size='26' or p_size='49');