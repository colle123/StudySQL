SELECT * FROM HR.EMP WHERE HIREDATE < (SELECT HIREDATE FROM HR.EMP WHERE ENAME = 'SCOTT'); -- �����, �̶� JONES��� �̸��� ���� �� �����ϸ� �����߻�

