USE [QuanLyNhanSu]
GO
ALTER TABLE [dbo].[LuongNhanVien] DROP CONSTRAINT [FK__LuongNhan__MaNha__3D5E1FD2]
GO
ALTER TABLE [dbo].[HopDong] DROP CONSTRAINT [FK__HopDong__MaNhanV__3C69FB99]
GO
ALTER TABLE [dbo].[DanhSachKTKL] DROP CONSTRAINT [FK__DanhSachK__MaNha__3B75D760]
GO
ALTER TABLE [dbo].[DanhSachKTKL] DROP CONSTRAINT [FK__DanhSachK__MaKTK__3A81B327]
GO
ALTER TABLE [dbo].[DanhMucNhanVien] DROP CONSTRAINT [FK__DanhMucNh__MaPho__398D8EEE]
GO
ALTER TABLE [dbo].[DanhMucNhanVien] DROP CONSTRAINT [FK__DanhMucNh__MaHin__38996AB5]
GO
ALTER TABLE [dbo].[DanhMucNhanVien] DROP CONSTRAINT [FK__DanhMucNh__MaChu__37A5467C]
GO
ALTER TABLE [dbo].[BaoHiemNhanVien] DROP CONSTRAINT [FK__BaoHiemNh__MaNha__36B12243]
GO
ALTER TABLE [dbo].[BaoHiemNhanVien] DROP CONSTRAINT [FK__BaoHiemNh__MaBao__35BCFE0A]
GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 8/26/2021 8:06:24 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TaiKhoan]') AND type in (N'U'))
DROP TABLE [dbo].[TaiKhoan]
GO
/****** Object:  Table [dbo].[QuyDinhKTKL]    Script Date: 8/26/2021 8:06:24 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[QuyDinhKTKL]') AND type in (N'U'))
DROP TABLE [dbo].[QuyDinhKTKL]
GO
/****** Object:  Table [dbo].[PhongBan]    Script Date: 8/26/2021 8:06:24 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PhongBan]') AND type in (N'U'))
DROP TABLE [dbo].[PhongBan]
GO
/****** Object:  Table [dbo].[LuongNhanVien]    Script Date: 8/26/2021 8:06:24 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LuongNhanVien]') AND type in (N'U'))
DROP TABLE [dbo].[LuongNhanVien]
GO
/****** Object:  Table [dbo].[HopDong]    Script Date: 8/26/2021 8:06:24 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[HopDong]') AND type in (N'U'))
DROP TABLE [dbo].[HopDong]
GO
/****** Object:  Table [dbo].[DanhSachKTKL]    Script Date: 8/26/2021 8:06:24 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DanhSachKTKL]') AND type in (N'U'))
DROP TABLE [dbo].[DanhSachKTKL]
GO
/****** Object:  Table [dbo].[DanhMucNhanVien]    Script Date: 8/26/2021 8:06:24 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DanhMucNhanVien]') AND type in (N'U'))
DROP TABLE [dbo].[DanhMucNhanVien]
GO
/****** Object:  Table [dbo].[DANHMUCHINHTHUCTUYENDUNG]    Script Date: 8/26/2021 8:06:24 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DANHMUCHINHTHUCTUYENDUNG]') AND type in (N'U'))
DROP TABLE [dbo].[DANHMUCHINHTHUCTUYENDUNG]
GO
/****** Object:  Table [dbo].[DanhMucChucVu]    Script Date: 8/26/2021 8:06:24 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DanhMucChucVu]') AND type in (N'U'))
DROP TABLE [dbo].[DanhMucChucVu]
GO
/****** Object:  Table [dbo].[DANHMUCBAOHIEM]    Script Date: 8/26/2021 8:06:24 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DANHMUCBAOHIEM]') AND type in (N'U'))
DROP TABLE [dbo].[DANHMUCBAOHIEM]
GO
/****** Object:  Table [dbo].[BaoHiemNhanVien]    Script Date: 8/26/2021 8:06:24 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[BaoHiemNhanVien]') AND type in (N'U'))
DROP TABLE [dbo].[BaoHiemNhanVien]
GO
/****** Object:  Table [dbo].[BaoHiemNhanVien]    Script Date: 8/26/2021 8:06:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BaoHiemNhanVien](
	[MaNhanVien] [varchar](20) NOT NULL,
	[MaBaoHiem] [varchar](20) NOT NULL,
	[NgayBatDau] [date] NULL,
	[NgayHetHan] [date] NULL,
	[SoTienDongMotThang] [int] NULL,
 CONSTRAINT [FK_BaoHiemNhanVien] PRIMARY KEY CLUSTERED 
(
	[MaNhanVien] ASC,
	[MaBaoHiem] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DANHMUCBAOHIEM]    Script Date: 8/26/2021 8:06:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DANHMUCBAOHIEM](
	[MaBaoHiem] [varchar](20) NOT NULL,
	[Ten] [nvarchar](40) NULL,
	[TiLeBH] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaBaoHiem] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DanhMucChucVu]    Script Date: 8/26/2021 8:06:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhMucChucVu](
	[MaChucVu] [varchar](20) NOT NULL,
	[Ten] [nvarchar](40) NULL,
	[PhuCap] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaChucVu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DANHMUCHINHTHUCTUYENDUNG]    Script Date: 8/26/2021 8:06:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DANHMUCHINHTHUCTUYENDUNG](
	[MaHinhThucTuyenDung] [varchar](20) NOT NULL,
	[Ten] [nvarchar](40) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHinhThucTuyenDung] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DanhMucNhanVien]    Script Date: 8/26/2021 8:06:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhMucNhanVien](
	[MaNhanVien] [varchar](20) NOT NULL,
	[MaHinhThucTuyenDung] [varchar](20) NULL,
	[MaChucVu] [varchar](20) NULL,
	[MaPhongBan] [varchar](20) NULL,
	[NoiLamViec] [nvarchar](40) NULL,
	[HoTen] [nvarchar](40) NULL,
	[NgaySinh] [date] NULL,
	[QueQuan] [nvarchar](40) NULL,
	[GioiTinh] [nvarchar](4) NULL,
	[SoCMND] [varchar](40) NULL,
	[TrinhDo] [nvarchar](40) NULL,
	[SDT] [varchar](40) NULL,
	[Email] [nvarchar](40) NULL,
	[NoiO] [nvarchar](40) NULL,
	[NoiSinh] [nvarchar](40) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DanhSachKTKL]    Script Date: 8/26/2021 8:06:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhSachKTKL](
	[MaNhanVien] [varchar](20) NOT NULL,
	[MaKTKL] [varchar](20) NOT NULL,
	[Ngay] [date] NOT NULL,
	[GhiChu] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HopDong]    Script Date: 8/26/2021 8:06:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HopDong](
	[MaHD] [varchar](10) NOT NULL,
	[MaNhanVien] [varchar](20) NOT NULL,
	[LuongHD] [int] NULL,
	[NgayBatDau] [date] NULL,
	[NgayKetThuc] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LuongNhanVien]    Script Date: 8/26/2021 8:06:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LuongNhanVien](
	[MaLuong] [varchar](20) NOT NULL,
	[MaNhanVien] [varchar](20) NOT NULL,
	[LuongHD] [int] NULL,
	[SoNgayCong] [int] NULL,
	[ThangNam] [varchar](10) NOT NULL,
	[TienBH] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaLuong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhongBan]    Script Date: 8/26/2021 8:06:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhongBan](
	[MaPhongBan] [varchar](20) NOT NULL,
	[Ten] [nvarchar](50) NULL,
	[DienThoai] [varchar](15) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPhongBan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QuyDinhKTKL]    Script Date: 8/26/2021 8:06:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuyDinhKTKL](
	[MaKTKL] [varchar](20) NOT NULL,
	[Ten] [nvarchar](50) NULL,
	[SoTien] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKTKL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 8/26/2021 8:06:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[Ten] [varchar](10) NULL,
	[MK] [varchar](10) NULL
) ON [PRIMARY]
GO
INSERT [dbo].[BaoHiemNhanVien] ([MaNhanVien], [MaBaoHiem], [NgayBatDau], [NgayHetHan], [SoTienDongMotThang]) VALUES (N'01', N'BH01', CAST(N'2019-05-06' AS Date), CAST(N'2024-05-29' AS Date), 560000)
INSERT [dbo].[BaoHiemNhanVien] ([MaNhanVien], [MaBaoHiem], [NgayBatDau], [NgayHetHan], [SoTienDongMotThang]) VALUES (N'01', N'BH02', CAST(N'2019-05-06' AS Date), CAST(N'2024-05-29' AS Date), 105000)
INSERT [dbo].[BaoHiemNhanVien] ([MaNhanVien], [MaBaoHiem], [NgayBatDau], [NgayHetHan], [SoTienDongMotThang]) VALUES (N'02', N'BH02', CAST(N'2020-01-06' AS Date), CAST(N'2025-02-06' AS Date), 135000)
INSERT [dbo].[BaoHiemNhanVien] ([MaNhanVien], [MaBaoHiem], [NgayBatDau], [NgayHetHan], [SoTienDongMotThang]) VALUES (N'03', N'BH02', CAST(N'2020-03-19' AS Date), CAST(N'2025-04-06' AS Date), 180000)
INSERT [dbo].[BaoHiemNhanVien] ([MaNhanVien], [MaBaoHiem], [NgayBatDau], [NgayHetHan], [SoTienDongMotThang]) VALUES (N'03', N'BH03', CAST(N'2019-12-06' AS Date), CAST(N'2024-02-17' AS Date), 120000)
INSERT [dbo].[BaoHiemNhanVien] ([MaNhanVien], [MaBaoHiem], [NgayBatDau], [NgayHetHan], [SoTienDongMotThang]) VALUES (N'04', N'BH02', CAST(N'2020-03-19' AS Date), CAST(N'2025-04-06' AS Date), 118500)
INSERT [dbo].[BaoHiemNhanVien] ([MaNhanVien], [MaBaoHiem], [NgayBatDau], [NgayHetHan], [SoTienDongMotThang]) VALUES (N'05', N'BH02', CAST(N'2020-03-06' AS Date), CAST(N'2025-04-06' AS Date), 135000)
INSERT [dbo].[BaoHiemNhanVien] ([MaNhanVien], [MaBaoHiem], [NgayBatDau], [NgayHetHan], [SoTienDongMotThang]) VALUES (N'06', N'BH02', CAST(N'2020-03-06' AS Date), CAST(N'2025-04-06' AS Date), 82500)
GO
INSERT [dbo].[DANHMUCBAOHIEM] ([MaBaoHiem], [Ten], [TiLeBH]) VALUES (N'BH01', N'Bảo hiểm xã hội', 0.08)
INSERT [dbo].[DANHMUCBAOHIEM] ([MaBaoHiem], [Ten], [TiLeBH]) VALUES (N'BH02', N'Bảo hiểm y tế', 0.015)
INSERT [dbo].[DANHMUCBAOHIEM] ([MaBaoHiem], [Ten], [TiLeBH]) VALUES (N'BH03', N'Bảo hiểm thất nghiệp', 0.01)
GO
INSERT [dbo].[DanhMucChucVu] ([MaChucVu], [Ten], [PhuCap]) VALUES (N'CV01', N'Truong phong', 3000000)
INSERT [dbo].[DanhMucChucVu] ([MaChucVu], [Ten], [PhuCap]) VALUES (N'CV02', N'To truong', 2000000)
INSERT [dbo].[DanhMucChucVu] ([MaChucVu], [Ten], [PhuCap]) VALUES (N'CV03', N'Nhan vien kinh doanh', 1000000)
INSERT [dbo].[DanhMucChucVu] ([MaChucVu], [Ten], [PhuCap]) VALUES (N'CV04', N'Nhan vien tai chinh', 900000)
INSERT [dbo].[DanhMucChucVu] ([MaChucVu], [Ten], [PhuCap]) VALUES (N'CV05', N'Nhan vien hau can', 500000)
INSERT [dbo].[DanhMucChucVu] ([MaChucVu], [Ten], [PhuCap]) VALUES (N'CV06', N'Nhan vien bảo vệ', 500000)
GO
INSERT [dbo].[DANHMUCHINHTHUCTUYENDUNG] ([MaHinhThucTuyenDung], [Ten]) VALUES (N'TD01', N'Tuyen dung tren website cong ty')
INSERT [dbo].[DANHMUCHINHTHUCTUYENDUNG] ([MaHinhThucTuyenDung], [Ten]) VALUES (N'TD02', N'Qua cac website tuyen dung')
INSERT [dbo].[DANHMUCHINHTHUCTUYENDUNG] ([MaHinhThucTuyenDung], [Ten]) VALUES (N'TD03', N'Tuyen dung qua mang xa hoi')
INSERT [dbo].[DANHMUCHINHTHUCTUYENDUNG] ([MaHinhThucTuyenDung], [Ten]) VALUES (N'TD04', N'Tuyển dụng trực tiếp qua các trường')
GO
INSERT [dbo].[DanhMucNhanVien] ([MaNhanVien], [MaHinhThucTuyenDung], [MaChucVu], [MaPhongBan], [NoiLamViec], [HoTen], [NgaySinh], [QueQuan], [GioiTinh], [SoCMND], [TrinhDo], [SDT], [Email], [NoiO], [NoiSinh]) VALUES (N'01', N'TD01', N'CV01', N'PB01', N'Tang2', N'Nguyen Mai Linh', CAST(N'1980-03-10' AS Date), N'Tay Ho- Ha Noi', N'Nữ', N'187823193', N'Thac si', N'685458206', N'nguyenmailinh@gmail.com', N'Tay Ho - Ha Noi', N'Ba Dinh - Ha Noi')
INSERT [dbo].[DanhMucNhanVien] ([MaNhanVien], [MaHinhThucTuyenDung], [MaChucVu], [MaPhongBan], [NoiLamViec], [HoTen], [NgaySinh], [QueQuan], [GioiTinh], [SoCMND], [TrinhDo], [SDT], [Email], [NoiO], [NoiSinh]) VALUES (N'02', N'TD04', N'CV03', N'PB03', N'Tang3', N'Nguyen Dinh Huy', CAST(N'1972-02-13' AS Date), N'Do Luong - Nghe An', N'Nam', N'187598246', N'12/12', N'985426525', N'nguyendinhhuy@gmail.com', N'Tay Ho - Ha Noi', N'Bac Tu Liem - Ha Noi')
INSERT [dbo].[DanhMucNhanVien] ([MaNhanVien], [MaHinhThucTuyenDung], [MaChucVu], [MaPhongBan], [NoiLamViec], [HoTen], [NgaySinh], [QueQuan], [GioiTinh], [SoCMND], [TrinhDo], [SDT], [Email], [NoiO], [NoiSinh]) VALUES (N'03', N'TD02', N'CV02', N'PB02', N'Tang4', N'Le Huy Khai', CAST(N'1990-05-05' AS Date), N'Ba Dinh - Ha Noi', N'Nam', N'185845962', N'12/12', N'985745268', N'lehuykhai@gmail.com', N'Thanh Chuong - Nghe An', N'Ba Dinh - Ha Noi')
INSERT [dbo].[DanhMucNhanVien] ([MaNhanVien], [MaHinhThucTuyenDung], [MaChucVu], [MaPhongBan], [NoiLamViec], [HoTen], [NgaySinh], [QueQuan], [GioiTinh], [SoCMND], [TrinhDo], [SDT], [Email], [NoiO], [NoiSinh]) VALUES (N'04', N'TD01', N'CV04', N'PB02', N'Tang4', N'Dinh Thu Huong', CAST(N'1985-03-10' AS Date), N'Tu Ky - Hai Duong', N'Nữ', N'175935945', N'Thac si', N'985553812', N'dinhthuhuong@gmail.com', N'Cau Giay - Ha Noi', N'Tu Ky - Hai Duong')
INSERT [dbo].[DanhMucNhanVien] ([MaNhanVien], [MaHinhThucTuyenDung], [MaChucVu], [MaPhongBan], [NoiLamViec], [HoTen], [NgaySinh], [QueQuan], [GioiTinh], [SoCMND], [TrinhDo], [SDT], [Email], [NoiO], [NoiSinh]) VALUES (N'05', N'TD03', N'CV03', N'PB03', N'Tang3', N'Nguyen Dinh Hung', CAST(N'1991-07-11' AS Date), N' Ha Dong- Ha Noi', N'Nam', N'188298462', N'12/12', N'985426854', N'nguyendinhhung@gmail.com', N'Ha Dong - Ha Noi', N'Ha Dong-Ha Noi')
INSERT [dbo].[DanhMucNhanVien] ([MaNhanVien], [MaHinhThucTuyenDung], [MaChucVu], [MaPhongBan], [NoiLamViec], [HoTen], [NgaySinh], [QueQuan], [GioiTinh], [SoCMND], [TrinhDo], [SDT], [Email], [NoiO], [NoiSinh]) VALUES (N'06', N'TD02', N'CV05', N'PB05', N'Tang1', N'Nguyen Huong Linh', CAST(N'1980-03-10' AS Date), N'Loc Ha - Ha Tinh', N'Nữ', N'187395421', N'12/12', N'985126853', N'nguyenhuonglinh@gmail.com', N'Dong Da - Ha Noi', N'Loc Ha - Ha Tinh')
INSERT [dbo].[DanhMucNhanVien] ([MaNhanVien], [MaHinhThucTuyenDung], [MaChucVu], [MaPhongBan], [NoiLamViec], [HoTen], [NgaySinh], [QueQuan], [GioiTinh], [SoCMND], [TrinhDo], [SDT], [Email], [NoiO], [NoiSinh]) VALUES (N'07', N'TD04', N'CV02', N'PB03', N'Tang3', N'Nguyễn đức An', CAST(N'1972-02-13' AS Date), N'Do Luong - Nghe An', N'Nam', N'187598246', N'12/12', N'985426525', N'nguyendinhhuy@gmail.com', N'Tay Ho - Ha Noi', N'Bac Tu Liem - Ha Noi')
INSERT [dbo].[DanhMucNhanVien] ([MaNhanVien], [MaHinhThucTuyenDung], [MaChucVu], [MaPhongBan], [NoiLamViec], [HoTen], [NgaySinh], [QueQuan], [GioiTinh], [SoCMND], [TrinhDo], [SDT], [Email], [NoiO], [NoiSinh]) VALUES (N'08', N'TD02', N'CV04', N'PB02', N'Tang4', N'Lê Đức An', CAST(N'1990-05-05' AS Date), N'Ba Dinh - Ha Noi', N'Nam', N'185845962', N'12/12', N'985745268', N'lehuykhai@gmail.com', N'Thanh Chuong - Nghe An', N'Ba Dinh - Ha Noi')
INSERT [dbo].[DanhMucNhanVien] ([MaNhanVien], [MaHinhThucTuyenDung], [MaChucVu], [MaPhongBan], [NoiLamViec], [HoTen], [NgaySinh], [QueQuan], [GioiTinh], [SoCMND], [TrinhDo], [SDT], [Email], [NoiO], [NoiSinh]) VALUES (N'09', N'TD02', N'CV05', N'PB02', N'Tang4', N'Lê Đức Bình', CAST(N'1990-05-05' AS Date), N'Ba Dinh - Ha Noi', N'Nam', N'185845962', N'12/12', N'985745268', N'lehuykhai@gmail.com', N'Thanh Chuong - Nghe An', N'Ba Dinh - Ha Noi')
GO
INSERT [dbo].[DanhSachKTKL] ([MaNhanVien], [MaKTKL], [Ngay], [GhiChu]) VALUES (N'01', N'KTKL02', CAST(N'2020-05-06' AS Date), N'NULL')
INSERT [dbo].[DanhSachKTKL] ([MaNhanVien], [MaKTKL], [Ngay], [GhiChu]) VALUES (N'04', N'KTKL01', CAST(N'2019-10-07' AS Date), N'NULL')
INSERT [dbo].[DanhSachKTKL] ([MaNhanVien], [MaKTKL], [Ngay], [GhiChu]) VALUES (N'01', N'KTKL05', CAST(N'2020-08-03' AS Date), N'NULL')
INSERT [dbo].[DanhSachKTKL] ([MaNhanVien], [MaKTKL], [Ngay], [GhiChu]) VALUES (N'02', N'KTKL03', CAST(N'2019-09-04' AS Date), N'NULL')
INSERT [dbo].[DanhSachKTKL] ([MaNhanVien], [MaKTKL], [Ngay], [GhiChu]) VALUES (N'03', N'KTKL04', CAST(N'2020-05-07' AS Date), N'NULL')
INSERT [dbo].[DanhSachKTKL] ([MaNhanVien], [MaKTKL], [Ngay], [GhiChu]) VALUES (N'04', N'KTKL04', CAST(N'2020-06-20' AS Date), N'NULL')
GO
INSERT [dbo].[HopDong] ([MaHD], [MaNhanVien], [LuongHD], [NgayBatDau], [NgayKetThuc]) VALUES (N'HD01', N'01', 3000000, CAST(N'2019-05-07' AS Date), CAST(N'2024-05-29' AS Date))
INSERT [dbo].[HopDong] ([MaHD], [MaNhanVien], [LuongHD], [NgayBatDau], [NgayKetThuc]) VALUES (N'HD02', N'02', 8000000, CAST(N'2020-01-06' AS Date), CAST(N'2025-02-06' AS Date))
INSERT [dbo].[HopDong] ([MaHD], [MaNhanVien], [LuongHD], [NgayBatDau], [NgayKetThuc]) VALUES (N'HD03', N'03', 10000000, CAST(N'2019-12-06' AS Date), CAST(N'2024-02-17' AS Date))
INSERT [dbo].[HopDong] ([MaHD], [MaNhanVien], [LuongHD], [NgayBatDau], [NgayKetThuc]) VALUES (N'HD04', N'04', 7000000, CAST(N'2020-01-10' AS Date), CAST(N'2025-02-10' AS Date))
INSERT [dbo].[HopDong] ([MaHD], [MaNhanVien], [LuongHD], [NgayBatDau], [NgayKetThuc]) VALUES (N'HD05', N'05', 8000000, CAST(N'2020-03-06' AS Date), CAST(N'2025-04-06' AS Date))
INSERT [dbo].[HopDong] ([MaHD], [MaNhanVien], [LuongHD], [NgayBatDau], [NgayKetThuc]) VALUES (N'HD06', N'06', 5000000, CAST(N'2019-12-04' AS Date), CAST(N'2020-08-01' AS Date))
GO
INSERT [dbo].[LuongNhanVien] ([MaLuong], [MaNhanVien], [LuongHD], [SoNgayCong], [ThangNam], [TienBH]) VALUES (N'L01', N'01', 5335000, 26, N'5/2018', 665000)
INSERT [dbo].[LuongNhanVien] ([MaLuong], [MaNhanVien], [LuongHD], [SoNgayCong], [ThangNam], [TienBH]) VALUES (N'L02', N'02', 8518846, 25, N'4/2017', 135000)
INSERT [dbo].[LuongNhanVien] ([MaLuong], [MaNhanVien], [LuongHD], [SoNgayCong], [ThangNam], [TienBH]) VALUES (N'L03', N'03', 10776923, 24, N'4/2017', 300000)
INSERT [dbo].[LuongNhanVien] ([MaLuong], [MaNhanVien], [LuongHD], [SoNgayCong], [ThangNam], [TienBH]) VALUES (N'L04', N'04', 7781500, 26, N'5/2019', 118500)
INSERT [dbo].[LuongNhanVien] ([MaLuong], [MaNhanVien], [LuongHD], [SoNgayCong], [ThangNam], [TienBH]) VALUES (N'L05', N'05', 8865000, 26, N'3/2020', 135000)
INSERT [dbo].[LuongNhanVien] ([MaLuong], [MaNhanVien], [LuongHD], [SoNgayCong], [ThangNam], [TienBH]) VALUES (N'L06', N'06', 4782884, 23, N'5/2019', 82500)
INSERT [dbo].[LuongNhanVien] ([MaLuong], [MaNhanVien], [LuongHD], [SoNgayCong], [ThangNam], [TienBH]) VALUES (N'L07', N'04', 7781500, 26, N'5/2019', 118500)
INSERT [dbo].[LuongNhanVien] ([MaLuong], [MaNhanVien], [LuongHD], [SoNgayCong], [ThangNam], [TienBH]) VALUES (N'L08', N'06', 4782884, 23, N'5/2019', 82500)
GO
INSERT [dbo].[PhongBan] ([MaPhongBan], [Ten], [DienThoai]) VALUES (N'PB01', N'Phòng kỹ thuật', N'0658523365')
INSERT [dbo].[PhongBan] ([MaPhongBan], [Ten], [DienThoai]) VALUES (N'PB02', N'Phòng tài chính', N'0255448462')
INSERT [dbo].[PhongBan] ([MaPhongBan], [Ten], [DienThoai]) VALUES (N'PB03', N'Phòng đào tạo', N'0958245856')
INSERT [dbo].[PhongBan] ([MaPhongBan], [Ten], [DienThoai]) VALUES (N'PB04', N'Phòng quản lý', N'0859245325')
INSERT [dbo].[PhongBan] ([MaPhongBan], [Ten], [DienThoai]) VALUES (N'PB05', N'Phòng thanh tra', N'0752692545')
GO
INSERT [dbo].[QuyDinhKTKL] ([MaKTKL], [Ten], [SoTien]) VALUES (N'KTKL01', N'Thưởng thâm niên', 1000000)
INSERT [dbo].[QuyDinhKTKL] ([MaKTKL], [Ten], [SoTien]) VALUES (N'KTKL02', N'Thưởng tháng lương', 600000)
INSERT [dbo].[QuyDinhKTKL] ([MaKTKL], [Ten], [SoTien]) VALUES (N'KTKL03', N'Thưởng lễ', 200000)
INSERT [dbo].[QuyDinhKTKL] ([MaKTKL], [Ten], [SoTien]) VALUES (N'KTKL04', N'Thưởng thâm niên', 1000000)
INSERT [dbo].[QuyDinhKTKL] ([MaKTKL], [Ten], [SoTien]) VALUES (N'KTKL05', N'Phạt đi muộn', 100000)
INSERT [dbo].[QuyDinhKTKL] ([MaKTKL], [Ten], [SoTien]) VALUES (N'KTKL06', N'Phạt vi phạm quy định', 500000)
GO
INSERT [dbo].[TaiKhoan] ([Ten], [MK]) VALUES (N'admin', N'12345')
INSERT [dbo].[TaiKhoan] ([Ten], [MK]) VALUES (N'nv1', N'1234')
INSERT [dbo].[TaiKhoan] ([Ten], [MK]) VALUES (N'nv2', N'1234')
GO
ALTER TABLE [dbo].[BaoHiemNhanVien]  WITH CHECK ADD FOREIGN KEY([MaBaoHiem])
REFERENCES [dbo].[DANHMUCBAOHIEM] ([MaBaoHiem])
GO
ALTER TABLE [dbo].[BaoHiemNhanVien]  WITH CHECK ADD FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[DanhMucNhanVien] ([MaNhanVien])
GO
ALTER TABLE [dbo].[DanhMucNhanVien]  WITH CHECK ADD FOREIGN KEY([MaChucVu])
REFERENCES [dbo].[DanhMucChucVu] ([MaChucVu])
GO
ALTER TABLE [dbo].[DanhMucNhanVien]  WITH CHECK ADD FOREIGN KEY([MaHinhThucTuyenDung])
REFERENCES [dbo].[DANHMUCHINHTHUCTUYENDUNG] ([MaHinhThucTuyenDung])
GO
ALTER TABLE [dbo].[DanhMucNhanVien]  WITH CHECK ADD FOREIGN KEY([MaPhongBan])
REFERENCES [dbo].[PhongBan] ([MaPhongBan])
GO
ALTER TABLE [dbo].[DanhSachKTKL]  WITH CHECK ADD FOREIGN KEY([MaKTKL])
REFERENCES [dbo].[QuyDinhKTKL] ([MaKTKL])
GO
ALTER TABLE [dbo].[DanhSachKTKL]  WITH CHECK ADD FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[DanhMucNhanVien] ([MaNhanVien])
GO
ALTER TABLE [dbo].[HopDong]  WITH CHECK ADD FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[DanhMucNhanVien] ([MaNhanVien])
GO
ALTER TABLE [dbo].[LuongNhanVien]  WITH CHECK ADD FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[DanhMucNhanVien] ([MaNhanVien])
GO
