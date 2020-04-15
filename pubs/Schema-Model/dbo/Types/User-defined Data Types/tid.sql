IF TYPE_ID('[dbo].[tid]') IS NOT NULL
	DROP TYPE [dbo].[tid];

GO
CREATE TYPE [dbo].[tid] FROM varchar (6) NOT NULL
GO
GRANT REFERENCES ON TYPE:: [dbo].[tid] TO [public]
GO
