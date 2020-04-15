CREATE TABLE [dbo].[discounts]
(
[discounttype] [varchar] (40) NOT NULL,
[stor_id] [char] (4) NULL,
[lowqty] [smallint] NULL,
[highqty] [smallint] NULL,
[discount] [decimal] (4, 2) NOT NULL,
[quantity] [nchar] (10) NULL,
[Dmart] [nchar] (10) NULL
)
GO
ALTER TABLE [dbo].[discounts] ADD CONSTRAINT [FK__discounts__stor___4F7CD00D] FOREIGN KEY ([stor_id]) REFERENCES [dbo].[stores] ([stor_id])
GO
