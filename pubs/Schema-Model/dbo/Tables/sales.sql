CREATE TABLE [dbo].[sales]
(
[stor_id] [char] (4) NOT NULL,
[ord_num] [varchar] (20) NOT NULL,
[ord_date] [datetime] NOT NULL,
[qty] [smallint] NOT NULL,
[payterms] [varchar] (12) NOT NULL,
[title_id] [dbo].[tid] NOT NULL
)
GO
ALTER TABLE [dbo].[sales] ADD CONSTRAINT [UPKCL_sales] PRIMARY KEY CLUSTERED  ([stor_id], [ord_num], [title_id])
GO
CREATE NONCLUSTERED INDEX [titleidind] ON [dbo].[sales] ([title_id])
GO
ALTER TABLE [dbo].[sales] ADD CONSTRAINT [FK__sales__stor_id__4AB81AF0] FOREIGN KEY ([stor_id]) REFERENCES [dbo].[stores] ([stor_id])
GO
ALTER TABLE [dbo].[sales] ADD CONSTRAINT [FK__sales__title_id__4BAC3F29] FOREIGN KEY ([title_id]) REFERENCES [dbo].[titles] ([title_id])
GO
