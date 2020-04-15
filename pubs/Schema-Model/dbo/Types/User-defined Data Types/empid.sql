IF TYPE_ID('[dbo].[empid]') IS NOT NULL
	DROP TYPE [dbo].[empid];

GO
CREATE TYPE [dbo].[empid] FROM char (9) NOT NULL
GO
GRANT REFERENCES ON TYPE:: [dbo].[empid] TO [public]
GO
