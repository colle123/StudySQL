USE tempdb;
DROP PROC ����
GO
DROP TABLE #T��ǰ
GO
CREATE TABLE #T��ǰ(
					��ǰ�ڵ� NVARCHAR(30),
					��ǰ�� NVARCHAR(30),
					)
GO
INSERT INTO #T��ǰ(��ǰ�ڵ�, ��ǰ��) VALUES ('A2', '���'), ('A1', '���'), ('A4', '����'), 
                                            ('A3', '����'), ('A5', '����'), ('A9', '����'),
											('A7', '����'), ('A6', '����'), ('A8', '����')
GO
CREATE PROC ����
AS
BEGIN
	SELECT * FROM #T��ǰ ORDER BY ��ǰ�ڵ� OFFSET 3 ROWS;
	SELECT * FROM #T��ǰ ORDER BY ��ǰ�ڵ� OFFSET 3 ROWS FETCH NEXT 2 ROWS ONLY
END
GO
EXEC ����;