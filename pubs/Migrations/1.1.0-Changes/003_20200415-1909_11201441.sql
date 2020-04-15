-- <Migration ID="149f4276-bf97-44e2-b982-a4a2acdb4b5b" />
GO

PRINT N'Altering [dbo].[discounts]'
GO
ALTER TABLE [dbo].[discounts] ADD
[Dmart] [nchar] (10) NULL
GO
