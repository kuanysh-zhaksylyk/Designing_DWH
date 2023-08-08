USE [kuanyshdb1]
GO

/****** Object:  Table [dbo].[Date]    ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Date]') AND type in (N'U'))
DROP TABLE [dbo].[Date]
GO

/****** Object:  Table [dbo].[Date]    ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Date](
	[DateID] [int] IDENTITY(1,1) NOT NULL,
	[Day] [smallint] NULL,
	[Month] [smallint] NULL,
	[Year] [int] NULL,
 CONSTRAINT [XPKDate] PRIMARY KEY CLUSTERED 
(
	[DateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

