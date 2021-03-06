CREATE TRIGGER number4
  AFTER
  DELETE
  ON part
  FOR EACH ROW
BEGIN
  DELETE
  FROM lineitem
  WHERE l_partkey = old.p_partkey;
  DELETE
  FROM partsupp
  WHERE ps_partkey = old.p_partkey;
END;


DELETE
FROM part
WHERE p_partkey in (SELECT p_partkey
                    FROM nation,
                         part,
                         supplier,
                         partsupp
                    WHERE ps_suppkey = s_suppkey
                      AND s_nationkey = n_nationkey
                      AND p_partkey = ps_partkey
                      AND (n_nationkey = 6 OR n_nationkey = 7));


SELECT n_name, AVG(ps_supplycost)
FROM partsupp,
     supplier,
     nation,
     region
WHERE r_name = 'EUROPE'
  AND s_nationkey = n_nationkey
  AND r_regionkey = n_regionkey
  AND ps_suppkey = s_suppkey
GROUP BY n_name;

