-- original: expr.test
-- credit:   http://www.sqlite.org/src/tree?ci=trunk&name=test

SELECT i1=3, i2=NULL
;SELECT i1=3, i2=8
;SELECT i1=3, i2=8
;SELECT i1=3, i2=8
;SELECT i1=3, i2=8
;SELECT i1=3, i2=NULL
;SELECT i1=3, i2=NULL
;SELECT i1=3, i2=NULL
;SELECT i1=3, i2=NULL
;SELECT i1=NULL, i2=8
;SELECT i1=NULL, i2=8
;SELECT i1=NULL, i2=8
;SELECT i1=NULL, i2=8
;SELECT i1=NULL, i2=3
;SELECT i1=32, i2=NULL
;SELECT i1=NULL, i2=NULL
;SELECT i1=32, i2=NULL
;SELECT i1=1, i2=''
;SELECT i1=0, i2=''
;SELECT i1=40, i2=1
;SELECT i1=0
;SELECT i1=0
;SELECT i1=0
;SELECT i1=0
;SELECT i1=0
;SELECT i1=0
;SELECT i1=0
;SELECT i1=NULL, i2=8
;SELECT i1=NULL, i2=NULL
;SELECT i1=6, i2=NULL
;SELECT i1=6, i2=6
;SELECT i1=NULL, i2=8
;SELECT i1=NULL, i2=NULL
;SELECT i1=6, i2=NULL
;SELECT i1=8, i2=8
;SELECT i1=NULL, i2=8
;SELECT i1=NULL, i2=NULL
;SELECT i1=6, i2=NULL
;SELECT i1=6, i2=6
;SELECT i1=NULL, i2=8
;SELECT i1=NULL, i2=NULL
;SELECT i1=6, i2=NULL
;SELECT i1=8, i2=8
;SELECT i1=9223372036854775806, i2=1
;SELECT r1=1.23, r2=2.34
;SELECT r1=1.23, r2=2.34
;SELECT r1=1.23, r2=2.34
;SELECT r1=1.23, r2=2.34
;SELECT r1=1.23, r2=2.34
;SELECT r1=1.23, r2=2.34
;SELECT r1=1.23, r2=2.34
;SELECT r1=1.23, r2=2.34
;SELECT r1=1.23, r2=2.34
;SELECT r1=1.23, r2=2.34
;SELECT r1=1.23, r2=2.34
;SELECT r1=1.23, r2=2.34
;SELECT r1=1.23, r2=2.34
;SELECT r1=2.34, r2=2.34
;SELECT r1=2.34, r2=2.34
;SELECT r1=2.34, r2=2.34
;SELECT r1=2.34, r2=2.34
;SELECT r1=2.34, r2=2.34
;SELECT r1=2.34, r2=2.34
;SELECT r1=2.34, r2=2.34
;SELECT r1=2.34, r2=2.34
;SELECT r1=1.23, r2=2.34
;SELECT r1=1.23, r2=2.34
;SELECT r1=25.0, r2=11.0
;SELECT r1=1.23, r2=NULL
;SELECT r1=1e300, r2=1e300
;SELECT r1=1e300, r2=-1e300
;SELECT r1=1.1, r2=0.0
;SELECT r1=1.1, r2=0.0
;SELECT t1='abc', t2='xyz'
;SELECT t1='xyz', t2='abc'
;SELECT t1='abc', t2='abc'
;SELECT t1='abc', t2='xyz'
;SELECT t1='xyz', t2='abc'
;SELECT t1='abc', t2='abc'
;SELECT t1='abc', t2='xyz'
;SELECT t1='xyz', t2='abc'
;SELECT t1='abc', t2='abc'
;SELECT t1='abc', t2='xyz'
;SELECT t1='xyz', t2='abc'
;SELECT t1='abc', t2='abc'
;SELECT t1='abc', t2='xyz'
;SELECT t1='xyz', t2='abc'
;SELECT t1='abc', t2='abc'
;SELECT t1='abc', t2='xyz'
;SELECT t1='xyz', t2='abc'
;SELECT t1='abc', t2='abc'
;SELECT t1='abc', t2='xyz'
;SELECT t1='xyz', t2='abc'
;SELECT t1='abc', t2='abc'
;SELECT t1='abc', t2='xyz'
;SELECT t1='xyz', t2='abc'
;SELECT t1='abc', t2='abc'
;SELECT t1=NULL, t2='hi'
;SELECT t1=NULL, t2='hi'
;SELECT t1=NULL, t2='hi';