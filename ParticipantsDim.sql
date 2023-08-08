USE [kuanyshdb1]
GO

/****** Object:  Table [dbo].[Participants]    ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Participants]') AND type in (N'U'))
DROP TABLE [dbo].[Participants]
GO

/****** Object:  Table [dbo].[Participants]    ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Participants](
	[ParticipantID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Sex] [nvarchar](2) NULL,
	[Age] [numeric](3, 1) NULL,
	[BodyWeightKg] [nvarchar](50) NULL,
	[WeightClassKg] [nvarchar](50) NULL,
 CONSTRAINT [XPKParticipants] PRIMARY KEY CLUSTERED 
(
	[ParticipantID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

