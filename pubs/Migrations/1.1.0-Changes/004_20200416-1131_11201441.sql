-- <Migration ID="960978a1-113d-4ee8-bb81-9d853d5e2d8b" />
GO

PRINT N'Altering [dbo].[authors]'
GO
ALTER TABLE [dbo].[authors] ADD
[usa] [nchar] (10) NULL
GO
