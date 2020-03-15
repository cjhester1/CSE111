select  c_name,sum(o_totalprice), n_name
from customer, orders, nation
where c_custkey=o_custkey and  
c_nationkey=n_nationkey and 
n_name='FRANCE'
group by c_name;