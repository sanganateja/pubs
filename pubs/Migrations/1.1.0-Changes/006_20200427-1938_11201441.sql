-- <Migration ID="d908abde-1d17-4986-96ac-bef0e525e957" />
GO

PRINT N'Altering [dbo].[authors]'
GO
ALTER TABLE [dbo].[authors] ADD
[hyd] [nchar] (10) NULL
GO
