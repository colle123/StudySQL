USE tempdb;
DROP PROC 沥纺
GO
DROP TABLE #T力前
GO
CREATE TABLE #T力前(
					力前内靛 NVARCHAR(30),
					力前疙 NVARCHAR(30),
					)
GO
INSERT INTO #T力前(力前内靛, 力前疙) VALUES ('A2', '寸辟'), ('A1', '荤苞'), ('A4', '饭阁'), 
                                            ('A3', '器档'), ('A5', '剧颇'), ('A9', '惑眠'),
											('A7', '皑磊'), ('A6', '绊眠'), ('A8', '滚几')
GO
CREATE PROC 沥纺
AS
BEGIN
	SELECT * FROM #T力前 ORDER BY 力前内靛 OFFSET 3 ROWS;
	SELECT * FROM #T力前 ORDER BY 力前内靛 OFFSET 3 ROWS FETCH NEXT 2 ROWS ONLY
END
GO
EXEC 沥纺;