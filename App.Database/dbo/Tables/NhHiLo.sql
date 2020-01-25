CREATE TABLE [dbo].[NhHiLo]
(
	[TableKey] NVARCHAR(50) NOT NULL, 
    [NextHi] BIGINT NOT NULL, 
    CONSTRAINT [PK_NhHiLo] PRIMARY KEY ([TableKey]) 
)
