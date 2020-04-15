CREATE TABLE [dbo].[pub_info]
(
[pub_id] [char] (4) NOT NULL,
[logo] [image] NULL,
[pr_info] [text] NULL
)
GO
ALTER TABLE [dbo].[pub_info] ADD CONSTRAINT [UPKCL_pubinfo] PRIMARY KEY CLUSTERED  ([pub_id])
GO
ALTER TABLE [dbo].[pub_info] ADD CONSTRAINT [FK__pub_info__pub_id__571DF1D5] FOREIGN KEY ([pub_id]) REFERENCES [dbo].[publishers] ([pub_id])
GO
