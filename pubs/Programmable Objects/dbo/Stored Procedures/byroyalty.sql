IF OBJECT_ID('[dbo].[byroyalty]') IS NOT NULL
	DROP PROCEDURE [dbo].[byroyalty];

GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

CREATE PROCEDURE [dbo].[byroyalty] @percentage int
AS
select au_id from titleauthor
where titleauthor.royaltyper = @percentage

GO
