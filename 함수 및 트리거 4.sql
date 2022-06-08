CREATE TRIGGER trg_caption ON hr.emp_temp
AFTER INSERT, UPDATE, DELETE
AS
    DECLARE @getweekend INT
	SET @getweekend = (select DATEPART(DW, GETDATE()));

	IF(@getWeekend = 1 or @getWeekend = 7)
		BEGIN
			PRINT(N'주말에는 등록, 수정, 삭제 할 수 없습니다.')
			ROLLBACK TRAN;
		END
