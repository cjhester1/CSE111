
select n_name,count(distinct c_name), count(distinct s_name)
from customer, supplier, region, nation
where c_nationkey = n_nationkey and
      n_regionkey = r_regionkey and
      s_nationkey = n_nationkey and 
      r_regionkey = '3'
group by n_nationkey;