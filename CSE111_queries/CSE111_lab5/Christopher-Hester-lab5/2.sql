select r_name, count(s_name)
from region, supplier, nation ,(select r_name as rn ,avg(s_acctbal) as d
            from region, supplier, nation
            where 
            s_nationkey=n_nationkey and
            n_regionkey=r_regionkey
            group by rn
            )
where s_nationkey=n_nationkey and
n_regionkey=r_regionkey and 
r_name=rn and
s_acctbal >= d
group by r_name;