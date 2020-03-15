select n_name,count(s_suppkey) as s,avg(s_acctbal)
from supplier, nation
where s_nationkey=n_nationkey
group  by n_name
having s>=5;
