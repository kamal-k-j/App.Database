PRINT N'Updating data table [dbo].[User]'
IF NOT EXISTS (SELECT [Id], [FirstName], [LastName], [Email], [PasswordHash], [HashSalt], [DateOfBirth], [PhoneNumberCountry], [PhoneNumber] FROM [dbo].[User])
BEGIN
	PRINT N'Inserting new data into [dbo].[User]'
	INSERT INTO [dbo].[User] ([Id], [FirstName], [LastName], [Email], [PasswordHash], [HashSalt], [DateOfBirth], [PhoneNumberCountry], [PhoneNumber]) VALUES (1, 'Kamal', 'Jassal', 'kamal.jassal@outlook.com', 'xnEubQ/HhmvhtkFDnKXw12JsYd4=', 'I0vReHO0fnuaq0/f9OvUmw==', '1995-08-09', '+44', '0123456789')
	INSERT INTO [dbo].[User] ([Id], [FirstName], [LastName], [Email], [PasswordHash], [HashSalt], [DateOfBirth], [PhoneNumberCountry], [PhoneNumber]) VALUES (2, 'Kamal', 'Jassal', 'kamal_95@hotmail.it', 'xnEubQ/HhmvhtkFDnKXw12JsYd4=', 'I0vReHO0fnuaq0/f9OvUmw==', '1995-08-09', '+44', '0123456789')
END
ELSE
BEGIN
	PRINT N'Did not insert any data into [dbo].[User]'
END
PRINT N'Completed updating [dbo].[User]'