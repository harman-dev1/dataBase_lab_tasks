USE [lab2task]
GO
/****** Object:  Table [dbo].[lab2tasktable]    Script Date: 1/28/2024 5:19:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lab2tasktable](
	[ID] [nchar](10) NULL,
	[Name] [nchar](10) NULL,
	[Department] [nchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[table1]    Script Date: 1/28/2024 5:19:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[table1](
	[ID] [nchar](10) NULL,
	[Name] [nchar](10) NULL,
	[Department] [nchar](10) NULL
) ON [PRIMARY]
GO
INSERT [dbo].[lab2tasktable] ([ID], [Name], [Department]) VALUES (N'ali       ', N'ali       ', N'cs        ')
INSERT [dbo].[lab2tasktable] ([ID], [Name], [Department]) VALUES (N'abd       ', N'abd       ', N'cs        ')
INSERT [dbo].[lab2tasktable] ([ID], [Name], [Department]) VALUES (N'abdullah  ', N'abdullah  ', N'cs        ')
GO
