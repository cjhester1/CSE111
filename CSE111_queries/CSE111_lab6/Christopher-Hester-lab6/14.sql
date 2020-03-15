select custnation, ep2-ep1
from
    (select n1.n_name as custnation, n2.n_name as suppnation, sum(l_extendedprice) as ep1
    from nation n1, customer, orders, lineitem, supplier, nation n2 
    where n1.n_name <> n2.n_name 
        and n1.n_nationkey=c_nationkey 
        and c_custkey=o_custkey
        and o_orderkey=l_orderkey 
        and l_suppkey=s_suppkey 
        and s_nationkey=n2.n_nationkey
        and l_shipdate like '%1996%'
    group by n1.n_name),
    
    (select n1.n_name as custnation1, n2.n_name as suppnation2, sum(l_extendedprice) as ep2
    from nation n1, customer, orders, lineitem, supplier, nation n2 
    where n1.n_name <> n2.n_name
         and n1.n_nationkey=c_nationkey 
         and c_custkey=o_custkey
         and o_orderkey=l_orderkey 
         and l_suppkey=s_suppkey 
         and s_nationkey=n2.n_nationkey
         and l_shipdate like '%1996%'
    group by n2.n_name)

where custnation=suppnation2;