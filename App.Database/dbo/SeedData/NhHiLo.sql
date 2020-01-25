-- Populate the row for the dbo.User table
IF NOT EXISTS (SELECT [TableKey],[NextHi] FROM [dbo].[NhHiLo] WHERE TableKey LIKE 'User')
BEGIN
	INSERT INTO [dbo].[NhHiLo] ([TableKey], [NextHi])
	VALUES ('User', 1)
END