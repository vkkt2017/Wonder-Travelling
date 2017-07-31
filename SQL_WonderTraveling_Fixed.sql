USE master
GO
IF DB_ID ('WonderTravelling') is not null
   Drop database [WonderTravelling]
	GO
	Create database [WonderTravelling]
	Go

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
	[PromotionID] [int] null,
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
	[CarAirConditioning] [bit] NULL,
	[CarDoors] [tinyint] NULL,
	[CarSeats] [tinyint] NULL,
	[CarStatus] [bit] NULL,
	[CarPrice] [float] NULL,
	[CarGPS] [bit] NULL,
	[CarPushChair] [bit] NULL,
	
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
CREATE TABLE [dbo].[CarBookedDetail](
	[CarBookedDetailID] [int] IDENTITY(1,1) NOT NULL,
	[CarQuantity] [tinyint] NULL,
	[CarRecieveDate] [datetime] not null,
	[CarReturnCaDate] [datetime] not null,
	[CarRealityDate] [datetime] not null,
	[CarID] [int] NULL,
	[BookedID] [varchar](20) NULL
 CONSTRAINT [PK_CarBookedDetailID] PRIMARY KEY CLUSTERED 
(
	[CarBookedDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO


/****** Object:  Table [dbo].[CustomerUser]    Script Date: 7/18/2017 11:52:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CustomerUser](
	[CustomerID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerUsername] [varchar](20) NULL,
	[Password] [varchar](20) NULL,
	[FullName] [nvarchar](50) NULL,
	[Phone] [varchar](20) NULL,
	[Email] [nvarchar](50) NULL,
	[RoleID] [int] NULL,
	[RepresentativeID] [int] NULL,
	[Status] [bit] NOT NULL
 CONSTRAINT [PK_CustomerUser] PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
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
	[Image1] [varchar](200) NULL,
	[Image2] [varchar](200) NULL,
	[Image3] [varchar](200) NULL,
	[Image4] [varchar](200) NULL,
	[Image5] [varchar](200) NULL,
	[TourID] [varchar](20) NULL,
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
	[TourBookedDetailID] varchar(20) primary key,
	ISGroup bit,
	DepartureDate Datetime,
	[NumberOfKid] [tinyint] NULL,
	[NumberOfBaby] [tinyint] NULL,
	[NumberOfPeople] [tinyint] NULL,
	[Status] [tinyint] null,
	[BookedID] [varchar](20) NULL,
	[TourID] [varchar](20) NULL
) 

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
	[Destination] [nvarchar](max) NULL,
 CONSTRAINT [PK_TourCategory] PRIMARY KEY CLUSTERED 
(
	[TourCategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]


delete from TourCategory

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
CREATE TABLE [dbo].[Tours](

	[TourID] [varchar](20) primary key NOT NULL,
	[TourTitle] [nvarchar](50) NULL,
	[EvenTourPrice] [float] NULL,
	[OddTourPrice] [float] NULL,
	[DepatureDay] [varchar](50) NULL,
	[HotelRank] [tinyint] NULL,
	[DepaturePoint] [nvarchar](100) NULL,
	[Transportation] [tinyint] NULL,
	[Duration] [tinyint] NULL,
	[Tickets] [tinyint] NULL,
	[Status] [bit] NULL,
	[TourCategoryID] [varchar](20) NULL
 )
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




insert into Role values 
('admin'),
('moderator'),
('user'),
('smod'),
('guest')
go


insert into CustomerUser values
('john', '123', 'John', '1212121212', 'john@email.com', 3, 1, 1),
('alex', '123', 'Alex', '2323232323', 'alex@email.com', 3, 1, 1),
('mary', '123', 'Mary', '3434343434', 'mary@email.com', 3, 1, 1),
('alan', '123', 'Alan', '4545454545', 'alan@email.com', 3, 1,1),
('kary', '123', 'Kary', '5656565656', 'kary@email.com', 3, 1,1),

('vu', '123', 'Dương Đình Vũ', '1212121212', 'vu@email.com', 4, 1, 1),
('khoa', '123', 'Phạm Đăng Khoa', '2323232323', 'alex@email.com', 3, 1, 1),
('mary', '123', 'Mary', '3434343434', 'mary@email.com', 2, 2, 1),
('alan', '123', 'Alan', '4545454545', 'alan@email.com', 1, 2,1),
('kary', '123', 'Kary', '5656565656', 'kary@email.com', 1, 2,1)
go



insert into TourCategory values 
('MN', N'Tour Miền Nam', N'Phú Quốc, Vũng tàu, Tiền Giang, Cần Thơ'),
('TN', N'Tour Tây Nguyên', N'Đà Lạt, Buôn Mê, Pleiku, Kon Tum')
go

insert into tours values
('PQ01', 'Tour Phú Quốc 3 Ngày 2 Đêm', 2500000, 3000000, '2, 8, 12, 16, 20, 24, 28 ', 2, 'Thành Phố Hồ Chí Minh', 1, 3, 45, 1, 'MN'),
('VT01', 'Tour Vũng Tàu 2 Ngày 1 Đêm', 1500000, 1700000, '2, 4, 6, 14, 18', 2, 'Thành Phố Hồ Chí Minh', 2, 2, 45, 1, 'MN'),
('TG01', 'Tour Tiền Giang 3 Ngày 2 Đêm', 1500000, 1800000, '3, 5, 7, 18, 26,', 2, 'Thành Phố Hồ Chí Minh', 1, 3, 45, 1, 'MN'),
('CT01', 'Tour Cần Thơ 2 Ngày 1 Đêm', 2500000, 2800000, '4, 9, 16', 2, 'Thành Phố Hồ Chí Minh', 2, 2, 45, 1, 'MN'),
('DL01', 'Tour Đà Lạt 3 Ngày 2 Đêm', 2500000, 3000000, '3, 5, 7', 2, 'Thành Phố Hồ Chí Minh', 2, 3, 45, 1, 'MN')
go


insert into Schedule values
(N'Ngày 1: TP.HCM – Du Lịch Phú Quốc', N'– Buổi sáng: Hướng dẫn viên của Du Lịch Bến Nghé đón quý khách tại sân bay Tân Sơn Nhất, đáp chuyến bay đi Phú Quốc.
+ Xe đón quý khách tại sân bay về khách sạn nhận phòng, tắm biển.
– Buổi chiều: Xe đưa quý khách khởi hành tham quan Đông Đảo:
+ Làng chài Hàm Ninh: Làng chài cổ xưa của người dân trên đảo, nơi du khách có thể mua hải sản khô, tươi, quà lưu niệm ở đây với giá rẻ.
+ Suối Tranh: Con suối tuyệt đẹp bắt nguồn từ dãy núi Hàm Ninh.
+ Khu vườn tiêu Suối Đá: Tìm hiểu về cách trồng tiêu tại vườn, tiêu Phú Quốc nổi tiếng với hạt to, đen và cay thơm.
+ Nhà thùng nước mắm Khải Hoàn: Tìm hiểu cách chế biến nước mắm cá cơm rất nổi tiếng trong và ngoài nước theo cách làm truyền thống của người dân Phú Quốc với
 hàm lượng dinh dưỡng rất cao.
+ Rượu sim: Loại rượu vang làm từ trái sim rừng chín. Gặp gỡ và trò chuyện với người đầu tiên chế biến ra rượu sim sơn tại cơ sở sản xuất rượu sim Bảy Gáo.
+ Chùa Sư Muôn: Ngôi chùa cổ xinh đẹp với không gian thoáng mát, thanh tịnh.
+ Trên đường về, đoàn ghé tham quan Dinh Cậu, biểu tượng văn hóa, tín ngưỡng của ngư dân Phú Quốc.
– Buổi tối: Quý khách dùng cơm tối, tự do thư giãn hoặc khám phá Đảo Ngọc về đêm, tham quan chợ đêm Dinh Cậu,
 mua những món quà  nhỏ để lưu dấu kỉ niệm tour du lich Phu Quoc.', 'assets/images/a.jpg','', '', '', '', 'PQ01'),
(N'Ngày 2: Khám phá Đảo Ngọc Phú Quốc', N'– Buổi sáng: Quý khách dùng điểm tâm, sau đó xe đưa khách bắt đầu khám phá Nam Đảo Ngọc:
+ Ngọc Trai Việt Nhật: Quý khách tìm hiểu quy trình nuôi cấy ngọc trai.
+ Nhà lao Cây Dừa: di tích chiến tranh.
+ Đoàn dùng cơm trưa tại nhà hàng.
– Buổi chiều: Xe đưa quý khách tham quan Bãi Sao, một trong những bãi biển đẹp nhất Phú Quốc với bãi cát trắng,
 mịn, dài thẳng tắp, du khách sẽ được đắm mình trong làn nước biển xanh mát.
+ Trên đường về khách, quý khách ghé tham quan cụm Cảng An Thới, ngắm cảnh sinh hoạt nhộn nhịp của ngư dân,
 chụp hình lưu niệm quần đảo An Thới.
– Buổi tối: Đoàn trở về khách sạn, tắm biển, nghỉ ngơi và dùng cơm tối, tự túc khám phá hoặc có thể tham gia chương trình câu cá (chi phí tự túc)
.', 'assets/images/a.jpg','', '', '', '', 'PQ01'),
(N'Ngày 3 Phú Quốc – TP.HCM', N'– Buổi sáng: Quý khách dùng điểm tâm, tự do mua sắm tại chợ Dương Đông. Đoàn trả phòng khách sạn, xe đưa
 quý khách ra sân bay Phú Quốc đáp chuyến bay về lại TP.HCM.
– Buổi trưa: Đến sân bay Tân Sơn Nhất, Du lịch Bến Nghé chia tay đoàn, kết thúc Tour du lịch Phú Quốc.','', '', '', '', 'assets/images/a.jpg', 'PQ01'),
(N'Ngày 1 Thành Phố Hồ Chí Minh - Vũng Tàu - Khu Du Lịch Sinh Thái Hồ Mây', N'– Buổi sáng: Xe và hướng dẫn
 viên Du lịch Bến Nghé đón quý khách tại điểm hẹn, khởi hành đi Vũng Tàu,
 mở đầu chương trình tour du lịch Vũng Tàu – Hồ Mây. Trên đường đi quý khách dừng chân ăn sáng tại nhà hàng, đoàn nghe thuyết minh và sinh hoạt
  vui chơi cùng hướng dẫn viên.
+ Đến Vũng Tàu, quý khách có dịp trải nghiệm cảm giác lướt êm đềm trên không bằng tuyến cable treo dài 500m hiện đại nhất Việt Nam nối liền hòn Ngưu (bãi Trước)
 với Khu du lịch sinh thái Hồ Mây trên đỉnh núi Lớn cao 240m.
+ Quý khách tự do tham quan các công trình lịch sử như lô cốt thời Pháp, đài rada Vi Ba… khám phá cánh rừng nguyên sinh rộng bạt ngàn hay hòa mình vào tiếng nhạc
 du dương của rừng hoa anh đào xum xuê tán lá và rừng thông Caribean. Đặc biệt chiêm ngưỡng Hồ Mây – Thác Nước – đạt kỷ lục Guiness là hồ nhân tạo trên núi lớn
  nhất Việt Nam, rộng hàng chục ngàn mét vuông đầy thơ mộng cùng với thác nước đổ từ độ cao 9m tạo ra một âm thanh vui tai, tham gia các trò chơi cảm giác mạnh
   đua xe Thể thức 1, xe trượt dốc với công nghệ hiện đại và an toàn…
+ Quý khách dùng cơm trưa tại nhà hàng.
– Buổi chiều: Xe đưa quý khách về khách sạn nhận phòng, nghỉ ngơi, tự do tắm biển.
– Buổi tối: Quý khách dùng cơm tối tại nhà hàng, tự do dạo phố biển về đêm.', 'assets/images/a.jpg','', '', '', '', 'VT01'),
(N'Ngày 2 Khu Du Lịch Biển DIC – Tượng chúa KITO – TP.HCM', N'– Buổi sáng: Sau khi dùng bữa sáng,
 xe đưa đoàn nhận lều và ghế dù tại Khu du lịch biển DIC. HDV tổ chức các hoạt động teambuilding mang tính đồng đội cao, các trò chơi
  trên biển hấp dẫn như đua ghe ngo, nàng tiên cá, đưa nước về nguồn. Quý khách tự do tắm biển. Đoàn dùng cơm trưa tại nhà hàng, sau đó xe
   đưa đoàn đến chinh phục Tượng Chúa Kito cao 32m trên đỉnh Núi Nghinh Phong – một tác phẩm nghệ thuật kiến trúc lớn của Việt Nam. Quý khách chiêm
    ngưỡng vẻ đẹp toàn thành phố Vũng Tàu từ trên cao. Đoàn xuống núi, chia tay thành phố biển trở về TP.HCM. Trên đường dừng chân nghỉ ngơi thưởng
	 thức sữa bò Long Thành, mua sắm đặc sản làm quà cho người thân.
– Buổi chiều: Xe đưa quý khách về lại điểm đón ban đầu, Du lịch Bến Nghé chia tay, kết thúc chương trình tour du lịch Vũng Tàu – Hồ Mây.', 'assets/images/a.jpg','', '', '', '', 'VT01'),
(N'Ngày 1 Thành Phố Hồ Chí MInh - Tiền Giang - Bến Tre', N'– Buổi sáng: Xe và hướng dẫn Du Lịch Bến Nghé đón đoàn khởi hành rời Tp. Hồ Chí Minh đi
 Tiền Giang. Đoàn dừng chân dùng điểm tâm tại Ngã Trung Lương. Quý khách tham quan Trại rắn Đồng Tâm, trung tâm nuôi trồng, nghiên cứu dược liệu
  lớn nhất cả nước. Tiếp tục tham quan khu di tích lịch sử Chiến thắng Rạch Gầm – Xoài Mút. Đoàn ăn trưa tại nhà hàng và nhận phòng tại khách sạn Sông Tiền.
– Buổi chiều: Tập trung tại bến đò, thuyền đưa quý khách đi dọc sông Tiền, ngắm hoàng hôn buông xuống bốn cù lao tứ linh: Long, Lân, Qui, Phụng. 
Thuyền đến Cù Lao Thới Sơn, đoàn tham quan vườn cây ăn trái, thưởng thức các loại trái cây theo mùa và nghe Đàn ca Tài tử Nam Bộ. 
Thuyền tiếp tục đưa đoàn đến Cồn Phụng – Bến Tre, tham quan và nghe thuyết minh về giáo phái Đạo Dừa. Thuyền đưa quý khách đến Tân Thạch,
 ngắm đom đóm lấp lánh trong đêm dưới những rặng bần, cảnh quang mang đến cảm xúc tuyệt vời từ thiên nhiên.
– Buổi tối: Trở về Mỹ Tho, quý khách dùng cơm tối. Quý khách tự do khám phá phố phường Mỹ Tho, ăn uống, mua sắm tại chợ Đêm.', 'assets/images/a.jpg','', '', '', '','TG01'),
(N'Ngày 2: Cồn Thới Sơn - Mỹ Tho - Thành Phố Hồ Chí Minh', N'– Buổi sáng: Quý khách dùng điểm tâm sáng tại nhà hàng Sông Tiền, làm thủ tục trả phòng khách sạn.
 Du khách đến bến tàu 30/4, thuyền Rồng đưa khách đến bến đò chèo trên Cồn Thới Sơn. Đoàn bắt đầu chia đội tranh tài qua các trò chơi vui, mang đậm nét văn hóa
  miền sông nước:
+ Thi chèo xuồng: Mỗi đội trên 1 chiếc đò, thi chèo đò về đến đích với cự ly khoảng 1.500m, thắng cuộc là đội nhanh nhất.
Quý khách nghỉ ngơi và thưởng thức trà mật ong với các loại bánh mứt. Tiếp tục di chuyển đến Lò kẹo dừa đặc sản.
+ Thi gói kẹo dừa: Mỗi đội gói 40 viên kẹo dừa, sau đó đóng thành 1 gói xem đội nào hoàn thành trong thời gian ngắn nhất.
+ Thi chèo thuyền thúng: Mỗi đội trên 1 chiếc thuyền thúng, Khi có hiệu lệnh thi chèo thuyền thúng từ cổng sau KDLThới Sơn đến cầu dây (khoảng 70m) xem đội nào
 nhanh nhất.
+ Thi đi cầu dây: Các thành viên trong đội lần lượt đi qua cầu dây, người nào té xuống ao thì phải đi lại từ đầu. Đội nào đi qua cầu dây trong thời gian ngắn nhất
 là đội thắng cuộc.
+ Tát mương, bắt cá: Sau khi tát cạn ao, các đội sẽ thi nhau bắt cá. Đội nào bắt được nhiều cá nhất là đội thắng cuộc trong trò chơi này. Sau khi tham gia tất cả
 các trò chơi, Ban tổ chức sẽ tổng kết lại và phát thưởng cho đội thắng cuộc.
Chiến lợi phẩm thắng được từ trò chơi “tát mương, bắt cá”, quý khách tận tay chế biến những con cá do mình bắt được bằng cách nướng trên ngọn lửa rơm hồng và
 thưởng thức cá nướng trui tại chỗ với bánh tráng, rau, bún cùng với ly rượu nếp đậm đà hương vị quê hương.
– Buổi chiều: Quý khách dùng cơm trưa tại KDL Thới Sơn với đặc sản Nam Bộ. Đoàn trở về Mỹ Tho, tiếp tục viếng chùa Vĩnh Tràng, một ngôi chùa đẹp và nổi tiếng
 bậc nhất ở Miền Tây. Xe tiếp tục đưa Quý khách đến tham quan quan và mua sắm trái cây đặc sản tại chợ đầu mối trái cây của Tiền Giang.
Tạm biệt vùng đất Miền Tây xinh đẹp, xe đưa quý khách về TP.HCM, kết thúc chương trình.', 'assets/images/a.jpg','', '', '', '', 'TG01'),
(N'Ngày 1: TP.HCM – Tiền Giang – Bến Tre – Cần Thơ', N'– Buổi sáng: Xe và hướng dẫn Du Lịch Bến Nghé đón đoàn rời Tp.Hồ Chí Minh đi Tiền Giang,
 mở đầu Tour du lịch Cần Thơ. Đến Trung Lương, quý khách thưởng thức đặc sản hủ tíu Mỹ Tho, du khách tham quan vùng đất trứ danh của thời Nam Kỳ lục Tỉnh,
  còn có tên là Mỹ Tho Đại Phố. Xuống đò qua sông Tiền, du khách tham quan làng nghề truyền thống lò kẹo dừa, cơ sở nuôi ong lấy mật… đi xe ngựa trên con lộ
   nhỏ uốn khúc quanh co, ngắm những làng quê rợp bóng dừa ở xứ Bến Tre, ngồi xuồng chèo khám phá cuộc sống sông nước miền Tây.
– Buổi chiều: Qua cầu Cần Thơ, đoàn tham quan nhà cổ Bình Thủy, được xây dựng từ năm 1870, kiến trúc tiêu biểu của Nam Bộ, nhà có năm gian hai chái,
 sườn nhà bằng gỗ được chạm khắc tinh tế, điêu luyện, có vườn lan và cây xương rồng 40 tuổi, còn gọi là Kim Lăng Trụ, cao 8 thước, được xác lập kỷ lục
  cao nhất Việt Nam.
– Buổi tối: Xe đưa đoàn đi bến Ninh Kiều, nằm ở ngã ba sông Hậu, là đệ nhất danh thắng xứ Tây Đô, du khách dạo chơi, thưởng thức cà phê ở các quán Thủy Tạ ven sông.
 Dùng bữa tối với các món ăn Nam Bộ trên du thuyền Cần Thơ và lắng nghe những giai điệu ngọt ngào của miền sông nước. Quý khách có thể tự do đi dao chợ đêm Tây Đô,
  hoặc về khu đô thị mới Cái Khế, để khám phá nét nhộn nhịp, sầm uất của Cần Thơ về đêm.', 'assets/images/a.jpg','', '', '', '', 'CT01'),
  (N'Ngày 2: ', N'– Buổi sáng: Đoàn xuống đò đi chợ nổi Cái Răng, một trong những chợ nổi lớn nhất Đồng Bằng Sông Cửu Long, tìm hiểu đời sống thương hồ của người
   Nam Bộ, mua đặc sản Miền Tây. Đò xuôi sông Hậu, đưa quý khách vào vườn du lịch Mỹ Khánh, thăm nhà cổ của Ông hội đồng, xem đua heo, thư giãn tại nhà vườn.
– Buổi chiều: Xe đưa đoàn đi qua cầu Cần Thơ (Thành phố Cần Thơ), cầu treo Mỹ Thuận (tỉnh Vĩnh Long) theo quốc lộ 1A lên đường cao tốc Sài Gòn – Trung Lương về lại
 Sài Gòn. Xe đưa đoàn về đến điểm đón ban đầu, Du lịch Bến Nghé chia tay, kết thúc Tour du lịch Cần Thơ', 'assets/images/a.jpg','', '', '', '', 'CT01'),
 (N'Ngày 1: Ngày 1: TP.HCM – Bảo Lộc – Tour Đa Lat', N'– Buổi sáng: Xe và hướng dẫn viên Du Lịch Bến Nghé đón đoàn tại điểm hẹn, khởi hành tour du lich Da Lat.
  Quý khách dùng điểm tâm tại  Đồng Nai. Đến Tp. Bảo Lộc, xe đưa đoàn ghé tham quan Thác Damb’ri, một trong những ngọn thác nổi tiếng đẹp và hùng vĩ ở Bảo Lộc.
   Quý khách dùng cơm trưa tại khu du lịch.
– Buổi chiều: Xe đưa quý khách vượt đèo Preen, vào trung tâm thành phố Đà Lạt nhận phòng, nghỉ ngơi, tận hưởng tiết trời xe lạnh của thành phố cao nguyên.
– Buổi tối: Sau khi dùng cơm tối, quý khách đi dạo Đà Lạt về đêm, thưởng thức các món ngon tại chợ đêm Âm Phủ, hương vị cà phê phố núi ở quán Thủy Tạ, uống sữa
 đậu nành nóng, đi xe đạp đôi, xe ngựa kéo ngắm cảnh hồ Xuân Hương và cảm nhận cái se lạnh đặc trưng của Đà Lạt.', 'assets/images/a.jpg','', '', '', '', 'DL01'),
 (N'Ngày 2: Du Lịch Đà Lạt – Thung Lũng Vàng', N'– Buổi sáng: Sau khi dùng điểm tâm, xe băng qua những cánh đồng trồng hoa, rau củ của ngoại ô Đà Lạt đưa quý khách
  vào tham quan khu du lịch Thung Lũng Vàng, một quần thể kiến trúc độc đáo với thác nước, hồ, núi đồi…Quý khách viếng nhà thờ Domain de Marie, một công trình kiến
   trúc độc đáo nằm trên đồi Mai Anh, sự kết hợp hài hòa của lối kiến trúc phương Tây và kiến trúc dân gian của dân tộc thiểu số vùng Tây Nguyên. Quý khách dùng
    cơm trưa, nghỉ ngơi tại khách sạn.
– Buổi chiều: Xe đưa đoàn tìm hiểu Biệt điện Bảo Đại, nơi sinh sống của vị vua cuối cùng của Việt Nam. Du khách tiếp tục tham quan Vườn Hoa Thành Phố,
 nơi hội tụ đầy đủ các loài hoa tại Đà Lạt.
– Buổi tối: Sau khi dùng cơm tối, quý khách có thể tham dự đêm văn nghệ cồng chiêng, uống rượu cần, dùng thịt nướng, giao lưu văn hóa với người Tây Nguyên.', 'assets/images/a.jpg','', '', '', '', 'DL01'),
(N'Ngày 3: Du Lich Da Lat – TP.HCM', N'– Buổi sáng: Quý khách ăn sáng, trả phòng khách sạn. Đoàn vãn cảnh Thiền viện Trúc Lâm, thuộc Thiền phái Trúc Lâm Yên Tử,
 danh lam nổi tiếng nhất Đà Lạt. Du khách tiếp tục tham quan Hồ Tuyền Lâm thơ mộng hoặc đi cáp treo qua đồi Rôbin, ngắm toàn cảnh thành phố Đà Lạt. Tạm biệt thành
  phố ngàn hoa, đoàn khởi hành về lại TP.HCM. Về đến thành phố Bảo Lộc, quý khách dùng cơm trưa, thưởng thức đặc sản trà, cà phê, mua sắm tại Danh trà Tâm Châu.
– Buổi chiều: Xe và hướng dẫn Du Lịch Bến Nghé đưa đoàn về điểm đón ban đầu, chia tay quý khách, kết thúc chương trình tour Da Lat.', 'assets/images/a.jpg','', '', '', '', 'DL01')
go

insert into TourBookedDetail values
('TBDT001', 1, '07-07-2017', 1, 0, 45, 3, 'BTour001', 'VT01'),
('TBDT002', 1, '07-07-2017', 0, 1, 40, 3, 'BTour002', 'VT01'),
('TBDT003', 1, '08-07-2017', 2, 0, 45, 3, 'BTour003', 'CT01'),
('TBDT004', 0, '08-07-2017', 0, 1, 1, 3, 'BTour004', 'CT01'),
('TBDT005', 0, '08-07-2017', 1, 0, 2, 3, 'BTour005', 'PQ01'),
('TBDT006', 0, '08-07-2017', 0, 0, 3, 3, 'BTour006', 'VT01'),
('TBDT007', 0, '08-20-2017', 2, 0, 4, 1, 'BTour007', 'CT01'),
('TBDT008', 0, '08-20-2017', 0, 0, 3, 1, 'BTour008', 'CT01')

insert into Car values
/*1*/('Subaru BRZ','update','manual',1,2,2,1,1200,1,0),
/*2*/('Subaru BRZ','update','manual',1,2,2,1,1200,1,0),
/*3*/('Porsche 911 (911)','update','manual',1,2,2,1,1400,1,0),
/*4*/('Porsche 911 (911)','update','manual',1,2,2,1,1400,1,0),
/*5*/('Toyota Innova 2015','update','automatic',1,4,7,1,800,1,1),
/*6*/('Toyota Innova 2015','update','automatic',1,4,7,1,800,1,1),
/*7*/('Toyota Innova 2015','update','automatic',1,4,7,1,800,1,1),
/*8*/('Toyota Innova 2016','update','automatic',1,4,7,1,810,1,1),
/*9*/('Toyota Innova 2016','update','automatic',1,4,7,1,810,1,1),
/*10*/('Toyota Innova 2016','update','automatic',1,4,7,1,810,1,1),
/*11*/('Chevrolet Traverse','update','automatic',1,4,7,1,820,1,1),
/*12*/('Chevrolet Traverse','update','automatic',1,4,7,1,820,1,1),
/*13*/('Chevrolet Tahoe','update','automatic',1,3,7,1,825,1,1),
/*14*/('Chevrolet Tahoe','update','automatic',1,3,7,1,825,1,1),
/*15*/('Mercedes-Benz Sprinter Passenger Van','update','automatic',1,4,12,1,820,1,1),
/*16*/('Mercedes-Benz Sprinter Passenger Van','update','automatic',1,4,12,1,820,1,1),
/*17*/('Chevrolet Express Passenger Van','update','automatic',1,4,12,1,820,1,1),
/*18*/('Chevrolet Express Passenger Van','update','automatic',1,4,12,1,820,1,1),
/*19*/('Nissan NV 3500 Passenger Van','update','automatic',1,4,12,1,820,1,1),
/*20*/('Nissan NV 3500 Passenger Van','update','automatic',1,4,12,1,820,1,1),
/*21*/('Ford Transit Passenger Wagon','update','automatic',1,4,15,1,825,1,1),
/*22*/('Ford Transit Passenger Wagon','update','automatic',1,4,15,1,825,1,1),
/*23*/('Ford Transit Passenger Wagon','update','automatic',1,4,15,1,825,1,1),
/*24*/('Huyndai County','update','automatic',1,4,24,1,828,1,1),
/*25*/('Toyota Coaster','update','automatic',1,4,24,1,828,1,1),
/*26*/('Huyndai Universe','update','automatic',1,2,45,1,940,1,1),
/*27*/('Huyndai Universe','update','automatic',1,2,45,1,940,1,1),
/*28*/('Huyndai Aero Space','update','automatic',1,2,45,1,950,1,1),
/*29*/('Huyndai Aero Space','update','automatic',1,2,45,1,950,1,1)

go

insert into CarBookedDetail values
(1,'01/10/2017','01/20/2017','01/20/2017',2,'BCar001'),
(2,'01/12/2017','01/21/2017','01/21/2017',1,'BCar001'),
(1,'04/10/2017','04/20/2017','04/20/2017',29,'BCar001'),
(2,'05/10/2017','07/20/2017','07/20/2017',27,'BCar001'),
(3,'04/30/2017','05/20/2017','05/20/2017',20,'BCar001')

go

insert into Promotion values
('ABC123','12/13/2016','12/14/2016','12/29/2016'),
('DAR123','02/22/2017','04/27/2016','07/29/2016'),
('CAD456','04/13/2016','04/14/2016','04/29/2016'),
('GHA999','12/13/2015','12/14/2016','12/29/2016'),
('HAM981','01/29/2016','12/14/2016','12/29/2016')
go

insert into Review values
(1, '07/13/2017'),
(2,'12/13/2013'),
(3,'07/13/2015'),
(4,'01/27/2016'),
(5,'02/25/2016')
go

insert into ReviewDetail values
(N'Chất lượng Tour cần dc cải thiên',2,1,1,'DL01'), 
(N'Tour cần đa dang hơn',4,2,1,'PQ01'), 
(N'Tour cần được đa dạng hóa',2,1,2,'DL01'), 
(N'Chất lượng xe cần được tiện nghi tốt',5,1,15,'DL01'), 
(N'Xe ko dc trang bị tiện nghi tốt',2,1,24,'DL01')
go 
insert into Booked values
('BTour001',1,'07-29-2017',1),
('BTour002',2,'07-28-2017',2),
('BTour003',3,'07-28-2017',3),
('BTour004',4,'07-27-2017',4),
('BTour005',1,'07-26-2017',1),
('BTour006',2,'07-25-2017',1),
('BTour007',3,'07-24-2017',1),
('BTour008',4,'07-23-2017',1),
('BCar001',1,'07-20-2017',1)
go
select * from Booked
GO
ALTER TABLE [dbo].[Booked]  WITH CHECK ADD  CONSTRAINT [FK_Booked_CustomerUser] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[CustomerUser] ([CustomerID])
GO
ALTER TABLE [dbo].[Booked] CHECK CONSTRAINT [FK_Booked_CustomerUser]
GO

ALTER TABLE [dbo].[Booked]  WITH CHECK ADD  CONSTRAINT [FK_Booked_Promotion] FOREIGN KEY([PromotionID])
REFERENCES [dbo].[Promotion] ([PromotionID])
GO
ALTER TABLE [dbo].[Booked] CHECK CONSTRAINT [FK_Booked_Promotion]
GO



ALTER TABLE [dbo].[CarBookedDetail]  WITH CHECK ADD  CONSTRAINT [FK_CarBookedDetail_Booked] FOREIGN KEY([BookedID])
REFERENCES [dbo].[Booked] ([BookedID])
GO
ALTER TABLE [dbo].[CarBookedDetail] CHECK CONSTRAINT [FK_CarBookedDetail_Booked]
GO

ALTER TABLE [dbo].[CustomerUser]  WITH CHECK ADD  CONSTRAINT [FK_CustomerUser_CustomerUser] FOREIGN KEY([RepresentativeID])
REFERENCES [dbo].[CustomerUser] ([CustomerID])
GO
ALTER TABLE [dbo].[CustomerUser] CHECK CONSTRAINT [FK_CustomerUser_CustomerUser]
GO

ALTER TABLE [dbo].[CustomerUser]  WITH CHECK ADD  CONSTRAINT [FK_CustomerUser_Role] FOREIGN KEY([RoleID])
REFERENCES [dbo].[Role] ([RoleID])
GO
ALTER TABLE [dbo].[CustomerUser] CHECK CONSTRAINT [FK_CustomerUser_Role]
GO

ALTER TABLE [dbo].[Review]  WITH CHECK ADD  CONSTRAINT [FK_Review_CustomerUser] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[CustomerUser] ([CustomerID])
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

ALTER TABLE [dbo].[CarBookedDetail]  WITH CHECK ADD  CONSTRAINT [FK_CarBookedDetail_Car] FOREIGN KEY([CarID])
REFERENCES [dbo].[Car] ([CarID])
GO
ALTER TABLE [dbo].[CarBookedDetail] CHECK CONSTRAINT [FK_CarBookedDetail_Car]
GO

ALTER TABLE [dbo].[ReviewDetail]  WITH CHECK ADD  CONSTRAINT [FK_ReviewDetail_Tour] FOREIGN KEY([TourID])
REFERENCES [dbo].[Tours] ([TourID])
GO
ALTER TABLE [dbo].[ReviewDetail] CHECK CONSTRAINT [FK_ReviewDetail_Tour]
GO

ALTER TABLE [dbo].[Schedule]  WITH CHECK ADD  CONSTRAINT [FK_Schedule_Tour] FOREIGN KEY([TourID])
REFERENCES [dbo].[Tours] ([TourID])
GO
ALTER TABLE [dbo].[Schedule] CHECK CONSTRAINT [FK_Schedule_Tour]
GO

ALTER TABLE [dbo].[TourBookedDetail]  WITH CHECK ADD  CONSTRAINT [FK_TourBookedDetail_Booked] FOREIGN KEY([BookedID])
REFERENCES [dbo].[Booked] ([BookedID])
GO
ALTER TABLE [dbo].[TourBookedDetail] CHECK CONSTRAINT [FK_TourBookedDetail_Booked]
GO

ALTER TABLE [dbo].[TourBookedDetail]  WITH CHECK ADD  CONSTRAINT [FK_TourBookedDetail_Tour] FOREIGN KEY([TourID])
REFERENCES [dbo].[Tours] ([TourID])
GO
ALTER TABLE [dbo].[TourBookedDetail] CHECK CONSTRAINT [FK_TourBookedDetail_Tour]
GO

ALTER TABLE [dbo].[Tours]  WITH CHECK ADD  CONSTRAINT [FK_Tours_TourCategory] FOREIGN KEY([TourCategoryID])
REFERENCES [dbo].[TourCategory] ([TourCategoryID])
GO
ALTER TABLE [dbo].[Tours] CHECK CONSTRAINT [FK_Tours_TourCategory]
GO

