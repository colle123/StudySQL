USE shopdb;
CREATE TABLE hr.dept_temp(deptno INT, dname varchar(20), loc varchar(13)) select * from hr.dept;
GO
INSERT INTO hr.dept_temp select * from hr.dept
UPDATE hr.dept_temp SET loc = 'SEOUL' WHERE dname = 'OPERATIONS'