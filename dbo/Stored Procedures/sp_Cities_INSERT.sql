﻿CREATE PROCEDURE [dbo].[sp_Cities_INSERT]
	@name NVARCHAR(50)
AS
BEGIN
	INSERT INTO Cities(NameCity)
	VALUES(@name)
END;
