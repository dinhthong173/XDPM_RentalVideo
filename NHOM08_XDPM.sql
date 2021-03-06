USE [NHOM18_XDPM]
GO
/****** Object:  Table [dbo].[DVD]    Script Date: 12/8/2020 11:52:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DVD](
	[maDVD] [varchar](255) NOT NULL,
	[trangThai] [int] NOT NULL,
	[maTua] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[maDVD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 12/8/2020 11:52:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[maKH] [varchar](255) NOT NULL,
	[soCMND] [varchar](255) NULL,
	[soDT] [varchar](255) NULL,
	[tenKH] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[maKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhieuDatTruoc]    Script Date: 12/8/2020 11:52:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuDatTruoc](
	[maPhieuDatTruoc] [varchar](255) NOT NULL,
	[ngayDatTruoc] [datetime2](7) NULL,
	[trangThai] [int] NOT NULL,
	[maDVD] [varchar](255) NULL,
	[maKH] [varchar](255) NULL,
	[maTua] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[maPhieuDatTruoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhieuThueTra]    Script Date: 12/8/2020 11:52:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuThueTra](
	[maPhieu] [varchar](255) NOT NULL,
	[ngayThanhToanPhi] [datetime2](7) NULL,
	[ngayThue] [datetime2](7) NULL,
	[ngayTra] [datetime2](7) NULL,
	[phiTreHen] [float] NOT NULL,
	[maDVD] [varchar](255) NOT NULL,
	[maKH] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[maPhieu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TheLoai]    Script Date: 12/8/2020 11:52:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TheLoai](
	[maTheLoai] [varchar](255) NOT NULL,
	[giaThue] [float] NOT NULL,
	[tenTheLoai] [varchar](255) NULL,
	[thoiGianThue] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[maTheLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tua]    Script Date: 12/8/2020 11:52:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tua](
	[maTua] [varchar](255) NOT NULL,
	[tenTua] [varchar](255) NULL,
	[maTheLoai] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[maTua] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[DVD] ([maDVD], [trangThai], [maTua]) VALUES (N'DVD01', 2, N'Tua01')
INSERT [dbo].[DVD] ([maDVD], [trangThai], [maTua]) VALUES (N'DVD02', 2, N'Tua01')
INSERT [dbo].[DVD] ([maDVD], [trangThai], [maTua]) VALUES (N'DVD03', 2, N'Tua01')
INSERT [dbo].[DVD] ([maDVD], [trangThai], [maTua]) VALUES (N'DVD04', 2, N'Tua01')
INSERT [dbo].[DVD] ([maDVD], [trangThai], [maTua]) VALUES (N'DVD05', 2, N'Tua01')
INSERT [dbo].[DVD] ([maDVD], [trangThai], [maTua]) VALUES (N'DVD06', 3, N'Tua02')
INSERT [dbo].[DVD] ([maDVD], [trangThai], [maTua]) VALUES (N'DVD07', 2, N'Tua02')
INSERT [dbo].[DVD] ([maDVD], [trangThai], [maTua]) VALUES (N'DVD08', 2, N'Tua03')
INSERT [dbo].[DVD] ([maDVD], [trangThai], [maTua]) VALUES (N'DVD09', 2, N'Tua03')
INSERT [dbo].[DVD] ([maDVD], [trangThai], [maTua]) VALUES (N'DVD10', 2, N'Tua04')
INSERT [dbo].[DVD] ([maDVD], [trangThai], [maTua]) VALUES (N'DVD11', 2, N'Tua05')
INSERT [dbo].[DVD] ([maDVD], [trangThai], [maTua]) VALUES (N'DVD12', 2, N'Tua04')
INSERT [dbo].[DVD] ([maDVD], [trangThai], [maTua]) VALUES (N'DVD13', 1, N'Tua05')
INSERT [dbo].[DVD] ([maDVD], [trangThai], [maTua]) VALUES (N'DVD14', 1, N'Tua06')
INSERT [dbo].[DVD] ([maDVD], [trangThai], [maTua]) VALUES (N'DVD15', 1, N'Tua07')
INSERT [dbo].[DVD] ([maDVD], [trangThai], [maTua]) VALUES (N'DVD16', 1, N'Tua08')
INSERT [dbo].[DVD] ([maDVD], [trangThai], [maTua]) VALUES (N'DVD17', 1, N'Tua09')
INSERT [dbo].[DVD] ([maDVD], [trangThai], [maTua]) VALUES (N'DVD18', 1, N'Tua10')
INSERT [dbo].[DVD] ([maDVD], [trangThai], [maTua]) VALUES (N'DVD19', 1, N'Tua10')
INSERT [dbo].[DVD] ([maDVD], [trangThai], [maTua]) VALUES (N'DVD20', 2, N'Tua11')
INSERT [dbo].[DVD] ([maDVD], [trangThai], [maTua]) VALUES (N'DVD21', 1, N'Tua11')
INSERT [dbo].[DVD] ([maDVD], [trangThai], [maTua]) VALUES (N'DVD22', 1, N'Tua11')
INSERT [dbo].[DVD] ([maDVD], [trangThai], [maTua]) VALUES (N'DVD23', 1, N'Tua11')
INSERT [dbo].[DVD] ([maDVD], [trangThai], [maTua]) VALUES (N'DVD24', 1, N'Tua12')
INSERT [dbo].[DVD] ([maDVD], [trangThai], [maTua]) VALUES (N'DVD25', 1, N'Tua13')
INSERT [dbo].[DVD] ([maDVD], [trangThai], [maTua]) VALUES (N'DVD26', 1, N'Tua14')
INSERT [dbo].[DVD] ([maDVD], [trangThai], [maTua]) VALUES (N'DVD27', 1, N'Tua15')
INSERT [dbo].[DVD] ([maDVD], [trangThai], [maTua]) VALUES (N'DVD28', 1, N'Tua16')
INSERT [dbo].[DVD] ([maDVD], [trangThai], [maTua]) VALUES (N'DVD29', 1, N'Tua17')
INSERT [dbo].[DVD] ([maDVD], [trangThai], [maTua]) VALUES (N'DVD30', 1, N'Tua19')
INSERT [dbo].[DVD] ([maDVD], [trangThai], [maTua]) VALUES (N'DVD31', 1, N'Tua18')
INSERT [dbo].[KhachHang] ([maKH], [soCMND], [soDT], [tenKH]) VALUES (N'KH01', N'2323232323', N'0929292921', N'Ha Hung')
INSERT [dbo].[KhachHang] ([maKH], [soCMND], [soDT], [tenKH]) VALUES (N'KH02', N'272708691', N'0352391920', N'Thúy nè')
INSERT [dbo].[KhachHang] ([maKH], [soCMND], [soDT], [tenKH]) VALUES (N'KH03', N'123654525', N'0236563202', N'Ðình Thông ')
INSERT [dbo].[KhachHang] ([maKH], [soCMND], [soDT], [tenKH]) VALUES (N'KH04', N'213256322', N'0325632562', N'Phan Pách')
INSERT [dbo].[KhachHang] ([maKH], [soCMND], [soDT], [tenKH]) VALUES (N'KH05', N'213256322', N'0325632562', N'Phan Thanh')
INSERT [dbo].[PhieuDatTruoc] ([maPhieuDatTruoc], [ngayDatTruoc], [trangThai], [maDVD], [maKH], [maTua]) VALUES (N'PDT01', CAST(N'2020-12-08T00:00:00.0000000' AS DateTime2), 2, N'DVD01', N'KH02', N'Tua01')
INSERT [dbo].[PhieuDatTruoc] ([maPhieuDatTruoc], [ngayDatTruoc], [trangThai], [maDVD], [maKH], [maTua]) VALUES (N'PDT02', CAST(N'2020-12-08T00:00:00.0000000' AS DateTime2), 2, N'DVD06', N'KH03', N'Tua02')
INSERT [dbo].[PhieuDatTruoc] ([maPhieuDatTruoc], [ngayDatTruoc], [trangThai], [maDVD], [maKH], [maTua]) VALUES (N'PDT03', CAST(N'2020-12-08T00:00:00.0000000' AS DateTime2), 1, NULL, N'KH04', N'Tua05')
INSERT [dbo].[PhieuThueTra] ([maPhieu], [ngayThanhToanPhi], [ngayThue], [ngayTra], [phiTreHen], [maDVD], [maKH]) VALUES (N'P01', CAST(N'2020-12-08T23:39:15.7910000' AS DateTime2), CAST(N'2020-10-10T00:00:00.0000000' AS DateTime2), CAST(N'2020-12-08T23:16:15.7820000' AS DateTime2), 0, N'DVD01', N'KH01')
INSERT [dbo].[PhieuThueTra] ([maPhieu], [ngayThanhToanPhi], [ngayThue], [ngayTra], [phiTreHen], [maDVD], [maKH]) VALUES (N'P02', CAST(N'2020-12-08T23:44:29.7130000' AS DateTime2), CAST(N'2020-10-10T00:00:00.0000000' AS DateTime2), CAST(N'2020-12-08T23:40:51.9320000' AS DateTime2), 0, N'DVD08', N'KH01')
INSERT [dbo].[PhieuThueTra] ([maPhieu], [ngayThanhToanPhi], [ngayThue], [ngayTra], [phiTreHen], [maDVD], [maKH]) VALUES (N'P03', NULL, CAST(N'2020-12-08T15:05:17.0780000' AS DateTime2), CAST(N'2020-12-08T23:45:49.4580000' AS DateTime2), 0, N'DVD02', N'KH01')
INSERT [dbo].[PhieuThueTra] ([maPhieu], [ngayThanhToanPhi], [ngayThue], [ngayTra], [phiTreHen], [maDVD], [maKH]) VALUES (N'P04', NULL, CAST(N'2020-12-08T15:05:17.0780000' AS DateTime2), NULL, 0, N'DVD03', N'KH02')
INSERT [dbo].[PhieuThueTra] ([maPhieu], [ngayThanhToanPhi], [ngayThue], [ngayTra], [phiTreHen], [maDVD], [maKH]) VALUES (N'P05', NULL, CAST(N'2020-12-08T15:05:17.0780000' AS DateTime2), NULL, 0, N'DVD04', N'KH02')
INSERT [dbo].[PhieuThueTra] ([maPhieu], [ngayThanhToanPhi], [ngayThue], [ngayTra], [phiTreHen], [maDVD], [maKH]) VALUES (N'P06', NULL, CAST(N'2020-12-08T15:05:17.0780000' AS DateTime2), NULL, 0, N'DVD05', N'KH03')
INSERT [dbo].[PhieuThueTra] ([maPhieu], [ngayThanhToanPhi], [ngayThue], [ngayTra], [phiTreHen], [maDVD], [maKH]) VALUES (N'P07', CAST(N'2020-12-08T23:45:49.5030000' AS DateTime2), CAST(N'2020-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2020-12-08T23:45:49.4580000' AS DateTime2), 0, N'DVD06', N'KH04')
INSERT [dbo].[PhieuThueTra] ([maPhieu], [ngayThanhToanPhi], [ngayThue], [ngayTra], [phiTreHen], [maDVD], [maKH]) VALUES (N'P08', NULL, CAST(N'2020-12-08T15:05:17.0780000' AS DateTime2), NULL, 0, N'DVD07', N'KH04')
INSERT [dbo].[PhieuThueTra] ([maPhieu], [ngayThanhToanPhi], [ngayThue], [ngayTra], [phiTreHen], [maDVD], [maKH]) VALUES (N'P09', NULL, CAST(N'2020-12-08T15:05:17.0780000' AS DateTime2), NULL, 0, N'DVD09', N'KH05')
INSERT [dbo].[PhieuThueTra] ([maPhieu], [ngayThanhToanPhi], [ngayThue], [ngayTra], [phiTreHen], [maDVD], [maKH]) VALUES (N'P10', NULL, CAST(N'2020-12-08T15:46:09.9670000' AS DateTime2), NULL, 0, N'DVD10', N'KH01')
INSERT [dbo].[PhieuThueTra] ([maPhieu], [ngayThanhToanPhi], [ngayThue], [ngayTra], [phiTreHen], [maDVD], [maKH]) VALUES (N'P11', NULL, CAST(N'2020-12-08T23:39:15.7910000' AS DateTime2), NULL, 0, N'DVD11', N'KH01')
INSERT [dbo].[PhieuThueTra] ([maPhieu], [ngayThanhToanPhi], [ngayThue], [ngayTra], [phiTreHen], [maDVD], [maKH]) VALUES (N'P12', NULL, CAST(N'2020-12-08T23:44:29.7130000' AS DateTime2), NULL, 0, N'DVD12', N'KH01')
INSERT [dbo].[PhieuThueTra] ([maPhieu], [ngayThanhToanPhi], [ngayThue], [ngayTra], [phiTreHen], [maDVD], [maKH]) VALUES (N'P13', NULL, CAST(N'2020-12-08T23:44:29.7130000' AS DateTime2), NULL, 0, N'DVD20', N'KH01')
INSERT [dbo].[TheLoai] ([maTheLoai], [giaThue], [tenTheLoai], [thoiGianThue]) VALUES (N'TL01', 100000, N'Film', 30)
INSERT [dbo].[TheLoai] ([maTheLoai], [giaThue], [tenTheLoai], [thoiGianThue]) VALUES (N'TL02', 50000, N'Game', 30)
INSERT [dbo].[Tua] ([maTua], [tenTua], [maTheLoai]) VALUES (N'Tua01', N'Start Up', N'TL01')
INSERT [dbo].[Tua] ([maTua], [tenTua], [maTheLoai]) VALUES (N'Tua02', N'Kí Sinh trùng', N'TL01')
INSERT [dbo].[Tua] ([maTua], [tenTua], [maTheLoai]) VALUES (N'Tua03', N'Train To Busan', N'TL01')
INSERT [dbo].[Tua] ([maTua], [tenTua], [maTheLoai]) VALUES (N'Tua04', N'City Hunter', N'TL01')
INSERT [dbo].[Tua] ([maTua], [tenTua], [maTheLoai]) VALUES (N'Tua05', N'Time To Hunt', N'TL01')
INSERT [dbo].[Tua] ([maTua], [tenTua], [maTheLoai]) VALUES (N'Tua06', N'Daddy', N'TL02')
INSERT [dbo].[Tua] ([maTua], [tenTua], [maTheLoai]) VALUES (N'Tua07', N'Call Of Duty', N'TL02')
INSERT [dbo].[Tua] ([maTua], [tenTua], [maTheLoai]) VALUES (N'Tua08', N'DotA 2', N'TL02')
INSERT [dbo].[Tua] ([maTua], [tenTua], [maTheLoai]) VALUES (N'Tua09', N'Candy Crush Saga', N'TL02')
INSERT [dbo].[Tua] ([maTua], [tenTua], [maTheLoai]) VALUES (N'Tua10', N'League of Legends', N'TL02')
INSERT [dbo].[Tua] ([maTua], [tenTua], [maTheLoai]) VALUES (N'Tua11', N'PUBG', N'TL02')
INSERT [dbo].[Tua] ([maTua], [tenTua], [maTheLoai]) VALUES (N'Tua12', N'Vainglory', N'TL02')
INSERT [dbo].[Tua] ([maTua], [tenTua], [maTheLoai]) VALUES (N'Tua13', N'Temple Run 2', N'TL02')
INSERT [dbo].[Tua] ([maTua], [tenTua], [maTheLoai]) VALUES (N'Tua14', N'Fruit Ninja ', N'TL02')
INSERT [dbo].[Tua] ([maTua], [tenTua], [maTheLoai]) VALUES (N'Tua15', N'Subway Surfers ', N'TL02')
INSERT [dbo].[Tua] ([maTua], [tenTua], [maTheLoai]) VALUES (N'Tua16', N'Angry Birds Rio ', N'TL02')
INSERT [dbo].[Tua] ([maTua], [tenTua], [maTheLoai]) VALUES (N'Tua17', N'Itaewon Class', N'TL01')
INSERT [dbo].[Tua] ([maTua], [tenTua], [maTheLoai]) VALUES (N'Tua18', N'La Casa de Papel', N'TL01')
INSERT [dbo].[Tua] ([maTua], [tenTua], [maTheLoai]) VALUES (N'Tua19', N'Our Planet', N'TL01')
ALTER TABLE [dbo].[DVD]  WITH CHECK ADD  CONSTRAINT [FKsmx2d4dqur0gxc8cgdd4wdkw6] FOREIGN KEY([maTua])
REFERENCES [dbo].[Tua] ([maTua])
GO
ALTER TABLE [dbo].[DVD] CHECK CONSTRAINT [FKsmx2d4dqur0gxc8cgdd4wdkw6]
GO
ALTER TABLE [dbo].[PhieuDatTruoc]  WITH CHECK ADD  CONSTRAINT [FK2vxhivg6md4ixm0vvn4x5krgu] FOREIGN KEY([maKH])
REFERENCES [dbo].[KhachHang] ([maKH])
GO
ALTER TABLE [dbo].[PhieuDatTruoc] CHECK CONSTRAINT [FK2vxhivg6md4ixm0vvn4x5krgu]
GO
ALTER TABLE [dbo].[PhieuDatTruoc]  WITH CHECK ADD  CONSTRAINT [FKb533j4s814ccc8a4elor4ov18] FOREIGN KEY([maTua])
REFERENCES [dbo].[Tua] ([maTua])
GO
ALTER TABLE [dbo].[PhieuDatTruoc] CHECK CONSTRAINT [FKb533j4s814ccc8a4elor4ov18]
GO
ALTER TABLE [dbo].[PhieuDatTruoc]  WITH CHECK ADD  CONSTRAINT [FKkvpe5cr2lax43pk4ie9mg7egk] FOREIGN KEY([maDVD])
REFERENCES [dbo].[DVD] ([maDVD])
GO
ALTER TABLE [dbo].[PhieuDatTruoc] CHECK CONSTRAINT [FKkvpe5cr2lax43pk4ie9mg7egk]
GO
ALTER TABLE [dbo].[PhieuThueTra]  WITH CHECK ADD  CONSTRAINT [FKc5kb2v0bnwh2yotodxn8gqv18] FOREIGN KEY([maDVD])
REFERENCES [dbo].[DVD] ([maDVD])
GO
ALTER TABLE [dbo].[PhieuThueTra] CHECK CONSTRAINT [FKc5kb2v0bnwh2yotodxn8gqv18]
GO
ALTER TABLE [dbo].[PhieuThueTra]  WITH CHECK ADD  CONSTRAINT [FKi3lqwa5ub9qacdo8o3kw1bcn1] FOREIGN KEY([maKH])
REFERENCES [dbo].[KhachHang] ([maKH])
GO
ALTER TABLE [dbo].[PhieuThueTra] CHECK CONSTRAINT [FKi3lqwa5ub9qacdo8o3kw1bcn1]
GO
ALTER TABLE [dbo].[Tua]  WITH CHECK ADD  CONSTRAINT [FK3d2lriiep1rg7n7gwb3rlgvrq] FOREIGN KEY([maTheLoai])
REFERENCES [dbo].[TheLoai] ([maTheLoai])
GO
ALTER TABLE [dbo].[Tua] CHECK CONSTRAINT [FK3d2lriiep1rg7n7gwb3rlgvrq]
GO
