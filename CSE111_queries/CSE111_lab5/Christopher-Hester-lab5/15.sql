select grandtot / total
from ( select sum(l_extendedprice * (1 - l_discount) ) as grandtot
      from supplier, lineitem, orders, customer, nation n1, nation n2
      where l_orderkey = o_orderkey and 
            o_custkey = c_custkey and 
            c_nationkey = n1.n_nationkey and 
            n1.n_regionkey = 3 and
            l_suppkey = s_suppkey and
            l_shipdate LIKE '1996%' and 
            s_suppkey = l_suppkey and 
            s_nationkey = n2.n_nationkey and 
            n2.n_name = 'UNITED STATES'
     ),
     (select sum(l_extendedprice * (1 - l_discount) ) as total
      from lineitem, customer, orders, nation,region
      where l_orderkey = o_orderkey and 
            o_custkey = c_custkey and 
            c_nationkey = n_nationkey and 
            n_regionkey = r_regionkey and
            r_name='EUROPE' and
            l_shipdate like '1996%'
     );