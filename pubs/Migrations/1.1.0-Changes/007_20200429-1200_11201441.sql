-- <Migration ID="11cfac5e-9ea5-4340-84da-18a1d1756bc7" />
GO

PRINT N'Altering [dbo].[sales]'
GO
ALTER TABLE [dbo].[sales] ADD
[parcels] [nchar] (10) NULL
GO
