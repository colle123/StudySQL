--�߿�

USE tempdb;
GO
create table T����(
					���� nvarchar(8),
					��ǰ nvarchar(30),
					���� int default 0,
					primary key(����, ��ǰ)
					)
GO
INSERT INTO T����(����, ��ǰ, ����) VALUES ('20200101', 'A1', 10), ('20200102', 'A2', 20)
GO

DECLARE @���п��� INT
SET @���п��� = 0

BEGIN TRAN
	UPDATE T���� SET ���� = 7 WHERE ���� = '20200101' AND ��ǰ = 'A1'
	IF(@@ERROR <> 0 or @@ROWCOUNT <> 1) SET @���п��� = 1
	DELETE T���� WHERE ���� = '20200105' AND ��ǰ = 'A5'
	IF(@@ERROR <> 0 or @@ROWCOUNT <> 1) SET @���п��� = 1

IF(@���п��� = 1)
	BEGIN
		PRINT (N'�Է��� �����Ͽ����ϴ�')
		ROLLBACK TRAN
	END
ELSE COMMIT TRAN

		
	

		
