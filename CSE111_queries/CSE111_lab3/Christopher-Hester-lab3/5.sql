select MIN(c_acctbal), MAX(c_acctbal)
From customer
Where c_mktsegment='BUILDING';
