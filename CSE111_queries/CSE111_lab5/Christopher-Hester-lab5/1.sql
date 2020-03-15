select count(distinct c_custkey)
from customer, nation, region
where c_nationkey= n_nationkey and
n_regionkey=r_regionkey and r_name not in
(select r_name
from customer, nation, region
where r_name='AFRICA' or r_name='EUROPE');