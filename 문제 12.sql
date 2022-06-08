SELECT EMPNO, ENAME, COMM,
		CASE
			WHEN COMM IS NULL THEN N'해당사항없음'
			WHEN COMM = 0 THEN N'수당없음'
			ELSE CONCAT('수당 : ', COMM)
		END AS [COMM_TEXT]
FROM hr.emp;



			
