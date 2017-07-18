USE [WonderTravelling]
GO
/****** Object:  Table [dbo].[Booked]    Script Date: 7/18/2017 11:52:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Booked](
	[BookedID] [varchar](20) NOT NULL,
	[CustomerID] [int] NULL,
	[CreatedDate] [datetime] NULL,
 CONSTRAINT [PK_Booked] PRIMARY KEY CLUSTERED 
(
	[BookedID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Car]    Script Date: 7/18/2017 11:52:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Car](
	[CarID] [int] IDENTITY(1,1) NOT NULL,
	[CarName] [varchar](50) NULL,
	[CarImage] [varchar](100) NULL,
	[CarTrasmission] [varchar](100) NULL,
	[CarAirConditioning] [varchar](20) NULL,
	[CarDoors] [tinyint] NULL,
	[CarSeats] [tinyint] NULL,
	[CarStatus] [bit] NULL,
	[CarPriceID] [int] NULL,
	[CarOptionID] [int] NULL,
	[PromotionID] [int] NULL,
	[CarBrandID] [int] NULL,
 CONSTRAINT [PK_Car] PRIMARY KEY CLUSTERED 
(
	[CarID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CarBookedDetailID]    Script Date: 7/18/2017 11:52:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CarBookedDetailID](
	[CarBookedDetailID] [int] IDENTITY(1,1) NOT NULL,
	[CarQuantity] [tinyint] NULL,
	[CarID] [nchar](10) NULL,
	[BookedID] [varchar](20) NULL,
 CONSTRAINT [PK_CarBookedDetailID] PRIMARY KEY CLUSTERED 
(
	[CarBookedDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CarBrand]    Script Date: 7/18/2017 11:52:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CarBrand](
	[CarBrandID] [int] IDENTITY(1,1) NOT NULL,
	[CarBrandName] [varchar](50) NULL,
 CONSTRAINT [PK_CarBrand] PRIMARY KEY CLUSTERED 
(
	[CarBrandID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CarOption]    Script Date: 7/18/2017 11:52:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CarOption](
	[CarOptionID] [int] IDENTITY(1,1) NOT NULL,
	[CarGPS] [bit] NULL,
	[CarPushChair] [bit] NULL,
 CONSTRAINT [PK_CarOption] PRIMARY KEY CLUSTERED 
(
	[CarOptionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CarPrice]    Script Date: 7/18/2017 11:52:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CarPrice](
	[CarPriceID] [int] IDENTITY(1,1) NOT NULL,
	[CarPrice] [float] NULL,
 CONSTRAINT [PK_CarPrice] PRIMARY KEY CLUSTERED 
(
	[CarPriceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CustomerUser]    Script Date: 7/18/2017 11:52:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CustomerUser](
	[CustomerUSerID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerUsername] [varchar](20) NULL,
	[Password] [varchar](20) NULL,
	[FullName] [nvarchar](50) NULL,
	[Phone] [varchar](20) NULL,
	[Email] [nvarchar](50) NULL,
	[RoleID] [int] NULL,
	[RepresentativeID] [int] NULL,
 CONSTRAINT [PK_CustomerUser] PRIMARY KEY CLUSTERED 
(
	[CustomerUSerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Promotion]    Script Date: 7/18/2017 11:52:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Promotion](
	[PromotionID] [int] IDENTITY(1,1) NOT NULL,
	[PromotionCode] [varchar](20) NULL,
	[CreatedDate] [datetime] NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
 CONSTRAINT [PK_Promotion] PRIMARY KEY CLUSTERED 
(
	[PromotionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Review]    Script Date: 7/18/2017 11:52:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Review](
	[ReviewID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerID] [int] NULL,
	[CreatedDate] [datetime] NULL,
 CONSTRAINT [PK_Review] PRIMARY KEY CLUSTERED 
(
	[ReviewID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ReviewDetail]    Script Date: 7/18/2017 11:52:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ReviewDetail](
	[ReviewDetailID] [int] IDENTITY(1,1) NOT NULL,
	[Content] [nvarchar](300) NULL,
	[Rating] [tinyint] NULL,
	[ReviewID] [int] NULL,
	[CarID] [int] NULL,
	[TourID] [varchar](20) NULL,
 CONSTRAINT [PK_ReviewDetail] PRIMARY KEY CLUSTERED 
(
	[ReviewDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Role]    Script Date: 7/18/2017 11:52:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Role](
	[RoleID] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [varchar](20) NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Schedule]    Script Date: 7/18/2017 11:52:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Schedule](
	[ScheduleID] [int] IDENTITY(1,1) NOT NULL,
	[Summary] [nvarchar](300) NULL,
	[Content] [nvarchar](max) NULL,
	[Image] [varchar](200) NULL,
	[TourDetailID] [varchar](20) NULL,
 CONSTRAINT [PK_Schedule] PRIMARY KEY CLUSTERED 
(
	[ScheduleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TourBookedDetail]    Script Date: 7/18/2017 11:52:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TourBookedDetail](
	[TourBookedDetailID] [int] IDENTITY(1,1) NOT NULL,
	[NumberOfKid] [tinyint] NULL,
	[NumberOfBaby] [tinyint] NULL,
	[NumberOfPeople] [tinyint] NULL,
	[TourID] [varchar](20) NULL,
	[BookedID] [varchar](20) NULL,
 CONSTRAINT [PK_TourBookedDetail] PRIMARY KEY CLUSTERED 
(
	[TourBookedDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TourCategory]    Script Date: 7/18/2017 11:52:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TourCategory](
	[TourCategoryID] [varchar](20) NOT NULL,
	[TourCategoryName] [nvarchar](50) NULL,
	[Destination] [nvarchar](50) NULL,
	[DurationFrom] [tinyint] NULL,
	[DurationTo] [tinyint] NULL,
	[PriceFrom] [float] NULL,
	[PriceTo] [float] NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_TourCategory] PRIMARY KEY CLUSTERED 
(
	[TourCategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TourDetail]    Script Date: 7/18/2017 11:52:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TourDetail](
	[TourDetailID] [varchar](20) NOT NULL,
	[EvenTourPrice] [float] NULL,
	[OddTourPrice] [float] NULL,
	[DepatureDate] [datetime] NULL,
	[HotelRank] [tinyint] NULL,
	[DepaturePoint] [nvarchar](100) NULL,
	[Transportation] [tinyint] NULL,
	[Duration] [tinyint] NULL,
	[Tickets] [tinyint] NULL,
	[Status] [bit] NULL,
	[TourID] [varchar](20) NULL,
	[PromotionID] [int] NULL,
 CONSTRAINT [PK_TourDetail] PRIMARY KEY CLUSTERED 
(
	[TourDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tours]    Script Date: 7/18/2017 11:52:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tours](
	[TourID] [varchar](20) NOT NULL,
	[TourTitle] [nvarchar](50) NULL,
	[TourCategoryID] [varchar](20) NULL,
 CONSTRAINT [PK_Tours] PRIMARY KEY CLUSTERED 
(
	[TourID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[Booked]  WITH CHECK ADD  CONSTRAINT [FK_Booked_CustomerUser] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[CustomerUser] ([CustomerUSerID])
GO
ALTER TABLE [dbo].[Booked] CHECK CONSTRAINT [FK_Booked_CustomerUser]
GO
ALTER TABLE [dbo].[Car]  WITH CHECK ADD  CONSTRAINT [FK_Car_CarBookedDetailID] FOREIGN KEY([CarID])
REFERENCES [dbo].[CarBookedDetailID] ([CarBookedDetailID])
GO
ALTER TABLE [dbo].[Car] CHECK CONSTRAINT [FK_Car_CarBookedDetailID]
GO
ALTER TABLE [dbo].[Car]  WITH CHECK ADD  CONSTRAINT [FK_Car_CarBrand] FOREIGN KEY([CarBrandID])
REFERENCES [dbo].[CarBrand] ([CarBrandID])
GO
ALTER TABLE [dbo].[Car] CHECK CONSTRAINT [FK_Car_CarBrand]
GO
ALTER TABLE [dbo].[Car]  WITH CHECK ADD  CONSTRAINT [FK_Car_CarOption] FOREIGN KEY([CarOptionID])
REFERENCES [dbo].[CarOption] ([CarOptionID])
GO
ALTER TABLE [dbo].[Car] CHECK CONSTRAINT [FK_Car_CarOption]
GO
ALTER TABLE [dbo].[Car]  WITH CHECK ADD  CONSTRAINT [FK_Car_CarPrice] FOREIGN KEY([CarPriceID])
REFERENCES [dbo].[CarPrice] ([CarPriceID])
GO
ALTER TABLE [dbo].[Car] CHECK CONSTRAINT [FK_Car_CarPrice]
GO
ALTER TABLE [dbo].[Car]  WITH CHECK ADD  CONSTRAINT [FK_Car_Promotion] FOREIGN KEY([PromotionID])
REFERENCES [dbo].[Promotion] ([PromotionID])
GO
ALTER TABLE [dbo].[Car] CHECK CONSTRAINT [FK_Car_Promotion]
GO
ALTER TABLE [dbo].[CarBookedDetailID]  WITH CHECK ADD  CONSTRAINT [FK_CarBookedDetailID_Booked] FOREIGN KEY([BookedID])
REFERENCES [dbo].[Booked] ([BookedID])
GO
ALTER TABLE [dbo].[CarBookedDetailID] CHECK CONSTRAINT [FK_CarBookedDetailID_Booked]
GO
ALTER TABLE [dbo].[CustomerUser]  WITH CHECK ADD  CONSTRAINT [FK_CustomerUser_CustomerUser] FOREIGN KEY([RepresentativeID])
REFERENCES [dbo].[CustomerUser] ([CustomerUSerID])
GO
ALTER TABLE [dbo].[CustomerUser] CHECK CONSTRAINT [FK_CustomerUser_CustomerUser]
GO
ALTER TABLE [dbo].[CustomerUser]  WITH CHECK ADD  CONSTRAINT [FK_CustomerUser_Role] FOREIGN KEY([RoleID])
REFERENCES [dbo].[Role] ([RoleID])
GO
ALTER TABLE [dbo].[CustomerUser] CHECK CONSTRAINT [FK_CustomerUser_Role]
GO
ALTER TABLE [dbo].[Review]  WITH CHECK ADD  CONSTRAINT [FK_Review_CustomerUser] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[CustomerUser] ([CustomerUSerID])
GO
ALTER TABLE [dbo].[Review] CHECK CONSTRAINT [FK_Review_CustomerUser]
GO
ALTER TABLE [dbo].[ReviewDetail]  WITH CHECK ADD  CONSTRAINT [FK_ReviewDetail_Car] FOREIGN KEY([CarID])
REFERENCES [dbo].[Car] ([CarID])
GO
ALTER TABLE [dbo].[ReviewDetail] CHECK CONSTRAINT [FK_ReviewDetail_Car]
GO
ALTER TABLE [dbo].[ReviewDetail]  WITH CHECK ADD  CONSTRAINT [FK_ReviewDetail_Review] FOREIGN KEY([ReviewID])
REFERENCES [dbo].[Review] ([ReviewID])
GO
ALTER TABLE [dbo].[ReviewDetail] CHECK CONSTRAINT [FK_ReviewDetail_Review]
GO
ALTER TABLE [dbo].[ReviewDetail]  WITH CHECK ADD  CONSTRAINT [FK_ReviewDetail_TourDetail] FOREIGN KEY([TourID])
REFERENCES [dbo].[TourDetail] ([TourDetailID])
GO
ALTER TABLE [dbo].[ReviewDetail] CHECK CONSTRAINT [FK_ReviewDetail_TourDetail]
GO
ALTER TABLE [dbo].[Schedule]  WITH CHECK ADD  CONSTRAINT [FK_Schedule_TourDetail] FOREIGN KEY([TourDetailID])
REFERENCES [dbo].[TourDetail] ([TourDetailID])
GO
ALTER TABLE [dbo].[Schedule] CHECK CONSTRAINT [FK_Schedule_TourDetail]
GO
ALTER TABLE [dbo].[TourBookedDetail]  WITH CHECK ADD  CONSTRAINT [FK_TourBookedDetail_Booked] FOREIGN KEY([BookedID])
REFERENCES [dbo].[Booked] ([BookedID])
GO
ALTER TABLE [dbo].[TourBookedDetail] CHECK CONSTRAINT [FK_TourBookedDetail_Booked]
GO
ALTER TABLE [dbo].[TourBookedDetail]  WITH CHECK ADD  CONSTRAINT [FK_TourBookedDetail_TourDetail] FOREIGN KEY([TourID])
REFERENCES [dbo].[TourDetail] ([TourDetailID])
GO
ALTER TABLE [dbo].[TourBookedDetail] CHECK CONSTRAINT [FK_TourBookedDetail_TourDetail]
GO
ALTER TABLE [dbo].[TourDetail]  WITH CHECK ADD  CONSTRAINT [FK_TourDetail_Promotion] FOREIGN KEY([PromotionID])
REFERENCES [dbo].[Promotion] ([PromotionID])
GO
ALTER TABLE [dbo].[TourDetail] CHECK CONSTRAINT [FK_TourDetail_Promotion]
GO
ALTER TABLE [dbo].[TourDetail]  WITH CHECK ADD  CONSTRAINT [FK_TourDetail_Tours] FOREIGN KEY([TourID])
REFERENCES [dbo].[Tours] ([TourID])
GO
ALTER TABLE [dbo].[TourDetail] CHECK CONSTRAINT [FK_TourDetail_Tours]
GO
ALTER TABLE [dbo].[Tours]  WITH CHECK ADD  CONSTRAINT [FK_Tours_TourCategory] FOREIGN KEY([TourCategoryID])
REFERENCES [dbo].[TourCategory] ([TourCategoryID])
GO
ALTER TABLE [dbo].[Tours] CHECK CONSTRAINT [FK_Tours_TourCategory]
GO
