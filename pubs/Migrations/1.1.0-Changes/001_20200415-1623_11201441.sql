-- <Migration ID="148ed36f-a97f-4608-8c84-e77b8eb2209e" />
GO

PRINT N'Altering [dbo].[authors]'
GO
ALTER TABLE [dbo].[authors] ADD
[country] [nchar] (10) NULL
GO
