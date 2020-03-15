select distinct n_name
from nation, customer, orders
Where c_custkey=o_custkey and
n_nationkey =c_nationkey and 
o_orderdate between '1996-12-01' AND '1996-12-31';

