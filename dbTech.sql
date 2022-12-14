USE [TechShop]
GO
/****** Object:  Table [dbo].[Feature]    Script Date: 10/22/2022 9:30:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feature](
	[f_id] [int] NOT NULL,
	[f_name] [varchar](150) NOT NULL,
	[url] [varchar](200) NOT NULL,
 CONSTRAINT [PK_Feature] PRIMARY KEY CLUSTERED 
(
	[f_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 10/22/2022 9:30:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[r_id] [int] NOT NULL,
	[r_name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[r_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role Feature]    Script Date: 10/22/2022 9:30:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role Feature](
	[r_id] [int] NOT NULL,
	[f_id] [int] NOT NULL,
 CONSTRAINT [PK_Role Feature] PRIMARY KEY CLUSTERED 
(
	[r_id] ASC,
	[f_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 10/22/2022 9:30:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[email] [varchar](100) NOT NULL,
	[password] [varchar](50) NOT NULL,
	[name] [varchar](150) NOT NULL,
	[phone] [varchar](20) NOT NULL,
	[address] [varchar](150) NOT NULL,
	[dob] [date] NOT NULL,
	[gender] [bit] NOT NULL,
	[r_id] [int] NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Role] ([r_id], [r_name]) VALUES (1, N'Admin')
INSERT [dbo].[Role] ([r_id], [r_name]) VALUES (2, N'Manager')
INSERT [dbo].[Role] ([r_id], [r_name]) VALUES (3, N'Guest')
GO
INSERT [dbo].[User] ([email], [password], [name], [phone], [address], [dob], [gender], [r_id]) VALUES (N'Khacson69@gmail.com', N'sonloc1234', N'Vanheo Sinh', N'0384104668', N'123 Tung thien', CAST(N'2009-10-13' AS Date), 1, 3)
INSERT [dbo].[User] ([email], [password], [name], [phone], [address], [dob], [gender], [r_id]) VALUES (N'koko123@gmail.com', N'hahaha1234', N'okok', N'9238423452', N'nam nam', CAST(N'2001-05-28' AS Date), 1, 3)
INSERT [dbo].[User] ([email], [password], [name], [phone], [address], [dob], [gender], [r_id]) VALUES (N'kson8504@gmail.com', N'sonloc123', N'Sonnk7', N'0384104668', N'12 son tay', CAST(N'2001-05-28' AS Date), 1, 1)
INSERT [dbo].[User] ([email], [password], [name], [phone], [address], [dob], [gender], [r_id]) VALUES (N'minhtn12@gmail.com', N'minh12345', N'Minh Tran', N'092834523', N'123 sonloc', CAST(N'2001-12-03' AS Date), 1, 1)
GO
ALTER TABLE [dbo].[Role Feature]  WITH CHECK ADD  CONSTRAINT [FK_Role Feature_Feature] FOREIGN KEY([f_id])
REFERENCES [dbo].[Feature] ([f_id])
GO
ALTER TABLE [dbo].[Role Feature] CHECK CONSTRAINT [FK_Role Feature_Feature]
GO
ALTER TABLE [dbo].[Role Feature]  WITH CHECK ADD  CONSTRAINT [FK_Role Feature_Role] FOREIGN KEY([r_id])
REFERENCES [dbo].[Role] ([r_id])
GO
ALTER TABLE [dbo].[Role Feature] CHECK CONSTRAINT [FK_Role Feature_Role]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Role] FOREIGN KEY([r_id])
REFERENCES [dbo].[Role] ([r_id])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Role]
GO
