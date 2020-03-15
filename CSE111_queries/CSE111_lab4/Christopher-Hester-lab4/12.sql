select r_name, max(s_acctbal)
from   supplier, region, nation
where s_nationkey = n_nationkey and
n_regionkey = r_regionkey
group by r_name;