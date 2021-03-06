USE [master]
GO
/****** Object:  Database [QLKHACHSAN]    Script Date: 1/3/2022 3:57:17 PM ******/
CREATE DATABASE [QLKHACHSAN]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QLKHACHSAN', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\QLKHACHSAN.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'QLKHACHSAN_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\QLKHACHSAN_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [QLKHACHSAN] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QLKHACHSAN].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QLKHACHSAN] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QLKHACHSAN] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QLKHACHSAN] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QLKHACHSAN] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QLKHACHSAN] SET ARITHABORT OFF 
GO
ALTER DATABASE [QLKHACHSAN] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QLKHACHSAN] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QLKHACHSAN] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QLKHACHSAN] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QLKHACHSAN] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QLKHACHSAN] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QLKHACHSAN] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QLKHACHSAN] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QLKHACHSAN] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QLKHACHSAN] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QLKHACHSAN] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QLKHACHSAN] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QLKHACHSAN] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QLKHACHSAN] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QLKHACHSAN] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QLKHACHSAN] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QLKHACHSAN] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QLKHACHSAN] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QLKHACHSAN] SET  MULTI_USER 
GO
ALTER DATABASE [QLKHACHSAN] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QLKHACHSAN] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QLKHACHSAN] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QLKHACHSAN] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [QLKHACHSAN] SET DELAYED_DURABILITY = DISABLED 
GO
USE [QLKHACHSAN]
GO
/****** Object:  Table [dbo].[hoadon]    Script Date: 1/3/2022 3:57:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hoadon](
	[mahoadon] [bigint] NOT NULL,
	[tenkhach] [nvarchar](50) NULL,
	[maphong] [bigint] NULL,
	[tenphong] [nvarchar](50) NULL,
	[loaiphong] [nvarchar](50) NULL,
	[dongia] [float] NULL,
	[songuoi] [int] NULL,
	[ngaythue] [date] NULL,
	[ngaytra] [date] NULL,
	[songay] [int] NULL,
	[nhanvienduaphong] [nvarchar](50) NULL,
	[nhanvientraphong] [nvarchar](50) NULL,
	[tongtien] [float] NULL,
 CONSTRAINT [PK_hoadon] PRIMARY KEY CLUSTERED 
(
	[mahoadon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[nhanvien]    Script Date: 1/3/2022 3:57:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nhanvien](
	[idnhanvien] [bigint] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NULL,
	[hoten] [nvarchar](50) NULL,
	[ngaysinh] [date] NULL,
	[soCMND] [nvarchar](50) NULL,
	[sodienthoai] [nvarchar](50) NULL,
 CONSTRAINT [PK_nhanvien] PRIMARY KEY CLUSTERED 
(
	[idnhanvien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[phong]    Script Date: 1/3/2022 3:57:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[phong](
	[maphong] [bigint] IDENTITY(1,1) NOT NULL,
	[tenphong] [nvarchar](50) NULL,
	[tang] [int] NULL,
	[loaiphong] [nvarchar](50) NULL,
	[songuoitoida] [int] NULL,
	[dongia] [money] NULL,
	[mota] [ntext] NULL,
	[tinhtrang] [int] NULL,
 CONSTRAINT [PK_phong] PRIMARY KEY CLUSTERED 
(
	[maphong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[thuephong]    Script Date: 1/3/2022 3:57:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[thuephong](
	[mahoadon] [bigint] IDENTITY(1,1) NOT NULL,
	[tenkhach] [nvarchar](50) NULL,
	[soCMND] [nvarchar](50) NULL,
	[maphong] [bigint] NULL,
	[ngaythue] [date] NULL,
	[ngaytra] [date] NULL,
	[tongtien] [money] NULL,
	[tratien] [bit] NULL,
	[idnhanvienduaphong] [bigint] NULL,
	[idnhanvientraphong] [bigint] NULL,
	[songuoi] [int] NULL,
 CONSTRAINT [PK_thuephong] PRIMARY KEY CLUSTERED 
(
	[mahoadon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[hoadon] ([mahoadon], [tenkhach], [maphong], [tenphong], [loaiphong], [dongia], [songuoi], [ngaythue], [ngaytra], [songay], [nhanvienduaphong], [nhanvientraphong], [tongtien]) VALUES (21, N'Cô cô', 19, N'P206', N'Superior', 234000, 2, CAST(N'2022-01-02' AS Date), CAST(N'2022-01-03' AS Date), 1, N'Dương Trang', N'Dương Trang', 468000)
SET IDENTITY_INSERT [dbo].[nhanvien] ON 

INSERT [dbo].[nhanvien] ([idnhanvien], [username], [password], [hoten], [ngaysinh], [soCMND], [sodienthoai]) VALUES (1, N'trang', N'123', N'Dương Trang', CAST(N'2000-06-13' AS Date), N'197454425', N'0376558995')
INSERT [dbo].[nhanvien] ([idnhanvien], [username], [password], [hoten], [ngaysinh], [soCMND], [sodienthoai]) VALUES (2, N'huong', N'123', N'Lê Hương', CAST(N'1999-04-28' AS Date), N'197568925', N'0698578549')
SET IDENTITY_INSERT [dbo].[nhanvien] OFF
SET IDENTITY_INSERT [dbo].[phong] ON 

INSERT [dbo].[phong] ([maphong], [tenphong], [tang], [loaiphong], [songuoitoida], [dongia], [mota], [tinhtrang]) VALUES (1, N'P101', 1, N'VIP', 4, 200000.0000, N'đẹp tuyệt vời', 0)
INSERT [dbo].[phong] ([maphong], [tenphong], [tang], [loaiphong], [songuoitoida], [dongia], [mota], [tinhtrang]) VALUES (2, N'P304', 3, N'Superior', 2, 150000.0000, N'oke gút', 0)
INSERT [dbo].[phong] ([maphong], [tenphong], [tang], [loaiphong], [songuoitoida], [dongia], [mota], [tinhtrang]) VALUES (3, N'P405', 4, N'Standard', 2, 230000.0000, N'2 giường, có đèn ngủ, có gương lớn', 0)
INSERT [dbo].[phong] ([maphong], [tenphong], [tang], [loaiphong], [songuoitoida], [dongia], [mota], [tinhtrang]) VALUES (4, N'P105', 1, N'VIP', 4, 170000.0000, N'2 giường, có đèn ngủ, có gương lớn', 3)
INSERT [dbo].[phong] ([maphong], [tenphong], [tang], [loaiphong], [songuoitoida], [dongia], [mota], [tinhtrang]) VALUES (5, N'P205', 2, N'Standard', 4, 230000.0000, N'2 giường, có đèn ngủ, có gương lớn', 2)
INSERT [dbo].[phong] ([maphong], [tenphong], [tang], [loaiphong], [songuoitoida], [dongia], [mota], [tinhtrang]) VALUES (6, N'P305', 3, N'Standard', 2, 210000.0000, N'2 giường, có đèn ngủ, có gương lớn', 0)
INSERT [dbo].[phong] ([maphong], [tenphong], [tang], [loaiphong], [songuoitoida], [dongia], [mota], [tinhtrang]) VALUES (7, N'P405', 4, N'Superior', 4, 110000.0000, N'2 giường, có đèn ngủ, có gương lớn', 2)
INSERT [dbo].[phong] ([maphong], [tenphong], [tang], [loaiphong], [songuoitoida], [dongia], [mota], [tinhtrang]) VALUES (9, N'P223', 2, N'VIP', 2, 550000.0000, N'2 giường, có đèn ngủ, có gương lớn', 2)
INSERT [dbo].[phong] ([maphong], [tenphong], [tang], [loaiphong], [songuoitoida], [dongia], [mota], [tinhtrang]) VALUES (10, N'P224', 2, N'Superior', 4, 220000.0000, N'2 giường, có đèn ngủ, có gương lớn', 2)
INSERT [dbo].[phong] ([maphong], [tenphong], [tang], [loaiphong], [songuoitoida], [dongia], [mota], [tinhtrang]) VALUES (11, N'P355', 3, N'Superior', 2, 340000.0000, N'2 giường, có đèn ngủ, có gương lớn', 0)
INSERT [dbo].[phong] ([maphong], [tenphong], [tang], [loaiphong], [songuoitoida], [dongia], [mota], [tinhtrang]) VALUES (12, N'P226', 2, N'VIP', 4, 160000.0000, N'2 giường, có đèn ngủ, có gương lớn', 2)
INSERT [dbo].[phong] ([maphong], [tenphong], [tang], [loaiphong], [songuoitoida], [dongia], [mota], [tinhtrang]) VALUES (13, N'P134', 1, N'Standard', 4, 130000.0000, N'2 giường, có đèn ngủ, có gương lớn', 0)
INSERT [dbo].[phong] ([maphong], [tenphong], [tang], [loaiphong], [songuoitoida], [dongia], [mota], [tinhtrang]) VALUES (16, N'P403', 4, N'Superior', 2, 560000.0000, N'2 giường', 2)
INSERT [dbo].[phong] ([maphong], [tenphong], [tang], [loaiphong], [songuoitoida], [dongia], [mota], [tinhtrang]) VALUES (18, N'P204', 2, N'VIP', 4, 234555.0000, N'đẹp', 1)
INSERT [dbo].[phong] ([maphong], [tenphong], [tang], [loaiphong], [songuoitoida], [dongia], [mota], [tinhtrang]) VALUES (19, N'P206', 2, N'Superior', 2, 234000.0000, N'quá đẹp', 2)
INSERT [dbo].[phong] ([maphong], [tenphong], [tang], [loaiphong], [songuoitoida], [dongia], [mota], [tinhtrang]) VALUES (20, N'P333', 3, N'Superior', 4, 234000.0000, N'xuất sắc', 1)
INSERT [dbo].[phong] ([maphong], [tenphong], [tang], [loaiphong], [songuoitoida], [dongia], [mota], [tinhtrang]) VALUES (21, N'P334', 3, N'Superior', 4, 222222.0000, N'đỉnh cao', 2)
INSERT [dbo].[phong] ([maphong], [tenphong], [tang], [loaiphong], [songuoitoida], [dongia], [mota], [tinhtrang]) VALUES (22, N'P123', 1, N'VIP', 2, 4444.0000, N'Không có gì để bàn', 0)
INSERT [dbo].[phong] ([maphong], [tenphong], [tang], [loaiphong], [songuoitoida], [dongia], [mota], [tinhtrang]) VALUES (23, N'P265', 2, N'VIP', 4, 222.0000, N'xuất sắc', 1)
INSERT [dbo].[phong] ([maphong], [tenphong], [tang], [loaiphong], [songuoitoida], [dongia], [mota], [tinhtrang]) VALUES (24, N'P202', 2, N'VIP', 2, 200000.0000, N'xinh xẻo', 0)
INSERT [dbo].[phong] ([maphong], [tenphong], [tang], [loaiphong], [songuoitoida], [dongia], [mota], [tinhtrang]) VALUES (25, N'NP205', 2, N'VIP', 2, 500000.0000, N'quá xuất sắc', 0)
INSERT [dbo].[phong] ([maphong], [tenphong], [tang], [loaiphong], [songuoitoida], [dongia], [mota], [tinhtrang]) VALUES (26, N'NP214', 2, N'Standard', 2, 150000.0000, N'ổn áp', 0)
SET IDENTITY_INSERT [dbo].[phong] OFF
SET IDENTITY_INSERT [dbo].[thuephong] ON 

INSERT [dbo].[thuephong] ([mahoadon], [tenkhach], [soCMND], [maphong], [ngaythue], [ngaytra], [tongtien], [tratien], [idnhanvienduaphong], [idnhanvientraphong], [songuoi]) VALUES (3, N'Dương Trang', N'165895589', 1, CAST(N'2021-12-23' AS Date), CAST(N'2021-12-24' AS Date), 400000.0000, 1, 1, 1, 2)
INSERT [dbo].[thuephong] ([mahoadon], [tenkhach], [soCMND], [maphong], [ngaythue], [ngaytra], [tongtien], [tratien], [idnhanvienduaphong], [idnhanvientraphong], [songuoi]) VALUES (5, N'Thuận', N'123456658', 12, CAST(N'2021-12-25' AS Date), CAST(N'2021-12-27' AS Date), 960000.0000, 1, 1, 1, 2)
INSERT [dbo].[thuephong] ([mahoadon], [tenkhach], [soCMND], [maphong], [ngaythue], [ngaytra], [tongtien], [tratien], [idnhanvienduaphong], [idnhanvientraphong], [songuoi]) VALUES (6, N'Trang', N'197454412', 5, CAST(N'2021-12-27' AS Date), CAST(N'2021-12-27' AS Date), 460000.0000, 1, 1, 1, 2)
INSERT [dbo].[thuephong] ([mahoadon], [tenkhach], [soCMND], [maphong], [ngaythue], [ngaytra], [tongtien], [tratien], [idnhanvienduaphong], [idnhanvientraphong], [songuoi]) VALUES (7, N'Dương', N'221536555', 9, CAST(N'2021-12-27' AS Date), CAST(N'2021-12-27' AS Date), 1100000.0000, 1, 1, 1, 2)
INSERT [dbo].[thuephong] ([mahoadon], [tenkhach], [soCMND], [maphong], [ngaythue], [ngaytra], [tongtien], [tratien], [idnhanvienduaphong], [idnhanvientraphong], [songuoi]) VALUES (8, N'Nghĩa', N'258741236', 7, CAST(N'2021-12-27' AS Date), CAST(N'2021-12-27' AS Date), 220000.0000, 1, 1, 1, 2)
INSERT [dbo].[thuephong] ([mahoadon], [tenkhach], [soCMND], [maphong], [ngaythue], [ngaytra], [tongtien], [tratien], [idnhanvienduaphong], [idnhanvientraphong], [songuoi]) VALUES (9, N'Hương', N'258746632', 16, CAST(N'2021-12-27' AS Date), CAST(N'2021-12-27' AS Date), 1120000.0000, 1, 1, 1, 2)
INSERT [dbo].[thuephong] ([mahoadon], [tenkhach], [soCMND], [maphong], [ngaythue], [ngaytra], [tongtien], [tratien], [idnhanvienduaphong], [idnhanvientraphong], [songuoi]) VALUES (10, N'Thư', N'558969874', 19, CAST(N'2021-12-27' AS Date), CAST(N'2021-12-27' AS Date), 234000.0000, 1, 1, 1, 1)
INSERT [dbo].[thuephong] ([mahoadon], [tenkhach], [soCMND], [maphong], [ngaythue], [ngaytra], [tongtien], [tratien], [idnhanvienduaphong], [idnhanvientraphong], [songuoi]) VALUES (11, N'Dương Văn Đạt', N'254898745', 20, CAST(N'2021-12-27' AS Date), CAST(N'2021-12-27' AS Date), 936000.0000, 1, 1, 1, 4)
INSERT [dbo].[thuephong] ([mahoadon], [tenkhach], [soCMND], [maphong], [ngaythue], [ngaytra], [tongtien], [tratien], [idnhanvienduaphong], [idnhanvientraphong], [songuoi]) VALUES (12, N'Lê Thị Hương', N'225256235', 3, CAST(N'2021-12-27' AS Date), CAST(N'2021-12-27' AS Date), 460000.0000, 1, 1, 1, 2)
INSERT [dbo].[thuephong] ([mahoadon], [tenkhach], [soCMND], [maphong], [ngaythue], [ngaytra], [tongtien], [tratien], [idnhanvienduaphong], [idnhanvientraphong], [songuoi]) VALUES (13, N'Đỗ Thị Thuận', N'215456236', 10, CAST(N'2021-12-27' AS Date), CAST(N'2021-12-27' AS Date), 440000.0000, 1, 1, 1, 2)
INSERT [dbo].[thuephong] ([mahoadon], [tenkhach], [soCMND], [maphong], [ngaythue], [ngaytra], [tongtien], [tratien], [idnhanvienduaphong], [idnhanvientraphong], [songuoi]) VALUES (14, N'Hà Xuân Nghĩa', N'123245698', 21, CAST(N'2021-12-27' AS Date), CAST(N'2021-12-27' AS Date), 444444.0000, 1, 1, 1, 2)
INSERT [dbo].[thuephong] ([mahoadon], [tenkhach], [soCMND], [maphong], [ngaythue], [ngaytra], [tongtien], [tratien], [idnhanvienduaphong], [idnhanvientraphong], [songuoi]) VALUES (15, N'Bùi Thị Anh Thư', N'223215652', 21, CAST(N'2021-12-27' AS Date), CAST(N'2021-12-27' AS Date), 444444.0000, 1, 1, 1, 2)
INSERT [dbo].[thuephong] ([mahoadon], [tenkhach], [soCMND], [maphong], [ngaythue], [ngaytra], [tongtien], [tratien], [idnhanvienduaphong], [idnhanvientraphong], [songuoi]) VALUES (16, N'Bùi Xuân Sang', N'223256213', 19, CAST(N'2021-12-27' AS Date), CAST(N'2021-12-27' AS Date), 468000.0000, 1, 1, 1, 2)
INSERT [dbo].[thuephong] ([mahoadon], [tenkhach], [soCMND], [maphong], [ngaythue], [ngaytra], [tongtien], [tratien], [idnhanvienduaphong], [idnhanvientraphong], [songuoi]) VALUES (17, N'Quỳnh Phương', N'111111125', 20, CAST(N'2021-12-27' AS Date), CAST(N'2021-12-27' AS Date), 468000.0000, 1, 1, 1, 2)
INSERT [dbo].[thuephong] ([mahoadon], [tenkhach], [soCMND], [maphong], [ngaythue], [ngaytra], [tongtien], [tratien], [idnhanvienduaphong], [idnhanvientraphong], [songuoi]) VALUES (18, N'Totoro', N'222332123', 21, CAST(N'2021-12-27' AS Date), CAST(N'2021-12-27' AS Date), 444444.0000, 1, 1, 1, 2)
INSERT [dbo].[thuephong] ([mahoadon], [tenkhach], [soCMND], [maphong], [ngaythue], [ngaytra], [tongtien], [tratien], [idnhanvienduaphong], [idnhanvientraphong], [songuoi]) VALUES (20, N'Nobita', N'232568956', 19, CAST(N'2021-12-28' AS Date), CAST(N'2021-12-28' AS Date), 468000.0000, 1, 1, 1, 2)
INSERT [dbo].[thuephong] ([mahoadon], [tenkhach], [soCMND], [maphong], [ngaythue], [ngaytra], [tongtien], [tratien], [idnhanvienduaphong], [idnhanvientraphong], [songuoi]) VALUES (21, N'Cô cô', N'197458896', 19, CAST(N'2022-01-02' AS Date), CAST(N'2022-01-03' AS Date), 468000.0000, 1, 1, 1, 2)
INSERT [dbo].[thuephong] ([mahoadon], [tenkhach], [soCMND], [maphong], [ngaythue], [ngaytra], [tongtien], [tratien], [idnhanvienduaphong], [idnhanvientraphong], [songuoi]) VALUES (22, N'Dương Quá', N'111666556', 20, CAST(N'2022-01-02' AS Date), NULL, NULL, 0, 1, NULL, 2)
SET IDENTITY_INSERT [dbo].[thuephong] OFF
ALTER TABLE [dbo].[hoadon]  WITH CHECK ADD  CONSTRAINT [FK_hoadon_thuephong] FOREIGN KEY([mahoadon])
REFERENCES [dbo].[thuephong] ([mahoadon])
GO
ALTER TABLE [dbo].[hoadon] CHECK CONSTRAINT [FK_hoadon_thuephong]
GO
ALTER TABLE [dbo].[thuephong]  WITH CHECK ADD  CONSTRAINT [FK_thuephong_nhanvien] FOREIGN KEY([idnhanvienduaphong])
REFERENCES [dbo].[nhanvien] ([idnhanvien])
GO
ALTER TABLE [dbo].[thuephong] CHECK CONSTRAINT [FK_thuephong_nhanvien]
GO
ALTER TABLE [dbo].[thuephong]  WITH CHECK ADD  CONSTRAINT [FK_thuephong_nhanvien1] FOREIGN KEY([idnhanvientraphong])
REFERENCES [dbo].[nhanvien] ([idnhanvien])
GO
ALTER TABLE [dbo].[thuephong] CHECK CONSTRAINT [FK_thuephong_nhanvien1]
GO
ALTER TABLE [dbo].[thuephong]  WITH CHECK ADD  CONSTRAINT [FK_thuephong_phong] FOREIGN KEY([maphong])
REFERENCES [dbo].[phong] ([maphong])
GO
ALTER TABLE [dbo].[thuephong] CHECK CONSTRAINT [FK_thuephong_phong]
GO
USE [master]
GO
ALTER DATABASE [QLKHACHSAN] SET  READ_WRITE 
GO
