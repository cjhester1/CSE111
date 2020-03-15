select r_name,count(o_orderstatus)
from region, nation , orders, customer
where c_custkey=o_custkey and
c_nationkey= n_nationkey and
n_regionkey= r_regionkey and
o_orderstatus='F'
group by r_name
order by count(o_orderstatus) desc;
