CREATE TABLE [dbo].[roysched]
(
[title_id] [dbo].[tid] NOT NULL,
[lorange] [int] NULL,
[hirange] [int] NULL,
[royalty] [int] NULL
)
GO
CREATE NONCLUSTERED INDEX [titleidind] ON [dbo].[roysched] ([title_id])
GO
ALTER TABLE [dbo].[roysched] ADD CONSTRAINT [FK__roysched__title___4D94879B] FOREIGN KEY ([title_id]) REFERENCES [dbo].[titles] ([title_id])
GO
