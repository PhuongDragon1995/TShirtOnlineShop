USE [OnlineShop]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 6/20/2019 8:52:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[Type] [int] NULL,
	[Description] [nvarchar](250) NULL,
	[CreatedDate] [nchar](10) NULL,
	[Status] [nchar](10) NULL,
 CONSTRAINT [PK__Category__3214EC277BF7C56C] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 6/20/2019 8:52:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerFullName] [varchar](100) NULL,
	[CustomerPhoneNumber] [varchar](100) NULL,
	[CustomerEmail] [varchar](100) NULL,
	[CustomerPassword] [varchar](100) NULL,
	[Type] [int] NULL,
	[Address] [varchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Image]    Script Date: 6/20/2019 8:52:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Image](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Path] [nvarchar](500) NULL,
	[ProductID] [int] NULL,
	[Status] [nchar](10) NULL,
 CONSTRAINT [PK__Image__3214EC27E485D78D] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 6/20/2019 8:52:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[OrderID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[Quantity] [int] NULL,
 CONSTRAINT [PK__OrderDet__3214EC27E8DBF331] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 6/20/2019 8:52:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerID] [int] NOT NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [varchar](50) NULL,
	[Status] [nchar](10) NULL,
 CONSTRAINT [PK__Orders__3214EC27491DBC60] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 6/20/2019 8:52:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[Code] [varchar](250) NULL,
	[CategoryID] [int] NOT NULL,
	[Size] [nvarchar](10) NULL,
	[Description] [nvarchar](4000) NULL,
	[Colors] [nvarchar](50) NULL,
	[PromotionPrice] [decimal](18, 0) NULL,
	[Price] [decimal](18, 0) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [varchar](50) NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK__Product__3214EC27658B278C] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([ID], [Name], [Type], [Description], [CreatedDate], [Status]) VALUES (1, N'Long Sleeves', 1, NULL, NULL, NULL)
INSERT [dbo].[Category] ([ID], [Name], [Type], [Description], [CreatedDate], [Status]) VALUES (2, N'Short Sleeves', 1, NULL, NULL, NULL)
INSERT [dbo].[Category] ([ID], [Name], [Type], [Description], [CreatedDate], [Status]) VALUES (3, N'Polo', 1, NULL, NULL, NULL)
INSERT [dbo].[Category] ([ID], [Name], [Type], [Description], [CreatedDate], [Status]) VALUES (4, N'Long sleeves', 2, NULL, NULL, NULL)
INSERT [dbo].[Category] ([ID], [Name], [Type], [Description], [CreatedDate], [Status]) VALUES (5, N'Short sleeves', 2, NULL, NULL, NULL)
INSERT [dbo].[Category] ([ID], [Name], [Type], [Description], [CreatedDate], [Status]) VALUES (6, N'Polo', 2, NULL, NULL, NULL)
INSERT [dbo].[Category] ([ID], [Name], [Type], [Description], [CreatedDate], [Status]) VALUES (7, N'Apple', 2, NULL, NULL, NULL)
INSERT [dbo].[Category] ([ID], [Name], [Type], [Description], [CreatedDate], [Status]) VALUES (8, N'Croptop', 2, NULL, NULL, NULL)
INSERT [dbo].[Category] ([ID], [Name], [Type], [Description], [CreatedDate], [Status]) VALUES (9, N'Boys', 3, NULL, NULL, NULL)
INSERT [dbo].[Category] ([ID], [Name], [Type], [Description], [CreatedDate], [Status]) VALUES (10, N'Girls', 3, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Category] OFF
SET IDENTITY_INSERT [dbo].[Customer] ON 

INSERT [dbo].[Customer] ([ID], [CustomerFullName], [CustomerPhoneNumber], [CustomerEmail], [CustomerPassword], [Type], [Address]) VALUES (3, N'long', N'3454223424', N'long@gmail.com', N'123456', NULL, N'Da Nang, Viet Nam')
INSERT [dbo].[Customer] ([ID], [CustomerFullName], [CustomerPhoneNumber], [CustomerEmail], [CustomerPassword], [Type], [Address]) VALUES (4, N'Lan', N'23456446', N'lan@gmail.com', N'123456', 1, N'Nguyen Tat Thanh, Da Nang')
INSERT [dbo].[Customer] ([ID], [CustomerFullName], [CustomerPhoneNumber], [CustomerEmail], [CustomerPassword], [Type], [Address]) VALUES (5, N'Ha', N'45323254565', N'ha@gmail.com', N'123456', 1, N'Nguyen Tat Thanh, Da Nang')
SET IDENTITY_INSERT [dbo].[Customer] OFF
SET IDENTITY_INSERT [dbo].[Image] ON 

INSERT [dbo].[Image] ([ID], [Path], [ProductID], [Status]) VALUES (39, N'/Content/images/6369658054180461131.jpg', 19, NULL)
INSERT [dbo].[Image] ([ID], [Path], [ProductID], [Status]) VALUES (40, N'/Content/images/6369658054183320412.jpg', 19, NULL)
INSERT [dbo].[Image] ([ID], [Path], [ProductID], [Status]) VALUES (41, N'/Content/images/6369658012454555351.jpg', 20, NULL)
INSERT [dbo].[Image] ([ID], [Path], [ProductID], [Status]) VALUES (42, N'/Content/images/6369658014038686562.jpg', 20, NULL)
INSERT [dbo].[Image] ([ID], [Path], [ProductID], [Status]) VALUES (43, N'/Content/images/6369658059099672101.jpg', 21, NULL)
INSERT [dbo].[Image] ([ID], [Path], [ProductID], [Status]) VALUES (44, N'/Content/images/6369658059102065702.jpg', 21, NULL)
INSERT [dbo].[Image] ([ID], [Path], [ProductID], [Status]) VALUES (45, N'/Content/images/6369658065580129201.jpg', 22, NULL)
INSERT [dbo].[Image] ([ID], [Path], [ProductID], [Status]) VALUES (46, N'/Content/images/6369658065582393872.jpg', 22, NULL)
INSERT [dbo].[Image] ([ID], [Path], [ProductID], [Status]) VALUES (47, N'/Content/images/6369658175189700301.jpg', 23, NULL)
INSERT [dbo].[Image] ([ID], [Path], [ProductID], [Status]) VALUES (48, N'/Content/images/6369658175207088132.jpg', 23, NULL)
INSERT [dbo].[Image] ([ID], [Path], [ProductID], [Status]) VALUES (49, N'/Content/images/6369658178387329171.jpg', 24, NULL)
INSERT [dbo].[Image] ([ID], [Path], [ProductID], [Status]) VALUES (50, N'/Content/images/6369658178389124402.jpg', 24, NULL)
INSERT [dbo].[Image] ([ID], [Path], [ProductID], [Status]) VALUES (51, N'/Content/images/6369658343775645201.jpg', 25, NULL)
INSERT [dbo].[Image] ([ID], [Path], [ProductID], [Status]) VALUES (52, N'/Content/images/6369658343779640342.jpg', 25, NULL)
INSERT [dbo].[Image] ([ID], [Path], [ProductID], [Status]) VALUES (53, N'/Content/images/6369658350496746361.jpg', 26, NULL)
INSERT [dbo].[Image] ([ID], [Path], [ProductID], [Status]) VALUES (54, N'/Content/images/6369658350672504422.jpg', 26, NULL)
INSERT [dbo].[Image] ([ID], [Path], [ProductID], [Status]) VALUES (55, N'/Content/images/6369658391754531861.jpg', 27, NULL)
INSERT [dbo].[Image] ([ID], [Path], [ProductID], [Status]) VALUES (56, N'/Content/images/6369658391786941422.jpg', 27, NULL)
INSERT [dbo].[Image] ([ID], [Path], [ProductID], [Status]) VALUES (57, N'/Content/images/6369658439401101231.jpg', 28, NULL)
INSERT [dbo].[Image] ([ID], [Path], [ProductID], [Status]) VALUES (58, N'/Content/images/6369658439404706462.jpg', 28, NULL)
INSERT [dbo].[Image] ([ID], [Path], [ProductID], [Status]) VALUES (59, N'/Content/images/6369658443565644661.jpg', 29, NULL)
INSERT [dbo].[Image] ([ID], [Path], [ProductID], [Status]) VALUES (60, N'/Content/images/6369658443570033052.jpg', 29, NULL)
SET IDENTITY_INSERT [dbo].[Image] OFF
SET IDENTITY_INSERT [dbo].[OrderDetail] ON 

INSERT [dbo].[OrderDetail] ([ID], [OrderID], [ProductID], [Quantity]) VALUES (1, 1, 26, 5)
INSERT [dbo].[OrderDetail] ([ID], [OrderID], [ProductID], [Quantity]) VALUES (2, 1, 21, 5)
SET IDENTITY_INSERT [dbo].[OrderDetail] OFF
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([ID], [CustomerID], [CreatedDate], [CreatedBy], [Status]) VALUES (1, 3, NULL, NULL, N'ordered   ')
SET IDENTITY_INSERT [dbo].[Orders] OFF
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([ID], [Name], [Code], [CategoryID], [Size], [Description], [Colors], [PromotionPrice], [Price], [CreatedDate], [CreatedBy], [Status]) VALUES (19, N'Sweatshirt Malmoe Color Bike Grey Melange', N'SST00129763', 1, N'M', NULL, N'B', CAST(1 AS Decimal(18, 0)), CAST(12 AS Decimal(18, 0)), NULL, NULL, 1)
INSERT [dbo].[Product] ([ID], [Name], [Code], [CategoryID], [Size], [Description], [Colors], [PromotionPrice], [Price], [CreatedDate], [CreatedBy], [Status]) VALUES (20, N'Fuck Racism', N'SST00129761', 1, N'M', NULL, N'S', CAST(1 AS Decimal(18, 0)), CAST(12 AS Decimal(18, 0)), NULL, NULL, 1)
INSERT [dbo].[Product] ([ID], [Name], [Code], [CategoryID], [Size], [Description], [Colors], [PromotionPrice], [Price], [CreatedDate], [CreatedBy], [Status]) VALUES (21, N'Sweatshirt Malmoe Color Bike Grey Melange', N'SST00129763', 1, N'M', NULL, N'B', CAST(1 AS Decimal(18, 0)), CAST(12 AS Decimal(18, 0)), NULL, NULL, 1)
INSERT [dbo].[Product] ([ID], [Name], [Code], [CategoryID], [Size], [Description], [Colors], [PromotionPrice], [Price], [CreatedDate], [CreatedBy], [Status]) VALUES (22, N'Malmoe Faces', N'SST00129761', 1, N'XL', NULL, N'B', CAST(2 AS Decimal(18, 0)), CAST(15 AS Decimal(18, 0)), NULL, NULL, 1)
INSERT [dbo].[Product] ([ID], [Name], [Code], [CategoryID], [Size], [Description], [Colors], [PromotionPrice], [Price], [CreatedDate], [CreatedBy], [Status]) VALUES (23, N'Malmoe Faces', N'SST00129761', 2, N'XL', NULL, N'B', CAST(3 AS Decimal(18, 0)), CAST(19 AS Decimal(18, 0)), NULL, NULL, 1)
INSERT [dbo].[Product] ([ID], [Name], [Code], [CategoryID], [Size], [Description], [Colors], [PromotionPrice], [Price], [CreatedDate], [CreatedBy], [Status]) VALUES (24, N'Malmoe Faces', N'SST00129761', 3, N'XL', NULL, N'B', CAST(3 AS Decimal(18, 0)), CAST(19 AS Decimal(18, 0)), NULL, NULL, 1)
INSERT [dbo].[Product] ([ID], [Name], [Code], [CategoryID], [Size], [Description], [Colors], [PromotionPrice], [Price], [CreatedDate], [CreatedBy], [Status]) VALUES (25, N'Scouts Girl', N'SST00129769', 4, N'XXL', NULL, N'Y', CAST(4 AS Decimal(18, 0)), CAST(19 AS Decimal(18, 0)), NULL, NULL, 1)
INSERT [dbo].[Product] ([ID], [Name], [Code], [CategoryID], [Size], [Description], [Colors], [PromotionPrice], [Price], [CreatedDate], [CreatedBy], [Status]) VALUES (26, N'Polo Shirt Pink', N'SST01129769', 5, N'M', NULL, N'S', CAST(4 AS Decimal(18, 0)), CAST(24 AS Decimal(18, 0)), NULL, NULL, 1)
INSERT [dbo].[Product] ([ID], [Name], [Code], [CategoryID], [Size], [Description], [Colors], [PromotionPrice], [Price], [CreatedDate], [CreatedBy], [Status]) VALUES (27, N'Holiday Baking Team Funny Price', N'SST01129769', 7, N'L', NULL, N'B', CAST(2 AS Decimal(18, 0)), CAST(20 AS Decimal(18, 0)), NULL, NULL, 1)
INSERT [dbo].[Product] ([ID], [Name], [Code], [CategoryID], [Size], [Description], [Colors], [PromotionPrice], [Price], [CreatedDate], [CreatedBy], [Status]) VALUES (28, N'Baby Dots', N'CST01129769', 9, N'XL', NULL, N'Y', CAST(1 AS Decimal(18, 0)), CAST(17 AS Decimal(18, 0)), NULL, NULL, 1)
INSERT [dbo].[Product] ([ID], [Name], [Code], [CategoryID], [Size], [Description], [Colors], [PromotionPrice], [Price], [CreatedDate], [CreatedBy], [Status]) VALUES (29, N'Girls Dots', N'CST01129769', 10, N'M', NULL, N'S', CAST(1 AS Decimal(18, 0)), CAST(19 AS Decimal(18, 0)), NULL, NULL, 1)
SET IDENTITY_INSERT [dbo].[Product] OFF
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF_Product_CreatedBy]  DEFAULT ('true') FOR [CreatedBy]
GO
ALTER TABLE [dbo].[Image]  WITH CHECK ADD  CONSTRAINT [FK__Image__Status__4F7CD00D] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ID])
GO
ALTER TABLE [dbo].[Image] CHECK CONSTRAINT [FK__Image__Status__4F7CD00D]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK__OrderDeta__Produ__4316F928] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ID])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK__OrderDeta__Produ__4316F928]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK__OrderDeta__Quant__4222D4EF] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Orders] ([ID])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK__OrderDeta__Quant__4222D4EF]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customer] ([ID])
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK__Product__Status__3C69FB99] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Category] ([ID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK__Product__Status__3C69FB99]
GO
