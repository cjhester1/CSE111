select s.r_name, c.r_name, strftime("%Y",l_shipdate) as date, sum(l_extendedprice*(1-l_discount)) 
from supplier, customer, lineitem, region s, region c, nation n1, nation n2,orders
where c_nationkey=n2.n_nationkey and
n2.n_regionkey=c.r_regionkey and
s_nationkey=n1.n_nationkey and
n1.n_regionkey=s.r_regionkey and
s_suppkey=l_suppkey and
l_orderkey=o_orderkey and
o_custkey=c_custkey and
(l_shipdate like '1995%' or l_shipdate like '1996%')
group by s.r_name,c.r_name, date
order by s.r_name,c.r_name,l_shipdate asc;