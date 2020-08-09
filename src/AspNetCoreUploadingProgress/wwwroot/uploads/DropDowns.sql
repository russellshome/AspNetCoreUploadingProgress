USE [MISSystem]
GO
/****** Object:  Table [dbo].[EnfCats]    Script Date: 05/08/2020 21:32:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EnfCats](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Description] [nvarchar](300) NULL,
	[CategoryId] [int] NOT NULL,
	[LastModifiedDate] [datetime2](7) NOT NULL,
	[CreatedBy] [nvarchar](10) NULL,
	[isActive] [bit] NOT NULL,
	[isDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_EnfCats] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EnfItem]    Script Date: 05/08/2020 21:32:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EnfItem](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Description] [nvarchar](300) NULL,
	[SubTypeId] [int] NOT NULL,
	[LastModifiedDate] [datetime2](7) NOT NULL,
	[CreatedBy] [nvarchar](10) NULL,
	[isActive] [bit] NOT NULL,
	[isDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_EnfItem] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EnfTypes]    Script Date: 05/08/2020 21:32:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EnfTypes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Description] [nvarchar](300) NULL,
	[CategoryId] [int] NOT NULL,
	[TypeId] [int] NOT NULL,
	[LastModifiedDate] [datetime2](7) NOT NULL,
	[CreatedBy] [nvarchar](10) NULL,
	[isActive] [bit] NOT NULL,
	[isDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_EnfTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[EnfCats] ON 

INSERT [dbo].[EnfCats] ([Id], [Name], [Description], [CategoryId], [LastModifiedDate], [CreatedBy], [isActive], [isDeleted]) VALUES (1, NULL, N'Passenger Rights', 1, CAST(N'2020-07-28T20:04:43.9086458' AS DateTime2), N'SYSTEM', 1, 0)
INSERT [dbo].[EnfCats] ([Id], [Name], [Description], [CategoryId], [LastModifiedDate], [CreatedBy], [isActive], [isDeleted]) VALUES (2, NULL, N'Business Support', 2, CAST(N'2020-07-28T20:04:43.9110194' AS DateTime2), N'SYSTEM', 1, 0)
INSERT [dbo].[EnfCats] ([Id], [Name], [Description], [CategoryId], [LastModifiedDate], [CreatedBy], [isActive], [isDeleted]) VALUES (3, NULL, N'Investigations', 3, CAST(N'2020-07-28T20:04:43.9110219' AS DateTime2), N'SYSTEM', 1, 0)
SET IDENTITY_INSERT [dbo].[EnfCats] OFF
GO
SET IDENTITY_INSERT [dbo].[EnfItem] ON 

INSERT [dbo].[EnfItem] ([Id], [Name], [Description], [SubTypeId], [LastModifiedDate], [CreatedBy], [isActive], [isDeleted]) VALUES (64, NULL, N'Schedules', 1, CAST(N'2020-07-28T20:30:50.4198411' AS DateTime2), N'SYSTEM', 1, 0)
INSERT [dbo].[EnfItem] ([Id], [Name], [Description], [SubTypeId], [LastModifiedDate], [CreatedBy], [isActive], [isDeleted]) VALUES (65, NULL, N'Second Offence', 9, CAST(N'2020-07-28T20:30:50.4223460' AS DateTime2), N'SYSTEM', 1, 0)
INSERT [dbo].[EnfItem] ([Id], [Name], [Description], [SubTypeId], [LastModifiedDate], [CreatedBy], [isActive], [isDeleted]) VALUES (66, NULL, N'Create Active Investigation', 9, CAST(N'2020-07-28T20:30:50.4223464' AS DateTime2), N'SYSTEM', 1, 0)
INSERT [dbo].[EnfItem] ([Id], [Name], [Description], [SubTypeId], [LastModifiedDate], [CreatedBy], [isActive], [isDeleted]) VALUES (67, NULL, N'Loss of life', 10, CAST(N'2020-07-28T20:30:50.4223467' AS DateTime2), N'SYSTEM', 1, 0)
INSERT [dbo].[EnfItem] ([Id], [Name], [Description], [SubTypeId], [LastModifiedDate], [CreatedBy], [isActive], [isDeleted]) VALUES (68, NULL, N'The total loss of a ship', 10, CAST(N'2020-07-28T20:30:50.4223471' AS DateTime2), N'SYSTEM', 1, 0)
INSERT [dbo].[EnfItem] ([Id], [Name], [Description], [SubTypeId], [LastModifiedDate], [CreatedBy], [isActive], [isDeleted]) VALUES (69, NULL, N'Severe pollution', 10, CAST(N'2020-07-28T20:30:50.4223474' AS DateTime2), N'SYSTEM', 1, 0)
INSERT [dbo].[EnfItem] ([Id], [Name], [Description], [SubTypeId], [LastModifiedDate], [CreatedBy], [isActive], [isDeleted]) VALUES (70, NULL, N'Injury', 11, CAST(N'2020-07-28T20:30:50.4223478' AS DateTime2), N'SYSTEM', 1, 0)
INSERT [dbo].[EnfItem] ([Id], [Name], [Description], [SubTypeId], [LastModifiedDate], [CreatedBy], [isActive], [isDeleted]) VALUES (71, NULL, N'Fire', 11, CAST(N'2020-07-28T20:30:50.4223482' AS DateTime2), N'SYSTEM', 1, 0)
INSERT [dbo].[EnfItem] ([Id], [Name], [Description], [SubTypeId], [LastModifiedDate], [CreatedBy], [isActive], [isDeleted]) VALUES (72, NULL, N'Collision', 11, CAST(N'2020-07-28T20:30:50.4223485' AS DateTime2), N'SYSTEM', 1, 0)
INSERT [dbo].[EnfItem] ([Id], [Name], [Description], [SubTypeId], [LastModifiedDate], [CreatedBy], [isActive], [isDeleted]) VALUES (73, NULL, N'Grounding ', 11, CAST(N'2020-07-28T20:30:50.4223489' AS DateTime2), N'SYSTEM', 1, 0)
INSERT [dbo].[EnfItem] ([Id], [Name], [Description], [SubTypeId], [LastModifiedDate], [CreatedBy], [isActive], [isDeleted]) VALUES (74, NULL, N'Explosion', 11, CAST(N'2020-07-28T20:30:50.4223492' AS DateTime2), N'SYSTEM', 1, 0)
INSERT [dbo].[EnfItem] ([Id], [Name], [Description], [SubTypeId], [LastModifiedDate], [CreatedBy], [isActive], [isDeleted]) VALUES (75, NULL, N'Damage to other property', 11, CAST(N'2020-07-28T20:30:50.4223495' AS DateTime2), N'SYSTEM', 1, 0)
INSERT [dbo].[EnfItem] ([Id], [Name], [Description], [SubTypeId], [LastModifiedDate], [CreatedBy], [isActive], [isDeleted]) VALUES (76, NULL, N'Damage to Vessel', 11, CAST(N'2020-07-28T20:30:50.4223499' AS DateTime2), N'SYSTEM', 1, 0)
INSERT [dbo].[EnfItem] ([Id], [Name], [Description], [SubTypeId], [LastModifiedDate], [CreatedBy], [isActive], [isDeleted]) VALUES (77, NULL, N'Pollution', 11, CAST(N'2020-07-28T20:30:50.4223502' AS DateTime2), N'SYSTEM', 1, 0)
INSERT [dbo].[EnfItem] ([Id], [Name], [Description], [SubTypeId], [LastModifiedDate], [CreatedBy], [isActive], [isDeleted]) VALUES (78, NULL, N'First Offence', 9, CAST(N'2020-07-28T20:30:50.4223456' AS DateTime2), N'SYSTEM', 1, 0)
INSERT [dbo].[EnfItem] ([Id], [Name], [Description], [SubTypeId], [LastModifiedDate], [CreatedBy], [isActive], [isDeleted]) VALUES (79, NULL, N'Col Regs', 12, CAST(N'2020-07-28T20:30:50.4223505' AS DateTime2), N'SYSTEM', 1, 0)
INSERT [dbo].[EnfItem] ([Id], [Name], [Description], [SubTypeId], [LastModifiedDate], [CreatedBy], [isActive], [isDeleted]) VALUES (80, NULL, N'Load Line', 12, CAST(N'2020-07-28T20:30:50.4223512' AS DateTime2), N'SYSTEM', 1, 0)
INSERT [dbo].[EnfItem] ([Id], [Name], [Description], [SubTypeId], [LastModifiedDate], [CreatedBy], [isActive], [isDeleted]) VALUES (81, NULL, N'SOLAS', 12, CAST(N'2020-07-28T20:30:50.4223515' AS DateTime2), N'SYSTEM', 1, 0)
INSERT [dbo].[EnfItem] ([Id], [Name], [Description], [SubTypeId], [LastModifiedDate], [CreatedBy], [isActive], [isDeleted]) VALUES (82, NULL, N'Tonnage', 12, CAST(N'2020-07-28T20:30:50.4223518' AS DateTime2), N'SYSTEM', 1, 0)
INSERT [dbo].[EnfItem] ([Id], [Name], [Description], [SubTypeId], [LastModifiedDate], [CreatedBy], [isActive], [isDeleted]) VALUES (83, NULL, N'MARPOL', 12, CAST(N'2020-07-28T20:30:50.4223522' AS DateTime2), N'SYSTEM', 1, 0)
INSERT [dbo].[EnfItem] ([Id], [Name], [Description], [SubTypeId], [LastModifiedDate], [CreatedBy], [isActive], [isDeleted]) VALUES (84, NULL, N'RATS', 12, CAST(N'2020-07-28T20:30:50.4223525' AS DateTime2), N'SYSTEM', 1, 0)
INSERT [dbo].[EnfItem] ([Id], [Name], [Description], [SubTypeId], [LastModifiedDate], [CreatedBy], [isActive], [isDeleted]) VALUES (85, NULL, N'Merchant Shipping Regulations ', 12, CAST(N'2020-07-28T20:30:50.4223528' AS DateTime2), N'SYSTEM', 1, 0)
INSERT [dbo].[EnfItem] ([Id], [Name], [Description], [SubTypeId], [LastModifiedDate], [CreatedBy], [isActive], [isDeleted]) VALUES (86, NULL, N'H&S Regulations', 12, CAST(N'2020-07-28T20:30:50.4223532' AS DateTime2), N'SYSTEM', 1, 0)
INSERT [dbo].[EnfItem] ([Id], [Name], [Description], [SubTypeId], [LastModifiedDate], [CreatedBy], [isActive], [isDeleted]) VALUES (87, NULL, N'ILO 188', 12, CAST(N'2020-07-28T20:30:50.4223535' AS DateTime2), N'SYSTEM', 1, 0)
INSERT [dbo].[EnfItem] ([Id], [Name], [Description], [SubTypeId], [LastModifiedDate], [CreatedBy], [isActive], [isDeleted]) VALUES (88, NULL, N'POCA', 12, CAST(N'2020-07-28T20:30:50.4223538' AS DateTime2), N'SYSTEM', 1, 0)
INSERT [dbo].[EnfItem] ([Id], [Name], [Description], [SubTypeId], [LastModifiedDate], [CreatedBy], [isActive], [isDeleted]) VALUES (89, NULL, N'Partnership working', 13, CAST(N'2020-07-28T20:30:50.4223542' AS DateTime2), N'SYSTEM', 1, 0)
INSERT [dbo].[EnfItem] ([Id], [Name], [Description], [SubTypeId], [LastModifiedDate], [CreatedBy], [isActive], [isDeleted]) VALUES (90, NULL, N'Pro Active Initiative', 13, CAST(N'2020-07-28T20:30:50.4223545' AS DateTime2), N'SYSTEM', 1, 0)
INSERT [dbo].[EnfItem] ([Id], [Name], [Description], [SubTypeId], [LastModifiedDate], [CreatedBy], [isActive], [isDeleted]) VALUES (91, NULL, N'Non-Compliance Intiative', 13, CAST(N'2020-07-28T20:30:50.4223548' AS DateTime2), N'SYSTEM', 1, 0)
INSERT [dbo].[EnfItem] ([Id], [Name], [Description], [SubTypeId], [LastModifiedDate], [CreatedBy], [isActive], [isDeleted]) VALUES (92, NULL, N'Joint Agency Working External', 13, CAST(N'2020-07-28T20:30:50.4223552' AS DateTime2), N'SYSTEM', 1, 0)
INSERT [dbo].[EnfItem] ([Id], [Name], [Description], [SubTypeId], [LastModifiedDate], [CreatedBy], [isActive], [isDeleted]) VALUES (93, NULL, N'STCW Seafarer Ship Certification Fraud', 12, CAST(N'2020-07-28T20:30:50.4223509' AS DateTime2), N'SYSTEM', 1, 0)
INSERT [dbo].[EnfItem] ([Id], [Name], [Description], [SubTypeId], [LastModifiedDate], [CreatedBy], [isActive], [isDeleted]) VALUES (94, NULL, N'Joint Working Internal', 13, CAST(N'2020-07-28T20:30:50.4223555' AS DateTime2), N'SYSTEM', 1, 0)
INSERT [dbo].[EnfItem] ([Id], [Name], [Description], [SubTypeId], [LastModifiedDate], [CreatedBy], [isActive], [isDeleted]) VALUES (95, NULL, N'Complaints', 8, CAST(N'2020-07-28T20:30:50.4223452' AS DateTime2), N'SYSTEM', 1, 0)
INSERT [dbo].[EnfItem] ([Id], [Name], [Description], [SubTypeId], [LastModifiedDate], [CreatedBy], [isActive], [isDeleted]) VALUES (96, NULL, N'SAR', 8, CAST(N'2020-07-28T20:30:50.4223446' AS DateTime2), N'SYSTEM', 1, 0)
INSERT [dbo].[EnfItem] ([Id], [Name], [Description], [SubTypeId], [LastModifiedDate], [CreatedBy], [isActive], [isDeleted]) VALUES (97, NULL, N'Cancellations', 1, CAST(N'2020-07-28T20:30:50.4223322' AS DateTime2), N'SYSTEM', 1, 0)
INSERT [dbo].[EnfItem] ([Id], [Name], [Description], [SubTypeId], [LastModifiedDate], [CreatedBy], [isActive], [isDeleted]) VALUES (98, NULL, N'Delays', 1, CAST(N'2020-07-28T20:30:50.4223349' AS DateTime2), N'SYSTEM', 1, 0)
INSERT [dbo].[EnfItem] ([Id], [Name], [Description], [SubTypeId], [LastModifiedDate], [CreatedBy], [isActive], [isDeleted]) VALUES (99, NULL, N'Accessibility', 1, CAST(N'2020-07-28T20:30:50.4223353' AS DateTime2), N'SYSTEM', 1, 0)
INSERT [dbo].[EnfItem] ([Id], [Name], [Description], [SubTypeId], [LastModifiedDate], [CreatedBy], [isActive], [isDeleted]) VALUES (100, NULL, N'Scheduled Visit', 2, CAST(N'2020-07-28T20:30:50.4223357' AS DateTime2), N'SYSTEM', 1, 0)
INSERT [dbo].[EnfItem] ([Id], [Name], [Description], [SubTypeId], [LastModifiedDate], [CreatedBy], [isActive], [isDeleted]) VALUES (101, NULL, N'Non Scheduled Visit', 2, CAST(N'2020-07-28T20:30:50.4223364' AS DateTime2), N'SYSTEM', 1, 0)
INSERT [dbo].[EnfItem] ([Id], [Name], [Description], [SubTypeId], [LastModifiedDate], [CreatedBy], [isActive], [isDeleted]) VALUES (102, NULL, N'Signage', 2, CAST(N'2020-07-28T20:30:50.4223367' AS DateTime2), N'SYSTEM', 1, 0)
INSERT [dbo].[EnfItem] ([Id], [Name], [Description], [SubTypeId], [LastModifiedDate], [CreatedBy], [isActive], [isDeleted]) VALUES (103, NULL, N'Accessibility', 2, CAST(N'2020-07-28T20:30:50.4223370' AS DateTime2), N'SYSTEM', 1, 0)
INSERT [dbo].[EnfItem] ([Id], [Name], [Description], [SubTypeId], [LastModifiedDate], [CreatedBy], [isActive], [isDeleted]) VALUES (104, NULL, N'Staff Training', 2, CAST(N'2020-07-28T20:30:50.4223374' AS DateTime2), N'SYSTEM', 1, 0)
INSERT [dbo].[EnfItem] ([Id], [Name], [Description], [SubTypeId], [LastModifiedDate], [CreatedBy], [isActive], [isDeleted]) VALUES (105, NULL, N'Equipment', 2, CAST(N'2020-07-28T20:30:50.4223378' AS DateTime2), N'SYSTEM', 1, 0)
INSERT [dbo].[EnfItem] ([Id], [Name], [Description], [SubTypeId], [LastModifiedDate], [CreatedBy], [isActive], [isDeleted]) VALUES (106, NULL, N'Scheduled Visit', 3, CAST(N'2020-07-28T20:30:50.4223382' AS DateTime2), N'SYSTEM', 1, 0)
INSERT [dbo].[EnfItem] ([Id], [Name], [Description], [SubTypeId], [LastModifiedDate], [CreatedBy], [isActive], [isDeleted]) VALUES (107, NULL, N'Non Scheduled Visit', 3, CAST(N'2020-07-28T20:30:50.4223385' AS DateTime2), N'SYSTEM', 1, 0)
INSERT [dbo].[EnfItem] ([Id], [Name], [Description], [SubTypeId], [LastModifiedDate], [CreatedBy], [isActive], [isDeleted]) VALUES (108, NULL, N'Signage', 3, CAST(N'2020-07-28T20:30:50.4223388' AS DateTime2), N'SYSTEM', 1, 0)
INSERT [dbo].[EnfItem] ([Id], [Name], [Description], [SubTypeId], [LastModifiedDate], [CreatedBy], [isActive], [isDeleted]) VALUES (109, NULL, N'Accessibility', 3, CAST(N'2020-07-28T20:30:50.4223392' AS DateTime2), N'SYSTEM', 1, 0)
INSERT [dbo].[EnfItem] ([Id], [Name], [Description], [SubTypeId], [LastModifiedDate], [CreatedBy], [isActive], [isDeleted]) VALUES (110, NULL, N'GDPR', 8, CAST(N'2020-07-28T20:30:50.4223449' AS DateTime2), N'SYSTEM', 1, 0)
INSERT [dbo].[EnfItem] ([Id], [Name], [Description], [SubTypeId], [LastModifiedDate], [CreatedBy], [isActive], [isDeleted]) VALUES (111, NULL, N'Staff Training', 3, CAST(N'2020-07-28T20:30:50.4223395' AS DateTime2), N'SYSTEM', 1, 0)
INSERT [dbo].[EnfItem] ([Id], [Name], [Description], [SubTypeId], [LastModifiedDate], [CreatedBy], [isActive], [isDeleted]) VALUES (112, NULL, N'Summary', 4, CAST(N'2020-07-28T20:30:50.4223402' AS DateTime2), N'SYSTEM', 1, 0)
INSERT [dbo].[EnfItem] ([Id], [Name], [Description], [SubTypeId], [LastModifiedDate], [CreatedBy], [isActive], [isDeleted]) VALUES (113, NULL, N'Report', 4, CAST(N'2020-07-28T20:30:50.4223406' AS DateTime2), N'SYSTEM', 1, 0)
INSERT [dbo].[EnfItem] ([Id], [Name], [Description], [SubTypeId], [LastModifiedDate], [CreatedBy], [isActive], [isDeleted]) VALUES (114, NULL, N'First Letter', 5, CAST(N'2020-07-28T20:30:50.4223409' AS DateTime2), N'SYSTEM', 1, 0)
INSERT [dbo].[EnfItem] ([Id], [Name], [Description], [SubTypeId], [LastModifiedDate], [CreatedBy], [isActive], [isDeleted]) VALUES (115, NULL, N'Direction Order', 5, CAST(N'2020-07-28T20:30:50.4223413' AS DateTime2), N'SYSTEM', 1, 0)
INSERT [dbo].[EnfItem] ([Id], [Name], [Description], [SubTypeId], [LastModifiedDate], [CreatedBy], [isActive], [isDeleted]) VALUES (116, NULL, N'Create Active Investigation', 5, CAST(N'2020-07-28T20:30:50.4223416' AS DateTime2), N'SYSTEM', 1, 0)
INSERT [dbo].[EnfItem] ([Id], [Name], [Description], [SubTypeId], [LastModifiedDate], [CreatedBy], [isActive], [isDeleted]) VALUES (117, NULL, N'New Card', 6, CAST(N'2020-07-28T20:30:50.4223419' AS DateTime2), N'SYSTEM', 1, 0)
INSERT [dbo].[EnfItem] ([Id], [Name], [Description], [SubTypeId], [LastModifiedDate], [CreatedBy], [isActive], [isDeleted]) VALUES (118, NULL, N'Replacement', 6, CAST(N'2020-07-28T20:30:50.4223423' AS DateTime2), N'SYSTEM', 1, 0)
INSERT [dbo].[EnfItem] ([Id], [Name], [Description], [SubTypeId], [LastModifiedDate], [CreatedBy], [isActive], [isDeleted]) VALUES (119, NULL, N'Returned Card', 6, CAST(N'2020-07-28T20:30:50.4223426' AS DateTime2), N'SYSTEM', 1, 0)
INSERT [dbo].[EnfItem] ([Id], [Name], [Description], [SubTypeId], [LastModifiedDate], [CreatedBy], [isActive], [isDeleted]) VALUES (120, NULL, N'Upgrade', 6, CAST(N'2020-07-28T20:30:50.4223429' AS DateTime2), N'SYSTEM', 1, 0)
INSERT [dbo].[EnfItem] ([Id], [Name], [Description], [SubTypeId], [LastModifiedDate], [CreatedBy], [isActive], [isDeleted]) VALUES (121, NULL, N'Coroner', 7, CAST(N'2020-07-28T20:30:50.4223433' AS DateTime2), N'SYSTEM', 1, 0)
INSERT [dbo].[EnfItem] ([Id], [Name], [Description], [SubTypeId], [LastModifiedDate], [CreatedBy], [isActive], [isDeleted]) VALUES (122, NULL, N'Police', 7, CAST(N'2020-07-28T20:30:50.4223436' AS DateTime2), N'SYSTEM', 1, 0)
INSERT [dbo].[EnfItem] ([Id], [Name], [Description], [SubTypeId], [LastModifiedDate], [CreatedBy], [isActive], [isDeleted]) VALUES (123, NULL, N'Solicitor', 7, CAST(N'2020-07-28T20:30:50.4223439' AS DateTime2), N'SYSTEM', 1, 0)
INSERT [dbo].[EnfItem] ([Id], [Name], [Description], [SubTypeId], [LastModifiedDate], [CreatedBy], [isActive], [isDeleted]) VALUES (124, NULL, N'Freedom Of INFO', 8, CAST(N'2020-07-28T20:30:50.4223443' AS DateTime2), N'SYSTEM', 1, 0)
INSERT [dbo].[EnfItem] ([Id], [Name], [Description], [SubTypeId], [LastModifiedDate], [CreatedBy], [isActive], [isDeleted]) VALUES (125, NULL, N'Equipment', 3, CAST(N'2020-07-28T20:30:50.4223398' AS DateTime2), N'SYSTEM', 1, 0)
INSERT [dbo].[EnfItem] ([Id], [Name], [Description], [SubTypeId], [LastModifiedDate], [CreatedBy], [isActive], [isDeleted]) VALUES (126, NULL, N'Key Stakeholder Engagement', 13, CAST(N'2020-07-28T20:30:50.4223558' AS DateTime2), N'SYSTEM', 1, 0)
SET IDENTITY_INSERT [dbo].[EnfItem] OFF
GO
SET IDENTITY_INSERT [dbo].[EnfTypes] ON 

INSERT [dbo].[EnfTypes] ([Id], [Name], [Description], [CategoryId], [TypeId], [LastModifiedDate], [CreatedBy], [isActive], [isDeleted]) VALUES (1, NULL, N'Complaints', 1, 1, CAST(N'2020-07-28T20:05:11.1267195' AS DateTime2), N'SYSTEM', 1, 0)
INSERT [dbo].[EnfTypes] ([Id], [Name], [Description], [CategoryId], [TypeId], [LastModifiedDate], [CreatedBy], [isActive], [isDeleted]) VALUES (2, NULL, N'Port Visits', 1, 2, CAST(N'2020-07-28T20:05:11.1291002' AS DateTime2), N'SYSTEM', 1, 0)
INSERT [dbo].[EnfTypes] ([Id], [Name], [Description], [CategoryId], [TypeId], [LastModifiedDate], [CreatedBy], [isActive], [isDeleted]) VALUES (3, NULL, N'Vessel Visits', 1, 3, CAST(N'2020-07-28T20:05:11.1291026' AS DateTime2), N'SYSTEM', 1, 0)
INSERT [dbo].[EnfTypes] ([Id], [Name], [Description], [CategoryId], [TypeId], [LastModifiedDate], [CreatedBy], [isActive], [isDeleted]) VALUES (4, NULL, N'Annual Survey', 1, 4, CAST(N'2020-07-28T20:05:11.1291031' AS DateTime2), N'SYSTEM', 1, 0)
INSERT [dbo].[EnfTypes] ([Id], [Name], [Description], [CategoryId], [TypeId], [LastModifiedDate], [CreatedBy], [isActive], [isDeleted]) VALUES (5, NULL, N'AIS', 2, 5, CAST(N'2020-07-28T20:05:11.1291034' AS DateTime2), N'SYSTEM', 1, 0)
INSERT [dbo].[EnfTypes] ([Id], [Name], [Description], [CategoryId], [TypeId], [LastModifiedDate], [CreatedBy], [isActive], [isDeleted]) VALUES (6, NULL, N'ID Cards', 2, 6, CAST(N'2020-07-28T20:05:11.1291041' AS DateTime2), N'SYSTEM', 1, 0)
INSERT [dbo].[EnfTypes] ([Id], [Name], [Description], [CategoryId], [TypeId], [LastModifiedDate], [CreatedBy], [isActive], [isDeleted]) VALUES (7, NULL, N'PIM', 2, 7, CAST(N'2020-07-28T20:05:11.1291045' AS DateTime2), N'SYSTEM', 1, 0)
INSERT [dbo].[EnfTypes] ([Id], [Name], [Description], [CategoryId], [TypeId], [LastModifiedDate], [CreatedBy], [isActive], [isDeleted]) VALUES (8, NULL, N'RFI', 2, 8, CAST(N'2020-07-28T20:05:11.1291048' AS DateTime2), N'SYSTEM', 1, 0)
INSERT [dbo].[EnfTypes] ([Id], [Name], [Description], [CategoryId], [TypeId], [LastModifiedDate], [CreatedBy], [isActive], [isDeleted]) VALUES (9, NULL, N'WHL', 2, 9, CAST(N'2020-07-28T20:05:11.1291051' AS DateTime2), N'SYSTEM', 1, 0)
INSERT [dbo].[EnfTypes] ([Id], [Name], [Description], [CategoryId], [TypeId], [LastModifiedDate], [CreatedBy], [isActive], [isDeleted]) VALUES (10, NULL, N'CAT A Very Serious Maritime Incident', 3, 10, CAST(N'2020-07-28T20:05:11.1291056' AS DateTime2), N'SYSTEM', 1, 0)
INSERT [dbo].[EnfTypes] ([Id], [Name], [Description], [CategoryId], [TypeId], [LastModifiedDate], [CreatedBy], [isActive], [isDeleted]) VALUES (11, NULL, N'Cat B Serious Maritime Incident', 3, 11, CAST(N'2020-07-28T20:05:11.1291059' AS DateTime2), N'SYSTEM', 1, 0)
INSERT [dbo].[EnfTypes] ([Id], [Name], [Description], [CategoryId], [TypeId], [LastModifiedDate], [CreatedBy], [isActive], [isDeleted]) VALUES (12, NULL, N'Cat C Contravention of Regulatory Compliance', 3, 12, CAST(N'2020-07-28T20:05:11.1291062' AS DateTime2), N'SYSTEM', 1, 0)
INSERT [dbo].[EnfTypes] ([Id], [Name], [Description], [CategoryId], [TypeId], [LastModifiedDate], [CreatedBy], [isActive], [isDeleted]) VALUES (13, NULL, N'Cat D Non-Compliance initiatives', 3, 13, CAST(N'2020-07-28T20:05:11.1291066' AS DateTime2), N'SYSTEM', 1, 0)
SET IDENTITY_INSERT [dbo].[EnfTypes] OFF
GO
