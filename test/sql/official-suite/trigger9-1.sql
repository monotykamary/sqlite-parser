-- original: trigger9.test
-- credit:   http://www.sqlite.org/src/tree?ci=trunk&name=test

PRAGMA page_size = 1024;
    CREATE TABLE t1(x, y, z);
    INSERT INTO t1 VALUES('1', randstr(10000,10000), '2');
    INSERT INTO t1 VALUES('2', randstr(10000,10000), '4');
    INSERT INTO t1 VALUES('3', randstr(10000,10000), '6');
    CREATE TABLE t2(x)
;BEGIN;
      CREATE TRIGGER trig1 BEFORE DELETE ON t1 BEGIN
        INSERT INTO t2 VALUES(old.rowid);
      END;
      DELETE FROM t1;
      SELECT * FROM t2
;ROLLBACK
;BEGIN;
      CREATE TRIGGER trig1 BEFORE DELETE ON t1 BEGIN
        INSERT INTO t2 VALUES(old.x);
      END;
      DELETE FROM t1;
      SELECT * FROM t2
;ROLLBACK
;BEGIN;
      CREATE TRIGGER trig1 BEFORE DELETE ON t1 WHEN old.x='1' BEGIN
        INSERT INTO t2 VALUES(old.rowid);
      END;
      DELETE FROM t1;
      SELECT * FROM t2
;ROLLBACK
;BEGIN;
      CREATE TRIGGER trig1 BEFORE UPDATE ON t1 BEGIN
        INSERT INTO t2 VALUES(old.rowid);
      END;
      UPDATE t1 SET y = '';
      SELECT * FROM t2
;ROLLBACK
;BEGIN;
      CREATE TRIGGER trig1 BEFORE UPDATE ON t1 BEGIN
        INSERT INTO t2 VALUES(old.x);
      END;
      UPDATE t1 SET y = '';
      SELECT * FROM t2
;ROLLBACK
;BEGIN;
      CREATE TRIGGER trig1 BEFORE UPDATE ON t1 WHEN old.x>='2' BEGIN
        INSERT INTO t2 VALUES(old.x);
      END;
      UPDATE t1 SET y = '';
      SELECT * FROM t2
;ROLLBACK
;CREATE TABLE t3(a, b);
    INSERT INTO t3 VALUES(1, 'one');
    INSERT INTO t3 VALUES(2, 'two');
    INSERT INTO t3 VALUES(3, 'three')
;BEGIN;
      CREATE VIEW v1 AS SELECT * FROM t3;
      CREATE TRIGGER trig1 INSTEAD OF UPDATE ON v1 BEGIN
        INSERT INTO t2 VALUES(old.a);
      END;
      UPDATE v1 SET b = 'hello';
      SELECT * FROM t2;
    ROLLBACK
;BEGIN;
      CREATE VIEW v1 AS SELECT a, b AS c FROM t3 WHERE c > 'one';
      CREATE TRIGGER trig1 INSTEAD OF UPDATE ON v1 BEGIN
        INSERT INTO t2 VALUES(old.a);
      END;
      UPDATE v1 SET c = 'hello';
      SELECT * FROM t2;
    ROLLBACK
;BEGIN;
      INSERT INTO t3 VALUES(3, 'three');
      INSERT INTO t3 VALUES(3, 'four');
      CREATE VIEW v1 AS SELECT DISTINCT a, b FROM t3;
      CREATE TRIGGER trig1 INSTEAD OF UPDATE ON v1 BEGIN
        INSERT INTO t2 VALUES(old.a);
      END;
      UPDATE v1 SET b = 'hello';
      SELECT * FROM t2;
    ROLLBACK
;BEGIN;
        INSERT INTO t3 VALUES(1, 'uno');
        CREATE VIEW v1 AS SELECT a, b FROM t3 EXCEPT SELECT 1, 'one';
        CREATE TRIGGER trig1 INSTEAD OF UPDATE ON v1 BEGIN
          INSERT INTO t2 VALUES(old.a);
        END;
        UPDATE v1 SET b = 'hello';
        SELECT * FROM t2;
      ROLLBACK
;BEGIN;
        INSERT INTO t3 VALUES(1, 'zero');
        CREATE VIEW v1 AS 
          SELECT sum(a) AS a, max(b) AS b FROM t3 GROUP BY t3.a HAVING b>'two';
        CREATE TRIGGER trig1 INSTEAD OF UPDATE ON v1 BEGIN
          INSERT INTO t2 VALUES(old.a);
        END;
        UPDATE v1 SET b = 'hello';
        SELECT * FROM t2;
      ROLLBACK
;CREATE TABLE t1(a, b);
  CREATE TABLE log(x);
  INSERT INTO t1 VALUES(1, 2);
  INSERT INTO t1 VALUES(3, 4);
  CREATE VIEW v1 AS SELECT a, b FROM t1;

  CREATE TRIGGER tr1 INSTEAD OF DELETE ON v1 BEGIN
    INSERT INTO log VALUES('delete');
  END;

  CREATE TRIGGER tr2 INSTEAD OF UPDATE ON v1 BEGIN
    INSERT INTO log VALUES('update');
  END;

  CREATE TRIGGER tr3 INSTEAD OF INSERT ON v1 BEGIN
    INSERT INTO log VALUES('insert');
  END
;DELETE FROM v1 WHERE rowid=1
;UPDATE v1 SET a=b WHERE rowid=2;