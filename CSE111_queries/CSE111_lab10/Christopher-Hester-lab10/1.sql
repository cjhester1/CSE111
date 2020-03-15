CREATE TRIGGER trigger_name
BEFORE
INSERT
ON orders
BEGIN
  UPDATE orders
      SET o_orderdate = (DATE('NOW', '+1 day'))
      where o_orderdate like '1996-08%';
END;


INSERT INTO orders(o_orderkey, o_custkey, o_orderstatus, o_totalprice, o_orderdate, o_orderpriority, o_clerk, o_shippriority, o_comment)
VALUES ('o_orderkey', 'o_custkey', 'o_orderstatus', 'o_totalprice', 'o_orderdate', 'o_orderpriority', 'o_clerk', 'o_shippriority', 'o_comment');


SELECT o_orderkey, o_custkey, o_orderstatus, o_totalprice, o_orderdate, o_orderpriority, o_clerk, o_shippriority, o_comment
FROM orders
WHERE o_orderdate LIKE (DATE('NOW', '+1 day'));


