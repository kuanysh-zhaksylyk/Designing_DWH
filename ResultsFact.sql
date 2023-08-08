USE [kuanyshdb1]
GO

ALTER TABLE [dbo].[Results] DROP CONSTRAINT [R_9]
GO

ALTER TABLE [dbo].[Results] DROP CONSTRAINT [R_8]
GO

ALTER TABLE [dbo].[Results] DROP CONSTRAINT [R_7]
GO

ALTER TABLE [dbo].[Results] DROP CONSTRAINT [R_10]
GO

/****** Object:  Table [dbo].[Results]    ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Results]') AND type in (N'U'))
DROP TABLE [dbo].[Results]
GO

/****** Object:  Table [dbo].[Results]    ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Results](
	[MeetID] [int] NOT NULL,
	[ParticipantID] [int] NOT NULL,
	[EquipmentID] [int] NOT NULL,
	[DivisionID] [int] NOT NULL,
	[BestSquatKg] [float] NULL,
	[BestBenchKg] [float] NULL,
	[BestDeadLiftKg] [float] NULL,
	[TotalKg] [float] NULL,
	[Place] [smallint] NULL,
	[Wilks] [float] NULL,
 CONSTRAINT [XPKResults] PRIMARY KEY CLUSTERED 
(
	[MeetID] ASC,
	[ParticipantID] ASC,
	[EquipmentID] ASC,
	[DivisionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Results]  WITH CHECK ADD  CONSTRAINT [R_10] FOREIGN KEY([EquipmentID])
REFERENCES [dbo].[Equipment] ([EquipmentID])
GO

ALTER TABLE [dbo].[Results] CHECK CONSTRAINT [R_10]
GO

ALTER TABLE [dbo].[Results]  WITH CHECK ADD  CONSTRAINT [R_7] FOREIGN KEY([MeetID])
REFERENCES [dbo].[Meets] ([MeetID])
GO

ALTER TABLE [dbo].[Results] CHECK CONSTRAINT [R_7]
GO

ALTER TABLE [dbo].[Results]  WITH CHECK ADD  CONSTRAINT [R_8] FOREIGN KEY([ParticipantID])
REFERENCES [dbo].[Participants] ([ParticipantID])
GO

ALTER TABLE [dbo].[Results] CHECK CONSTRAINT [R_8]
GO

ALTER TABLE [dbo].[Results]  WITH CHECK ADD  CONSTRAINT [R_9] FOREIGN KEY([DivisionID])
REFERENCES [dbo].[Division] ([DivisionID])
GO

ALTER TABLE [dbo].[Results] CHECK CONSTRAINT [R_9]
GO

