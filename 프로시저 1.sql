USE tempdb;
DROP PROC GUGUDAN;
DROP TABLE ##TPTEST;
GO
CREATE TABLE ##tptest
( 단 INT,
  반복수 INT,
  결과 INT)
GO
CREATE PROCEDURE Gugudan
AS
	DECLARE @i INT;
	DECLARE @j INT;
	SET @i = 2;
	
	WHILE (@i < 10)
	BEGIN
		SET @j = 1;
		WHILE(@j < 10) 
		BEGIN
				INSERT INTO ##tptest VALUES(@i, @j, @i*@j);
				SET @j += 1
		END
		SET @i += 1
	END
GO
EXEC GUGUDAN;
select * from ##tptest;



			
		

	