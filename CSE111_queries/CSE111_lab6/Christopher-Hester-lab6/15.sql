SELECT country,
       n5,
       n6
  FROM (
           SELECT f AS country,
                  ( (d - s) / s) AS n5
             FROM nation,
                  (
                      SELECT custnation AS e,
                             (ep2 - ep1) AS s
                        FROM (
                                 SELECT n1.n_name AS custnation,
                                        n2.n_name AS suppnation,
                                        sum(l_extendedprice) AS ep1
                                   FROM nation n1,
                                        customer,
                                        orders,
                                        lineitem,
                                        supplier,
                                        nation n2
                                  WHERE n1.n_name <> n2.n_name AND 
                                        n1.n_nationkey = c_nationkey AND 
                                        c_custkey = o_custkey AND 
                                        o_orderkey = l_orderkey AND 
                                        l_suppkey = s_suppkey AND 
                                        s_nationkey = n2.n_nationkey AND 
                                        l_shipdate LIKE '%1994%'
                                  GROUP BY n1.n_name
                             ),
                             (
                                 SELECT n1.n_name AS custnation1,
                                        n2.n_name AS suppnation2,
                                        sum(l_extendedprice) AS ep2
                                   FROM nation n1,
                                        customer,
                                        orders,
                                        lineitem,
                                        supplier,
                                        nation n2
                                  WHERE n1.n_name <> n2.n_name AND 
                                        n1.n_nationkey = c_nationkey AND 
                                        c_custkey = o_custkey AND 
                                        o_orderkey = l_orderkey AND 
                                        l_suppkey = s_suppkey AND 
                                        s_nationkey = n2.n_nationkey AND 
                                        l_shipdate LIKE '%1994%'
                                  GROUP BY n2.n_name
                             )
                       WHERE custnation = suppnation2
                  ),
                  (
                      SELECT custnation AS f,
                             (ep22 - ep12) AS d
                        FROM (
                                 SELECT n1.n_name AS custnation,
                                        n2.n_name AS suppnation,
                                        sum(l_extendedprice) AS ep12
                                   FROM nation n1,
                                        customer,
                                        orders,
                                        lineitem,
                                        supplier,
                                        nation n2
                                  WHERE n1.n_name <> n2.n_name AND 
                                        n1.n_nationkey = c_nationkey AND 
                                        c_custkey = o_custkey AND 
                                        o_orderkey = l_orderkey AND 
                                        l_suppkey = s_suppkey AND 
                                        s_nationkey = n2.n_nationkey AND 
                                        l_shipdate LIKE '%1995%'
                                  GROUP BY n1.n_name
                             ),
                             (
                                 SELECT n1.n_name AS custnation1,
                                        n2.n_name AS suppnation2,
                                        sum(l_extendedprice) AS ep22
                                   FROM nation n1,
                                        customer,
                                        orders,
                                        lineitem,
                                        supplier,
                                        nation n2
                                  WHERE n1.n_name <> n2.n_name AND 
                                        n1.n_nationkey = c_nationkey AND 
                                        c_custkey = o_custkey AND 
                                        o_orderkey = l_orderkey AND 
                                        l_suppkey = s_suppkey AND 
                                        s_nationkey = n2.n_nationkey AND 
                                        l_shipdate LIKE '%1995%'
                                  GROUP BY n2.n_name
                             )
                       WHERE custnation = suppnation2
                  )
            WHERE f = e
            GROUP BY e
       ),
       (
           SELECT f AS country2,
                  ( (d - s) / s) AS n6
             FROM nation,
                  (
                      SELECT custnation AS e,
                             (ep2 - ep1) AS s
                        FROM (
                                 SELECT n1.n_name AS custnation,
                                        n2.n_name AS suppnation,
                                        sum(l_extendedprice) AS ep1
                                   FROM nation n1,
                                        customer,
                                        orders,
                                        lineitem,
                                        supplier,
                                        nation n2
                                  WHERE n1.n_name <> n2.n_name AND 
                                        n1.n_nationkey = c_nationkey AND 
                                        c_custkey = o_custkey AND 
                                        o_orderkey = l_orderkey AND 
                                        l_suppkey = s_suppkey AND 
                                        s_nationkey = n2.n_nationkey AND 
                                        l_shipdate LIKE '%1995%'
                                  GROUP BY n1.n_name
                             ),
                             (
                                 SELECT n1.n_name AS custnation1,
                                        n2.n_name AS suppnation2,
                                        sum(l_extendedprice) AS ep2
                                   FROM nation n1,
                                        customer,
                                        orders,
                                        lineitem,
                                        supplier,
                                        nation n2
                                  WHERE n1.n_name <> n2.n_name AND 
                                        n1.n_nationkey = c_nationkey AND 
                                        c_custkey = o_custkey AND 
                                        o_orderkey = l_orderkey AND 
                                        l_suppkey = s_suppkey AND 
                                        s_nationkey = n2.n_nationkey AND 
                                        l_shipdate LIKE '%1995%'
                                  GROUP BY n2.n_name
                             )
                       WHERE custnation = suppnation2
                  ),
                  (
                      SELECT custnation AS f,
                             (ep22 - ep12) AS d
                        FROM (
                                 SELECT n1.n_name AS custnation,
                                        n2.n_name AS suppnation,
                                        sum(l_extendedprice) AS ep12
                                   FROM nation n1,
                                        customer,
                                        orders,
                                        lineitem,
                                        supplier,
                                        nation n2
                                  WHERE n1.n_name <> n2.n_name AND 
                                        n1.n_nationkey = c_nationkey AND 
                                        c_custkey = o_custkey AND 
                                        o_orderkey = l_orderkey AND 
                                        l_suppkey = s_suppkey AND 
                                        s_nationkey = n2.n_nationkey AND 
                                        l_shipdate LIKE '%1996%'
                                  GROUP BY n1.n_name
                             ),
                             (
                                 SELECT n1.n_name AS custnation1,
                                        n2.n_name AS suppnation2,
                                        sum(l_extendedprice) AS ep22
                                   FROM nation n1,
                                        customer,
                                        orders,
                                        lineitem,
                                        supplier,
                                        nation n2
                                  WHERE n1.n_name <> n2.n_name AND 
                                        n1.n_nationkey = c_nationkey AND 
                                        c_custkey = o_custkey AND 
                                        o_orderkey = l_orderkey AND 
                                        l_suppkey = s_suppkey AND 
                                        s_nationkey = n2.n_nationkey AND 
                                        l_shipdate LIKE '%1996%'
                                  GROUP BY n2.n_name
                             )
                       WHERE custnation = suppnation2
                  )
            WHERE f = e
            GROUP BY e
       )
 WHERE country = country2
 GROUP BY country;