USE SHOPDB
CREATE TABLE hr.emp_temp(empno INT, ename varchar(12), job varchar(10), mgr INT, hiredate date,
                         sal INT, comm decimal(7, 2), deptno INT ) SELECT * FROM hr.emp;
GO
INSERT INTO hr.emp_temp SELECT H.empno, H.ename, H.job, H.mgr, H.hiredate, H.sal, H.comm, H.deptno 
FROM hr.emp H INNER JOIN hr.salgrade S ON (H.SAL BETWEEN S.losal AND S.hisal) WHERE S.GRADE = 1
GO
DELETE hr.emp_temp WHERE deptno = 30
GO
SELECT * FROM hr.emp_temp