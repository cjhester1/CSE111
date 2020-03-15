select count(*)
from 
    (select count(*)
    from customer, orders
    where o_orderdate like '%1995-08%' and o_custkey = c_custkey 
    group by c_name
    having count(*) <= 2
    );