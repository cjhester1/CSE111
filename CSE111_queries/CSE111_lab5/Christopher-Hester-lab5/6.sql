select p_mfgr
from part, partsupp, supplier ,(select min(ps_availqty) as mp 
        from part, partsupp, supplier 
        where s_suppkey=ps_suppkey and
        ps_partkey=p_partkey 
        and s_name='Supplier#000000053')
where s_suppkey=ps_suppkey and
ps_partkey=p_partkey and
ps_availqty=mp
and s_name='Supplier#000000053';