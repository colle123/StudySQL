USE SHOPDB;
GO
SELECT * FROM hr.EMP WHERE SAL > (SELECT avg(SAL) FROM hr.emp) and deptno = 20;