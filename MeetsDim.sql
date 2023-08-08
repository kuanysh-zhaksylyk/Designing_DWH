USE [kuanyshdb1]
GO

ALTER TABLE [dbo].[Meets] DROP CONSTRAINT [FK_Meets_Date]
GO

/****** Object:  Table [dbo].[Meets]    ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Meets]') AND type in (N'U'))
DROP TABLE [dbo].[Meets]
GO

/****** Object:  Table [dbo].[Meets]    ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Meets](
	[MeetID] [int] NOT NULL,
	[MeetName] [nvarchar](1000) NULL,
	[MeetPath] [nvarchar](1000) NULL,
	[Federation] [nvarchar](1000) NULL,
	[MeetTown] [nvarchar](1000) NULL,
	[MeetState] [nvarchar](1000) NULL,
	[MeetCountry] [nvarchar](1000) NULL,
	[DateID] [int] NULL,
 CONSTRAINT [XPKMeets] PRIMARY KEY CLUSTERED 
(
	[MeetID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Meets]  WITH CHECK ADD  CONSTRAINT [FK_Meets_Date] FOREIGN KEY([DateID])
REFERENCES [dbo].[Date] ([DateID])
GO

ALTER TABLE [dbo].[Meets] CHECK CONSTRAINT [FK_Meets_Date]
GO

