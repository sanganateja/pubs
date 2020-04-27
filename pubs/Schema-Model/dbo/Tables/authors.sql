CREATE TABLE [dbo].[authors]
(
[au_id] [dbo].[id] NOT NULL,
[au_lname] [varchar] (40) NOT NULL,
[au_fname] [varchar] (20) NOT NULL,
[phone] [char] (12) NOT NULL CONSTRAINT [DF__authors__phone__38996AB5] DEFAULT ('UNKNOWN'),
[address] [varchar] (40) NULL,
[city] [varchar] (20) NULL,
[state] [char] (2) NULL,
[zip] [char] (5) NULL,
[contract] [bit] NOT NULL,
[country] [nchar] (10) NULL,
[usa] [nchar] (10) NULL,
[hyd] [nchar] (10) NULL
)
GO
ALTER TABLE [dbo].[authors] ADD CONSTRAINT [CK__authors__au_id__37A5467C] CHECK (([au_id] like '[0-9][0-9][0-9]-[0-9][0-9]-[0-9][0-9][0-9][0-9]'))
GO
ALTER TABLE [dbo].[authors] ADD CONSTRAINT [CK__authors__zip__398D8EEE] CHECK (([zip] like '[0-9][0-9][0-9][0-9][0-9]'))
GO
ALTER TABLE [dbo].[authors] ADD CONSTRAINT [UPKCL_auidind] PRIMARY KEY CLUSTERED  ([au_id])
GO
CREATE NONCLUSTERED INDEX [aunmind] ON [dbo].[authors] ([au_lname], [au_fname])
GO
