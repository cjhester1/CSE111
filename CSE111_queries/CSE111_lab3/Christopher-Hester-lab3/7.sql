select l_receiptdate, count(l_quantity)
from lineitem, customer, orders
where 
c_custkey=o_custkey AND
o_orderkey= l_orderkey AND
c_name= 'Customer#000000118'
group by l_receiptdate;
