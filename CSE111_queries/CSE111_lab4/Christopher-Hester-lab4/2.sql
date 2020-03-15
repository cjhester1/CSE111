select n_name, count(s_suppkey)
from nation,supplier
where s_nationkey=n_nationkey
group by n_name;