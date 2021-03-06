-- original: minmax3.test
-- credit:   http://www.sqlite.org/src/tree?ci=trunk&name=test

CREATE TABLE t1(x, y, z)
;BEGIN;
    INSERT INTO t1 VALUES('1', 'I',   'one');
    INSERT INTO t1 VALUES('2', 'IV',  'four');
    INSERT INTO t1 VALUES('2', NULL,  'three');
    INSERT INTO t1 VALUES('2', 'II',  'two');
    INSERT INTO t1 VALUES('2', 'V',   'five');
    INSERT INTO t1 VALUES('3', 'VI',  'six');
    COMMIT;
    PRAGMA automatic_index=OFF
;CREATE INDEX i1 ON t1(x)
;CREATE INDEX i2 ON t1(x,y)
;DROP INDEX i2 ; CREATE INDEX i2 ON t1(x, y DESC)
;DROP INDEX i1 ; DROP INDEX i2
;CREATE INDEX i1 ON t1(x)
;CREATE INDEX i2 ON t1(x,y)
;DROP INDEX i2 ; CREATE INDEX i2 ON t1(x, y DESC)
;DROP INDEX i1 ; DROP INDEX i2
;CREATE INDEX i1 ON t1(y)
;DROP INDEX i1 ; CREATE INDEX i1 ON t1(y DESC)
;DROP INDEX i1
;CREATE INDEX i1 ON t1(y)
;DROP INDEX i1 ; CREATE INDEX i1 ON t1(y DESC)
;SELECT y from t1
;DROP INDEX i1
;CREATE TABLE t2(a, b);
    CREATE INDEX i3 ON t2(a, b);
    INSERT INTO t2 VALUES(1, NULL);
    INSERT INTO t2 VALUES(1, 1);
    INSERT INTO t2 VALUES(1, 2);
    INSERT INTO t2 VALUES(1, 3);
    INSERT INTO t2 VALUES(2, NULL);
    INSERT INTO t2 VALUES(2, 1);
    INSERT INTO t2 VALUES(2, 2);
    INSERT INTO t2 VALUES(2, 3);
    INSERT INTO t2 VALUES(3, 1);
    INSERT INTO t2 VALUES(3, 2);
    INSERT INTO t2 VALUES(3, 3)
;SELECT min(b) FROM t2 WHERE a = 1
;SELECT min(b) FROM t2 WHERE a = 1 AND b>1
;SELECT min(b) FROM t2 WHERE a = 1 AND b>-1
;SELECT min(b) FROM t2 WHERE a = 1
;SELECT min(b) FROM t2 WHERE a = 1 AND b<2
;SELECT min(b) FROM t2 WHERE a = 1 AND b<1
;SELECT min(b) FROM t2 WHERE a = 3 AND b<1
;DROP TABLE t2;
    CREATE TABLE t2(a, b);
    CREATE INDEX i3 ON t2(a, b DESC);
    INSERT INTO t2 VALUES(1, NULL);
    INSERT INTO t2 VALUES(1, 1);
    INSERT INTO t2 VALUES(1, 2);
    INSERT INTO t2 VALUES(1, 3);
    INSERT INTO t2 VALUES(2, NULL);
    INSERT INTO t2 VALUES(2, 1);
    INSERT INTO t2 VALUES(2, 2);
    INSERT INTO t2 VALUES(2, 3);
    INSERT INTO t2 VALUES(3, 1);
    INSERT INTO t2 VALUES(3, 2);
    INSERT INTO t2 VALUES(3, 3)
;SELECT min(b) FROM t2 WHERE a = 1
;SELECT min(b) FROM t2 WHERE a = 1 AND b>1
;SELECT min(b) FROM t2 WHERE a = 1 AND b>-1
;SELECT min(b) FROM t2 WHERE a = 1
;SELECT min(b) FROM t2 WHERE a = 1 AND b<2
;SELECT min(b) FROM t2 WHERE a = 1 AND b<1
;SELECT min(b) FROM t2 WHERE a = 3 AND b<1
;CREATE TABLE t4(x);
    INSERT INTO t4 VALUES('abc');
    INSERT INTO t4 VALUES('BCD');
    SELECT max(x) FROM t4
;SELECT max(x COLLATE nocase) FROM t4
;SELECT max(x), max(x COLLATE nocase) FROM t4
;SELECT max(x COLLATE binary), max(x COLLATE nocase) FROM t4
;SELECT max(x COLLATE nocase), max(x COLLATE rtrim) FROM t4
;SELECT max(x COLLATE nocase), max(x) FROM t4
;SELECT min(x) FROM t4
;SELECT min(x COLLATE nocase) FROM t4
;SELECT min(x), min(x COLLATE nocase) FROM t4
;SELECT min(x COLLATE binary), min(x COLLATE nocase) FROM t4
;SELECT min(x COLLATE nocase), min(x COLLATE rtrim) FROM t4
;SELECT min(x COLLATE nocase), min(x) FROM t4;