IF TYPE_ID('[dbo].[id]') IS NOT NULL
	DROP TYPE [dbo].[id];

GO
CREATE TYPE [dbo].[id] FROM varchar (11) NOT NULL
GO
GRANT REFERENCES ON TYPE:: [dbo].[id] TO [public]
GO
