CREATE TABLE [dbo].[titles]
(
[title_id] [dbo].[tid] NOT NULL,
[title] [varchar] (80) NOT NULL,
[type] [char] (12) NOT NULL CONSTRAINT [DF__titles__type__403A8C7D] DEFAULT ('UNDECIDED'),
[pub_id] [char] (4) NULL,
[price] [money] NULL,
[advance] [money] NULL,
[royalty] [int] NULL,
[ytd_sales] [int] NULL,
[notes] [varchar] (200) NULL,
[pubdate] [datetime] NOT NULL CONSTRAINT [DF__titles__pubdate__4222D4EF] DEFAULT (getdate())
)
GO
ALTER TABLE [dbo].[titles] ADD CONSTRAINT [UPKCL_titleidind] PRIMARY KEY CLUSTERED  ([title_id])
GO
CREATE NONCLUSTERED INDEX [titleind] ON [dbo].[titles] ([title])
GO
ALTER TABLE [dbo].[titles] ADD CONSTRAINT [FK__titles__pub_id__412EB0B6] FOREIGN KEY ([pub_id]) REFERENCES [dbo].[publishers] ([pub_id])
GO
