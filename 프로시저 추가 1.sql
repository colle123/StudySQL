--중요

USE tempdb;
GO
create table T매출(
					일자 nvarchar(8),
					제품 nvarchar(30),
					수량 int default 0,
					primary key(일자, 제품)
					)
GO
INSERT INTO T매출(일자, 제품, 수량) VALUES ('20200101', 'A1', 10), ('20200102', 'A2', 20)
GO

DECLARE @실패여부 INT
SET @실패여부 = 0

BEGIN TRAN
	UPDATE T매출 SET 수량 = 7 WHERE 일자 = '20200101' AND 제품 = 'A1'
	IF(@@ERROR <> 0 or @@ROWCOUNT <> 1) SET @실패여부 = 1
	DELETE T매출 WHERE 일자 = '20200105' AND 제품 = 'A5'
	IF(@@ERROR <> 0 or @@ROWCOUNT <> 1) SET @실패여부 = 1

IF(@실패여부 = 1)
	BEGIN
		PRINT (N'입력이 실패하였습니다')
		ROLLBACK TRAN
	END
ELSE COMMIT TRAN

		
	

		
