select count(total.ps_partkey)
from nation, supplier,(select ps_supplycost*ps_availqty as item, ps_partkey, ps_suppkey
                        from partsupp
                        limit 0.03*(select count(ps_partkey)
                                    from partsupp)
                        )
as total
where n_name='CANADA' and 
s_nationkey= n_nationkey and
total.ps_suppkey=s_suppkey;