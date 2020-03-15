select s_name, s_acctbal
From nation, supplier, region
where s_acctbal>=1000 and 
s_nationkey= n_nationkey and
n_regionkey=r_regionkey and 
r_name= 'ASIA';
