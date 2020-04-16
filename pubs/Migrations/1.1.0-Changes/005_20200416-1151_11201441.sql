-- <Migration ID="592031bb-d1a9-43cf-bc27-557d06a600f5" />
GO

PRINT N'Altering [dbo].[sales]'
GO
ALTER TABLE [dbo].[sales] ADD
[myoders] [nchar] (10) NULL
GO
