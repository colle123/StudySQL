CREATE TRIGGER trg_caption ON hr.emp_temp
AFTER INSERT, UPDATE, DELETE
AS
    DECLARE @getweekend INT
	SET @getweekend = (select DATEPART(DW, GETDATE()));

	IF(@getWeekend = 1 or @getWeekend = 7)
		BEGIN
			PRINT(N'�ָ����� ���, ����, ���� �� �� �����ϴ�.')
			ROLLBACK TRAN;
		END
