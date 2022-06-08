SELECT H.EMPNO, H.ENAME, H.JOB, H.SAL, S.GRADE, D.deptno, D.dname 
FROM hr.emp H
	INNER JOIN hr.salgrade S ON (H.SAL BETWEEN S.losal AND S.hisal)
	INNER JOIN hr.dept D ON H.deptno = D.deptno
ORDER BY H.EMPNO
