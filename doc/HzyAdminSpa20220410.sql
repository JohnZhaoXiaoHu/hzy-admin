USE [HzyAdminSpa20220410]
GO
/****** Object:  Table [dbo].[Flow]    Script Date: 2022/5/24 22:22:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Flow](
	[Id] [uniqueidentifier] NOT NULL,
	[LastModificationTime] [datetime] NULL,
	[CreationTime] [datetime] NULL,
	[Number] [int] NULL,
	[Code] [nvarchar](255) NULL,
	[Name] [nvarchar](255) NULL,
	[Remark] [nvarchar](255) NULL,
 CONSTRAINT [PK__flow__3214EC07BC64B717] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FlowApproval]    Script Date: 2022/5/24 22:22:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FlowApproval](
	[Id] [uniqueidentifier] NOT NULL,
	[LastModificationTime] [datetime] NULL,
	[CreationTime] [datetime] NULL,
	[UserId] [uniqueidentifier] NULL,
	[UserName] [varchar](255) NULL,
	[LaunchTime] [datetime] NULL,
	[FormId] [varchar](50) NULL,
	[FlowId] [uniqueidentifier] NULL,
	[FlowCode] [varchar](255) NULL,
	[FlowName] [varchar](255) NULL,
 CONSTRAINT [PK__FlowAppr__3214EC07D0DB8D96] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FlowApprovalStep]    Script Date: 2022/5/24 22:22:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FlowApprovalStep](
	[Id] [uniqueidentifier] NOT NULL,
	[LastModificationTime] [datetime] NULL,
	[CreationTime] [datetime] NULL,
	[Sort] [int] NULL,
	[FlowNodeId] [uniqueidentifier] NULL,
	[FlowNodeName] [varchar](255) NULL,
	[SortMore] [int] NULL,
	[State] [int] NULL,
	[OpinIons] [varchar](255) NULL,
	[UserId] [uniqueidentifier] NULL,
	[UserName] [varchar](255) NULL,
	[ApprovalDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FlowApprovalStepUser]    Script Date: 2022/5/24 22:22:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FlowApprovalStepUser](
	[Id] [uniqueidentifier] NOT NULL,
	[LastModificationTime] [datetime] NULL,
	[CreationTime] [datetime] NULL,
	[FlowApprovalStepId] [uniqueidentifier] NULL,
	[FlowNodeId] [uniqueidentifier] NULL,
	[FlowNodeName] [varchar](500) NULL,
	[UserId] [uniqueidentifier] NULL,
	[UserName] [varchar](500) NULL,
 CONSTRAINT [PK_FlowApprovalStepUser] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FlowNode]    Script Date: 2022/5/24 22:22:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FlowNode](
	[Id] [uniqueidentifier] NOT NULL,
	[LastModificationTime] [datetime] NULL,
	[CreationTime] [datetime] NULL,
	[FlowId] [uniqueidentifier] NULL,
	[FlowCode] [nvarchar](255) NULL,
	[Sort] [int] NULL,
	[Name] [nvarchar](255) NULL,
	[RoleId] [uniqueidentifier] NULL,
	[Remark] [nvarchar](255) NULL,
 CONSTRAINT [PK__flownode__3214EC07319731E2] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LowCodeList]    Script Date: 2022/5/24 22:22:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LowCodeList](
	[Id] [uniqueidentifier] NOT NULL,
	[LastModificationTime] [datetime] NULL,
	[CreationTime] [datetime] NULL,
	[Low_Code_TableId] [uniqueidentifier] NULL,
	[Low_Code_Table_InfoId] [uniqueidentifier] NULL,
	[ForeignKeyTableId] [uniqueidentifier] NULL,
	[ForeignKeyTableFieldName] [varchar](50) NULL,
 CONSTRAINT [PK_Low_Code_List] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LowCodeSearch]    Script Date: 2022/5/24 22:22:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LowCodeSearch](
	[Id] [uniqueidentifier] NOT NULL,
	[LastModificationTime] [datetime] NULL,
	[CreationTime] [datetime] NULL,
	[Low_Code_TableId] [uniqueidentifier] NULL,
	[Low_Code_Table_InfoId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_Low_Code_Search] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LowCodeTable]    Script Date: 2022/5/24 22:22:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LowCodeTable](
	[Id] [uniqueidentifier] NOT NULL,
	[LastModificationTime] [datetime] NULL,
	[CreationTime] [datetime] NULL,
	[TableName] [varchar](50) NULL,
	[Schema] [varchar](50) NULL,
	[Type] [int] NULL,
	[DisplayName] [varchar](200) NULL,
	[EntityName] [varchar](50) NULL,
	[Remark] [varchar](500) NULL,
 CONSTRAINT [PK_Low_Code_Table] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LowCodeTableInfo]    Script Date: 2022/5/24 22:22:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LowCodeTableInfo](
	[Id] [uniqueidentifier] NOT NULL,
	[LastModificationTime] [datetime] NULL,
	[CreationTime] [datetime] NULL,
	[Low_Code_TableId] [uniqueidentifier] NULL,
	[IsPrimary] [bit] NULL,
	[IsIdentity] [bit] NULL,
	[IsNullable] [bit] NULL,
	[Position] [int] NULL,
	[ColumnName] [varchar](500) NULL,
	[Describe] [varchar](50) NULL,
	[DatabaseColumnType] [varchar](50) NULL,
	[CsType] [varchar](50) NULL,
	[CsField] [varchar](50) NULL,
	[MaxLength] [int] NULL,
 CONSTRAINT [PK_Low_Code_Table_Info] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Member]    Script Date: 2022/5/24 22:22:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Member](
	[Id] [uniqueidentifier] NOT NULL,
	[Number] [nvarchar](255) NULL,
	[Name] [nvarchar](255) NULL,
	[Phone] [nvarchar](255) NULL,
	[Sex] [nvarchar](255) NULL,
	[Birthday] [datetime2](0) NULL,
	[Photo] [nvarchar](255) NULL,
	[Introduce] [nvarchar](255) NULL,
	[FilePath] [nvarchar](255) NULL,
	[UserId] [uniqueidentifier] NULL,
	[CreationTime] [datetime2](0) NULL,
	[LastModificationTime] [datetime2](0) NULL,
 CONSTRAINT [Member_pkey] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[News]    Script Date: 2022/5/24 22:22:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[News](
	[Id] [uniqueidentifier] NOT NULL,
	[LastModificationTime] [datetime2](0) NULL,
	[CreationTime] [datetime2](0) NULL,
	[Title] [varchar](50) NULL,
	[Author] [varchar](50) NULL,
	[Time] [datetime] NULL,
	[Content] [varchar](max) NULL,
 CONSTRAINT [PK_News] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SysDataAuthority]    Script Date: 2022/5/24 22:22:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SysDataAuthority](
	[Id] [uniqueidentifier] NOT NULL,
	[LastModificationTime] [datetime] NULL,
	[CreationTime] [datetime] NULL,
	[RoleId] [uniqueidentifier] NULL,
	[PermissionType] [int] NULL,
 CONSTRAINT [PK_DataAuthority] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SysDataAuthorityCustom]    Script Date: 2022/5/24 22:22:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SysDataAuthorityCustom](
	[Id] [uniqueidentifier] NOT NULL,
	[LastModificationTime] [datetime] NULL,
	[CreationTime] [datetime] NULL,
	[SysDataAuthorityId] [uniqueidentifier] NULL,
	[SysOrganizationId] [int] NOT NULL,
 CONSTRAINT [PK_SysDataAuthorityCustom] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SysDictionary]    Script Date: 2022/5/24 22:22:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SysDictionary](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[LastModificationTime] [datetime] NULL,
	[CreationTime] [datetime] NULL,
	[Sort] [int] NULL,
	[Code] [varchar](255) NULL,
	[Value] [varchar](255) NULL,
	[Name] [varchar](255) NULL,
	[ParentId] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SysFunction]    Script Date: 2022/5/24 22:22:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SysFunction](
	[Id] [uniqueidentifier] NOT NULL,
	[Number] [int] NULL,
	[Name] [nvarchar](255) NULL,
	[ByName] [nvarchar](255) NULL,
	[Remark] [nvarchar](255) NULL,
	[LastModificationTime] [datetime2](0) NULL,
	[CreationTime] [datetime2](0) NULL,
 CONSTRAINT [SysFunction_pkey] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SysMenu]    Script Date: 2022/5/24 22:22:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SysMenu](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[LastModificationTime] [datetime2](0) NULL,
	[CreationTime] [datetime2](0) NULL,
	[LevelCode] [varchar](50) NULL,
	[Number] [int] NULL,
	[Name] [nvarchar](255) NULL,
	[Url] [nvarchar](255) NULL,
	[Router] [nvarchar](255) NULL,
	[ComponentName] [nvarchar](255) NULL,
	[Icon] [nvarchar](255) NULL,
	[ParentId] [int] NULL,
	[Show] [bit] NULL,
	[Close] [bit] NULL,
	[KeepAlive] [bit] NULL,
	[State] [bit] NULL,
	[JumpUrl] [varchar](255) NULL,
	[Type] [int] NULL,
 CONSTRAINT [SysMenu_pkey] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SysMenuFunction]    Script Date: 2022/5/24 22:22:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SysMenuFunction](
	[Id] [uniqueidentifier] NOT NULL,
	[LastModificationTime] [datetime2](0) NULL,
	[CreationTime] [datetime2](0) NULL,
	[Number] [int] NULL,
	[MenuId] [int] NULL,
	[FunctionCode] [varchar](100) NULL,
	[FunctionName] [varchar](100) NULL,
	[Remark] [varchar](100) NULL,
 CONSTRAINT [SysMenuFunction_pkey] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SysOperationLog]    Script Date: 2022/5/24 22:22:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SysOperationLog](
	[Id] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[LastModificationTime] [datetime2](0) NULL,
	[CreationTime] [datetime2](0) NULL,
	[Api] [varchar](500) NULL,
	[Ip] [varchar](255) NULL,
	[Form] [varchar](max) NULL,
	[FormBody] [varchar](max) NULL,
	[QueryString] [varchar](max) NULL,
	[Browser] [varchar](255) NULL,
	[OS] [varchar](255) NULL,
	[UserId] [uniqueidentifier] NULL,
	[TakeUpTime] [bigint] NOT NULL,
	[ControllerDisplayName] [varchar](255) NULL,
	[ActionDisplayName] [varchar](255) NULL,
 CONSTRAINT [PK__SysOpera__3214EC0743ACCFCD] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SysOrganization]    Script Date: 2022/5/24 22:22:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SysOrganization](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NULL,
	[OrderNumber] [int] NULL,
	[LevelCode] [varchar](50) NULL,
	[Leader] [nvarchar](255) NULL,
	[Phone] [nvarchar](255) NULL,
	[Email] [nvarchar](255) NULL,
	[State] [int] NULL,
	[ParentId] [int] NULL,
	[LastModificationTime] [datetime2](0) NULL,
	[CreationTime] [datetime2](0) NULL,
 CONSTRAINT [SysOrganization_pkey] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SysPost]    Script Date: 2022/5/24 22:22:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SysPost](
	[Id] [uniqueidentifier] NOT NULL,
	[Number] [int] NULL,
	[Code] [nvarchar](255) NULL,
	[Name] [nvarchar](255) NULL,
	[State] [int] NULL,
	[Remarks] [nvarchar](255) NULL,
	[LastModificationTime] [datetime2](0) NULL,
	[CreationTime] [datetime2](0) NULL,
 CONSTRAINT [SysPost_pkey] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SysRole]    Script Date: 2022/5/24 22:22:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SysRole](
	[Id] [uniqueidentifier] NOT NULL,
	[LastModificationTime] [datetime2](0) NULL,
	[CreationTime] [datetime2](0) NULL,
	[Number] [int] NULL,
	[Name] [nvarchar](255) NULL,
	[Remark] [nvarchar](255) NULL,
	[DeleteLock] [bit] NULL,
 CONSTRAINT [SysRole_pkey] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SysRoleMenuFunction]    Script Date: 2022/5/24 22:22:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SysRoleMenuFunction](
	[Id] [uniqueidentifier] NOT NULL,
	[RoleId] [uniqueidentifier] NULL,
	[MenuId] [int] NULL,
	[MenuFunctionId] [uniqueidentifier] NULL,
	[LastModificationTime] [datetime2](0) NULL,
	[CreationTime] [datetime2](0) NULL,
 CONSTRAINT [SysRoleMenuFunction_pkey] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SysUser]    Script Date: 2022/5/24 22:22:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SysUser](
	[Id] [uniqueidentifier] NOT NULL,
	[LastModificationTime] [datetime2](0) NULL,
	[CreationTime] [datetime2](0) NULL,
	[Name] [nvarchar](255) NULL,
	[LoginName] [nvarchar](255) NULL,
	[Password] [nvarchar](255) NULL,
	[Phone] [nvarchar](255) NULL,
	[Email] [nvarchar](255) NOT NULL,
	[DeleteLock] [bit] NULL,
	[OrganizationId] [int] NULL,
 CONSTRAINT [SysUser_pkey] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SysUserPost]    Script Date: 2022/5/24 22:22:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SysUserPost](
	[Id] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NULL,
	[PostId] [uniqueidentifier] NULL,
	[LastModificationTime] [datetime2](0) NULL,
	[CreationTime] [datetime2](0) NULL,
 CONSTRAINT [SysUserPost_pkey] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SysUserRole]    Script Date: 2022/5/24 22:22:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SysUserRole](
	[Id] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NULL,
	[RoleId] [uniqueidentifier] NULL,
	[LastModificationTime] [datetime2](0) NULL,
	[CreationTime] [datetime2](0) NULL,
 CONSTRAINT [SysUserRole_pkey] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[LowCodeTable] ([Id], [LastModificationTime], [CreationTime], [TableName], [Schema], [Type], [DisplayName], [EntityName], [Remark]) VALUES (N'69b24f04-0ed3-45fc-91d9-0dc929175a57', CAST(N'2022-05-24T21:57:34.433' AS DateTime), CAST(N'2022-04-17T00:00:00.000' AS DateTime), N'SysUserPost', N'dbo', 0, N'用户与岗位', N'SysUserPost', NULL)
INSERT [dbo].[LowCodeTable] ([Id], [LastModificationTime], [CreationTime], [TableName], [Schema], [Type], [DisplayName], [EntityName], [Remark]) VALUES (N'6ba9805c-916e-4d2c-99d0-216fcbc361cc', CAST(N'2022-05-24T21:57:34.433' AS DateTime), CAST(N'2022-05-23T00:00:00.000' AS DateTime), N'LowCodeTable', N'dbo', 0, N'低代码表', N'LowCodeTable', NULL)
INSERT [dbo].[LowCodeTable] ([Id], [LastModificationTime], [CreationTime], [TableName], [Schema], [Type], [DisplayName], [EntityName], [Remark]) VALUES (N'651bb982-1130-4e1c-9070-36b90dcf2324', CAST(N'2022-05-24T21:57:34.433' AS DateTime), CAST(N'2022-04-17T00:00:00.000' AS DateTime), N'FlowApprovalStep', N'dbo', 0, N'工作流审批步骤配置', N'FlowApprovalStep', NULL)
INSERT [dbo].[LowCodeTable] ([Id], [LastModificationTime], [CreationTime], [TableName], [Schema], [Type], [DisplayName], [EntityName], [Remark]) VALUES (N'524e71b4-cbf7-4248-8b29-3f99b43f2eb2', CAST(N'2022-05-24T21:57:34.433' AS DateTime), CAST(N'2022-04-17T00:00:00.000' AS DateTime), N'SysDataAuthorityCustom', N'dbo', 0, N'自定义数据权限', N'SysDataAuthorityCustom', NULL)
INSERT [dbo].[LowCodeTable] ([Id], [LastModificationTime], [CreationTime], [TableName], [Schema], [Type], [DisplayName], [EntityName], [Remark]) VALUES (N'7ad3b915-f0bd-443a-89cd-42d41dd6c554', CAST(N'2022-05-24T21:57:34.433' AS DateTime), CAST(N'2022-04-17T00:00:00.000' AS DateTime), N'FlowApprovalStepUser', N'dbo', 0, N'工作流用户审批步骤', N'FlowApprovalStepUser', NULL)
INSERT [dbo].[LowCodeTable] ([Id], [LastModificationTime], [CreationTime], [TableName], [Schema], [Type], [DisplayName], [EntityName], [Remark]) VALUES (N'c5883367-42aa-43b8-9577-4720a2253efa', CAST(N'2022-05-24T21:57:34.433' AS DateTime), CAST(N'2022-04-28T00:00:00.000' AS DateTime), N'News', N'dbo', 0, N'资讯', N'News', NULL)
INSERT [dbo].[LowCodeTable] ([Id], [LastModificationTime], [CreationTime], [TableName], [Schema], [Type], [DisplayName], [EntityName], [Remark]) VALUES (N'1a8df018-79f8-4e26-b4eb-4b735aae7275', CAST(N'2022-05-24T21:57:34.433' AS DateTime), CAST(N'2022-04-17T00:00:00.000' AS DateTime), N'Flow', N'dbo', 0, N'审批流', N'Flow', NULL)
INSERT [dbo].[LowCodeTable] ([Id], [LastModificationTime], [CreationTime], [TableName], [Schema], [Type], [DisplayName], [EntityName], [Remark]) VALUES (N'60cceba1-28bf-4d1d-b603-4edf95d512b8', CAST(N'2022-05-24T21:57:34.433' AS DateTime), CAST(N'2022-04-17T00:00:00.000' AS DateTime), N'SysOperationLog', N'dbo', 0, N'操作日志', N'SysOperationLog', NULL)
INSERT [dbo].[LowCodeTable] ([Id], [LastModificationTime], [CreationTime], [TableName], [Schema], [Type], [DisplayName], [EntityName], [Remark]) VALUES (N'2ae9e532-7d9a-474b-b629-50a39945c44d', CAST(N'2022-05-24T21:57:34.433' AS DateTime), CAST(N'2022-04-17T00:00:00.000' AS DateTime), N'SysMenuFunction', N'dbo', 0, N'菜单功能', N'SysMenuFunction', NULL)
INSERT [dbo].[LowCodeTable] ([Id], [LastModificationTime], [CreationTime], [TableName], [Schema], [Type], [DisplayName], [EntityName], [Remark]) VALUES (N'd8948c56-c5bd-4061-b272-5417375f38f0', CAST(N'2022-05-24T21:57:34.433' AS DateTime), CAST(N'2022-04-17T00:00:00.000' AS DateTime), N'FlowApproval', N'dbo', 0, N'审批流审批', N'FlowApproval', NULL)
INSERT [dbo].[LowCodeTable] ([Id], [LastModificationTime], [CreationTime], [TableName], [Schema], [Type], [DisplayName], [EntityName], [Remark]) VALUES (N'd26d07cb-158a-4cb2-8b20-5dfd5181af54', CAST(N'2022-05-24T21:57:34.433' AS DateTime), CAST(N'2022-04-17T00:00:00.000' AS DateTime), N'SysOrganization', N'dbo', 0, N'组织', N'SysOrganization', NULL)
INSERT [dbo].[LowCodeTable] ([Id], [LastModificationTime], [CreationTime], [TableName], [Schema], [Type], [DisplayName], [EntityName], [Remark]) VALUES (N'6323638b-a45f-4a76-886e-69a9e9be0901', CAST(N'2022-05-24T21:57:34.433' AS DateTime), CAST(N'2022-04-17T00:00:00.000' AS DateTime), N'SysUser', N'dbo', 0, N'用户', N'SysUser', NULL)
INSERT [dbo].[LowCodeTable] ([Id], [LastModificationTime], [CreationTime], [TableName], [Schema], [Type], [DisplayName], [EntityName], [Remark]) VALUES (N'79fbd4ec-9f4e-45dc-8065-70f2eb422cdf', CAST(N'2022-05-24T21:57:34.433' AS DateTime), CAST(N'2022-05-23T00:00:00.000' AS DateTime), N'LowCodeTableInfo', N'dbo', 0, N'低代码表信息', N'LowCodeTableInfo', NULL)
INSERT [dbo].[LowCodeTable] ([Id], [LastModificationTime], [CreationTime], [TableName], [Schema], [Type], [DisplayName], [EntityName], [Remark]) VALUES (N'af37f705-7ba0-4883-b1be-8a274ea4c026', CAST(N'2022-05-24T21:57:34.433' AS DateTime), CAST(N'2022-04-17T00:00:00.000' AS DateTime), N'SysDictionary', N'dbo', 0, N'数据字典', N'SysDictionary', NULL)
INSERT [dbo].[LowCodeTable] ([Id], [LastModificationTime], [CreationTime], [TableName], [Schema], [Type], [DisplayName], [EntityName], [Remark]) VALUES (N'73c97832-4e7f-4758-86d2-94327971b5fd', CAST(N'2022-05-24T21:57:34.433' AS DateTime), CAST(N'2022-04-17T00:00:00.000' AS DateTime), N'Member', N'dbo', 0, N'会员', N'Member', NULL)
INSERT [dbo].[LowCodeTable] ([Id], [LastModificationTime], [CreationTime], [TableName], [Schema], [Type], [DisplayName], [EntityName], [Remark]) VALUES (N'd2600250-6f32-4d7d-8395-96cc9fa36db4', CAST(N'2022-05-24T21:57:34.433' AS DateTime), CAST(N'2022-04-17T00:00:00.000' AS DateTime), N'SysMenu', N'dbo', 0, N'菜单', N'SysMenu', NULL)
INSERT [dbo].[LowCodeTable] ([Id], [LastModificationTime], [CreationTime], [TableName], [Schema], [Type], [DisplayName], [EntityName], [Remark]) VALUES (N'f3d7bbb3-c1fb-4d61-92a4-9bc101811335', CAST(N'2022-05-24T21:57:34.433' AS DateTime), CAST(N'2022-04-17T00:00:00.000' AS DateTime), N'SysRole', N'dbo', 0, N'角色', N'SysRole', NULL)
INSERT [dbo].[LowCodeTable] ([Id], [LastModificationTime], [CreationTime], [TableName], [Schema], [Type], [DisplayName], [EntityName], [Remark]) VALUES (N'852f53ff-0d00-4c32-aa55-a9c11993751b', CAST(N'2022-05-24T21:57:34.433' AS DateTime), CAST(N'2022-05-23T00:00:00.000' AS DateTime), N'LowCodeList', N'dbo', 0, N'低代码列表', N'LowCodeList', NULL)
INSERT [dbo].[LowCodeTable] ([Id], [LastModificationTime], [CreationTime], [TableName], [Schema], [Type], [DisplayName], [EntityName], [Remark]) VALUES (N'ae6d94d8-6a15-4348-b600-aa17e4b61718', CAST(N'2022-05-24T21:57:34.433' AS DateTime), CAST(N'2022-04-17T00:00:00.000' AS DateTime), N'FlowNode', N'dbo', 0, N'工作流节点', N'FlowNode', NULL)
INSERT [dbo].[LowCodeTable] ([Id], [LastModificationTime], [CreationTime], [TableName], [Schema], [Type], [DisplayName], [EntityName], [Remark]) VALUES (N'69edd8a8-1d24-478c-a909-b82039edcec0', CAST(N'2022-05-24T21:57:34.433' AS DateTime), CAST(N'2022-05-23T00:00:00.000' AS DateTime), N'LowCodeSearch', N'dbo', 0, N'低代码检索表', N'LowCodeSearch', NULL)
INSERT [dbo].[LowCodeTable] ([Id], [LastModificationTime], [CreationTime], [TableName], [Schema], [Type], [DisplayName], [EntityName], [Remark]) VALUES (N'6fabc67a-8b48-49a6-8ba1-c8a32c499d36', CAST(N'2022-05-24T21:57:34.433' AS DateTime), CAST(N'2022-04-17T00:00:00.000' AS DateTime), N'SysFunction', N'dbo', 0, N'功能', N'SysFunction', NULL)
INSERT [dbo].[LowCodeTable] ([Id], [LastModificationTime], [CreationTime], [TableName], [Schema], [Type], [DisplayName], [EntityName], [Remark]) VALUES (N'0a8bdb18-758a-4798-9ffc-e7031dcbf262', CAST(N'2022-05-24T21:57:34.433' AS DateTime), CAST(N'2022-04-17T00:00:00.000' AS DateTime), N'SysPost', N'dbo', 0, N'岗位', N'SysPost', NULL)
INSERT [dbo].[LowCodeTable] ([Id], [LastModificationTime], [CreationTime], [TableName], [Schema], [Type], [DisplayName], [EntityName], [Remark]) VALUES (N'8da38d20-8a09-4e81-8dd8-ed6702aee380', CAST(N'2022-05-24T21:57:34.433' AS DateTime), CAST(N'2022-04-17T00:00:00.000' AS DateTime), N'SysRoleMenuFunction', N'dbo', 0, N'角色菜单功能关联', N'SysRoleMenuFunction', NULL)
INSERT [dbo].[LowCodeTable] ([Id], [LastModificationTime], [CreationTime], [TableName], [Schema], [Type], [DisplayName], [EntityName], [Remark]) VALUES (N'e79db53b-7162-4669-9b5e-f860501475ac', CAST(N'2022-05-24T21:57:34.433' AS DateTime), CAST(N'2022-04-17T00:00:00.000' AS DateTime), N'SysDataAuthority', N'dbo', 0, N'数据权限', N'SysDataAuthority', NULL)
INSERT [dbo].[LowCodeTable] ([Id], [LastModificationTime], [CreationTime], [TableName], [Schema], [Type], [DisplayName], [EntityName], [Remark]) VALUES (N'3da5d264-2e8d-460c-a10c-ff9a6bb57a60', CAST(N'2022-05-24T21:57:34.433' AS DateTime), CAST(N'2022-04-17T00:00:00.000' AS DateTime), N'SysUserRole', N'dbo', 0, N'用户与角色', N'SysUserRole', NULL)
GO
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'60019cd9-49eb-489b-97b5-08da39a2ef6c', CAST(N'2022-05-19T22:26:18.973' AS DateTime), CAST(N'2022-05-19T00:00:00.000' AS DateTime), N'3da5d264-2e8d-460c-a10c-ff9a6bb57a60', 1, 0, 0, 170, N'Id', N'Id', N'uniqueidentifier', N'Guid', N'Id', NULL)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'825e69b9-cd33-4ab8-97b6-08da39a2ef6c', CAST(N'2022-05-19T22:26:18.973' AS DateTime), CAST(N'2022-05-19T00:00:00.000' AS DateTime), N'3da5d264-2e8d-460c-a10c-ff9a6bb57a60', 0, 0, 1, 174, N'CreationTime', N'', N'datetime2', N'DateTime', N'CreationTime', NULL)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'252ac7b2-0e62-48e1-97b7-08da39a2ef6c', CAST(N'2022-05-19T22:26:18.973' AS DateTime), CAST(N'2022-05-19T00:00:00.000' AS DateTime), N'3da5d264-2e8d-460c-a10c-ff9a6bb57a60', 0, 0, 1, 173, N'LastModificationTime', N'', N'datetime2', N'DateTime', N'LastModificationTime', NULL)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'2029bb6d-a0f2-41de-97b8-08da39a2ef6c', CAST(N'2022-05-19T22:26:18.973' AS DateTime), CAST(N'2022-05-19T00:00:00.000' AS DateTime), N'3da5d264-2e8d-460c-a10c-ff9a6bb57a60', 0, 0, 1, 172, N'RoleId', N'', N'uniqueidentifier', N'Guid', N'RoleId', NULL)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'18b4430b-765d-4a71-97b9-08da39a2ef6c', CAST(N'2022-05-19T22:26:18.973' AS DateTime), CAST(N'2022-05-19T00:00:00.000' AS DateTime), N'3da5d264-2e8d-460c-a10c-ff9a6bb57a60', 0, 0, 1, 171, N'UserId', N'', N'uniqueidentifier', N'Guid', N'UserId', NULL)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'a72c0341-82e8-48ad-d481-08da3d8d5a26', CAST(N'2022-05-24T21:57:33.877' AS DateTime), CAST(N'2022-05-24T21:57:33.877' AS DateTime), N'1a8df018-79f8-4e26-b4eb-4b735aae7275', 1, 0, 0, 24, N'Id', N'', N'uniqueidentifier', N'Guid', N'Id', 16)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'70e30a70-99f9-44b3-d482-08da3d8d5a26', CAST(N'2022-05-24T21:57:33.877' AS DateTime), CAST(N'2022-05-24T21:57:33.877' AS DateTime), N'1a8df018-79f8-4e26-b4eb-4b735aae7275', 0, 0, 1, 28, N'Code', N'编码', N'nvarchar(255)', N'String', N'Code', 255)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'5fc01eb0-4833-4e93-d483-08da3d8d5a26', CAST(N'2022-05-24T21:57:33.877' AS DateTime), CAST(N'2022-05-24T21:57:33.877' AS DateTime), N'1a8df018-79f8-4e26-b4eb-4b735aae7275', 0, 0, 1, 26, N'CreationTime', N'', N'datetime', N'DateTime', N'CreationTime', 8)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'fd9abf54-3c88-44b0-d484-08da3d8d5a26', CAST(N'2022-05-24T21:57:33.877' AS DateTime), CAST(N'2022-05-24T21:57:33.877' AS DateTime), N'1a8df018-79f8-4e26-b4eb-4b735aae7275', 0, 0, 1, 25, N'LastModificationTime', N'', N'datetime', N'DateTime', N'LastModificationTime', 8)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'06f4f5a9-f63f-4e47-d485-08da3d8d5a26', CAST(N'2022-05-24T21:57:33.877' AS DateTime), CAST(N'2022-05-24T21:57:33.877' AS DateTime), N'1a8df018-79f8-4e26-b4eb-4b735aae7275', 0, 0, 1, 29, N'Name', N'流程名称', N'nvarchar(255)', N'String', N'Name', 255)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'5cb41f1c-e68a-47f9-d486-08da3d8d5a26', CAST(N'2022-05-24T21:57:33.877' AS DateTime), CAST(N'2022-05-24T21:57:33.877' AS DateTime), N'1a8df018-79f8-4e26-b4eb-4b735aae7275', 0, 0, 1, 27, N'Number', N'排序号', N'int', N'Int32', N'Number', 4)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'f21d4c33-e65a-4dfe-d487-08da3d8d5a26', CAST(N'2022-05-24T21:57:33.877' AS DateTime), CAST(N'2022-05-24T21:57:33.877' AS DateTime), N'1a8df018-79f8-4e26-b4eb-4b735aae7275', 0, 0, 1, 30, N'Remark', N'备注', N'nvarchar(255)', N'String', N'Remark', 255)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'b9bbab1d-0a03-4d07-d488-08da3d8d5a26', CAST(N'2022-05-24T21:57:33.903' AS DateTime), CAST(N'2022-05-24T21:57:33.903' AS DateTime), N'd8948c56-c5bd-4061-b272-5417375f38f0', 1, 0, 0, 31, N'Id', N'', N'uniqueidentifier', N'Guid', N'Id', 16)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'01ca178c-112a-4a49-d489-08da3d8d5a26', CAST(N'2022-05-24T21:57:33.903' AS DateTime), CAST(N'2022-05-24T21:57:33.903' AS DateTime), N'd8948c56-c5bd-4061-b272-5417375f38f0', 0, 0, 1, 33, N'CreationTime', N'', N'datetime', N'DateTime', N'CreationTime', 8)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'a0fdeb45-c9fe-439b-d48a-08da3d8d5a26', CAST(N'2022-05-24T21:57:33.903' AS DateTime), CAST(N'2022-05-24T21:57:33.903' AS DateTime), N'd8948c56-c5bd-4061-b272-5417375f38f0', 0, 0, 1, 39, N'FlowCode', N'流程编码', N'varchar(255)', N'String', N'FlowCode', 255)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'2b4747ed-0409-4d14-d48b-08da3d8d5a26', CAST(N'2022-05-24T21:57:33.903' AS DateTime), CAST(N'2022-05-24T21:57:33.903' AS DateTime), N'd8948c56-c5bd-4061-b272-5417375f38f0', 0, 0, 1, 38, N'FlowId', N'流程Id', N'uniqueidentifier', N'Guid', N'FlowId', 16)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'f00cde73-2294-40d6-d48c-08da3d8d5a26', CAST(N'2022-05-24T21:57:33.903' AS DateTime), CAST(N'2022-05-24T21:57:33.903' AS DateTime), N'd8948c56-c5bd-4061-b272-5417375f38f0', 0, 0, 1, 40, N'FlowName', N'流程名称', N'varchar(255)', N'String', N'FlowName', 255)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'caae5d6f-f9c7-4edb-d48d-08da3d8d5a26', CAST(N'2022-05-24T21:57:33.903' AS DateTime), CAST(N'2022-05-24T21:57:33.903' AS DateTime), N'd8948c56-c5bd-4061-b272-5417375f38f0', 0, 0, 1, 37, N'FormId', N'表单Id', N'varchar(50)', N'String', N'FormId', 50)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'609a52aa-48b2-4e64-d48e-08da3d8d5a26', CAST(N'2022-05-24T21:57:33.903' AS DateTime), CAST(N'2022-05-24T21:57:33.903' AS DateTime), N'd8948c56-c5bd-4061-b272-5417375f38f0', 0, 0, 1, 32, N'LastModificationTime', N'', N'datetime', N'DateTime', N'LastModificationTime', 8)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'3071360b-c1ef-4dff-d48f-08da3d8d5a26', CAST(N'2022-05-24T21:57:33.903' AS DateTime), CAST(N'2022-05-24T21:57:33.903' AS DateTime), N'd8948c56-c5bd-4061-b272-5417375f38f0', 0, 0, 1, 36, N'LaunchTime', N'发起时间', N'datetime', N'DateTime', N'LaunchTime', 8)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'acf079d0-3db9-43f7-d490-08da3d8d5a26', CAST(N'2022-05-24T21:57:33.903' AS DateTime), CAST(N'2022-05-24T21:57:33.903' AS DateTime), N'd8948c56-c5bd-4061-b272-5417375f38f0', 0, 0, 1, 34, N'UserId', N'发起人Id', N'uniqueidentifier', N'Guid', N'UserId', 16)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'6284c929-4115-4c17-d491-08da3d8d5a26', CAST(N'2022-05-24T21:57:33.903' AS DateTime), CAST(N'2022-05-24T21:57:33.903' AS DateTime), N'd8948c56-c5bd-4061-b272-5417375f38f0', 0, 0, 1, 35, N'UserName', N'发起人', N'varchar(255)', N'String', N'UserName', 255)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'f5c93cc7-50a6-4e0e-d492-08da3d8d5a26', CAST(N'2022-05-24T21:57:33.927' AS DateTime), CAST(N'2022-05-24T21:57:33.927' AS DateTime), N'651bb982-1130-4e1c-9070-36b90dcf2324', 1, 0, 0, 41, N'Id', N'', N'uniqueidentifier', N'Guid', N'Id', 16)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'f6d23541-2fca-40e6-d493-08da3d8d5a26', CAST(N'2022-05-24T21:57:33.927' AS DateTime), CAST(N'2022-05-24T21:57:33.927' AS DateTime), N'651bb982-1130-4e1c-9070-36b90dcf2324', 0, 0, 1, 52, N'ApprovalDate', N'审批时间', N'datetime', N'DateTime', N'ApprovalDate', 8)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'8ad408db-b5aa-4cb7-d494-08da3d8d5a26', CAST(N'2022-05-24T21:57:33.927' AS DateTime), CAST(N'2022-05-24T21:57:33.927' AS DateTime), N'651bb982-1130-4e1c-9070-36b90dcf2324', 0, 0, 1, 43, N'CreationTime', N'', N'datetime', N'DateTime', N'CreationTime', 8)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'2ffaa9ee-c286-4f90-d495-08da3d8d5a26', CAST(N'2022-05-24T21:57:33.927' AS DateTime), CAST(N'2022-05-24T21:57:33.927' AS DateTime), N'651bb982-1130-4e1c-9070-36b90dcf2324', 0, 0, 1, 45, N'FlowNodeId', N'审批流节点Id', N'uniqueidentifier', N'Guid', N'FlowNodeId', 16)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'aaa312a2-73fb-4c84-d496-08da3d8d5a26', CAST(N'2022-05-24T21:57:33.927' AS DateTime), CAST(N'2022-05-24T21:57:33.927' AS DateTime), N'651bb982-1130-4e1c-9070-36b90dcf2324', 0, 0, 1, 46, N'FlowNodeName', N'审批流节点名称', N'varchar(255)', N'String', N'FlowNodeName', 255)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'043612f1-e16a-4c44-d497-08da3d8d5a26', CAST(N'2022-05-24T21:57:33.927' AS DateTime), CAST(N'2022-05-24T21:57:33.927' AS DateTime), N'651bb982-1130-4e1c-9070-36b90dcf2324', 0, 0, 1, 42, N'LastModificationTime', N'', N'datetime', N'DateTime', N'LastModificationTime', 8)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'a8be7873-7ce4-4cb2-d498-08da3d8d5a26', CAST(N'2022-05-24T21:57:33.927' AS DateTime), CAST(N'2022-05-24T21:57:33.927' AS DateTime), N'651bb982-1130-4e1c-9070-36b90dcf2324', 0, 0, 1, 49, N'OpinIons', N'步骤审批意见', N'varchar(255)', N'String', N'OpinIons', 255)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'e8e60481-fb7f-4f1d-d499-08da3d8d5a26', CAST(N'2022-05-24T21:57:33.927' AS DateTime), CAST(N'2022-05-24T21:57:33.927' AS DateTime), N'651bb982-1130-4e1c-9070-36b90dcf2324', 0, 0, 1, 44, N'Sort', N'步骤顺序号', N'int', N'Int32', N'Sort', 4)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'2a1c3f3d-4efc-472b-d49a-08da3d8d5a26', CAST(N'2022-05-24T21:57:33.927' AS DateTime), CAST(N'2022-05-24T21:57:33.927' AS DateTime), N'651bb982-1130-4e1c-9070-36b90dcf2324', 0, 0, 1, 47, N'SortMore', N'多次审批顺序号（可能是多次审批次数）', N'int', N'Int32', N'SortMore', 4)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'cbd75568-2ece-4f90-d49b-08da3d8d5a26', CAST(N'2022-05-24T21:57:33.927' AS DateTime), CAST(N'2022-05-24T21:57:33.927' AS DateTime), N'651bb982-1130-4e1c-9070-36b90dcf2324', 0, 0, 1, 48, N'State', N'步骤状态（待审批、同意、不同意、回退升级审批）', N'int', N'Int32', N'State', 4)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'e67fd0c6-a997-4956-d49c-08da3d8d5a26', CAST(N'2022-05-24T21:57:33.927' AS DateTime), CAST(N'2022-05-24T21:57:33.927' AS DateTime), N'651bb982-1130-4e1c-9070-36b90dcf2324', 0, 0, 1, 50, N'UserId', N'步骤审批人Id', N'uniqueidentifier', N'Guid', N'UserId', 16)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'24db7ed8-1a4f-4b25-d49d-08da3d8d5a26', CAST(N'2022-05-24T21:57:33.927' AS DateTime), CAST(N'2022-05-24T21:57:33.927' AS DateTime), N'651bb982-1130-4e1c-9070-36b90dcf2324', 0, 0, 1, 51, N'UserName', N'步骤审批人名称', N'varchar(255)', N'String', N'UserName', 255)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'e346cf76-ec76-4409-d49e-08da3d8d5a26', CAST(N'2022-05-24T21:57:33.953' AS DateTime), CAST(N'2022-05-24T21:57:33.953' AS DateTime), N'7ad3b915-f0bd-443a-89cd-42d41dd6c554', 1, 0, 0, 53, N'Id', N'', N'uniqueidentifier', N'Guid', N'Id', 16)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'ae55fabc-3944-4a36-d49f-08da3d8d5a26', CAST(N'2022-05-24T21:57:33.953' AS DateTime), CAST(N'2022-05-24T21:57:33.953' AS DateTime), N'7ad3b915-f0bd-443a-89cd-42d41dd6c554', 0, 0, 1, 55, N'CreationTime', N'', N'datetime', N'DateTime', N'CreationTime', 8)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'b754af63-f1de-4000-d4a0-08da3d8d5a26', CAST(N'2022-05-24T21:57:33.953' AS DateTime), CAST(N'2022-05-24T21:57:33.953' AS DateTime), N'7ad3b915-f0bd-443a-89cd-42d41dd6c554', 0, 0, 1, 56, N'FlowApprovalStepId', N'步骤Id', N'uniqueidentifier', N'Guid', N'FlowApprovalStepId', 16)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'495fe86e-5bd6-44d4-d4a1-08da3d8d5a26', CAST(N'2022-05-24T21:57:33.953' AS DateTime), CAST(N'2022-05-24T21:57:33.953' AS DateTime), N'7ad3b915-f0bd-443a-89cd-42d41dd6c554', 0, 0, 1, 57, N'FlowNodeId', N'审批节点Id', N'uniqueidentifier', N'Guid', N'FlowNodeId', 16)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'd48c70e6-4549-41b6-d4a2-08da3d8d5a26', CAST(N'2022-05-24T21:57:33.953' AS DateTime), CAST(N'2022-05-24T21:57:33.953' AS DateTime), N'7ad3b915-f0bd-443a-89cd-42d41dd6c554', 0, 0, 1, 58, N'FlowNodeName', N'审批节点名称', N'varchar(500)', N'String', N'FlowNodeName', 500)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'0e864b91-b667-4f53-d4a3-08da3d8d5a26', CAST(N'2022-05-24T21:57:33.953' AS DateTime), CAST(N'2022-05-24T21:57:33.953' AS DateTime), N'7ad3b915-f0bd-443a-89cd-42d41dd6c554', 0, 0, 1, 54, N'LastModificationTime', N'', N'datetime', N'DateTime', N'LastModificationTime', 8)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'92bc9094-160e-4338-d4a4-08da3d8d5a26', CAST(N'2022-05-24T21:57:33.953' AS DateTime), CAST(N'2022-05-24T21:57:33.953' AS DateTime), N'7ad3b915-f0bd-443a-89cd-42d41dd6c554', 0, 0, 1, 59, N'UserId', N'审批人Id', N'uniqueidentifier', N'Guid', N'UserId', 16)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'0cfc881c-98d4-4a2c-d4a5-08da3d8d5a26', CAST(N'2022-05-24T21:57:33.953' AS DateTime), CAST(N'2022-05-24T21:57:33.953' AS DateTime), N'7ad3b915-f0bd-443a-89cd-42d41dd6c554', 0, 0, 1, 60, N'UserName', N'审批人名称', N'varchar(500)', N'String', N'UserName', 500)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'2819dfe7-f12b-483c-d4a6-08da3d8d5a26', CAST(N'2022-05-24T21:57:33.973' AS DateTime), CAST(N'2022-05-24T21:57:33.973' AS DateTime), N'ae6d94d8-6a15-4348-b600-aa17e4b61718', 1, 0, 0, 61, N'Id', N'', N'uniqueidentifier', N'Guid', N'Id', 16)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'0e19400d-1876-4fe3-d4a7-08da3d8d5a26', CAST(N'2022-05-24T21:57:33.973' AS DateTime), CAST(N'2022-05-24T21:57:33.973' AS DateTime), N'ae6d94d8-6a15-4348-b600-aa17e4b61718', 0, 0, 1, 63, N'CreationTime', N'', N'datetime', N'DateTime', N'CreationTime', 8)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'5ca84ecf-5971-45bc-d4a8-08da3d8d5a26', CAST(N'2022-05-24T21:57:33.973' AS DateTime), CAST(N'2022-05-24T21:57:33.973' AS DateTime), N'ae6d94d8-6a15-4348-b600-aa17e4b61718', 0, 0, 1, 65, N'FlowCode', N'', N'nvarchar(255)', N'String', N'FlowCode', 255)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'9bc385e0-10ee-4299-d4a9-08da3d8d5a26', CAST(N'2022-05-24T21:57:33.973' AS DateTime), CAST(N'2022-05-24T21:57:33.973' AS DateTime), N'ae6d94d8-6a15-4348-b600-aa17e4b61718', 0, 0, 1, 64, N'FlowId', N'', N'uniqueidentifier', N'Guid', N'FlowId', 16)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'd45ac420-e348-4d6b-d4aa-08da3d8d5a26', CAST(N'2022-05-24T21:57:33.973' AS DateTime), CAST(N'2022-05-24T21:57:33.973' AS DateTime), N'ae6d94d8-6a15-4348-b600-aa17e4b61718', 0, 0, 1, 62, N'LastModificationTime', N'', N'datetime', N'DateTime', N'LastModificationTime', 8)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'0df6b078-b248-4c83-d4ab-08da3d8d5a26', CAST(N'2022-05-24T21:57:33.973' AS DateTime), CAST(N'2022-05-24T21:57:33.973' AS DateTime), N'ae6d94d8-6a15-4348-b600-aa17e4b61718', 0, 0, 1, 67, N'Name', N'', N'nvarchar(255)', N'String', N'Name', 255)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'2321aac8-0eed-4b87-d4ac-08da3d8d5a26', CAST(N'2022-05-24T21:57:33.973' AS DateTime), CAST(N'2022-05-24T21:57:33.973' AS DateTime), N'ae6d94d8-6a15-4348-b600-aa17e4b61718', 0, 0, 1, 69, N'Remark', N'', N'nvarchar(255)', N'String', N'Remark', 255)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'73d17476-e006-4530-d4ad-08da3d8d5a26', CAST(N'2022-05-24T21:57:33.973' AS DateTime), CAST(N'2022-05-24T21:57:33.973' AS DateTime), N'ae6d94d8-6a15-4348-b600-aa17e4b61718', 0, 0, 1, 68, N'RoleId', N'', N'uniqueidentifier', N'Guid', N'RoleId', 16)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'e571fd26-b1a8-4648-d4ae-08da3d8d5a26', CAST(N'2022-05-24T21:57:33.973' AS DateTime), CAST(N'2022-05-24T21:57:33.973' AS DateTime), N'ae6d94d8-6a15-4348-b600-aa17e4b61718', 0, 0, 1, 66, N'Sort', N'', N'int', N'Int32', N'Sort', 4)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'c2f1a286-2b35-41d6-d4af-08da3d8d5a26', CAST(N'2022-05-24T21:57:33.997' AS DateTime), CAST(N'2022-05-24T21:57:33.997' AS DateTime), N'852f53ff-0d00-4c32-aa55-a9c11993751b', 1, 0, 0, 189, N'Id', N'', N'uniqueidentifier', N'Guid', N'Id', 16)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'92c1fffc-5a00-468c-d4b0-08da3d8d5a26', CAST(N'2022-05-24T21:57:33.997' AS DateTime), CAST(N'2022-05-24T21:57:33.997' AS DateTime), N'852f53ff-0d00-4c32-aa55-a9c11993751b', 0, 0, 1, 191, N'CreationTime', N'', N'datetime', N'DateTime', N'CreationTime', 8)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'7b900baf-65df-4910-d4b1-08da3d8d5a26', CAST(N'2022-05-24T21:57:33.997' AS DateTime), CAST(N'2022-05-24T21:57:33.997' AS DateTime), N'852f53ff-0d00-4c32-aa55-a9c11993751b', 0, 0, 1, 195, N'ForeignKeyTableFieldName', N'', N'varchar(50)', N'String', N'ForeignKeyTableFieldName', 50)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'e7facee2-5132-4003-d4b2-08da3d8d5a26', CAST(N'2022-05-24T21:57:33.997' AS DateTime), CAST(N'2022-05-24T21:57:33.997' AS DateTime), N'852f53ff-0d00-4c32-aa55-a9c11993751b', 0, 0, 1, 194, N'ForeignKeyTableId', N'', N'uniqueidentifier', N'Guid', N'ForeignKeyTableId', 16)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'2ae91c1d-d618-4267-d4b3-08da3d8d5a26', CAST(N'2022-05-24T21:57:33.997' AS DateTime), CAST(N'2022-05-24T21:57:33.997' AS DateTime), N'852f53ff-0d00-4c32-aa55-a9c11993751b', 0, 0, 1, 190, N'LastModificationTime', N'', N'datetime', N'DateTime', N'LastModificationTime', 8)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'a2660342-556e-4aef-d4b4-08da3d8d5a26', CAST(N'2022-05-24T21:57:33.997' AS DateTime), CAST(N'2022-05-24T21:57:33.997' AS DateTime), N'852f53ff-0d00-4c32-aa55-a9c11993751b', 0, 0, 1, 193, N'Low_Code_Table_InfoId', N'', N'uniqueidentifier', N'Guid', N'Low_Code_Table_InfoId', 16)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'585e18ea-ab50-4216-d4b5-08da3d8d5a26', CAST(N'2022-05-24T21:57:33.997' AS DateTime), CAST(N'2022-05-24T21:57:33.997' AS DateTime), N'852f53ff-0d00-4c32-aa55-a9c11993751b', 0, 0, 1, 192, N'Low_Code_TableId', N'', N'uniqueidentifier', N'Guid', N'Low_Code_TableId', 16)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'7c7400ed-ec08-4832-d4b6-08da3d8d5a26', CAST(N'2022-05-24T21:57:34.027' AS DateTime), CAST(N'2022-05-24T21:57:34.027' AS DateTime), N'69edd8a8-1d24-478c-a909-b82039edcec0', 1, 0, 0, 184, N'Id', N'', N'uniqueidentifier', N'Guid', N'Id', 16)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'a29e0236-9c06-4a70-d4b7-08da3d8d5a26', CAST(N'2022-05-24T21:57:34.027' AS DateTime), CAST(N'2022-05-24T21:57:34.027' AS DateTime), N'69edd8a8-1d24-478c-a909-b82039edcec0', 0, 0, 1, 186, N'CreationTime', N'', N'datetime', N'DateTime', N'CreationTime', 8)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'8237d289-05cf-485b-d4b8-08da3d8d5a26', CAST(N'2022-05-24T21:57:34.027' AS DateTime), CAST(N'2022-05-24T21:57:34.027' AS DateTime), N'69edd8a8-1d24-478c-a909-b82039edcec0', 0, 0, 1, 185, N'LastModificationTime', N'', N'datetime', N'DateTime', N'LastModificationTime', 8)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'1a2a9e15-dc83-49e1-d4b9-08da3d8d5a26', CAST(N'2022-05-24T21:57:34.027' AS DateTime), CAST(N'2022-05-24T21:57:34.027' AS DateTime), N'69edd8a8-1d24-478c-a909-b82039edcec0', 0, 0, 1, 188, N'Low_Code_Table_InfoId', N'', N'uniqueidentifier', N'Guid', N'Low_Code_Table_InfoId', 16)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'7b4df31f-36a3-477c-d4ba-08da3d8d5a26', CAST(N'2022-05-24T21:57:34.027' AS DateTime), CAST(N'2022-05-24T21:57:34.027' AS DateTime), N'69edd8a8-1d24-478c-a909-b82039edcec0', 0, 0, 1, 187, N'Low_Code_TableId', N'', N'uniqueidentifier', N'Guid', N'Low_Code_TableId', 16)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'b97d19d1-948a-489f-d4bb-08da3d8d5a26', CAST(N'2022-05-24T21:57:34.047' AS DateTime), CAST(N'2022-05-24T21:57:34.047' AS DateTime), N'6ba9805c-916e-4d2c-99d0-216fcbc361cc', 1, 0, 0, 15, N'Id', N'', N'uniqueidentifier', N'Guid', N'Id', 16)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'8430c5a1-6c73-4733-d4bc-08da3d8d5a26', CAST(N'2022-05-24T21:57:34.047' AS DateTime), CAST(N'2022-05-24T21:57:34.047' AS DateTime), N'6ba9805c-916e-4d2c-99d0-216fcbc361cc', 0, 0, 1, 17, N'CreationTime', N'', N'datetime', N'DateTime', N'CreationTime', 8)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'd7ef7a4e-f4b9-4ac4-d4bd-08da3d8d5a26', CAST(N'2022-05-24T21:57:34.047' AS DateTime), CAST(N'2022-05-24T21:57:34.047' AS DateTime), N'6ba9805c-916e-4d2c-99d0-216fcbc361cc', 0, 0, 1, 21, N'DisplayName', N'', N'varchar(200)', N'String', N'DisplayName', 200)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'5e4c83fd-7071-4997-d4be-08da3d8d5a26', CAST(N'2022-05-24T21:57:34.047' AS DateTime), CAST(N'2022-05-24T21:57:34.047' AS DateTime), N'6ba9805c-916e-4d2c-99d0-216fcbc361cc', 0, 0, 1, 22, N'EntityName', N'', N'varchar(50)', N'String', N'EntityName', 50)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'0f0c03e3-604f-489f-d4bf-08da3d8d5a26', CAST(N'2022-05-24T21:57:34.047' AS DateTime), CAST(N'2022-05-24T21:57:34.047' AS DateTime), N'6ba9805c-916e-4d2c-99d0-216fcbc361cc', 0, 0, 1, 16, N'LastModificationTime', N'', N'datetime', N'DateTime', N'LastModificationTime', 8)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'fa8b1456-88f3-4d4e-d4c0-08da3d8d5a26', CAST(N'2022-05-24T21:57:34.047' AS DateTime), CAST(N'2022-05-24T21:57:34.047' AS DateTime), N'6ba9805c-916e-4d2c-99d0-216fcbc361cc', 0, 0, 1, 23, N'Remark', N'', N'varchar(500)', N'String', N'Remark', 500)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'441e03ec-ecb7-4172-d4c1-08da3d8d5a26', CAST(N'2022-05-24T21:57:34.047' AS DateTime), CAST(N'2022-05-24T21:57:34.047' AS DateTime), N'6ba9805c-916e-4d2c-99d0-216fcbc361cc', 0, 0, 1, 19, N'Schema', N'', N'varchar(50)', N'String', N'Schema', 50)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'02ffafb8-cf9b-441c-d4c2-08da3d8d5a26', CAST(N'2022-05-24T21:57:34.047' AS DateTime), CAST(N'2022-05-24T21:57:34.047' AS DateTime), N'6ba9805c-916e-4d2c-99d0-216fcbc361cc', 0, 0, 1, 18, N'TableName', N'', N'varchar(50)', N'String', N'TableName', 50)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'3ab15f84-8722-4837-d4c3-08da3d8d5a26', CAST(N'2022-05-24T21:57:34.047' AS DateTime), CAST(N'2022-05-24T21:57:34.047' AS DateTime), N'6ba9805c-916e-4d2c-99d0-216fcbc361cc', 0, 0, 1, 20, N'Type', N'', N'int', N'Int32', N'Type', 4)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'9b1b319a-e9dc-406d-d4c4-08da3d8d5a26', CAST(N'2022-05-24T21:57:34.070' AS DateTime), CAST(N'2022-05-24T21:57:34.070' AS DateTime), N'79fbd4ec-9f4e-45dc-8065-70f2eb422cdf', 1, 0, 0, 196, N'Id', N'', N'uniqueidentifier', N'Guid', N'Id', 16)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'11afcf11-9b42-47ce-d4c5-08da3d8d5a26', CAST(N'2022-05-24T21:57:34.070' AS DateTime), CAST(N'2022-05-24T21:57:34.070' AS DateTime), N'79fbd4ec-9f4e-45dc-8065-70f2eb422cdf', 0, 0, 1, 204, N'ColumnName', N'', N'varchar(500)', N'String', N'ColumnName', 500)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'1e40d97a-49ee-4727-d4c6-08da3d8d5a26', CAST(N'2022-05-24T21:57:34.070' AS DateTime), CAST(N'2022-05-24T21:57:34.070' AS DateTime), N'79fbd4ec-9f4e-45dc-8065-70f2eb422cdf', 0, 0, 1, 198, N'CreationTime', N'', N'datetime', N'DateTime', N'CreationTime', 8)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'e0e9d3c3-b713-419c-d4c7-08da3d8d5a26', CAST(N'2022-05-24T21:57:34.070' AS DateTime), CAST(N'2022-05-24T21:57:34.070' AS DateTime), N'79fbd4ec-9f4e-45dc-8065-70f2eb422cdf', 0, 0, 1, 208, N'CsField', N'', N'varchar(50)', N'String', N'CsField', 50)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'eb846ac3-723e-4207-d4c8-08da3d8d5a26', CAST(N'2022-05-24T21:57:34.070' AS DateTime), CAST(N'2022-05-24T21:57:34.070' AS DateTime), N'79fbd4ec-9f4e-45dc-8065-70f2eb422cdf', 0, 0, 1, 207, N'CsType', N'', N'varchar(50)', N'String', N'CsType', 50)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'48b12860-84de-4f7b-d4c9-08da3d8d5a26', CAST(N'2022-05-24T21:57:34.070' AS DateTime), CAST(N'2022-05-24T21:57:34.070' AS DateTime), N'79fbd4ec-9f4e-45dc-8065-70f2eb422cdf', 0, 0, 1, 206, N'DatabaseColumnType', N'', N'varchar(50)', N'String', N'DatabaseColumnType', 50)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'3b959124-21d2-45b9-d4ca-08da3d8d5a26', CAST(N'2022-05-24T21:57:34.070' AS DateTime), CAST(N'2022-05-24T21:57:34.070' AS DateTime), N'79fbd4ec-9f4e-45dc-8065-70f2eb422cdf', 0, 0, 1, 205, N'Describe', N'', N'varchar(50)', N'String', N'Describe', 50)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'86b95bf0-4418-46ba-d4cb-08da3d8d5a26', CAST(N'2022-05-24T21:57:34.070' AS DateTime), CAST(N'2022-05-24T21:57:34.070' AS DateTime), N'79fbd4ec-9f4e-45dc-8065-70f2eb422cdf', 0, 0, 1, 201, N'IsIdentity', N'', N'bit', N'Boolean', N'IsIdentity', 1)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'5fea8348-aa6b-4577-d4cc-08da3d8d5a26', CAST(N'2022-05-24T21:57:34.070' AS DateTime), CAST(N'2022-05-24T21:57:34.070' AS DateTime), N'79fbd4ec-9f4e-45dc-8065-70f2eb422cdf', 0, 0, 1, 202, N'IsNullable', N'', N'bit', N'Boolean', N'IsNullable', 1)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'1d3c8224-a3a5-4b88-d4cd-08da3d8d5a26', CAST(N'2022-05-24T21:57:34.070' AS DateTime), CAST(N'2022-05-24T21:57:34.070' AS DateTime), N'79fbd4ec-9f4e-45dc-8065-70f2eb422cdf', 0, 0, 1, 200, N'IsPrimary', N'', N'bit', N'Boolean', N'IsPrimary', 1)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'cf99d60b-2392-493c-d4ce-08da3d8d5a26', CAST(N'2022-05-24T21:57:34.070' AS DateTime), CAST(N'2022-05-24T21:57:34.070' AS DateTime), N'79fbd4ec-9f4e-45dc-8065-70f2eb422cdf', 0, 0, 1, 197, N'LastModificationTime', N'', N'datetime', N'DateTime', N'LastModificationTime', 8)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'f221da94-0a1d-4ce7-d4cf-08da3d8d5a26', CAST(N'2022-05-24T21:57:34.070' AS DateTime), CAST(N'2022-05-24T21:57:34.070' AS DateTime), N'79fbd4ec-9f4e-45dc-8065-70f2eb422cdf', 0, 0, 1, 199, N'Low_Code_TableId', N'', N'uniqueidentifier', N'Guid', N'Low_Code_TableId', 16)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'de43269d-d43b-4a77-d4d0-08da3d8d5a26', CAST(N'2022-05-24T21:57:34.070' AS DateTime), CAST(N'2022-05-24T21:57:34.070' AS DateTime), N'79fbd4ec-9f4e-45dc-8065-70f2eb422cdf', 0, 0, 1, 209, N'MaxLength', N'', N'int', N'Int32', N'MaxLength', 4)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'4aaa1e18-8c06-4806-d4d1-08da3d8d5a26', CAST(N'2022-05-24T21:57:34.070' AS DateTime), CAST(N'2022-05-24T21:57:34.070' AS DateTime), N'79fbd4ec-9f4e-45dc-8065-70f2eb422cdf', 0, 0, 1, 203, N'Position', N'', N'int', N'Int32', N'Position', 4)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'e75b8650-ee49-4f83-d4d2-08da3d8d5a26', CAST(N'2022-05-24T21:57:34.097' AS DateTime), CAST(N'2022-05-24T21:57:34.097' AS DateTime), N'73c97832-4e7f-4758-86d2-94327971b5fd', 1, 0, 0, 70, N'Id', N'', N'uniqueidentifier', N'Guid', N'Id', 16)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'b7fbb61f-94fc-4242-d4d3-08da3d8d5a26', CAST(N'2022-05-24T21:57:34.097' AS DateTime), CAST(N'2022-05-24T21:57:34.097' AS DateTime), N'73c97832-4e7f-4758-86d2-94327971b5fd', 0, 0, 1, 75, N'Birthday', N'', N'datetime2', N'DateTime', N'Birthday', 6)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'5541e535-7cbe-43d2-d4d4-08da3d8d5a26', CAST(N'2022-05-24T21:57:34.097' AS DateTime), CAST(N'2022-05-24T21:57:34.097' AS DateTime), N'73c97832-4e7f-4758-86d2-94327971b5fd', 0, 0, 1, 80, N'CreationTime', N'', N'datetime2', N'DateTime', N'CreationTime', 6)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'e4245f5f-bffa-43f0-d4d5-08da3d8d5a26', CAST(N'2022-05-24T21:57:34.097' AS DateTime), CAST(N'2022-05-24T21:57:34.097' AS DateTime), N'73c97832-4e7f-4758-86d2-94327971b5fd', 0, 0, 1, 78, N'FilePath', N'', N'nvarchar(255)', N'String', N'FilePath', 255)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'8326ca11-09f1-4c38-d4d6-08da3d8d5a26', CAST(N'2022-05-24T21:57:34.097' AS DateTime), CAST(N'2022-05-24T21:57:34.097' AS DateTime), N'73c97832-4e7f-4758-86d2-94327971b5fd', 0, 0, 1, 77, N'Introduce', N'', N'nvarchar(255)', N'String', N'Introduce', 255)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'897a208c-2e13-46f1-d4d7-08da3d8d5a26', CAST(N'2022-05-24T21:57:34.097' AS DateTime), CAST(N'2022-05-24T21:57:34.097' AS DateTime), N'73c97832-4e7f-4758-86d2-94327971b5fd', 0, 0, 1, 81, N'LastModificationTime', N'', N'datetime2', N'DateTime', N'LastModificationTime', 6)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'd1eb49cf-c053-4226-d4d8-08da3d8d5a26', CAST(N'2022-05-24T21:57:34.097' AS DateTime), CAST(N'2022-05-24T21:57:34.097' AS DateTime), N'73c97832-4e7f-4758-86d2-94327971b5fd', 0, 0, 1, 72, N'Name', N'', N'nvarchar(255)', N'String', N'Name', 255)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'bf24a276-6ed0-49d4-d4d9-08da3d8d5a26', CAST(N'2022-05-24T21:57:34.097' AS DateTime), CAST(N'2022-05-24T21:57:34.097' AS DateTime), N'73c97832-4e7f-4758-86d2-94327971b5fd', 0, 0, 1, 71, N'Number', N'', N'nvarchar(255)', N'String', N'Number', 255)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'669b87ce-c694-4c8c-d4da-08da3d8d5a26', CAST(N'2022-05-24T21:57:34.097' AS DateTime), CAST(N'2022-05-24T21:57:34.097' AS DateTime), N'73c97832-4e7f-4758-86d2-94327971b5fd', 0, 0, 1, 73, N'Phone', N'', N'nvarchar(255)', N'String', N'Phone', 255)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'f03ac01c-e0cf-4f13-d4db-08da3d8d5a26', CAST(N'2022-05-24T21:57:34.097' AS DateTime), CAST(N'2022-05-24T21:57:34.097' AS DateTime), N'73c97832-4e7f-4758-86d2-94327971b5fd', 0, 0, 1, 76, N'Photo', N'', N'nvarchar(255)', N'String', N'Photo', 255)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'72ac247c-d792-4fee-d4dc-08da3d8d5a26', CAST(N'2022-05-24T21:57:34.097' AS DateTime), CAST(N'2022-05-24T21:57:34.097' AS DateTime), N'73c97832-4e7f-4758-86d2-94327971b5fd', 0, 0, 1, 74, N'Sex', N'', N'nvarchar(255)', N'String', N'Sex', 255)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'837b058b-a88e-4107-d4dd-08da3d8d5a26', CAST(N'2022-05-24T21:57:34.097' AS DateTime), CAST(N'2022-05-24T21:57:34.097' AS DateTime), N'73c97832-4e7f-4758-86d2-94327971b5fd', 0, 0, 1, 79, N'UserId', N'', N'uniqueidentifier', N'Guid', N'UserId', 16)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'bfec557a-1223-49ec-d4de-08da3d8d5a26', CAST(N'2022-05-24T21:57:34.120' AS DateTime), CAST(N'2022-05-24T21:57:34.120' AS DateTime), N'c5883367-42aa-43b8-9577-4720a2253efa', 1, 0, 0, 210, N'Id', N'', N'uniqueidentifier', N'Guid', N'Id', 16)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'31f56d34-2216-45b0-d4df-08da3d8d5a26', CAST(N'2022-05-24T21:57:34.120' AS DateTime), CAST(N'2022-05-24T21:57:34.120' AS DateTime), N'c5883367-42aa-43b8-9577-4720a2253efa', 0, 0, 1, 214, N'Author', N'', N'varchar(50)', N'String', N'Author', 50)
GO
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'6fe5687c-bfaf-4e2f-d4e0-08da3d8d5a26', CAST(N'2022-05-24T21:57:34.120' AS DateTime), CAST(N'2022-05-24T21:57:34.120' AS DateTime), N'c5883367-42aa-43b8-9577-4720a2253efa', 0, 0, 1, 216, N'Content', N'', N'varchar(MAX)', N'String', N'Content', -1)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'be86a4ee-e843-4c2a-d4e1-08da3d8d5a26', CAST(N'2022-05-24T21:57:34.120' AS DateTime), CAST(N'2022-05-24T21:57:34.120' AS DateTime), N'c5883367-42aa-43b8-9577-4720a2253efa', 0, 0, 1, 212, N'CreationTime', N'', N'datetime2', N'DateTime', N'CreationTime', 6)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'c03ba636-abb2-43f7-d4e2-08da3d8d5a26', CAST(N'2022-05-24T21:57:34.120' AS DateTime), CAST(N'2022-05-24T21:57:34.120' AS DateTime), N'c5883367-42aa-43b8-9577-4720a2253efa', 0, 0, 1, 211, N'LastModificationTime', N'', N'datetime2', N'DateTime', N'LastModificationTime', 6)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'5f28be90-e415-46dd-d4e3-08da3d8d5a26', CAST(N'2022-05-24T21:57:34.120' AS DateTime), CAST(N'2022-05-24T21:57:34.120' AS DateTime), N'c5883367-42aa-43b8-9577-4720a2253efa', 0, 0, 1, 215, N'Time', N'', N'datetime', N'DateTime', N'Time', 8)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'804e418f-3206-4090-d4e4-08da3d8d5a26', CAST(N'2022-05-24T21:57:34.120' AS DateTime), CAST(N'2022-05-24T21:57:34.120' AS DateTime), N'c5883367-42aa-43b8-9577-4720a2253efa', 0, 0, 1, 213, N'Title', N'', N'varchar(50)', N'String', N'Title', 50)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'97284d66-88b9-478f-d4e5-08da3d8d5a26', CAST(N'2022-05-24T21:57:34.137' AS DateTime), CAST(N'2022-05-24T21:57:34.137' AS DateTime), N'e79db53b-7162-4669-9b5e-f860501475ac', 1, 0, 0, 82, N'Id', N'', N'uniqueidentifier', N'Guid', N'Id', 16)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'b6422cb6-498e-4ff5-d4e6-08da3d8d5a26', CAST(N'2022-05-24T21:57:34.137' AS DateTime), CAST(N'2022-05-24T21:57:34.137' AS DateTime), N'e79db53b-7162-4669-9b5e-f860501475ac', 0, 0, 1, 84, N'CreationTime', N'', N'datetime', N'DateTime', N'CreationTime', 8)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'9de60dd7-a403-442d-d4e7-08da3d8d5a26', CAST(N'2022-05-24T21:57:34.137' AS DateTime), CAST(N'2022-05-24T21:57:34.137' AS DateTime), N'e79db53b-7162-4669-9b5e-f860501475ac', 0, 0, 1, 83, N'LastModificationTime', N'', N'datetime', N'DateTime', N'LastModificationTime', 8)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'0f908e1d-4a82-42c1-d4e8-08da3d8d5a26', CAST(N'2022-05-24T21:57:34.137' AS DateTime), CAST(N'2022-05-24T21:57:34.137' AS DateTime), N'e79db53b-7162-4669-9b5e-f860501475ac', 0, 0, 1, 86, N'PermissionType', N'数据权限类型', N'int', N'Int32', N'PermissionType', 4)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'9c9f9672-3fa0-4c65-d4e9-08da3d8d5a26', CAST(N'2022-05-24T21:57:34.137' AS DateTime), CAST(N'2022-05-24T21:57:34.137' AS DateTime), N'e79db53b-7162-4669-9b5e-f860501475ac', 0, 0, 1, 85, N'RoleId', N'', N'uniqueidentifier', N'Guid', N'RoleId', 16)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'df559c6b-6f60-467c-d4ea-08da3d8d5a26', CAST(N'2022-05-24T21:57:34.153' AS DateTime), CAST(N'2022-05-24T21:57:34.153' AS DateTime), N'524e71b4-cbf7-4248-8b29-3f99b43f2eb2', 1, 0, 0, 87, N'Id', N'', N'uniqueidentifier', N'Guid', N'Id', 16)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'2341dcb1-8056-4a7c-d4eb-08da3d8d5a26', CAST(N'2022-05-24T21:57:34.153' AS DateTime), CAST(N'2022-05-24T21:57:34.153' AS DateTime), N'524e71b4-cbf7-4248-8b29-3f99b43f2eb2', 0, 0, 1, 89, N'CreationTime', N'', N'datetime', N'DateTime', N'CreationTime', 8)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'6304e602-84a1-4c57-d4ec-08da3d8d5a26', CAST(N'2022-05-24T21:57:34.153' AS DateTime), CAST(N'2022-05-24T21:57:34.153' AS DateTime), N'524e71b4-cbf7-4248-8b29-3f99b43f2eb2', 0, 0, 1, 88, N'LastModificationTime', N'', N'datetime', N'DateTime', N'LastModificationTime', 8)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'de898f57-abe7-4d2c-d4ed-08da3d8d5a26', CAST(N'2022-05-24T21:57:34.153' AS DateTime), CAST(N'2022-05-24T21:57:34.153' AS DateTime), N'524e71b4-cbf7-4248-8b29-3f99b43f2eb2', 0, 0, 1, 90, N'SysDataAuthorityId', N'', N'uniqueidentifier', N'Guid', N'SysDataAuthorityId', 16)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'325af03c-cbb7-4de6-d4ee-08da3d8d5a26', CAST(N'2022-05-24T21:57:34.153' AS DateTime), CAST(N'2022-05-24T21:57:34.153' AS DateTime), N'524e71b4-cbf7-4248-8b29-3f99b43f2eb2', 0, 0, 0, 91, N'SysOrganizationId', N'', N'int', N'Int32', N'SysOrganizationId', 4)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'bbac9a7c-6e62-4fe6-d4ef-08da3d8d5a26', CAST(N'2022-05-24T21:57:34.173' AS DateTime), CAST(N'2022-05-24T21:57:34.173' AS DateTime), N'af37f705-7ba0-4883-b1be-8a274ea4c026', 0, 0, 1, 96, N'Code', N'编码', N'varchar(255)', N'String', N'Code', 255)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'2ca9aa7e-321e-47f0-d4f0-08da3d8d5a26', CAST(N'2022-05-24T21:57:34.173' AS DateTime), CAST(N'2022-05-24T21:57:34.173' AS DateTime), N'af37f705-7ba0-4883-b1be-8a274ea4c026', 0, 0, 1, 94, N'CreationTime', N'创建时间', N'datetime', N'DateTime', N'CreationTime', 8)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'ab5c0b3d-8871-42fd-d4f1-08da3d8d5a26', CAST(N'2022-05-24T21:57:34.173' AS DateTime), CAST(N'2022-05-24T21:57:34.173' AS DateTime), N'af37f705-7ba0-4883-b1be-8a274ea4c026', 0, 1, 0, 92, N'Id', N'id', N'int', N'Int32', N'Id', 4)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'aba55ad7-7153-4658-d4f2-08da3d8d5a26', CAST(N'2022-05-24T21:57:34.173' AS DateTime), CAST(N'2022-05-24T21:57:34.173' AS DateTime), N'af37f705-7ba0-4883-b1be-8a274ea4c026', 0, 0, 1, 93, N'LastModificationTime', N'更新时间', N'datetime', N'DateTime', N'LastModificationTime', 8)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'29b765bd-36f4-462f-d4f3-08da3d8d5a26', CAST(N'2022-05-24T21:57:34.173' AS DateTime), CAST(N'2022-05-24T21:57:34.173' AS DateTime), N'af37f705-7ba0-4883-b1be-8a274ea4c026', 0, 0, 1, 98, N'Name', N'分组名/键', N'varchar(255)', N'String', N'Name', 255)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'6e69cf9b-d9cd-4c31-d4f4-08da3d8d5a26', CAST(N'2022-05-24T21:57:34.173' AS DateTime), CAST(N'2022-05-24T21:57:34.173' AS DateTime), N'af37f705-7ba0-4883-b1be-8a274ea4c026', 0, 0, 1, 99, N'ParentId', N'父级分组id', N'int', N'Int32', N'ParentId', 4)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'84a87e33-8b66-4b9a-d4f5-08da3d8d5a26', CAST(N'2022-05-24T21:57:34.173' AS DateTime), CAST(N'2022-05-24T21:57:34.173' AS DateTime), N'af37f705-7ba0-4883-b1be-8a274ea4c026', 0, 0, 1, 95, N'Sort', N'排序号', N'int', N'Int32', N'Sort', 4)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'9a850f29-2dd2-4779-d4f6-08da3d8d5a26', CAST(N'2022-05-24T21:57:34.173' AS DateTime), CAST(N'2022-05-24T21:57:34.173' AS DateTime), N'af37f705-7ba0-4883-b1be-8a274ea4c026', 0, 0, 1, 97, N'Value', N'值', N'varchar(255)', N'String', N'Value', 255)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'e1316750-62a4-46aa-d4f7-08da3d8d5a26', CAST(N'2022-05-24T21:57:34.193' AS DateTime), CAST(N'2022-05-24T21:57:34.193' AS DateTime), N'6fabc67a-8b48-49a6-8ba1-c8a32c499d36', 1, 0, 0, 100, N'Id', N'', N'uniqueidentifier', N'Guid', N'Id', 16)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'743d6eab-b4c8-4a15-d4f8-08da3d8d5a26', CAST(N'2022-05-24T21:57:34.193' AS DateTime), CAST(N'2022-05-24T21:57:34.193' AS DateTime), N'6fabc67a-8b48-49a6-8ba1-c8a32c499d36', 0, 0, 1, 103, N'ByName', N'', N'nvarchar(255)', N'String', N'ByName', 255)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'82ee25d2-4e01-4100-d4f9-08da3d8d5a26', CAST(N'2022-05-24T21:57:34.193' AS DateTime), CAST(N'2022-05-24T21:57:34.193' AS DateTime), N'6fabc67a-8b48-49a6-8ba1-c8a32c499d36', 0, 0, 1, 106, N'CreationTime', N'', N'datetime2', N'DateTime', N'CreationTime', 6)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'a61101b5-8e66-4456-d4fa-08da3d8d5a26', CAST(N'2022-05-24T21:57:34.193' AS DateTime), CAST(N'2022-05-24T21:57:34.193' AS DateTime), N'6fabc67a-8b48-49a6-8ba1-c8a32c499d36', 0, 0, 1, 105, N'LastModificationTime', N'', N'datetime2', N'DateTime', N'LastModificationTime', 6)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'aaa5fae3-8c5b-4427-d4fb-08da3d8d5a26', CAST(N'2022-05-24T21:57:34.193' AS DateTime), CAST(N'2022-05-24T21:57:34.193' AS DateTime), N'6fabc67a-8b48-49a6-8ba1-c8a32c499d36', 0, 0, 1, 102, N'Name', N'', N'nvarchar(255)', N'String', N'Name', 255)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'f9fd0e13-4e5d-42b4-d4fc-08da3d8d5a26', CAST(N'2022-05-24T21:57:34.193' AS DateTime), CAST(N'2022-05-24T21:57:34.193' AS DateTime), N'6fabc67a-8b48-49a6-8ba1-c8a32c499d36', 0, 0, 1, 101, N'Number', N'', N'int', N'Int32', N'Number', 4)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'646614d9-d7f3-42c5-d4fd-08da3d8d5a26', CAST(N'2022-05-24T21:57:34.193' AS DateTime), CAST(N'2022-05-24T21:57:34.193' AS DateTime), N'6fabc67a-8b48-49a6-8ba1-c8a32c499d36', 0, 0, 1, 104, N'Remark', N'', N'nvarchar(255)', N'String', N'Remark', 255)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'498327eb-5676-4091-d4fe-08da3d8d5a26', CAST(N'2022-05-24T21:58:07.503' AS DateTime), CAST(N'2022-05-24T00:00:00.000' AS DateTime), N'd2600250-6f32-4d7d-8395-96cc9fa36db4', 1, 1, 0, 107, N'Id', N'', N'int', N'Int32', N'Id', NULL)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'3133985d-586c-4c4e-d4ff-08da3d8d5a26', CAST(N'2022-05-24T21:57:34.220' AS DateTime), CAST(N'2022-05-24T21:57:34.220' AS DateTime), N'd2600250-6f32-4d7d-8395-96cc9fa36db4', 0, 0, 1, 119, N'Close', N'', N'bit', N'Boolean', N'Close', 1)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'78757b0d-d9ee-45ea-d500-08da3d8d5a26', CAST(N'2022-05-24T21:58:07.503' AS DateTime), CAST(N'2022-05-24T00:00:00.000' AS DateTime), N'd2600250-6f32-4d7d-8395-96cc9fa36db4', 0, 0, 1, 115, N'ComponentName', N'', N'nvarchar(255)', N'String', N'ComponentName', NULL)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'2006ac52-bb49-4e41-d501-08da3d8d5a26', CAST(N'2022-05-24T21:58:07.503' AS DateTime), CAST(N'2022-05-24T00:00:00.000' AS DateTime), N'd2600250-6f32-4d7d-8395-96cc9fa36db4', 0, 0, 1, 109, N'CreationTime', N'', N'datetime2', N'DateTime', N'CreationTime', NULL)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'f5193134-b39d-4ca0-d502-08da3d8d5a26', CAST(N'2022-05-24T21:58:07.503' AS DateTime), CAST(N'2022-05-24T00:00:00.000' AS DateTime), N'd2600250-6f32-4d7d-8395-96cc9fa36db4', 0, 0, 1, 116, N'Icon', N'', N'nvarchar(255)', N'String', N'Icon', NULL)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'12e9e9ad-5631-4dc8-d503-08da3d8d5a26', CAST(N'2022-05-24T21:57:34.220' AS DateTime), CAST(N'2022-05-24T21:57:34.220' AS DateTime), N'd2600250-6f32-4d7d-8395-96cc9fa36db4', 0, 0, 1, 122, N'JumpUrl', N'', N'varchar(255)', N'String', N'JumpUrl', 255)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'b1f89f8d-8e22-4c4a-d504-08da3d8d5a26', CAST(N'2022-05-24T21:57:34.220' AS DateTime), CAST(N'2022-05-24T21:57:34.220' AS DateTime), N'd2600250-6f32-4d7d-8395-96cc9fa36db4', 0, 0, 1, 120, N'KeepAlive', N'', N'bit', N'Boolean', N'KeepAlive', 1)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'7211aea6-eb91-41e5-d505-08da3d8d5a26', CAST(N'2022-05-24T21:58:07.503' AS DateTime), CAST(N'2022-05-24T00:00:00.000' AS DateTime), N'd2600250-6f32-4d7d-8395-96cc9fa36db4', 0, 0, 1, 108, N'LastModificationTime', N'', N'datetime2', N'DateTime', N'LastModificationTime', NULL)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'b52a9e8c-dffb-40b7-d506-08da3d8d5a26', CAST(N'2022-05-24T21:58:07.503' AS DateTime), CAST(N'2022-05-24T00:00:00.000' AS DateTime), N'd2600250-6f32-4d7d-8395-96cc9fa36db4', 0, 0, 1, 110, N'LevelCode', N'', N'varchar(50)', N'String', N'LevelCode', NULL)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'e74c1f4b-af12-4eaa-d507-08da3d8d5a26', CAST(N'2022-05-24T21:58:07.503' AS DateTime), CAST(N'2022-05-24T00:00:00.000' AS DateTime), N'd2600250-6f32-4d7d-8395-96cc9fa36db4', 0, 0, 1, 112, N'Name', N'', N'nvarchar(255)', N'String', N'Name', NULL)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'235b67f8-62d2-480e-d508-08da3d8d5a26', CAST(N'2022-05-24T21:58:07.503' AS DateTime), CAST(N'2022-05-24T00:00:00.000' AS DateTime), N'd2600250-6f32-4d7d-8395-96cc9fa36db4', 0, 0, 1, 111, N'Number', N'编号', N'int', N'Int32', N'Number', NULL)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'f029b676-48ac-4ba3-d509-08da3d8d5a26', CAST(N'2022-05-24T21:57:34.220' AS DateTime), CAST(N'2022-05-24T21:57:34.220' AS DateTime), N'd2600250-6f32-4d7d-8395-96cc9fa36db4', 0, 0, 1, 117, N'ParentId', N'', N'int', N'Int32', N'ParentId', 4)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'5aa598a9-6e52-4ae4-d50a-08da3d8d5a26', CAST(N'2022-05-24T21:58:07.503' AS DateTime), CAST(N'2022-05-24T00:00:00.000' AS DateTime), N'd2600250-6f32-4d7d-8395-96cc9fa36db4', 0, 0, 1, 114, N'Router', N'', N'nvarchar(255)', N'String', N'Router', NULL)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'1916e619-4818-4c63-d50b-08da3d8d5a26', CAST(N'2022-05-24T21:57:34.220' AS DateTime), CAST(N'2022-05-24T21:57:34.220' AS DateTime), N'd2600250-6f32-4d7d-8395-96cc9fa36db4', 0, 0, 1, 118, N'Show', N'', N'bit', N'Boolean', N'Show', 1)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'd0fbf229-7204-4494-d50c-08da3d8d5a26', CAST(N'2022-05-24T21:57:34.220' AS DateTime), CAST(N'2022-05-24T21:57:34.220' AS DateTime), N'd2600250-6f32-4d7d-8395-96cc9fa36db4', 0, 0, 1, 121, N'State', N'', N'bit', N'Boolean', N'State', 1)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'6c3bb548-aafc-4f16-d50d-08da3d8d5a26', CAST(N'2022-05-24T21:57:34.220' AS DateTime), CAST(N'2022-05-24T21:57:34.220' AS DateTime), N'd2600250-6f32-4d7d-8395-96cc9fa36db4', 0, 0, 1, 123, N'Type', N'', N'int', N'Int32', N'Type', 4)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'19fa02fe-fb8f-4631-d50e-08da3d8d5a26', CAST(N'2022-05-24T21:58:07.503' AS DateTime), CAST(N'2022-05-24T00:00:00.000' AS DateTime), N'd2600250-6f32-4d7d-8395-96cc9fa36db4', 0, 0, 1, 113, N'Url', N'', N'nvarchar(255)', N'String', N'Url', NULL)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'9c4158f4-b5b5-4928-d50f-08da3d8d5a26', CAST(N'2022-05-24T21:57:34.250' AS DateTime), CAST(N'2022-05-24T21:57:34.250' AS DateTime), N'2ae9e532-7d9a-474b-b629-50a39945c44d', 1, 0, 0, 124, N'Id', N'', N'uniqueidentifier', N'Guid', N'Id', 16)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'fbf2d2c1-454b-4898-d510-08da3d8d5a26', CAST(N'2022-05-24T21:57:34.250' AS DateTime), CAST(N'2022-05-24T21:57:34.250' AS DateTime), N'2ae9e532-7d9a-474b-b629-50a39945c44d', 0, 0, 1, 126, N'CreationTime', N'', N'datetime2', N'DateTime', N'CreationTime', 6)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'6cfe3b57-006f-436b-d511-08da3d8d5a26', CAST(N'2022-05-24T21:57:34.250' AS DateTime), CAST(N'2022-05-24T21:57:34.250' AS DateTime), N'2ae9e532-7d9a-474b-b629-50a39945c44d', 0, 0, 1, 129, N'FunctionCode', N'', N'varchar(100)', N'String', N'FunctionCode', 100)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'a908815c-c0e6-4565-d512-08da3d8d5a26', CAST(N'2022-05-24T21:57:34.250' AS DateTime), CAST(N'2022-05-24T21:57:34.250' AS DateTime), N'2ae9e532-7d9a-474b-b629-50a39945c44d', 0, 0, 1, 130, N'FunctionName', N'', N'varchar(100)', N'String', N'FunctionName', 100)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'e4dd55f0-9697-43ae-d513-08da3d8d5a26', CAST(N'2022-05-24T21:57:34.250' AS DateTime), CAST(N'2022-05-24T21:57:34.250' AS DateTime), N'2ae9e532-7d9a-474b-b629-50a39945c44d', 0, 0, 1, 125, N'LastModificationTime', N'', N'datetime2', N'DateTime', N'LastModificationTime', 6)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'29d08351-9091-4c91-d514-08da3d8d5a26', CAST(N'2022-05-24T21:57:34.250' AS DateTime), CAST(N'2022-05-24T21:57:34.250' AS DateTime), N'2ae9e532-7d9a-474b-b629-50a39945c44d', 0, 0, 1, 128, N'MenuId', N'', N'int', N'Int32', N'MenuId', 4)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'c7b2ad1d-ecb0-4497-d515-08da3d8d5a26', CAST(N'2022-05-24T21:57:34.250' AS DateTime), CAST(N'2022-05-24T21:57:34.250' AS DateTime), N'2ae9e532-7d9a-474b-b629-50a39945c44d', 0, 0, 1, 127, N'Number', N'', N'int', N'Int32', N'Number', 4)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'9a050102-6300-46ef-d516-08da3d8d5a26', CAST(N'2022-05-24T21:57:34.250' AS DateTime), CAST(N'2022-05-24T21:57:34.250' AS DateTime), N'2ae9e532-7d9a-474b-b629-50a39945c44d', 0, 0, 1, 131, N'Remark', N'', N'varchar(100)', N'String', N'Remark', 100)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'ba392537-c1c5-4ecc-d517-08da3d8d5a26', CAST(N'2022-05-24T21:57:34.270' AS DateTime), CAST(N'2022-05-24T21:57:34.270' AS DateTime), N'60cceba1-28bf-4d1d-b603-4edf95d512b8', 1, 0, 0, 1, N'Id', N'', N'uniqueidentifier', N'Guid', N'Id', 16)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'ee8ca902-4e27-40c5-d518-08da3d8d5a26', CAST(N'2022-05-24T21:57:34.270' AS DateTime), CAST(N'2022-05-24T21:57:34.270' AS DateTime), N'60cceba1-28bf-4d1d-b603-4edf95d512b8', 0, 0, 1, 14, N'ActionDisplayName', N'', N'varchar(255)', N'String', N'ActionDisplayName', 255)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'200ff922-513c-4b19-d519-08da3d8d5a26', CAST(N'2022-05-24T21:57:34.270' AS DateTime), CAST(N'2022-05-24T21:57:34.270' AS DateTime), N'60cceba1-28bf-4d1d-b603-4edf95d512b8', 0, 0, 1, 4, N'Api', N'接口地址', N'varchar(500)', N'String', N'Api', 500)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'063d44b8-6ce2-47a6-d51a-08da3d8d5a26', CAST(N'2022-05-24T21:57:34.270' AS DateTime), CAST(N'2022-05-24T21:57:34.270' AS DateTime), N'60cceba1-28bf-4d1d-b603-4edf95d512b8', 0, 0, 1, 9, N'Browser', N'', N'varchar(255)', N'String', N'Browser', 255)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'a62bb184-93b0-40e3-d51b-08da3d8d5a26', CAST(N'2022-05-24T21:57:34.270' AS DateTime), CAST(N'2022-05-24T21:57:34.270' AS DateTime), N'60cceba1-28bf-4d1d-b603-4edf95d512b8', 0, 0, 1, 13, N'ControllerDisplayName', N'', N'varchar(255)', N'String', N'ControllerDisplayName', 255)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'0aa2daab-50df-4397-d51c-08da3d8d5a26', CAST(N'2022-05-24T21:57:34.270' AS DateTime), CAST(N'2022-05-24T21:57:34.270' AS DateTime), N'60cceba1-28bf-4d1d-b603-4edf95d512b8', 0, 0, 1, 3, N'CreationTime', N'', N'datetime2', N'DateTime', N'CreationTime', 6)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'5f5c2997-daa8-491c-d51d-08da3d8d5a26', CAST(N'2022-05-24T21:57:34.270' AS DateTime), CAST(N'2022-05-24T21:57:34.270' AS DateTime), N'60cceba1-28bf-4d1d-b603-4edf95d512b8', 0, 0, 1, 6, N'Form', N'表单信息', N'varchar(MAX)', N'String', N'Form', -1)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'1d881e59-d88e-497f-d51e-08da3d8d5a26', CAST(N'2022-05-24T21:57:34.270' AS DateTime), CAST(N'2022-05-24T21:57:34.270' AS DateTime), N'60cceba1-28bf-4d1d-b603-4edf95d512b8', 0, 0, 1, 7, N'FormBody', N'json表单信息', N'varchar(MAX)', N'String', N'FormBody', -1)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'ca605278-6972-48b4-d51f-08da3d8d5a26', CAST(N'2022-05-24T21:57:34.270' AS DateTime), CAST(N'2022-05-24T21:57:34.270' AS DateTime), N'60cceba1-28bf-4d1d-b603-4edf95d512b8', 0, 0, 1, 5, N'Ip', N'ip地址', N'varchar(255)', N'String', N'Ip', 255)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'a932f1ce-a55a-480b-d520-08da3d8d5a26', CAST(N'2022-05-24T21:57:34.270' AS DateTime), CAST(N'2022-05-24T21:57:34.270' AS DateTime), N'60cceba1-28bf-4d1d-b603-4edf95d512b8', 0, 0, 1, 2, N'LastModificationTime', N'', N'datetime2', N'DateTime', N'LastModificationTime', 6)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'4736479f-6089-4141-d521-08da3d8d5a26', CAST(N'2022-05-24T21:57:34.270' AS DateTime), CAST(N'2022-05-24T21:57:34.270' AS DateTime), N'60cceba1-28bf-4d1d-b603-4edf95d512b8', 0, 0, 1, 10, N'OS', N'', N'varchar(255)', N'String', N'OS', 255)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'4467bf43-6e95-4798-d522-08da3d8d5a26', CAST(N'2022-05-24T21:57:34.270' AS DateTime), CAST(N'2022-05-24T21:57:34.270' AS DateTime), N'60cceba1-28bf-4d1d-b603-4edf95d512b8', 0, 0, 1, 8, N'QueryString', N'地址栏信息', N'varchar(MAX)', N'String', N'QueryString', -1)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'0888b15f-3bd2-4881-d523-08da3d8d5a26', CAST(N'2022-05-24T21:57:34.270' AS DateTime), CAST(N'2022-05-24T21:57:34.270' AS DateTime), N'60cceba1-28bf-4d1d-b603-4edf95d512b8', 0, 0, 0, 12, N'TakeUpTime', N'接口耗时（毫秒）', N'bigint', N'Int64', N'TakeUpTime', 8)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'66718de6-5c1a-4229-d524-08da3d8d5a26', CAST(N'2022-05-24T21:57:34.270' AS DateTime), CAST(N'2022-05-24T21:57:34.270' AS DateTime), N'60cceba1-28bf-4d1d-b603-4edf95d512b8', 0, 0, 1, 11, N'UserId', N'当前操作人id', N'uniqueidentifier', N'Guid', N'UserId', 16)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'd6008705-0d21-42ac-d525-08da3d8d5a26', CAST(N'2022-05-24T21:57:34.297' AS DateTime), CAST(N'2022-05-24T21:57:34.297' AS DateTime), N'd26d07cb-158a-4cb2-8b20-5dfd5181af54', 1, 1, 0, 132, N'Id', N'', N'int', N'Int32', N'Id', 4)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'0b45e9bb-b9f1-4a2f-d526-08da3d8d5a26', CAST(N'2022-05-24T21:57:34.297' AS DateTime), CAST(N'2022-05-24T21:57:34.297' AS DateTime), N'd26d07cb-158a-4cb2-8b20-5dfd5181af54', 0, 0, 1, 142, N'CreationTime', N'', N'datetime2', N'DateTime', N'CreationTime', 6)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'ce802713-74f5-4f30-d527-08da3d8d5a26', CAST(N'2022-05-24T21:57:34.297' AS DateTime), CAST(N'2022-05-24T21:57:34.297' AS DateTime), N'd26d07cb-158a-4cb2-8b20-5dfd5181af54', 0, 0, 1, 138, N'Email', N'', N'nvarchar(255)', N'String', N'Email', 255)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'19a7504c-f740-4b49-d528-08da3d8d5a26', CAST(N'2022-05-24T21:57:34.297' AS DateTime), CAST(N'2022-05-24T21:57:34.297' AS DateTime), N'd26d07cb-158a-4cb2-8b20-5dfd5181af54', 0, 0, 1, 141, N'LastModificationTime', N'', N'datetime2', N'DateTime', N'LastModificationTime', 6)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'cf2e3691-ab88-4420-d529-08da3d8d5a26', CAST(N'2022-05-24T21:57:34.297' AS DateTime), CAST(N'2022-05-24T21:57:34.297' AS DateTime), N'd26d07cb-158a-4cb2-8b20-5dfd5181af54', 0, 0, 1, 136, N'Leader', N'', N'nvarchar(255)', N'String', N'Leader', 255)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'11f3d291-cf7a-4143-d52a-08da3d8d5a26', CAST(N'2022-05-24T21:57:34.297' AS DateTime), CAST(N'2022-05-24T21:57:34.297' AS DateTime), N'd26d07cb-158a-4cb2-8b20-5dfd5181af54', 0, 0, 1, 135, N'LevelCode', N'', N'varchar(50)', N'String', N'LevelCode', 50)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'1121d642-49e8-4b25-d52b-08da3d8d5a26', CAST(N'2022-05-24T21:57:34.297' AS DateTime), CAST(N'2022-05-24T21:57:34.297' AS DateTime), N'd26d07cb-158a-4cb2-8b20-5dfd5181af54', 0, 0, 1, 133, N'Name', N'', N'nvarchar(255)', N'String', N'Name', 255)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'5aed3feb-3d77-4e1e-d52c-08da3d8d5a26', CAST(N'2022-05-24T21:57:34.297' AS DateTime), CAST(N'2022-05-24T21:57:34.297' AS DateTime), N'd26d07cb-158a-4cb2-8b20-5dfd5181af54', 0, 0, 1, 134, N'OrderNumber', N'', N'int', N'Int32', N'OrderNumber', 4)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'042a59e2-72c1-4c38-d52d-08da3d8d5a26', CAST(N'2022-05-24T21:57:34.297' AS DateTime), CAST(N'2022-05-24T21:57:34.297' AS DateTime), N'd26d07cb-158a-4cb2-8b20-5dfd5181af54', 0, 0, 1, 140, N'ParentId', N'', N'int', N'Int32', N'ParentId', 4)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'ea63351c-c203-4d40-d52e-08da3d8d5a26', CAST(N'2022-05-24T21:57:34.297' AS DateTime), CAST(N'2022-05-24T21:57:34.297' AS DateTime), N'd26d07cb-158a-4cb2-8b20-5dfd5181af54', 0, 0, 1, 137, N'Phone', N'', N'nvarchar(255)', N'String', N'Phone', 255)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'b9bfca2e-f72b-4a3f-d52f-08da3d8d5a26', CAST(N'2022-05-24T21:57:34.297' AS DateTime), CAST(N'2022-05-24T21:57:34.297' AS DateTime), N'd26d07cb-158a-4cb2-8b20-5dfd5181af54', 0, 0, 1, 139, N'State', N'', N'int', N'Int32', N'State', 4)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'6aa13b8f-1e3c-4750-d530-08da3d8d5a26', CAST(N'2022-05-24T21:57:34.320' AS DateTime), CAST(N'2022-05-24T21:57:34.320' AS DateTime), N'0a8bdb18-758a-4798-9ffc-e7031dcbf262', 1, 0, 0, 143, N'Id', N'', N'uniqueidentifier', N'Guid', N'Id', 16)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'b76500c1-91f8-4e44-d531-08da3d8d5a26', CAST(N'2022-05-24T21:57:34.320' AS DateTime), CAST(N'2022-05-24T21:57:34.320' AS DateTime), N'0a8bdb18-758a-4798-9ffc-e7031dcbf262', 0, 0, 1, 145, N'Code', N'', N'nvarchar(255)', N'String', N'Code', 255)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'134c9f62-abd2-476e-d532-08da3d8d5a26', CAST(N'2022-05-24T21:57:34.320' AS DateTime), CAST(N'2022-05-24T21:57:34.320' AS DateTime), N'0a8bdb18-758a-4798-9ffc-e7031dcbf262', 0, 0, 1, 150, N'CreationTime', N'', N'datetime2', N'DateTime', N'CreationTime', 6)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'5257ad4f-589d-40d0-d533-08da3d8d5a26', CAST(N'2022-05-24T21:57:34.320' AS DateTime), CAST(N'2022-05-24T21:57:34.320' AS DateTime), N'0a8bdb18-758a-4798-9ffc-e7031dcbf262', 0, 0, 1, 149, N'LastModificationTime', N'', N'datetime2', N'DateTime', N'LastModificationTime', 6)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'1790b4d5-51b2-4dc0-d534-08da3d8d5a26', CAST(N'2022-05-24T21:57:34.320' AS DateTime), CAST(N'2022-05-24T21:57:34.320' AS DateTime), N'0a8bdb18-758a-4798-9ffc-e7031dcbf262', 0, 0, 1, 146, N'Name', N'', N'nvarchar(255)', N'String', N'Name', 255)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'2286c948-4f0d-4b66-d535-08da3d8d5a26', CAST(N'2022-05-24T21:57:34.320' AS DateTime), CAST(N'2022-05-24T21:57:34.320' AS DateTime), N'0a8bdb18-758a-4798-9ffc-e7031dcbf262', 0, 0, 1, 144, N'Number', N'', N'int', N'Int32', N'Number', 4)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'5f9a4a78-1bb9-4592-d536-08da3d8d5a26', CAST(N'2022-05-24T21:57:34.320' AS DateTime), CAST(N'2022-05-24T21:57:34.320' AS DateTime), N'0a8bdb18-758a-4798-9ffc-e7031dcbf262', 0, 0, 1, 148, N'Remarks', N'', N'nvarchar(255)', N'String', N'Remarks', 255)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'564a907b-1f47-4849-d537-08da3d8d5a26', CAST(N'2022-05-24T21:57:34.320' AS DateTime), CAST(N'2022-05-24T21:57:34.320' AS DateTime), N'0a8bdb18-758a-4798-9ffc-e7031dcbf262', 0, 0, 1, 147, N'State', N'', N'int', N'Int32', N'State', 4)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'69875823-326c-4e13-d538-08da3d8d5a26', CAST(N'2022-05-24T21:57:34.340' AS DateTime), CAST(N'2022-05-24T21:57:34.340' AS DateTime), N'f3d7bbb3-c1fb-4d61-92a4-9bc101811335', 1, 0, 0, 151, N'Id', N'', N'uniqueidentifier', N'Guid', N'Id', 16)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'42430604-7090-442d-d539-08da3d8d5a26', CAST(N'2022-05-24T21:57:34.340' AS DateTime), CAST(N'2022-05-24T21:57:34.340' AS DateTime), N'f3d7bbb3-c1fb-4d61-92a4-9bc101811335', 0, 0, 1, 153, N'CreationTime', N'', N'datetime2', N'DateTime', N'CreationTime', 6)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'3f7e43c9-762f-48ea-d53a-08da3d8d5a26', CAST(N'2022-05-24T21:57:34.340' AS DateTime), CAST(N'2022-05-24T21:57:34.340' AS DateTime), N'f3d7bbb3-c1fb-4d61-92a4-9bc101811335', 0, 0, 1, 157, N'DeleteLock', N'', N'bit', N'Boolean', N'DeleteLock', 1)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'517cbfe0-275d-4f36-d53b-08da3d8d5a26', CAST(N'2022-05-24T21:57:34.340' AS DateTime), CAST(N'2022-05-24T21:57:34.340' AS DateTime), N'f3d7bbb3-c1fb-4d61-92a4-9bc101811335', 0, 0, 1, 152, N'LastModificationTime', N'', N'datetime2', N'DateTime', N'LastModificationTime', 6)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'be481209-565b-4099-d53c-08da3d8d5a26', CAST(N'2022-05-24T21:57:34.340' AS DateTime), CAST(N'2022-05-24T21:57:34.340' AS DateTime), N'f3d7bbb3-c1fb-4d61-92a4-9bc101811335', 0, 0, 1, 155, N'Name', N'', N'nvarchar(255)', N'String', N'Name', 255)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'dd367fd5-2030-43b2-d53d-08da3d8d5a26', CAST(N'2022-05-24T21:57:34.340' AS DateTime), CAST(N'2022-05-24T21:57:34.340' AS DateTime), N'f3d7bbb3-c1fb-4d61-92a4-9bc101811335', 0, 0, 1, 154, N'Number', N'', N'int', N'Int32', N'Number', 4)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'dbe000fc-4895-42f2-d53e-08da3d8d5a26', CAST(N'2022-05-24T21:57:34.340' AS DateTime), CAST(N'2022-05-24T21:57:34.340' AS DateTime), N'f3d7bbb3-c1fb-4d61-92a4-9bc101811335', 0, 0, 1, 156, N'Remark', N'', N'nvarchar(255)', N'String', N'Remark', 255)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'7b6df0cd-c31b-4508-d53f-08da3d8d5a26', CAST(N'2022-05-24T21:57:34.357' AS DateTime), CAST(N'2022-05-24T21:57:34.357' AS DateTime), N'8da38d20-8a09-4e81-8dd8-ed6702aee380', 1, 0, 0, 158, N'Id', N'', N'uniqueidentifier', N'Guid', N'Id', 16)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'1213c179-e366-4e3c-d540-08da3d8d5a26', CAST(N'2022-05-24T21:57:34.357' AS DateTime), CAST(N'2022-05-24T21:57:34.357' AS DateTime), N'8da38d20-8a09-4e81-8dd8-ed6702aee380', 0, 0, 1, 163, N'CreationTime', N'', N'datetime2', N'DateTime', N'CreationTime', 6)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'b24ac0e3-71ab-4d48-d541-08da3d8d5a26', CAST(N'2022-05-24T21:57:34.357' AS DateTime), CAST(N'2022-05-24T21:57:34.357' AS DateTime), N'8da38d20-8a09-4e81-8dd8-ed6702aee380', 0, 0, 1, 162, N'LastModificationTime', N'', N'datetime2', N'DateTime', N'LastModificationTime', 6)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'6c934348-be20-4c9e-d542-08da3d8d5a26', CAST(N'2022-05-24T21:57:34.357' AS DateTime), CAST(N'2022-05-24T21:57:34.357' AS DateTime), N'8da38d20-8a09-4e81-8dd8-ed6702aee380', 0, 0, 1, 161, N'MenuFunctionId', N'', N'uniqueidentifier', N'Guid', N'MenuFunctionId', 16)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'd41bd8db-1b3f-48fa-d543-08da3d8d5a26', CAST(N'2022-05-24T21:57:34.357' AS DateTime), CAST(N'2022-05-24T21:57:34.357' AS DateTime), N'8da38d20-8a09-4e81-8dd8-ed6702aee380', 0, 0, 1, 160, N'MenuId', N'', N'int', N'Int32', N'MenuId', 4)
GO
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'f24f0e45-209e-46b7-d544-08da3d8d5a26', CAST(N'2022-05-24T21:57:34.357' AS DateTime), CAST(N'2022-05-24T21:57:34.357' AS DateTime), N'8da38d20-8a09-4e81-8dd8-ed6702aee380', 0, 0, 1, 159, N'RoleId', N'', N'uniqueidentifier', N'Guid', N'RoleId', 16)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'5bcf7406-75cc-4171-d545-08da3d8d5a26', CAST(N'2022-05-24T21:57:34.383' AS DateTime), CAST(N'2022-05-24T21:57:34.383' AS DateTime), N'6323638b-a45f-4a76-886e-69a9e9be0901', 1, 0, 0, 164, N'Id', N'', N'uniqueidentifier', N'Guid', N'Id', 16)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'46bac66f-3cf0-46b3-d546-08da3d8d5a26', CAST(N'2022-05-24T21:57:34.383' AS DateTime), CAST(N'2022-05-24T21:57:34.383' AS DateTime), N'6323638b-a45f-4a76-886e-69a9e9be0901', 0, 0, 1, 166, N'CreationTime', N'', N'datetime2', N'DateTime', N'CreationTime', 6)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'a6752bd9-f3d6-451f-d547-08da3d8d5a26', CAST(N'2022-05-24T21:57:34.383' AS DateTime), CAST(N'2022-05-24T21:57:34.383' AS DateTime), N'6323638b-a45f-4a76-886e-69a9e9be0901', 0, 0, 1, 172, N'DeleteLock', N'', N'bit', N'Boolean', N'DeleteLock', 1)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'287314b2-3141-4957-d548-08da3d8d5a26', CAST(N'2022-05-24T21:57:34.383' AS DateTime), CAST(N'2022-05-24T21:57:34.383' AS DateTime), N'6323638b-a45f-4a76-886e-69a9e9be0901', 0, 0, 0, 171, N'Email', N'', N'nvarchar(255)', N'String', N'Email', 255)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'e5418d61-916f-45fd-d549-08da3d8d5a26', CAST(N'2022-05-24T21:57:34.383' AS DateTime), CAST(N'2022-05-24T21:57:34.383' AS DateTime), N'6323638b-a45f-4a76-886e-69a9e9be0901', 0, 0, 1, 165, N'LastModificationTime', N'', N'datetime2', N'DateTime', N'LastModificationTime', 6)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'7cbe8988-cbac-4ea2-d54a-08da3d8d5a26', CAST(N'2022-05-24T21:57:34.383' AS DateTime), CAST(N'2022-05-24T21:57:34.383' AS DateTime), N'6323638b-a45f-4a76-886e-69a9e9be0901', 0, 0, 1, 168, N'LoginName', N'', N'nvarchar(255)', N'String', N'LoginName', 255)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'4b5bc027-5663-463a-d54b-08da3d8d5a26', CAST(N'2022-05-24T21:57:34.383' AS DateTime), CAST(N'2022-05-24T21:57:34.383' AS DateTime), N'6323638b-a45f-4a76-886e-69a9e9be0901', 0, 0, 1, 167, N'Name', N'', N'nvarchar(255)', N'String', N'Name', 255)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'5a9fa990-b6d6-445f-d54c-08da3d8d5a26', CAST(N'2022-05-24T21:57:34.383' AS DateTime), CAST(N'2022-05-24T21:57:34.383' AS DateTime), N'6323638b-a45f-4a76-886e-69a9e9be0901', 0, 0, 1, 173, N'OrganizationId', N'', N'int', N'Int32', N'OrganizationId', 4)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'e36410b5-cb7c-4fc3-d54d-08da3d8d5a26', CAST(N'2022-05-24T21:57:34.383' AS DateTime), CAST(N'2022-05-24T21:57:34.383' AS DateTime), N'6323638b-a45f-4a76-886e-69a9e9be0901', 0, 0, 1, 169, N'Password', N'', N'nvarchar(255)', N'String', N'Password', 255)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'c82d5132-6cda-463e-d54e-08da3d8d5a26', CAST(N'2022-05-24T21:57:34.383' AS DateTime), CAST(N'2022-05-24T21:57:34.383' AS DateTime), N'6323638b-a45f-4a76-886e-69a9e9be0901', 0, 0, 1, 170, N'Phone', N'', N'nvarchar(255)', N'String', N'Phone', 255)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'a9766bbb-21bf-46da-d54f-08da3d8d5a26', CAST(N'2022-05-24T21:57:34.407' AS DateTime), CAST(N'2022-05-24T21:57:34.407' AS DateTime), N'69b24f04-0ed3-45fc-91d9-0dc929175a57', 1, 0, 0, 174, N'Id', N'', N'uniqueidentifier', N'Guid', N'Id', 16)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'f731ccd3-9a9c-4dda-d550-08da3d8d5a26', CAST(N'2022-05-24T21:57:34.407' AS DateTime), CAST(N'2022-05-24T21:57:34.407' AS DateTime), N'69b24f04-0ed3-45fc-91d9-0dc929175a57', 0, 0, 1, 178, N'CreationTime', N'', N'datetime2', N'DateTime', N'CreationTime', 6)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'135e23db-540b-4096-d551-08da3d8d5a26', CAST(N'2022-05-24T21:57:34.407' AS DateTime), CAST(N'2022-05-24T21:57:34.407' AS DateTime), N'69b24f04-0ed3-45fc-91d9-0dc929175a57', 0, 0, 1, 177, N'LastModificationTime', N'', N'datetime2', N'DateTime', N'LastModificationTime', 6)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'4c479d54-530f-4652-d552-08da3d8d5a26', CAST(N'2022-05-24T21:57:34.407' AS DateTime), CAST(N'2022-05-24T21:57:34.407' AS DateTime), N'69b24f04-0ed3-45fc-91d9-0dc929175a57', 0, 0, 1, 176, N'PostId', N'', N'uniqueidentifier', N'Guid', N'PostId', 16)
INSERT [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'cb5f9ecf-9317-4b11-d553-08da3d8d5a26', CAST(N'2022-05-24T21:57:34.407' AS DateTime), CAST(N'2022-05-24T21:57:34.407' AS DateTime), N'69b24f04-0ed3-45fc-91d9-0dc929175a57', 0, 0, 1, 175, N'UserId', N'', N'uniqueidentifier', N'Guid', N'UserId', 16)
GO
INSERT [dbo].[Member] ([Id], [Number], [Name], [Phone], [Sex], [Birthday], [Photo], [Introduce], [FilePath], [UserId], [CreationTime], [LastModificationTime]) VALUES (N'96a1aa3d-a61a-42d0-954a-c71753fb2065', N'123', N'123', N'123', N'女', CAST(N'2018-04-25T23:00:00.0000000' AS DateTime2), NULL, N'<p>123</p>', NULL, N'ac18f496-e93d-42f0-b59e-e321acc85335', CAST(N'2020-10-24T00:07:42.0000000' AS DateTime2), CAST(N'2021-04-18T22:08:06.0000000' AS DateTime2))
INSERT [dbo].[Member] ([Id], [Number], [Name], [Phone], [Sex], [Birthday], [Photo], [Introduce], [FilePath], [UserId], [CreationTime], [LastModificationTime]) VALUES (N'9a604aa2-9ae6-4a2f-8ddb-d9e0289ead9e', N'1', N'测试会员', N'18510912123', N'男', CAST(N'2019-07-08T11:47:24.0000000' AS DateTime2), N'http://localhost:5600http://localhost:5600http://localhost:5600/upload/files/20210118/time_232747_old_name_hzy.png', N'<p>999888</p>', N'/upload/files/20210118/time_233310_old_name_hzy.png', N'ac18f496-e93d-42f0-b59e-e321acc85335', CAST(N'2018-04-25T23:00:00.0000000' AS DateTime2), CAST(N'2022-05-08T16:46:21.0000000' AS DateTime2))
GO
INSERT [dbo].[SysDataAuthority] ([Id], [LastModificationTime], [CreationTime], [RoleId], [PermissionType]) VALUES (N'd09bf250-c5b0-41cb-237d-08da00442990', CAST(N'2022-03-08T10:02:22.620' AS DateTime), CAST(N'2022-03-07T22:09:58.000' AS DateTime), N'40ff1844-c099-4061-98e0-cd6e544fcfd3', 5)
INSERT [dbo].[SysDataAuthority] ([Id], [LastModificationTime], [CreationTime], [RoleId], [PermissionType]) VALUES (N'0228a5b5-2202-4ba0-6e48-08da205da7b7', CAST(N'2022-04-17T18:33:04.440' AS DateTime), CAST(N'2022-04-17T18:33:04.440' AS DateTime), N'18fa4771-6f58-46a3-80d2-6f0f5e9972e3', 2)
GO
SET IDENTITY_INSERT [dbo].[SysDictionary] ON 

INSERT [dbo].[SysDictionary] ([Id], [LastModificationTime], [CreationTime], [Sort], [Code], [Value], [Name], [ParentId]) VALUES (1, CAST(N'2021-07-25T22:39:34.870' AS DateTime), CAST(N'2021-07-25T22:31:30.490' AS DateTime), 1, N'news_type', NULL, N'资讯类别', NULL)
INSERT [dbo].[SysDictionary] ([Id], [LastModificationTime], [CreationTime], [Sort], [Code], [Value], [Name], [ParentId]) VALUES (2, CAST(N'2021-07-25T22:40:30.037' AS DateTime), CAST(N'2021-07-25T22:38:49.153' AS DateTime), 1, N'news_type_nan', N'1', N'男', 1)
INSERT [dbo].[SysDictionary] ([Id], [LastModificationTime], [CreationTime], [Sort], [Code], [Value], [Name], [ParentId]) VALUES (3, CAST(N'2022-04-23T22:18:52.613' AS DateTime), CAST(N'2021-07-25T22:40:47.000' AS DateTime), 2, N'news_type_nv', N'2', N'女', 1)
SET IDENTITY_INSERT [dbo].[SysDictionary] OFF
GO
INSERT [dbo].[SysFunction] ([Id], [Number], [Name], [ByName], [Remark], [LastModificationTime], [CreationTime]) VALUES (N'b6fd5425-504a-46a9-993b-2f8dc9158eb8', 80, N'打印', N'Print', N'Print', CAST(N'2021-04-18T22:08:06.0000000' AS DateTime2), CAST(N'2016-06-20T13:40:52.0000000' AS DateTime2))
INSERT [dbo].[SysFunction] ([Id], [Number], [Name], [ByName], [Remark], [LastModificationTime], [CreationTime]) VALUES (N'c9518758-b2e1-4f51-b517-5282e273889c', 10, N'显示', N'Display', N'Display', CAST(N'2021-04-18T22:08:06.0000000' AS DateTime2), CAST(N'2016-06-20T13:40:52.0000000' AS DateTime2))
INSERT [dbo].[SysFunction] ([Id], [Number], [Name], [ByName], [Remark], [LastModificationTime], [CreationTime]) VALUES (N'f27ecb0a-197d-47b1-b243-59a8c71302bf', 60, N'检索', N'Search', N'Search', CAST(N'2021-04-18T22:08:06.0000000' AS DateTime2), CAST(N'2016-06-20T13:40:52.0000000' AS DateTime2))
INSERT [dbo].[SysFunction] ([Id], [Number], [Name], [ByName], [Remark], [LastModificationTime], [CreationTime]) VALUES (N'383e7ee2-7690-46ac-9230-65155c84aa30', 50, N'保存', N'Save', N'Save', CAST(N'2021-04-18T22:08:06.0000000' AS DateTime2), CAST(N'2016-06-20T13:40:52.0000000' AS DateTime2))
INSERT [dbo].[SysFunction] ([Id], [Number], [Name], [ByName], [Remark], [LastModificationTime], [CreationTime]) VALUES (N'9c388461-2704-4c5e-a729-72c17e9018e1', 40, N'删除', N'Delete', N'Delete', CAST(N'2021-04-18T22:08:06.0000000' AS DateTime2), CAST(N'2016-06-20T13:40:52.0000000' AS DateTime2))
INSERT [dbo].[SysFunction] ([Id], [Number], [Name], [ByName], [Remark], [LastModificationTime], [CreationTime]) VALUES (N'bffefb1c-8988-4ddf-b4ac-81c2b30e80cd', 20, N'添加', N'Insert', N'Insert', CAST(N'2021-04-18T22:08:06.0000000' AS DateTime2), CAST(N'2016-06-20T13:40:52.0000000' AS DateTime2))
INSERT [dbo].[SysFunction] ([Id], [Number], [Name], [ByName], [Remark], [LastModificationTime], [CreationTime]) VALUES (N'2401f4d0-60b0-4e2e-903f-84c603373572', 70, N'导出', N'Export', N'Export', CAST(N'2021-04-18T22:08:06.0000000' AS DateTime2), CAST(N'2016-06-20T13:40:52.0000000' AS DateTime2))
INSERT [dbo].[SysFunction] ([Id], [Number], [Name], [ByName], [Remark], [LastModificationTime], [CreationTime]) VALUES (N'e7ef2a05-8317-41c3-b588-99519fe88bf9', 30, N'修改', N'Update', N'Update', CAST(N'2021-04-18T22:08:06.0000000' AS DateTime2), CAST(N'2016-06-20T13:40:52.0000000' AS DateTime2))
GO
SET IDENTITY_INSERT [dbo].[SysMenu] ON 

INSERT [dbo].[SysMenu] ([Id], [LastModificationTime], [CreationTime], [LevelCode], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [KeepAlive], [State], [JumpUrl], [Type]) VALUES (1, CAST(N'2022-03-04T12:25:39.0000000' AS DateTime2), CAST(N'2021-05-28T11:49:02.0000000' AS DateTime2), N'1', 10, N'更多示例', NULL, NULL, NULL, N'MoreOutlined', NULL, 1, 1, 1, 1, NULL, 1)
INSERT [dbo].[SysMenu] ([Id], [LastModificationTime], [CreationTime], [LevelCode], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [KeepAlive], [State], [JumpUrl], [Type]) VALUES (2, CAST(N'2022-03-18T12:06:20.0000000' AS DateTime2), CAST(N'2021-01-16T16:05:22.0000000' AS DateTime2), N'1.2', 10, N'Antd Vue3.0组件', N'views/AppComponents.vue', N'/app/components', N'AppComponentsCom', N'LayoutOutlined', 1, 1, 1, 1, 1, NULL, 2)
INSERT [dbo].[SysMenu] ([Id], [LastModificationTime], [CreationTime], [LevelCode], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [KeepAlive], [State], [JumpUrl], [Type]) VALUES (3, CAST(N'2022-03-04T12:26:14.0000000' AS DateTime2), CAST(N'2020-12-17T14:58:05.0000000' AS DateTime2), N'1.3', 30, N'按钮', N'views/Button.vue', N'/button', N'ButtonCom', N'AppstoreOutlined', 1, 1, 1, 1, 1, NULL, 2)
INSERT [dbo].[SysMenu] ([Id], [LastModificationTime], [CreationTime], [LevelCode], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [KeepAlive], [State], [JumpUrl], [Type]) VALUES (4, CAST(N'2022-03-04T12:26:21.0000000' AS DateTime2), CAST(N'2021-01-16T16:06:33.0000000' AS DateTime2), N'1.4', 40, N'图表 AntV G2', NULL, NULL, NULL, N'PieChartOutlined', 1, 1, 1, 1, 1, NULL, 1)
INSERT [dbo].[SysMenu] ([Id], [LastModificationTime], [CreationTime], [LevelCode], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [KeepAlive], [State], [JumpUrl], [Type]) VALUES (5, CAST(N'2022-03-04T12:26:25.0000000' AS DateTime2), CAST(N'2021-01-16T16:07:24.0000000' AS DateTime2), N'1.4.5', 10, N'基础图表', N'views/chart/Base.vue', N'/chart/base', N'ChartBaseCom', NULL, 4, 1, 1, 1, 1, NULL, 2)
INSERT [dbo].[SysMenu] ([Id], [LastModificationTime], [CreationTime], [LevelCode], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [KeepAlive], [State], [JumpUrl], [Type]) VALUES (6, CAST(N'2022-03-04T12:26:28.0000000' AS DateTime2), CAST(N'2021-01-16T16:10:06.0000000' AS DateTime2), N'1.4.6', 20, N'更多图表', N'views/chart/More.vue', N'/chart/more', N'ChartMoreCom', NULL, 4, 1, 1, 1, 1, NULL, 2)
INSERT [dbo].[SysMenu] ([Id], [LastModificationTime], [CreationTime], [LevelCode], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [KeepAlive], [State], [JumpUrl], [Type]) VALUES (7, CAST(N'2022-03-04T12:26:34.0000000' AS DateTime2), CAST(N'2018-03-10T12:16:38.0000000' AS DateTime2), N'1.7', 50, N'表格管理', NULL, NULL, NULL, N'TableOutlined', 1, 1, 1, 1, 1, NULL, 1)
INSERT [dbo].[SysMenu] ([Id], [LastModificationTime], [CreationTime], [LevelCode], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [KeepAlive], [State], [JumpUrl], [Type]) VALUES (8, CAST(N'2022-03-04T12:26:38.0000000' AS DateTime2), CAST(N'2020-12-17T14:49:12.0000000' AS DateTime2), N'1.7.8', 100, N'基础列表', N'views/BaseList.vue', N'/base/list', N'BaseListCom', NULL, 7, 1, 1, 1, 1, NULL, 2)
INSERT [dbo].[SysMenu] ([Id], [LastModificationTime], [CreationTime], [LevelCode], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [KeepAlive], [State], [JumpUrl], [Type]) VALUES (9, CAST(N'2022-03-04T12:26:41.0000000' AS DateTime2), CAST(N'2020-12-17T14:51:07.0000000' AS DateTime2), N'1.7.9', 110, N'标准表格', N'views/list/Index.vue', N'/list', N'ListIndexCom', NULL, 7, 1, 1, 1, 1, NULL, 2)
INSERT [dbo].[SysMenu] ([Id], [LastModificationTime], [CreationTime], [LevelCode], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [KeepAlive], [State], [JumpUrl], [Type]) VALUES (10, CAST(N'2022-03-04T12:26:46.0000000' AS DateTime2), CAST(N'2021-01-18T19:34:28.0000000' AS DateTime2), N'1.10', 60, N'富文本编辑器', N'views/Editor.vue', N'/editor', N'EditorCom', N'PicRightOutlined', 1, 1, 1, 1, 1, NULL, 2)
INSERT [dbo].[SysMenu] ([Id], [LastModificationTime], [CreationTime], [LevelCode], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [KeepAlive], [State], [JumpUrl], [Type]) VALUES (11, CAST(N'2022-03-04T12:26:49.0000000' AS DateTime2), CAST(N'2021-08-05T21:51:12.0000000' AS DateTime2), N'1.11', 70, N'跳转外部地址', N'components/ExternalJump.vue', N'/external/jump/:path(.*)', N'ExternalJumpCom', N'RadarChartOutlined', 1, 1, 1, 1, 1, N'https://antv.vision/zh', 2)
INSERT [dbo].[SysMenu] ([Id], [LastModificationTime], [CreationTime], [LevelCode], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [KeepAlive], [State], [JumpUrl], [Type]) VALUES (12, CAST(N'2022-03-04T12:25:43.0000000' AS DateTime2), CAST(N'2018-03-10T12:16:38.0000000' AS DateTime2), N'12', 50, N'基础信息', NULL, NULL, NULL, N'GoldOutlined', NULL, 1, 1, 1, 1, NULL, 1)
INSERT [dbo].[SysMenu] ([Id], [LastModificationTime], [CreationTime], [LevelCode], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [KeepAlive], [State], [JumpUrl], [Type]) VALUES (13, CAST(N'2022-03-04T12:26:55.0000000' AS DateTime2), CAST(N'2018-03-10T12:16:38.0000000' AS DateTime2), N'12.13', 10, N'会员管理', N'views/base/member/Index.vue', N'/base/member', N'base_member', N'UsergroupAddOutlined', 12, 1, 1, 1, 1, NULL, 2)
INSERT [dbo].[SysMenu] ([Id], [LastModificationTime], [CreationTime], [LevelCode], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [KeepAlive], [State], [JumpUrl], [Type]) VALUES (14, CAST(N'2022-03-04T12:25:46.0000000' AS DateTime2), CAST(N'2018-03-10T12:16:38.0000000' AS DateTime2), N'14', 100, N'系统管理', NULL, NULL, NULL, N'DesktopOutlined', NULL, 1, 1, 1, 1, NULL, 1)
INSERT [dbo].[SysMenu] ([Id], [LastModificationTime], [CreationTime], [LevelCode], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [KeepAlive], [State], [JumpUrl], [Type]) VALUES (15, CAST(N'2022-03-04T12:27:02.0000000' AS DateTime2), CAST(N'2018-03-10T12:16:38.0000000' AS DateTime2), N'14.15', 100, N'账户管理', N'views/system/user/Index.vue', N'/system/user', N'system_user', N'UserOutlined', 14, 1, 1, 1, 1, NULL, 2)
INSERT [dbo].[SysMenu] ([Id], [LastModificationTime], [CreationTime], [LevelCode], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [KeepAlive], [State], [JumpUrl], [Type]) VALUES (16, CAST(N'2022-04-22T22:24:03.0000000' AS DateTime2), CAST(N'2018-03-10T12:16:38.0000000' AS DateTime2), N'14.16', 110, N'角色管理', N'views/system/role/Index.vue', N'/system/role', N'system_role', N'TeamOutlined', 14, 1, 1, 1, 1, NULL, 2)
INSERT [dbo].[SysMenu] ([Id], [LastModificationTime], [CreationTime], [LevelCode], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [KeepAlive], [State], [JumpUrl], [Type]) VALUES (17, CAST(N'2022-03-04T12:27:11.0000000' AS DateTime2), CAST(N'2018-03-10T12:16:38.0000000' AS DateTime2), N'14.17', 120, N'功能管理', N'views/system/function/Index.vue', N'/system/function', N'system_function', N'ControlOutlined', 14, 1, 1, 1, 1, NULL, 2)
INSERT [dbo].[SysMenu] ([Id], [LastModificationTime], [CreationTime], [LevelCode], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [KeepAlive], [State], [JumpUrl], [Type]) VALUES (19, CAST(N'2022-03-04T12:27:19.0000000' AS DateTime2), CAST(N'2018-03-10T12:16:38.0000000' AS DateTime2), N'14.19', 150, N'个人中心', N'views/system/personal_center/Index.vue', N'/system/personal/center', N'system_personal_center', N'FormOutlined', 14, 1, 1, 1, 1, NULL, 2)
INSERT [dbo].[SysMenu] ([Id], [LastModificationTime], [CreationTime], [LevelCode], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [KeepAlive], [State], [JumpUrl], [Type]) VALUES (20, CAST(N'2022-03-04T12:27:23.0000000' AS DateTime2), CAST(N'2021-05-27T17:29:49.0000000' AS DateTime2), N'14.20', 160, N'岗位管理', N'views/system/post/Index.vue', N'/system/post', N'system_post', N'IdcardOutlined', 14, 1, 1, 1, 1, NULL, 2)
INSERT [dbo].[SysMenu] ([Id], [LastModificationTime], [CreationTime], [LevelCode], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [KeepAlive], [State], [JumpUrl], [Type]) VALUES (21, CAST(N'2022-03-04T12:27:27.0000000' AS DateTime2), CAST(N'2021-05-27T20:27:56.0000000' AS DateTime2), N'14.21', 170, N'组织机构', N'views/system/organization/Index.vue', N'/system/organization', N'system_organization', N'ClusterOutlined', 14, 1, 1, 1, 1, NULL, 2)
INSERT [dbo].[SysMenu] ([Id], [LastModificationTime], [CreationTime], [LevelCode], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [KeepAlive], [State], [JumpUrl], [Type]) VALUES (22, CAST(N'2022-03-04T12:27:41.0000000' AS DateTime2), CAST(N'2018-03-10T12:17:03.0000000' AS DateTime2), N'29.22', 10, N'接口文档', N'views/development_tool/Swagger.vue', N'/development_tool/swagger', N'swagger', N'FileSearchOutlined', 29, 1, 1, 1, 1, NULL, 2)
INSERT [dbo].[SysMenu] ([Id], [LastModificationTime], [CreationTime], [LevelCode], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [KeepAlive], [State], [JumpUrl], [Type]) VALUES (23, CAST(N'2022-03-04T12:27:31.0000000' AS DateTime2), CAST(N'2021-07-25T21:50:01.0000000' AS DateTime2), N'14.23', 190, N'数据字典', N'views/system/dictionary/Index.vue', N'/system/dictionary', N'system_dictionary', N'FileDoneOutlined', 14, 1, 1, 1, 1, NULL, 2)
INSERT [dbo].[SysMenu] ([Id], [LastModificationTime], [CreationTime], [LevelCode], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [KeepAlive], [State], [JumpUrl], [Type]) VALUES (24, CAST(N'2022-03-04T12:27:35.0000000' AS DateTime2), CAST(N'2021-08-05T21:24:54.0000000' AS DateTime2), N'14.24', 200, N'操作日志', N'views/system/sys_operation_log/Index.vue', N'/system/sys_operation_log', N'sys_operation_log', N'ContainerOutlined', 14, 1, 1, 1, 1, N'', 2)
INSERT [dbo].[SysMenu] ([Id], [LastModificationTime], [CreationTime], [LevelCode], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [KeepAlive], [State], [JumpUrl], [Type]) VALUES (25, CAST(N'2022-03-04T12:27:15.0000000' AS DateTime2), CAST(N'2018-03-10T12:16:38.0000000' AS DateTime2), N'14.25', 130, N'菜单功能', N'views/system/menu/Index.vue', N'/system/menu', N'system_menu', N'MenuOutlined', 14, 1, 1, 1, 1, NULL, 2)
INSERT [dbo].[SysMenu] ([Id], [LastModificationTime], [CreationTime], [LevelCode], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [KeepAlive], [State], [JumpUrl], [Type]) VALUES (28, CAST(N'2022-03-04T12:26:00.0000000' AS DateTime2), CAST(N'2021-12-29T17:13:26.0000000' AS DateTime2), N'1.28', 1, N'Vxe-Table', N'views/VxeTable.vue', N'/vxe/table', N'VxeTableCom', N'BorderlessTableOutlined', 1, 1, 1, 1, 1, NULL, 2)
INSERT [dbo].[SysMenu] ([Id], [LastModificationTime], [CreationTime], [LevelCode], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [KeepAlive], [State], [JumpUrl], [Type]) VALUES (29, CAST(N'2022-03-04T12:25:49.0000000' AS DateTime2), CAST(N'2022-01-12T14:17:21.0000000' AS DateTime2), N'29', 200, N'开发工具', NULL, NULL, NULL, N'CodepenOutlined', NULL, 1, 1, 1, 1, NULL, 1)
INSERT [dbo].[SysMenu] ([Id], [LastModificationTime], [CreationTime], [LevelCode], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [KeepAlive], [State], [JumpUrl], [Type]) VALUES (30, CAST(N'2022-03-04T12:27:44.0000000' AS DateTime2), CAST(N'2022-01-12T14:22:04.0000000' AS DateTime2), N'29.30', 20, N'定时任务', N'views/development_tool/timed_task/Index.vue', N'/development_tool/timed_task', N'TimedTaskCom', N'FieldTimeOutlined', 29, 1, 1, 1, 1, NULL, 2)
INSERT [dbo].[SysMenu] ([Id], [LastModificationTime], [CreationTime], [LevelCode], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [KeepAlive], [State], [JumpUrl], [Type]) VALUES (31, CAST(N'2022-05-24T22:05:57.0000000' AS DateTime2), CAST(N'2022-01-12T15:39:46.0000000' AS DateTime2), N'29.31', 30, N'代码生成', N'views/development_tool/low_code/Index.vue', N'/development-tool/low-code', N'LowCode', N'CodeTwoTone', 29, 1, 1, 1, 1, NULL, 2)
INSERT [dbo].[SysMenu] ([Id], [LastModificationTime], [CreationTime], [LevelCode], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [KeepAlive], [State], [JumpUrl], [Type]) VALUES (32, CAST(N'2022-03-18T12:06:38.0000000' AS DateTime2), CAST(N'2022-02-24T10:51:38.0000000' AS DateTime2), N'1.32', 20, N'图标展示', N'views/Icons.vue', N'/icons', N'IconsVue', N'TagsTwoTone', 1, 1, 1, 1, 1, NULL, 2)
INSERT [dbo].[SysMenu] ([Id], [LastModificationTime], [CreationTime], [LevelCode], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [KeepAlive], [State], [JumpUrl], [Type]) VALUES (33, CAST(N'2022-04-10T10:56:17.0000000' AS DateTime2), CAST(N'2022-04-10T10:55:41.0000000' AS DateTime2), N'29.33', 40, N'EFCore监控台', N'views/development_tool/monitor_ef_core/Index.vue', N'/development_tool/monitor/efcore', N'monitor_ef_core', N'DashboardFilled', 29, 1, 1, 1, 1, NULL, 2)
INSERT [dbo].[SysMenu] ([Id], [LastModificationTime], [CreationTime], [LevelCode], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [KeepAlive], [State], [JumpUrl], [Type]) VALUES (36, CAST(N'2022-04-17T17:49:13.0000000' AS DateTime2), CAST(N'2022-04-17T17:45:25.0000000' AS DateTime2), N'12.13.36', 1, N'详情', N'views/base/member/components/Details.vue', N'/base/member/details/:id/:title', N'base_member_info_Details', NULL, 13, 0, 1, 1, 1, NULL, 2)
SET IDENTITY_INSERT [dbo].[SysMenu] OFF
GO
INSERT [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'33c80938-82c8-4299-0f12-08d9fdad00ab', CAST(N'2022-03-04T15:17:09.0000000' AS DateTime2), CAST(N'2022-03-04T15:17:09.0000000' AS DateTime2), 10, 30, N'Display', N'显示', N'Display')
INSERT [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'ef70b789-21ee-4850-0f1b-08d9fdad00ab', CAST(N'2022-03-04T15:16:44.0000000' AS DateTime2), CAST(N'2022-03-04T15:16:44.0000000' AS DateTime2), 10, 22, N'Display', N'显示', N'Display')
INSERT [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'a7cd04db-bbe3-49b6-0f1e-08d9fdad00ab', CAST(N'2022-03-18T12:06:20.0000000' AS DateTime2), CAST(N'2022-03-18T12:06:20.0000000' AS DateTime2), 10, 2, N'Display', N'显示', N'Display')
INSERT [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'6c09c0c0-72fa-4842-0f1f-08d9fdad00ab', CAST(N'2022-03-18T12:06:38.0000000' AS DateTime2), CAST(N'2022-03-18T12:06:38.0000000' AS DateTime2), 10, 32, N'Display', N'显示', N'Display')
INSERT [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'f64cfe50-1ef1-457f-0f20-08d9fdad00ab', CAST(N'2022-03-04T15:24:24.0000000' AS DateTime2), CAST(N'2022-03-04T15:24:24.0000000' AS DateTime2), 10, 3, N'Display', N'显示', N'Display')
INSERT [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'a1ddd02f-8c21-4d79-0f21-08d9fdad00ab', CAST(N'2022-03-04T15:24:30.0000000' AS DateTime2), CAST(N'2022-03-04T15:24:30.0000000' AS DateTime2), 10, 5, N'Display', N'显示', N'Display')
INSERT [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'1cb6fbe1-4a6c-4aad-0f22-08d9fdad00ab', CAST(N'2022-03-04T15:24:34.0000000' AS DateTime2), CAST(N'2022-03-04T15:24:34.0000000' AS DateTime2), 10, 6, N'Display', N'显示', N'Display')
INSERT [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'd2e6ea60-2cf6-478a-0f23-08d9fdad00ab', CAST(N'2022-03-04T15:24:40.0000000' AS DateTime2), CAST(N'2022-03-04T15:24:40.0000000' AS DateTime2), 10, 8, N'Display', N'显示', N'Display')
INSERT [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'b7533a90-dae4-4263-0f24-08d9fdad00ab', CAST(N'2022-03-04T15:24:43.0000000' AS DateTime2), CAST(N'2022-03-04T15:24:43.0000000' AS DateTime2), 10, 9, N'Display', N'显示', N'Display')
INSERT [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'ec535908-8671-4928-0f25-08d9fdad00ab', CAST(N'2022-03-04T15:24:47.0000000' AS DateTime2), CAST(N'2022-03-04T15:24:47.0000000' AS DateTime2), 10, 10, N'Display', N'显示', N'Display')
INSERT [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'3bc0e68f-d03d-4e99-0f26-08d9fdad00ab', CAST(N'2022-03-04T15:24:53.0000000' AS DateTime2), CAST(N'2022-03-04T15:24:53.0000000' AS DateTime2), 10, 11, N'Display', N'显示', N'Display')
INSERT [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'eb958545-6449-40db-0f27-08d9fdad00ab', CAST(N'2022-03-04T15:25:07.0000000' AS DateTime2), CAST(N'2022-03-04T15:25:07.0000000' AS DateTime2), 10, 13, N'Display', N'显示', N'Display')
INSERT [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'b5881044-afb8-40b2-0f28-08d9fdad00ab', CAST(N'2022-03-04T15:25:07.0000000' AS DateTime2), CAST(N'2022-03-04T15:25:07.0000000' AS DateTime2), 20, 13, N'Insert', N'添加', N'Insert')
INSERT [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'106fb69a-8bb5-4559-0f29-08d9fdad00ab', CAST(N'2022-03-04T15:25:07.0000000' AS DateTime2), CAST(N'2022-03-04T15:25:07.0000000' AS DateTime2), 30, 13, N'Update', N'修改', N'Update')
INSERT [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'f4621fbe-6b40-4454-0f2a-08d9fdad00ab', CAST(N'2022-03-04T15:25:07.0000000' AS DateTime2), CAST(N'2022-03-04T15:25:07.0000000' AS DateTime2), 40, 13, N'Delete', N'删除', N'Delete')
INSERT [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'523b53b5-8159-4a16-0f2b-08d9fdad00ab', CAST(N'2022-03-04T15:25:07.0000000' AS DateTime2), CAST(N'2022-03-04T15:25:07.0000000' AS DateTime2), 50, 13, N'Save', N'保存', N'Save')
INSERT [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'a3754771-f6e9-4a23-0f2c-08d9fdad00ab', CAST(N'2022-03-04T15:25:07.0000000' AS DateTime2), CAST(N'2022-03-04T15:25:07.0000000' AS DateTime2), 60, 13, N'Search', N'检索', N'Search')
INSERT [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'b96f977c-a36e-4e7f-0f2d-08d9fdad00ab', CAST(N'2022-03-04T15:25:07.0000000' AS DateTime2), CAST(N'2022-03-04T15:25:07.0000000' AS DateTime2), 70, 13, N'Export', N'导出', N'Export')
INSERT [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'541d9045-47b2-4629-0f2e-08d9fdad00ab', CAST(N'2022-03-04T15:25:07.0000000' AS DateTime2), CAST(N'2022-03-04T15:25:07.0000000' AS DateTime2), 80, 13, N'Print', N'打印', N'Print')
INSERT [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'13f3f74d-c6fc-4488-0f2f-08d9fdad00ab', CAST(N'2022-03-04T15:25:14.0000000' AS DateTime2), CAST(N'2022-03-04T15:25:14.0000000' AS DateTime2), 10, 15, N'Display', N'显示', N'Display')
INSERT [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'cce82eb4-7fc5-4308-0f30-08d9fdad00ab', CAST(N'2022-03-04T15:25:14.0000000' AS DateTime2), CAST(N'2022-03-04T15:25:14.0000000' AS DateTime2), 20, 15, N'Insert', N'添加', N'Insert')
INSERT [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'8564e4d8-d7f4-4f12-0f31-08d9fdad00ab', CAST(N'2022-03-04T15:25:14.0000000' AS DateTime2), CAST(N'2022-03-04T15:25:14.0000000' AS DateTime2), 30, 15, N'Update', N'修改', N'Update')
INSERT [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'0ad6a459-1d9d-4512-0f32-08d9fdad00ab', CAST(N'2022-03-04T15:25:14.0000000' AS DateTime2), CAST(N'2022-03-04T15:25:14.0000000' AS DateTime2), 40, 15, N'Delete', N'删除', N'Delete')
INSERT [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'37d3e492-62da-47a4-0f33-08d9fdad00ab', CAST(N'2022-03-04T15:25:14.0000000' AS DateTime2), CAST(N'2022-03-04T15:25:14.0000000' AS DateTime2), 50, 15, N'Save', N'保存', N'Save')
INSERT [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'beb87004-5cfb-417a-0f34-08d9fdad00ab', CAST(N'2022-03-04T15:25:14.0000000' AS DateTime2), CAST(N'2022-03-04T15:25:14.0000000' AS DateTime2), 60, 15, N'Search', N'检索', N'Search')
INSERT [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'a46e07d3-c722-4548-0f35-08d9fdad00ab', CAST(N'2022-03-04T15:25:14.0000000' AS DateTime2), CAST(N'2022-03-04T15:25:14.0000000' AS DateTime2), 70, 15, N'Export', N'导出', N'Export')
INSERT [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'c8edbb79-567e-461b-0f36-08d9fdad00ab', CAST(N'2022-03-04T15:25:14.0000000' AS DateTime2), CAST(N'2022-03-04T15:25:14.0000000' AS DateTime2), 80, 15, N'Print', N'打印', N'Print')
INSERT [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'550f874b-e804-44a0-0f37-08d9fdad00ab', CAST(N'2022-04-22T22:24:03.0000000' AS DateTime2), CAST(N'2022-04-22T22:24:03.0000000' AS DateTime2), 10, 16, N'Display', N'显示', N'Display')
INSERT [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'c67a0abe-daec-491b-0f38-08d9fdad00ab', CAST(N'2022-04-22T22:24:03.0000000' AS DateTime2), CAST(N'2022-04-22T22:24:03.0000000' AS DateTime2), 20, 16, N'Insert', N'添加', N'Insert')
INSERT [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'823ac05d-65e4-4216-0f39-08d9fdad00ab', CAST(N'2022-04-22T22:24:03.0000000' AS DateTime2), CAST(N'2022-04-22T22:24:03.0000000' AS DateTime2), 30, 16, N'Update', N'修改', N'Update')
INSERT [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'bd6ae6da-1ca6-46c2-0f3a-08d9fdad00ab', CAST(N'2022-04-22T22:24:03.0000000' AS DateTime2), CAST(N'2022-04-22T22:24:03.0000000' AS DateTime2), 40, 16, N'Delete', N'删除', N'Delete')
INSERT [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'14783a71-e265-4d6b-0f3b-08d9fdad00ab', CAST(N'2022-04-22T22:24:03.0000000' AS DateTime2), CAST(N'2022-04-22T22:24:03.0000000' AS DateTime2), 50, 16, N'Save', N'保存', N'Save')
INSERT [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'2fea8f87-2a13-4c95-0f3c-08d9fdad00ab', CAST(N'2022-04-22T22:24:03.0000000' AS DateTime2), CAST(N'2022-04-22T22:24:03.0000000' AS DateTime2), 60, 16, N'Search', N'检索', N'Search')
INSERT [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'437fbf85-8704-4e87-0f3d-08d9fdad00ab', CAST(N'2022-04-22T22:24:03.0000000' AS DateTime2), CAST(N'2022-04-22T22:24:03.0000000' AS DateTime2), 70, 16, N'Export', N'导出', N'Export')
INSERT [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'6b009415-eadf-4dab-0f3e-08d9fdad00ab', CAST(N'2022-04-22T22:24:03.0000000' AS DateTime2), CAST(N'2022-04-22T22:24:03.0000000' AS DateTime2), 80, 16, N'Print', N'打印', N'Print')
INSERT [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'53fdb4a0-ca6e-4568-0f3f-08d9fdad00ab', CAST(N'2022-03-04T15:25:21.0000000' AS DateTime2), CAST(N'2022-03-04T15:25:21.0000000' AS DateTime2), 10, 17, N'Display', N'显示', N'Display')
INSERT [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'86465238-c51c-45d5-0f40-08d9fdad00ab', CAST(N'2022-03-04T15:25:21.0000000' AS DateTime2), CAST(N'2022-03-04T15:25:21.0000000' AS DateTime2), 20, 17, N'Insert', N'添加', N'Insert')
INSERT [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'86ff83fd-d34a-4290-0f41-08d9fdad00ab', CAST(N'2022-03-04T15:25:21.0000000' AS DateTime2), CAST(N'2022-03-04T15:25:21.0000000' AS DateTime2), 30, 17, N'Update', N'修改', N'Update')
INSERT [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'7ea8f706-bfe5-42b2-0f42-08d9fdad00ab', CAST(N'2022-03-04T15:25:21.0000000' AS DateTime2), CAST(N'2022-03-04T15:25:21.0000000' AS DateTime2), 40, 17, N'Delete', N'删除', N'Delete')
INSERT [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'dee401b1-e20e-496e-0f43-08d9fdad00ab', CAST(N'2022-03-04T15:25:21.0000000' AS DateTime2), CAST(N'2022-03-04T15:25:21.0000000' AS DateTime2), 50, 17, N'Save', N'保存', N'Save')
INSERT [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'0b27e69f-af16-4481-0f44-08d9fdad00ab', CAST(N'2022-03-04T15:25:21.0000000' AS DateTime2), CAST(N'2022-03-04T15:25:21.0000000' AS DateTime2), 60, 17, N'Search', N'检索', N'Search')
INSERT [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'a726455f-1c29-4be0-0f45-08d9fdad00ab', CAST(N'2022-03-04T15:25:21.0000000' AS DateTime2), CAST(N'2022-03-04T15:25:21.0000000' AS DateTime2), 70, 17, N'Export', N'导出', N'Export')
INSERT [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'0caa6e7d-92b0-4814-0f46-08d9fdad00ab', CAST(N'2022-03-04T15:25:21.0000000' AS DateTime2), CAST(N'2022-03-04T15:25:21.0000000' AS DateTime2), 80, 17, N'Print', N'打印', N'Print')
INSERT [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'db3ab8bd-7709-41a2-0f47-08d9fdad00ab', CAST(N'2022-03-04T15:25:28.0000000' AS DateTime2), CAST(N'2022-03-04T15:25:28.0000000' AS DateTime2), 10, 25, N'Display', N'显示', N'Display')
INSERT [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'fe6465bf-e429-45bd-0f48-08d9fdad00ab', CAST(N'2022-03-04T15:25:28.0000000' AS DateTime2), CAST(N'2022-03-04T15:25:28.0000000' AS DateTime2), 20, 25, N'Insert', N'添加', N'Insert')
INSERT [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'4a67fcdb-a7a9-4e3c-0f49-08d9fdad00ab', CAST(N'2022-03-04T15:25:28.0000000' AS DateTime2), CAST(N'2022-03-04T15:25:28.0000000' AS DateTime2), 30, 25, N'Update', N'修改', N'Update')
INSERT [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'20ab5395-d57c-49db-0f4a-08d9fdad00ab', CAST(N'2022-03-04T15:25:28.0000000' AS DateTime2), CAST(N'2022-03-04T15:25:28.0000000' AS DateTime2), 40, 25, N'Delete', N'删除', N'Delete')
INSERT [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'41cb1942-573a-4d63-0f4b-08d9fdad00ab', CAST(N'2022-03-04T15:25:28.0000000' AS DateTime2), CAST(N'2022-03-04T15:25:28.0000000' AS DateTime2), 50, 25, N'Save', N'保存', N'Save')
INSERT [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'7e0f6c84-d7f1-4243-0f4c-08d9fdad00ab', CAST(N'2022-03-04T15:25:28.0000000' AS DateTime2), CAST(N'2022-03-04T15:25:28.0000000' AS DateTime2), 60, 25, N'Search', N'检索', N'Search')
INSERT [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'1e69df5d-d1e9-4bc8-0f4d-08d9fdad00ab', CAST(N'2022-03-04T15:25:28.0000000' AS DateTime2), CAST(N'2022-03-04T15:25:28.0000000' AS DateTime2), 70, 25, N'Export', N'导出', N'Export')
INSERT [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'4bbbe120-0cc6-4a08-0f4e-08d9fdad00ab', CAST(N'2022-03-04T15:25:28.0000000' AS DateTime2), CAST(N'2022-03-04T15:25:28.0000000' AS DateTime2), 80, 25, N'Print', N'打印', N'Print')
INSERT [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'45e2ca86-4823-4fb9-0f57-08d9fdad00ab', CAST(N'2022-03-04T15:25:36.0000000' AS DateTime2), CAST(N'2022-03-04T15:25:36.0000000' AS DateTime2), 10, 20, N'Display', N'显示', N'Display')
INSERT [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'3e44c6f5-e090-40a1-0f58-08d9fdad00ab', CAST(N'2022-03-04T15:25:36.0000000' AS DateTime2), CAST(N'2022-03-04T15:25:36.0000000' AS DateTime2), 20, 20, N'Insert', N'添加', N'Insert')
INSERT [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'22a675f6-efda-481d-0f59-08d9fdad00ab', CAST(N'2022-03-04T15:25:36.0000000' AS DateTime2), CAST(N'2022-03-04T15:25:36.0000000' AS DateTime2), 30, 20, N'Update', N'修改', N'Update')
INSERT [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'69da651e-787b-42e5-0f5a-08d9fdad00ab', CAST(N'2022-03-04T15:25:36.0000000' AS DateTime2), CAST(N'2022-03-04T15:25:36.0000000' AS DateTime2), 40, 20, N'Delete', N'删除', N'Delete')
INSERT [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'616c4e4a-fb61-49cf-0f5b-08d9fdad00ab', CAST(N'2022-03-04T15:25:36.0000000' AS DateTime2), CAST(N'2022-03-04T15:25:36.0000000' AS DateTime2), 50, 20, N'Save', N'保存', N'Save')
INSERT [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'5e4e87bd-c179-4b5b-0f5c-08d9fdad00ab', CAST(N'2022-03-04T15:25:36.0000000' AS DateTime2), CAST(N'2022-03-04T15:25:36.0000000' AS DateTime2), 60, 20, N'Search', N'检索', N'Search')
INSERT [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'54743c86-ac73-4345-0f5d-08d9fdad00ab', CAST(N'2022-03-04T15:25:36.0000000' AS DateTime2), CAST(N'2022-03-04T15:25:36.0000000' AS DateTime2), 70, 20, N'Export', N'导出', N'Export')
INSERT [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'2469188c-21de-492a-0f5e-08d9fdad00ab', CAST(N'2022-03-04T15:25:36.0000000' AS DateTime2), CAST(N'2022-03-04T15:25:36.0000000' AS DateTime2), 80, 20, N'Print', N'打印', N'Print')
INSERT [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'c6ba141b-99ba-4114-0f5f-08d9fdad00ab', CAST(N'2022-03-04T15:25:40.0000000' AS DateTime2), CAST(N'2022-03-04T15:25:40.0000000' AS DateTime2), 10, 21, N'Display', N'显示', N'Display')
INSERT [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'0a85e4fd-5a1c-47f6-0f60-08d9fdad00ab', CAST(N'2022-03-04T15:25:40.0000000' AS DateTime2), CAST(N'2022-03-04T15:25:40.0000000' AS DateTime2), 20, 21, N'Insert', N'添加', N'Insert')
INSERT [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'f4c73ac0-c66d-4988-0f61-08d9fdad00ab', CAST(N'2022-03-04T15:25:40.0000000' AS DateTime2), CAST(N'2022-03-04T15:25:40.0000000' AS DateTime2), 30, 21, N'Update', N'修改', N'Update')
INSERT [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'3cb3cbc7-9e45-4cc3-0f62-08d9fdad00ab', CAST(N'2022-03-04T15:25:40.0000000' AS DateTime2), CAST(N'2022-03-04T15:25:40.0000000' AS DateTime2), 40, 21, N'Delete', N'删除', N'Delete')
INSERT [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'6b209d5a-b366-4a61-0f63-08d9fdad00ab', CAST(N'2022-03-04T15:25:40.0000000' AS DateTime2), CAST(N'2022-03-04T15:25:40.0000000' AS DateTime2), 50, 21, N'Save', N'保存', N'Save')
INSERT [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'f36b9b06-2826-425f-0f64-08d9fdad00ab', CAST(N'2022-03-04T15:25:40.0000000' AS DateTime2), CAST(N'2022-03-04T15:25:40.0000000' AS DateTime2), 60, 21, N'Search', N'检索', N'Search')
INSERT [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'a9503588-e6f7-420b-0f65-08d9fdad00ab', CAST(N'2022-03-04T15:25:40.0000000' AS DateTime2), CAST(N'2022-03-04T15:25:40.0000000' AS DateTime2), 70, 21, N'Export', N'导出', N'Export')
INSERT [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'c9e5fff0-6744-47d7-0f66-08d9fdad00ab', CAST(N'2022-03-04T15:25:40.0000000' AS DateTime2), CAST(N'2022-03-04T15:25:40.0000000' AS DateTime2), 80, 21, N'Print', N'打印', N'Print')
INSERT [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'9426768e-b90d-41e1-0f67-08d9fdad00ab', CAST(N'2022-03-04T15:25:50.0000000' AS DateTime2), CAST(N'2022-03-04T15:25:50.0000000' AS DateTime2), 10, 23, N'Display', N'显示', N'Display')
INSERT [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'e991934a-0d30-416b-0f68-08d9fdad00ab', CAST(N'2022-03-04T15:25:50.0000000' AS DateTime2), CAST(N'2022-03-04T15:25:50.0000000' AS DateTime2), 20, 23, N'Insert', N'添加', N'Insert')
INSERT [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'b98a365e-6fb4-4efb-0f69-08d9fdad00ab', CAST(N'2022-03-04T15:25:50.0000000' AS DateTime2), CAST(N'2022-03-04T15:25:50.0000000' AS DateTime2), 30, 23, N'Update', N'修改', N'Update')
INSERT [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'92b39a10-3927-4ee7-0f6a-08d9fdad00ab', CAST(N'2022-03-04T15:25:50.0000000' AS DateTime2), CAST(N'2022-03-04T15:25:50.0000000' AS DateTime2), 40, 23, N'Delete', N'删除', N'Delete')
INSERT [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'a03d56d7-4b0d-47cc-0f6b-08d9fdad00ab', CAST(N'2022-03-04T15:25:50.0000000' AS DateTime2), CAST(N'2022-03-04T15:25:50.0000000' AS DateTime2), 50, 23, N'Save', N'保存', N'Save')
INSERT [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'e2319118-42cc-41a2-0f6c-08d9fdad00ab', CAST(N'2022-03-04T15:25:50.0000000' AS DateTime2), CAST(N'2022-03-04T15:25:50.0000000' AS DateTime2), 60, 23, N'Search', N'检索', N'Search')
INSERT [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'0984a2e1-3722-41d4-0f6d-08d9fdad00ab', CAST(N'2022-03-04T15:25:50.0000000' AS DateTime2), CAST(N'2022-03-04T15:25:50.0000000' AS DateTime2), 70, 23, N'Export', N'导出', N'Export')
INSERT [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'1d831d57-6634-45d7-0f6e-08d9fdad00ab', CAST(N'2022-03-04T15:25:50.0000000' AS DateTime2), CAST(N'2022-03-04T15:25:50.0000000' AS DateTime2), 80, 23, N'Print', N'打印', N'Print')
INSERT [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'c77c812a-1601-4311-0f70-08d9fdad00ab', CAST(N'2022-03-04T15:26:00.0000000' AS DateTime2), CAST(N'2022-03-04T15:26:00.0000000' AS DateTime2), 10, 19, N'Display', N'显示', N'Display')
INSERT [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'3f6d0af7-5386-4d3a-0f71-08d9fdad00ab', CAST(N'2022-03-04T15:40:52.0000000' AS DateTime2), CAST(N'2022-03-04T15:40:52.0000000' AS DateTime2), 10, 28, N'Display', N'显示', N'Display')
INSERT [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'55750f56-edc9-4771-e2d6-08d9fdefa8f8', CAST(N'2022-03-04T23:00:02.0000000' AS DateTime2), CAST(N'2022-03-04T23:00:02.0000000' AS DateTime2), 10, 24, N'Display', N'显示', N'Display')
INSERT [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'7694fbf5-e28d-424c-e2d7-08d9fdefa8f8', CAST(N'2022-03-04T23:00:02.0000000' AS DateTime2), CAST(N'2022-03-04T23:00:02.0000000' AS DateTime2), 40, 24, N'Delete', N'删除', N'Delete')
INSERT [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'2186550d-246c-4552-e2d8-08d9fdefa8f8', CAST(N'2022-03-04T23:00:02.0000000' AS DateTime2), CAST(N'2022-03-04T23:00:02.0000000' AS DateTime2), 60, 24, N'Search', N'检索', N'Search')
INSERT [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'687254ae-0d76-4788-a4e8-08da1a9d9949', CAST(N'2022-04-10T10:56:17.0000000' AS DateTime2), CAST(N'2022-04-10T10:56:17.0000000' AS DateTime2), 10, 33, N'Display', N'显示', N'Display')
INSERT [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'0073cce2-ff42-496c-9ff6-08da204fcecb', CAST(N'2022-04-17T20:40:12.0000000' AS DateTime2), CAST(N'2022-04-17T20:40:12.0000000' AS DateTime2), 10, 36, N'Display', N'显示', N'Display')
INSERT [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'48f0a694-0539-4e69-a2e4-08da3d8e6577', CAST(N'2022-05-24T22:05:57.0000000' AS DateTime2), CAST(N'2022-05-24T22:05:57.0000000' AS DateTime2), 10, 31, N'Display', N'显示', N'Display')
INSERT [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'4dbf096d-d3d3-4565-a2e5-08da3d8e6577', CAST(N'2022-05-24T22:05:57.0000000' AS DateTime2), CAST(N'2022-05-24T22:05:57.0000000' AS DateTime2), 40, 31, N'Delete', N'删除', N'Delete')
INSERT [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'38b4704d-7c5d-4f89-a2e7-08da3d8e6577', CAST(N'2022-05-24T22:05:57.0000000' AS DateTime2), CAST(N'2022-05-24T22:05:57.0000000' AS DateTime2), 60, 31, N'Search', N'检索', N'Search')
GO
SET IDENTITY_INSERT [dbo].[SysOrganization] ON 

INSERT [dbo].[SysOrganization] ([Id], [Name], [OrderNumber], [LevelCode], [Leader], [Phone], [Email], [State], [ParentId], [LastModificationTime], [CreationTime]) VALUES (1, N'阿里巴巴集团', 1, N'1', N'hzy', N'18410912184', N'18410912184@qq.com', 1, NULL, CAST(N'2021-05-27T20:50:31.0000000' AS DateTime2), CAST(N'2021-05-27T20:50:31.0000000' AS DateTime2))
INSERT [dbo].[SysOrganization] ([Id], [Name], [OrderNumber], [LevelCode], [Leader], [Phone], [Email], [State], [ParentId], [LastModificationTime], [CreationTime]) VALUES (2, N'北京分部', 3, N'1.2', N'北京分部', N'132123', N'13131', 1, 1, CAST(N'2021-12-28T16:13:34.0000000' AS DateTime2), CAST(N'2021-05-27T22:33:44.0000000' AS DateTime2))
INSERT [dbo].[SysOrganization] ([Id], [Name], [OrderNumber], [LevelCode], [Leader], [Phone], [Email], [State], [ParentId], [LastModificationTime], [CreationTime]) VALUES (3, N'市场部门', 1, N'1.2.3', N'市场部门', N'234124234', N'234234@qq.com', 1, 2, CAST(N'2021-05-27T22:33:57.0000000' AS DateTime2), CAST(N'2021-05-27T22:33:57.0000000' AS DateTime2))
INSERT [dbo].[SysOrganization] ([Id], [Name], [OrderNumber], [LevelCode], [Leader], [Phone], [Email], [State], [ParentId], [LastModificationTime], [CreationTime]) VALUES (4, N'财务部门', 2, N'1.2.4', N'财务部门', N'435543535', N'123@qq.com', 1, 2, CAST(N'2021-05-27T22:34:11.0000000' AS DateTime2), CAST(N'2021-05-27T22:34:11.0000000' AS DateTime2))
INSERT [dbo].[SysOrganization] ([Id], [Name], [OrderNumber], [LevelCode], [Leader], [Phone], [Email], [State], [ParentId], [LastModificationTime], [CreationTime]) VALUES (5, N'成都分部', 2, N'1.5', N'成都分部', N'123123123', N'123@qq.com', 1, 1, CAST(N'2021-05-27T22:31:45.0000000' AS DateTime2), CAST(N'2021-05-27T21:01:50.0000000' AS DateTime2))
INSERT [dbo].[SysOrganization] ([Id], [Name], [OrderNumber], [LevelCode], [Leader], [Phone], [Email], [State], [ParentId], [LastModificationTime], [CreationTime]) VALUES (7, N'研发部门', 1, N'1.5.7', N'研发部门', N'1234323423', N'12312@qq.com', 1, 5, CAST(N'2021-05-27T22:32:29.0000000' AS DateTime2), CAST(N'2021-05-27T22:32:08.0000000' AS DateTime2))
INSERT [dbo].[SysOrganization] ([Id], [Name], [OrderNumber], [LevelCode], [Leader], [Phone], [Email], [State], [ParentId], [LastModificationTime], [CreationTime]) VALUES (9, N'运维部门', 4, N'1.5.9', N'运维部门', N'1232133452', N'12341@qq.com', 1, 5, CAST(N'2022-03-08T17:07:47.0000000' AS DateTime2), CAST(N'2021-05-27T22:33:25.0000000' AS DateTime2))
INSERT [dbo].[SysOrganization] ([Id], [Name], [OrderNumber], [LevelCode], [Leader], [Phone], [Email], [State], [ParentId], [LastModificationTime], [CreationTime]) VALUES (10, N'测试部门', 3, N'1.5.10', N'测试部门', N'12313', N'123123@qq.com', 1, 5, CAST(N'2021-05-27T22:32:59.0000000' AS DateTime2), CAST(N'2021-05-27T22:32:59.0000000' AS DateTime2))
INSERT [dbo].[SysOrganization] ([Id], [Name], [OrderNumber], [LevelCode], [Leader], [Phone], [Email], [State], [ParentId], [LastModificationTime], [CreationTime]) VALUES (11, N'技术部门', 2, N'1.5.11', N'技术部门', N'12345678911', N'12345678901@qq.com', 1, 5, CAST(N'2022-03-08T17:07:37.0000000' AS DateTime2), CAST(N'2022-03-08T17:00:20.0000000' AS DateTime2))
SET IDENTITY_INSERT [dbo].[SysOrganization] OFF
GO
INSERT [dbo].[SysPost] ([Id], [Number], [Code], [Name], [State], [Remarks], [LastModificationTime], [CreationTime]) VALUES (N'f0bd38c2-f1de-4bd9-e2db-08da00a93622', 5, N'dotnet_engineer', N'DotNet软件工程师', 1, NULL, CAST(N'2022-03-08T10:13:18.0000000' AS DateTime2), CAST(N'2022-03-08T10:13:18.0000000' AS DateTime2))
INSERT [dbo].[SysPost] ([Id], [Number], [Code], [Name], [State], [Remarks], [LastModificationTime], [CreationTime]) VALUES (N'0716b4b0-9a06-43e9-8ae8-82c74875f83e', 2, N'se', N'项目经理', 1, NULL, CAST(N'2021-05-27T20:26:35.0000000' AS DateTime2), CAST(N'2021-05-27T20:26:35.0000000' AS DateTime2))
INSERT [dbo].[SysPost] ([Id], [Number], [Code], [Name], [State], [Remarks], [LastModificationTime], [CreationTime]) VALUES (N'96927c30-41d0-4ced-8e29-cbed35c90fb0', 1, N'ceo', N'董事长', 1, NULL, CAST(N'2021-05-27T20:26:22.0000000' AS DateTime2), CAST(N'2021-05-27T20:26:22.0000000' AS DateTime2))
INSERT [dbo].[SysPost] ([Id], [Number], [Code], [Name], [State], [Remarks], [LastModificationTime], [CreationTime]) VALUES (N'e46af329-6d08-442c-9837-f22cff954411', 4, N'user', N'普通员工', 1, NULL, CAST(N'2022-04-23T21:50:55.0000000' AS DateTime2), CAST(N'2021-05-27T20:26:52.0000000' AS DateTime2))
INSERT [dbo].[SysPost] ([Id], [Number], [Code], [Name], [State], [Remarks], [LastModificationTime], [CreationTime]) VALUES (N'f0c67537-8094-429a-b474-f54ac518609e', 3, N'hr', N'人力资源', 1, NULL, CAST(N'2021-05-27T20:26:44.0000000' AS DateTime2), CAST(N'2021-05-27T20:26:44.0000000' AS DateTime2))
GO
INSERT [dbo].[SysRole] ([Id], [LastModificationTime], [CreationTime], [Number], [Name], [Remark], [DeleteLock]) VALUES (N'18fa4771-6f58-46a3-80d2-6f0f5e9972e3', CAST(N'2021-01-10T11:25:12.0000000' AS DateTime2), CAST(N'2016-07-06T17:59:20.0000000' AS DateTime2), 1, N'超级管理员', N'拥有所有权限', 1)
INSERT [dbo].[SysRole] ([Id], [LastModificationTime], [CreationTime], [Number], [Name], [Remark], [DeleteLock]) VALUES (N'40ff1844-c099-4061-98e0-cd6e544fcfd3', CAST(N'2021-01-30T00:51:17.0000000' AS DateTime2), CAST(N'2016-07-06T17:59:20.0000000' AS DateTime2), 2, N'普通用户', N'普通用户', 1)
GO
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [MenuFunctionId], [LastModificationTime], [CreationTime]) VALUES (N'723496de-edf5-4abb-8913-08da250bdf25', N'40ff1844-c099-4061-98e0-cd6e544fcfd3', 2, N'a7cd04db-bbe3-49b6-0f1e-08d9fdad00ab', CAST(N'2022-04-23T17:30:14.0000000' AS DateTime2), CAST(N'2022-04-23T17:30:14.0000000' AS DateTime2))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [MenuFunctionId], [LastModificationTime], [CreationTime]) VALUES (N'47cf05e0-72b6-486f-8914-08da250bdf25', N'40ff1844-c099-4061-98e0-cd6e544fcfd3', 3, N'f64cfe50-1ef1-457f-0f20-08d9fdad00ab', CAST(N'2022-04-23T17:30:14.0000000' AS DateTime2), CAST(N'2022-04-23T17:30:14.0000000' AS DateTime2))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [MenuFunctionId], [LastModificationTime], [CreationTime]) VALUES (N'cb8ad405-affd-4aa9-8915-08da250bdf25', N'40ff1844-c099-4061-98e0-cd6e544fcfd3', 5, N'a1ddd02f-8c21-4d79-0f21-08d9fdad00ab', CAST(N'2022-04-23T17:30:14.0000000' AS DateTime2), CAST(N'2022-04-23T17:30:14.0000000' AS DateTime2))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [MenuFunctionId], [LastModificationTime], [CreationTime]) VALUES (N'03e8fe58-17fe-4284-8916-08da250bdf25', N'40ff1844-c099-4061-98e0-cd6e544fcfd3', 6, N'1cb6fbe1-4a6c-4aad-0f22-08d9fdad00ab', CAST(N'2022-04-23T17:30:14.0000000' AS DateTime2), CAST(N'2022-04-23T17:30:14.0000000' AS DateTime2))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [MenuFunctionId], [LastModificationTime], [CreationTime]) VALUES (N'07e218fc-2298-4954-8917-08da250bdf25', N'40ff1844-c099-4061-98e0-cd6e544fcfd3', 8, N'd2e6ea60-2cf6-478a-0f23-08d9fdad00ab', CAST(N'2022-04-23T17:30:14.0000000' AS DateTime2), CAST(N'2022-04-23T17:30:14.0000000' AS DateTime2))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [MenuFunctionId], [LastModificationTime], [CreationTime]) VALUES (N'd44f1f28-b588-4b68-8918-08da250bdf25', N'40ff1844-c099-4061-98e0-cd6e544fcfd3', 9, N'b7533a90-dae4-4263-0f24-08d9fdad00ab', CAST(N'2022-04-23T17:30:14.0000000' AS DateTime2), CAST(N'2022-04-23T17:30:14.0000000' AS DateTime2))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [MenuFunctionId], [LastModificationTime], [CreationTime]) VALUES (N'a9b2d796-7fb4-4d61-8919-08da250bdf25', N'40ff1844-c099-4061-98e0-cd6e544fcfd3', 10, N'ec535908-8671-4928-0f25-08d9fdad00ab', CAST(N'2022-04-23T17:30:14.0000000' AS DateTime2), CAST(N'2022-04-23T17:30:14.0000000' AS DateTime2))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [MenuFunctionId], [LastModificationTime], [CreationTime]) VALUES (N'234fac8d-c4ee-46e2-891a-08da250bdf25', N'40ff1844-c099-4061-98e0-cd6e544fcfd3', 11, N'3bc0e68f-d03d-4e99-0f26-08d9fdad00ab', CAST(N'2022-04-23T17:30:14.0000000' AS DateTime2), CAST(N'2022-04-23T17:30:14.0000000' AS DateTime2))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [MenuFunctionId], [LastModificationTime], [CreationTime]) VALUES (N'3c0cbca5-310f-41db-891b-08da250bdf25', N'40ff1844-c099-4061-98e0-cd6e544fcfd3', 13, N'eb958545-6449-40db-0f27-08d9fdad00ab', CAST(N'2022-04-23T17:30:14.0000000' AS DateTime2), CAST(N'2022-04-23T17:30:14.0000000' AS DateTime2))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [MenuFunctionId], [LastModificationTime], [CreationTime]) VALUES (N'b03f0d20-4079-462a-891c-08da250bdf25', N'40ff1844-c099-4061-98e0-cd6e544fcfd3', 13, N'b5881044-afb8-40b2-0f28-08d9fdad00ab', CAST(N'2022-04-23T17:30:14.0000000' AS DateTime2), CAST(N'2022-04-23T17:30:14.0000000' AS DateTime2))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [MenuFunctionId], [LastModificationTime], [CreationTime]) VALUES (N'4854c7f2-e61b-4a3a-891d-08da250bdf25', N'40ff1844-c099-4061-98e0-cd6e544fcfd3', 13, N'106fb69a-8bb5-4559-0f29-08d9fdad00ab', CAST(N'2022-04-23T17:30:14.0000000' AS DateTime2), CAST(N'2022-04-23T17:30:14.0000000' AS DateTime2))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [MenuFunctionId], [LastModificationTime], [CreationTime]) VALUES (N'da031f6c-e0ec-4460-891e-08da250bdf25', N'40ff1844-c099-4061-98e0-cd6e544fcfd3', 13, N'f4621fbe-6b40-4454-0f2a-08d9fdad00ab', CAST(N'2022-04-23T17:30:14.0000000' AS DateTime2), CAST(N'2022-04-23T17:30:14.0000000' AS DateTime2))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [MenuFunctionId], [LastModificationTime], [CreationTime]) VALUES (N'8284a625-2407-44ca-891f-08da250bdf25', N'40ff1844-c099-4061-98e0-cd6e544fcfd3', 13, N'523b53b5-8159-4a16-0f2b-08d9fdad00ab', CAST(N'2022-04-23T17:30:14.0000000' AS DateTime2), CAST(N'2022-04-23T17:30:14.0000000' AS DateTime2))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [MenuFunctionId], [LastModificationTime], [CreationTime]) VALUES (N'3a82a6ed-573a-4cba-8920-08da250bdf25', N'40ff1844-c099-4061-98e0-cd6e544fcfd3', 13, N'a3754771-f6e9-4a23-0f2c-08d9fdad00ab', CAST(N'2022-04-23T17:30:14.0000000' AS DateTime2), CAST(N'2022-04-23T17:30:14.0000000' AS DateTime2))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [MenuFunctionId], [LastModificationTime], [CreationTime]) VALUES (N'f55a6ab8-e54f-4c31-8921-08da250bdf25', N'40ff1844-c099-4061-98e0-cd6e544fcfd3', 13, N'b96f977c-a36e-4e7f-0f2d-08d9fdad00ab', CAST(N'2022-04-23T17:30:14.0000000' AS DateTime2), CAST(N'2022-04-23T17:30:14.0000000' AS DateTime2))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [MenuFunctionId], [LastModificationTime], [CreationTime]) VALUES (N'aacc3780-8729-43df-8922-08da250bdf25', N'40ff1844-c099-4061-98e0-cd6e544fcfd3', 13, N'541d9045-47b2-4629-0f2e-08d9fdad00ab', CAST(N'2022-04-23T17:30:14.0000000' AS DateTime2), CAST(N'2022-04-23T17:30:14.0000000' AS DateTime2))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [MenuFunctionId], [LastModificationTime], [CreationTime]) VALUES (N'47d72c2c-d4e1-4d3e-8923-08da250bdf25', N'40ff1844-c099-4061-98e0-cd6e544fcfd3', 15, N'13f3f74d-c6fc-4488-0f2f-08d9fdad00ab', CAST(N'2022-04-23T17:30:14.0000000' AS DateTime2), CAST(N'2022-04-23T17:30:14.0000000' AS DateTime2))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [MenuFunctionId], [LastModificationTime], [CreationTime]) VALUES (N'd05aadea-113c-4d48-8924-08da250bdf25', N'40ff1844-c099-4061-98e0-cd6e544fcfd3', 19, N'c77c812a-1601-4311-0f70-08d9fdad00ab', CAST(N'2022-04-23T17:30:14.0000000' AS DateTime2), CAST(N'2022-04-23T17:30:14.0000000' AS DateTime2))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [MenuFunctionId], [LastModificationTime], [CreationTime]) VALUES (N'd461b335-cc62-4af1-8925-08da250bdf25', N'40ff1844-c099-4061-98e0-cd6e544fcfd3', 28, N'3f6d0af7-5386-4d3a-0f71-08d9fdad00ab', CAST(N'2022-04-23T17:30:14.0000000' AS DateTime2), CAST(N'2022-04-23T17:30:14.0000000' AS DateTime2))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [MenuFunctionId], [LastModificationTime], [CreationTime]) VALUES (N'62941ac4-12b1-4427-8926-08da250bdf25', N'40ff1844-c099-4061-98e0-cd6e544fcfd3', 32, N'6c09c0c0-72fa-4842-0f1f-08d9fdad00ab', CAST(N'2022-04-23T17:30:14.0000000' AS DateTime2), CAST(N'2022-04-23T17:30:14.0000000' AS DateTime2))
GO
INSERT [dbo].[SysUser] ([Id], [LastModificationTime], [CreationTime], [Name], [LoginName], [Password], [Phone], [Email], [DeleteLock], [OrganizationId]) VALUES (N'5722af0f-2366-4fc9-62d5-08da00e3d8a0', CAST(N'2022-03-08T17:13:02.0000000' AS DateTime2), CAST(N'2022-03-08T17:13:02.0000000' AS DateTime2), N'杜甫', N'杜甫', N'46F94C8DE14FB36680850768FF1B7F2A', N'12345678900', N'12345678900@qq.com', 0, 7)
INSERT [dbo].[SysUser] ([Id], [LastModificationTime], [CreationTime], [Name], [LoginName], [Password], [Phone], [Email], [DeleteLock], [OrganizationId]) VALUES (N'4fd6a740-0cf1-4975-62d6-08da00e3d8a0', CAST(N'2022-03-08T17:14:13.0000000' AS DateTime2), CAST(N'2022-03-08T17:14:13.0000000' AS DateTime2), N'李商隐', N'李商隐', N'46F94C8DE14FB36680850768FF1B7F2A', N'12345678900', N'12345678900@qq.com', 0, 7)
INSERT [dbo].[SysUser] ([Id], [LastModificationTime], [CreationTime], [Name], [LoginName], [Password], [Phone], [Email], [DeleteLock], [OrganizationId]) VALUES (N'e225e163-31c9-4da9-62d7-08da00e3d8a0', CAST(N'2022-03-08T17:15:07.0000000' AS DateTime2), CAST(N'2022-03-08T17:15:07.0000000' AS DateTime2), N'苏轼', N'苏轼', N'46F94C8DE14FB36680850768FF1B7F2A', N'12345678900', N'12345678900@qq.com', 0, 7)
INSERT [dbo].[SysUser] ([Id], [LastModificationTime], [CreationTime], [Name], [LoginName], [Password], [Phone], [Email], [DeleteLock], [OrganizationId]) VALUES (N'3739f349-7995-4c63-62d8-08da00e3d8a0', CAST(N'2022-03-08T17:17:58.0000000' AS DateTime2), CAST(N'2022-03-08T17:17:58.0000000' AS DateTime2), N'白居易', N'白居易', N'46F94C8DE14FB36680850768FF1B7F2A', N'12345678900', N'12345678900@qq.com', 0, 7)
INSERT [dbo].[SysUser] ([Id], [LastModificationTime], [CreationTime], [Name], [LoginName], [Password], [Phone], [Email], [DeleteLock], [OrganizationId]) VALUES (N'a3f9784c-5f00-4ec9-62d9-08da00e3d8a0', CAST(N'2022-03-08T17:19:22.0000000' AS DateTime2), CAST(N'2022-03-08T17:19:22.0000000' AS DateTime2), N'陶渊明 ', N'陶渊明 ', N'46F94C8DE14FB36680850768FF1B7F2A', N'12345678900', N'12345678900@qq.com', 0, 7)
INSERT [dbo].[SysUser] ([Id], [LastModificationTime], [CreationTime], [Name], [LoginName], [Password], [Phone], [Email], [DeleteLock], [OrganizationId]) VALUES (N'a1b6dafb-2b6a-4ff9-62da-08da00e3d8a0', CAST(N'2022-03-08T17:19:55.0000000' AS DateTime2), CAST(N'2022-03-08T17:19:55.0000000' AS DateTime2), N'屈原', N'屈原', N'46F94C8DE14FB36680850768FF1B7F2A', N'12345678900', N'12345678900@qq.com', 0, 7)
INSERT [dbo].[SysUser] ([Id], [LastModificationTime], [CreationTime], [Name], [LoginName], [Password], [Phone], [Email], [DeleteLock], [OrganizationId]) VALUES (N'cc186fe2-ee27-4292-62db-08da00e3d8a0', CAST(N'2022-03-08T17:20:20.0000000' AS DateTime2), CAST(N'2022-03-08T17:20:20.0000000' AS DateTime2), N'孟浩然', N'孟浩然', N'46F94C8DE14FB36680850768FF1B7F2A', N'12345678900', N'12345678900@qq.com', 0, 7)
INSERT [dbo].[SysUser] ([Id], [LastModificationTime], [CreationTime], [Name], [LoginName], [Password], [Phone], [Email], [DeleteLock], [OrganizationId]) VALUES (N'1550d6d4-0529-4fdd-62dc-08da00e3d8a0', CAST(N'2022-03-08T17:30:56.0000000' AS DateTime2), CAST(N'2022-03-08T17:21:56.0000000' AS DateTime2), N'鲁迅', N'鲁迅', N'46F94C8DE14FB36680850768FF1B7F2A', N'12345678900', N'12345678900@qq.com', 0, 7)
INSERT [dbo].[SysUser] ([Id], [LastModificationTime], [CreationTime], [Name], [LoginName], [Password], [Phone], [Email], [DeleteLock], [OrganizationId]) VALUES (N'0198459e-2034-4533-b843-5d227ad20740', CAST(N'2022-03-08T17:27:36.0000000' AS DateTime2), CAST(N'2017-04-06T19:55:53.0000000' AS DateTime2), N'超级管理员', N'admin', N'E10ADC3949BA59ABBE56E057F20F883E', N'10000000000', N'1396510655@qq.com', 1, 7)
INSERT [dbo].[SysUser] ([Id], [LastModificationTime], [CreationTime], [Name], [LoginName], [Password], [Phone], [Email], [DeleteLock], [OrganizationId]) VALUES (N'ac18f496-e93d-42f0-b59e-e321acc85335', CAST(N'2022-03-08T10:12:14.0000000' AS DateTime2), CAST(N'2017-04-06T19:55:53.0000000' AS DateTime2), N'李白', N'libai', N'E10ADC3949BA59ABBE56E057F20F883E', N'12345678900', N'12345678900@live.com', 1, 7)
GO
INSERT [dbo].[SysUserPost] ([Id], [UserId], [PostId], [LastModificationTime], [CreationTime]) VALUES (N'978fc672-d829-4dad-abc7-071810c5ad18', N'e225e163-31c9-4da9-62d7-08da00e3d8a0', N'e46af329-6d08-442c-9837-f22cff954411', CAST(N'2022-03-08T17:15:08.0000000' AS DateTime2), CAST(N'2022-03-08T17:15:08.0000000' AS DateTime2))
INSERT [dbo].[SysUserPost] ([Id], [UserId], [PostId], [LastModificationTime], [CreationTime]) VALUES (N'8100145c-9cd0-49bf-9a62-25c9e508bc1c', N'a1b6dafb-2b6a-4ff9-62da-08da00e3d8a0', N'f0bd38c2-f1de-4bd9-e2db-08da00a93622', CAST(N'2022-03-08T17:19:55.0000000' AS DateTime2), CAST(N'2022-03-08T17:19:55.0000000' AS DateTime2))
INSERT [dbo].[SysUserPost] ([Id], [UserId], [PostId], [LastModificationTime], [CreationTime]) VALUES (N'6133b794-efc7-4ebc-b7cf-2cf72fa768f8', N'1550d6d4-0529-4fdd-62dc-08da00e3d8a0', N'f0bd38c2-f1de-4bd9-e2db-08da00a93622', CAST(N'2022-04-23T17:55:33.0000000' AS DateTime2), CAST(N'2022-04-23T17:55:33.0000000' AS DateTime2))
INSERT [dbo].[SysUserPost] ([Id], [UserId], [PostId], [LastModificationTime], [CreationTime]) VALUES (N'575bf085-47bb-42f2-8b68-620cf460b164', N'0198459e-2034-4533-b843-5d227ad20740', N'96927c30-41d0-4ced-8e29-cbed35c90fb0', CAST(N'2022-03-08T17:29:22.0000000' AS DateTime2), CAST(N'2022-03-08T17:29:22.0000000' AS DateTime2))
INSERT [dbo].[SysUserPost] ([Id], [UserId], [PostId], [LastModificationTime], [CreationTime]) VALUES (N'af1bec7e-3309-4629-9606-72eefa1826b3', N'cc186fe2-ee27-4292-62db-08da00e3d8a0', N'f0bd38c2-f1de-4bd9-e2db-08da00a93622', CAST(N'2022-03-08T17:20:20.0000000' AS DateTime2), CAST(N'2022-03-08T17:20:20.0000000' AS DateTime2))
INSERT [dbo].[SysUserPost] ([Id], [UserId], [PostId], [LastModificationTime], [CreationTime]) VALUES (N'd4e0ae0b-3573-4901-8fd7-9bb2c88ebe94', N'3739f349-7995-4c63-62d8-08da00e3d8a0', N'f0bd38c2-f1de-4bd9-e2db-08da00a93622', CAST(N'2022-03-08T17:17:58.0000000' AS DateTime2), CAST(N'2022-03-08T17:17:58.0000000' AS DateTime2))
INSERT [dbo].[SysUserPost] ([Id], [UserId], [PostId], [LastModificationTime], [CreationTime]) VALUES (N'b97331a7-e281-4027-aade-9f068558826a', N'5722af0f-2366-4fc9-62d5-08da00e3d8a0', N'f0bd38c2-f1de-4bd9-e2db-08da00a93622', CAST(N'2022-03-08T17:13:02.0000000' AS DateTime2), CAST(N'2022-03-08T17:13:02.0000000' AS DateTime2))
INSERT [dbo].[SysUserPost] ([Id], [UserId], [PostId], [LastModificationTime], [CreationTime]) VALUES (N'0c1a55ba-6bd3-4810-a494-a6b9b7374d4d', N'ac18f496-e93d-42f0-b59e-e321acc85335', N'f0bd38c2-f1de-4bd9-e2db-08da00a93622', CAST(N'2022-03-08T10:13:35.0000000' AS DateTime2), CAST(N'2022-03-08T10:13:35.0000000' AS DateTime2))
INSERT [dbo].[SysUserPost] ([Id], [UserId], [PostId], [LastModificationTime], [CreationTime]) VALUES (N'e64ef93c-2ce5-4b1d-a5d0-a9de937c5a3f', N'e225e163-31c9-4da9-62d7-08da00e3d8a0', N'f0bd38c2-f1de-4bd9-e2db-08da00a93622', CAST(N'2022-03-08T17:15:07.0000000' AS DateTime2), CAST(N'2022-03-08T17:15:07.0000000' AS DateTime2))
INSERT [dbo].[SysUserPost] ([Id], [UserId], [PostId], [LastModificationTime], [CreationTime]) VALUES (N'6f671077-c98d-4106-9736-bf2edb6db58d', N'4fd6a740-0cf1-4975-62d6-08da00e3d8a0', N'e46af329-6d08-442c-9837-f22cff954411', CAST(N'2022-03-08T17:14:13.0000000' AS DateTime2), CAST(N'2022-03-08T17:14:13.0000000' AS DateTime2))
INSERT [dbo].[SysUserPost] ([Id], [UserId], [PostId], [LastModificationTime], [CreationTime]) VALUES (N'6c34f115-28dd-441a-81d5-f6598c97d44a', N'a3f9784c-5f00-4ec9-62d9-08da00e3d8a0', N'f0bd38c2-f1de-4bd9-e2db-08da00a93622', CAST(N'2022-03-08T17:19:22.0000000' AS DateTime2), CAST(N'2022-03-08T17:19:22.0000000' AS DateTime2))
INSERT [dbo].[SysUserPost] ([Id], [UserId], [PostId], [LastModificationTime], [CreationTime]) VALUES (N'b797ff16-d6f7-45db-83ec-f910b2612926', N'4fd6a740-0cf1-4975-62d6-08da00e3d8a0', N'f0bd38c2-f1de-4bd9-e2db-08da00a93622', CAST(N'2022-03-08T17:14:13.0000000' AS DateTime2), CAST(N'2022-03-08T17:14:13.0000000' AS DateTime2))
GO
INSERT [dbo].[SysUserRole] ([Id], [UserId], [RoleId], [LastModificationTime], [CreationTime]) VALUES (N'ad5014f2-92e8-4109-9ca4-013a92390f8b', N'cc186fe2-ee27-4292-62db-08da00e3d8a0', N'40ff1844-c099-4061-98e0-cd6e544fcfd3', CAST(N'2022-03-08T17:20:20.0000000' AS DateTime2), CAST(N'2022-03-08T17:20:20.0000000' AS DateTime2))
INSERT [dbo].[SysUserRole] ([Id], [UserId], [RoleId], [LastModificationTime], [CreationTime]) VALUES (N'ce9f61ac-79d8-426f-9066-36962c017bf6', N'5722af0f-2366-4fc9-62d5-08da00e3d8a0', N'40ff1844-c099-4061-98e0-cd6e544fcfd3', CAST(N'2022-03-08T17:13:02.0000000' AS DateTime2), CAST(N'2022-03-08T17:13:02.0000000' AS DateTime2))
INSERT [dbo].[SysUserRole] ([Id], [UserId], [RoleId], [LastModificationTime], [CreationTime]) VALUES (N'a646def7-0581-4ce9-947e-400360c339f9', N'a1b6dafb-2b6a-4ff9-62da-08da00e3d8a0', N'40ff1844-c099-4061-98e0-cd6e544fcfd3', CAST(N'2022-03-08T17:19:55.0000000' AS DateTime2), CAST(N'2022-03-08T17:19:55.0000000' AS DateTime2))
INSERT [dbo].[SysUserRole] ([Id], [UserId], [RoleId], [LastModificationTime], [CreationTime]) VALUES (N'dbc656a6-4264-417d-97d8-577e1218feca', N'a3f9784c-5f00-4ec9-62d9-08da00e3d8a0', N'40ff1844-c099-4061-98e0-cd6e544fcfd3', CAST(N'2022-03-08T17:19:22.0000000' AS DateTime2), CAST(N'2022-03-08T17:19:22.0000000' AS DateTime2))
INSERT [dbo].[SysUserRole] ([Id], [UserId], [RoleId], [LastModificationTime], [CreationTime]) VALUES (N'1fe23f57-97c5-4670-9064-88d7d972cd28', N'e225e163-31c9-4da9-62d7-08da00e3d8a0', N'40ff1844-c099-4061-98e0-cd6e544fcfd3', CAST(N'2022-03-08T17:15:07.0000000' AS DateTime2), CAST(N'2022-03-08T17:15:07.0000000' AS DateTime2))
INSERT [dbo].[SysUserRole] ([Id], [UserId], [RoleId], [LastModificationTime], [CreationTime]) VALUES (N'a9f8a23b-8c2f-43cc-97af-8ed6f4c4d097', N'4fd6a740-0cf1-4975-62d6-08da00e3d8a0', N'40ff1844-c099-4061-98e0-cd6e544fcfd3', CAST(N'2022-03-08T17:14:13.0000000' AS DateTime2), CAST(N'2022-03-08T17:14:13.0000000' AS DateTime2))
INSERT [dbo].[SysUserRole] ([Id], [UserId], [RoleId], [LastModificationTime], [CreationTime]) VALUES (N'66472deb-3a40-4e48-b3e7-931e166f9d56', N'1550d6d4-0529-4fdd-62dc-08da00e3d8a0', N'40ff1844-c099-4061-98e0-cd6e544fcfd3', CAST(N'2022-04-23T17:55:33.0000000' AS DateTime2), CAST(N'2022-04-23T17:55:33.0000000' AS DateTime2))
INSERT [dbo].[SysUserRole] ([Id], [UserId], [RoleId], [LastModificationTime], [CreationTime]) VALUES (N'45b7d5af-4d2c-465e-a4b6-99e52af9aee5', N'3739f349-7995-4c63-62d8-08da00e3d8a0', N'40ff1844-c099-4061-98e0-cd6e544fcfd3', CAST(N'2022-03-08T17:17:58.0000000' AS DateTime2), CAST(N'2022-03-08T17:17:58.0000000' AS DateTime2))
INSERT [dbo].[SysUserRole] ([Id], [UserId], [RoleId], [LastModificationTime], [CreationTime]) VALUES (N'1c9f81df-c8a0-45bb-a272-c84bd3af0c19', N'0198459e-2034-4533-b843-5d227ad20740', N'18fa4771-6f58-46a3-80d2-6f0f5e9972e3', CAST(N'2022-03-08T17:29:22.0000000' AS DateTime2), CAST(N'2022-03-08T17:29:22.0000000' AS DateTime2))
INSERT [dbo].[SysUserRole] ([Id], [UserId], [RoleId], [LastModificationTime], [CreationTime]) VALUES (N'fa1fdf14-3847-4194-894c-cd935a3dd9e6', N'ac18f496-e93d-42f0-b59e-e321acc85335', N'40ff1844-c099-4061-98e0-cd6e544fcfd3', CAST(N'2022-03-08T10:13:35.0000000' AS DateTime2), CAST(N'2022-03-08T10:13:35.0000000' AS DateTime2))
GO
ALTER TABLE [dbo].[SysDataAuthority] ADD  CONSTRAINT [DF_DataAuthority_CreationTime]  DEFAULT (getdate()) FOR [CreationTime]
GO
ALTER TABLE [dbo].[SysDataAuthorityCustom] ADD  CONSTRAINT [DF_SysDataAuthorityCustom_CreationTime]  DEFAULT (getdate()) FOR [CreationTime]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Flow', @level2type=N'COLUMN',@level2name=N'Number'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Flow', @level2type=N'COLUMN',@level2name=N'Code'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流程名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Flow', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Flow', @level2type=N'COLUMN',@level2name=N'Remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发起人Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FlowApproval', @level2type=N'COLUMN',@level2name=N'UserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发起人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FlowApproval', @level2type=N'COLUMN',@level2name=N'UserName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发起时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FlowApproval', @level2type=N'COLUMN',@level2name=N'LaunchTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'表单Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FlowApproval', @level2type=N'COLUMN',@level2name=N'FormId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流程Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FlowApproval', @level2type=N'COLUMN',@level2name=N'FlowId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流程编码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FlowApproval', @level2type=N'COLUMN',@level2name=N'FlowCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流程名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FlowApproval', @level2type=N'COLUMN',@level2name=N'FlowName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'步骤顺序号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FlowApprovalStep', @level2type=N'COLUMN',@level2name=N'Sort'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审批流节点Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FlowApprovalStep', @level2type=N'COLUMN',@level2name=N'FlowNodeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审批流节点名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FlowApprovalStep', @level2type=N'COLUMN',@level2name=N'FlowNodeName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'多次审批顺序号（可能是多次审批次数）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FlowApprovalStep', @level2type=N'COLUMN',@level2name=N'SortMore'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'步骤状态（待审批、同意、不同意、回退升级审批）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FlowApprovalStep', @level2type=N'COLUMN',@level2name=N'State'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'步骤审批意见' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FlowApprovalStep', @level2type=N'COLUMN',@level2name=N'OpinIons'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'步骤审批人Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FlowApprovalStep', @level2type=N'COLUMN',@level2name=N'UserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'步骤审批人名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FlowApprovalStep', @level2type=N'COLUMN',@level2name=N'UserName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审批时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FlowApprovalStep', @level2type=N'COLUMN',@level2name=N'ApprovalDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'步骤Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FlowApprovalStepUser', @level2type=N'COLUMN',@level2name=N'FlowApprovalStepId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审批节点Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FlowApprovalStepUser', @level2type=N'COLUMN',@level2name=N'FlowNodeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审批节点名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FlowApprovalStepUser', @level2type=N'COLUMN',@level2name=N'FlowNodeName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审批人Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FlowApprovalStepUser', @level2type=N'COLUMN',@level2name=N'UserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审批人名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FlowApprovalStepUser', @level2type=N'COLUMN',@level2name=N'UserName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数据权限类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysDataAuthority', @level2type=N'COLUMN',@level2name=N'PermissionType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysDictionary', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysDictionary', @level2type=N'COLUMN',@level2name=N'LastModificationTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysDictionary', @level2type=N'COLUMN',@level2name=N'CreationTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysDictionary', @level2type=N'COLUMN',@level2name=N'Sort'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysDictionary', @level2type=N'COLUMN',@level2name=N'Code'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysDictionary', @level2type=N'COLUMN',@level2name=N'Value'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'分组名/键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysDictionary', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父级分组id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysDictionary', @level2type=N'COLUMN',@level2name=N'ParentId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数据字典' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysDictionary'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'接口地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysOperationLog', @level2type=N'COLUMN',@level2name=N'Api'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ip地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysOperationLog', @level2type=N'COLUMN',@level2name=N'Ip'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'表单信息' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysOperationLog', @level2type=N'COLUMN',@level2name=N'Form'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'json表单信息' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysOperationLog', @level2type=N'COLUMN',@level2name=N'FormBody'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'地址栏信息' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysOperationLog', @level2type=N'COLUMN',@level2name=N'QueryString'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'当前操作人id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysOperationLog', @level2type=N'COLUMN',@level2name=N'UserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'接口耗时（毫秒）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysOperationLog', @level2type=N'COLUMN',@level2name=N'TakeUpTime'
GO
