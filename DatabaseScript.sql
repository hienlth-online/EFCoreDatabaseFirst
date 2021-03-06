USE [EstoreDemo]
GO
/****** Object:  Table [dbo].[BanBe]    Script Date: 11/19/2020 9:31:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BanBe](
	[MaBB] [int] IDENTITY(1,1) NOT NULL,
	[MaKH] [nvarchar](20) NULL,
	[MaHH] [int] NOT NULL,
	[HoTen] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NOT NULL,
	[NgayGui] [datetime] NOT NULL,
	[GhiChu] [nvarchar](max) NULL,
 CONSTRAINT [PK_Promotions] PRIMARY KEY CLUSTERED 
(
	[MaBB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietHD]    Script Date: 11/19/2020 9:31:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHD](
	[MaHD] [int] NOT NULL,
	[MaHH] [int] NOT NULL,
	[DonGia] [float] NOT NULL,
	[SoLuong] [int] NOT NULL,
	[GiamGia] [float] NOT NULL,
 CONSTRAINT [PK_ChiTietHD] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC,
	[MaHH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChuDe]    Script Date: 11/19/2020 9:31:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChuDe](
	[MaCD] [int] IDENTITY(1,1) NOT NULL,
	[TenCD] [nvarchar](50) NULL,
	[MaNV] [nvarchar](50) NULL,
 CONSTRAINT [PK_ChuDe] PRIMARY KEY CLUSTERED 
(
	[MaCD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GopY]    Script Date: 11/19/2020 9:31:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GopY](
	[MaGY] [nvarchar](50) NOT NULL,
	[MaCD] [int] NOT NULL,
	[NoiDung] [nvarchar](max) NOT NULL,
	[NgayGY] [date] NOT NULL,
	[HoTen] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[DienThoai] [nvarchar](50) NULL,
	[CanTraLoi] [bit] NOT NULL,
	[TraLoi] [nvarchar](50) NULL,
	[NgayTL] [date] NULL,
 CONSTRAINT [PK_GopY] PRIMARY KEY CLUSTERED 
(
	[MaGY] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HangHoa]    Script Date: 11/19/2020 9:31:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HangHoa](
	[MaHH] [int] IDENTITY(1,1) NOT NULL,
	[TenHH] [nvarchar](40) NOT NULL,
	[MaLoai] [int] NOT NULL,
	[MoTaDonVi] [nvarchar](50) NULL,
	[DonGia] [float] NULL,
	[Hinh] [nvarchar](50) NULL,
	[NgaySX] [datetime] NOT NULL,
	[GiamGia] [float] NOT NULL,
	[SoLanXem] [int] NULL,
	[MoTa] [nvarchar](max) NULL,
	[MaNCC] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[MaHH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 11/19/2020 9:31:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[MaHD] [int] IDENTITY(1,1) NOT NULL,
	[MaKH] [nvarchar](20) NOT NULL,
	[NgayDat] [datetime] NOT NULL,
	[NgayCan] [datetime] NULL,
	[NgayGiao] [datetime] NOT NULL,
	[HoTen] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](60) NOT NULL,
	[CachThanhToan] [nvarchar](50) NOT NULL,
	[CachVanChuyen] [nvarchar](50) NULL,
	[PhiVanChuyen] [float] NULL,
	[TrangThai] [int] NULL,
	[MaVN] [nvarchar](50) NULL,
	[GhiChu] [nvarchar](50) NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoiDap]    Script Date: 11/19/2020 9:31:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoiDap](
	[MaHD] [int] NOT NULL,
	[CauHoi] [nvarchar](50) NOT NULL,
	[TraLoi] [nvarchar](50) NOT NULL,
	[NgayDua] [date] NOT NULL,
	[MaNV] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_HoiDap] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 11/19/2020 9:31:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKH] [nvarchar](20) NOT NULL,
	[MatKhau] [nvarchar](50) NULL,
	[HoTen] [nvarchar](50) NOT NULL,
	[GioiTinh] [bit] NOT NULL,
	[NgaySinh] [datetime] NOT NULL,
	[DiaChi] [nvarchar](60) NULL,
	[DienThoai] [nvarchar](24) NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Hinh] [nvarchar](50) NULL,
	[HieuLuc] [bit] NOT NULL,
	[VaiTro] [int] NOT NULL,
	[Hoi] [nvarchar](50) NULL,
	[TraLoi] [nvarchar](50) NULL,
 CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Loai]    Script Date: 11/19/2020 9:31:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Loai](
	[MaLoai] [int] IDENTITY(1,1) NOT NULL,
	[TenLoai] [nvarchar](50) NOT NULL,
	[MoTa] [nvarchar](max) NULL,
	[Hinh] [nvarchar](50) NULL,
	[SoLuong] [int] NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[MaLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaCungCap]    Script Date: 11/19/2020 9:31:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaCungCap](
	[MaNCC] [nvarchar](50) NOT NULL,
	[TenCongTy] [nvarchar](50) NOT NULL,
	[Logo] [nvarchar](50) NOT NULL,
	[NguoiLienLac] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NOT NULL,
	[DienThoai] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[MoTa] [nvarchar](max) NULL,
 CONSTRAINT [PK_Suppliers] PRIMARY KEY CLUSTERED 
(
	[MaNCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 11/19/2020 9:31:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNV] [nvarchar](50) NOT NULL,
	[HoTen] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[MatKhau] [nvarchar](50) NULL,
	[MaVT] [int] NOT NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhanQuyen]    Script Date: 11/19/2020 9:31:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhanQuyen](
	[MaPQ] [int] IDENTITY(1,1) NOT NULL,
	[MaVT] [int] NOT NULL,
	[MaTW] [int] NOT NULL,
	[Xem] [bit] NOT NULL,
	[Them] [bit] NOT NULL,
	[Xoa] [bit] NOT NULL,
	[Sua] [bit] NOT NULL,
 CONSTRAINT [PK_PhanQuyen] PRIMARY KEY CLUSTERED 
(
	[MaPQ] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThongKe]    Script Date: 11/19/2020 9:31:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThongKe](
	[MaTK] [varchar](20) NOT NULL,
	[GiaTri] [int] NOT NULL,
 CONSTRAINT [PK_ThongKe] PRIMARY KEY CLUSTERED 
(
	[MaTK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TrangWeb]    Script Date: 11/19/2020 9:31:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TrangWeb](
	[MaTW] [int] IDENTITY(1,1) NOT NULL,
	[TenTW] [nvarchar](50) NOT NULL,
	[MoTa] [nvarchar](50) NULL,
 CONSTRAINT [PK_TrangWeb] PRIMARY KEY CLUSTERED 
(
	[MaTW] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VaiTro]    Script Date: 11/19/2020 9:31:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VaiTro](
	[MaVT] [int] NOT NULL,
	[TenVT] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_VaiTro] PRIMARY KEY CLUSTERED 
(
	[MaVT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[YeuThich]    Script Date: 11/19/2020 9:31:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[YeuThich](
	[MaYT] [int] IDENTITY(1,1) NOT NULL,
	[MaHH] [int] NULL,
	[MaKH] [nvarchar](20) NULL,
	[NgayChon] [datetime] NULL,
	[MoTa] [nvarchar](255) NULL,
 CONSTRAINT [PK_Favorites] PRIMARY KEY CLUSTERED 
(
	[MaYT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [DonGia], [SoLuong], [GiamGia]) VALUES (1, 1001, 190, 1, 0.5)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [DonGia], [SoLuong], [GiamGia]) VALUES (1, 1103, 111, 1, 0)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [DonGia], [SoLuong], [GiamGia]) VALUES (2, 1001, 190, 1, 0.5)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [DonGia], [SoLuong], [GiamGia]) VALUES (2, 1002, 19, 1, 0)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [DonGia], [SoLuong], [GiamGia]) VALUES (2, 1003, 10, 1, 0)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [DonGia], [SoLuong], [GiamGia]) VALUES (2, 1103, 111, 10, 0)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [DonGia], [SoLuong], [GiamGia]) VALUES (3, 1001, 190, 1, 0.5)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [DonGia], [SoLuong], [GiamGia]) VALUES (3, 1003, 10, 1, 0)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [DonGia], [SoLuong], [GiamGia]) VALUES (3, 1006, 25, 100, 0)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [DonGia], [SoLuong], [GiamGia]) VALUES (4, 1001, 190, 1, 0.5)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [DonGia], [SoLuong], [GiamGia]) VALUES (4, 1003, 10, 1, 0)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [DonGia], [SoLuong], [GiamGia]) VALUES (4, 1006, 25, 100, 0)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [DonGia], [SoLuong], [GiamGia]) VALUES (5, 1001, 190, 1, 0.5)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [DonGia], [SoLuong], [GiamGia]) VALUES (5, 1002, 19, 1, 0)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [DonGia], [SoLuong], [GiamGia]) VALUES (5, 1003, 10, 1, 0)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [DonGia], [SoLuong], [GiamGia]) VALUES (6, 1001, 190, 1, 0.5)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [DonGia], [SoLuong], [GiamGia]) VALUES (6, 1002, 19, 1, 0)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [DonGia], [SoLuong], [GiamGia]) VALUES (6, 1003, 10, 1, 0)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [DonGia], [SoLuong], [GiamGia]) VALUES (7, 1001, 190, 1, 0.5)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [DonGia], [SoLuong], [GiamGia]) VALUES (7, 1004, 22, 1, 0)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [DonGia], [SoLuong], [GiamGia]) VALUES (8, 1001, 190, 1, 0.5)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [DonGia], [SoLuong], [GiamGia]) VALUES (8, 1002, 19, 1, 0)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [DonGia], [SoLuong], [GiamGia]) VALUES (8, 1003, 10, 1, 0)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [DonGia], [SoLuong], [GiamGia]) VALUES (8, 1004, 22, 1, 0)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [DonGia], [SoLuong], [GiamGia]) VALUES (8, 1005, 21.35, 1, 0)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [DonGia], [SoLuong], [GiamGia]) VALUES (8, 1006, 25, 1, 0)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [DonGia], [SoLuong], [GiamGia]) VALUES (9, 1004, 22, 20, 0)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [DonGia], [SoLuong], [GiamGia]) VALUES (9, 1005, 21.35, 1, 0)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [DonGia], [SoLuong], [GiamGia]) VALUES (9, 1060, 34, 1, 0)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [DonGia], [SoLuong], [GiamGia]) VALUES (9, 1062, 49.3, 1, 0)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [DonGia], [SoLuong], [GiamGia]) VALUES (9, 1063, 43.9, 1, 0)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [DonGia], [SoLuong], [GiamGia]) VALUES (19, 1001, 190, 2, 0.5)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [DonGia], [SoLuong], [GiamGia]) VALUES (19, 1002, 19, 2, 0)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [DonGia], [SoLuong], [GiamGia]) VALUES (19, 1003, 10, 2, 0)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [DonGia], [SoLuong], [GiamGia]) VALUES (20, 1001, 190, 1, 0.5)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [DonGia], [SoLuong], [GiamGia]) VALUES (20, 1004, 22, 1, 0)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [DonGia], [SoLuong], [GiamGia]) VALUES (20, 1013, 6, 1, 0)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [DonGia], [SoLuong], [GiamGia]) VALUES (21, 1001, 190, 1, 0.5)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [DonGia], [SoLuong], [GiamGia]) VALUES (21, 1002, 19, 1, 0)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [DonGia], [SoLuong], [GiamGia]) VALUES (21, 1003, 10, 1, 0)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaHH], [DonGia], [SoLuong], [GiamGia]) VALUES (22, 1052, 7, 1, 0)
SET IDENTITY_INSERT [dbo].[HangHoa] ON 

INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [MaLoai], [MoTaDonVi], [DonGia], [Hinh], [NgaySX], [GiamGia], [SoLanXem], [MoTa], [MaNCC]) VALUES (1001, N'Hàng việt nam', 1001, N'10 boxes x 20 bags', 190, N'41iDo0HDhbL._SL500_AA300_.jpg', CAST(N'2009-07-31T07:00:00.000' AS DateTime), 0.5, 1378, N'None', N'NK')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [MaLoai], [MoTaDonVi], [DonGia], [Hinh], [NgaySX], [GiamGia], [SoLanXem], [MoTa], [MaNCC]) VALUES (1002, N'Change', 1000, N'10 boxes x 20 bags', 19, N'41TexqWVkHL._SL500_AA300_.jpg', CAST(N'2009-07-31T07:00:00.000' AS DateTime), 0, 1562, N'None', N'AP')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [MaLoai], [MoTaDonVi], [DonGia], [Hinh], [NgaySX], [GiamGia], [SoLanXem], [MoTa], [MaNCC]) VALUES (1003, N'Aniseed Syrup', 1001, N'12 - 550 ml bottles', 10, N'31EPGSm2s1L._SL500_AA300_.jpg', CAST(N'2009-08-01T07:00:00.000' AS DateTime), 0, 491, N'None', N'NK')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [MaLoai], [MoTaDonVi], [DonGia], [Hinh], [NgaySX], [GiamGia], [SoLanXem], [MoTa], [MaNCC]) VALUES (1004, N'Chef Anton''s Cajun Seasoning', 1001, N'48 - 6 oz jars', 22, N'41CIcYRxJKL._SL500_AA300_.jpg', CAST(N'2009-07-31T07:00:00.000' AS DateTime), 0, 216, N'None', N'AP')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [MaLoai], [MoTaDonVi], [DonGia], [Hinh], [NgaySX], [GiamGia], [SoLanXem], [MoTa], [MaNCC]) VALUES (1005, N'Chef Anton''s Gumbo Mix', 1001, N'36 boxes', 21.35, N'41G38jC0ajL._SL500_AA300_.jpg', CAST(N'2009-07-31T07:00:00.000' AS DateTime), 0, 134, N'None', N'AP')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [MaLoai], [MoTaDonVi], [DonGia], [Hinh], [NgaySX], [GiamGia], [SoLanXem], [MoTa], [MaNCC]) VALUES (1006, N'Grandma''s Boysenberry Spread', 1001, N'12 - 8 oz jars', 25, N'41iDo0HDhbL._SL500_AA300_.jpg', CAST(N'2009-08-01T07:00:00.000' AS DateTime), 0, 153, N'None', N'AP')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [MaLoai], [MoTaDonVi], [DonGia], [Hinh], [NgaySX], [GiamGia], [SoLanXem], [MoTa], [MaNCC]) VALUES (1007, N'Uncle Bob''s Organic Dried Pears', 1006, N'12 - 1 lb pkgs.', 30, N'81k1XbQ6nQL._SL1500_.jpg', CAST(N'2009-07-31T07:00:00.000' AS DateTime), 0, 5006, N'None', N'AP')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [MaLoai], [MoTaDonVi], [DonGia], [Hinh], [NgaySX], [GiamGia], [SoLanXem], [MoTa], [MaNCC]) VALUES (1008, N'Northwoods Cranberry Sauce', 1001, N'12 - 12 oz jars', 40, N'41LMouG6j7L._SL500_AA300_.jpg', CAST(N'2009-08-01T07:00:00.000' AS DateTime), 0, 0, N'None', N'AP')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [MaLoai], [MoTaDonVi], [DonGia], [Hinh], [NgaySX], [GiamGia], [SoLanXem], [MoTa], [MaNCC]) VALUES (1009, N'Mishi Kobe Niku', 1005, N'18 - 500 g pkgs.', 97, N'21meTyhQebL._SL500_AA300_.jpg', CAST(N'2009-07-31T07:00:00.000' AS DateTime), 0, 3, N'None', N'AP')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [MaLoai], [MoTaDonVi], [DonGia], [Hinh], [NgaySX], [GiamGia], [SoLanXem], [MoTa], [MaNCC]) VALUES (1010, N'Ikura', 1007, N'12 - 200 ml jars', 31, N'31hCgES5GXL._AA300_.jpg', CAST(N'2009-07-31T07:00:00.000' AS DateTime), 0, 3, N'None', N'AP')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [MaLoai], [MoTaDonVi], [DonGia], [Hinh], [NgaySX], [GiamGia], [SoLanXem], [MoTa], [MaNCC]) VALUES (1011, N'Queso Cabrales', 1003, N'1 kg pkg.', 21, N'31jsjfVfH9L._SL500_AA300_.jpg', CAST(N'2009-07-31T07:00:00.000' AS DateTime), 0, 1, N'None', N'AP')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [MaLoai], [MoTaDonVi], [DonGia], [Hinh], [NgaySX], [GiamGia], [SoLanXem], [MoTa], [MaNCC]) VALUES (1012, N'Queso Manchego La Pastora', 1003, N'10 - 500 g pkgs.', 38, N'41BiMx1FKyL._SL500_AA300_.jpg', CAST(N'2009-07-31T07:00:00.000' AS DateTime), 0, 1, N'None', N'AP')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [MaLoai], [MoTaDonVi], [DonGia], [Hinh], [NgaySX], [GiamGia], [SoLanXem], [MoTa], [MaNCC]) VALUES (1013, N'Konbu', 1007, N'2 kg box', 6, N'31ioCUUFnoL.jpg', CAST(N'2009-08-01T07:00:00.000' AS DateTime), 0, 0, N'None', N'AP')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [MaLoai], [MoTaDonVi], [DonGia], [Hinh], [NgaySX], [GiamGia], [SoLanXem], [MoTa], [MaNCC]) VALUES (1014, N'Tofu', 1006, N'40 - 100 g pkgs.', 23.25, N'81Q1DvOnnoL._SL1500_.jpg', CAST(N'2009-08-01T07:00:00.000' AS DateTime), 0, 0, N'None', N'AP')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [MaLoai], [MoTaDonVi], [DonGia], [Hinh], [NgaySX], [GiamGia], [SoLanXem], [MoTa], [MaNCC]) VALUES (1015, N'Genen Shouyu', 1001, N'24 - 250 ml bottles', 15.5, N'41qlcUEhNmL._SL500_AA300_.jpg', CAST(N'2009-08-01T07:00:00.000' AS DateTime), 0, 0, N'None', N'AP')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [MaLoai], [MoTaDonVi], [DonGia], [Hinh], [NgaySX], [GiamGia], [SoLanXem], [MoTa], [MaNCC]) VALUES (1016, N'Pavlova', 1002, N'32 - 500 g boxes', 17.45, N'41iji4-9UsL._SL500_AA300_.jpg', CAST(N'2009-07-31T07:00:00.000' AS DateTime), 0, 329, N'None', N'AP')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [MaLoai], [MoTaDonVi], [DonGia], [Hinh], [NgaySX], [GiamGia], [SoLanXem], [MoTa], [MaNCC]) VALUES (1017, N'Alice Mutton', 1005, N'20 - 1 kg tins', 39, N'31LAnW1JFqL._SL500_AA300_.jpg', CAST(N'2009-07-31T07:00:00.000' AS DateTime), 0, 1, N'None', N'AP')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [MaLoai], [MoTaDonVi], [DonGia], [Hinh], [NgaySX], [GiamGia], [SoLanXem], [MoTa], [MaNCC]) VALUES (1018, N'Carnarvon Tigers', 1007, N'16 kg pkg.', 62.5, N'31yxRemzRLL._SS350_ (1).jpg', CAST(N'2009-08-01T07:00:00.000' AS DateTime), 0, 0, N'None', N'SM')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [MaLoai], [MoTaDonVi], [DonGia], [Hinh], [NgaySX], [GiamGia], [SoLanXem], [MoTa], [MaNCC]) VALUES (1019, N'Teatime Chocolate Biscuits', 1002, N'10 boxes x 12 pieces', 9.2, N'41KALboJKuL.jpg', CAST(N'2009-08-01T07:00:00.000' AS DateTime), 0, 12, N'None', N'SM')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [MaLoai], [MoTaDonVi], [DonGia], [Hinh], [NgaySX], [GiamGia], [SoLanXem], [MoTa], [MaNCC]) VALUES (1020, N'Sir Rodney''s Marmalade', 1002, N'30 gift boxes', 81, N'41sl3FN6NpL.jpg', CAST(N'2009-08-01T07:00:00.000' AS DateTime), 0, 0, N'None', N'SM')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [MaLoai], [MoTaDonVi], [DonGia], [Hinh], [NgaySX], [GiamGia], [SoLanXem], [MoTa], [MaNCC]) VALUES (1021, N'Sir Rodney''s Scones', 1002, N'24 pkgs. x 4 pieces', 10, N'41w4TlVPhGL.jpg', CAST(N'2009-07-31T07:00:00.000' AS DateTime), 0, 1, N'None', N'SM')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [MaLoai], [MoTaDonVi], [DonGia], [Hinh], [NgaySX], [GiamGia], [SoLanXem], [MoTa], [MaNCC]) VALUES (1022, N'Gustaf''s KnÃ¤ckebrÃ¶d', 1004, N'24 - 500 g pkgs.', 21, N'31pT+SdvQXL._SL500_AA300_.jpg', CAST(N'2009-08-01T07:00:00.000' AS DateTime), 0, 40, N'None', N'SM')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [MaLoai], [MoTaDonVi], [DonGia], [Hinh], [NgaySX], [GiamGia], [SoLanXem], [MoTa], [MaNCC]) VALUES (1023, N'TunnbrÃÂ¶d', 1004, N'12 - 250 g pkgs.', 9, N'31YOss-gC-L._AA300_.jpg', CAST(N'2009-08-01T07:00:00.000' AS DateTime), 0, 762, N'None', N'SM')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [MaLoai], [MoTaDonVi], [DonGia], [Hinh], [NgaySX], [GiamGia], [SoLanXem], [MoTa], [MaNCC]) VALUES (1024, N'GuaranÃ¡ FantÃ¡stica', 1000, N'12 - 355 ml cans', 4.5, N'41V4Ds2PtZL._SL500_AA300_.jpg', CAST(N'2009-07-31T07:00:00.000' AS DateTime), 0, 96, N'None', N'SM')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [MaLoai], [MoTaDonVi], [DonGia], [Hinh], [NgaySX], [GiamGia], [SoLanXem], [MoTa], [MaNCC]) VALUES (1025, N'NuNuCa NuÃÂ-Nougat-Creme', 1002, N'20 - 450 g glasses', 14, N'41XX7Pi240L.jpg', CAST(N'2009-08-01T07:00:00.000' AS DateTime), 0, 0, N'None', N'SM')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [MaLoai], [MoTaDonVi], [DonGia], [Hinh], [NgaySX], [GiamGia], [SoLanXem], [MoTa], [MaNCC]) VALUES (1026, N'GumbÃ¤r GummibÃ¤rchen', 1002, N'100 - 250 g bags', 31.23, N'41-yvkFqVZL._SL500_AA300_.jpg', CAST(N'2009-08-01T07:00:00.000' AS DateTime), 0, 0, N'None', N'SM')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [MaLoai], [MoTaDonVi], [DonGia], [Hinh], [NgaySX], [GiamGia], [SoLanXem], [MoTa], [MaNCC]) VALUES (1027, N'Schoggi Schokolade', 1002, N'100 - 100 g pieces', 43.9, N'41ZE9SmWdzL._SL500_AA300_.jpg', CAST(N'2009-08-01T07:00:00.000' AS DateTime), 0, 0, N'None', N'SM')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [MaLoai], [MoTaDonVi], [DonGia], [Hinh], [NgaySX], [GiamGia], [SoLanXem], [MoTa], [MaNCC]) VALUES (1028, N'RÃ¶ssle Sauerkraut', 1006, N'25 - 825 g cans', 45.6, N'91FM0Hog9FL._SL1500_.jpg', CAST(N'2009-08-01T07:00:00.000' AS DateTime), 0, 0, N'None', N'SM')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [MaLoai], [MoTaDonVi], [DonGia], [Hinh], [NgaySX], [GiamGia], [SoLanXem], [MoTa], [MaNCC]) VALUES (1029, N'ThÃ¼ringer Rostbratwurst', 1005, N'50 bags x 30 sausgs.', 123.79, N'31ncPnMYCxL._SL500_AA300_.jpg', CAST(N'2009-07-31T07:00:00.000' AS DateTime), 0, 2, N'None', N'SM')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [MaLoai], [MoTaDonVi], [DonGia], [Hinh], [NgaySX], [GiamGia], [SoLanXem], [MoTa], [MaNCC]) VALUES (1030, N'Nord-Ost Matjeshering', 1007, N'10 - 200 g glasses', 25.89, N'41lffECD-sL._SY445_.jpg', CAST(N'2009-08-01T07:00:00.000' AS DateTime), 0, 0, N'None', N'SM')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [MaLoai], [MoTaDonVi], [DonGia], [Hinh], [NgaySX], [GiamGia], [SoLanXem], [MoTa], [MaNCC]) VALUES (1031, N'Gorgonzola Telino', 1003, N'12 - 100 g pkgs', 12.5, N'41IPLmZIKhL._SL500_AA300_.jpg', CAST(N'2009-07-31T07:00:00.000' AS DateTime), 0, 1, N'None', N'SM')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [MaLoai], [MoTaDonVi], [DonGia], [Hinh], [NgaySX], [GiamGia], [SoLanXem], [MoTa], [MaNCC]) VALUES (1032, N'Mascarpone Fabioli', 1003, N'24 - 200 g pkgs.', 32, N'41qfgTvFBwL._SL500_AA300_.jpg', CAST(N'2009-07-31T07:00:00.000' AS DateTime), 0, 0, N'None', N'SM')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [MaLoai], [MoTaDonVi], [DonGia], [Hinh], [NgaySX], [GiamGia], [SoLanXem], [MoTa], [MaNCC]) VALUES (1033, N'Geitost', 1003, N'500 g', 2.5, N'41qfgTvFBwL._SL500_AA300_.jpg', CAST(N'2009-08-01T07:00:00.000' AS DateTime), 0, 0, N'None', N'SM')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [MaLoai], [MoTaDonVi], [DonGia], [Hinh], [NgaySX], [GiamGia], [SoLanXem], [MoTa], [MaNCC]) VALUES (1034, N'Sasquatch Ale', 1000, N'24 - 12 oz bottles', 14, N'41WvZnGYUkL._SL500_AA300_.jpg', CAST(N'2009-08-01T07:00:00.000' AS DateTime), 0, 7, N'None', N'MO')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [MaLoai], [MoTaDonVi], [DonGia], [Hinh], [NgaySX], [GiamGia], [SoLanXem], [MoTa], [MaNCC]) VALUES (1035, N'Steeleye Stout', 1000, N'24 - 12 oz bottles', 18, N'41yh1vBmqsL._SL500_AA300_.jpg', CAST(N'2009-07-31T07:00:00.000' AS DateTime), 0, 1, N'None', N'MO')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [MaLoai], [MoTaDonVi], [DonGia], [Hinh], [NgaySX], [GiamGia], [SoLanXem], [MoTa], [MaNCC]) VALUES (1036, N'Inlagd Sill', 1007, N'24 - 250 g  jars', 19, N'41sw9ASUvBL._SX342_.jpg', CAST(N'2009-08-01T07:00:00.000' AS DateTime), 0, 0, N'None', N'MO')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [MaLoai], [MoTaDonVi], [DonGia], [Hinh], [NgaySX], [GiamGia], [SoLanXem], [MoTa], [MaNCC]) VALUES (1037, N'Gravad lax', 1007, N'12 - 500 g pkgs.', 26, N'41Z43OmFHjL._SX342_.jpg', CAST(N'2009-08-01T07:00:00.000' AS DateTime), 0, 0, N'None', N'MO')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [MaLoai], [MoTaDonVi], [DonGia], [Hinh], [NgaySX], [GiamGia], [SoLanXem], [MoTa], [MaNCC]) VALUES (1038, N'CÃ´te de Blaye', 1000, N'12 - 75 cl bottles', 263.5, N'41Ymq8fjbOL._SL500_AA300_.jpg', CAST(N'2009-07-31T07:00:00.000' AS DateTime), 0, 3, N'None', N'MO')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [MaLoai], [MoTaDonVi], [DonGia], [Hinh], [NgaySX], [GiamGia], [SoLanXem], [MoTa], [MaNCC]) VALUES (1039, N'Chartreuse verte', 1000, N'750 cc per bottle', 18, N'51GBNkHO6vL._SL500_AA300_.jpg', CAST(N'2009-08-01T07:00:00.000' AS DateTime), 0, 1, N'None', N'MO')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [MaLoai], [MoTaDonVi], [DonGia], [Hinh], [NgaySX], [GiamGia], [SoLanXem], [MoTa], [MaNCC]) VALUES (1040, N'Boston Crab Meat', 1007, N'24 - 4 oz tins', 18.4, N'51JhyHtnEgL._SL1001_.jpg', CAST(N'2009-08-01T07:00:00.000' AS DateTime), 0, 0, N'None', N'MO')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [MaLoai], [MoTaDonVi], [DonGia], [Hinh], [NgaySX], [GiamGia], [SoLanXem], [MoTa], [MaNCC]) VALUES (1041, N'Jack''s New England Clam Chowder', 1007, N'12 - 12 oz cans', 9.65, N'71bJrFAys9L._SL1280_.jpg', CAST(N'2009-07-31T07:00:00.000' AS DateTime), 0, 0, N'None', N'MO')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [MaLoai], [MoTaDonVi], [DonGia], [Hinh], [NgaySX], [GiamGia], [SoLanXem], [MoTa], [MaNCC]) VALUES (1042, N'Singaporean Hokkien Fried Mee', 1004, N'32 - 1 kg pkgs.', 14, N'41A9R5KXCXL._AA300_.jpg', CAST(N'2009-07-31T07:00:00.000' AS DateTime), 0, 0, N'None', N'MO')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [MaLoai], [MoTaDonVi], [DonGia], [Hinh], [NgaySX], [GiamGia], [SoLanXem], [MoTa], [MaNCC]) VALUES (1043, N'Ipoh Coffee', 1000, N'16 - 500 g tins', 46, N'51czOOat0OL._SL500_AA300_.jpg', CAST(N'2009-07-31T07:00:00.000' AS DateTime), 0, 2, N'None', N'MO')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [MaLoai], [MoTaDonVi], [DonGia], [Hinh], [NgaySX], [GiamGia], [SoLanXem], [MoTa], [MaNCC]) VALUES (1044, N'Gula Malacca', 1001, N'20 - 2 kg bags', 19.45, N'41riQRGf-6L._SL500_AA300_.jpg', CAST(N'2009-08-01T07:00:00.000' AS DateTime), 0, 0, N'None', N'MO')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [MaLoai], [MoTaDonVi], [DonGia], [Hinh], [NgaySX], [GiamGia], [SoLanXem], [MoTa], [MaNCC]) VALUES (1045, N'Rogede sild', 1007, N'1k pkg.', 9.5, N'71cBwWAgvIL._SL1430_.jpg', CAST(N'2009-08-01T07:00:00.000' AS DateTime), 0, 0, N'None', N'MO')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [MaLoai], [MoTaDonVi], [DonGia], [Hinh], [NgaySX], [GiamGia], [SoLanXem], [MoTa], [MaNCC]) VALUES (1046, N'Spegesild', 1007, N'4 - 450 g glasses', 12, N'91T2BjUkYmL._SL1500_.jpg', CAST(N'2009-07-31T07:00:00.000' AS DateTime), 0, 1, N'None', N'MO')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [MaLoai], [MoTaDonVi], [DonGia], [Hinh], [NgaySX], [GiamGia], [SoLanXem], [MoTa], [MaNCC]) VALUES (1047, N'Zaanse koeken', 1002, N'10 - 4 oz boxes', 9.5, N'51s6pbRlNyL._SL500_AA300_.jpg', CAST(N'2009-07-31T07:00:00.000' AS DateTime), 0, 1, N'None', N'MO')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [MaLoai], [MoTaDonVi], [DonGia], [Hinh], [NgaySX], [GiamGia], [SoLanXem], [MoTa], [MaNCC]) VALUES (1048, N'Chocolade', 1002, N'10 pkgs.', 12.75, N'91JUBDf1jTL._AA1500_.jpg', CAST(N'2009-08-01T07:00:00.000' AS DateTime), 0, 0, N'None', N'MO')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [MaLoai], [MoTaDonVi], [DonGia], [Hinh], [NgaySX], [GiamGia], [SoLanXem], [MoTa], [MaNCC]) VALUES (1049, N'Maxilaku', 1002, N'24 - 50 g pkgs.', 20, N'51w+JqOnmSL._SL500_AA300_.jpg', CAST(N'2009-08-01T07:00:00.000' AS DateTime), 0, 0, N'None', N'MO')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [MaLoai], [MoTaDonVi], [DonGia], [Hinh], [NgaySX], [GiamGia], [SoLanXem], [MoTa], [MaNCC]) VALUES (1050, N'Valkoinen suklaa', 1002, N'12 - 100 g bars', 16.25, N'51yomC0EodL._SL500_AA300_.jpg', CAST(N'2009-07-31T07:00:00.000' AS DateTime), 0, 0, N'None', N'SS')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [MaLoai], [MoTaDonVi], [DonGia], [Hinh], [NgaySX], [GiamGia], [SoLanXem], [MoTa], [MaNCC]) VALUES (1051, N'Manjimup Dried Apples', 1006, N'50 - 300 g pkgs.', 53, N'416pdroSEkL.jpg', CAST(N'2009-08-01T07:00:00.000' AS DateTime), 0, 0, N'None', N'SS')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [MaLoai], [MoTaDonVi], [DonGia], [Hinh], [NgaySX], [GiamGia], [SoLanXem], [MoTa], [MaNCC]) VALUES (1052, N'Filo Mix', 1004, N'16 - 2 kg boxes', 7, N'41Pg1ahql8L._AA300_.jpg', CAST(N'2009-08-01T07:00:00.000' AS DateTime), 0, 0, N'None', N'SS')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [MaLoai], [MoTaDonVi], [DonGia], [Hinh], [NgaySX], [GiamGia], [SoLanXem], [MoTa], [MaNCC]) VALUES (1053, N'Perth Pasties', 1005, N'48 pieces', 32.8, N'31pAGovVENL._SL500_AA300_.jpg', CAST(N'2009-08-01T07:00:00.000' AS DateTime), 0, 0, N'None', N'SS')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [MaLoai], [MoTaDonVi], [DonGia], [Hinh], [NgaySX], [GiamGia], [SoLanXem], [MoTa], [MaNCC]) VALUES (1054, N'TourtiÃ¨re', 1005, N'16 pies', 7.45, N'31TB6tC6BOL._SL500_AA300_.jpg', CAST(N'2009-08-01T07:00:00.000' AS DateTime), 0, 1, N'None', N'SS')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [MaLoai], [MoTaDonVi], [DonGia], [Hinh], [NgaySX], [GiamGia], [SoLanXem], [MoTa], [MaNCC]) VALUES (1055, N'PÃ¢tÃ© chinois', 1005, N'24 boxes x 2 pies', 24, N'41brDHtPY9L._SL500_AA300_.jpg', CAST(N'2009-08-01T07:00:00.000' AS DateTime), 0, 0, N'None', N'SS')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [MaLoai], [MoTaDonVi], [DonGia], [Hinh], [NgaySX], [GiamGia], [SoLanXem], [MoTa], [MaNCC]) VALUES (1056, N'Gnocchi di nonna Alice', 1004, N'24 - 250 g pkgs.', 38, N'51nukXFJLJL.jpg', CAST(N'2009-08-01T07:00:00.000' AS DateTime), 0, 0, N'None', N'SS')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [MaLoai], [MoTaDonVi], [DonGia], [Hinh], [NgaySX], [GiamGia], [SoLanXem], [MoTa], [MaNCC]) VALUES (1057, N'Ravioli Angelo', 1004, N'24 - 250 g pkgs.', 19.5, N'410PjzqoC8L._AA300_.jpg', CAST(N'2009-08-01T07:00:00.000' AS DateTime), 0, 0, N'None', N'SS')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [MaLoai], [MoTaDonVi], [DonGia], [Hinh], [NgaySX], [GiamGia], [SoLanXem], [MoTa], [MaNCC]) VALUES (1058, N'Escargots de Bourgogne', 1007, N'24 pieces', 13.25, N'91T2BjUkYmL._SL1500_.jpg', CAST(N'2009-08-01T07:00:00.000' AS DateTime), 0, 0, N'None', N'SS')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [MaLoai], [MoTaDonVi], [DonGia], [Hinh], [NgaySX], [GiamGia], [SoLanXem], [MoTa], [MaNCC]) VALUES (1059, N'Raclette Courdavault', 1003, N'5 kg pkg.', 55, N'41sdBTtnUDL._SL500_AA300_.jpg', CAST(N'2009-08-01T07:00:00.000' AS DateTime), 0, 0, N'None', N'SS')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [MaLoai], [MoTaDonVi], [DonGia], [Hinh], [NgaySX], [GiamGia], [SoLanXem], [MoTa], [MaNCC]) VALUES (1060, N'Camembert Pierrot', 1003, N'15 - 300 g rounds', 34, N'41zxxR71G+L._SL500_AA300_.jpg', CAST(N'2009-07-31T07:00:00.000' AS DateTime), 0, 1, N'None', N'SS')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [MaLoai], [MoTaDonVi], [DonGia], [Hinh], [NgaySX], [GiamGia], [SoLanXem], [MoTa], [MaNCC]) VALUES (1061, N'Sirop d''Ã©rable', 1001, N'24 - 500 ml bottles', 28.5, N'41RxtSQOd2L._SL500_AA300_.jpg', CAST(N'2009-08-01T07:00:00.000' AS DateTime), 0, 0, N'None', N'SS')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [MaLoai], [MoTaDonVi], [DonGia], [Hinh], [NgaySX], [GiamGia], [SoLanXem], [MoTa], [MaNCC]) VALUES (1062, N'Tarte au sucre', 1002, N'48 pies', 49.3, N'415cOCbeyML.jpg', CAST(N'2009-08-01T07:00:00.000' AS DateTime), 0, 1, N'None', N'SS')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [MaLoai], [MoTaDonVi], [DonGia], [Hinh], [NgaySX], [GiamGia], [SoLanXem], [MoTa], [MaNCC]) VALUES (1063, N'Vegie-spread', 1001, N'15 - 625 g jars', 43.9, N'41sd2DTD8EL._SL500_AA300_.jpg', CAST(N'2009-08-01T07:00:00.000' AS DateTime), 0, 0, N'None', N'SS')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [MaLoai], [MoTaDonVi], [DonGia], [Hinh], [NgaySX], [GiamGia], [SoLanXem], [MoTa], [MaNCC]) VALUES (1064, N'Wimmers gute SemmelknÃ¶del', 1004, N'20 bags x 4 pieces', 33.25, N'419WCoqfamL._AA300_.jpg', CAST(N'2009-08-01T07:00:00.000' AS DateTime), 0, 0, N'None', N'SS')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [MaLoai], [MoTaDonVi], [DonGia], [Hinh], [NgaySX], [GiamGia], [SoLanXem], [MoTa], [MaNCC]) VALUES (1065, N'Louisiana Fiery Hot Pepper Sauce', 1001, N'32 - 8 oz bottles', 21.05, N'41wHu2N4tVL._SL500_AA300_.jpg', CAST(N'2009-08-01T07:00:00.000' AS DateTime), 0, 0, N'None', N'SS')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [MaLoai], [MoTaDonVi], [DonGia], [Hinh], [NgaySX], [GiamGia], [SoLanXem], [MoTa], [MaNCC]) VALUES (1066, N'Louisiana Hot Spiced Okra', 1001, N'24 - 8 oz jars', 17, N'416OcTXFfeL._AA300_.jpg', CAST(N'2009-08-01T07:00:00.000' AS DateTime), 0, 0, N'None', N'NK')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [MaLoai], [MoTaDonVi], [DonGia], [Hinh], [NgaySX], [GiamGia], [SoLanXem], [MoTa], [MaNCC]) VALUES (1067, N'Laughing Lumberjack Lager', 1000, N'24 - 12 oz bottles', 14, N'51GBNkHO6vL._SL500_AA300_.jpg', CAST(N'2009-07-31T07:00:00.000' AS DateTime), 0, 1, N'None', N'NK')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [MaLoai], [MoTaDonVi], [DonGia], [Hinh], [NgaySX], [GiamGia], [SoLanXem], [MoTa], [MaNCC]) VALUES (1068, N'Scottish Longbreads', 1002, N'10 boxes x 8 pieces', 12.5, N'Camera1.jpg', CAST(N'2009-08-01T07:00:00.000' AS DateTime), 0, 0, N'None', N'NK')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [MaLoai], [MoTaDonVi], [DonGia], [Hinh], [NgaySX], [GiamGia], [SoLanXem], [MoTa], [MaNCC]) VALUES (1069, N'Gudbrandsdalsost', 1003, N'10 kg pkg.', 36, N'51+4d3VBFvL._SL500_AA300_.jpg', CAST(N'2009-08-01T07:00:00.000' AS DateTime), 0, 0, N'None', N'NK')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [MaLoai], [MoTaDonVi], [DonGia], [Hinh], [NgaySX], [GiamGia], [SoLanXem], [MoTa], [MaNCC]) VALUES (1070, N'Outback Lager', 1000, N'24 - 355 ml bottles', 15, N'51Lj5bxbNtL._SL500_AA300_.jpg', CAST(N'2009-07-31T07:00:00.000' AS DateTime), 0, 11, N'None', N'NK')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [MaLoai], [MoTaDonVi], [DonGia], [Hinh], [NgaySX], [GiamGia], [SoLanXem], [MoTa], [MaNCC]) VALUES (1071, N'Flotemysost', 1003, N'10 - 500 g pkgs.', 21.5, N'51l46qQB50L._SL500_AA300_.jpg', CAST(N'2009-07-31T07:00:00.000' AS DateTime), 0, 1, N'None', N'NK')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [MaLoai], [MoTaDonVi], [DonGia], [Hinh], [NgaySX], [GiamGia], [SoLanXem], [MoTa], [MaNCC]) VALUES (1072, N'Mozzarella di Giovanni', 1003, N'24 - 200 g pkgs.', 34.8, N'5195-l+nflL._AA300_.jpg', CAST(N'2009-07-31T07:00:00.000' AS DateTime), 0, 1, N'None', N'NK')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [MaLoai], [MoTaDonVi], [DonGia], [Hinh], [NgaySX], [GiamGia], [SoLanXem], [MoTa], [MaNCC]) VALUES (1073, N'RÃ¶d Kaviar', 1007, N'24 - 150 g jars', 15, N'513UnnRfFML._SL1001_.jpg', CAST(N'2009-08-01T07:00:00.000' AS DateTime), 0, 0, N'None', N'NK')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [MaLoai], [MoTaDonVi], [DonGia], [Hinh], [NgaySX], [GiamGia], [SoLanXem], [MoTa], [MaNCC]) VALUES (1074, N'Longlife Tofu', 1006, N'5 kg pkg.', 10, N'816zGZv1ORL._SL1500_.jpg', CAST(N'2009-08-01T07:00:00.000' AS DateTime), 0, 0, N'None', N'NK')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [MaLoai], [MoTaDonVi], [DonGia], [Hinh], [NgaySX], [GiamGia], [SoLanXem], [MoTa], [MaNCC]) VALUES (1075, N'RhÃ¶nbrÃ¤u Klosterbier', 1000, N'24 - 0.5 l bottles', 7.75, N'51uJ-pWfc9L._SL500_AA300_.jpg', CAST(N'2009-08-01T07:00:00.000' AS DateTime), 0, 0, N'None', N'NK')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [MaLoai], [MoTaDonVi], [DonGia], [Hinh], [NgaySX], [GiamGia], [SoLanXem], [MoTa], [MaNCC]) VALUES (1076, N'LakkalikÃ¶Ã¶ri', 1000, N'500 ml', 18, N'51vxcBS1sQL._SL500_AA300_.jpg', CAST(N'2009-08-01T07:00:00.000' AS DateTime), 0, 0, N'None', N'NK')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [MaLoai], [MoTaDonVi], [DonGia], [Hinh], [NgaySX], [GiamGia], [SoLanXem], [MoTa], [MaNCC]) VALUES (1077, N'Original Frankfurter grÃ¼ne SoÃe', 1001, N'12 boxes', 13, N'1009.gif', CAST(N'2009-08-01T07:00:00.000' AS DateTime), 0, 1, N'None', N'NK')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [MaLoai], [MoTaDonVi], [DonGia], [Hinh], [NgaySX], [GiamGia], [SoLanXem], [MoTa], [MaNCC]) VALUES (1081, N'Chai88888888', 1000, N'10 boxes x 20 bags', 19, N'51y46IslQkL._SL500_AA300_.jpg', CAST(N'2009-07-31T07:00:00.000' AS DateTime), 0, 4, N'None', N'NK')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [MaLoai], [MoTaDonVi], [DonGia], [Hinh], [NgaySX], [GiamGia], [SoLanXem], [MoTa], [MaNCC]) VALUES (1083, N'Mishi Kobe Niku', 1005, N'18 - 500 g pkgs.', 97, N'41GVLtgNngL._SL500_AA300_.jpg', CAST(N'2009-07-31T07:00:00.000' AS DateTime), 0, 0, N'None', N'NK')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [MaLoai], [MoTaDonVi], [DonGia], [Hinh], [NgaySX], [GiamGia], [SoLanXem], [MoTa], [MaNCC]) VALUES (1084, N'Change-New', 1000, N'10 boxes x 20 bags', 19, N'51Z9tfgl4aL._SL500_AA300_.jpg', CAST(N'2009-08-01T07:00:00.000' AS DateTime), 0, 1, N'None', N'NK')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [MaLoai], [MoTaDonVi], [DonGia], [Hinh], [NgaySX], [GiamGia], [SoLanXem], [MoTa], [MaNCC]) VALUES (1091, N'1007', 1007, N'chiec', 123, N'abc', CAST(N'2000-03-03T00:00:00.000' AS DateTime), 1, 3, N'None', N'MO')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [MaLoai], [MoTaDonVi], [DonGia], [Hinh], [NgaySX], [GiamGia], [SoLanXem], [MoTa], [MaNCC]) VALUES (1097, N'new', 1000, N'kg', 124, N'chưa có', CAST(N'2010-05-05T00:00:00.000' AS DateTime), 0.35, 0, N'None', N'MO')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [MaLoai], [MoTaDonVi], [DonGia], [Hinh], [NgaySX], [GiamGia], [SoLanXem], [MoTa], [MaNCC]) VALUES (1098, N'test', 1000, N'chai', 111, N'41LMouG6j7L._SL500_AA300_.jpg', CAST(N'2010-05-05T00:00:00.000' AS DateTime), 0.35, 137, N'abc', N'AP')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [MaLoai], [MoTaDonVi], [DonGia], [Hinh], [NgaySX], [GiamGia], [SoLanXem], [MoTa], [MaNCC]) VALUES (1099, N'laptop dell', 1000, N'cái', 5000000, N'41iDo0HDhbL._SL500_AA300_.jpg', CAST(N'2010-05-05T00:00:00.000' AS DateTime), 1, 137, N'1', N'AP')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [MaLoai], [MoTaDonVi], [DonGia], [Hinh], [NgaySX], [GiamGia], [SoLanXem], [MoTa], [MaNCC]) VALUES (1102, N'hàng mới về', 1000, N'bộ', 12345, N'41qfgTvFBwL._SL500_AA300_.jpg', CAST(N'2010-06-05T00:00:00.000' AS DateTime), 0.35, 1, N'hàng xách tay', N'AP')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [MaLoai], [MoTaDonVi], [DonGia], [Hinh], [NgaySX], [GiamGia], [SoLanXem], [MoTa], [MaNCC]) VALUES (1103, N'quạt', 1001, N'cái', 111, N'21meTyhQebL._SL500_AA300_.jpg', CAST(N'2010-04-05T00:00:00.000' AS DateTime), 0, 1, N'chưa có', N'NK')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [MaLoai], [MoTaDonVi], [DonGia], [Hinh], [NgaySX], [GiamGia], [SoLanXem], [MoTa], [MaNCC]) VALUES (1108, N'new', 1000, N'cai', 123, N'Penguins.jpg', CAST(N'2012-06-02T00:00:00.000' AS DateTime), 0, 0, N'abc', N'AP')
SET IDENTITY_INSERT [dbo].[HangHoa] OFF
SET IDENTITY_INSERT [dbo].[HoaDon] ON 

INSERT [dbo].[HoaDon] ([MaHD], [MaKH], [NgayDat], [NgayCan], [NgayGiao], [HoTen], [DiaChi], [CachThanhToan], [CachVanChuyen], [PhiVanChuyen], [TrangThai], [MaVN], [GhiChu]) VALUES (1, N'new', CAST(N'2011-12-22T00:00:00.000' AS DateTime), CAST(N'2011-12-22T13:34:59.983' AS DateTime), CAST(N'2011-12-30T00:00:00.000' AS DateTime), N'new', N'q.12, tp. hcm', N'Tiền mặt', N'Airline', 0, 1, NULL, NULL)
INSERT [dbo].[HoaDon] ([MaHD], [MaKH], [NgayDat], [NgayCan], [NgayGiao], [HoTen], [DiaChi], [CachThanhToan], [CachVanChuyen], [PhiVanChuyen], [TrangThai], [MaVN], [GhiChu]) VALUES (2, N'diepchi', CAST(N'2011-12-22T00:00:00.000' AS DateTime), CAST(N'2011-12-22T14:02:46.503' AS DateTime), CAST(N'2012-01-20T00:00:00.000' AS DateTime), N'diepchi', N'q.12, tp. hcm', N'Tiền mặt', N'Airline', 0, 1, NULL, NULL)
INSERT [dbo].[HoaDon] ([MaHD], [MaKH], [NgayDat], [NgayCan], [NgayGiao], [HoTen], [DiaChi], [CachThanhToan], [CachVanChuyen], [PhiVanChuyen], [TrangThai], [MaVN], [GhiChu]) VALUES (3, N'new', CAST(N'2011-12-23T00:00:00.000' AS DateTime), CAST(N'2011-12-23T00:27:24.297' AS DateTime), CAST(N'2012-01-12T00:00:00.000' AS DateTime), N'new', N'q.12, tp. hcm', N'Tiền mặt', N'Airline', 0, 1, NULL, NULL)
INSERT [dbo].[HoaDon] ([MaHD], [MaKH], [NgayDat], [NgayCan], [NgayGiao], [HoTen], [DiaChi], [CachThanhToan], [CachVanChuyen], [PhiVanChuyen], [TrangThai], [MaVN], [GhiChu]) VALUES (4, N'new', CAST(N'2011-12-23T00:00:00.000' AS DateTime), CAST(N'2011-12-23T00:35:13.417' AS DateTime), CAST(N'2012-01-20T00:00:00.000' AS DateTime), N'new', N'q.12, tp. hcm', N'Tiền mặt', N'Airline', 0, 1, NULL, NULL)
INSERT [dbo].[HoaDon] ([MaHD], [MaKH], [NgayDat], [NgayCan], [NgayGiao], [HoTen], [DiaChi], [CachThanhToan], [CachVanChuyen], [PhiVanChuyen], [TrangThai], [MaVN], [GhiChu]) VALUES (5, N'new', CAST(N'2011-12-23T00:00:00.000' AS DateTime), CAST(N'2011-12-23T01:47:07.467' AS DateTime), CAST(N'2012-02-22T00:00:00.000' AS DateTime), N'new', N'q.12, tp. hcm', N'Tiền mặt', N'Airline', 0, 1, NULL, NULL)
INSERT [dbo].[HoaDon] ([MaHD], [MaKH], [NgayDat], [NgayCan], [NgayGiao], [HoTen], [DiaChi], [CachThanhToan], [CachVanChuyen], [PhiVanChuyen], [TrangThai], [MaVN], [GhiChu]) VALUES (6, N'new', CAST(N'2011-12-23T00:00:00.000' AS DateTime), CAST(N'2011-12-23T01:49:40.170' AS DateTime), CAST(N'2012-02-23T00:00:00.000' AS DateTime), N'new', N'q.12, tp. hcm', N'Tiền mặt', N'Airline', 0, 1, NULL, NULL)
INSERT [dbo].[HoaDon] ([MaHD], [MaKH], [NgayDat], [NgayCan], [NgayGiao], [HoTen], [DiaChi], [CachThanhToan], [CachVanChuyen], [PhiVanChuyen], [TrangThai], [MaVN], [GhiChu]) VALUES (7, N'diepchi', CAST(N'2011-12-23T00:00:00.000' AS DateTime), CAST(N'2011-12-23T01:50:25.200' AS DateTime), CAST(N'2012-01-20T00:00:00.000' AS DateTime), N'diepchi', N'q.12, tp. hcm', N'Tiền mặt', N'Airline', 0, 1, NULL, NULL)
INSERT [dbo].[HoaDon] ([MaHD], [MaKH], [NgayDat], [NgayCan], [NgayGiao], [HoTen], [DiaChi], [CachThanhToan], [CachVanChuyen], [PhiVanChuyen], [TrangThai], [MaVN], [GhiChu]) VALUES (8, N'new', CAST(N'2011-12-23T00:00:00.000' AS DateTime), CAST(N'2011-12-23T18:54:15.197' AS DateTime), CAST(N'2012-01-27T00:00:00.000' AS DateTime), N'new', N'q.12, tp. hcm', N'Tiền mặt', N'Airline', 0, 1, NULL, NULL)
INSERT [dbo].[HoaDon] ([MaHD], [MaKH], [NgayDat], [NgayCan], [NgayGiao], [HoTen], [DiaChi], [CachThanhToan], [CachVanChuyen], [PhiVanChuyen], [TrangThai], [MaVN], [GhiChu]) VALUES (9, N'new', CAST(N'2011-12-24T00:00:00.000' AS DateTime), CAST(N'2011-12-24T03:06:05.523' AS DateTime), CAST(N'2012-01-20T00:00:00.000' AS DateTime), N'new', N'q.12, tp. hcm', N'Tiền mặt', N'Airline', 0, 1, NULL, NULL)
INSERT [dbo].[HoaDon] ([MaHD], [MaKH], [NgayDat], [NgayCan], [NgayGiao], [HoTen], [DiaChi], [CachThanhToan], [CachVanChuyen], [PhiVanChuyen], [TrangThai], [MaVN], [GhiChu]) VALUES (14, N'KH555', CAST(N'2012-05-19T00:00:00.000' AS DateTime), CAST(N'2012-05-19T20:17:59.710' AS DateTime), CAST(N'2012-05-19T00:00:00.000' AS DateTime), N'tran van teo', N'tp. hcm', N'tien mat', N'xe may', 0, 1, NULL, NULL)
INSERT [dbo].[HoaDon] ([MaHD], [MaKH], [NgayDat], [NgayCan], [NgayGiao], [HoTen], [DiaChi], [CachThanhToan], [CachVanChuyen], [PhiVanChuyen], [TrangThai], [MaVN], [GhiChu]) VALUES (15, N'KH555', CAST(N'2012-05-19T00:00:00.000' AS DateTime), CAST(N'2012-05-19T20:30:53.293' AS DateTime), CAST(N'2012-05-19T00:00:00.000' AS DateTime), N'khong co ten', N'khong co dia chi', N'khong thanh toan', N'khong van chuyen', 0, 1, NULL, NULL)
INSERT [dbo].[HoaDon] ([MaHD], [MaKH], [NgayDat], [NgayCan], [NgayGiao], [HoTen], [DiaChi], [CachThanhToan], [CachVanChuyen], [PhiVanChuyen], [TrangThai], [MaVN], [GhiChu]) VALUES (16, N'KH555', CAST(N'2012-05-19T00:00:00.000' AS DateTime), CAST(N'2012-05-19T20:38:14.570' AS DateTime), CAST(N'2012-05-19T00:00:00.000' AS DateTime), N'tran van teo', N'tp. hcm', N'tien mat', N'xe may', 0, 0, NULL, NULL)
INSERT [dbo].[HoaDon] ([MaHD], [MaKH], [NgayDat], [NgayCan], [NgayGiao], [HoTen], [DiaChi], [CachThanhToan], [CachVanChuyen], [PhiVanChuyen], [TrangThai], [MaVN], [GhiChu]) VALUES (17, N'KH555', CAST(N'2012-05-19T00:00:00.000' AS DateTime), CAST(N'2012-05-19T20:40:33.203' AS DateTime), CAST(N'2012-05-19T00:00:00.000' AS DateTime), N'tran van teo', N'tp. hcm', N'tien mat', N'xe may', 0, 0, NULL, NULL)
INSERT [dbo].[HoaDon] ([MaHD], [MaKH], [NgayDat], [NgayCan], [NgayGiao], [HoTen], [DiaChi], [CachThanhToan], [CachVanChuyen], [PhiVanChuyen], [TrangThai], [MaVN], [GhiChu]) VALUES (18, N'KH555', CAST(N'2012-05-19T00:00:00.000' AS DateTime), CAST(N'2012-05-19T20:43:03.020' AS DateTime), CAST(N'2012-05-19T00:00:00.000' AS DateTime), N'tran van teo', N'tp. hcm', N'tien mat', N'xe may', 0, 1, NULL, NULL)
INSERT [dbo].[HoaDon] ([MaHD], [MaKH], [NgayDat], [NgayCan], [NgayGiao], [HoTen], [DiaChi], [CachThanhToan], [CachVanChuyen], [PhiVanChuyen], [TrangThai], [MaVN], [GhiChu]) VALUES (19, N'diepchi', CAST(N'2012-05-22T00:00:00.000' AS DateTime), CAST(N'2012-05-22T18:51:24.093' AS DateTime), CAST(N'2012-05-22T00:00:00.000' AS DateTime), N'abc', N'q12', N'Tiền mặt', N'Airline', 0, 0, NULL, NULL)
INSERT [dbo].[HoaDon] ([MaHD], [MaKH], [NgayDat], [NgayCan], [NgayGiao], [HoTen], [DiaChi], [CachThanhToan], [CachVanChuyen], [PhiVanChuyen], [TrangThai], [MaVN], [GhiChu]) VALUES (20, N'diepchi', CAST(N'2012-05-22T00:00:00.000' AS DateTime), CAST(N'2012-05-22T19:08:04.703' AS DateTime), CAST(N'2012-05-22T00:00:00.000' AS DateTime), N'diepchi', N'q12', N'Tiền mặt', N'Airline', 0, 1, NULL, NULL)
INSERT [dbo].[HoaDon] ([MaHD], [MaKH], [NgayDat], [NgayCan], [NgayGiao], [HoTen], [DiaChi], [CachThanhToan], [CachVanChuyen], [PhiVanChuyen], [TrangThai], [MaVN], [GhiChu]) VALUES (21, N'diepchi', CAST(N'2012-05-22T00:00:00.000' AS DateTime), CAST(N'2012-05-22T19:11:36.893' AS DateTime), CAST(N'2012-05-22T00:00:00.000' AS DateTime), N'diepchi', N'q12', N'Tiền mặt', N'Airline', 0, 1, NULL, NULL)
INSERT [dbo].[HoaDon] ([MaHD], [MaKH], [NgayDat], [NgayCan], [NgayGiao], [HoTen], [DiaChi], [CachThanhToan], [CachVanChuyen], [PhiVanChuyen], [TrangThai], [MaVN], [GhiChu]) VALUES (22, N'diepchi', CAST(N'2012-06-21T00:00:00.000' AS DateTime), CAST(N'2012-06-21T00:08:03.360' AS DateTime), CAST(N'2012-06-21T00:00:00.000' AS DateTime), N'diepchi', N'q12', N'Tiền mặt', N'Airline', 0, 0, NULL, NULL)
SET IDENTITY_INSERT [dbo].[HoaDon] OFF
INSERT [dbo].[KhachHang] ([MaKH], [MatKhau], [HoTen], [GioiTinh], [NgaySinh], [DiaChi], [DienThoai], [Email], [Hinh], [HieuLuc], [VaiTro], [Hoi], [TraLoi]) VALUES (N'abc', N'abc', N'ABC Co., Ltd', 1, CAST(N'1977-12-14T00:00:00.000' AS DateTime), N'tp. hcm', N'123456789', N'vulongnd@gmail.com', N'Lighthouse.jpg', 0, 0, N'x', N'x')
INSERT [dbo].[KhachHang] ([MaKH], [MatKhau], [HoTen], [GioiTinh], [NgaySinh], [DiaChi], [DienThoai], [Email], [Hinh], [HieuLuc], [VaiTro], [Hoi], [TraLoi]) VALUES (N'anh', N'anh', N'Anh', 0, CAST(N'1977-12-14T00:00:00.000' AS DateTime), N'tp. hcm', N'123456789', N'vulongnd@gmail.com', N'Penguins.jpg', 0, 0, N'a', N'a')
INSERT [dbo].[KhachHang] ([MaKH], [MatKhau], [HoTen], [GioiTinh], [NgaySinh], [DiaChi], [DienThoai], [Email], [Hinh], [HieuLuc], [VaiTro], [Hoi], [TraLoi]) VALUES (N'bao', N'bao', N'bao', 1, CAST(N'1977-12-14T00:00:00.000' AS DateTime), N'tp. hcm', N'123456789', N'vulongnd@gmail.com', N'Koala.jpg', 0, 0, N'bao', N'bao')
INSERT [dbo].[KhachHang] ([MaKH], [MatKhau], [HoTen], [GioiTinh], [NgaySinh], [DiaChi], [DienThoai], [Email], [Hinh], [HieuLuc], [VaiTro], [Hoi], [TraLoi]) VALUES (N'diepchi', N'123', N'diepchi', 0, CAST(N'1983-12-27T00:00:00.000' AS DateTime), N'q.12, tp. hcm', N'123456789', N'tranvanteo@gmail.com', N'Chrysanthemum.jpg', 0, 0, N'abc', N'abc')
INSERT [dbo].[KhachHang] ([MaKH], [MatKhau], [HoTen], [GioiTinh], [NgaySinh], [DiaChi], [DienThoai], [Email], [Hinh], [HieuLuc], [VaiTro], [Hoi], [TraLoi]) VALUES (N'dotnet', N'dotnet', N'dotnet', 1, CAST(N'1992-05-12T00:00:00.000' AS DateTime), N'hcm', N'123456789', N'tranvanteo1111@gmail.com', N'reload.jpg', 0, 0, N'dotnet', N'dotnet')
INSERT [dbo].[KhachHang] ([MaKH], [MatKhau], [HoTen], [GioiTinh], [NgaySinh], [DiaChi], [DienThoai], [Email], [Hinh], [HieuLuc], [VaiTro], [Hoi], [TraLoi]) VALUES (N'dotnetcore', N'dotnetcore', N'.NET Core', 1, CAST(N'1991-05-11T00:00:00.000' AS DateTime), N'hcm', N'123456789', N'tranvanteo1111@gmail.com', N'Untitled.png', 0, 0, N'dotnet', N'dotnet')
INSERT [dbo].[KhachHang] ([MaKH], [MatKhau], [HoTen], [GioiTinh], [NgaySinh], [DiaChi], [DienThoai], [Email], [Hinh], [HieuLuc], [VaiTro], [Hoi], [TraLoi]) VALUES (N'homnay', N'homnay', N'teo', 1, CAST(N'1993-05-12T00:00:00.000' AS DateTime), N'tp hcm', N'123456789', N'tranvanteo1111@gmail.com', N'reload.jpg', 0, 0, N'teo', N'teo')
INSERT [dbo].[KhachHang] ([MaKH], [MatKhau], [HoTen], [GioiTinh], [NgaySinh], [DiaChi], [DienThoai], [Email], [Hinh], [HieuLuc], [VaiTro], [Hoi], [TraLoi]) VALUES (N'KH022', N'22', N'Khách hàng 22', 1, CAST(N'2012-05-12T00:00:00.000' AS DateTime), N'22', N'22', N'tranvanteo1111@gmail.com', N'chua co', 0, 0, N'22', N'22')
INSERT [dbo].[KhachHang] ([MaKH], [MatKhau], [HoTen], [GioiTinh], [NgaySinh], [DiaChi], [DienThoai], [Email], [Hinh], [HieuLuc], [VaiTro], [Hoi], [TraLoi]) VALUES (N'KH111', N'111', N'Khách hàng 111', 1, CAST(N'2012-05-12T00:00:00.000' AS DateTime), N'111', N'111', N'tranvanteo1111@gmail.com', N'chua co', 1, 0, N'111', N'111')
INSERT [dbo].[KhachHang] ([MaKH], [MatKhau], [HoTen], [GioiTinh], [NgaySinh], [DiaChi], [DienThoai], [Email], [Hinh], [HieuLuc], [VaiTro], [Hoi], [TraLoi]) VALUES (N'KH123', N'123', N'Khách hàng 123', 1, CAST(N'1991-05-11T00:00:00.000' AS DateTime), N'tp hcm', N'123456789', N'tranvanteo1111@gmail.com', N'reload.jpg', 0, 0, N'123', N'123')
INSERT [dbo].[KhachHang] ([MaKH], [MatKhau], [HoTen], [GioiTinh], [NgaySinh], [DiaChi], [DienThoai], [Email], [Hinh], [HieuLuc], [VaiTro], [Hoi], [TraLoi]) VALUES (N'KH333', N'333', N'Khách hàng 333', 1, CAST(N'2012-05-15T00:00:00.000' AS DateTime), N'333', N'333', N'tranvanteo1111@gmail.com', N'chua co', 0, 0, N'333', N'333')
INSERT [dbo].[KhachHang] ([MaKH], [MatKhau], [HoTen], [GioiTinh], [NgaySinh], [DiaChi], [DienThoai], [Email], [Hinh], [HieuLuc], [VaiTro], [Hoi], [TraLoi]) VALUES (N'KH555', N'555', N'Khách hàng 555', 1, CAST(N'2012-05-15T00:00:00.000' AS DateTime), N'555', N'555', N'tranvanteo1111@gmail.com', N'chua co', 1, 0, N'555', N'555')
INSERT [dbo].[KhachHang] ([MaKH], [MatKhau], [HoTen], [GioiTinh], [NgaySinh], [DiaChi], [DienThoai], [Email], [Hinh], [HieuLuc], [VaiTro], [Hoi], [TraLoi]) VALUES (N'new', N'new', N'new', 1, CAST(N'1971-12-07T00:00:00.000' AS DateTime), N'q.12, tp. hcm', N'123456789', N'vulongnd@gmail.com', N'Lighthouse.jpg', 0, 0, N'new', N'new')
INSERT [dbo].[KhachHang] ([MaKH], [MatKhau], [HoTen], [GioiTinh], [NgaySinh], [DiaChi], [DienThoai], [Email], [Hinh], [HieuLuc], [VaiTro], [Hoi], [TraLoi]) VALUES (N'newton', N'newton', N'newton', 1, CAST(N'1981-12-21T00:00:00.000' AS DateTime), N'tp. hcm', N'123456789', N'vulongnd@gmail.com', N'Lighthouse.jpg', 0, 0, N'newton', N'newton')
INSERT [dbo].[KhachHang] ([MaKH], [MatKhau], [HoTen], [GioiTinh], [NgaySinh], [DiaChi], [DienThoai], [Email], [Hinh], [HieuLuc], [VaiTro], [Hoi], [TraLoi]) VALUES (N'nhatnghe', N'nhatnghe', N'nhatnghe', 0, CAST(N'1973-12-04T00:00:00.000' AS DateTime), N'105 ba huyen thanh quan, q.3, tp.hcm', N'123456789', N'vulongnd@gmail.com', N'Desert.jpg', 0, 0, N'nhatnghe', N'nhatnghe')
INSERT [dbo].[KhachHang] ([MaKH], [MatKhau], [HoTen], [GioiTinh], [NgaySinh], [DiaChi], [DienThoai], [Email], [Hinh], [HieuLuc], [VaiTro], [Hoi], [TraLoi]) VALUES (N'vietnam', N'vietnam', N'vietnam', 1, CAST(N'1991-08-12T00:00:00.000' AS DateTime), N'tp. hcm', N'1234555555', N'vietnam@gmail.com', N'chuabiet', 0, 0, N'hoi', N'traloi')
SET IDENTITY_INSERT [dbo].[Loai] ON 

INSERT [dbo].[Loai] ([MaLoai], [TenLoai], [MoTa], [Hinh], [SoLuong]) VALUES (1000, N'Beverages', N'Soft drinks, coffees, teas, beers, and ales', N'Best.png', NULL)
INSERT [dbo].[Loai] ([MaLoai], [TenLoai], [MoTa], [Hinh], [SoLuong]) VALUES (1001, N'Condiments', N'mo ta moi', N'', NULL)
INSERT [dbo].[Loai] ([MaLoai], [TenLoai], [MoTa], [Hinh], [SoLuong]) VALUES (1002, N'Confections', N'Desserts, candies, and sweet breads', N'', NULL)
INSERT [dbo].[Loai] ([MaLoai], [TenLoai], [MoTa], [Hinh], [SoLuong]) VALUES (1003, N'Dairy Products', N'Cheeses', N'Bell.png', NULL)
INSERT [dbo].[Loai] ([MaLoai], [TenLoai], [MoTa], [Hinh], [SoLuong]) VALUES (1004, N'Grains/Cereals', N'Breads, crackers, pasta, and cereal', N'Favourites.png', NULL)
INSERT [dbo].[Loai] ([MaLoai], [TenLoai], [MoTa], [Hinh], [SoLuong]) VALUES (1005, N'Meat/Poultry', N'Prepared meats', N'Dice.png', NULL)
INSERT [dbo].[Loai] ([MaLoai], [TenLoai], [MoTa], [Hinh], [SoLuong]) VALUES (1006, N'Produce', N'Dried fruit and bean curd', N'', NULL)
INSERT [dbo].[Loai] ([MaLoai], [TenLoai], [MoTa], [Hinh], [SoLuong]) VALUES (1007, N'Seafood', N'Seaweed and fish', N'', NULL)
INSERT [dbo].[Loai] ([MaLoai], [TenLoai], [MoTa], [Hinh], [SoLuong]) VALUES (1008, N'Máy tính bảng', N'Máy tính bảng', NULL, 11)
SET IDENTITY_INSERT [dbo].[Loai] OFF
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenCongTy], [Logo], [NguoiLienLac], [Email], [DienThoai], [DiaChi], [MoTa]) VALUES (N'AP', N'Apple', N'apple.gif', N'Petter Pike', N'pike@yahoo.com', N'0987345876', N'765 Hello, Califonia, United States', N'Moble Device')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenCongTy], [Logo], [NguoiLienLac], [Email], [DienThoai], [DiaChi], [MoTa]) VALUES (N'MO', N'Motorola', N'motorola.gif', N'John David', N'john@gmail.com', N'0918456987', N'22 Rose, Messachuset, United States', N'Communication Company')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenCongTy], [Logo], [NguoiLienLac], [Email], [DienThoai], [DiaChi], [MoTa]) VALUES (N'NK', N'Nokia', N'Nokia.gif', N'Okawa', N'okawa@gmail.com', N'0913745789', N'123 Revenue, Tokyo, Japan', N'Famous company')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenCongTy], [Logo], [NguoiLienLac], [Email], [DienThoai], [DiaChi], [MoTa]) VALUES (N'SM', N'Seamen', N'semen.gif', N'David Brown', N'brown@gmail.com', N'0987456876', N'23 New World, Texas, United Kindom', N'Digital device company')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenCongTy], [Logo], [NguoiLienLac], [Email], [DienThoai], [DiaChi], [MoTa]) VALUES (N'SS', N'Samsung', N'samsung.gif', N'LeeSongChai', N'lee@yahoo.com', N'0913745789', N'456 Romario, Seaul, Korea', N'The best company')
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [Email], [MatKhau], [MaVT]) VALUES (N'nv1', N'tran van teo', N'tranvanteo1111@gmail.com', N'teo', 1)
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [Email], [MatKhau], [MaVT]) VALUES (N'nv2', N'nguyen thi hai', N'hai@gmail.com', N'hai', 2)
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [Email], [MatKhau], [MaVT]) VALUES (N'nv3', N'bui dinh ba', N'ba@gmail.com', N'ba', 3)
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [Email], [MatKhau], [MaVT]) VALUES (N'nv4', N'bon', N'bon@gmail.com', N'bon', 4)
SET IDENTITY_INSERT [dbo].[PhanQuyen] ON 

INSERT [dbo].[PhanQuyen] ([MaPQ], [MaVT], [MaTW], [Xem], [Them], [Xoa], [Sua]) VALUES (39, 1, 1, 1, 1, 1, 1)
INSERT [dbo].[PhanQuyen] ([MaPQ], [MaVT], [MaTW], [Xem], [Them], [Xoa], [Sua]) VALUES (40, 1, 2, 1, 1, 1, 1)
INSERT [dbo].[PhanQuyen] ([MaPQ], [MaVT], [MaTW], [Xem], [Them], [Xoa], [Sua]) VALUES (41, 1, 3, 1, 1, 1, 1)
INSERT [dbo].[PhanQuyen] ([MaPQ], [MaVT], [MaTW], [Xem], [Them], [Xoa], [Sua]) VALUES (42, 1, 4, 1, 1, 1, 1)
INSERT [dbo].[PhanQuyen] ([MaPQ], [MaVT], [MaTW], [Xem], [Them], [Xoa], [Sua]) VALUES (43, 2, 1, 1, 0, 0, 0)
INSERT [dbo].[PhanQuyen] ([MaPQ], [MaVT], [MaTW], [Xem], [Them], [Xoa], [Sua]) VALUES (44, 2, 2, 1, 0, 0, 0)
INSERT [dbo].[PhanQuyen] ([MaPQ], [MaVT], [MaTW], [Xem], [Them], [Xoa], [Sua]) VALUES (45, 2, 3, 1, 0, 0, 0)
INSERT [dbo].[PhanQuyen] ([MaPQ], [MaVT], [MaTW], [Xem], [Them], [Xoa], [Sua]) VALUES (46, 2, 4, 1, 0, 0, 0)
INSERT [dbo].[PhanQuyen] ([MaPQ], [MaVT], [MaTW], [Xem], [Them], [Xoa], [Sua]) VALUES (47, 3, 1, 1, 1, 1, 1)
INSERT [dbo].[PhanQuyen] ([MaPQ], [MaVT], [MaTW], [Xem], [Them], [Xoa], [Sua]) VALUES (48, 3, 2, 1, 1, 1, 1)
INSERT [dbo].[PhanQuyen] ([MaPQ], [MaVT], [MaTW], [Xem], [Them], [Xoa], [Sua]) VALUES (49, 3, 3, 1, 1, 1, 1)
INSERT [dbo].[PhanQuyen] ([MaPQ], [MaVT], [MaTW], [Xem], [Them], [Xoa], [Sua]) VALUES (50, 3, 4, 1, 1, 1, 1)
INSERT [dbo].[PhanQuyen] ([MaPQ], [MaVT], [MaTW], [Xem], [Them], [Xoa], [Sua]) VALUES (51, 4, 1, 0, 0, 0, 0)
INSERT [dbo].[PhanQuyen] ([MaPQ], [MaVT], [MaTW], [Xem], [Them], [Xoa], [Sua]) VALUES (52, 4, 2, 0, 0, 0, 0)
INSERT [dbo].[PhanQuyen] ([MaPQ], [MaVT], [MaTW], [Xem], [Them], [Xoa], [Sua]) VALUES (53, 4, 3, 0, 0, 0, 0)
INSERT [dbo].[PhanQuyen] ([MaPQ], [MaVT], [MaTW], [Xem], [Them], [Xoa], [Sua]) VALUES (54, 4, 4, 0, 0, 0, 0)
SET IDENTITY_INSERT [dbo].[PhanQuyen] OFF
INSERT [dbo].[ThongKe] ([MaTK], [GiaTri]) VALUES (N'Hit', 293)
SET IDENTITY_INSERT [dbo].[TrangWeb] ON 

INSERT [dbo].[TrangWeb] ([MaTW], [TenTW], [MoTa]) VALUES (1, N'pagPhanQuyen.aspx', N'Phân quyền')
INSERT [dbo].[TrangWeb] ([MaTW], [TenTW], [MoTa]) VALUES (2, N'pagQuanLyHoaDon.aspx', N'Quản lý hóa đơn')
INSERT [dbo].[TrangWeb] ([MaTW], [TenTW], [MoTa]) VALUES (3, N'QuanLyHangHoa.aspx', N'Quản lý hàng hóa')
INSERT [dbo].[TrangWeb] ([MaTW], [TenTW], [MoTa]) VALUES (4, N'QuanLyLoaiHH.aspx', N'Quản lý loại hàng hóa')
SET IDENTITY_INSERT [dbo].[TrangWeb] OFF
INSERT [dbo].[VaiTro] ([MaVT], [TenVT]) VALUES (1, N'Administrator')
INSERT [dbo].[VaiTro] ([MaVT], [TenVT]) VALUES (2, N'Employee')
INSERT [dbo].[VaiTro] ([MaVT], [TenVT]) VALUES (3, N'Supervisor')
INSERT [dbo].[VaiTro] ([MaVT], [TenVT]) VALUES (4, N'NoRole')
ALTER TABLE [dbo].[BanBe] ADD  CONSTRAINT [DF_Promotions_Sent]  DEFAULT (getdate()) FOR [NgayGui]
GO
ALTER TABLE [dbo].[ChiTietHD] ADD  CONSTRAINT [DF_Order_Details_UnitPrice]  DEFAULT ((0)) FOR [DonGia]
GO
ALTER TABLE [dbo].[ChiTietHD] ADD  CONSTRAINT [DF_Order_Details_Quantity]  DEFAULT ((1)) FOR [SoLuong]
GO
ALTER TABLE [dbo].[ChiTietHD] ADD  CONSTRAINT [DF_Order_Details_Discount]  DEFAULT ((0)) FOR [GiamGia]
GO
ALTER TABLE [dbo].[GopY] ADD  CONSTRAINT [DF_GopY_NgayGY]  DEFAULT (getdate()) FOR [NgayGY]
GO
ALTER TABLE [dbo].[GopY] ADD  CONSTRAINT [DF_GopY_CanTraLoi]  DEFAULT ((0)) FOR [CanTraLoi]
GO
ALTER TABLE [dbo].[HangHoa] ADD  CONSTRAINT [DF_Products_UnitPrice]  DEFAULT ((0)) FOR [DonGia]
GO
ALTER TABLE [dbo].[HangHoa] ADD  CONSTRAINT [DF_Products_ProductDate]  DEFAULT (getdate()) FOR [NgaySX]
GO
ALTER TABLE [dbo].[HangHoa] ADD  CONSTRAINT [DF_Products_Discount]  DEFAULT ((0)) FOR [GiamGia]
GO
ALTER TABLE [dbo].[HangHoa] ADD  CONSTRAINT [DF_Products_Votes]  DEFAULT ((0)) FOR [SoLanXem]
GO
ALTER TABLE [dbo].[HoaDon] ADD  CONSTRAINT [DF_Orders_OrderDate]  DEFAULT (getdate()) FOR [NgayDat]
GO
ALTER TABLE [dbo].[HoaDon] ADD  CONSTRAINT [DF_Orders_RequireDate]  DEFAULT (getdate()) FOR [NgayCan]
GO
ALTER TABLE [dbo].[HoaDon] ADD  CONSTRAINT [DF_Orders_ShippedDate]  DEFAULT (((1)/(1))/(1900)) FOR [NgayGiao]
GO
ALTER TABLE [dbo].[HoaDon] ADD  CONSTRAINT [DF_Orders_PaymentMethod]  DEFAULT (N'Cash') FOR [CachThanhToan]
GO
ALTER TABLE [dbo].[HoaDon] ADD  CONSTRAINT [DF_Orders_ShippingMethod]  DEFAULT (N'Airline') FOR [CachVanChuyen]
GO
ALTER TABLE [dbo].[HoaDon] ADD  CONSTRAINT [DF_Orders_Freight]  DEFAULT ((0)) FOR [PhiVanChuyen]
GO
ALTER TABLE [dbo].[HoaDon] ADD  CONSTRAINT [DF_Orders_Status]  DEFAULT ((0)) FOR [TrangThai]
GO
ALTER TABLE [dbo].[HoiDap] ADD  CONSTRAINT [DF_HoiDap_NgayDua]  DEFAULT (getdate()) FOR [NgayDua]
GO
ALTER TABLE [dbo].[KhachHang] ADD  CONSTRAINT [DF_Customers_Gender]  DEFAULT ((0)) FOR [GioiTinh]
GO
ALTER TABLE [dbo].[KhachHang] ADD  CONSTRAINT [DF_Customers_Birthday]  DEFAULT (getdate()) FOR [NgaySinh]
GO
ALTER TABLE [dbo].[KhachHang] ADD  CONSTRAINT [DF_Customers_Photo]  DEFAULT (N'Photo.gif') FOR [Hinh]
GO
ALTER TABLE [dbo].[KhachHang] ADD  CONSTRAINT [DF_Customers_Active]  DEFAULT ((0)) FOR [HieuLuc]
GO
ALTER TABLE [dbo].[KhachHang] ADD  CONSTRAINT [DF_Customers_UserLevel]  DEFAULT ((0)) FOR [VaiTro]
GO
ALTER TABLE [dbo].[ThongKe] ADD  CONSTRAINT [DF_ThongKe_GiaTri]  DEFAULT ((0)) FOR [GiaTri]
GO
ALTER TABLE [dbo].[BanBe]  WITH CHECK ADD  CONSTRAINT [FK_BanBe_KhachHang] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[BanBe] CHECK CONSTRAINT [FK_BanBe_KhachHang]
GO
ALTER TABLE [dbo].[BanBe]  WITH CHECK ADD  CONSTRAINT [FK_QuangBa_HangHoa] FOREIGN KEY([MaHH])
REFERENCES [dbo].[HangHoa] ([MaHH])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[BanBe] CHECK CONSTRAINT [FK_QuangBa_HangHoa]
GO
ALTER TABLE [dbo].[ChiTietHD]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHD_HoaDon] FOREIGN KEY([MaHD])
REFERENCES [dbo].[HoaDon] ([MaHD])
GO
ALTER TABLE [dbo].[ChiTietHD] CHECK CONSTRAINT [FK_ChiTietHD_HoaDon]
GO
ALTER TABLE [dbo].[ChiTietHD]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Products] FOREIGN KEY([MaHH])
REFERENCES [dbo].[HangHoa] ([MaHH])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[ChiTietHD] CHECK CONSTRAINT [FK_OrderDetails_Products]
GO
ALTER TABLE [dbo].[ChuDe]  WITH CHECK ADD  CONSTRAINT [FK_ChuDe_NhanVien] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ChuDe] CHECK CONSTRAINT [FK_ChuDe_NhanVien]
GO
ALTER TABLE [dbo].[GopY]  WITH CHECK ADD  CONSTRAINT [FK_GopY_ChuDe] FOREIGN KEY([MaCD])
REFERENCES [dbo].[ChuDe] ([MaCD])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[GopY] CHECK CONSTRAINT [FK_GopY_ChuDe]
GO
ALTER TABLE [dbo].[HangHoa]  WITH CHECK ADD  CONSTRAINT [FK_Products_Categories] FOREIGN KEY([MaLoai])
REFERENCES [dbo].[Loai] ([MaLoai])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[HangHoa] CHECK CONSTRAINT [FK_Products_Categories]
GO
ALTER TABLE [dbo].[HangHoa]  WITH CHECK ADD  CONSTRAINT [FK_Products_Suppliers] FOREIGN KEY([MaNCC])
REFERENCES [dbo].[NhaCungCap] ([MaNCC])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[HangHoa] CHECK CONSTRAINT [FK_Products_Suppliers]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_NhanVien] FOREIGN KEY([MaVN])
REFERENCES [dbo].[NhanVien] ([MaNV])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_NhanVien]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Customers] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_Orders_Customers]
GO
ALTER TABLE [dbo].[HoiDap]  WITH CHECK ADD  CONSTRAINT [FK_HoiDap_NhanVien] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[HoiDap] CHECK CONSTRAINT [FK_HoiDap_NhanVien]
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_VaiTro] FOREIGN KEY([MaVT])
REFERENCES [dbo].[VaiTro] ([MaVT])
GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [FK_NhanVien_VaiTro]
GO
ALTER TABLE [dbo].[PhanQuyen]  WITH CHECK ADD  CONSTRAINT [FK_PhanQuyen_TrangWeb] FOREIGN KEY([MaTW])
REFERENCES [dbo].[TrangWeb] ([MaTW])
GO
ALTER TABLE [dbo].[PhanQuyen] CHECK CONSTRAINT [FK_PhanQuyen_TrangWeb]
GO
ALTER TABLE [dbo].[PhanQuyen]  WITH CHECK ADD  CONSTRAINT [FK_PhanQuyen_VaiTro] FOREIGN KEY([MaVT])
REFERENCES [dbo].[VaiTro] ([MaVT])
GO
ALTER TABLE [dbo].[PhanQuyen] CHECK CONSTRAINT [FK_PhanQuyen_VaiTro]
GO
ALTER TABLE [dbo].[YeuThich]  WITH CHECK ADD  CONSTRAINT [FK_Favorites_Customers] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[YeuThich] CHECK CONSTRAINT [FK_Favorites_Customers]
GO
ALTER TABLE [dbo].[YeuThich]  WITH CHECK ADD  CONSTRAINT [FK_YeuThich_HangHoa] FOREIGN KEY([MaHH])
REFERENCES [dbo].[HangHoa] ([MaHH])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[YeuThich] CHECK CONSTRAINT [FK_YeuThich_HangHoa]
GO
