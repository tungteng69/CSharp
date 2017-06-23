USE [qlx]
GO
/****** Object:  Table [dbo].[tb_ChiTietHopDong]    Script Date: 6/20/2017 10:55:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_ChiTietHopDong](
	[MaChiTietHopDong] [nvarchar](10) NOT NULL,
	[MaHopDong] [nvarchar](10) NOT NULL,
	[MaXe] [nvarchar](10) NULL,
	[TinhTrangLaiXe] [bit] NULL,
	[MaLaiXe] [nvarchar](10) NULL,
	[TinhTrangHD] [bit] NULL,
	[HanTraXe] [datetime] NULL,
	[TienThueXe] [decimal](18, 0) NULL,
	[TienDatCoc] [decimal](18, 0) NULL,
	[SoTienConNo] [decimal](18, 0) NULL,
 CONSTRAINT [PK_tb_ChiTietHopDong_1] PRIMARY KEY CLUSTERED 
(
	[MaChiTietHopDong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_ChiTietPhieuTra]    Script Date: 6/20/2017 10:55:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_ChiTietPhieuTra](
	[MaChiTietPhieuTra] [nvarchar](10) NOT NULL,
	[MaHopDong] [nvarchar](10) NOT NULL,
	[MaLaiXe] [nvarchar](10) NULL,
	[MaXe] [nvarchar](10) NOT NULL,
	[NgayTraXeThucTe] [datetime] NULL,
	[TienTraXeMuonTheoNgay] [decimal](18, 0) NULL,
	[TinhTrangHongHoc] [nvarchar](50) NULL,
	[ChiPhiBoiThuong] [decimal](18, 0) NULL,
	[TinhTrangTraXe] [bit] NULL,
 CONSTRAINT [PK_tb_ChiTietPhieuTra_1] PRIMARY KEY CLUSTERED 
(
	[MaChiTietPhieuTra] ASC,
	[MaHopDong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_Gia]    Script Date: 6/20/2017 10:55:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Gia](
	[MaGia] [nvarchar](10) NOT NULL,
	[DonGia] [money] NULL,
 CONSTRAINT [PK_tb_Gia] PRIMARY KEY CLUSTERED 
(
	[MaGia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_HopDong]    Script Date: 6/20/2017 10:55:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_HopDong](
	[MaHopDong] [nvarchar](10) NOT NULL,
	[TenHopDong] [nvarchar](50) NULL,
	[NgayLapHopDong] [datetime] NULL,
	[MaNhanVien] [nvarchar](10) NULL,
	[MaKhachHang] [nvarchar](10) NULL,
	[HanThanhToan] [datetime] NULL,
	[TinhTrangThanhToan] [bit] NULL,
	[MaXe] [nvarchar](10) NULL,
	[Malaixe] [nvarchar](10) NULL,
	[MaGia] [nvarchar](10) NULL,
	[TienCoc] [money] NULL,
 CONSTRAINT [PK_tb_HopDong] PRIMARY KEY CLUSTERED 
(
	[MaHopDong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_KhachHang]    Script Date: 6/20/2017 10:55:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_KhachHang](
	[MaKhachHang] [nvarchar](10) NOT NULL,
	[HoKhachHang] [nvarchar](50) NULL,
	[TenKhachHang] [nvarchar](50) NOT NULL,
	[NgaySinh] [datetime] NULL,
	[GioiTinh] [bit] NULL,
	[DiaChi] [nvarchar](50) NULL,
	[CMND] [char](50) NOT NULL,
	[DienThoai] [char](50) NULL,
	[Email] [char](50) NULL,
 CONSTRAINT [PK_tb_KhachHang] PRIMARY KEY CLUSTERED 
(
	[MaKhachHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tb_LaiXe]    Script Date: 6/20/2017 10:55:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_LaiXe](
	[Malaixe] [nvarchar](10) NOT NULL,
	[TenLaiXe] [nvarchar](50) NOT NULL,
	[NgaySinh] [datetime] NULL,
	[GioiTinh] [char](10) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[DienThoai] [char](50) NULL,
	[CMND] [int] NULL,
	[Email] [char](50) NULL,
	[NgayNhanViec] [datetime] NULL,
	[TinhTrangLaiXe] [nvarchar](50) NULL,
 CONSTRAINT [PK_tb_LaiXe] PRIMARY KEY CLUSTERED 
(
	[Malaixe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tb_Login]    Script Date: 6/20/2017 10:55:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Login](
	[userid] [nvarchar](50) NOT NULL,
	[pass] [nvarchar](50) NULL,
	[role] [nvarchar](50) NULL,
 CONSTRAINT [PK_tb_Login] PRIMARY KEY CLUSTERED 
(
	[userid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_NhanVien]    Script Date: 6/20/2017 10:55:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_NhanVien](
	[MaNhanVien] [nvarchar](10) NOT NULL,
	[HoNhanVien] [nvarchar](50) NOT NULL,
	[TenNhanVien] [nvarchar](50) NOT NULL,
	[GioiTinh] [bit] NULL,
	[NgaySinh] [datetime] NULL,
	[DiaChi] [nvarchar](50) NULL,
	[DienThoai] [char](20) NULL,
	[Email] [char](50) NULL,
	[BangCap] [nvarchar](50) NULL,
	[CMND] [char](50) NULL,
	[NgayVaoLam] [datetime] NULL,
 CONSTRAINT [PK_tb_NhanVirn] PRIMARY KEY CLUSTERED 
(
	[MaNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tb_PhieuTra]    Script Date: 6/20/2017 10:55:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_PhieuTra](
	[MaNV] [nvarchar](10) NOT NULL,
	[MaKH] [nvarchar](10) NOT NULL,
	[MaHD] [nvarchar](10) NOT NULL,
	[NgayLapHD] [date] NOT NULL,
	[NgayTraHD] [date] NOT NULL,
	[TienThanhToan] [money] NOT NULL,
	[TinhTrang] [bit] NULL,
	[GhiChu] [nvarchar](50) NULL,
 CONSTRAINT [PK_tb_PhieuTra] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC,
	[MaKH] ASC,
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_role]    Script Date: 6/20/2017 10:55:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_role](
	[MaCV] [nvarchar](50) NOT NULL,
	[TenCV] [nvarchar](50) NULL,
 CONSTRAINT [PK_tb_role] PRIMARY KEY CLUSTERED 
(
	[MaCV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_Xe]    Script Date: 6/20/2017 10:55:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_Xe](
	[MaXe] [nvarchar](10) NOT NULL,
	[TenXe] [nvarchar](50) NOT NULL,
	[NgaySanXuat] [datetime] NULL,
	[HangXe] [nvarchar](50) NULL,
	[BienKiemSoat] [char](10) NULL,
	[SucChua] [nvarchar](50) NULL,
	[LoaiXe] [nvarchar](50) NULL,
	[NgayMuaXe] [datetime] NULL,
	[TinhTrangXe] [nvarchar](50) NULL,
 CONSTRAINT [PK_tb_Xe_1] PRIMARY KEY CLUSTERED 
(
	[MaXe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[tb_ChiTietHopDong]  WITH CHECK ADD  CONSTRAINT [FK_tb_ChiTietHopDong_tb_HopDong] FOREIGN KEY([MaHopDong])
REFERENCES [dbo].[tb_HopDong] ([MaHopDong])
GO
ALTER TABLE [dbo].[tb_ChiTietHopDong] CHECK CONSTRAINT [FK_tb_ChiTietHopDong_tb_HopDong]
GO
ALTER TABLE [dbo].[tb_ChiTietHopDong]  WITH CHECK ADD  CONSTRAINT [FK_tb_ChiTietHopDong_tb_LaiXe] FOREIGN KEY([MaLaiXe])
REFERENCES [dbo].[tb_LaiXe] ([Malaixe])
GO
ALTER TABLE [dbo].[tb_ChiTietHopDong] CHECK CONSTRAINT [FK_tb_ChiTietHopDong_tb_LaiXe]
GO
ALTER TABLE [dbo].[tb_ChiTietHopDong]  WITH CHECK ADD  CONSTRAINT [FK_tb_ChiTietHopDong_tb_Xe] FOREIGN KEY([MaXe])
REFERENCES [dbo].[tb_Xe] ([MaXe])
GO
ALTER TABLE [dbo].[tb_ChiTietHopDong] CHECK CONSTRAINT [FK_tb_ChiTietHopDong_tb_Xe]
GO
ALTER TABLE [dbo].[tb_ChiTietPhieuTra]  WITH CHECK ADD  CONSTRAINT [FK_tb_ChiTietPhieuTra_tb_HopDong] FOREIGN KEY([MaHopDong])
REFERENCES [dbo].[tb_HopDong] ([MaHopDong])
GO
ALTER TABLE [dbo].[tb_ChiTietPhieuTra] CHECK CONSTRAINT [FK_tb_ChiTietPhieuTra_tb_HopDong]
GO
ALTER TABLE [dbo].[tb_ChiTietPhieuTra]  WITH CHECK ADD  CONSTRAINT [FK_tb_ChiTietPhieuTra_tb_LaiXe] FOREIGN KEY([MaLaiXe])
REFERENCES [dbo].[tb_LaiXe] ([Malaixe])
GO
ALTER TABLE [dbo].[tb_ChiTietPhieuTra] CHECK CONSTRAINT [FK_tb_ChiTietPhieuTra_tb_LaiXe]
GO
ALTER TABLE [dbo].[tb_ChiTietPhieuTra]  WITH CHECK ADD  CONSTRAINT [FK_tb_ChiTietPhieuTra_tb_Xe1] FOREIGN KEY([MaXe])
REFERENCES [dbo].[tb_Xe] ([MaXe])
GO
ALTER TABLE [dbo].[tb_ChiTietPhieuTra] CHECK CONSTRAINT [FK_tb_ChiTietPhieuTra_tb_Xe1]
GO
