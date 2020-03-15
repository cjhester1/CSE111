select max(l_extendedprice*(1-l_discount)) as m
from lineitem, orders
where o_orderkey=l_orderkey and
o_orderdate not in(select o_orderdate from orders where o_orderdate= '1994-10-02');