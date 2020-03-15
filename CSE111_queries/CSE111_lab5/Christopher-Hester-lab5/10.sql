select r_name, count(c_custkey)
from customer,region,nation
where c_custkey not in(select c_custkey from orders, customer where c_custkey=o_custkey) and c_nationkey=n_nationkey and
n_regionkey=r_regionkey and 
c_acctbal >(select avg(c_acctbal) from customer)
group by r_name;