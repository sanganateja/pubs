CREATE TABLE [dbo].[stores]
(
[stor_id] [char] (4) NOT NULL,
[stor_name] [varchar] (40) NULL,
[stor_address] [varchar] (40) NULL,
[city] [varchar] (20) NULL,
[state] [char] (2) NULL,
[zip] [char] (5) NULL
)
GO
ALTER TABLE [dbo].[stores] ADD CONSTRAINT [UPK_storeid] PRIMARY KEY CLUSTERED  ([stor_id])
GO
