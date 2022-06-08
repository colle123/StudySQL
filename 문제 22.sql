with CTE
AS
( SELECT * FROM hr.emp where deptno = 10)
select * FROM CTE