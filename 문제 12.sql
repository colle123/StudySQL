SELECT EMPNO, ENAME, COMM,
		CASE
			WHEN COMM IS NULL THEN N'�ش���׾���'
			WHEN COMM = 0 THEN N'�������'
			ELSE CONCAT('���� : ', COMM)
		END AS [COMM_TEXT]
FROM hr.emp;



			
