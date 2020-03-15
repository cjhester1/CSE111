select MAX(julianday
(l_shipdate)-julianday(l_commitdate)) as NumberofDays
From lineitem;
