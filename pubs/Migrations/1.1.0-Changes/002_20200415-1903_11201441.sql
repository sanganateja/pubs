-- <Migration ID="1b993cec-432f-4475-a400-b58780291479" />
GO

PRINT N'Altering [dbo].[discounts]'
GO
ALTER TABLE [dbo].[discounts] ADD
[quantity] [nchar] (10) NULL
GO
