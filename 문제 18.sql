SELECT * FROM hr.emp WHERE SAL > (SELECT SAL FROM hr.emp where ename = 'JONES')