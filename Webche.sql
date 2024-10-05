USE [master]
GO
/****** Object:  Database [Webche]    Script Date: 30/10/2022 7:38:44 pm ******/
CREATE DATABASE [Webche]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Webche', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Webche.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Webche_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Webche_log.ldf' , SIZE = 2368KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Webche] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Webche].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Webche] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Webche] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Webche] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Webche] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Webche] SET ARITHABORT OFF 
GO
ALTER DATABASE [Webche] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [Webche] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Webche] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Webche] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Webche] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Webche] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Webche] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Webche] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Webche] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Webche] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Webche] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Webche] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Webche] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Webche] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Webche] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Webche] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [Webche] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Webche] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Webche] SET  MULTI_USER 
GO
ALTER DATABASE [Webche] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Webche] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Webche] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Webche] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Webche] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Webche] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Webche] SET QUERY_STORE = OFF
GO
USE [Webche]
GO
/****** Object:  Table [dbo].[Abouts]    Script Date: 30/10/2022 7:38:44 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Abouts](
	[AboutID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[Content] [nvarchar](max) NOT NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_dbo.Abouts] PRIMARY KEY CLUSTERED 
(
	[AboutID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contacts]    Script Date: 30/10/2022 7:38:44 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contacts](
	[ContactID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NOT NULL,
	[Logo] [nvarchar](250) NOT NULL,
	[Address] [nvarchar](250) NOT NULL,
	[Phone1] [nchar](12) NOT NULL,
	[Phone2] [nchar](12) NULL,
	[Email] [varchar](100) NOT NULL,
	[LinkMap] [varchar](max) NOT NULL,
	[Facebook] [varchar](250) NULL,
	[Tiwtter] [varchar](250) NULL,
	[Pinterest] [varchar](250) NULL,
	[Instargram] [varchar](250) NULL,
	[Youtobe] [varchar](250) NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_dbo.Contacts] PRIMARY KEY CLUSTERED 
(
	[ContactID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Coupons]    Script Date: 30/10/2022 7:38:44 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Coupons](
	[CouponID] [int] IDENTITY(1,1) NOT NULL,
	[SupplierID] [int] NULL,
	[DateAdd] [date] NULL,
 CONSTRAINT [PK_dbo.Coupons] PRIMARY KEY CLUSTERED 
(
	[CouponID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 30/10/2022 7:38:44 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[CustomerID] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](100) NOT NULL,
	[Password] [varchar](250) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Image] [nvarchar](250) NULL,
	[Address] [nvarchar](250) NOT NULL,
	[Email] [varchar](100) NOT NULL,
	[Phone] [varchar](12) NOT NULL,
	[Role] [nvarchar](50) NULL,
	[Status] [bit] NULL,
	[Question] [nvarchar](max) NULL,
	[Answer] [nvarchar](250) NULL,
 CONSTRAINT [PK_dbo.Customers] PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DetailCoupon]    Script Date: 30/10/2022 7:38:44 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DetailCoupon](
	[DetailCouponID] [int] IDENTITY(1,1) NOT NULL,
	[CouponID] [int] NULL,
	[ProductID] [int] NULL,
	[EntryPrice] [decimal](18, 0) NULL,
	[Quantity] [int] NULL,
 CONSTRAINT [PK_dbo.DetailCoupon] PRIMARY KEY CLUSTERED 
(
	[DetailCouponID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DetailOrder]    Script Date: 30/10/2022 7:38:44 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DetailOrder](
	[DetailOrderID] [int] IDENTITY(1,1) NOT NULL,
	[OrderID] [int] NULL,
	[ProductID] [int] NULL,
	[ProductName] [nvarchar](255) NULL,
	[Quantity] [int] NULL,
	[Price] [decimal](18, 0) NULL,
 CONSTRAINT [PK_dbo.DetailOrder] PRIMARY KEY CLUSTERED 
(
	[DetailOrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[News]    Script Date: 30/10/2022 7:38:44 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[News](
	[NewID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NOT NULL,
	[MetaTitle] [varchar](250) NULL,
	[DisplayOrder] [int] NULL,
	[UpdateDate] [datetime] NULL,
	[Content] [nvarchar](max) NOT NULL,
	[Image] [nvarchar](250) NOT NULL,
	[Description] [nvarchar](1000) NOT NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_dbo.News] PRIMARY KEY CLUSTERED 
(
	[NewID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 30/10/2022 7:38:44 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[OrderDate] [datetime] NULL,
	[Status] [bit] NULL,
	[DeliveryDate] [datetime] NULL,
	[Paid] [bit] NULL,
	[CustomerID] [int] NULL,
	[Discount] [int] NULL,
	[Cancelled] [bit] NULL,
	[Approved] [bit] NULL,
 CONSTRAINT [PK_dbo.Orders] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Producers]    Script Date: 30/10/2022 7:38:44 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Producers](
	[ProducerID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[MetaTitle] [nvarchar](250) NULL,
	[DisplayOder] [int] NULL,
	[Info] [nvarchar](255) NOT NULL,
	[Logo] [nvarchar](max) NOT NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_dbo.Producers] PRIMARY KEY CLUSTERED 
(
	[ProducerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 30/10/2022 7:38:44 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ProductID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[Price] [decimal](18, 0) NOT NULL,
	[Discount] [int] NULL,
	[About] [nvarchar](1000) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[MetaTitle] [nvarchar](max) NULL,
	[UpdateDate] [datetime] NULL,
	[InventoryNumber] [int] NOT NULL,
	[ReviewCounts] [int] NULL,
	[SellCounts] [int] NULL,
	[Hot] [int] NULL,
	[New] [int] NULL,
	[SupplierID] [int] NULL,
	[ProducerID] [int] NULL,
	[ProductTypeID] [int] NULL,
	[Image1] [nvarchar](max) NOT NULL,
	[Image2] [nvarchar](max) NOT NULL,
	[Image3] [nvarchar](max) NOT NULL,
	[Image4] [nvarchar](max) NOT NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_dbo.Products] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductTypes]    Script Date: 30/10/2022 7:38:44 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductTypes](
	[ProductTypeID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[MetaTitle] [varchar](250) NULL,
	[DisplayOrder] [int] NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_dbo.ProductTypes] PRIMARY KEY CLUSTERED 
(
	[ProductTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reviews]    Script Date: 30/10/2022 7:38:44 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reviews](
	[ReviewID] [int] IDENTITY(1,1) NOT NULL,
	[Content] [nvarchar](max) NOT NULL,
	[Star] [int] NULL,
	[CusomerID] [int] NULL,
	[ProductID] [int] NULL,
 CONSTRAINT [PK_dbo.Reviews] PRIMARY KEY CLUSTERED 
(
	[ReviewID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sliders]    Script Date: 30/10/2022 7:38:44 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sliders](
	[SliderID] [int] IDENTITY(1,1) NOT NULL,
	[Image] [nvarchar](250) NOT NULL,
	[DisplayOrder] [int] NULL,
	[Link] [nvarchar](250) NULL,
	[Info] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](250) NOT NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_dbo.Sliders] PRIMARY KEY CLUSTERED 
(
	[SliderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Suppliers]    Script Date: 30/10/2022 7:38:44 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Suppliers](
	[SupplierID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Address] [nvarchar](255) NOT NULL,
	[Email] [nvarchar](255) NOT NULL,
	[Phone] [varchar](12) NOT NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_dbo.Suppliers] PRIMARY KEY CLUSTERED 
(
	[SupplierID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Abouts] ON 

INSERT [dbo].[Abouts] ([AboutID], [Name], [Content], [Status]) VALUES (2, N'Quang chè', N'<h1>Hệ Thống Cửa H&agrave;ng Tr&agrave; Th&aacute;i Nguy&ecirc;n Ngon - T&acirc;n Cương Xanh</h1>

<hr />
<p>Thưởng tr&agrave; l&agrave; một th&uacute; vui tao nh&atilde; nhưng n&oacute; cũng l&agrave; thứ thức uống b&igrave;nh d&acirc;n của d&acirc;n ta bao đời nay. Tr&agrave; c&oacute; nhiều loại như tr&agrave; th&aacute;i nguy&ecirc;n, tr&agrave; ph&uacute; thọ, tr&agrave; ướp hoa... nhưng thứ tr&agrave; mạn m&agrave; d&acirc;n ta y&ecirc;u th&iacute;ch vẫn l&agrave; tr&agrave; th&aacute;i nguy&ecirc;n. Được trồng tr&ecirc;n v&ugrave;ng đất c&oacute; điều kiện thổ nhưỡng v&agrave; kh&iacute; hậu đặc biệt n&ecirc;n những b&uacute;p tr&agrave; th&aacute;i nguy&ecirc;n mang hương vị đặc trưng nhất kh&ocirc;ng thể t&igrave;m thấy ở bất kỳ loại tr&agrave; n&agrave;o. Những b&uacute;p tr&agrave; th&aacute;i nguy&ecirc;n được thu hoạch khắt khe về c&acirc;y tr&agrave; nguy&ecirc;n liệu cũng như thời gian thu hoạch đ&atilde; tạo n&ecirc;n những c&aacute;nh tr&agrave; b&uacute;p ngon hảo hạng. Những c&aacute;nh tr&agrave; th&aacute;i nguy&ecirc;n mỏng, nhỏ nhưng xoắc v&acirc;n chắc kh&ocirc; gi&ograve;n, m&ugrave;i hương cốm nựng. Thưởng thức tr&agrave; b&uacute;p th&aacute;i nguy&ecirc;n với những ch&eacute;n nước tr&agrave; xanh trong, s&aacute;nh v&agrave; một hương thơm cốm mang lại cảm gi&aacute;c khoan kho&aacute;i cho người uống. Những b&uacute;p tr&agrave; th&aacute;i nguy&ecirc;n &ldquo;tiền ch&aacute;t hậu ngọt&rdquo; lu&ocirc;n xứng danh l&agrave; &ldquo;đệ nhất danh tr&agrave;&rdquo; trong xứ tr&agrave; Việt.</p>
', 1)
SET IDENTITY_INSERT [dbo].[Abouts] OFF
GO
SET IDENTITY_INSERT [dbo].[Contacts] ON 

INSERT [dbo].[Contacts] ([ContactID], [Name], [Logo], [Address], [Phone1], [Phone2], [Email], [LinkMap], [Facebook], [Tiwtter], [Pinterest], [Instargram], [Youtobe], [Status]) VALUES (14, N'Quang chè', N'aaaa', N'Thảo Cầm Viên Sài Gòn, 2 Nguyễn Bỉnh Khiêm, Bến Nghé, Quận 1, Thành phố Hồ Chí Minh 700000', N'01929389444 ', N'0366521993  ', N'quang@gmail.com', N'https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d7838.684254869503!2d106.70676642475235!3d10.785086936675276!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1svi!2s!4v1547181657956', N'https://www.facebook.com/', N'https://twitter.com/?lang=vi', N'https://www.pinterest.com/', N'https://www.instagram.com/', N'https://www.youtube.com/?hl=vi', 1)
SET IDENTITY_INSERT [dbo].[Contacts] OFF
GO
SET IDENTITY_INSERT [dbo].[Coupons] ON 

INSERT [dbo].[Coupons] ([CouponID], [SupplierID], [DateAdd]) VALUES (1, NULL, NULL)
INSERT [dbo].[Coupons] ([CouponID], [SupplierID], [DateAdd]) VALUES (2, NULL, NULL)
INSERT [dbo].[Coupons] ([CouponID], [SupplierID], [DateAdd]) VALUES (3, NULL, NULL)
INSERT [dbo].[Coupons] ([CouponID], [SupplierID], [DateAdd]) VALUES (4, NULL, NULL)
INSERT [dbo].[Coupons] ([CouponID], [SupplierID], [DateAdd]) VALUES (5, NULL, NULL)
INSERT [dbo].[Coupons] ([CouponID], [SupplierID], [DateAdd]) VALUES (6, NULL, NULL)
INSERT [dbo].[Coupons] ([CouponID], [SupplierID], [DateAdd]) VALUES (7, NULL, NULL)
INSERT [dbo].[Coupons] ([CouponID], [SupplierID], [DateAdd]) VALUES (8, NULL, NULL)
INSERT [dbo].[Coupons] ([CouponID], [SupplierID], [DateAdd]) VALUES (9, NULL, NULL)
INSERT [dbo].[Coupons] ([CouponID], [SupplierID], [DateAdd]) VALUES (10, NULL, NULL)
INSERT [dbo].[Coupons] ([CouponID], [SupplierID], [DateAdd]) VALUES (11, NULL, NULL)
INSERT [dbo].[Coupons] ([CouponID], [SupplierID], [DateAdd]) VALUES (12, NULL, NULL)
INSERT [dbo].[Coupons] ([CouponID], [SupplierID], [DateAdd]) VALUES (13, NULL, NULL)
INSERT [dbo].[Coupons] ([CouponID], [SupplierID], [DateAdd]) VALUES (14, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Coupons] OFF
GO
SET IDENTITY_INSERT [dbo].[Customers] ON 

INSERT [dbo].[Customers] ([CustomerID], [UserName], [Password], [Name], [Image], [Address], [Email], [Phone], [Role], [Status], [Question], [Answer]) VALUES (8, N'admin', N'21232f297a57a5a743894a0e4a801fc3', N'Chủ Cửa Hàng', N'/UploadFiles/images/users/unnamed.jpg', N'Thái Hưng, Thái Thuy, Hồ Chí Minh', N'quang@gmail.com', N'0349547641', NULL, 1, N'Tên con vật bạn thích', N'Mèo')
INSERT [dbo].[Customers] ([CustomerID], [UserName], [Password], [Name], [Image], [Address], [Email], [Phone], [Role], [Status], [Question], [Answer]) VALUES (9, N'NgocAnh', N'e10adc3949ba59abbe56e057f20f883e', N'Lê Ngọc Ánh', N'/UploadFiles/images/users/unnamed.jpg', N'Thái Hưng, Thái Thụy, Hồ Chí Minh', N'phuonggiang150@gmail.com', N'0378657467', N'Khách Hàng', 1, NULL, NULL)
INSERT [dbo].[Customers] ([CustomerID], [UserName], [Password], [Name], [Image], [Address], [Email], [Phone], [Role], [Status], [Question], [Answer]) VALUES (10, N'NhanVien', N'e10adc3949ba59abbe56e057f20f883e', N'Nhân Viên 01', N'/UploadFiles/images/users/unnamed.jpg', N'Thái Hưng, Thái Thụy, Hồ Chí Minh', N'phongthan102@gmail.com', N'034675846', N'Nhân viên', 1, NULL, NULL)
INSERT [dbo].[Customers] ([CustomerID], [UserName], [Password], [Name], [Image], [Address], [Email], [Phone], [Role], [Status], [Question], [Answer]) VALUES (11, N'VietHoang99', N'e10adc3949ba59abbe56e057f20f883e', N'Nguyễn Văn Hoàng', NULL, N'123 đường Tiền Phong , Hồ Chí Minh', N'hoang99999@gmail.com', N'0987654675', N'Khách Hàng', 1, NULL, NULL)
INSERT [dbo].[Customers] ([CustomerID], [UserName], [Password], [Name], [Image], [Address], [Email], [Phone], [Role], [Status], [Question], [Answer]) VALUES (13, N'Hoang', N'e10adc3949ba59abbe56e057f20f883e', N'Hoang', NULL, N'HN', N'hoang@gmail.com', N'098765432', N'Khách Hàng', 1, NULL, NULL)
INSERT [dbo].[Customers] ([CustomerID], [UserName], [Password], [Name], [Image], [Address], [Email], [Phone], [Role], [Status], [Question], [Answer]) VALUES (14, N'Thu', N'e10adc3949ba59abbe56e057f20f883e', N'Thu', NULL, N'HN', N'thu@gmail.com', N'016516516513', N'Khách Hàng', 1, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Customers] OFF
GO
SET IDENTITY_INSERT [dbo].[DetailCoupon] ON 

INSERT [dbo].[DetailCoupon] ([DetailCouponID], [CouponID], [ProductID], [EntryPrice], [Quantity]) VALUES (1, 1, 1, CAST(0 AS Decimal(18, 0)), 0)
INSERT [dbo].[DetailCoupon] ([DetailCouponID], [CouponID], [ProductID], [EntryPrice], [Quantity]) VALUES (2, 4, 1, CAST(0 AS Decimal(18, 0)), 0)
INSERT [dbo].[DetailCoupon] ([DetailCouponID], [CouponID], [ProductID], [EntryPrice], [Quantity]) VALUES (3, 7, 1, CAST(0 AS Decimal(18, 0)), 0)
INSERT [dbo].[DetailCoupon] ([DetailCouponID], [CouponID], [ProductID], [EntryPrice], [Quantity]) VALUES (4, 9, 1, CAST(0 AS Decimal(18, 0)), 0)
INSERT [dbo].[DetailCoupon] ([DetailCouponID], [CouponID], [ProductID], [EntryPrice], [Quantity]) VALUES (5, 14, 1, CAST(100000 AS Decimal(18, 0)), 3)
INSERT [dbo].[DetailCoupon] ([DetailCouponID], [CouponID], [ProductID], [EntryPrice], [Quantity]) VALUES (6, 14, 5, CAST(200000 AS Decimal(18, 0)), 3)
SET IDENTITY_INSERT [dbo].[DetailCoupon] OFF
GO
SET IDENTITY_INSERT [dbo].[DetailOrder] ON 

INSERT [dbo].[DetailOrder] ([DetailOrderID], [OrderID], [ProductID], [ProductName], [Quantity], [Price]) VALUES (1, 1, 2, N'Phấn Nước Chống Lão Hóa Và Sáng Da Laneige BB Cushion Anti-Aging SPF50+', 2, CAST(679000 AS Decimal(18, 0)))
INSERT [dbo].[DetailOrder] ([DetailOrderID], [OrderID], [ProductID], [ProductName], [Quantity], [Price]) VALUES (2, 2, 2, N'Phấn Nước Chống Lão Hóa Và Sáng Da Laneige BB Cushion Anti-Aging SPF50+', 5, CAST(679000 AS Decimal(18, 0)))
INSERT [dbo].[DetailOrder] ([DetailOrderID], [OrderID], [ProductID], [ProductName], [Quantity], [Price]) VALUES (3, 3, 6, N'Tinh Chất Dưỡng Mắt Chiết Xuất Hoa Oải Hương Laneige Perfect Renew Eye Serum 14ml', 1, CAST(500000 AS Decimal(18, 0)))
INSERT [dbo].[DetailOrder] ([DetailOrderID], [OrderID], [ProductID], [ProductName], [Quantity], [Price]) VALUES (4, 4, 5, N'Nước tẩy trang', 1, CAST(120000 AS Decimal(18, 0)))
INSERT [dbo].[DetailOrder] ([DetailOrderID], [OrderID], [ProductID], [ProductName], [Quantity], [Price]) VALUES (5, 4, 4, N'Sữa Rửa Mặt Loại Bỏ Bã Nhờn Chiết Xuất Chanh Và Trà Xanh Enesti DaytoDay Lemon And Green Tea Cleansing Foam 160ml', 1, CAST(99000 AS Decimal(18, 0)))
INSERT [dbo].[DetailOrder] ([DetailOrderID], [OrderID], [ProductID], [ProductName], [Quantity], [Price]) VALUES (6, 5, 6, N'Tinh Chất Dưỡng Mắt Chiết Xuất Hoa Oải Hương Laneige Perfect Renew Eye Serum 14ml', 1, CAST(500000 AS Decimal(18, 0)))
INSERT [dbo].[DetailOrder] ([DetailOrderID], [OrderID], [ProductID], [ProductName], [Quantity], [Price]) VALUES (7, 5, 4, N'Sữa Rửa Mặt Loại Bỏ Bã Nhờn Chiết Xuất Chanh Và Trà Xanh Enesti DaytoDay Lemon And Green Tea Cleansing Foam 160ml', 1, CAST(99000 AS Decimal(18, 0)))
INSERT [dbo].[DetailOrder] ([DetailOrderID], [OrderID], [ProductID], [ProductName], [Quantity], [Price]) VALUES (8, 5, 2, N'Phấn Nước Chống Lão Hóa Và Sáng Da Laneige BB Cushion Anti-Aging SPF50+', 1, CAST(679000 AS Decimal(18, 0)))
INSERT [dbo].[DetailOrder] ([DetailOrderID], [OrderID], [ProductID], [ProductName], [Quantity], [Price]) VALUES (9, 7, 4, N'SHOPHOUSE SỞ HỮU LÂU DÀI DUY NHẤT TẠI PHỐ CHÙA LÁNG, XÂY 7 TẦNG 1 HẦM', 1, CAST(8000000000 AS Decimal(18, 0)))
INSERT [dbo].[DetailOrder] ([DetailOrderID], [OrderID], [ProductID], [ProductName], [Quantity], [Price]) VALUES (10, 8, 7, N'BÁN SHOPHOUSE, LIỀN KỀ MẶT ĐƯỜNG MAI CHÍ THỌ, KĐT VIỆT HƯNG 107M2 ĐẾN 125M2 GIÁ TỐT', 1, CAST(7000000000 AS Decimal(18, 0)))
INSERT [dbo].[DetailOrder] ([DetailOrderID], [OrderID], [ProductID], [ProductName], [Quantity], [Price]) VALUES (11, 9, 6, N'Hồng Shan Trà Mộc Châu', 1, CAST(160000 AS Decimal(18, 0)))
INSERT [dbo].[DetailOrder] ([DetailOrderID], [OrderID], [ProductID], [ProductName], [Quantity], [Price]) VALUES (12, 9, 5, N'Trà Shan Tuyết Hà Giang', 1, CAST(360000 AS Decimal(18, 0)))
SET IDENTITY_INSERT [dbo].[DetailOrder] OFF
GO
SET IDENTITY_INSERT [dbo].[News] ON 

INSERT [dbo].[News] ([NewID], [Name], [MetaTitle], [DisplayOrder], [UpdateDate], [Content], [Image], [Description], [Status]) VALUES (1, N'Những địa danh nổi tiếng chè Việt', N'Nhung-dia-danh-noi-tieng-che-Viet', 1, CAST(N'2022-10-30T17:42:17.460' AS DateTime), N'<p><strong>Th&aacute;i Nguy&ecirc;n &quot;đệ nhất danh tr&agrave;&quot;</strong></p>

<table align="center" border="0">
	<tbody>
		<tr>
			<td><a href="https://file1.dangcongsan.vn/data/0/images/2021/06/11/vietha/chevietnam-tn.png"><img alt="" src="https://file1.dangcongsan.vn/data/0/images/2021/06/11/vietha/chevietnam-tn.png?dpi=150&amp;quality=100&amp;w=680" /></a></td>
		</tr>
		<tr>
			<td>Sản phẩm ch&egrave; Th&aacute;i Nguy&ecirc;n (Ảnh: PV)&nbsp;</td>
		</tr>
	</tbody>
</table>

<p>Với diện t&iacute;ch hơn 20 ngh&igrave;n ha, Th&aacute;i Nguy&ecirc;n l&agrave; một trong những tỉnh đứng đầu cả nước về diện t&iacute;ch canh t&aacute;c, số lượng, chất lượng sản phẩm từ c&acirc;y ch&egrave;. Tại hầu hết c&aacute;c v&ugrave;ng ch&egrave; của tỉnh, từ nhiều năm nay,&nbsp; người d&acirc;n đ&atilde; tạo dựng cho m&igrave;nh thương hiệu mạnh &quot;ch&egrave; Th&aacute;i&quot; th&ocirc;ng qua chất lượng v&agrave; độ an to&agrave;n thực phẩm cao: T&acirc;n Cương, Đồng Hỷ, La Bằng&hellip; v&agrave; từng bước chinh phục người ti&ecirc;u d&ugrave;ng trong v&agrave; ngo&agrave;i nước.</p>

<p>Đơn cử như, tại v&ugrave;ng ch&egrave; T&acirc;n Cương, sản phẩm ch&egrave; b&uacute;p sao th&ocirc; của một số hộ gia đ&igrave;nh lu&ocirc;n được tư thương săn đ&oacute;n với mức gi&aacute; đắt gấp nhiều lần so c&aacute;c nơi kh&aacute;c. C&acirc;u lạc bộ ch&egrave; hữu cơ T&acirc;n Cương (x&oacute;m Nam Th&aacute;i, x&atilde; T&acirc;n Cương, TP Th&aacute;i Nguy&ecirc;n) l&agrave; đơn vị đầu ti&ecirc;n của cả nước được Tổ chức Hữu cơ quốc tế IFOAM v&agrave; Tổ chức ICEA (I-ta-li-a) cấp Giấy chứng nhận sản phẩm ch&egrave; sạch theo ti&ecirc;u chuẩn ch&acirc;u &Acirc;u.</p>

<p>Tại v&ugrave;ng ch&egrave; La Bằng, cuối những năm 90 thế kỷ trước, địa phương đ&atilde; mạnh dạn trồng thử nghiệm nhiều giống ch&egrave; nhập nội c&oacute;&nbsp; ưu điểm vượt trội như: ch&egrave; Long V&acirc;n, Keo Am T&iacute;ch, Ph&uacute;c Văn Ti&ecirc;n, Kim Tuy&ecirc;n, B&aacute;t Ti&ecirc;n, IR777... Sản phẩm &quot;ch&egrave; c&agrave;nh&quot; (ch&egrave; giống mới trồng bằng c&agrave;nh thay v&igrave; trồng bằng hạt như trước đ&acirc;y) được người ti&ecirc;u d&ugrave;ng ưa chuộng ngay từ khi bắt đầu c&oacute; mặt tr&ecirc;n thị trường do hương vị thơm ngon của n&oacute;. Ch&egrave; La Bằng đ&atilde; được Cục Sở hữu tr&iacute; tuệ cấp chứng nhận bảo hộ nh&atilde;n hiệu h&agrave;ng h&oacute;a từ 2008.</p>

<p><strong>Y&ecirc;n B&aacute;i độc đ&aacute;o ch&egrave; shan tuyết</strong></p>

<p>Ch&egrave; shan tuyết được xem l&agrave; một đặc sản của tỉnh Y&ecirc;n B&aacute;i, kh&ocirc;ng chỉ được biết đến ở Việt Nam, m&agrave; c&ograve;n ở nhiều quốc gia tr&ecirc;n thế giới. Đặc biệt, ch&egrave; shan tuyết Suối Gi&agrave;ng thuộc huyện Văn Chấn, nằm ở độ cao từ 1.500 đến 1.800 m so với mực nước biển, kh&iacute; hậu &ocirc;n h&ograve;a với h&agrave;ng chục ngh&igrave;n c&acirc;y ch&egrave; cổ thụ hơn 100 tuổi, c&oacute; c&acirc;y đến 300 năm tuổi v&agrave; l&agrave; một trong những c&acirc;y ch&egrave; l&acirc;u năm nhất của thế giới c&ograve;n s&oacute;t lại.</p>

<p>Theo tư liệu từ sổ lưu niệm của Khu du lịch Suối Gi&agrave;ng, v&agrave;o những năm 60 của thế kỷ 20, Viện sĩ K.M.Giem-mu-khat-de thuộc Viện Sinh h&oacute;a A.Ba Cu (Viện H&agrave;n l&acirc;m Khoa học Li&ecirc;n X&ocirc;) khi đến Suối Gi&agrave;ng đ&atilde; phải thốt l&ecirc;n: &quot;T&ocirc;i đ&atilde; đi qua 120 nước c&oacute; c&acirc;y ch&egrave; tr&ecirc;n thế giới nhưng chưa thấy ở đ&acirc;u c&oacute; c&acirc;y ch&egrave; l&acirc;u năm như ở Suối Gi&agrave;ng. Ch&egrave; ở đ&acirc;y độc đ&aacute;o, trong b&aacute;t nước ch&egrave; xanh c&oacute; đủ 18 vị đầu đẳng của ch&egrave; tr&ecirc;n thế giới&quot;.</p>

<p>Tỉnh cũng đ&atilde; triển khai Đề &aacute;n ph&aacute;t triển ch&egrave; shan v&ugrave;ng cao ở huyện Văn Chấn, theo hướng hữu cơ, tự nhi&ecirc;n. Từ chỗ tr&ocirc;ng chờ ho&agrave;n to&agrave;n v&agrave;o tự nhi&ecirc;n, nay đồng b&agrave;o v&ugrave;ng cao biết trồng ch&egrave; shan tập trung, gi&acirc;m c&agrave;nh để mở rộng v&ugrave;ng ch&egrave;, n&acirc;ng cao năng suất, sản lượng. V&igrave; vậy, huyện Văn Chấn đ&atilde; đề nghị Nh&agrave; nước tiếp tục c&oacute; cơ chế, ch&iacute;nh s&aacute;ch hỗ trợ cho đồng b&agrave;o v&ugrave;ng cao ph&aacute;t triển c&aacute;c diện t&iacute;ch ch&egrave; shan tuyết một c&aacute;ch bền vững.</p>

<p>To&agrave;n tỉnh Y&ecirc;n B&aacute;i hiện c&oacute; 3.630 ha ch&egrave; (đứng thứ 6/18 tỉnh trong cả nước về diện t&iacute;ch ch&egrave;), ph&acirc;n bố ở 8/9 huyện, th&agrave;nh phố; năng suất b&igrave;nh qu&acirc;n đạt 4,5 tấn/ha, đạt sản lượng hơn 12 ngh&igrave;n tấn b&uacute;p tươi/năm. Trong số đ&oacute;, c&oacute; hơn 3.000 ha ch&egrave; shan tuyết, cho sản lượng 75.000 tấn b&uacute;p tươi mỗi năm, phần lớn được d&agrave;nh để xuất khẩu.</p>
', N'/UploadFiles/images/news/new1.jpg', N'Những địa danh nổi tiếng chè Việt', 1)
INSERT [dbo].[News] ([NewID], [Name], [MetaTitle], [DisplayOrder], [UpdateDate], [Content], [Image], [Description], [Status]) VALUES (2, N'Tổng Quan Về Các Loại Chè Của Việt Nam', N'Tong-Quan-Ve-Cac-Loai-Che-Cua-Viet-Nam', 2, CAST(N'2022-10-30T17:41:20.253' AS DateTime), N'<p>Trước khi đến với&nbsp;<strong>c&aacute;c loại ch&egrave; xuất khẩu của Việt Nam.&nbsp;</strong>Theo đ&oacute;, Việt Nam tiếp tục l&agrave; đối t&aacute;c xuất khẩu tr&agrave; lớn nhất v&agrave;o Đ&agrave;i Loan trong 5 th&aacute;ng đầu năm nay, đạt 5,76 tấn tr&agrave;, tổng kim ngạch đạt 8,17 triệu USD giảm 10,66% so với c&ugrave;ng kỳ. Lượng tr&agrave; xuất khẩu của Việt Nam v&agrave;o Đ&agrave;i Loan trong 5 th&aacute;ng đầu năm chiếm tới 51,12% tổng lượng tr&agrave; nhập khẩu của Đ&agrave;i Loan song chỉ chiếm 28,35% về tổng gi&aacute; trị. C&aacute;c đối t&aacute;c kế tiếp c&ograve;n c&oacute;: Nhật Bản, Srilanka, Ấn Độ v&agrave; Indonesia<strong>.</strong></p>

<p>Cả nước c&oacute; 35 tỉnh th&agrave;nh trồng ch&egrave;, tổng diện t&iacute;ch 125.000ha, phần nhiều ở c&aacute;c tỉnh trung du miền n&uacute;i ph&iacute;a Bắc, Bắc Trung bộ v&agrave; T&acirc;y Nguy&ecirc;n. H&agrave;ng năm Việt Nam xuất khẩu ch&egrave; đạt tr&ecirc;n dưới 100 triệu USD.</p>

<p>Đến nay Việt Nam đ&atilde; xuất khẩu tr&agrave; sang 107 nước, đứng thứ 7 về sản lượng, đứng thứ 6 về khối lượng xuất khẩu. Tuy nhi&ecirc;n sản phẩm tr&agrave; Việt Nam chưa c&oacute; thương hiệu tr&ecirc;n thế giới. Trong năm nay, kim ngạch xuất khẩu ch&egrave; của Việt Nam sẽ lần đầu ti&ecirc;n vượt mức 100 triệu USD với số lượng khoảng 95.000 tấn ch&egrave; c&aacute;c loại, tăng 20% so với năm ngo&aacute;i.</p>

<p>9 th&aacute;ng đầu năm 2006, hoạt động xuất khẩu ch&egrave; của cả nước tương đối khả quan với tổng kim ngạch đạt khoảng 76 triệu USD (tương đương 72.000 tấn), tăng 22% về trị gi&aacute; v&agrave; tăng 23 % về lượng so với c&ugrave;ng kỳ năm ngo&aacute;i. Ch&uacute;ng ta h&atilde;y điểm qua một số loại ch&egrave; phổ biến tại nước m&igrave;nh.</p>

<p>&nbsp;</p>

<p><img alt="Giá xuất khẩu chè nửa đầu năm giảm gần 10% (VietnamBiz)" src="https://haitratancuong.com/vnt_upload/uploads/2020/08/Gia-xuat-khau-che-nua-dau-nam-giam-gan-10-VietnamBiz.png" /></p>

<p>Gi&aacute; xuất khẩu ch&egrave; nửa đầu năm giảm gần 10% (VietnamBiz)</p>

<p>&nbsp;</p>

<h3><strong>Ch&egrave; tươi</strong></h3>

<p>Loại ch&egrave; n&agrave;y sẽ gồm c&aacute;c nguy&ecirc;n liệu: l&aacute; ch&egrave; gi&agrave; v&agrave;&nbsp;<a href="https://haitratancuong.com/che-bup-thai-nguyen/">ch&egrave; b&uacute;p</a>, to v&agrave; nhỏ, xanh tươi, kh&ocirc;ng qua bất cứ c&ocirc;ng đoạn chế biến n&agrave;o. L&aacute; tr&agrave; khi h&aacute;i về sẽ được rửa sạch, sau đ&oacute; được người nghệ nh&acirc;n v&ograve; bằng tay rồi cho v&agrave;o ấm hoặc nồi nấu nước loại to cho th&ecirc;m một v&agrave;i l&aacute;t gừng tươi nấu cho đến s&ocirc;i. Nước tr&agrave; đ&atilde; s&ocirc;i sẽ được r&oacute;t ra ch&eacute;n, t&aacute;ch uống ngay. Hoặc muốn uống dần trong ng&agrave;y c&oacute; thể cho v&agrave;o ấm t&iacute;ch ủ n&oacute;ng. M&agrave;u nước ch&egrave; tươi sẽ cho ra một m&agrave;u xanh tươi đẹp mắt.&nbsp;</p>

<p>Tại mỗi v&ugrave;ng ch&egrave; kh&aacute;c nhau cũng sẽ c&oacute; c&aacute;ch thu h&aacute;i kh&aacute;c nhau. V&iacute; dụ v&ugrave;ng ch&egrave; Gay - Nghệ An sẽ lấy cả c&agrave;nh d&agrave;i từ 30 - 40 cm, bao gồm l&aacute; to, nhỏ, b&uacute;p, mềm m&eacute;p l&aacute; răng cưa s&acirc;u, xanh diệp lục. Hay tại v&ugrave;ng ch&egrave; Xu&acirc;n Mai - H&agrave; Đ&ocirc;ng sẽ h&aacute;i từng l&aacute;, bao gồm l&aacute; gi&agrave; b&aacute;nh tẻ, d&agrave;y r&ograve;n, nhỏ, v&agrave;ng, m&eacute;p &iacute;t răng cưa s&acirc;u.</p>

<h3><strong>Ch&egrave; nụ</strong></h3>

<p>Ch&egrave; nụ hay c&ograve;n gọi l&agrave; nụ hoa ch&egrave;. Đ&acirc;y l&agrave; loại ch&egrave; thu hoạch khi nụ c&ograve;n non (nụ hạt ti&ecirc;u), thường được h&aacute;i trong th&aacute;ng 10 v&agrave; th&aacute;ng 11 dương lịch. Ch&egrave; được h&aacute;i về phơi trong b&oacute;ng m&aacute;t đến khi kh&ocirc; m&agrave;u xanh. D&ugrave; phơi trong b&oacute;ng m&aacute;t sẽ l&acirc;u hơn khi phơi nắng nhưng ch&egrave; sẽ đạt chất lượng cao hơn, giữ được m&agrave;u xanh cho nụ tr&agrave; .</p>

<p>Loại ch&egrave; nụ n&agrave;y được phụ nữ v&agrave; người gi&agrave; kh&aacute; ưa d&ugrave;ng bởi phần trăm Cafein thấp chỉ 2,00% v&agrave; &iacute;t k&iacute;ch th&iacute;ch. Ngo&agrave;i ra, để ch&egrave; c&oacute; m&ugrave;i thơm hơn c&oacute; thể ướp th&ecirc;m hoa c&uacute;c c&ugrave;ng ch&egrave;. Loại ch&egrave; n&agrave;y được sản xuất nhiều tại c&aacute;c tỉnh Nghệ An, H&agrave; Sơn B&igrave;nh Việt Nam.</p>

<h3><strong>Ch&egrave; bạng</strong></h3>

<p>Nguy&ecirc;n liệu của loại ch&egrave; n&agrave;y phần ch&iacute;nh l&agrave; l&aacute; ch&egrave; gi&agrave; được gi&atilde; n&aacute;t hay băm nhỏ th&agrave;nh mẩu d&agrave;i từ 2 mm-1cm, m&agrave;u xanh đen v&agrave; hơi đỏ. L&aacute; ch&egrave; chỉ được sấy đơn giản bằng phơi kh&ocirc;, kh&ocirc;ng qua chế biến. Ch&egrave; Bạng c&oacute; tỷ lệ chất b&eacute;o lớn: 7.14%, Cafein 2.00%, Tanin: 5.25%, đạm: 1,25%, tro tổng số: 4.30%, tro ho&agrave; tan: 1.40%, chất ho&agrave; tan: 19,10%. L&agrave;ng V&acirc;n gi&aacute;p Bạng Thượng - Thanh H&oacute;a l&agrave; nơi đầu ti&ecirc;n ch&egrave; Bạng được l&agrave;m ra.</p>

<h3><strong>Ch&egrave; &ocirc; long</strong></h3>

<p>Ch&egrave; &ocirc; long hay được gọi l&agrave; thanh tr&agrave; l&agrave; loại ch&egrave; vốn được sản xuất tại Trung Quốc (Ph&uacute;c Kiến Quảng Đ&ocirc;ng) v&agrave; Đ&agrave;i Loan trước đ&acirc;y. Ch&egrave; &ocirc; long sẽ trải qua quy tr&igrave;nh chế biến sau: Thu h&aacute;i ch&egrave; sẽ được l&agrave;m h&eacute;o v&agrave; l&ecirc;n men kết hợp, tiếp tục qua bước sao v&agrave; v&ograve; kết hợp sấy kh&ocirc; cuối c&ugrave;ng cho ra th&agrave;nh phẩm. Khi pha ch&egrave; &ocirc; long sẽ cho ra m&agrave;u v&agrave;ng kim, vị đậm đ&agrave;, hương thơm nồng n&agrave;n. Khi ch&egrave; &ocirc; Long d&ugrave;ng c&aacute;c nguy&ecirc;n liệu của từng giống ch&egrave; ri&ecirc;ng sẽ cho ra c&aacute;c danh tr&agrave; &Ocirc; long kh&aacute;c như Thuỷ ti&ecirc;n, Đại hồng b&agrave;o, Sắc chủng, Thiết quan &acirc;m, Kỳ chủng,&hellip;</p>

<h3><strong>Ch&egrave; đen</strong></h3>

<p>Trong&nbsp;<strong>c&aacute;c loại ch&egrave; xuất khẩu của Việt Nam&nbsp;</strong>đ&acirc;y được xem l&agrave; loại ch&egrave; chiếm phần lớn tỷ trọng trong cơ cấu xuất khẩu ch&egrave; của nước ta. Ch&egrave; đen được chế biến theo quy tr&igrave;nh c&ocirc;ng nghệ OTD: ch&egrave; nguy&ecirc;n liệu tươi&rarr; l&agrave;m h&eacute;o&rarr; v&ograve; &rarr;l&ecirc;n men &rarr;sấy kh&ocirc;&rarr; s&agrave;ng ph&acirc;n loại. Sau khi s&agrave;ng v&agrave; ph&acirc;n loại ch&egrave; đen được chia th&agrave;nh nhiều loại từ chất lượng thấp đến cao t&ugrave;y theo k&iacute;ch thước của c&aacute;nh ch&egrave; như: OP, P, BOP, BP , FBOP, PS , F, D.&nbsp;</p>

<p>Nước ch&egrave; đen c&oacute; m&agrave;u n&acirc;u đỏ tươi, vị dễ uống kh&ocirc;ng qu&aacute; gắt, hương thơm dịu.</p>

<h3><strong>Ch&egrave; xanh</strong></h3>

<p>Người xưa thường gọi với c&aacute;i t&ecirc;n kh&aacute;c l&agrave; ch&egrave; lục. Loại ch&egrave; n&agrave;y được trồng v&agrave; sản xuất nhiều tại Việt Nam, Trung Quốc, Đ&agrave;i Loan, Nhật Bản Sản. Ch&uacute;ng được chế biến theo c&aacute;c c&ocirc;ng đoạn: ch&egrave; nguy&ecirc;n liệu tươi &rarr; diệt men &rarr; l&agrave;m nguội &rarr; v&ograve; &rarr;sấy kh&ocirc;&rarr; s&agrave;ng v&agrave; ph&acirc;n loại th&agrave;nh phẩm. Khi pha ch&egrave; xanh cho ra nước m&agrave;u xanh v&agrave;ng s&aacute;ng, vị ch&aacute;t mạnh, c&oacute; hậu, hương thơm phảng phất m&ugrave;i cốm. Diệt men bằng sao chảo gang hoặc bằng m&aacute;y diệt men ở nhiệt độ 230 - 250oC (ch&egrave; sao), hấp hơi nước n&oacute;ng (ch&egrave; hấp), hay chần nhanh v&agrave;o nước s&ocirc;i (ch&egrave; chần). Sấy kh&ocirc; bằng hơi n&oacute;ng, sao chảo (sao suốt), sấy lửa củi, sấy than hoa (ch&egrave; lửa), hoặc phơi nắng kết hợp sấy than (ch&egrave; nắng).</p>

<h3><strong>Ch&egrave; hoa tươi</strong></h3>

<p>Nguy&ecirc;n liệu của ch&egrave; hoa tươi thường gồm c&aacute;c loại hoa: nh&agrave;i, sen, ngọc lan, ng&acirc;u,s&oacute;i, bưởi quế&hellip; Mỗi cơ sở sản xuất sẽ c&oacute; những b&iacute; quyết chế biến ch&egrave; gia truyền ri&ecirc;ng. Nhưng nh&igrave;n chung sẽ gồm c&aacute;c c&ocirc;ng đoạn cơ bản như sau: thu h&aacute;i hoa tươi v&agrave; ch&egrave; rồi đem đi ướp hương (tức l&agrave; trộn ch&egrave; v&agrave; hoa), tiếp đến l&agrave; th&ocirc;ng hoa, s&agrave;ng hoa, sấy kh&ocirc;, để nguội,để hoa, s&agrave;ng hoa v&agrave; cho ra th&agrave;nh phẩm ch&egrave; hoa tươi.</p>

<h3><strong>Ch&egrave; hương</strong></h3>

<p>Ch&egrave; hương l&agrave; sự pha trộn giữa ch&egrave; c&ugrave;ng c&aacute;c hương liệu kh&ocirc; như hoa c&uacute;c kh&ocirc;, hoa ng&acirc;u kh&ocirc;, quế, cam thảo, hạt m&ugrave;i, đại hồi, tiểu hồi&hellip; Với c&aacute;c tỷ lệ kh&aacute;c nhau t&ugrave;y mỗi cơ sở. Quy tr&igrave;nh chế biến loại ch&egrave; hương n&agrave;y gồm c&aacute;c bước cơ bản sau: chọn lọc hương liệu&rarr; sao ch&egrave; &rarr; cho hương liệu v&agrave; sao &rarr; ướp hương trong th&ugrave;ng.</p>
', N'/UploadFiles/images/news/new2.jpg', N'Tổng Quan Về Các Loại Chè Của Việt Nam', 1)
SET IDENTITY_INSERT [dbo].[News] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([OrderID], [OrderDate], [Status], [DeliveryDate], [Paid], [CustomerID], [Discount], [Cancelled], [Approved]) VALUES (1, CAST(N'2022-10-22T10:04:04.927' AS DateTime), 1, CAST(N'2022-08-07T00:00:00.000' AS DateTime), 1, 9, 0, 0, 1)
INSERT [dbo].[Orders] ([OrderID], [OrderDate], [Status], [DeliveryDate], [Paid], [CustomerID], [Discount], [Cancelled], [Approved]) VALUES (2, CAST(N'2022-10-22T16:50:55.047' AS DateTime), 1, NULL, 1, 11, 0, 0, 1)
INSERT [dbo].[Orders] ([OrderID], [OrderDate], [Status], [DeliveryDate], [Paid], [CustomerID], [Discount], [Cancelled], [Approved]) VALUES (3, CAST(N'2022-10-02T13:29:13.917' AS DateTime), 1, CAST(N'2022-09-02T00:00:00.000' AS DateTime), 1, 9, 0, 0, 1)
INSERT [dbo].[Orders] ([OrderID], [OrderDate], [Status], [DeliveryDate], [Paid], [CustomerID], [Discount], [Cancelled], [Approved]) VALUES (4, CAST(N'2022-10-03T17:49:57.700' AS DateTime), 1, NULL, 1, 8, 0, 0, 1)
INSERT [dbo].[Orders] ([OrderID], [OrderDate], [Status], [DeliveryDate], [Paid], [CustomerID], [Discount], [Cancelled], [Approved]) VALUES (5, CAST(N'2022-10-03T18:08:20.787' AS DateTime), 1, NULL, 1, 9, 0, 0, 1)
INSERT [dbo].[Orders] ([OrderID], [OrderDate], [Status], [DeliveryDate], [Paid], [CustomerID], [Discount], [Cancelled], [Approved]) VALUES (6, CAST(N'2022-10-21T00:17:17.280' AS DateTime), 1, NULL, 1, 9, 0, 0, 1)
INSERT [dbo].[Orders] ([OrderID], [OrderDate], [Status], [DeliveryDate], [Paid], [CustomerID], [Discount], [Cancelled], [Approved]) VALUES (7, CAST(N'2022-10-21T00:21:53.357' AS DateTime), 1, NULL, 1, 9, 0, 0, 1)
INSERT [dbo].[Orders] ([OrderID], [OrderDate], [Status], [DeliveryDate], [Paid], [CustomerID], [Discount], [Cancelled], [Approved]) VALUES (8, CAST(N'2022-10-22T15:11:23.027' AS DateTime), 1, NULL, 1, 9, 0, 0, 1)
INSERT [dbo].[Orders] ([OrderID], [OrderDate], [Status], [DeliveryDate], [Paid], [CustomerID], [Discount], [Cancelled], [Approved]) VALUES (9, CAST(N'2022-10-30T19:22:47.220' AS DateTime), 1, NULL, 1, 9, 0, 0, 1)
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[Producers] ON 

INSERT [dbo].[Producers] ([ProducerID], [Name], [MetaTitle], [DisplayOder], [Info], [Logo], [Status]) VALUES (1, N'Chè Mộc Châu', N'Che-Moc-Chau', 1, N'Cao nguyên Mộc Châu (tỉnh Sơn La) là vùng đất được thiên nhiên ưu đãi với các điều kiện thổ nhưỡng và khí hậu thích hợp cho cây chè phát triển.', N'/UploadFiles/images/band12.jpg', 1)
INSERT [dbo].[Producers] ([ProducerID], [Name], [MetaTitle], [DisplayOder], [Info], [Logo], [Status]) VALUES (3, N'Chè Bát Tiên', N'Che-Bat-Tien', 2, N'Chè Bát Tiên có nguồn gốc từ vùng núi cao Đài Bắc, Đài Loan. Được người dân Tuyên Quang mang về trồng thử nghiệm và kết quả cho thấy, loại chè này phù hợp với điều kiện, khí hậu, đất đai tại địa phương, sinh trưởng phát triển mạnh, kháng bệnh tốt. ', N'/UploadFiles/images/band13.jpg', 1)
INSERT [dbo].[Producers] ([ProducerID], [Name], [MetaTitle], [DisplayOder], [Info], [Logo], [Status]) VALUES (7, N'Trà Đinh Ngọc Thái Nguyên', N'Tra-Dinh-Ngoc-Thai-Nguyen', 3, N'Trà Đinh Ngọc vốn đã được mệnh danh là tinh hoa trà Việt Nam. Trong các loại trà ngon của vùng trà Thái Nguyên thì trà Đinh Ngọc là loại trà ngon nhất, tinh túy nhất. ', N'/UploadFiles/images/band19.jpg', 1)
INSERT [dbo].[Producers] ([ProducerID], [Name], [MetaTitle], [DisplayOder], [Info], [Logo], [Status]) VALUES (8, N'Trà Nõn Tôm Thái Nguyên', N'Tra-Non-Tom-Thai-Nguyen', 4, N'Trà Nõn Tôm cũng là một trong những loại chè ngon nức tiếng của vùng chè Tân Cương Thái Nguyên cũng như của Việt Nam. ', N'/UploadFiles/images/duan.jpg', 1)
INSERT [dbo].[Producers] ([ProducerID], [Name], [MetaTitle], [DisplayOder], [Info], [Logo], [Status]) VALUES (9, N' Trà Đinh Nõn', N'Tra-Dinh-Non', 5, N'Trà Đinh Nõn được hái theo quy chuẩn nguyên nõn. Nõn chè Đinh Nõn nhỏ hơn nõn Đinh Ngọc và to hơn chè Nõn Tôm đặc biệt. Chè Đinh Nõn mang hương vị thanh mát tự nhiên tựa trà Đinh Ngọc nhưng lại đậm đà vị chát của chè Nõn Tôm.  ', N'/UploadFiles/images/band10.jpg', 1)
INSERT [dbo].[Producers] ([ProducerID], [Name], [MetaTitle], [DisplayOder], [Info], [Logo], [Status]) VALUES (11, N'Trà Shan Tuyết cổ thụ Tây Bắc', N'Tra-Shan-Tuyet-co-thu-Tay-Bac', 6, N'Rừng núi Tây Bắc từ lâu đã nổi tiếng với những rừng chè Shan tuyết cổ thụ như: Rừng chè Suối Giàng; Rừng chè Tà Xùa; Rừng chè Cao Bồ; Rừng chè Tủa Chùa…', N'/UploadFiles/images/band17.jpg', 1)
INSERT [dbo].[Producers] ([ProducerID], [Name], [MetaTitle], [DisplayOder], [Info], [Logo], [Status]) VALUES (13, N'Chè Tân Cương', N'Che-Tan-Cuong', 7, N'Tân Cương là tên gọi của một xã thuộc thành phố Thái Nguyên, tỉnh Thái Nguyên. Nơi đây cùng với 5 xã liền kề là: Phúc Xuân, Phúc Trìu, Thịnh Đức, Quyết Thắng và Phúc Hà từ lâu đã nổi tiếng với sản phẩm chè búp khô ', N'/UploadFiles/images/ban%C4%91.jpg', 1)
INSERT [dbo].[Producers] ([ProducerID], [Name], [MetaTitle], [DisplayOder], [Info], [Logo], [Status]) VALUES (14, N'Trà Móc Câu Thái Nguyên', N'Tra-Moc-Cau-Thai-Nguyen', 8, N'Ít ai biết rằng chè Móc Câu chính xuất thân từ thương hiệu trà Cánh Hạc vang bóng một thời. Cái tên Móc Câu ra đời cũng một phần là do quy chuẩn khi các nghệ nhân hái chè ” 1 tôm 2 lá, 1 cá 2 chừa “.', N'/UploadFiles/images/band14.jpg', 1)
SET IDENTITY_INSERT [dbo].[Producers] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([ProductID], [Name], [Price], [Discount], [About], [Description], [MetaTitle], [UpdateDate], [InventoryNumber], [ReviewCounts], [SellCounts], [Hot], [New], [SupplierID], [ProducerID], [ProductTypeID], [Image1], [Image2], [Image3], [Image4], [Status]) VALUES (1, N'Chè đen lên men truyền thống', CAST(480000 AS Decimal(18, 0)), 56, N'Chè đen lên men truyền thống', N'<p>&nbsp;</p>

<p>M&ocirc; Tả sản phẩm:</p>

<p>L&aacute; tr&agrave; tươi được thu thập từ trang trại ch&egrave; được chuyển giao trực tiếp đển nh&agrave; m&aacute;y trong v&ograve;ng 4 giờ để giữ cho chất lượng tốt nhất của c&aacute;c l&aacute; tr&agrave;. Mọi giai đoạn của sản xuất tốt-Quản l&yacute; v&agrave; dưới sự kiểm so&aacute;t của của c&aacute;c chuy&ecirc;n gia. Tạo ra sản phẩm OPA kh&ocirc;ng phải l&agrave; đắt tiền nhưng sẽ cung cấp cho bạn một san phẩm tr&agrave; đen c&oacute; m&agrave;u nước đỏ tươi, hương vị v&agrave; hương thơm nhẹ nh&agrave;ng.</p>

<p>Loại : OPA L&ecirc;n men Ch&iacute;nh thống, L&aacute; Đen v&agrave; xoắn</p>

<p>Nguồn gốc 100% l&aacute; tr&agrave; tự nhi&ecirc;n Việt Nam từ n&uacute;i cao-tỉnh Y&ecirc;n B&aacute;i</p>

<p>Mật độ/100 gram 750-850 CC</p>

<p>Độ ẩm: Độ ẩm &le; 3%</p>

<p>M&agrave;u nước: M&agrave;u đỏ tươi, hương thơm dựi nhẹ nh&agrave;ng</p>

<p>Ghi ch&uacute;: Th&iacute;ch hợp pha tr&agrave; sữa, trộn với c&aacute;c loại thảo mộc, tr&aacute;i c&acirc;y v&agrave; thưởng thức...</p>

<p>T&aacute;c dụng của tr&agrave; Tr&agrave; l&agrave; một thức uống vừa tốt cho cảm lạnh v&agrave; c&oacute; thể chữa một số bệnh tim mạch, ti&ecirc;u h&oacute;a, lợi tiểu, chống bức xạ, chống oxy h&oacute;a. Ngo&agrave;i ra, uống tr&agrave; gi&uacute;p mọi người tỉnh t&aacute;o v&agrave; gi&uacute;p phụ nữ c&oacute; l&agrave;n da khỏe v&agrave; đẹp.</p>

<p>Tốt cho sức khỏe</p>

<p>1. Sự hưng phấn của hệ thần kinh trung ương l&agrave;m cho tinh thần minh mẫn, sảng kho&aacute;i</p>

<p>2. Kh&aacute;ng khuẩn</p>

<p>3. Chất chống oxy h&oacute;a, l&agrave;m chậm qu&aacute; tr&igrave;nh l&atilde;o h&oacute;a</p>

<p>4. Ức chế sự ph&aacute;t triển của tế b&agrave;o ung thư</p>

<p>5. Chống huyết &aacute;p cao v&agrave; giảm nguy cơ mắc bệnh tim mạch</p>

<p>6. Ngăn ngừa bệnh tiểu đường, gi&uacute;p kiểm so&aacute;t trọng lượng cơ thể</p>

<p>7. Giảm t&aacute;c động của chất g&acirc;y &ocirc; nhiễm ph&oacute;ng xạ</p>

<p>GỬI MẤU TI&Ecirc;U CHUẨN CHO C&Aacute;C ĐƠN H&Agrave;NG XUẤT KHẨU:</p>

<p>L&agrave;m từ 100% nguy&ecirc;n liệu tự nhi&ecirc;n</p>

<p>D&acirc;y chuyển sản xuất an to&agrave;n v&agrave; k&eacute;p k&iacute;nh</p>

<p>Sản phẩm c&oacute; nguồn gốc từ Việt Nam</p>

<p>M&ocirc; tả sản phẩm Tr&agrave; Đen OPA - L&ecirc;n Men Truyền Thống</p>

<p>Xuất xứ: Thu H&aacute;i từ Nương Tr&agrave; Tr&ecirc;n N&uacute;i cao T&acirc;y Bắc Việt Nam - tỉnh Y&ecirc;n B&aacute;i</p>

<p>Giấy chứng nhận ISO, HACCP, KHOẢNG C&Aacute;CH</p>

<p>Thời hạn sử dụng 2 năm</p>

<p>Th&ocirc;ng tin chi tiết</p>

<p>Chất lượng: Tuyệt Vời</p>

<p>Độ ẩm: 5.57 PCT</p>

<p>Tro: 4.92 PCT</p>

<p>Tr&agrave; bụi: 0.41 PCT (M&agrave;n H&igrave;nh: 0.40mm)</p>

<p>Tr&agrave; bụi: 0.08 PCT (M&agrave;n H&igrave;nh: 0.16mm</p>

<p>Đ&oacute;ng g&oacute;i: Ti&ecirc;u Chuẩn</p>

<p>C&aacute;c Tr&agrave; gi&agrave;u phốt pho, canxi, kali v&agrave; Natri vv macronutrients m&agrave; cơ thể con người cần. Hương vị Si&ecirc;u tươi, ngọt ng&agrave;o, &ecirc;m dịu, mạnh mẽ v&agrave; cao</p>

<p>M&ugrave;i hương hoa</p>

<p>Chi ph&iacute; lấy mẫu Miễn ph&iacute;</p>

<p>Sản phẩm ch&iacute;nh: CTC Tr&agrave; Đen: PF, BP, BOP, FBOP OTD Tr&agrave; Đen: LOẠI TR&Agrave; ĐEN, OP, OPA, BPS, FANNING</p>

<p>Cung cấp tr&agrave; an to&agrave;n cho người uống tr&agrave; to&agrave;n cầu l&agrave; tr&aacute;ch nhiệm cũng như nghĩa vụ của ch&uacute;ng t&ocirc;i. Ch&uacute;ng t&ocirc;i cam kết chỉ cung cấp tr&agrave; tốt cho sức khỏe v&agrave; an to&agrave;n cho người uống tr&agrave; trong nước v&agrave; to&agrave;n cầu.</p>

<p>Hơn nữa, tr&aacute;ch nhiệm x&atilde; hội của doanh nghiệp (CSR) đ&atilde; đ&oacute;ng một phần kh&ocirc;ng thể thiếu trong hoạt động kinh doanh của ch&uacute;ng t&ocirc;i. Ch&uacute;ng t&ocirc;i tự h&agrave;o được hợp t&aacute;c với Rainforest Alliance gi&uacute;p bảo vệ m&ocirc;i trường v&agrave; cung cấp c&aacute;c sản phẩm tốt cho sức khỏe hơn cho người uống tr&agrave;. C&aacute;c quy tr&igrave;nh của ch&uacute;ng t&ocirc;i từ trồng l&aacute; tr&agrave; đến sản xuất đều theo ti&ecirc;u chuẩn RA với sự kiểm so&aacute;t chặt chẽ trong mọi giai đoạn để c&oacute; chất lượng tốt nhất của l&aacute; tr&agrave;.</p>
', N'Che-den-len-men-truyen-thong', CAST(N'2022-10-30T17:49:41.167' AS DateTime), 23, NULL, NULL, 1, 1, 2, 8, 1, N'/UploadFiles/images/Products/cheden/lenmen3.jpg', N'/UploadFiles/images/Products/cheden/lenmen.jpg', N'/UploadFiles/images/Products/cheden/lenmen4.jpg', N'/UploadFiles/images/Products/cheden/lenmen1.jpg', 1)
INSERT [dbo].[Products] ([ProductID], [Name], [Price], [Discount], [About], [Description], [MetaTitle], [UpdateDate], [InventoryNumber], [ReviewCounts], [SellCounts], [Hot], [New], [SupplierID], [ProducerID], [ProductTypeID], [Image1], [Image2], [Image3], [Image4], [Status]) VALUES (2, N'Trà Xanh Nguyên Lá - Túi 200 gram', CAST(200000 AS Decimal(18, 0)), 30, N'NHÀ VƯỜN NGHỈ DƯỠNG CỔNG SÂN GOLF SKYLAKE', N'<ul>
	<li>Tr&agrave; xanh hiện nay l&agrave; một thức uống quen thuộc v&agrave; bổ dưỡng với mọi lứa tuổi. N&oacute; gi&uacute;p giảm c&acirc;n, tốt cho tim, chống l&atilde;o h&oacute;a, đẹp da, tăng khả năng sinh dục&hellip;</li>
</ul>

<h2>Th&ocirc;ng tin về tr&agrave; xanh nguy&ecirc;n l&aacute;&nbsp;</h2>

<p><strong>- Th&agrave;nh phần:</strong>100% l&aacute; tr&agrave; được chọn lọc, dạng l&aacute; to, m&agrave;u xanh nhạt.</p>

<p><strong>- Hương vị:</strong>Đậm đ&agrave;, hơi ch&aacute;t, hậu ngọt.</p>

<p><strong>- Quy c&aacute;ch đ&oacute;ng g&oacute;i:</strong>T&uacute;i kraft thiết kế sang trọng, tiện lợi trong việc bảo quản.</p>

<p><strong>- Hướng dẫn bảo quản:</strong>Tr&agrave; xanh nguy&ecirc;n l&aacute;&nbsp; phải được bảo quản nơi kh&ocirc; r&aacute;o, tho&aacute;ng m&aacute;t, tr&aacute;nh &aacute;nh nắng trực tiếp mặt trời. Lu&ocirc;n đ&oacute;ng k&iacute;n bao tr&agrave; sau khi sử dụng v&agrave; kh&ocirc;ng sử dụng sản phẩm khi c&oacute; m&ugrave;i lạ.</p>

<p><strong>- Hạn sử dụng:</strong>24 th&aacute;ng kể từ ng&agrave;y sản xuất (xem th&ecirc;m tr&ecirc;n bao b&igrave;).</p>

<p>&nbsp;</p>

<p><img src="https://lzd-img-global.slatic.net/g/p/b272a14371cdd1b21ca7f8016e87828d.png_2200x2200q80.jpg_.webp" /></p>

<h2><strong>Quy tr&igrave;nh chăm s&oacute;c tr&agrave; xanh nguy&ecirc;n l&aacute; NOTE tea</strong></h2>

<p>H&agrave;ng năm, đồi tr&agrave; được chăm s&oacute;c, b&oacute;n ph&acirc;n, đốn c&agrave;nh theo định kỳ, đ&uacute;ng thời điểm, đ&uacute;ng lượng, cho chất lượng ch&egrave; ổn định.</p>

<p>Cụ thể, năm một lần xuống ph&acirc;n hữu cơ. M&ugrave;a đ&ocirc;ng đốn tr&agrave;. Ba th&aacute;ng sau, sang xu&acirc;n, b&uacute;p l&ecirc;n tr&agrave; xanh mướt. Hoa v&agrave; quả nở rộ.</p>

<p>B&ecirc;n cạnh đ&oacute;, độ cao v&agrave; ch&ecirc;nh lệch nhiệt độ ng&agrave;y đ&ecirc;m gi&uacute;p tr&agrave; &iacute;t s&acirc;u bệnh n&ecirc;n hạn chế d&ugrave;ng thuốc bảo vệ thực vật.</p>

<h2>C&aacute;ch pha tr&agrave; xanh nguy&ecirc;n l&aacute;&nbsp;ngon</h2>

<p><strong>Bước 1: Chuẩn bị nguy&ecirc;n liệu v&agrave; dụng cụ pha tr&agrave;</strong></p>

<p>Dụng cụ pha tr&agrave;: Ch&eacute;n uống tr&agrave;, ấm nấu nước (Ấm nhỏ sẽ gi&uacute;p bạn dễ pha nhiều lần nước kiểm so&aacute;t nhiệt độ nhưng ấm cũng phải đủ k&iacute;ch thước để b&uacute;p tr&agrave; nở ra được).</p>

<p><strong>Bước 2: L&agrave;m n&oacute;ng dụng cụ pha</strong></p>

<p>D&ugrave;ng nước s&ocirc;i tr&aacute;ng hết to&agrave;n bộ dụng cụ để vệ sinh v&agrave; gi&uacute;p khi pha ấm giữ được nhiệt, l&agrave;m cho tr&agrave; mau ch&iacute;n v&agrave; giữ hương tốt hơn.</p>

<p><strong>Bước 3: Đong tr&agrave;</strong></p>

<p>Cho tr&agrave; v&agrave;o ấm, lượng nước trung b&igrave;nh cho một t&aacute;ch tr&agrave; ngon l&agrave; 150ml/5gram</p>

<p><strong>Bước 4: Đ&aacute;nh thức tr&agrave;</strong></p>

<p>Để đ&aacute;nh thức c&aacute;c sợi tr&agrave;, gi&uacute;p tr&agrave; pha được dậy hương v&agrave; ngon hơn cần đổ nước sấp mặt tr&agrave;, xoay đều ấm 10s v&agrave; đổ nước đi.</p>

<p><strong>Bước 5: H&atilde;m tr&agrave;</strong></p>

<p>Sau khi tr&aacute;ng tr&agrave; xong, bắt đầu h&atilde;m tr&agrave; bằng c&aacute;ch ch&acirc;m nước s&ocirc;i ở nhiệt độ 92 - 96 độ C. R&oacute;t v&agrave;o cho đầy ấm v&agrave; đậy nắp lại (N&ecirc;n ch&acirc;m nhiều để khi đậy nắp v&agrave;o, nước tr&agrave; lại che k&iacute;n phần m&eacute;p của nắp ấm gi&uacute;p cho tr&agrave; kh&ocirc;ng bị mất hương v&agrave; mau ra tr&agrave;).</p>

<p>H&atilde;m tr&agrave; trong v&ograve;ng 40-45s cho lần pha đầu ti&ecirc;n, nước n&agrave;y chủ yếu để thưởng thức m&ugrave;i hương của tr&agrave;, điều chỉnh thời gian tr&agrave; tăng l&ecirc;n cho những lần pha nước tiếp theo.</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p><img src="https://lzd-img-global.slatic.net/g/p/3b23df5c9ab43c49ed6a19e52742e9eb.png_2200x2200q80.jpg_.webp" /></p>

<h2>Tại sao uống tr&agrave; xanh nguy&ecirc;n l&aacute;&nbsp; tốt cho sức khỏe</h2>

<p><em>Thứ nhất</em>, l&agrave; l&aacute; tr&agrave; xanh nguy&ecirc;n l&aacute;&nbsp; bị oxy ho&aacute; rất nhanh trong kh&ocirc;ng kh&iacute;. Khi được b&agrave;y b&aacute;n ở chợ hay si&ecirc;u thị suốt cả ng&agrave;y th&igrave; chắc chắn l&aacute; tr&agrave; sẽ bị oxy ho&aacute; hay l&ecirc;n men dần dần. Khi l&aacute; tr&agrave; bị oxy ho&aacute; th&igrave; th&agrave;nh phần catechin cũng sẽ mất dần theo thời gian. Đ&oacute; l&agrave; chưa kể đến việc bạn mua l&aacute; tươi về kh&ocirc;ng d&ugrave;ng hết ngay. M&agrave; phải chia ra để uống trong nhiều ng&agrave;y. V&agrave; ngăn m&aacute;t tủ lạnh cũng sẽ kh&ocirc;ng thể ngăn được l&aacute; tr&agrave; oxy ho&aacute; li&ecirc;n tục.</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p>Thứ hai, chất lượng l&aacute; tr&agrave; phụ thuộc v&agrave;o v&ugrave;ng trồng. Kh&ocirc;ng phải bất kỳ l&aacute; tr&agrave; xanh trồng ở nơi n&agrave;o cũng c&oacute; chất lượng như nhau. V&igrave; mỗi v&ugrave;ng đất ở nước ta lại th&iacute;ch hợp cho một v&agrave;i loại c&acirc;y trồng ri&ecirc;ng.&nbsp;</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p>&nbsp;</p>
', N'tra-xanh-nguyen-la-tui-200-gram', CAST(N'2022-10-30T17:54:54.437' AS DateTime), 20, NULL, NULL, 1, 1, 2, 7, 2, N'/UploadFiles/images/Products/traxanh/xanh3.jpg', N'/UploadFiles/images/Products/traxanh/xanh1.jpg', N'/UploadFiles/images/Products/traxanh/xanh1.jpg', N'/UploadFiles/images/Products/traxanh/xanh2.jpg', 1)
INSERT [dbo].[Products] ([ProductID], [Name], [Price], [Discount], [About], [Description], [MetaTitle], [UpdateDate], [InventoryNumber], [ReviewCounts], [SellCounts], [Hot], [New], [SupplierID], [ProducerID], [ProductTypeID], [Image1], [Image2], [Image3], [Image4], [Status]) VALUES (3, N'Trà Bạch Đỉnh Shan Hà Giang 100g', CAST(240000 AS Decimal(18, 0)), 60, N'Trà Bạch Đỉnh Shan Hà Giang 100g', N'<p><strong>1. GIỚI THIỆU</strong></p>

<p>Tr&agrave; Bạch Đỉnh Shan H&agrave; Giang l&agrave; loại tr&agrave; được l&agrave;m từ những b&uacute;p tr&agrave; 1 t&ocirc;m non nhất, được h&aacute;i v&agrave;o m&ugrave;a xu&acirc;n (sau một kỳ nghỉ đ&ocirc;ng d&agrave;i để nghỉ ngơi để hấp thụ chất dinh dưỡng). Nguy&ecirc;n liệu l&agrave;m tr&agrave; được h&aacute;i từ những c&acirc;y ch&egrave; cổ thụ hơn 300 năm tuổi tr&ecirc;n n&uacute;i T&acirc;y C&ocirc;n Lĩnh, H&agrave; Giang. Tr&agrave; chỉ được h&aacute;i 1 b&uacute;p tr&agrave; non nhất, hay c&ograve;n gọi l&agrave; Đinh của b&uacute;p tr&agrave; để sản xuất, đ&acirc;y l&agrave; c&ocirc;ng việc rất tỉ mỉ v&agrave; mất nhiều thời gian nhất trong c&aacute;c c&ocirc;ng đoạn l&agrave;m tr&agrave;, nhưng sau khi l&agrave;m ra th&agrave;nh phẩm th&igrave; tr&agrave; đạt hương thơm v&agrave; độ ngọt ngon nhất, ngo&agrave;i ra ngoại h&igrave;nh của tr&agrave; rất đẹp mắt bởi m&agrave;u trắng muốt đều tăm tắp.</p>

<hr />
<p><strong>2. HƯƠNG VỊ</strong></p>

<p>Tr&agrave; Bạch Đỉnh Shan H&agrave; Giang sau khi pha sẽ c&oacute; hương thơm ngọt của m&ugrave;i mật hoa, hương thơm lan toả rất dễ chịu kể cả bạn đ&atilde; pha đến đước thứ 5. Tr&agrave; mang m&agrave;u nước trắng ng&agrave; ng&agrave; khi bạn pha đ&uacute;ng v&agrave; chuyển sang m&agrave;u v&agrave;ng nhạt nếu bạn để ng&acirc;m l&acirc;u, đặc biệt nước rất trong kể cả bạn c&oacute; pha đậm hay nhạt. Vị tr&agrave; ngọt nhẹ nh&agrave;ng, hậu vị ngọt sẽ lắng lại rất l&acirc;u trong cổ v&ocirc; c&ugrave;ng sảng kho&aacute;i. Đặc biệt tr&agrave; c&oacute; pha đậm cũng kh&ocirc;ng c&oacute; vị ch&aacute;t n&ecirc;n rất ph&ugrave; hợp với những người c&oacute; gu tr&agrave; thơm v&agrave; ngọt nhiều.</p>

<hr />
<p><strong>3. T&Aacute;C DỤNG</strong></p>

<ul>
	<li>Thưởng thức tr&agrave; mỗi ng&agrave;y sẽ xua tan cảm gi&aacute;c mệt mỏi, gi&uacute;p tinh thần sảng kho&aacute;i, tỉnh t&aacute;o.</li>
	<li>Tr&agrave; cổ thụ gi&uacute;p giảm lượng cholesterol trong m&aacute;u, gi&uacute;p ngăn ngừa bệnh tim mạch, đặc biệt tốt cho sức khỏe của người gi&agrave;, người mắc bệnh tim mạch.</li>
	<li>Uống ch&egrave; Shan Tuyết cổ thụ h&agrave;ng ng&agrave;y gi&uacute;p l&agrave;m giảm nguy cơ mắc bệnh tiểu đường bởi n&oacute; l&agrave;m giảm lượng đường trong m&aacute;u.</li>
	<li>Hạn chế nguy cơ mắc c&aacute;c bệnh về gan.</li>
	<li>Tốt cho răng miệng, ph&ograve;ng chống dị ứng.</li>
</ul>

<hr />
<p><strong>4. C&Aacute;CH PHA</strong></p>

<p>B1. Tráng sạch &acirc;́m chén trước khi pha</p>

<p>B2. Cho 8-10gr Tr&agrave; Bạch Đỉnh Shan H&agrave; Giang vào &acirc;́m</p>

<p>B3. Ch&acirc;m ng&acirc;̣p trà bằng nước s&ocirc;i 90 &ndash; 100 đ&ocirc;̣ C vào &acirc;́m r&ocirc;̀i đ&ocirc;̉ đi ngay (gọi là: Đánh Thức Trà), đ&ecirc;̉ giúp b&uacute;p trà nở ra đ&ecirc;̉ thoát hương và vị nhanh hơn khi pha.</p>

<p>B4. Ch&acirc;m 120ml nước s&ocirc;i 90 &ndash; 100 đ&ocirc;̣ C vào &acirc;́m r&ocirc;̀i hãm 30 gi&acirc;y. (khi bạn h&atilde;m với lượng nước v&agrave; thời gian h&atilde;m vừa phải như thế n&agrave;y, sẽ giữ được hương thơm v&agrave; vị ngọt của tr&agrave; nhiều hơn khi bạn pha qu&aacute; lo&atilde;ng hoặc ng&acirc;m l&acirc;u cho qu&aacute; đặc)</p>

<p>B5. Rót h&ecirc;́t trà ra chén T&ocirc;́ng (rót h&ecirc;́t trà trong &acirc;́m, kh&ocirc;ng đ&ecirc;̉ lại nước trong &acirc;́m đ&ecirc;̉ tránh bị n&acirc;̃u trà), r&ocirc;̀i từ Chén T&ocirc;́ng rót ra những chén nhỏ đ&ecirc;̉ thưởng thức (m&ocirc;̃i chén trà sẽ đ&ecirc;̀u ch&acirc;́t và kh&ocirc;ng bị chén thì nhạt, chén thì đ&acirc;̣m).</p>

<h3>&nbsp;</h3>
', N'Tra-Bach-Dinh-Shan-Ha-Giang-100g', CAST(N'2022-10-30T18:18:36.987' AS DateTime), 20, NULL, NULL, 6, 6, 2, 9, 3, N'/UploadFiles/images/Products/tracothu/tra3.jpg', N'/UploadFiles/images/Products/tracothu/tra1.jpg', N'/UploadFiles/images/Products/tracothu/tra4.jpg', N'/UploadFiles/images/Products/tracothu/tra2.jpg', 1)
INSERT [dbo].[Products] ([ProductID], [Name], [Price], [Discount], [About], [Description], [MetaTitle], [UpdateDate], [InventoryNumber], [ReviewCounts], [SellCounts], [Hot], [New], [SupplierID], [ProducerID], [ProductTypeID], [Image1], [Image2], [Image3], [Image4], [Status]) VALUES (4, N'Trà Đinh Ngọc', CAST(450000 AS Decimal(18, 0)), 58, N'Trà đinh Thái Nguyên là sản phẩm được chế biến từ nguyên liệu chỉ sử dụng 1 nõn (đọt non hay đinh) để làm nên trà thành phẩm.', N'<p><strong>1. GIỚI THIỆU</strong></p>

<p>Tr&agrave; đinh Th&aacute;i Nguy&ecirc;n l&agrave; sản phẩm được chế biến từ nguy&ecirc;n liệu chỉ sử dụng 1 n&otilde;n (đọt non hay đinh) để l&agrave;m n&ecirc;n tr&agrave; th&agrave;nh phẩm. Những đọt tr&agrave; non phải l&agrave; loại được h&aacute;i tr&ecirc;n những đồi ch&egrave; Th&aacute;i Nguy&ecirc;n được tuyển chọn kỹ lưỡng mới đảm bảo được chất lượng ch&egrave; l&agrave;m ra.</p>

<p>Tr&agrave; đinh l&agrave; loại tr&agrave; cao cấp &amp; qu&yacute; nhất của d&ograve;ng tr&agrave; T&acirc;n Cương Th&aacute;i Nguy&ecirc;n trứ danh. Tr&agrave; sẽ rất ph&ugrave; hợp đối những người uống tr&agrave; s&agrave;nh sỏi hoặc để l&agrave;m m&oacute;n qu&agrave; biếu tặng cho người th&acirc;n cũng rất hợp l&yacute;, v&ocirc; c&ugrave;ng sang trọng v&agrave; đẳng cấp.</p>

<hr />
<p><strong>2. HƯƠNG VỊ</strong></p>

<p>Nước tr&agrave; sau khi pha sẽ c&oacute; m&agrave;u v&agrave;ng cốm (v&agrave;ng v&agrave;ng xanh xanh), sắc nước trong, hương cốm non thanh tao, hương của m&ugrave;i l&uacute;a non thoang thoảng dịu nhẹ đặc trưng của d&ograve;ng tr&agrave; T&acirc;n Cương Th&aacute;i Nguy&ecirc;n, vị tr&agrave; ch&aacute;t rất dịu v&agrave; nhẹ, hậu vị ngọt thanh v&agrave; s&acirc;u, k&egrave;m theo vị ngầy ngậy, đọng lại trong cổ họng rất l&acirc;u.</p>

<hr />
<p><strong>3. T&Aacute;C DỤNG</strong></p>

<ul>
	<li>Gi&uacute;p giảm c&acirc;n hiệu quả.</li>
	<li>Hỗ trợ điều trị h&ocirc;i miệng.</li>
	<li>Cung cấp nhiều vitamin, đặc biệt l&agrave; vitamin C.</li>
	<li>Hỗ trợ lưu th&ocirc;ng m&aacute;u tốt hơn.</li>
	<li>Giảm stress.</li>
	<li>L&agrave;m chậm tiến tr&igrave;nh l&atilde;o h&oacute;a, gi&uacute;p đẹp da.</li>
</ul>

<hr />
<p>&nbsp;</p>

<p>&nbsp;</p>
', N'Tra-Dinh-Ngoc', CAST(N'2022-10-30T18:19:08.430' AS DateTime), 19, NULL, NULL, 45, 44, 1, 1, 3, N'/UploadFiles/images/Products/tracothu/tra7.jpg', N'/UploadFiles/images/Products/tracothu/tra5.jpg', N'/UploadFiles/images/Products/tracothu/tra8.jpg', N'/UploadFiles/images/Products/tracothu/tra6.jpg', 1)
INSERT [dbo].[Products] ([ProductID], [Name], [Price], [Discount], [About], [Description], [MetaTitle], [UpdateDate], [InventoryNumber], [ReviewCounts], [SellCounts], [Hot], [New], [SupplierID], [ProducerID], [ProductTypeID], [Image1], [Image2], [Image3], [Image4], [Status]) VALUES (5, N'Trà Shan Tuyết Hà Giang', CAST(360000 AS Decimal(18, 0)), 30, N'Trà Shan Tuyết Hà Giang sau khi pha sẽ có hương thơm cốm nhẹ quyện mùi hoa lá của núi rừng bay lên rất dễ chịu. Trà mang màu nước vàng xanh nhạt', N'<p><strong>1. GIỚI THIỆU</strong></p>

<p>Tr&agrave; Shan Tuyết H&agrave; Giang l&agrave; loại tr&agrave; được h&aacute;i 1 t&ocirc;m v&agrave; 1 đến 2 l&aacute; non liền kề từ c&acirc;y ch&egrave; cổ thụ hơn 300 năm tuổi tr&ecirc;n n&uacute;i T&acirc;y C&ocirc;n Lĩnh, H&agrave; Giang. Tr&agrave; được h&aacute;i v&agrave;o l&uacute;c s&aacute;ng sớm đến trước giờ ngọ, rồi mang nhanh về xưởng để l&agrave;m h&eacute;o v&agrave; sản xuất ngay để tr&agrave; đạt hương thơm v&agrave; vị được ngon nhất. B&uacute;p tr&agrave; khi h&aacute;i c&oacute; lớp l&ocirc;ng tơ b&aacute;m trắng tr&ecirc;n b&uacute;p, khi sao tr&agrave; xong lớp l&ocirc;ng mao n&agrave;y vẫn b&aacute;m chặt v&agrave;o th&agrave;nh l&aacute; n&ecirc;n người ta gọi l&agrave; Tuyết tr&agrave;, đ&acirc;y l&agrave; m&agrave;u sắc đặc trưng của tr&agrave; Shan Tuyết.</p>

<hr />
<p><strong>2. HƯƠNG VỊ</strong></p>

<p>Tr&agrave; Shan Tuyết H&agrave; Giang sau khi pha sẽ c&oacute; hương thơm cốm nhẹ quyện m&ugrave;i hoa l&aacute; của n&uacute;i rừng bay l&ecirc;n rất dễ chịu. Tr&agrave; mang m&agrave;u nước v&agrave;ng xanh nhạt, nếu pha đậm nước sẽ mang m&agrave;u v&agrave;ng nhiều hơn một ch&uacute;t v&agrave; đặc biệt nước rất trong. Khi mới nhấp một ngụm tr&agrave; bạn sẽ thấy vị hơi ch&aacute;t (ch&aacute;t nhẹ) nhưng rất thanh v&agrave; rất dễ uống chứ kh&ocirc;ng phải vị ch&aacute;t đắng như một số loại tr&agrave; loại kh&aacute;c, sau đ&oacute; bạn sẽ thấy hậu ngọt lắng lại trong cuống họng ngay sau khi bạn uống một ngọm tr&agrave;, v&agrave; hậu ngọt đấy sẽ lắng v&agrave; lưu rất l&acirc;u trọng cổ của bạn. Cảm gi&aacute;c rất dễ chịu v&agrave; thoải m&aacute;i.</p>

<hr />
<p><strong>3. T&Aacute;C DỤNG</strong></p>

<ul>
	<li>Thưởng thức tr&agrave; mỗi ng&agrave;y sẽ xua tan cảm gi&aacute;c mệt mỏi, gi&uacute;p tinh thần sảng kho&aacute;i, tỉnh t&aacute;o.</li>
	<li>Tr&agrave; cổ thụ gi&uacute;p giảm lượng cholesterol trong m&aacute;u, gi&uacute;p ngăn ngừa bệnh tim mạch, đặc biệt tốt cho sức khỏe của người gi&agrave;, người mắc bệnh tim mạch.</li>
	<li>Uống ch&egrave; Shan Tuyết cổ thụ h&agrave;ng ng&agrave;y gi&uacute;p l&agrave;m giảm nguy cơ mắc bệnh tiểu đường bởi n&oacute; l&agrave;m giảm lượng đường trong m&aacute;u.</li>
	<li>Hạn chế nguy cơ mắc c&aacute;c bệnh về gan.</li>
	<li>Tốt cho răng miệng, ph&ograve;ng chống dị ứng.</li>
</ul>

<hr />
<p><strong>4. C&Aacute;CH PHA</strong></p>

<p>B1. Tráng sạch &acirc;́m chén trước khi pha</p>

<p>B2. Cho 8-10gr tr&agrave; Shan Tuyết H&agrave; Giang vào &acirc;́m</p>

<p>B3. Ch&acirc;m ng&acirc;̣p trà bằng nước s&ocirc;i 90 &ndash; 100 đ&ocirc;̣ C vào &acirc;́m r&ocirc;̀i đ&ocirc;̉ đi ngay ( gọi là: Đánh Thức Trà), đ&ecirc;̉ giúp b&uacute;p trà nở ra đ&ecirc;̉ thoát hương và vị nhanh hơn khi pha.</p>

<p>B4. Ch&acirc;m 120ml nước s&ocirc;i 90 &ndash; 100 đ&ocirc;̣ C vào &acirc;́m r&ocirc;̀i hãm 30 gi&acirc;y. (khi bạn h&atilde;m với lượng nước v&agrave; thời gian h&atilde;m vừa phải như thế n&agrave;y, sẽ giữ được hương thơm v&agrave; vị ngọt của tr&agrave; nhiều hơn khi bạn pha qu&aacute; lo&atilde;ng hoặc ng&acirc;m l&acirc;u cho qu&aacute; đặc)</p>

<p>B5. Rót h&ecirc;́t trà ra chén T&ocirc;́ng (rót h&ecirc;́t trà trong &acirc;́m, kh&ocirc;ng đ&ecirc;̉ lại nước trong &acirc;́m đ&ecirc;̉ tránh bị n&acirc;̃u trà), r&ocirc;̀i từ Chén T&ocirc;́ng rót ra những chén nhỏ đ&ecirc;̉ thưởng thức (m&ocirc;̃i chén trà sẽ đ&ecirc;̀u ch&acirc;́t và kh&ocirc;ng bị chén thì nhạt, chén thì đ&acirc;̣m).</p>
', N'Tra-Shan-Tuyet-Ha-Giang', CAST(N'2022-10-30T18:19:25.110' AS DateTime), 24, NULL, NULL, 2, 2, 2, 13, 4, N'/UploadFiles/images/Products/trasantuyen/3.jpg', N'/UploadFiles/images/Products/trasantuyen/1.jpg', N'/UploadFiles/images/Products/trasantuyen/4.jpg', N'/UploadFiles/images/Products/trasantuyen/2.jpg', 1)
INSERT [dbo].[Products] ([ProductID], [Name], [Price], [Discount], [About], [Description], [MetaTitle], [UpdateDate], [InventoryNumber], [ReviewCounts], [SellCounts], [Hot], [New], [SupplierID], [ProducerID], [ProductTypeID], [Image1], [Image2], [Image3], [Image4], [Status]) VALUES (6, N'Hồng Shan Trà Mộc Châu', CAST(160000 AS Decimal(18, 0)), 43, N'Hồng Shan Trà Mộc Châu là loại trà được lấy nguyên liệu từ búp trà 1 tôm 1 lá non của cây chè cổ thụ trên 200 năm tuổi .', N'<p><strong>1. GIỚI THIỆU</strong></p>

<p>Hồng Shan Tr&agrave; Mộc Ch&acirc;u l&agrave; loại tr&agrave; được lấy nguy&ecirc;n liệu từ b&uacute;p tr&agrave; 1 t&ocirc;m 1 l&aacute; non của c&acirc;y ch&egrave; cổ thụ tr&ecirc;n 200 năm tuổi . B&uacute;p tr&agrave; sau khi h&aacute;i được sản xuất v&agrave; chế biến l&ecirc;n men với điều kiện nhiệt độ v&agrave; độ ẩm ph&ugrave; hợp để tạo ra hương vị đặc trưng của Hồng Tr&agrave; Cổ Thụ&nbsp;</p>

<hr />
<p><strong>2. HƯƠNG VỊ</strong></p>

<p>Hồng shan tr&agrave; Mộc Ch&acirc;u sau khi pha tr&agrave; dậy l&ecirc;n hương thơm tự nhi&ecirc;n, kh&ocirc;ng gắt, hương thơm của sự kết hợp giữa mật ong rừng v&agrave; tr&aacute;i c&acirc;y h&ograve;a quyện c&ugrave;ng nhau. Khi nhấp một ngụm tr&agrave; đầu ti&ecirc;n bạn c&oacute; thể cảm nhận được l&agrave; vị tr&agrave; sẽ kh&ocirc;ng ch&aacute;t, kh&ocirc;ng gắt, vị ch&aacute;t gần như mất hết m&agrave; chỉ c&ograve;n lại hậu vị ngọt. Tất cả những hương vị đ&oacute; tạo n&ecirc;n cảm gi&aacute;c thoải m&aacute;i, m&aacute;t mẻ, nhẹ nh&agrave;ng m&agrave; lại thanh tao, gi&uacute;p cho người thưởng tr&agrave; c&oacute; những gi&acirc;y ph&uacute;t thư gi&atilde;n tuyệt vời.</p>

<hr />
<p><strong>3. T&Aacute;C DỤNG</strong></p>

<ul>
	<li>Xua tan cảm gi&aacute;c mệt mỏi, gi&uacute;p tinh thần sảng kho&aacute;i, tỉnh t&aacute;o.</li>
	<li>Gảm lo &acirc;u, tăng sự tập trung, tăng cường c&aacute;c tia s&oacute;ng an pha hoạt động trong n&atilde;o l&agrave;m cho đầu &oacute;c thư giản, an thần.</li>
	<li>Gi&uacute;p ngủ ngon hơn, kh&ocirc;ng g&acirc;y mất ngủ như những loại tr&agrave; kh&aacute;c.</li>
	<li>Tăng cường miễn dịch, kh&aacute;ng vi&ecirc;m.</li>
	<li>Loại bỏ hoặc giảm thiểu c&aacute;c gốc tự do nguy&ecirc;n nh&acirc;n g&acirc;y n&ecirc;n l&atilde;o h&oacute;a da.</li>
	<li>Uống hồng shan tr&agrave; Mộc Ch&acirc;u thường xuy&ecirc;n sẽ gi&uacute;p l&agrave;n da lu&ocirc;n căng mịn v&agrave; tươi trẻ.</li>
	<li>giảm thiểu h&agrave;m lượng cholesterol trong m&aacute;u, giảm mỡ m&aacute;u, điều h&ograve;a huyết &aacute;p, giảm nguy cơ bệnh tiểu đường, b&eacute;o ph&igrave; hiệu quả.</li>
</ul>
', N'Hong-Shan-Tra-Moc-Chau', CAST(N'2022-10-30T18:12:54.750' AS DateTime), 19, NULL, NULL, 3, 2, 2, 1, 4, N'/UploadFiles/images/Products/trasantuyen/6.jpg', N'/UploadFiles/images/Products/trasantuyen/5.jpg', N'/UploadFiles/images/Products/trasantuyen/8.jpg', N'/UploadFiles/images/Products/trasantuyen/7.jpg', 1)
INSERT [dbo].[Products] ([ProductID], [Name], [Price], [Discount], [About], [Description], [MetaTitle], [UpdateDate], [InventoryNumber], [ReviewCounts], [SellCounts], [Hot], [New], [SupplierID], [ProducerID], [ProductTypeID], [Image1], [Image2], [Image3], [Image4], [Status]) VALUES (7, N'Trà đen hữu cơ nuôi scoby làm kombucha organic Folliet', CAST(300000 AS Decimal(18, 0)), 23, N'Trà đen hữu cơ nuôi scoby làm kombucha, trà đen organic hiệu Folliet Trà trồng tự nhiên và được chọn lọc từ những hộ gia đình ở Mộc Châu, miền Bắc Việt Nam.', N'<p>M&Ocirc; TẢ SẢN PHẨM</p>

<p>Tr&agrave; đen hữu cơ nu&ocirc;i scoby l&agrave;m kombucha, tr&agrave; đen organic hiệu Folliet Tr&agrave; trồng tự nhi&ecirc;n v&agrave; được chọn lọc từ những hộ gia đ&igrave;nh ở Mộc Ch&acirc;u, miền Bắc Việt Nam. Thu hoạch thủ c&ocirc;ng, phơi dưới nắng, cuộn bằng tay Th&agrave;nh phần: Tr&agrave; đen hữu cơ nguy&ecirc;n l&aacute; 100% Bảo quản nơi kh&ocirc; r&aacute;o tho&aacute;ng m&aacute;t trong 24 th&aacute;ng v&agrave; chứa trong hộp k&iacute;n khi mở bao b&igrave; Bạn n&agrave;o nu&ocirc;i scoby th&igrave; n&ecirc;n sử dụng tr&agrave; đen hữu cơ sẽ tốt hơn c&aacute;c loại tr&agrave; th&ocirc;ng thường, tr&agrave; thơm dễ uống cực k&igrave;, scoby mới sinh ra b&aacute;o mập tr&ograve;n trịa hơn lu&ocirc;n C&aacute;ch pha tr&agrave; để nu&ocirc;i scoby: - 10g tr&agrave; cho 1 l&iacute;t nước - Scoby v&agrave; nước mồi khỏe (Shop c&oacute; b&aacute;n) - 100g Đường hữu cơ/ đường v&agrave;ng Đun s&ocirc;i nước v&agrave; cho tr&agrave; v&agrave;o ủ 15 ph&uacute;t, lọc bỏ b&atilde; tr&agrave; v&agrave; chờ tr&agrave; nguội, h&ograve;a tan đường rồi cho nước tr&agrave;, nước mồi v&agrave; scoby v&agrave;o b&igrave;nh nu&ocirc;i. Để 2-3 ng&agrave;y l&agrave; c&oacute; th&agrave;nh phẩm Kombucha si&ecirc;u ngon ạ.</p>
', N'Tra-den-huu-co-nuoi-scoby-lam-kombucha-organic-Folliet', CAST(N'2022-10-30T19:10:05.643' AS DateTime), 19, NULL, NULL, 344, 1, 1, 1, 1, N'/UploadFiles/images/Products/cheden/den1.jpg', N'/UploadFiles/images/Products/cheden/den1.jpg', N'/UploadFiles/images/Products/cheden/den3.jpg', N'/UploadFiles/images/Products/cheden/den2.jpg', 1)
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductTypes] ON 

INSERT [dbo].[ProductTypes] ([ProductTypeID], [Name], [MetaTitle], [DisplayOrder], [Status]) VALUES (1, N'Chè đen', N'Che-den', 1, 1)
INSERT [dbo].[ProductTypes] ([ProductTypeID], [Name], [MetaTitle], [DisplayOrder], [Status]) VALUES (2, N'Chè xanh', N'Che-xanh', 2, 1)
INSERT [dbo].[ProductTypes] ([ProductTypeID], [Name], [MetaTitle], [DisplayOrder], [Status]) VALUES (3, N'Chè Cổ Thụ', N'Che-Co-Thu', 3, 1)
INSERT [dbo].[ProductTypes] ([ProductTypeID], [Name], [MetaTitle], [DisplayOrder], [Status]) VALUES (4, N'Chè Shan Tuyết', N'Che-Shan-Tuyet', 4, 1)
SET IDENTITY_INSERT [dbo].[ProductTypes] OFF
GO
SET IDENTITY_INSERT [dbo].[Reviews] ON 

INSERT [dbo].[Reviews] ([ReviewID], [Content], [Star], [CusomerID], [ProductID]) VALUES (1, N'Đánh giá đây nè', NULL, 9, 1)
INSERT [dbo].[Reviews] ([ReviewID], [Content], [Star], [CusomerID], [ProductID]) VALUES (2, N'Đánh giá test', NULL, 9, 2)
INSERT [dbo].[Reviews] ([ReviewID], [Content], [Star], [CusomerID], [ProductID]) VALUES (3, N'Test part 2', NULL, 11, 1)
INSERT [dbo].[Reviews] ([ReviewID], [Content], [Star], [CusomerID], [ProductID]) VALUES (4, N'Test review part 3', NULL, 11, 2)
INSERT [dbo].[Reviews] ([ReviewID], [Content], [Star], [CusomerID], [ProductID]) VALUES (5, N'tốt', NULL, 9, 1)
SET IDENTITY_INSERT [dbo].[Reviews] OFF
GO
SET IDENTITY_INSERT [dbo].[Sliders] ON 

INSERT [dbo].[Sliders] ([SliderID], [Image], [DisplayOrder], [Link], [Info], [Description], [Status]) VALUES (1, N'/UploadFiles/images/Slider/slide1.jpg', 1, NULL, N'Giảm giá  30%', N'Giảm giá cực sốc trong tháng 10', NULL)
INSERT [dbo].[Sliders] ([SliderID], [Image], [DisplayOrder], [Link], [Info], [Description], [Status]) VALUES (3, N'/UploadFiles/images/Slider/slide7.jpg', 2, NULL, N'Giảm giá 35%', N'Giảm giá khi mua 3 sản phẩm trở lên', NULL)
INSERT [dbo].[Sliders] ([SliderID], [Image], [DisplayOrder], [Link], [Info], [Description], [Status]) VALUES (9, N'/UploadFiles/images/Slider/slide.jpg', 3, NULL, N'Giảm giá 40%', N'Giảm giá sốc ', NULL)
SET IDENTITY_INSERT [dbo].[Sliders] OFF
GO
SET IDENTITY_INSERT [dbo].[Suppliers] ON 

INSERT [dbo].[Suppliers] ([SupplierID], [Name], [Address], [Email], [Phone], [Status]) VALUES (1, N'Trà Dotea - Công Ty TNHH Dotea', N'Hồ Chí Minh', N'nhacungcap1@gmail.com', N'0876574865', 1)
INSERT [dbo].[Suppliers] ([SupplierID], [Name], [Address], [Email], [Phone], [Status]) VALUES (2, N'Trà ánh Linh Phúc - Công Ty TNHH ánh Linh Phúc', N'Vũng Tàu', N'nhacungcap2@gmail.com', N'0987647485', 1)
INSERT [dbo].[Suppliers] ([SupplierID], [Name], [Address], [Email], [Phone], [Status]) VALUES (3, N'Chè Bắc Thái Nam - Công Ty TNHH Chè Bắc Thái Nam', N'Thái Nguyên', N'nhacungcap3@gmail.com', N'095854763', 1)
SET IDENTITY_INSERT [dbo].[Suppliers] OFF
GO
/****** Object:  Index [IX_CouponID]    Script Date: 30/10/2022 7:38:45 pm ******/
CREATE NONCLUSTERED INDEX [IX_CouponID] ON [dbo].[DetailCoupon]
(
	[CouponID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ProductID]    Script Date: 30/10/2022 7:38:45 pm ******/
CREATE NONCLUSTERED INDEX [IX_ProductID] ON [dbo].[DetailCoupon]
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_OrderID]    Script Date: 30/10/2022 7:38:45 pm ******/
CREATE NONCLUSTERED INDEX [IX_OrderID] ON [dbo].[DetailOrder]
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ProductID]    Script Date: 30/10/2022 7:38:45 pm ******/
CREATE NONCLUSTERED INDEX [IX_ProductID] ON [dbo].[DetailOrder]
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_CustomerID]    Script Date: 30/10/2022 7:38:45 pm ******/
CREATE NONCLUSTERED INDEX [IX_CustomerID] ON [dbo].[Orders]
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ProducerID]    Script Date: 30/10/2022 7:38:45 pm ******/
CREATE NONCLUSTERED INDEX [IX_ProducerID] ON [dbo].[Products]
(
	[ProducerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ProductTypeID]    Script Date: 30/10/2022 7:38:45 pm ******/
CREATE NONCLUSTERED INDEX [IX_ProductTypeID] ON [dbo].[Products]
(
	[ProductTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_SupplierID]    Script Date: 30/10/2022 7:38:45 pm ******/
CREATE NONCLUSTERED INDEX [IX_SupplierID] ON [dbo].[Products]
(
	[SupplierID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_CusomerID]    Script Date: 30/10/2022 7:38:45 pm ******/
CREATE NONCLUSTERED INDEX [IX_CusomerID] ON [dbo].[Reviews]
(
	[CusomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ProductID]    Script Date: 30/10/2022 7:38:45 pm ******/
CREATE NONCLUSTERED INDEX [IX_ProductID] ON [dbo].[Reviews]
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DetailCoupon]  WITH CHECK ADD  CONSTRAINT [FK_dbo.DetailCoupon_dbo.Coupons_CouponID] FOREIGN KEY([CouponID])
REFERENCES [dbo].[Coupons] ([CouponID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DetailCoupon] CHECK CONSTRAINT [FK_dbo.DetailCoupon_dbo.Coupons_CouponID]
GO
ALTER TABLE [dbo].[DetailCoupon]  WITH CHECK ADD  CONSTRAINT [FK_dbo.DetailCoupon_dbo.Products_ProductID] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Products] ([ProductID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DetailCoupon] CHECK CONSTRAINT [FK_dbo.DetailCoupon_dbo.Products_ProductID]
GO
ALTER TABLE [dbo].[DetailOrder]  WITH CHECK ADD  CONSTRAINT [FK_dbo.DetailOrder_dbo.Orders_OrderID] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Orders] ([OrderID])
GO
ALTER TABLE [dbo].[DetailOrder] CHECK CONSTRAINT [FK_dbo.DetailOrder_dbo.Orders_OrderID]
GO
ALTER TABLE [dbo].[DetailOrder]  WITH CHECK ADD  CONSTRAINT [FK_dbo.DetailOrder_dbo.Products_ProductID] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Products] ([ProductID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DetailOrder] CHECK CONSTRAINT [FK_dbo.DetailOrder_dbo.Products_ProductID]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Orders_dbo.Customers_CustomerID] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customers] ([CustomerID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_dbo.Orders_dbo.Customers_CustomerID]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Products_dbo.Producers_ProducerID] FOREIGN KEY([ProducerID])
REFERENCES [dbo].[Producers] ([ProducerID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_dbo.Products_dbo.Producers_ProducerID]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Products_dbo.ProductTypes_ProductTypeID] FOREIGN KEY([ProductTypeID])
REFERENCES [dbo].[ProductTypes] ([ProductTypeID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_dbo.Products_dbo.ProductTypes_ProductTypeID]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Products_dbo.Suppliers_SupplierID] FOREIGN KEY([SupplierID])
REFERENCES [dbo].[Suppliers] ([SupplierID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_dbo.Products_dbo.Suppliers_SupplierID]
GO
ALTER TABLE [dbo].[Reviews]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Reviews_dbo.Customers_CusomerID] FOREIGN KEY([CusomerID])
REFERENCES [dbo].[Customers] ([CustomerID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Reviews] CHECK CONSTRAINT [FK_dbo.Reviews_dbo.Customers_CusomerID]
GO
ALTER TABLE [dbo].[Reviews]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Reviews_dbo.Products_ProductID] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Products] ([ProductID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Reviews] CHECK CONSTRAINT [FK_dbo.Reviews_dbo.Products_ProductID]
GO
USE [master]
GO
ALTER DATABASE [Webche] SET  READ_WRITE 
GO
