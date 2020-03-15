select count(distinct l_orderkey)
from(select l_orderkey
    from nation, customer, lineitem, orders
    where n_name = 'CANADA' and 
    n_nationkey = c_nationkey and 
    c_custkey = o_custkey and 
    l_orderkey = o_orderkey
    ),
    (select l_orderkey as ll_orderkey
    from supplier, nation, region, lineitem
    where r_name = 'EUROPE' 
    and r_regionkey = n_regionkey 
    and n_nationkey = s_nationkey 
    and l_suppkey = s_suppkey
    )
where l_orderkey = ll_orderkey;