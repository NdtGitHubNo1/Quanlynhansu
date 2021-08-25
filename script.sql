USE [QuanLyNhanSu]
GO
/****** Object:  Table [dbo].[BaoHiem]    Script Date: 8/25/2021 8:43:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BaoHiem](
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
/****** Object:  Table [dbo].[DANHMUCBAOHIEM]    Script Date: 8/25/2021 8:43:22 AM ******/
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
/****** Object:  Table [dbo].[DanhMucChucVu]    Script Date: 8/25/2021 8:43:22 AM ******/
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
/****** Object:  Table [dbo].[HopDong]    Script Date: 8/25/2021 8:43:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HopDong](
	[MaHD] [varchar](10) NOT NULL,
	[MaNhanVien] [varchar](20) NOT NULL,
	[LuongHD] [int] NULL,
	[NgayBatDau] [date] NULL,
	[NgayHetHan] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhenThuongXuPhat]    Script Date: 8/25/2021 8:43:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhenThuongXuPhat](
	[MaNhanVien] [varchar](20) NOT NULL,
	[MaKTKL] [varchar](20) NOT NULL,
	[Ngay] [date] NOT NULL,
	[GhiChu] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LuongNhanVien]    Script Date: 8/25/2021 8:43:22 AM ******/
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
/****** Object:  Table [dbo].[NhanVien]    Script Date: 8/25/2021 8:43:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNhanVien] [varchar](20) NOT NULL,
	[MaHinhThucTuyenDung] [varchar](20) NULL,
	[MaChucVu] [varchar](20) NULL,
	[MaPhongBan] [varchar](20) NULL,
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
/****** Object:  Table [dbo].[PhongBan]    Script Date: 8/25/2021 8:43:22 AM ******/
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
/****** Object:  Table [dbo].[QuyDinhKTXP]    Script Date: 8/25/2021 8:43:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuyDinhKTXP](
	[MaKTKL] [varchar](20) NOT NULL,
	[Ten] [nvarchar](50) NULL,
	[SoTien] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKTKL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 8/25/2021 8:43:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[TaiKhoan] [varchar](10) NULL,
	[MatKhau] [varchar](10) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[BaoHiem]  WITH CHECK ADD FOREIGN KEY([MaBaoHiem])
REFERENCES [dbo].[DANHMUCBAOHIEM] ([MaBaoHiem])
GO
ALTER TABLE [dbo].[BaoHiem]  WITH CHECK ADD FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[NhanVien] ([MaNhanVien])
GO
ALTER TABLE [dbo].[HopDong]  WITH CHECK ADD FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[NhanVien] ([MaNhanVien])
GO
ALTER TABLE [dbo].[KhenThuongXuPhat]  WITH CHECK ADD FOREIGN KEY([MaKTKL])
REFERENCES [dbo].[QuyDinhKTXP] ([MaKTKL])
GO
ALTER TABLE [dbo].[KhenThuongXuPhat]  WITH CHECK ADD FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[NhanVien] ([MaNhanVien])
GO
ALTER TABLE [dbo].[LuongNhanVien]  WITH CHECK ADD FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[NhanVien] ([MaNhanVien])
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD FOREIGN KEY([MaChucVu])
REFERENCES [dbo].[DanhMucChucVu] ([MaChucVu])
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD FOREIGN KEY([MaPhongBan])
REFERENCES [dbo].[PhongBan] ([MaPhongBan])
GO
