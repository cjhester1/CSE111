select max(l_discount)
from lineitem, orders,(select l_orderkey as lo, avg(l_discount) as ad
                        from lineitem, orders
                        where o_orderkey=l_orderkey and
                        o_orderdate between '1995-01-01' and '1995-12-31'
                        )
where l_orderkey=lo and
l_discount<ad;