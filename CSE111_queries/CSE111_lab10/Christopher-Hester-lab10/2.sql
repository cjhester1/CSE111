CREATE TRIGGER number2negbal
  AFTER
  UPDATE
  ON customer
  FOR EACH ROW
BEGIN
  UPDATE customer
  SET c_comment = '“Negative balance!!! Add money now!”'
  WHERE old.c_acctbal >= 0
    AND new.c_acctbal < 0
    AND c_acctbal = new.c_acctbal;
END;


CREATE TRIGGER number2posbal
  AFTER
  UPDATE
  ON customer
BEGIN
  UPDATE customer
  SET c_comment = ''
  WHERE old.c_acctbal < 0
    AND new.c_acctbal >= 0
    AND c_acctbal = new.c_acctbal;
END;



UPDATE customer
SET c_acctbal = -100
WHERE c_nationkey IN (SELECT n_nationkey
                      FROM nation,
                           region
                      WHERE n_regionkey = r_regionkey
                        AND r_regionkey = 2);



SELECT COUNT(c_custkey) AS 'number of customers with negative balance from CHINA'
FROM customer, nation
WHERE c_nationkey = 18 AND c_acctbal < 0 AND c_nationkey = n_nationkey;

UPDATE customer
SET c_acctbal = 100
WHERE c_nationkey = 12;


SELECT COUNT(c_custkey) AS 'number of customers with negative balance from ASIA'
FROM customer, nation, region
WHERE r_regionkey = 2 AND c_nationkey = n_nationkey AND n_regionkey = r_regionkey AND c_acctbal < 0;

