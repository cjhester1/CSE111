CREATE TRIGGER number3insert
  AFTER
  INSERT
  ON lineitem
  FOR EACH ROW
BEGIN
  UPDATE orders
  SET o_orderpriority = '2-HIGH'
  WHERE o_orderkey = old.l_orderkey;
END;

CREATE TRIGGER number3delete
  AFTER
  DELETE
  ON lineitem
  FOR EACH ROW
BEGIN
  UPDATE orders
  SET o_orderpriority = '2-HIGH'
  WHERE o_orderkey = old.l_orderkey;
END;


DELETE FROM lineitem
WHERE l_orderkey IN (SELECT o_orderkey
                    FROM orders
                    WHERE strftime('%m-%Y', o_orderdate) = '08-1995');


SELECT COUNT(o_orderkey)
FROM orders
WHERE o_orderpriority LIKE '2%' AND o_orderdate like '1995-08%';

