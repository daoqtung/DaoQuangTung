USE [master]
GO
CREATE DATABASE [SD93_DATN]
SELECT Id_ChuongTrinhGiamGiaHoaDon FROM ChuongTrinhGiamGiaHoaDon;

GO
ALTER DATABASE [SD93_DATN] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SD93_DATN] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SD93_DATN] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SD93_DATN] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SD93_DATN] SET ARITHABORT OFF 
GO
ALTER DATABASE [SD93_DATN] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [SD93_DATN] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SD93_DATN] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SD93_DATN] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SD93_DATN] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SD93_DATN] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SD93_DATN] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SD93_DATN] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SD93_DATN] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SD93_DATN] SET  ENABLE_BROKER 
GO
ALTER DATABASE [SD93_DATN] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SD93_DATN] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SD93_DATN] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SD93_DATN] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SD93_DATN] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SD93_DATN] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SD93_DATN] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SD93_DATN] SET RECOVERY FULL 
GO
ALTER DATABASE [SD93_DATN] SET  MULTI_USER 
GO
ALTER DATABASE [SD93_DATN] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SD93_DATN] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SD93_DATN] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SD93_DATN] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [SD93_DATN] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [SD93_DATN] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'SD93_DATN', N'ON'
GO
ALTER DATABASE [SD93_DATN] SET QUERY_STORE = ON
GO
ALTER DATABASE [SD93_DATN] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [SD93_DATN]
GO
/****** Object:  Table [dbo].[ChatLieu]    Script Date: 07/04/2024 14:43:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChatLieu](
	[Id_ChatLieu] [uniqueidentifier] NOT NULL,
	[tenChatLieu] [nvarchar](max) NULL,
	[ghiChu] [nvarchar](max) NULL,
	[ngayTao] [date] NULL,
	[ngaySua] [date] NULL,
	[trangThai] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_ChatLieu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChuongTrinhGiamGiaChiTietGiayTheThao]    Script Date: 07/04/2024 14:43:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChuongTrinhGiamGiaChiTietGiayTheThao](
	[Id_ChuongTrinhGiamGiaChiTietGiayTheThao] [uniqueidentifier] NOT NULL,
	[Id_ChuongTrinhGiamGiaGiayTheThao] [uniqueidentifier] NULL,
	[Id_GiayTheThao] [uniqueidentifier] NULL,
	[soTienDaGiam] [decimal](20, 0) NULL,
	[ghiChu] [nvarchar](max) NULL,
	[ngayTao] [date] NULL,
	[ngaySua] [date] NULL,
	[trangThai] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_ChuongTrinhGiamGiaChiTietGiayTheThao] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChuongTrinhGiamGiaChiTietHoaDon]    Script Date: 07/04/2024 14:43:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChuongTrinhGiamGiaChiTietHoaDon](
	[Id_ChuongTrinhGiamGiaChiTietHoaDon] [uniqueidentifier] NOT NULL,
	[Id_ChuongTrinhGiamGiaHoaDon] [uniqueidentifier] NULL,
	[Id_HoaDon] [uniqueidentifier] NULL,
	[soTienDaGiam] [decimal](20, 0) NULL,
	[ghiChu] [nvarchar](max) NULL,
	[ngayTao] [date] NULL,
	[ngaySua] [date] NULL,
	[trangThai] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_ChuongTrinhGiamGiaChiTietHoaDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChuongTrinhGiamGiaGiayTheThao]    Script Date: 07/04/2024 14:43:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChuongTrinhGiamGiaGiayTheThao](
	[Id_ChuongTrinhGiamGiaGiayTheThao] [uniqueidentifier] NOT NULL,
	[tenChuongTrinhGiamGia] [nvarchar](max) NULL,
	[phanTramGiam] [int] NULL,
	[ngayBatDau] [date] NULL,
	[ngayKetThuc] [date] NULL,
	[ghiChu] [nvarchar](max) NULL,
	[ngayTao] [date] NULL,
	[ngaySua] [date] NULL,
	[trangThai] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_ChuongTrinhGiamGiaGiayTheThao] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChuongTrinhGiamGiaHoaDon]    Script Date: 07/04/2024 14:43:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChuongTrinhGiamGiaHoaDon](
	[Id_ChuongTrinhGiamGiaHoaDon] [uniqueidentifier] NOT NULL,
	[tenChuongTrinh] [nvarchar](max) NULL,
	[phanTramGiam] [int] NULL,
	[soLuongSanPham] [int] NULL,
	[soTienHoaDon] [decimal](20, 0) NULL,
	[ngayBatDau] [date] NULL,
	[ngayKetThuc] [date] NULL,
	[ghiChu] [nvarchar](max) NULL,
	[ngayTao] [date] NULL,
	[ngaySua] [date] NULL,
	[trangThai] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_ChuongTrinhGiamGiaHoaDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CoGiay]    Script Date: 07/04/2024 14:43:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CoGiay](
	[Id_CoGiay] [uniqueidentifier] NOT NULL,
	[tenCoGiay] [nvarchar](max) NULL,
	[ghiChu] [nvarchar](max) NULL,
	[ngayTao] [date] NULL,
	[ngaySua] [date] NULL,
	[trangThai] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_CoGiay] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CongDung]    Script Date: 07/04/2024 14:43:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CongDung](
	[Id_CongDung] [uniqueidentifier] NOT NULL,
	[tenCongDung] [nvarchar](max) NULL,
	[ghiChu] [nvarchar](max) NULL,
	[ngayTao] [date] NULL,
	[ngaySua] [date] NULL,
	[trangThai] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_CongDung] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DayGiay]    Script Date: 07/04/2024 14:43:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DayGiay](
	[Id_DayGiay] [uniqueidentifier] NOT NULL,
	[tenDayGiay] [nvarchar](max) NULL,
	[chieuDaiDayGiay] [nvarchar](max) NULL,
	[ghiChu] [nvarchar](max) NULL,
	[ngayTao] [date] NULL,
	[ngaySua] [date] NULL,
	[trangThai] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_DayGiay] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DeGiay]    Script Date: 07/04/2024 14:43:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DeGiay](
	[Id_DeGiay] [uniqueidentifier] NOT NULL,
	[tenDeGiay] [nvarchar](max) NULL,
	[ghiChu] [nvarchar](max) NULL,
	[ngayTao] [date] NULL,
	[ngaySua] [date] NULL,
	[trangThai] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_DeGiay] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DinhTanGiay]    Script Date: 07/04/2024 14:43:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DinhTanGiay](
	[Id_DinhTanGiay] [uniqueidentifier] NOT NULL,
	[tenDinhTanGiay] [nvarchar](max) NULL,
	[ghiChu] [nvarchar](max) NULL,
	[ngayTao] [date] NULL,
	[ngaySua] [date] NULL,
	[trangThai] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_DinhTanGiay] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Form]    Script Date: 07/04/2024 14:43:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Form](
	[Id_Form] [uniqueidentifier] NOT NULL,
	[tenForm] [nvarchar](max) NULL,
	[ghiChu] [nvarchar](max) NULL,
	[ngayTao] [date] NULL,
	[ngaySua] [date] NULL,
	[trangThai] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_Form] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GiaoDichViChiTiet]    Script Date: 07/04/2024 14:43:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GiaoDichViChiTiet](
	[Id_GiaoDichViChiTiet] [uniqueidentifier] NOT NULL,
	[Id_ViTien] [uniqueidentifier] NULL,
	[Id_User] [uniqueidentifier] NULL,
	[maGiaoDichViChiTiet] [nvarchar](max) NULL,
	[donGia] [decimal](20, 0) NULL,
	[ngayGiaoDich] [datetime] NULL,
	[hinhThuc] [int] NULL,
	[trangThai] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_GiaoDichViChiTiet] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GiayTheThao]    Script Date: 07/04/2024 14:43:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GiayTheThao](
	[Id_GiayTheThao] [uniqueidentifier] NOT NULL,
	[Id_Form] [uniqueidentifier] NULL,
	[Id_CongDung] [uniqueidentifier] NULL,
	[Id_ChatLieu] [uniqueidentifier] NULL,
	[Id_HuongDanBaoQuan] [uniqueidentifier] NULL,
	[Id_LotGiay] [uniqueidentifier] NULL,
	[Id_CoGiay] [uniqueidentifier] NULL,
	[Id_DeGiay] [uniqueidentifier] NULL,
	[Id_DayGiay] [uniqueidentifier] NULL,
	[Id_TrongLuong] [uniqueidentifier] NULL,
	[Id_ThuongHieu] [uniqueidentifier] NULL,
	[Id_KieuBuoc] [uniqueidentifier] NULL,
	[Id_DinhTanGiay] [uniqueidentifier] NULL,
	[gioiTinh] [nvarchar](5) NULL,
	[tenGiayTheThao] [nvarchar](max) NULL,
	[giaBan] [decimal](20, 0) NULL,
	[soTienGiamGia] [decimal](20, 0) NULL,
	[moTa] [nvarchar](max) NULL,
	[ghiChu] [nvarchar](max) NULL,
	[ngayTao] [date] NULL,
	[ngaySua] [date] NULL,
	[trangThai] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_GiayTheThao] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GiayTheThaoChiTiet]    Script Date: 07/04/2024 14:43:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GiayTheThaoChiTiet](
	[Id_GiayTheThaoChiTiet] [uniqueidentifier] NOT NULL,
	[Id_GiayTheThao] [uniqueidentifier] NULL,
	[Id_Size] [uniqueidentifier] NULL,
	[Id_MauSac] [uniqueidentifier] NULL,
	[soLuong] [int] NULL,
	[ghiChu] [nvarchar](max) NULL,
	[ngayTao] [date] NULL,
	[ngaySua] [date] NULL,
	[trangThai] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_GiayTheThaoChiTiet] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GioHang]    Script Date: 07/04/2024 14:43:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GioHang](
	[Id_GioHang] [uniqueidentifier] NOT NULL,
	[Id_User] [uniqueidentifier] NULL,
	[Id_KhachHang] [uniqueidentifier] NULL,
	[ghiChu] [nvarchar](max) NULL,
	[ngayTao] [date] NULL,
	[ngaySua] [date] NULL,
	[trangThai] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_GioHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GioHangChiTiet]    Script Date: 07/04/2024 14:43:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GioHangChiTiet](
	[Id_GioHangChiTiet] [uniqueidentifier] NOT NULL,
	[Id_GiayTheThaoChiTiet] [uniqueidentifier] NULL,
	[Id_GioHang] [uniqueidentifier] NULL,
	[soLuong] [int] NULL,
	[donGia] [decimal](20, 0) NULL,
	[donGiaKhiGiam] [decimal](20, 0) NULL,
	[ngayTao] [date] NULL,
	[ngaySua] [date] NULL,
	[trangThai] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_GioHangChiTiet] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 07/04/2024 14:43:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[Id_HoaDon] [uniqueidentifier] NOT NULL,
	[Id_KhachHang] [uniqueidentifier] NULL,
	[Id_User] [uniqueidentifier] NULL,
	[maHoaDon] [nvarchar](50) NULL,
	[thanhTien] [decimal](20, 0) NULL,
	[phiShip] [decimal](20, 0) NULL,
	[ghiChu] [nvarchar](max) NULL,
	[mess] [nvarchar](max) NULL,
	[ngayTao] [datetime] NULL,
	[ngayThanhToan] [datetime] NULL,
	[ngaySua] [datetime] NULL,
	[hinhThuc] [int] NULL,
	[hinhThucThanhToan] [int] NULL,
	[trangThaiMoney] [int] NULL,
	[trangThai] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_HoaDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDonChiTiet]    Script Date: 07/04/2024 14:43:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDonChiTiet](
	[Id_HoaDonChiTiet] [uniqueidentifier] NOT NULL,
	[Id_HoaDon] [uniqueidentifier] NULL,
	[Id_GiayTheThaoChiTiet] [uniqueidentifier] NULL,
	[soLuong] [int] NULL,
	[donGia] [decimal](20, 0) NULL,
	[ghiChu] [nvarchar](max) NULL,
	[ngayTao] [datetime] NULL,
	[ngaySua] [datetime] NULL,
	[trangThai] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_HoaDonChiTiet] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HuongDanBaoQuan]    Script Date: 07/04/2024 14:43:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HuongDanBaoQuan](
	[Id_HuongDanBaoQuan] [uniqueidentifier] NOT NULL,
	[tenHuongDanBaoQuan] [nvarchar](max) NULL,
	[ghiChu] [nvarchar](max) NULL,
	[ngayTao] [date] NULL,
	[ngaySua] [date] NULL,
	[trangThai] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_HuongDanBaoQuan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Image]    Script Date: 07/04/2024 14:43:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Image](
	[Id_Image] [uniqueidentifier] NOT NULL,
	[Id_GiayTheThao] [uniqueidentifier] NULL,
	[Url_Image] [nvarchar](max) NULL,
	[ghiChu] [nvarchar](max) NULL,
	[ngayTao] [date] NULL,
	[ngaySua] [date] NULL,
	[trangThai] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_Image] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 07/04/2024 14:43:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[Id_KhachHang] [uniqueidentifier] NOT NULL,
	[maKhachHang] [nvarchar](30) NULL,
	[Url_Image] [nvarchar](max) NULL,
	[email] [nvarchar](30) NULL,
	[matKhau] [nvarchar](30) NULL,
	[tenKhachHang] [nvarchar](max) NULL,
	[gioiTinh] [nvarchar](5) NULL,
	[ngaySinh] [date] NULL,
	[soDienThoai] [nvarchar](30) NULL,
	[diaChi] [nvarchar](max) NULL,
	[thanhPho] [nvarchar](max) NULL,
	[huyen] [nvarchar](max) NULL,
	[xa] [nvarchar](max) NULL,
	[ghiChu] [nvarchar](max) NULL,
	[ngayTao] [date] NULL,
	[ngaySua] [date] NULL,
	[trangThai] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_KhachHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KieuBuoc]    Script Date: 07/04/2024 14:43:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KieuBuoc](
	[Id_KieuBuoc] [uniqueidentifier] NOT NULL,
	[tenKieuBuoc] [nvarchar](max) NULL,
	[ghiChu] [nvarchar](max) NULL,
	[ngayTao] [date] NULL,
	[ngaySua] [date] NULL,
	[trangThai] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_KieuBuoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LotGiay]    Script Date: 07/04/2024 14:43:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LotGiay](
	[Id_LotGiay] [uniqueidentifier] NOT NULL,
	[tenLotGiay] [nvarchar](max) NULL,
	[ghiChu] [nvarchar](max) NULL,
	[ngayTao] [date] NULL,
	[ngaySua] [date] NULL,
	[trangThai] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_LotGiay] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MauSac]    Script Date: 07/04/2024 14:43:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MauSac](
	[Id_MauSac] [uniqueidentifier] NOT NULL,
	[tenMauSac] [nvarchar](max) NULL,
	[ghiChu] [nvarchar](max) NULL,
	[ngayTao] [date] NULL,
	[ngaySua] [date] NULL,
	[trangThai] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_MauSac] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhieuGiamGiaHoaDon]    Script Date: 07/04/2024 14:43:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuGiamGiaHoaDon](
	[Id_PhieuGiamGiaHoaDon] [uniqueidentifier] NOT NULL,
	[tenPhieuGiamGiaHoaDon] [nvarchar](max) NULL,
	[phanTramGiam] [int] NULL,
	[ghiChu] [nvarchar](max) NULL,
	[ngayTao] [date] NULL,
	[ngaySua] [date] NULL,
	[trangThai] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_PhieuGiamGiaHoaDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhieuGiamGiaHoaDonChiTiet]    Script Date: 07/04/2024 14:43:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuGiamGiaHoaDonChiTiet](
	[Id_PhieuGiamGiaHoaDonChiTiet] [uniqueidentifier] NOT NULL,
	[Id_PhieuGiamGiaHoaDon] [uniqueidentifier] NULL,
	[Id_HoaDon] [uniqueidentifier] NULL,
	[tenPhieuGiamGiaHoaDonChiTiet] [nvarchar](max) NULL,
	[soTienHoaDonDaGiam] [decimal](20, 0) NULL,
	[soLuongPhieu] [int] NULL,
	[ghiChu] [nvarchar](max) NULL,
	[ngayTao] [date] NULL,
	[ngaySua] [date] NULL,
	[trangThai] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_PhieuGiamGiaHoaDonChiTiet] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Size]    Script Date: 07/04/2024 14:43:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Size](
	[Id_Size] [uniqueidentifier] NOT NULL,
	[size] [nvarchar](max) NULL,
	[ghiChu] [nvarchar](max) NULL,
	[ngayTao] [date] NULL,
	[ngaySua] [date] NULL,
	[trangThai] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_Size] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThuongHieu]    Script Date: 07/04/2024 14:43:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThuongHieu](
	[Id_ThuongHieu] [uniqueidentifier] NOT NULL,
	[tenThuongHieu] [nvarchar](max) NULL,
	[ghiChu] [nvarchar](max) NULL,
	[ngayTao] [date] NULL,
	[ngaySua] [date] NULL,
	[trangThai] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_ThuongHieu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TrongLuong]    Script Date: 07/04/2024 14:43:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TrongLuong](
	[Id_TrongLuong] [uniqueidentifier] NOT NULL,
	[tenTrongLuong] [nvarchar](max) NULL,
	[ghiChu] [nvarchar](max) NULL,
	[ngayTao] [date] NULL,
	[ngaySua] [date] NULL,
	[trangThai] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_TrongLuong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 07/04/2024 14:43:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id_User] [uniqueidentifier] NOT NULL,
	[maUser] [nvarchar](20) NULL,
	[Url_Image] [nvarchar](max) NULL,
	[email] [nvarchar](50) NULL,
	[matKhau] [nvarchar](30) NULL,
	[tenUser] [nvarchar](30) NULL,
	[gioiTinh] [nvarchar](5) NULL,
	[ngaySinh] [date] NULL,
	[maCCCD] [nvarchar](30) NULL,
	[hoKhau] [nvarchar](30) NULL,
	[soDienThoai] [nvarchar](30) NULL,
	[diaChi] [nvarchar](max) NULL,
	[ghiChu] [nvarchar](max) NULL,
	[ngayTao] [date] NULL,
	[ngaySua] [date] NULL,
	[trangThai] [int] NULL,
	[role] [nvarchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_User] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ViTien]    Script Date: 07/04/2024 14:43:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ViTien](
	[Id_ViTien] [uniqueidentifier] NOT NULL,
	[Id_KhachHang] [uniqueidentifier] NULL,
	[maViTien] [nvarchar](max) NULL,
	[thanhTien] [decimal](20, 0) NULL,
	[ngayTao] [datetime] NULL,
	[ngaySua] [datetime] NULL,
	[trangThai] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_ViTien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[ChatLieu] ([Id_ChatLieu], [tenChatLieu], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'ba731702-347a-4492-9215-1ad8094ed822', N'Chất liệu da PU', N'Chất liệu da sản phẩm này tốt', CAST(N'2023-12-12' AS Date), CAST(N'1900-01-01' AS Date), 1)
INSERT [dbo].[ChatLieu] ([Id_ChatLieu], [tenChatLieu], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'c63d2852-643c-4a4f-a5f4-1b9582c4930b', N'Chất liệu da bò', N'Chất liệu cao cấp đắt tiền', CAST(N'2023-12-23' AS Date), CAST(N'1900-01-01' AS Date), 1)
INSERT [dbo].[ChatLieu] ([Id_ChatLieu], [tenChatLieu], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'8ce36ecb-65ae-4571-96e0-32d3435bc29b', N'Chất liệu da bê', N'', CAST(N'2023-12-12' AS Date), CAST(N'1900-01-01' AS Date), 0)
INSERT [dbo].[ChatLieu] ([Id_ChatLieu], [tenChatLieu], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'0b9a9941-e9bb-4b5e-bd85-42e7d075c3ad', N'Chất liệu da dê', N'Chất liệu da sản phẩm này tốt', CAST(N'2023-12-12' AS Date), CAST(N'1900-01-01' AS Date), 0)
INSERT [dbo].[ChatLieu] ([Id_ChatLieu], [tenChatLieu], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'8f55d86c-a0f0-46e4-9392-447c4a940444', N'Chất liệu K-Leather', N'', CAST(N'2023-12-12' AS Date), CAST(N'1900-01-01' AS Date), 0)
INSERT [dbo].[ChatLieu] ([Id_ChatLieu], [tenChatLieu], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'abb29833-9cc4-43fb-9c2f-855c13fc297e', N'Chất liệu da Microfiber', N'Chất liệu da cao cấp', CAST(N'2023-12-12' AS Date), CAST(N'1900-01-01' AS Date), 0)
INSERT [dbo].[ChatLieu] ([Id_ChatLieu], [tenChatLieu], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'95c324fb-c344-4509-ab07-8af5530d8df2', N'FluroSkin', N'Chất liệu da sản phẩm này tốt', CAST(N'2023-12-12' AS Date), CAST(N'1900-01-01' AS Date), 1)
INSERT [dbo].[ChatLieu] ([Id_ChatLieu], [tenChatLieu], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'a300d2c7-ba8b-44f2-bbd3-8eca80a7f9c8', N'Nikeskin', N'Chất liệu da sản phẩm này tốt', CAST(N'2023-12-12' AS Date), CAST(N'1900-01-01' AS Date), 1)
INSERT [dbo].[ChatLieu] ([Id_ChatLieu], [tenChatLieu], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'b3ce5d28-dc21-47de-a869-d314bf50cff3', N'Chất liệu da Kangaroo', N'Chất liệu da sản phẩm này tốt', CAST(N'2023-12-12' AS Date), CAST(N'1900-01-01' AS Date), 1)
INSERT [dbo].[ChatLieu] ([Id_ChatLieu], [tenChatLieu], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'b5af92b6-85b0-41ab-beb0-ee3852df4400', N'Chất liệu Calfskin Leather', N'Đắt tiền', CAST(N'2023-12-12' AS Date), CAST(N'1900-01-01' AS Date), 1)
GO
INSERT [dbo].[ChuongTrinhGiamGiaGiayTheThao] ([Id_ChuongTrinhGiamGiaGiayTheThao], [tenChuongTrinhGiamGia], [phanTramGiam], [ngayBatDau], [ngayKetThuc], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'086a1ad7-8f8a-494a-af48-1043875df01e', N'Chương trình giảm giá giầy thể thao ngày 6/6', 7, CAST(N'2023-09-27' AS Date), CAST(N'2023-10-01' AS Date), N'', CAST(N'2023-09-27' AS Date), NULL, -1)
INSERT [dbo].[ChuongTrinhGiamGiaGiayTheThao] ([Id_ChuongTrinhGiamGiaGiayTheThao], [tenChuongTrinhGiamGia], [phanTramGiam], [ngayBatDau], [ngayKetThuc], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'380f3271-769c-4442-a0a2-34fd737a3687', N'Chương trình giảm giá giầy thể thao 1/6', 5, CAST(N'2023-09-27' AS Date), CAST(N'2023-10-01' AS Date), N'Chương trình giảm giá có hạn', CAST(N'2023-09-27' AS Date), NULL, -1)
INSERT [dbo].[ChuongTrinhGiamGiaGiayTheThao] ([Id_ChuongTrinhGiamGiaGiayTheThao], [tenChuongTrinhGiamGia], [phanTramGiam], [ngayBatDau], [ngayKetThuc], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'763b1811-1e5f-4487-b468-732e27ee1abe', N'Chương trình giảm giá giầy thể thao ngày vàng nhân đôi 1/1', 10, CAST(N'2023-09-27' AS Date), CAST(N'2023-10-01' AS Date), N'', CAST(N'2023-09-27' AS Date), NULL, -1)
INSERT [dbo].[ChuongTrinhGiamGiaGiayTheThao] ([Id_ChuongTrinhGiamGiaGiayTheThao], [tenChuongTrinhGiamGia], [phanTramGiam], [ngayBatDau], [ngayKetThuc], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'c6b91554-0212-44d0-a87c-c40c026a029b', N'Chương trình giảm giá giầy thể thao 2/6', 8, CAST(N'2023-09-27' AS Date), CAST(N'2023-10-01' AS Date), N'', CAST(N'2023-09-27' AS Date), NULL, -1)
GO
INSERT [dbo].[ChuongTrinhGiamGiaHoaDon] ([Id_ChuongTrinhGiamGiaHoaDon], [tenChuongTrinh], [phanTramGiam], [soLuongSanPham], [soTienHoaDon], [ngayBatDau], [ngayKetThuc], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'354a9b09-8093-444d-aae2-12cee1f65dd5', N'Chương trình vui tết thiếu nhi 1/6', 20, 4, CAST(300000 AS Decimal(20, 0)), CAST(N'2023-09-27' AS Date), CAST(N'2023-10-01' AS Date), N'Chương trình giảm giá có hạn', CAST(N'2023-09-27' AS Date), NULL, 1)
INSERT [dbo].[ChuongTrinhGiamGiaHoaDon] ([Id_ChuongTrinhGiamGiaHoaDon], [tenChuongTrinh], [phanTramGiam], [soLuongSanPham], [soTienHoaDon], [ngayBatDau], [ngayKetThuc], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'fcbae7ba-aa99-4d45-9e6f-207b4ae11ea1', N'Chương trình vui tết trung thu', 10, 6, CAST(200000 AS Decimal(20, 0)), CAST(N'2023-09-27' AS Date), CAST(N'2023-10-01' AS Date), N'Chương trình giảm giá có hạn', CAST(N'2023-09-27' AS Date), NULL, 1)
INSERT [dbo].[ChuongTrinhGiamGiaHoaDon] ([Id_ChuongTrinhGiamGiaHoaDon], [tenChuongTrinh], [phanTramGiam], [soLuongSanPham], [soTienHoaDon], [ngayBatDau], [ngayKetThuc], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'f3548cf6-35e1-4ced-bc28-316c612224b3', N'Chương trình khai xuân giảm giá hóa đơn', 5, 4, CAST(300000 AS Decimal(20, 0)), CAST(N'2023-09-27' AS Date), CAST(N'2023-10-01' AS Date), N'Chương trình giảm giá có hạn', CAST(N'2023-09-27' AS Date), NULL, 1)
INSERT [dbo].[ChuongTrinhGiamGiaHoaDon] ([Id_ChuongTrinhGiamGiaHoaDon], [tenChuongTrinh], [phanTramGiam], [soLuongSanPham], [soTienHoaDon], [ngayBatDau], [ngayKetThuc], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'fbef3850-6ba8-4477-8a50-38f531840010', N'Chương trình khai chương quán', 5, 4, CAST(300000 AS Decimal(20, 0)), CAST(N'2023-09-27' AS Date), CAST(N'2023-10-01' AS Date), N'Chương trình giảm giá có hạn', CAST(N'2023-09-27' AS Date), NULL, 1)
GO
INSERT [dbo].[CoGiay] ([Id_CoGiay], [tenCoGiay], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'bbd8ccc7-e45c-459d-9ac1-3d010a25ad51', N'Cổ giầy thấp Miko dưới gót', N'Ôm sát c? chân', CAST(N'2023-12-12' AS Date), CAST(N'1900-01-01' AS Date), 1)
INSERT [dbo].[CoGiay] ([Id_CoGiay], [tenCoGiay], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'b50e8b5a-6055-4af8-a7fa-4fad02452716', N'Cổ giầy cao Mizuno', N'Ôm sát c? chân', CAST(N'2023-12-12' AS Date), CAST(N'1900-01-01' AS Date), 1)
INSERT [dbo].[CoGiay] ([Id_CoGiay], [tenCoGiay], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'20bffd35-05d0-444d-a21a-7001eea0caa1', N'Cổ giầy cao Mizuno 5D qua gót', N'Ôm sát c? chân', CAST(N'2023-12-12' AS Date), CAST(N'1900-01-01' AS Date), 1)
INSERT [dbo].[CoGiay] ([Id_CoGiay], [tenCoGiay], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'6bd4c8a1-5df7-4b09-97b8-83da50fb6743', N'Cổ giầy cao Mika', N'Ôm sát c? chân', CAST(N'2023-12-12' AS Date), CAST(N'1900-01-01' AS Date), 1)
INSERT [dbo].[CoGiay] ([Id_CoGiay], [tenCoGiay], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'2b825d10-c2fc-40ce-b22d-8bdd0dcfe7fb', N'demo', N'', CAST(N'2024-04-05' AS Date), CAST(N'2024-04-05' AS Date), 1)
INSERT [dbo].[CoGiay] ([Id_CoGiay], [tenCoGiay], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'0422dc34-1ae7-42ba-a493-d46c1c001e7a', N'Cổ giầy cao Simo', N'', CAST(N'2023-12-12' AS Date), CAST(N'1900-01-01' AS Date), 1)
INSERT [dbo].[CoGiay] ([Id_CoGiay], [tenCoGiay], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'b8e18e21-9e18-4200-9fa5-de439d328959', N'Cổ giầy cao Miko', N'Ôm sát c? chân', CAST(N'2023-12-12' AS Date), CAST(N'1900-01-01' AS Date), 1)
INSERT [dbo].[CoGiay] ([Id_CoGiay], [tenCoGiay], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'8f1c7883-c6ec-4626-a40a-e07de39d3449', N'Cổ giầy thấp Mika', N'Ôm sát c? chân', CAST(N'2023-12-12' AS Date), CAST(N'1900-01-01' AS Date), 1)
INSERT [dbo].[CoGiay] ([Id_CoGiay], [tenCoGiay], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'cc9d2124-2155-4442-8cf1-e1ef2be5ef66', N'Cổ giầy trung Mizuno', N'', CAST(N'2023-12-12' AS Date), CAST(N'1900-01-01' AS Date), 1)
INSERT [dbo].[CoGiay] ([Id_CoGiay], [tenCoGiay], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'45239319-f4d5-4dfc-84d9-f2437d5520ff', N'Cổ giầy thấp Mizuno', N'Ôm khít c? chân', CAST(N'2023-12-12' AS Date), CAST(N'1900-01-01' AS Date), 1)
GO
INSERT [dbo].[CongDung] ([Id_CongDung], [tenCongDung], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'210b0c38-561f-4666-96f7-0c5f4452c44d', N'Hỗ trợ đỡ bước 1 có cảm giác', N'Tốt ốm chân', CAST(N'2023-10-21' AS Date), CAST(N'1900-01-01' AS Date), 1)
INSERT [dbo].[CongDung] ([Id_CongDung], [tenCongDung], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'2d0e6548-d5b6-4860-b24a-661a805f2e52', N'Chống trượt', N'Tốt ốm chân', CAST(N'2023-10-10' AS Date), CAST(N'1900-01-01' AS Date), 0)
INSERT [dbo].[CongDung] ([Id_CongDung], [tenCongDung], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'd6187c96-68ce-4d93-9617-7a9f63a4c733', N'Tăng sự êm chân, giảm thiểu sự chấn thương', N'Tốt ốm chân', CAST(N'2023-10-02' AS Date), CAST(N'1900-01-01' AS Date), 1)
INSERT [dbo].[CongDung] ([Id_CongDung], [tenCongDung], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'79aae7e8-d43f-4419-8fb8-7c9fa817b173', N'Chống va đập chấn thương đá bóng', N'Tốt ốm chân', CAST(N'2023-10-02' AS Date), CAST(N'1900-01-01' AS Date), 0)
INSERT [dbo].[CongDung] ([Id_CongDung], [tenCongDung], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'6d88e5f0-985c-4c34-a65f-a0804480c1a6', N'Hỗ trợ sút bóng tầm xa', N'Tốt ốm chân', CAST(N'2023-10-20' AS Date), CAST(N'1900-01-01' AS Date), 0)
INSERT [dbo].[CongDung] ([Id_CongDung], [tenCongDung], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'8c3d7a17-2064-4bc8-a0d5-c2ebf87bb0d2', N'Chống thấm mồ hôi chân', N'Tốt ốm chân', CAST(N'2023-10-02' AS Date), CAST(N'1900-01-01' AS Date), 1)
INSERT [dbo].[CongDung] ([Id_CongDung], [tenCongDung], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'b69d8024-123a-4c03-bb3b-d36721d3d973', N'Chống mướt không kích mũi chân', N'Tốt ốm chân', CAST(N'2023-10-02' AS Date), CAST(N'1900-01-01' AS Date), 1)
INSERT [dbo].[CongDung] ([Id_CongDung], [tenCongDung], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'842b2efd-36e2-4079-b9f9-f81fa88a6bf5', N'Giảm thiểu sự va đập đau với đối phương', N'Tốt ốm chân', CAST(N'2023-10-02' AS Date), CAST(N'1900-01-01' AS Date), 1)
INSERT [dbo].[CongDung] ([Id_CongDung], [tenCongDung], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'4a911a29-6b87-4c9f-bd11-fd0236964492', N'Chống thấm nước', N'', CAST(N'2023-10-05' AS Date), CAST(N'1900-01-01' AS Date), 1)
GO
INSERT [dbo].[DayGiay] ([Id_DayGiay], [tenDayGiay], [chieuDaiDayGiay], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'aa9f4a42-c4b5-45f8-adf0-1436c16022bd', N'Dây dây vải ', N'1m2', N'', CAST(N'1900-01-01' AS Date), CAST(N'1900-01-01' AS Date), 1)
INSERT [dbo].[DayGiay] ([Id_DayGiay], [tenDayGiay], [chieuDaiDayGiay], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'81aaf01b-15d5-490f-b463-2a05281794e5', N'Dây dây cao cấp ', N'400mm', N'', CAST(N'1900-01-01' AS Date), CAST(N'1900-01-01' AS Date), 1)
INSERT [dbo].[DayGiay] ([Id_DayGiay], [tenDayGiay], [chieuDaiDayGiay], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'babc9525-b018-4b00-b167-2cb8b32c0c48', N'Dây dây 6D ', N'300mm', N'', CAST(N'1900-01-01' AS Date), CAST(N'1900-01-01' AS Date), 1)
INSERT [dbo].[DayGiay] ([Id_DayGiay], [tenDayGiay], [chieuDaiDayGiay], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'fb7c553e-f8c6-4ea3-8092-39a174e263f8', N'Dây dây Mizuno xanh', N'800mm', N'', CAST(N'1900-01-01' AS Date), CAST(N'1900-01-01' AS Date), 1)
INSERT [dbo].[DayGiay] ([Id_DayGiay], [tenDayGiay], [chieuDaiDayGiay], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'97f24aaf-7cd7-414e-be55-6dba28b63f74', N'Dây dây Miko ', N'600mm', N'', CAST(N'1900-01-01' AS Date), CAST(N'1900-01-01' AS Date), 1)
INSERT [dbo].[DayGiay] ([Id_DayGiay], [tenDayGiay], [chieuDaiDayGiay], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'3410d6be-89d8-4206-b66f-6dc697c01899', N'Dây dây Mika ', N'1m', N'', CAST(N'1900-01-01' AS Date), CAST(N'1900-01-01' AS Date), 1)
INSERT [dbo].[DayGiay] ([Id_DayGiay], [tenDayGiay], [chieuDaiDayGiay], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'2c96a911-8804-4165-975c-bce9c2b1db4c', N'Dây dây Unisex ', N'600mm', N'', CAST(N'1900-01-01' AS Date), CAST(N'1900-01-01' AS Date), 1)
INSERT [dbo].[DayGiay] ([Id_DayGiay], [tenDayGiay], [chieuDaiDayGiay], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'501471f8-2009-44bd-b2aa-d700f5359171', N'Dây dây Ximo ', N'850mm', N'', CAST(N'1900-01-01' AS Date), CAST(N'1900-01-01' AS Date), 1)
INSERT [dbo].[DayGiay] ([Id_DayGiay], [tenDayGiay], [chieuDaiDayGiay], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'eff8a416-9830-499c-abf1-ed8ab21e1497', N'Dây dây 4D ', N'1m2', N'', CAST(N'1900-01-01' AS Date), CAST(N'1900-01-01' AS Date), 1)
GO
INSERT [dbo].[DeGiay] ([Id_DeGiay], [tenDeGiay], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'3789b9e3-58ce-46a1-a141-49168e311243', N'Giày đế đinh SG', N'Tốt', CAST(N'2021-12-02' AS Date), CAST(N'1900-01-01' AS Date), 1)
INSERT [dbo].[DeGiay] ([Id_DeGiay], [tenDeGiay], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'9f684d24-a897-4982-94ef-5337d5dfabaa', N'Giày đế đinh FG', N'Tốt', CAST(N'2021-12-02' AS Date), CAST(N'1900-01-01' AS Date), 1)
INSERT [dbo].[DeGiay] ([Id_DeGiay], [tenDeGiay], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'14746040-e5a7-478d-a9e8-64a7b293ec2c', N'Giày đế đinh IC', N'Tốt', CAST(N'2021-12-02' AS Date), CAST(N'1900-01-01' AS Date), 1)
INSERT [dbo].[DeGiay] ([Id_DeGiay], [tenDeGiay], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'18431a53-89b7-4850-a1df-6655f9acd4b0', N'Giày đế đinh TF', N'Tốt', CAST(N'2021-12-02' AS Date), CAST(N'1900-01-01' AS Date), 1)
INSERT [dbo].[DeGiay] ([Id_DeGiay], [tenDeGiay], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'a05f0a1b-09d6-4e9b-b793-adf4104fe9f4', N'Giày đế đinh AG', N'Tốt', CAST(N'2021-12-02' AS Date), CAST(N'1900-01-01' AS Date), 1)
INSERT [dbo].[DeGiay] ([Id_DeGiay], [tenDeGiay], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'5acf2c73-fdb0-494b-811f-e271710fb01d', N'Giày đế đinh HG', N'Tốt', CAST(N'2021-12-02' AS Date), CAST(N'1900-01-01' AS Date), 1)
INSERT [dbo].[DeGiay] ([Id_DeGiay], [tenDeGiay], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'ec165fed-5c26-4e16-8941-e46e4b75adfa', N'Giày đế đinh MG', N'Tốt', CAST(N'2021-12-02' AS Date), CAST(N'1900-01-01' AS Date), 1)
INSERT [dbo].[DeGiay] ([Id_DeGiay], [tenDeGiay], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'4b7247d5-b6d0-469b-adf5-f1c994d9e320', N'Giày đế đinh BC', N'Tốt', CAST(N'2021-12-02' AS Date), CAST(N'1900-01-01' AS Date), 1)
GO
INSERT [dbo].[DinhTanGiay] ([Id_DinhTanGiay], [tenDinhTanGiay], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'e1b1bf6e-114d-4c70-99b5-04d8bed3237e', N'Đinh tán giầy cao cấp GTA', N'', CAST(N'1900-01-01' AS Date), CAST(N'1900-01-01' AS Date), 1)
INSERT [dbo].[DinhTanGiay] ([Id_DinhTanGiay], [tenDinhTanGiay], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'4a0d40d3-cfeb-4de0-9cd7-2048150b66d2', N'Đinh tán giầy 12cm loại vừa', N'', CAST(N'1900-01-01' AS Date), CAST(N'1900-01-01' AS Date), 1)
INSERT [dbo].[DinhTanGiay] ([Id_DinhTanGiay], [tenDinhTanGiay], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'b9fe37d4-9a36-4894-a526-2277797dfde6', N'Đinh tán giầy Kio 10 mắt', N'', CAST(N'1900-01-01' AS Date), CAST(N'1900-01-01' AS Date), 1)
INSERT [dbo].[DinhTanGiay] ([Id_DinhTanGiay], [tenDinhTanGiay], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'42bb4c9d-6f51-42ca-8330-34767ebb9e2a', N'Đinh tán giầy 12 mắt đinh loại nhỏ', N'', CAST(N'1900-01-01' AS Date), CAST(N'1900-01-01' AS Date), 1)
INSERT [dbo].[DinhTanGiay] ([Id_DinhTanGiay], [tenDinhTanGiay], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'4f19d044-c25e-4e95-b36d-3a9096f65486', N'Đinh tán giầy 12cm loại vừa', N'', CAST(N'1900-01-01' AS Date), CAST(N'1900-01-01' AS Date), 1)
INSERT [dbo].[DinhTanGiay] ([Id_DinhTanGiay], [tenDinhTanGiay], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'b109267b-d16e-4121-9e47-8b2e4f1fd817', N'Đinh tán giầy cỡ vừa 6 mắt', N'', CAST(N'1900-01-01' AS Date), CAST(N'1900-01-01' AS Date), 1)
INSERT [dbo].[DinhTanGiay] ([Id_DinhTanGiay], [tenDinhTanGiay], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'841dab5f-8159-4525-b126-aaf7f34af135', N'Đinh tán giầy loại trung phổ biến', N'', CAST(N'1900-01-01' AS Date), CAST(N'1900-01-01' AS Date), 1)
INSERT [dbo].[DinhTanGiay] ([Id_DinhTanGiay], [tenDinhTanGiay], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'09f78f4a-a737-4066-af35-c47591144146', N'Đinh tán giầy cỡ lớn', N'', CAST(N'1900-01-01' AS Date), CAST(N'1900-01-01' AS Date), 1)
GO
INSERT [dbo].[Form] ([Id_Form], [tenForm], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'c9dd1892-ef5c-4ac1-8e9b-48fd2866f16e', N'Form đẹp mũi cao', N'', CAST(N'2023-10-01' AS Date), CAST(N'1900-01-01' AS Date), 0)
INSERT [dbo].[Form] ([Id_Form], [tenForm], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'bdf5cae5-1a6b-4aec-ba1d-5e1bce4c266c', N'Form đẹp chất cao cấp', N'', CAST(N'2023-10-01' AS Date), CAST(N'1900-01-01' AS Date), 1)
INSERT [dbo].[Form] ([Id_Form], [tenForm], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'bb5b394d-57fd-492d-868d-783ae8a2c9e8', N'Form đẹp chất lượng cao', N'', CAST(N'2023-10-01' AS Date), CAST(N'1900-01-01' AS Date), 1)
INSERT [dbo].[Form] ([Id_Form], [tenForm], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'3b37265a-10bf-46b6-b28d-7b05990b039a', N'Form giầy basic', N'', CAST(N'2023-10-01' AS Date), CAST(N'1900-01-01' AS Date), 1)
INSERT [dbo].[Form] ([Id_Form], [tenForm], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'90c429a2-10c4-41a2-9787-865f28fe0355', N'Form mẫu mã đẹp, đứng chân', N'', CAST(N'2023-10-01' AS Date), CAST(N'1900-01-01' AS Date), 1)
INSERT [dbo].[Form] ([Id_Form], [tenForm], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'94077991-3115-4dbd-b48c-ab50098d2b72', N'Form đẹp mẫu mã đa dạng', N'', CAST(N'2023-10-01' AS Date), CAST(N'1900-01-01' AS Date), 0)
INSERT [dbo].[Form] ([Id_Form], [tenForm], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'4ef74be6-8099-4ce8-86a2-e937611610bb', N'Form giầy đẹp cao cấp', N'', CAST(N'2023-10-01' AS Date), CAST(N'1900-01-01' AS Date), 0)
INSERT [dbo].[Form] ([Id_Form], [tenForm], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'5e5516f7-5886-4f15-b225-f2c90a7293ce', N'Form đẹp chất lượng', N'', CAST(N'2023-10-01' AS Date), CAST(N'1900-01-01' AS Date), 1)
GO
INSERT [dbo].[GiaoDichViChiTiet] ([Id_GiaoDichViChiTiet], [Id_ViTien], [Id_User], [maGiaoDichViChiTiet], [donGia], [ngayGiaoDich], [hinhThuc], [trangThai]) VALUES (N'd5353903-c02d-464f-95b5-1362d3409678', N'aa2f8036-f6dc-4521-820f-1592a4e8691c', NULL, N'GiaoDV45212414', CAST(225301 AS Decimal(20, 0)), CAST(N'2024-04-05T21:24:14.313' AS DateTime), 2, 1)
INSERT [dbo].[GiaoDichViChiTiet] ([Id_GiaoDichViChiTiet], [Id_ViTien], [Id_User], [maGiaoDichViChiTiet], [donGia], [ngayGiaoDich], [hinhThuc], [trangThai]) VALUES (N'd61fb885-ebc8-4de5-b683-202439906fda', N'a4bbc9c0-8227-4d50-b667-de72d3480237', NULL, N'GiaoDV16511', CAST(1000000 AS Decimal(20, 0)), CAST(N'2024-04-05T16:06:25.890' AS DateTime), 1, 1)
INSERT [dbo].[GiaoDichViChiTiet] ([Id_GiaoDichViChiTiet], [Id_ViTien], [Id_User], [maGiaoDichViChiTiet], [donGia], [ngayGiaoDich], [hinhThuc], [trangThai]) VALUES (N'30f5917f-bffe-4efe-b174-abbd29ce3bbf', N'a4bbc9c0-8227-4d50-b667-de72d3480237', NULL, N'GiaoDV451678', CAST(159401 AS Decimal(20, 0)), CAST(N'2024-04-05T16:07:08.060' AS DateTime), 2, 1)
INSERT [dbo].[GiaoDichViChiTiet] ([Id_GiaoDichViChiTiet], [Id_ViTien], [Id_User], [maGiaoDichViChiTiet], [donGia], [ngayGiaoDich], [hinhThuc], [trangThai]) VALUES (N'21a60e00-cec3-4b7d-9402-f87d2bf48113', N'aa2f8036-f6dc-4521-820f-1592a4e8691c', NULL, N'GiaoDV21237', CAST(1000000 AS Decimal(20, 0)), CAST(N'2024-04-05T21:23:44.480' AS DateTime), 1, 1)
GO
INSERT [dbo].[GiayTheThao] ([Id_GiayTheThao], [Id_Form], [Id_CongDung], [Id_ChatLieu], [Id_HuongDanBaoQuan], [Id_LotGiay], [Id_CoGiay], [Id_DeGiay], [Id_DayGiay], [Id_TrongLuong], [Id_ThuongHieu], [Id_KieuBuoc], [Id_DinhTanGiay], [gioiTinh], [tenGiayTheThao], [giaBan], [soTienGiamGia], [moTa], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'8c9eeac4-ea85-4916-bc45-161263c7cccd', N'bdf5cae5-1a6b-4aec-ba1d-5e1bce4c266c', N'210b0c38-561f-4666-96f7-0c5f4452c44d', N'ba731702-347a-4492-9215-1ad8094ed822', N'76070e87-3ade-477c-8ee3-117cf56c14e0', N'c61fdf3e-f5d0-48af-82c4-1e9c6c6a621c', N'bbd8ccc7-e45c-459d-9ac1-3d010a25ad51', N'3789b9e3-58ce-46a1-a141-49168e311243', N'aa9f4a42-c4b5-45f8-adf0-1436c16022bd', N'c1420e51-11b6-4a60-a422-209b26a2aa2d', N'be4bda37-1e99-4074-bb2d-066e73b7cae4', N'5d1608a7-716b-4711-bf45-08eeb4cf5e72', N'e1b1bf6e-114d-4c70-99b5-04d8bed3237e', N'Nữ', N'Giày thể thao nữ NUTT- AAW', CAST(490000 AS Decimal(20, 0)), NULL, N'', NULL, NULL, NULL, 0)
INSERT [dbo].[GiayTheThao] ([Id_GiayTheThao], [Id_Form], [Id_CongDung], [Id_ChatLieu], [Id_HuongDanBaoQuan], [Id_LotGiay], [Id_CoGiay], [Id_DeGiay], [Id_DayGiay], [Id_TrongLuong], [Id_ThuongHieu], [Id_KieuBuoc], [Id_DinhTanGiay], [gioiTinh], [tenGiayTheThao], [giaBan], [soTienGiamGia], [moTa], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'953e005a-4e89-4283-bf96-2598f9eeedf6', N'3b37265a-10bf-46b6-b28d-7b05990b039a', N'210b0c38-561f-4666-96f7-0c5f4452c44d', N'ba731702-347a-4492-9215-1ad8094ed822', N'76070e87-3ade-477c-8ee3-117cf56c14e0', N'c61fdf3e-f5d0-48af-82c4-1e9c6c6a621c', N'bbd8ccc7-e45c-459d-9ac1-3d010a25ad51', N'3789b9e3-58ce-46a1-a141-49168e311243', N'aa9f4a42-c4b5-45f8-adf0-1436c16022bd', N'c1420e51-11b6-4a60-a422-209b26a2aa2d', N'be4bda37-1e99-4074-bb2d-066e73b7cae4', N'5d1608a7-716b-4711-bf45-08eeb4cf5e72', N'e1b1bf6e-114d-4c70-99b5-04d8bed3237e', N'Nữ', N'Giày thể thao nữ  NUTT- W668', CAST(458000 AS Decimal(20, 0)), NULL, N'', NULL, NULL, NULL, 1)
INSERT [dbo].[GiayTheThao] ([Id_GiayTheThao], [Id_Form], [Id_CongDung], [Id_ChatLieu], [Id_HuongDanBaoQuan], [Id_LotGiay], [Id_CoGiay], [Id_DeGiay], [Id_DayGiay], [Id_TrongLuong], [Id_ThuongHieu], [Id_KieuBuoc], [Id_DinhTanGiay], [gioiTinh], [tenGiayTheThao], [giaBan], [soTienGiamGia], [moTa], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'b45416a1-ca62-4989-a249-41f977f56fcc', N'5e5516f7-5886-4f15-b225-f2c90a7293ce', N'210b0c38-561f-4666-96f7-0c5f4452c44d', N'ba731702-347a-4492-9215-1ad8094ed822', N'76070e87-3ade-477c-8ee3-117cf56c14e0', N'a95bc498-6f2d-4f31-a3bc-9fd6b6e959bb', N'bbd8ccc7-e45c-459d-9ac1-3d010a25ad51', N'3789b9e3-58ce-46a1-a141-49168e311243', N'97f24aaf-7cd7-414e-be55-6dba28b63f74', N'c1420e51-11b6-4a60-a422-209b26a2aa2d', N'be4bda37-1e99-4074-bb2d-066e73b7cae4', N'5d1608a7-716b-4711-bf45-08eeb4cf5e72', N'e1b1bf6e-114d-4c70-99b5-04d8bed3237e', N'Nữ', N'Giày thể thao nữ - 0507 Giày Thể Thao Nữ In', CAST(899990 AS Decimal(20, 0)), NULL, N'', NULL, NULL, NULL, 1)
INSERT [dbo].[GiayTheThao] ([Id_GiayTheThao], [Id_Form], [Id_CongDung], [Id_ChatLieu], [Id_HuongDanBaoQuan], [Id_LotGiay], [Id_CoGiay], [Id_DeGiay], [Id_DayGiay], [Id_TrongLuong], [Id_ThuongHieu], [Id_KieuBuoc], [Id_DinhTanGiay], [gioiTinh], [tenGiayTheThao], [giaBan], [soTienGiamGia], [moTa], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'9608c941-600f-4b29-84da-42774c2f125d', N'bdf5cae5-1a6b-4aec-ba1d-5e1bce4c266c', N'210b0c38-561f-4666-96f7-0c5f4452c44d', N'ba731702-347a-4492-9215-1ad8094ed822', N'76070e87-3ade-477c-8ee3-117cf56c14e0', N'c61fdf3e-f5d0-48af-82c4-1e9c6c6a621c', N'bbd8ccc7-e45c-459d-9ac1-3d010a25ad51', N'3789b9e3-58ce-46a1-a141-49168e311243', N'aa9f4a42-c4b5-45f8-adf0-1436c16022bd', N'c1420e51-11b6-4a60-a422-209b26a2aa2d', N'be4bda37-1e99-4074-bb2d-066e73b7cae4', N'5d1608a7-716b-4711-bf45-08eeb4cf5e72', N'e1b1bf6e-114d-4c70-99b5-04d8bed3237e', N'Nữ', N'Giày thể thao nữ NUTT- AAW', CAST(490000 AS Decimal(20, 0)), NULL, N'', NULL, NULL, NULL, 1)
INSERT [dbo].[GiayTheThao] ([Id_GiayTheThao], [Id_Form], [Id_CongDung], [Id_ChatLieu], [Id_HuongDanBaoQuan], [Id_LotGiay], [Id_CoGiay], [Id_DeGiay], [Id_DayGiay], [Id_TrongLuong], [Id_ThuongHieu], [Id_KieuBuoc], [Id_DinhTanGiay], [gioiTinh], [tenGiayTheThao], [giaBan], [soTienGiamGia], [moTa], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'f0f90998-adc8-4387-9541-6c3bf43e7d8f', N'5e5516f7-5886-4f15-b225-f2c90a7293ce', N'210b0c38-561f-4666-96f7-0c5f4452c44d', N'ba731702-347a-4492-9215-1ad8094ed822', N'76070e87-3ade-477c-8ee3-117cf56c14e0', N'c61fdf3e-f5d0-48af-82c4-1e9c6c6a621c', N'bbd8ccc7-e45c-459d-9ac1-3d010a25ad51', N'3789b9e3-58ce-46a1-a141-49168e311243', N'2c96a911-8804-4165-975c-bce9c2b1db4c', N'c1420e51-11b6-4a60-a422-209b26a2aa2d', N'be4bda37-1e99-4074-bb2d-066e73b7cae4', N'a415b7cc-dc45-427e-b60c-b7999dbe9543', N'e1b1bf6e-114d-4c70-99b5-04d8bed3237e', N'Nữ', N'Giày thể thao nữ MWC NUTT- A148', CAST(550000 AS Decimal(20, 0)), NULL, N'', NULL, NULL, NULL, 1)
INSERT [dbo].[GiayTheThao] ([Id_GiayTheThao], [Id_Form], [Id_CongDung], [Id_ChatLieu], [Id_HuongDanBaoQuan], [Id_LotGiay], [Id_CoGiay], [Id_DeGiay], [Id_DayGiay], [Id_TrongLuong], [Id_ThuongHieu], [Id_KieuBuoc], [Id_DinhTanGiay], [gioiTinh], [tenGiayTheThao], [giaBan], [soTienGiamGia], [moTa], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'31dfba36-f00d-4e72-aac0-70c8a95b5ba5', N'bdf5cae5-1a6b-4aec-ba1d-5e1bce4c266c', N'210b0c38-561f-4666-96f7-0c5f4452c44d', N'ba731702-347a-4492-9215-1ad8094ed822', N'76070e87-3ade-477c-8ee3-117cf56c14e0', N'c61fdf3e-f5d0-48af-82c4-1e9c6c6a621c', N'bbd8ccc7-e45c-459d-9ac1-3d010a25ad51', N'3789b9e3-58ce-46a1-a141-49168e311243', N'aa9f4a42-c4b5-45f8-adf0-1436c16022bd', N'c1420e51-11b6-4a60-a422-209b26a2aa2d', N'be4bda37-1e99-4074-bb2d-066e73b7cae4', N'5d1608a7-716b-4711-bf45-08eeb4cf5e72', N'e1b1bf6e-114d-4c70-99b5-04d8bed3237e', N'Nam', N'Giày Thể Thao Nam MWC NATT- 5460', CAST(100000 AS Decimal(20, 0)), NULL, N'dsffdssd', NULL, NULL, NULL, 1)
INSERT [dbo].[GiayTheThao] ([Id_GiayTheThao], [Id_Form], [Id_CongDung], [Id_ChatLieu], [Id_HuongDanBaoQuan], [Id_LotGiay], [Id_CoGiay], [Id_DeGiay], [Id_DayGiay], [Id_TrongLuong], [Id_ThuongHieu], [Id_KieuBuoc], [Id_DinhTanGiay], [gioiTinh], [tenGiayTheThao], [giaBan], [soTienGiamGia], [moTa], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'db218b22-72c6-4442-a89d-7e8ad94d471d', N'bdf5cae5-1a6b-4aec-ba1d-5e1bce4c266c', N'210b0c38-561f-4666-96f7-0c5f4452c44d', N'ba731702-347a-4492-9215-1ad8094ed822', N'76070e87-3ade-477c-8ee3-117cf56c14e0', N'c61fdf3e-f5d0-48af-82c4-1e9c6c6a621c', N'bbd8ccc7-e45c-459d-9ac1-3d010a25ad51', N'3789b9e3-58ce-46a1-a141-49168e311243', N'aa9f4a42-c4b5-45f8-adf0-1436c16022bd', N'c1420e51-11b6-4a60-a422-209b26a2aa2d', N'be4bda37-1e99-4074-bb2d-066e73b7cae4', N'5d1608a7-716b-4711-bf45-08eeb4cf5e72', N'e1b1bf6e-114d-4c70-99b5-04d8bed3237e', N'Nam', N'Giày Thể Thao Nam MWC NATT- 5498', CAST(100000 AS Decimal(20, 0)), NULL, N'dsffdssd', NULL, NULL, NULL, 1)
INSERT [dbo].[GiayTheThao] ([Id_GiayTheThao], [Id_Form], [Id_CongDung], [Id_ChatLieu], [Id_HuongDanBaoQuan], [Id_LotGiay], [Id_CoGiay], [Id_DeGiay], [Id_DayGiay], [Id_TrongLuong], [Id_ThuongHieu], [Id_KieuBuoc], [Id_DinhTanGiay], [gioiTinh], [tenGiayTheThao], [giaBan], [soTienGiamGia], [moTa], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'256fca1a-9a0e-4808-af92-8118c20cbc93', N'bdf5cae5-1a6b-4aec-ba1d-5e1bce4c266c', N'210b0c38-561f-4666-96f7-0c5f4452c44d', N'ba731702-347a-4492-9215-1ad8094ed822', N'76070e87-3ade-477c-8ee3-117cf56c14e0', N'c61fdf3e-f5d0-48af-82c4-1e9c6c6a621c', N'bbd8ccc7-e45c-459d-9ac1-3d010a25ad51', N'3789b9e3-58ce-46a1-a141-49168e311243', N'aa9f4a42-c4b5-45f8-adf0-1436c16022bd', N'c1420e51-11b6-4a60-a422-209b26a2aa2d', N'be4bda37-1e99-4074-bb2d-066e73b7cae4', N'5d1608a7-716b-4711-bf45-08eeb4cf5e72', N'e1b1bf6e-114d-4c70-99b5-04d8bed3237e', N'Nam', N'Giày Thể Thao Nam  JKA- 442', CAST(780000 AS Decimal(20, 0)), NULL, N'', NULL, NULL, NULL, 1)
INSERT [dbo].[GiayTheThao] ([Id_GiayTheThao], [Id_Form], [Id_CongDung], [Id_ChatLieu], [Id_HuongDanBaoQuan], [Id_LotGiay], [Id_CoGiay], [Id_DeGiay], [Id_DayGiay], [Id_TrongLuong], [Id_ThuongHieu], [Id_KieuBuoc], [Id_DinhTanGiay], [gioiTinh], [tenGiayTheThao], [giaBan], [soTienGiamGia], [moTa], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'a40efa3b-2b08-444d-91c0-b1063e10e30d', N'3b37265a-10bf-46b6-b28d-7b05990b039a', N'210b0c38-561f-4666-96f7-0c5f4452c44d', N'ba731702-347a-4492-9215-1ad8094ed822', N'566efe24-a572-4b6b-b296-bd052c39a6ea', N'a95bc498-6f2d-4f31-a3bc-9fd6b6e959bb', N'bbd8ccc7-e45c-459d-9ac1-3d010a25ad51', N'3789b9e3-58ce-46a1-a141-49168e311243', N'aa9f4a42-c4b5-45f8-adf0-1436c16022bd', N'c1420e51-11b6-4a60-a422-209b26a2aa2d', N'be4bda37-1e99-4074-bb2d-066e73b7cae4', N'5d1608a7-716b-4711-bf45-08eeb4cf5e72', N'e1b1bf6e-114d-4c70-99b5-04d8bed3237e', N'Nam', N'demo sửa sp', CAST(9999999 AS Decimal(20, 0)), NULL, N'', NULL, NULL, NULL, 1)
INSERT [dbo].[GiayTheThao] ([Id_GiayTheThao], [Id_Form], [Id_CongDung], [Id_ChatLieu], [Id_HuongDanBaoQuan], [Id_LotGiay], [Id_CoGiay], [Id_DeGiay], [Id_DayGiay], [Id_TrongLuong], [Id_ThuongHieu], [Id_KieuBuoc], [Id_DinhTanGiay], [gioiTinh], [tenGiayTheThao], [giaBan], [soTienGiamGia], [moTa], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'2bf5c4cd-c3ca-4f93-9035-baeb811cb1ff', N'bb5b394d-57fd-492d-868d-783ae8a2c9e8', N'842b2efd-36e2-4079-b9f9-f81fa88a6bf5', N'b5af92b6-85b0-41ab-beb0-ee3852df4400', N'6928038e-a395-4b1f-a1f1-18ea9a1865dd', N'a95bc498-6f2d-4f31-a3bc-9fd6b6e959bb', N'6bd4c8a1-5df7-4b09-97b8-83da50fb6743', N'a05f0a1b-09d6-4e9b-b793-adf4104fe9f4', N'3410d6be-89d8-4206-b66f-6dc697c01899', N'8bc761ef-35e9-4647-a1c5-7471be4321ce', N'7101160a-a30e-43b8-9f40-95f7c43461f2', N'bef12da0-ca24-4a2d-be8c-b492b9f16ade', N'42bb4c9d-6f51-42ca-8330-34767ebb9e2a', N'Nam', N'Giày Thể Thao Nam MWC NATT- 5486', CAST(2300000 AS Decimal(20, 0)), NULL, N'Giày được thiết kế dáng cổ lững thắt dây năng động,mặt giày sử dụng da tổng hợp,in chữ thời trang.

Đặc biệt sản phẩm sử dụng chất liệu cao cấp có độ bền tối ưu giúp bạn thoải mái trong mọi hoàn cảnh.

Giày thoáng khí cả mặt trong lẫn mặt ngoài khiến người mang luôn cảm thấy dễ chịu dù hoạt động trong thời gian dài.', NULL, NULL, NULL, 1)
INSERT [dbo].[GiayTheThao] ([Id_GiayTheThao], [Id_Form], [Id_CongDung], [Id_ChatLieu], [Id_HuongDanBaoQuan], [Id_LotGiay], [Id_CoGiay], [Id_DeGiay], [Id_DayGiay], [Id_TrongLuong], [Id_ThuongHieu], [Id_KieuBuoc], [Id_DinhTanGiay], [gioiTinh], [tenGiayTheThao], [giaBan], [soTienGiamGia], [moTa], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'6edd8789-1930-4c83-b863-e58d91de7031', N'bdf5cae5-1a6b-4aec-ba1d-5e1bce4c266c', N'210b0c38-561f-4666-96f7-0c5f4452c44d', N'ba731702-347a-4492-9215-1ad8094ed822', N'76070e87-3ade-477c-8ee3-117cf56c14e0', N'c61fdf3e-f5d0-48af-82c4-1e9c6c6a621c', N'bbd8ccc7-e45c-459d-9ac1-3d010a25ad51', N'3789b9e3-58ce-46a1-a141-49168e311243', N'aa9f4a42-c4b5-45f8-adf0-1436c16022bd', N'c1420e51-11b6-4a60-a422-209b26a2aa2d', N'be4bda37-1e99-4074-bb2d-066e73b7cae4', N'5d1608a7-716b-4711-bf45-08eeb4cf5e72', N'e1b1bf6e-114d-4c70-99b5-04d8bed3237e', N'Nữ', N'Giày sandal nam MWC NASD- 7076 Sandal Nam', CAST(900000 AS Decimal(20, 0)), NULL, N'', NULL, NULL, NULL, 1)
GO
INSERT [dbo].[GiayTheThaoChiTiet] ([Id_GiayTheThaoChiTiet], [Id_GiayTheThao], [Id_Size], [Id_MauSac], [soLuong], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'48d902b2-0e18-4579-82f4-21558a3c9ab1', N'2bf5c4cd-c3ca-4f93-9035-baeb811cb1ff', N'68e96a6e-404c-4a33-88dc-1b1fa0a8f8c4', N'914b8334-89e6-4bc7-afd3-75f2d30edfa2', 22, NULL, NULL, NULL, 0)
INSERT [dbo].[GiayTheThaoChiTiet] ([Id_GiayTheThaoChiTiet], [Id_GiayTheThao], [Id_Size], [Id_MauSac], [soLuong], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'083b006b-801b-45f5-9564-2e59b2c09c6f', N'31dfba36-f00d-4e72-aac0-70c8a95b5ba5', N'e07d2324-d196-4ddf-a011-ef210decbc40', N'04e28317-8b26-4dca-b513-708ae618778a', 11, NULL, NULL, NULL, 0)
INSERT [dbo].[GiayTheThaoChiTiet] ([Id_GiayTheThaoChiTiet], [Id_GiayTheThao], [Id_Size], [Id_MauSac], [soLuong], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'46e2d333-d55e-4f7a-9d3c-32d5957dff29', N'db218b22-72c6-4442-a89d-7e8ad94d471d', N'e07d2324-d196-4ddf-a011-ef210decbc40', N'ebd6db71-1535-4d14-8380-043891c668a2', 48, NULL, NULL, NULL, 0)
INSERT [dbo].[GiayTheThaoChiTiet] ([Id_GiayTheThaoChiTiet], [Id_GiayTheThao], [Id_Size], [Id_MauSac], [soLuong], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'5627ed45-be02-4327-89fb-39fb8f8b12bf', N'31dfba36-f00d-4e72-aac0-70c8a95b5ba5', N'68e96a6e-404c-4a33-88dc-1b1fa0a8f8c4', N'ebd6db71-1535-4d14-8380-043891c668a2', 62, NULL, NULL, NULL, 0)
INSERT [dbo].[GiayTheThaoChiTiet] ([Id_GiayTheThaoChiTiet], [Id_GiayTheThao], [Id_Size], [Id_MauSac], [soLuong], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'19ebcb3c-ec74-4219-bc9c-3fcc34b6dfe6', N'31dfba36-f00d-4e72-aac0-70c8a95b5ba5', N'9550a084-dc93-4fc5-9b5b-b223184cd663', N'2fbcb2eb-7202-4da8-ae5a-a3adbcd782f0', 22, NULL, NULL, NULL, 0)
INSERT [dbo].[GiayTheThaoChiTiet] ([Id_GiayTheThaoChiTiet], [Id_GiayTheThao], [Id_Size], [Id_MauSac], [soLuong], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'75e73305-c803-4cc3-809d-42023da38ad5', N'b45416a1-ca62-4989-a249-41f977f56fcc', N'68e96a6e-404c-4a33-88dc-1b1fa0a8f8c4', N'ebd6db71-1535-4d14-8380-043891c668a2', 55, NULL, NULL, NULL, 0)
INSERT [dbo].[GiayTheThaoChiTiet] ([Id_GiayTheThaoChiTiet], [Id_GiayTheThao], [Id_Size], [Id_MauSac], [soLuong], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'c8598d51-c293-4d84-ae53-44e3c73a60eb', N'256fca1a-9a0e-4808-af92-8118c20cbc93', N'68e96a6e-404c-4a33-88dc-1b1fa0a8f8c4', N'01202fe9-cf88-4fac-9e48-4af2003b8769', 87, NULL, NULL, NULL, 0)
INSERT [dbo].[GiayTheThaoChiTiet] ([Id_GiayTheThaoChiTiet], [Id_GiayTheThao], [Id_Size], [Id_MauSac], [soLuong], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'e2b752c8-dbe6-4f9f-844c-56a072afc0d5', N'a40efa3b-2b08-444d-91c0-b1063e10e30d', N'e8ac5a79-ce62-44fd-9058-8b0b18a53b32', N'ebd6db71-1535-4d14-8380-043891c668a2', 55, NULL, NULL, NULL, 0)
INSERT [dbo].[GiayTheThaoChiTiet] ([Id_GiayTheThaoChiTiet], [Id_GiayTheThao], [Id_Size], [Id_MauSac], [soLuong], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'643b2097-c662-40a9-89bd-5e85b9d291fe', N'db218b22-72c6-4442-a89d-7e8ad94d471d', N'ff026d43-6d03-44e6-8b1d-4af531c230d0', N'914b8334-89e6-4bc7-afd3-75f2d30edfa2', 659, NULL, NULL, NULL, 0)
INSERT [dbo].[GiayTheThaoChiTiet] ([Id_GiayTheThaoChiTiet], [Id_GiayTheThao], [Id_Size], [Id_MauSac], [soLuong], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'90798388-cb48-4dfd-96fc-69a43e429e44', N'953e005a-4e89-4283-bf96-2598f9eeedf6', N'68e96a6e-404c-4a33-88dc-1b1fa0a8f8c4', N'ebd6db71-1535-4d14-8380-043891c668a2', 44, NULL, NULL, NULL, 0)
INSERT [dbo].[GiayTheThaoChiTiet] ([Id_GiayTheThaoChiTiet], [Id_GiayTheThao], [Id_Size], [Id_MauSac], [soLuong], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'726c3cef-d0dc-446b-9d75-9081213fb980', N'a40efa3b-2b08-444d-91c0-b1063e10e30d', N'959080bc-0ea6-4ab0-8a0e-b6c2e4b62c7d', N'01202fe9-cf88-4fac-9e48-4af2003b8769', 22, NULL, NULL, NULL, 0)
INSERT [dbo].[GiayTheThaoChiTiet] ([Id_GiayTheThaoChiTiet], [Id_GiayTheThao], [Id_Size], [Id_MauSac], [soLuong], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'b4700ad3-e8d8-4028-97db-921ac61b6746', N'9608c941-600f-4b29-84da-42774c2f125d', N'68e96a6e-404c-4a33-88dc-1b1fa0a8f8c4', N'ebd6db71-1535-4d14-8380-043891c668a2', 43, NULL, NULL, NULL, 0)
INSERT [dbo].[GiayTheThaoChiTiet] ([Id_GiayTheThaoChiTiet], [Id_GiayTheThao], [Id_Size], [Id_MauSac], [soLuong], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'c271a9e8-0ae0-4fbd-a967-926d2f235aa8', N'6edd8789-1930-4c83-b863-e58d91de7031', N'68e96a6e-404c-4a33-88dc-1b1fa0a8f8c4', N'ebd6db71-1535-4d14-8380-043891c668a2', 55, NULL, NULL, NULL, 0)
INSERT [dbo].[GiayTheThaoChiTiet] ([Id_GiayTheThaoChiTiet], [Id_GiayTheThao], [Id_Size], [Id_MauSac], [soLuong], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'07b33300-88e3-4aa8-bfcc-b2f52c6162d8', N'2bf5c4cd-c3ca-4f93-9035-baeb811cb1ff', N'ff026d43-6d03-44e6-8b1d-4af531c230d0', N'01202fe9-cf88-4fac-9e48-4af2003b8769', 66, NULL, NULL, NULL, 0)
INSERT [dbo].[GiayTheThaoChiTiet] ([Id_GiayTheThaoChiTiet], [Id_GiayTheThao], [Id_Size], [Id_MauSac], [soLuong], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'f9121049-abcc-4599-83ee-ca86bb7f3b5e', N'2bf5c4cd-c3ca-4f93-9035-baeb811cb1ff', N'e07d2324-d196-4ddf-a011-ef210decbc40', N'2fbcb2eb-7202-4da8-ae5a-a3adbcd782f0', 44, NULL, NULL, NULL, 0)
INSERT [dbo].[GiayTheThaoChiTiet] ([Id_GiayTheThaoChiTiet], [Id_GiayTheThao], [Id_Size], [Id_MauSac], [soLuong], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'a3623689-3a5c-46ff-a82c-cbd874f725c6', N'f0f90998-adc8-4387-9541-6c3bf43e7d8f', N'68e96a6e-404c-4a33-88dc-1b1fa0a8f8c4', N'ebd6db71-1535-4d14-8380-043891c668a2', 66, NULL, NULL, NULL, 0)
GO
INSERT [dbo].[GioHang] ([Id_GioHang], [Id_User], [Id_KhachHang], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'99f03ead-978e-4722-8654-1f499684b291', NULL, N'79ca583b-09bd-4099-b4ca-ccb3260418fb', NULL, NULL, NULL, 0)
INSERT [dbo].[GioHang] ([Id_GioHang], [Id_User], [Id_KhachHang], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'8a199b61-ae26-4f37-8bc2-489ee9cec9da', NULL, N'518eb580-2536-4154-a173-1252a74454f3', NULL, NULL, NULL, 0)
INSERT [dbo].[GioHang] ([Id_GioHang], [Id_User], [Id_KhachHang], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'2409a9cc-96b8-4ffa-b519-a40d15fa62f2', NULL, N'73abc162-487d-4139-b0d7-701fafe24219', NULL, NULL, NULL, 0)
INSERT [dbo].[GioHang] ([Id_GioHang], [Id_User], [Id_KhachHang], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'7314fa16-dad2-4fe5-891d-be1ec1a74aa4', NULL, N'523d59dd-d4a8-4050-94f2-af561840e16a', NULL, NULL, NULL, 0)
GO
INSERT [dbo].[GioHangChiTiet] ([Id_GioHangChiTiet], [Id_GiayTheThaoChiTiet], [Id_GioHang], [soLuong], [donGia], [donGiaKhiGiam], [ngayTao], [ngaySua], [trangThai]) VALUES (N'1cb27135-6744-4473-96ee-0935cf7e8965', N'46e2d333-d55e-4f7a-9d3c-32d5957dff29', N'8a199b61-ae26-4f37-8bc2-489ee9cec9da', 1, CAST(100000 AS Decimal(20, 0)), NULL, NULL, NULL, 0)
INSERT [dbo].[GioHangChiTiet] ([Id_GioHangChiTiet], [Id_GiayTheThaoChiTiet], [Id_GioHang], [soLuong], [donGia], [donGiaKhiGiam], [ngayTao], [ngaySua], [trangThai]) VALUES (N'128ee636-4b76-4fe8-a5f5-1dc10d37d3a5', N'90798388-cb48-4dfd-96fc-69a43e429e44', N'8a199b61-ae26-4f37-8bc2-489ee9cec9da', 2, CAST(916000 AS Decimal(20, 0)), NULL, NULL, NULL, 0)
GO
INSERT [dbo].[HoaDon] ([Id_HoaDon], [Id_KhachHang], [Id_User], [maHoaDon], [thanhTien], [phiShip], [ghiChu], [mess], [ngayTao], [ngayThanhToan], [ngaySua], [hinhThuc], [hinhThucThanhToan], [trangThaiMoney], [trangThai]) VALUES (N'927e19c6-1c52-40d4-8d42-29c2b2f068d8', N'79ca583b-09bd-4099-b4ca-ccb3260418fb', NULL, N'MaHD212214', CAST(490000 AS Decimal(20, 0)), CAST(25301 AS Decimal(20, 0)), N'Tên người nhận hàng: democodeabcSố điện thoại nhận hàng: 0988877774, Địa chỉ giao hàng: Phường Đồng Nguyên,Thị xã Từ Sơn,Bắc Ninh', N'', CAST(N'2024-04-05T21:22:14.120' AS DateTime), CAST(N'2024-04-05T21:22:14.120' AS DateTime), NULL, 0, 2, 1, 1)
INSERT [dbo].[HoaDon] ([Id_HoaDon], [Id_KhachHang], [Id_User], [maHoaDon], [thanhTien], [phiShip], [ghiChu], [mess], [ngayTao], [ngayThanhToan], [ngaySua], [hinhThuc], [hinhThucThanhToan], [trangThaiMoney], [trangThai]) VALUES (N'c2241c86-f783-4668-9549-57df6825e982', N'79ca583b-09bd-4099-b4ca-ccb3260418fb', NULL, N'MaHD205247', CAST(354699 AS Decimal(20, 0)), CAST(25301 AS Decimal(20, 0)), N'Tên khách hàng: democodeabc,Số điện thoại nhận hàng: 0988877774, Địa chỉ giao hàng: Phường Đồng Nguyên,Thị xã Từ Sơn,Bắc Ninh', N'abcd', CAST(N'2024-04-05T20:53:31.507' AS DateTime), CAST(N'2024-04-05T20:53:31.507' AS DateTime), NULL, 0, 3, 0, 2)
INSERT [dbo].[HoaDon] ([Id_HoaDon], [Id_KhachHang], [Id_User], [maHoaDon], [thanhTien], [phiShip], [ghiChu], [mess], [ngayTao], [ngayThanhToan], [ngaySua], [hinhThuc], [hinhThucThanhToan], [trangThaiMoney], [trangThai]) VALUES (N'ef312c92-d9fd-4269-bed4-626208e49f2d', N'79ca583b-09bd-4099-b4ca-ccb3260418fb', NULL, N'MaHD211156', CAST(4499950 AS Decimal(20, 0)), CAST(-224998 AS Decimal(20, 0)), N'Tên người nhận hàng: democodeabcSố điện thoại nhận hàng: 0988877774, Địa chỉ giao hàng: Phường Đồng Nguyên,Thị xã Từ Sơn,Bắc Ninh', N'', CAST(N'2024-04-05T21:11:56.173' AS DateTime), CAST(N'2024-04-05T21:11:56.173' AS DateTime), NULL, 0, 2, 0, 4)
INSERT [dbo].[HoaDon] ([Id_HoaDon], [Id_KhachHang], [Id_User], [maHoaDon], [thanhTien], [phiShip], [ghiChu], [mess], [ngayTao], [ngayThanhToan], [ngaySua], [hinhThuc], [hinhThucThanhToan], [trangThaiMoney], [trangThai]) VALUES (N'bdf5b20d-a5dc-4ff0-aadf-922923554cb0', N'79ca583b-09bd-4099-b4ca-ccb3260418fb', NULL, N'MaHD211043', CAST(100000 AS Decimal(20, 0)), CAST(25301 AS Decimal(20, 0)), N'Tên khách hàng: democodeabc,Số điện thoại nhận hàng: 0988877774, Địa chỉ giao hàng: Phường Đồng Nguyên,Thị xã Từ Sơn,Bắc Ninh', N'', CAST(N'2024-04-05T21:10:53.600' AS DateTime), CAST(N'2024-04-05T21:10:53.600' AS DateTime), NULL, 0, 3, 0, 1)
INSERT [dbo].[HoaDon] ([Id_HoaDon], [Id_KhachHang], [Id_User], [maHoaDon], [thanhTien], [phiShip], [ghiChu], [mess], [ngayTao], [ngayThanhToan], [ngaySua], [hinhThuc], [hinhThucThanhToan], [trangThaiMoney], [trangThai]) VALUES (N'297d9f4b-f170-4417-8cc7-9439984df993', N'79ca583b-09bd-4099-b4ca-ccb3260418fb', NULL, N'MaHD21209', CAST(4344652 AS Decimal(20, 0)), CAST(25301 AS Decimal(20, 0)), N'Tên khách hàng: democodeabc,Số điện thoại nhận hàng: 0988877774, Địa chỉ giao hàng: Phường Đồng Nguyên,Thị xã Từ Sơn,Bắc Ninh', N'', NULL, CAST(N'2024-04-05T21:22:48.710' AS DateTime), NULL, 0, 3, 0, 5)
INSERT [dbo].[HoaDon] ([Id_HoaDon], [Id_KhachHang], [Id_User], [maHoaDon], [thanhTien], [phiShip], [ghiChu], [mess], [ngayTao], [ngayThanhToan], [ngaySua], [hinhThuc], [hinhThucThanhToan], [trangThaiMoney], [trangThai]) VALUES (N'd0938fe4-6783-4776-b205-a017d335acac', N'79ca583b-09bd-4099-b4ca-ccb3260418fb', NULL, N'MaHD212039', CAST(2450000 AS Decimal(20, 0)), CAST(25301 AS Decimal(20, 0)), N'Tên người nhận hàng: democodeabcSố điện thoại nhận hàng: 0988877774, Địa chỉ giao hàng: Phường Đồng Nguyên,Thị xã Từ Sơn,Bắc Ninh', N'', CAST(N'2024-04-05T21:20:39.313' AS DateTime), CAST(N'2024-04-05T21:20:39.313' AS DateTime), NULL, 0, 2, 0, 0)
INSERT [dbo].[HoaDon] ([Id_HoaDon], [Id_KhachHang], [Id_User], [maHoaDon], [thanhTien], [phiShip], [ghiChu], [mess], [ngayTao], [ngayThanhToan], [ngaySua], [hinhThuc], [hinhThucThanhToan], [trangThaiMoney], [trangThai]) VALUES (N'cacaa295-9203-445a-b6c9-a4ae6e5e1187', N'79ca583b-09bd-4099-b4ca-ccb3260418fb', NULL, N'MaHD211249', CAST(490000 AS Decimal(20, 0)), CAST(25301 AS Decimal(20, 0)), N'Tên người nhận hàng: democodeabcSố điện thoại nhận hàng: 0988877774, Địa chỉ giao hàng: Phường Đồng Nguyên,Thị xã Từ Sơn,Bắc Ninh', N'', CAST(N'2024-04-05T21:12:49.950' AS DateTime), CAST(N'2024-04-05T21:12:49.950' AS DateTime), NULL, 0, 2, 0, 0)
INSERT [dbo].[HoaDon] ([Id_HoaDon], [Id_KhachHang], [Id_User], [maHoaDon], [thanhTien], [phiShip], [ghiChu], [mess], [ngayTao], [ngayThanhToan], [ngaySua], [hinhThuc], [hinhThucThanhToan], [trangThaiMoney], [trangThai]) VALUES (N'13cc38d8-9713-4b4e-95ae-a5eb2fb8dae1', N'79ca583b-09bd-4099-b4ca-ccb3260418fb', NULL, N'MaHD211313', CAST(4989950 AS Decimal(20, 0)), CAST(25301 AS Decimal(20, 0)), N'Tên người nhận hàng: democodeabcSố điện thoại nhận hàng: 0988877774, Địa chỉ giao hàng: Phường Đồng Nguyên,Thị xã Từ Sơn,Bắc Ninh', N'', CAST(N'2024-04-05T21:13:13.613' AS DateTime), CAST(N'2024-04-05T21:13:13.613' AS DateTime), NULL, 0, 2, 0, 0)
INSERT [dbo].[HoaDon] ([Id_HoaDon], [Id_KhachHang], [Id_User], [maHoaDon], [thanhTien], [phiShip], [ghiChu], [mess], [ngayTao], [ngayThanhToan], [ngaySua], [hinhThuc], [hinhThucThanhToan], [trangThaiMoney], [trangThai]) VALUES (N'9c3d5898-7db9-4349-bc45-a887b8313179', N'79ca583b-09bd-4099-b4ca-ccb3260418fb', NULL, N'MaHD212142', CAST(2450000 AS Decimal(20, 0)), CAST(25301 AS Decimal(20, 0)), N'Tên người nhận hàng: democodeabcSố điện thoại nhận hàng: 0988877774, Địa chỉ giao hàng: Phường Đồng Nguyên,Thị xã Từ Sơn,Bắc Ninh', N'', CAST(N'2024-04-05T21:21:42.170' AS DateTime), CAST(N'2024-04-05T21:21:42.170' AS DateTime), NULL, 0, 2, 0, 0)
INSERT [dbo].[HoaDon] ([Id_HoaDon], [Id_KhachHang], [Id_User], [maHoaDon], [thanhTien], [phiShip], [ghiChu], [mess], [ngayTao], [ngayThanhToan], [ngaySua], [hinhThuc], [hinhThucThanhToan], [trangThaiMoney], [trangThai]) VALUES (N'f74ca3c2-453c-4651-a429-c4b39f02dd61', N'79ca583b-09bd-4099-b4ca-ccb3260418fb', NULL, N'MaHD21243', CAST(200000 AS Decimal(20, 0)), CAST(25301 AS Decimal(20, 0)), N'Tên khách hàng: democodeabc, Số điện thoại nhận hàng: 0988877774, Địa chỉ giao hàng: Phường Đồng Nguyên,Thị xã Từ Sơn,Bắc Ninh', N'', CAST(N'2024-04-05T21:24:14.313' AS DateTime), CAST(N'2024-04-05T21:24:14.313' AS DateTime), NULL, 0, 1, 1, 1)
INSERT [dbo].[HoaDon] ([Id_HoaDon], [Id_KhachHang], [Id_User], [maHoaDon], [thanhTien], [phiShip], [ghiChu], [mess], [ngayTao], [ngayThanhToan], [ngaySua], [hinhThuc], [hinhThucThanhToan], [trangThaiMoney], [trangThai]) VALUES (N'081e9394-4f73-452f-bf47-d47aeeba6e9f', N'79ca583b-09bd-4099-b4ca-ccb3260418fb', NULL, N'MaHD205422', CAST(490000 AS Decimal(20, 0)), CAST(25301 AS Decimal(20, 0)), N'Tên khách hàng: democodeabc,Số điện thoại nhận hàng: 0988877774, Địa chỉ giao hàng: Phường Đồng Nguyên,Thị xã Từ Sơn,Bắc Ninh', N'ty', NULL, CAST(N'2024-04-05T21:11:04.320' AS DateTime), NULL, 0, 3, 0, 5)
INSERT [dbo].[HoaDon] ([Id_HoaDon], [Id_KhachHang], [Id_User], [maHoaDon], [thanhTien], [phiShip], [ghiChu], [mess], [ngayTao], [ngayThanhToan], [ngaySua], [hinhThuc], [hinhThucThanhToan], [trangThaiMoney], [trangThai]) VALUES (N'616da6a4-8ca7-4183-966b-d6bfc8ae054e', N'523d59dd-d4a8-4050-94f2-af561840e16a', N'27795ad2-2325-4369-aaed-3083566c6804', N'MaHD213421', CAST(980000 AS Decimal(20, 0)), CAST(0 AS Decimal(20, 0)), N'N/A', N'N/A', CAST(N'2024-04-05T21:34:21.437' AS DateTime), CAST(N'2024-04-05T21:34:47.307' AS DateTime), CAST(N'2024-04-05T21:34:47.307' AS DateTime), 1, 0, 1, 4)
INSERT [dbo].[HoaDon] ([Id_HoaDon], [Id_KhachHang], [Id_User], [maHoaDon], [thanhTien], [phiShip], [ghiChu], [mess], [ngayTao], [ngayThanhToan], [ngaySua], [hinhThuc], [hinhThucThanhToan], [trangThaiMoney], [trangThai]) VALUES (N'00319af8-4b82-45e5-a8e8-da18f44c0f4f', N'518eb580-2536-4154-a173-1252a74454f3', NULL, N'MaHD1646', CAST(200000 AS Decimal(20, 0)), CAST(59401 AS Decimal(20, 0)), N'Tên khách hàng: democode,Số điện thoại nhận hàng: 0988877777, Địa chỉ giao hàng: Xã Ninh Thạnh Lợi,Huyện Hồng Dân,Bạc Liêu', N'sadsaas', CAST(N'2024-04-05T16:04:21.810' AS DateTime), CAST(N'2024-04-05T16:04:21.810' AS DateTime), NULL, 0, 3, 0, 1)
INSERT [dbo].[HoaDon] ([Id_HoaDon], [Id_KhachHang], [Id_User], [maHoaDon], [thanhTien], [phiShip], [ghiChu], [mess], [ngayTao], [ngayThanhToan], [ngaySua], [hinhThuc], [hinhThucThanhToan], [trangThaiMoney], [trangThai]) VALUES (N'925604c4-9eb0-4409-9bfb-e0d5d179efea', N'518eb580-2536-4154-a173-1252a74454f3', NULL, N'MaHD11547', CAST(916000 AS Decimal(20, 0)), NULL, NULL, NULL, CAST(N'2024-04-07T11:05:47.203' AS DateTime), CAST(N'2024-04-07T11:05:47.203' AS DateTime), NULL, 0, 0, 0, 0)
INSERT [dbo].[HoaDon] ([Id_HoaDon], [Id_KhachHang], [Id_User], [maHoaDon], [thanhTien], [phiShip], [ghiChu], [mess], [ngayTao], [ngayThanhToan], [ngaySua], [hinhThuc], [hinhThucThanhToan], [trangThaiMoney], [trangThai]) VALUES (N'739a89da-f7b0-4f2d-a40f-f5583c46c49d', N'518eb580-2536-4154-a173-1252a74454f3', NULL, N'MaHD13547', CAST(1016000 AS Decimal(20, 0)), CAST(59401 AS Decimal(20, 0)), N'Tên người nhận hàng: democodeSố điện thoại nhận hàng: 0988877777, Địa chỉ giao hàng: Xã Ninh Thạnh Lợi,Huyện Hồng Dân,Bạc Liêu', N'', CAST(N'2024-04-07T13:54:07.290' AS DateTime), CAST(N'2024-04-07T13:54:07.290' AS DateTime), NULL, 0, 2, 0, 0)
INSERT [dbo].[HoaDon] ([Id_HoaDon], [Id_KhachHang], [Id_User], [maHoaDon], [thanhTien], [phiShip], [ghiChu], [mess], [ngayTao], [ngayThanhToan], [ngaySua], [hinhThuc], [hinhThucThanhToan], [trangThaiMoney], [trangThai]) VALUES (N'f1ccc2db-3781-4831-a4fb-fad457568cb8', N'518eb580-2536-4154-a173-1252a74454f3', NULL, N'MaHD16657', CAST(100000 AS Decimal(20, 0)), CAST(59401 AS Decimal(20, 0)), N'Tên khách hàng: democode, Số điện thoại nhận hàng: 0988877777, Địa chỉ giao hàng: Xã Ninh Thạnh Lợi,Huyện Hồng Dân,Bạc Liêu', N'fggfd', CAST(N'2024-04-05T16:07:08.063' AS DateTime), CAST(N'2024-04-05T16:07:08.063' AS DateTime), NULL, 0, 1, 1, 1)
GO
INSERT [dbo].[HoaDonChiTiet] ([Id_HoaDonChiTiet], [Id_HoaDon], [Id_GiayTheThaoChiTiet], [soLuong], [donGia], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'e7fe670c-c67d-4892-827d-09a9c2ba7fe0', N'00319af8-4b82-45e5-a8e8-da18f44c0f4f', N'46e2d333-d55e-4f7a-9d3c-32d5957dff29', 2, CAST(200000 AS Decimal(20, 0)), NULL, NULL, NULL, 1)
INSERT [dbo].[HoaDonChiTiet] ([Id_HoaDonChiTiet], [Id_HoaDon], [Id_GiayTheThaoChiTiet], [soLuong], [donGia], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'aaba2c16-a82a-4f0e-a6cc-2c16e495614c', N'925604c4-9eb0-4409-9bfb-e0d5d179efea', N'90798388-cb48-4dfd-96fc-69a43e429e44', 2, CAST(916000 AS Decimal(20, 0)), NULL, NULL, NULL, 1)
INSERT [dbo].[HoaDonChiTiet] ([Id_HoaDonChiTiet], [Id_HoaDon], [Id_GiayTheThaoChiTiet], [soLuong], [donGia], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'62c61ccc-47d7-4b07-b337-36fd3105e680', N'13cc38d8-9713-4b4e-95ae-a5eb2fb8dae1', N'b4700ad3-e8d8-4028-97db-921ac61b6746', 1, CAST(490000 AS Decimal(20, 0)), NULL, NULL, NULL, 1)
INSERT [dbo].[HoaDonChiTiet] ([Id_HoaDonChiTiet], [Id_HoaDon], [Id_GiayTheThaoChiTiet], [soLuong], [donGia], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'f80ba152-00c8-4393-827c-464c01d4c752', N'739a89da-f7b0-4f2d-a40f-f5583c46c49d', N'46e2d333-d55e-4f7a-9d3c-32d5957dff29', 1, CAST(100000 AS Decimal(20, 0)), NULL, NULL, NULL, 1)
INSERT [dbo].[HoaDonChiTiet] ([Id_HoaDonChiTiet], [Id_HoaDon], [Id_GiayTheThaoChiTiet], [soLuong], [donGia], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'3ecbd402-51b0-47ed-b598-493d90addcad', N'616da6a4-8ca7-4183-966b-d6bfc8ae054e', N'46e2d333-d55e-4f7a-9d3c-32d5957dff29', 2, CAST(100000 AS Decimal(20, 0)), N'N/A', CAST(N'2024-04-05T21:34:38.973' AS DateTime), CAST(N'2024-04-05T21:34:38.973' AS DateTime), 2)
INSERT [dbo].[HoaDonChiTiet] ([Id_HoaDonChiTiet], [Id_HoaDon], [Id_GiayTheThaoChiTiet], [soLuong], [donGia], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'8158fdc1-6224-4ff9-b727-4dec1c0c535f', N'bdf5b20d-a5dc-4ff0-aadf-922923554cb0', N'643b2097-c662-40a9-89bd-5e85b9d291fe', 1, CAST(100000 AS Decimal(20, 0)), NULL, NULL, NULL, 1)
INSERT [dbo].[HoaDonChiTiet] ([Id_HoaDonChiTiet], [Id_HoaDon], [Id_GiayTheThaoChiTiet], [soLuong], [donGia], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'd40e0b4b-1867-4cef-b4df-51bad7e691bb', N'f1ccc2db-3781-4831-a4fb-fad457568cb8', N'46e2d333-d55e-4f7a-9d3c-32d5957dff29', 1, CAST(100000 AS Decimal(20, 0)), NULL, NULL, NULL, 1)
INSERT [dbo].[HoaDonChiTiet] ([Id_HoaDonChiTiet], [Id_HoaDon], [Id_GiayTheThaoChiTiet], [soLuong], [donGia], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'cfdf3fa7-a531-4853-83a0-5b151ecc32ff', N'13cc38d8-9713-4b4e-95ae-a5eb2fb8dae1', N'75e73305-c803-4cc3-809d-42023da38ad5', 5, CAST(4499950 AS Decimal(20, 0)), NULL, NULL, NULL, 1)
INSERT [dbo].[HoaDonChiTiet] ([Id_HoaDonChiTiet], [Id_HoaDon], [Id_GiayTheThaoChiTiet], [soLuong], [donGia], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'c0990dfe-fbee-405f-be2a-5ca433dad814', N'297d9f4b-f170-4417-8cc7-9439984df993', N'75e73305-c803-4cc3-809d-42023da38ad5', 5, CAST(4499950 AS Decimal(20, 0)), NULL, NULL, NULL, 1)
INSERT [dbo].[HoaDonChiTiet] ([Id_HoaDonChiTiet], [Id_HoaDon], [Id_GiayTheThaoChiTiet], [soLuong], [donGia], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'51840dbd-7868-470b-9a50-a47478ff8112', N'ef312c92-d9fd-4269-bed4-626208e49f2d', N'75e73305-c803-4cc3-809d-42023da38ad5', 5, CAST(4499950 AS Decimal(20, 0)), NULL, NULL, NULL, 1)
INSERT [dbo].[HoaDonChiTiet] ([Id_HoaDonChiTiet], [Id_HoaDon], [Id_GiayTheThaoChiTiet], [soLuong], [donGia], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'd432a265-f1cb-4e60-a22f-a57f44351517', N'c2241c86-f783-4668-9549-57df6825e982', N'5627ed45-be02-4327-89fb-39fb8f8b12bf', 2, CAST(200000 AS Decimal(20, 0)), NULL, NULL, NULL, 1)
INSERT [dbo].[HoaDonChiTiet] ([Id_HoaDonChiTiet], [Id_HoaDon], [Id_GiayTheThaoChiTiet], [soLuong], [donGia], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'84f02077-f9c5-4446-95ba-b586c5dec683', N'616da6a4-8ca7-4183-966b-d6bfc8ae054e', N'c8598d51-c293-4d84-ae53-44e3c73a60eb', 1, CAST(780000 AS Decimal(20, 0)), N'N/A', CAST(N'2024-04-05T21:34:32.350' AS DateTime), CAST(N'2024-04-05T21:34:32.350' AS DateTime), 1)
INSERT [dbo].[HoaDonChiTiet] ([Id_HoaDonChiTiet], [Id_HoaDon], [Id_GiayTheThaoChiTiet], [soLuong], [donGia], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'94cfe8c3-8822-448f-bf75-b6f63c8be428', N'cacaa295-9203-445a-b6c9-a4ae6e5e1187', N'b4700ad3-e8d8-4028-97db-921ac61b6746', 1, CAST(490000 AS Decimal(20, 0)), NULL, NULL, NULL, 1)
INSERT [dbo].[HoaDonChiTiet] ([Id_HoaDonChiTiet], [Id_HoaDon], [Id_GiayTheThaoChiTiet], [soLuong], [donGia], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'13d7aefe-d3c0-472e-a0c8-bea365596e85', N'739a89da-f7b0-4f2d-a40f-f5583c46c49d', N'90798388-cb48-4dfd-96fc-69a43e429e44', 2, CAST(916000 AS Decimal(20, 0)), NULL, NULL, NULL, 1)
INSERT [dbo].[HoaDonChiTiet] ([Id_HoaDonChiTiet], [Id_HoaDon], [Id_GiayTheThaoChiTiet], [soLuong], [donGia], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'fb587686-0dae-4295-ae00-c95bed3ffff4', N'927e19c6-1c52-40d4-8d42-29c2b2f068d8', N'b4700ad3-e8d8-4028-97db-921ac61b6746', 1, CAST(490000 AS Decimal(20, 0)), NULL, NULL, NULL, 1)
INSERT [dbo].[HoaDonChiTiet] ([Id_HoaDonChiTiet], [Id_HoaDon], [Id_GiayTheThaoChiTiet], [soLuong], [donGia], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'5fe2f748-edae-49c9-b24e-cad5c722e26a', N'c2241c86-f783-4668-9549-57df6825e982', N'46e2d333-d55e-4f7a-9d3c-32d5957dff29', 2, CAST(200000 AS Decimal(20, 0)), NULL, NULL, NULL, 1)
INSERT [dbo].[HoaDonChiTiet] ([Id_HoaDonChiTiet], [Id_HoaDon], [Id_GiayTheThaoChiTiet], [soLuong], [donGia], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'b5488b05-20a4-4eaa-9a47-e556185cdb8c', N'297d9f4b-f170-4417-8cc7-9439984df993', N'46e2d333-d55e-4f7a-9d3c-32d5957dff29', 1, CAST(100000 AS Decimal(20, 0)), NULL, NULL, NULL, 1)
INSERT [dbo].[HoaDonChiTiet] ([Id_HoaDonChiTiet], [Id_HoaDon], [Id_GiayTheThaoChiTiet], [soLuong], [donGia], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'593aec9c-20a5-4ef2-86db-e738f3c9cc7c', N'd0938fe4-6783-4776-b205-a017d335acac', N'b4700ad3-e8d8-4028-97db-921ac61b6746', 5, CAST(2450000 AS Decimal(20, 0)), NULL, NULL, NULL, 1)
INSERT [dbo].[HoaDonChiTiet] ([Id_HoaDonChiTiet], [Id_HoaDon], [Id_GiayTheThaoChiTiet], [soLuong], [donGia], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'905715cf-e019-4d5d-ae06-e83e831011f2', N'f74ca3c2-453c-4651-a429-c4b39f02dd61', N'5627ed45-be02-4327-89fb-39fb8f8b12bf', 2, CAST(200000 AS Decimal(20, 0)), NULL, NULL, NULL, 1)
INSERT [dbo].[HoaDonChiTiet] ([Id_HoaDonChiTiet], [Id_HoaDon], [Id_GiayTheThaoChiTiet], [soLuong], [donGia], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'f6682cc9-9755-42f9-8e13-ec174bcd544c', N'9c3d5898-7db9-4349-bc45-a887b8313179', N'b4700ad3-e8d8-4028-97db-921ac61b6746', 5, CAST(2450000 AS Decimal(20, 0)), NULL, NULL, NULL, 1)
INSERT [dbo].[HoaDonChiTiet] ([Id_HoaDonChiTiet], [Id_HoaDon], [Id_GiayTheThaoChiTiet], [soLuong], [donGia], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'f8b5a08e-3bb9-4309-a578-fd3c0522e1cc', N'081e9394-4f73-452f-bf47-d47aeeba6e9f', N'b4700ad3-e8d8-4028-97db-921ac61b6746', 1, CAST(490000 AS Decimal(20, 0)), NULL, NULL, NULL, 1)
GO
INSERT [dbo].[HuongDanBaoQuan] ([Id_HuongDanBaoQuan], [tenHuongDanBaoQuan], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'76070e87-3ade-477c-8ee3-117cf56c14e0', N'Để nơi khô thoáng', N'', CAST(N'2023-12-12' AS Date), CAST(N'1900-01-01' AS Date), 1)
INSERT [dbo].[HuongDanBaoQuan] ([Id_HuongDanBaoQuan], [tenHuongDanBaoQuan], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'6928038e-a395-4b1f-a1f1-18ea9a1865dd', N'Sử dụng sản phẩm hỗ trợ Bọt làm sạch. Xịt khử mùi. Xịt nano', N'', CAST(N'2023-12-12' AS Date), CAST(N'1900-01-01' AS Date), 1)
INSERT [dbo].[HuongDanBaoQuan] ([Id_HuongDanBaoQuan], [tenHuongDanBaoQuan], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'5afb20cb-850d-457d-b977-a57c29e4f7bc', N'Áp dụng các mẹo làm sạch giày', N'', CAST(N'2023-12-12' AS Date), CAST(N'1900-01-01' AS Date), 1)
INSERT [dbo].[HuongDanBaoQuan] ([Id_HuongDanBaoQuan], [tenHuongDanBaoQuan], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'bf77c913-8b1d-47b5-b39d-a80804341d48', N'Không giặt giày thường xuyên và phơi giày dưới ánh nắng', N'', CAST(N'2023-12-12' AS Date), CAST(N'1900-01-01' AS Date), 1)
INSERT [dbo].[HuongDanBaoQuan] ([Id_HuongDanBaoQuan], [tenHuongDanBaoQuan], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'566efe24-a572-4b6b-b296-bd052c39a6ea', N'Tránh nơi ẩm mốc', N'', CAST(N'2023-12-12' AS Date), CAST(N'1900-01-01' AS Date), 1)
INSERT [dbo].[HuongDanBaoQuan] ([Id_HuongDanBaoQuan], [tenHuongDanBaoQuan], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'db5b9a78-0aca-43c0-9443-c03713d5eabb', N'Bảo quản giày thể thao trong hộp đựng giày.', N'', CAST(N'2023-12-12' AS Date), CAST(N'1900-01-01' AS Date), 1)
INSERT [dbo].[HuongDanBaoQuan] ([Id_HuongDanBaoQuan], [tenHuongDanBaoQuan], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'b6e2aa31-222b-4f7f-ae7b-dc934f7a5df2', N'Sử dụng giấy báo để giữ form giày', N'', CAST(N'2023-12-12' AS Date), CAST(N'1900-01-01' AS Date), 1)
GO
INSERT [dbo].[Image] ([Id_Image], [Id_GiayTheThao], [Url_Image], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'319bf396-356a-4384-b395-12dc5bc3d55a', N'2bf5c4cd-c3ca-4f93-9035-baeb811cb1ff', N'mwc (5).jpg', NULL, NULL, NULL, 0)
INSERT [dbo].[Image] ([Id_Image], [Id_GiayTheThao], [Url_Image], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'f59b9d2e-49e2-45a4-b781-1f9787da256c', N'6edd8789-1930-4c83-b863-e58d91de7031', N'mwc (14).jpg', NULL, NULL, NULL, 0)
INSERT [dbo].[Image] ([Id_Image], [Id_GiayTheThao], [Url_Image], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'24437cc2-ed19-4a73-9c1b-3faade8076b5', N'a40efa3b-2b08-444d-91c0-b1063e10e30d', N'mwc (14).jpg', NULL, NULL, NULL, 0)
INSERT [dbo].[Image] ([Id_Image], [Id_GiayTheThao], [Url_Image], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'fd5a240d-6bdf-4cd5-ad04-4df4fffbc851', N'db218b22-72c6-4442-a89d-7e8ad94d471d', N'mwc (6).jpg', NULL, NULL, NULL, 0)
INSERT [dbo].[Image] ([Id_Image], [Id_GiayTheThao], [Url_Image], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'e296419c-3ca6-4ad0-a4c2-4e53357d5215', N'f0f90998-adc8-4387-9541-6c3bf43e7d8f', N'mwc (11).jpg', NULL, NULL, NULL, 0)
INSERT [dbo].[Image] ([Id_Image], [Id_GiayTheThao], [Url_Image], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'b1e95ae7-6a47-4cbe-b1da-57a74df91bd9', N'31dfba36-f00d-4e72-aac0-70c8a95b5ba5', N'mwc (1).jpg', NULL, NULL, NULL, 0)
INSERT [dbo].[Image] ([Id_Image], [Id_GiayTheThao], [Url_Image], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'f7bb8d66-eeea-4610-9b24-73931ef02f6f', N'2bf5c4cd-c3ca-4f93-9035-baeb811cb1ff', N'mwc (6).jpg', NULL, NULL, NULL, 0)
INSERT [dbo].[Image] ([Id_Image], [Id_GiayTheThao], [Url_Image], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'27c529ae-2c5b-4884-946e-8cf9d9b0d0af', N'953e005a-4e89-4283-bf96-2598f9eeedf6', N'mwc (10).jpg', NULL, NULL, NULL, 0)
INSERT [dbo].[Image] ([Id_Image], [Id_GiayTheThao], [Url_Image], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'da338415-7965-4571-9bb2-95131f72de3f', N'256fca1a-9a0e-4808-af92-8118c20cbc93', N'mwc (9).jpg', NULL, NULL, NULL, 0)
INSERT [dbo].[Image] ([Id_Image], [Id_GiayTheThao], [Url_Image], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'5e0c2f4e-c2d4-419b-aad9-9a1f1009e93d', N'2bf5c4cd-c3ca-4f93-9035-baeb811cb1ff', N'mwc (7).jpg', NULL, NULL, NULL, 0)
INSERT [dbo].[Image] ([Id_Image], [Id_GiayTheThao], [Url_Image], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'f55c8986-6f9c-44fd-91e5-c661dddf8f9a', N'a40efa3b-2b08-444d-91c0-b1063e10e30d', N'mwc (14).jpg', NULL, NULL, NULL, 0)
INSERT [dbo].[Image] ([Id_Image], [Id_GiayTheThao], [Url_Image], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'a88df060-f4ad-48b2-9f7b-ce6bc432bcf5', N'9608c941-600f-4b29-84da-42774c2f125d', N'mwc (13).jpg', NULL, NULL, NULL, 0)
INSERT [dbo].[Image] ([Id_Image], [Id_GiayTheThao], [Url_Image], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'23746229-db56-4053-9782-dd1dc6d00c04', N'953e005a-4e89-4283-bf96-2598f9eeedf6', N'mwc (10).jpg', NULL, NULL, NULL, 0)
INSERT [dbo].[Image] ([Id_Image], [Id_GiayTheThao], [Url_Image], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'97359ec6-d1b0-4f86-a002-e78fdb4fc9f6', N'b45416a1-ca62-4989-a249-41f977f56fcc', N'mwc (12).jpg', NULL, NULL, NULL, 0)
INSERT [dbo].[Image] ([Id_Image], [Id_GiayTheThao], [Url_Image], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'4fd5469a-0191-4698-ab65-f5e85b029620', N'a40efa3b-2b08-444d-91c0-b1063e10e30d', N'mwc (6).jpg', NULL, NULL, NULL, 0)
INSERT [dbo].[Image] ([Id_Image], [Id_GiayTheThao], [Url_Image], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'e9778d7b-f1d9-4798-b0d0-f6ddd9e72f31', N'256fca1a-9a0e-4808-af92-8118c20cbc93', N'mwc (8).jpg', NULL, NULL, NULL, 0)
GO
INSERT [dbo].[KhachHang] ([Id_KhachHang], [maKhachHang], [Url_Image], [email], [matKhau], [tenKhachHang], [gioiTinh], [ngaySinh], [soDienThoai], [diaChi], [thanhPho], [huyen], [xa], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'518eb580-2536-4154-a173-1252a74454f3', N'MaKH16338', N'Screenshot 2024-04-05 125137.png', N'khachhang1@gmail.com', N'12345678', N'khachhang1', N'Nam', CAST(N'2024-04-04' AS Date), N'0988877777', N'ssadasf,600306', N'Bạc Liêu', N'Huyện Hồng Dân', N'Xã Ninh Thạnh Lợi', NULL, CAST(N'2024-04-05' AS Date), CAST(N'2024-04-05' AS Date), 0)
INSERT [dbo].[KhachHang] ([Id_KhachHang], [maKhachHang], [Url_Image], [email], [matKhau], [tenKhachHang], [gioiTinh], [ngaySinh], [soDienThoai], [diaChi], [thanhPho], [huyen], [xa], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'73abc162-487d-4139-b0d7-701fafe24219', N'MaKH20344', N'mwc (12).jpg', N'khachhang2@gmail.com', N'12345678', N'khachhang2', N'Nam', CAST(N'1900-01-01' AS Date), N'0988877778', N'abcd hg,610804', N'Cà Mau', N'Huyện Năm Căn', N'Xã Hàng Vịnh', NULL, CAST(N'2024-04-05' AS Date), CAST(N'2024-04-05' AS Date), 0)
INSERT [dbo].[KhachHang] ([Id_KhachHang], [maKhachHang], [Url_Image], [email], [matKhau], [tenKhachHang], [gioiTinh], [ngaySinh], [soDienThoai], [diaChi], [thanhPho], [huyen], [xa], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'523d59dd-d4a8-4050-94f2-af561840e16a', N'MaKH20327', N'mwc (13).jpg', N'khachhang3@gmail.com', N'12345678', N'khachhang2', N'Nam', CAST(N'2024-04-04' AS Date), N'0988877779', N'abcd hg,640604', N'Hậu Giang', N'Huyện Châu Thành A', N'Thị trấn Rạch Gòi', NULL, CAST(N'2024-04-05' AS Date), CAST(N'2024-04-05' AS Date), 0)
INSERT [dbo].[KhachHang] ([Id_KhachHang], [maKhachHang], [Url_Image], [email], [matKhau], [tenKhachHang], [gioiTinh], [ngaySinh], [soDienThoai], [diaChi], [thanhPho], [huyen], [xa], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'79ca583b-09bd-4099-b4ca-ccb3260418fb', N'MaKH205054', N'mwc (12).jpg', N'khachhang4@gmail.com', N'12345678', N'khachhang3', N'Nam', CAST(N'2024-04-06' AS Date), N'0988877774', N'abcd hg,190505', N'Bắc Ninh', N'Thị xã Từ Sơn', N'Phường Đồng Nguyên', NULL, CAST(N'2024-04-05' AS Date), CAST(N'2024-04-05' AS Date), 0)
GO
INSERT [dbo].[KieuBuoc] ([Id_KieuBuoc], [tenKieuBuoc], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'5d1608a7-716b-4711-bf45-08eeb4cf5e72', N'Kiểu thắt dây giày Ladder Lacing', N'', CAST(N'1900-01-01' AS Date), CAST(N'1900-01-01' AS Date), 1)
INSERT [dbo].[KieuBuoc] ([Id_KieuBuoc], [tenKieuBuoc], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'd0fe757c-44f5-4db5-90fe-58e692607ddf', N'Kiểu thắt dây giày đá bóng chéo', N'', CAST(N'1900-01-01' AS Date), CAST(N'1900-01-01' AS Date), 1)
INSERT [dbo].[KieuBuoc] ([Id_KieuBuoc], [tenKieuBuoc], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'c6418893-db07-46bd-94c7-95d7fc117a39', N'Kiểu thắt dây giày giấu nút', N'', CAST(N'1900-01-01' AS Date), CAST(N'1900-01-01' AS Date), 1)
INSERT [dbo].[KieuBuoc] ([Id_KieuBuoc], [tenKieuBuoc], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'bef12da0-ca24-4a2d-be8c-b492b9f16ade', N'Kiểu buộc giây giày theo phương pháp giấu dây', N'', CAST(N'1900-01-01' AS Date), CAST(N'1900-01-01' AS Date), 1)
INSERT [dbo].[KieuBuoc] ([Id_KieuBuoc], [tenKieuBuoc], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'a415b7cc-dc45-427e-b60c-b7999dbe9543', N'Kiểu buộc dây giày cố định lòng bàn chân', N'', CAST(N'1900-01-01' AS Date), CAST(N'1900-01-01' AS Date), 1)
INSERT [dbo].[KieuBuoc] ([Id_KieuBuoc], [tenKieuBuoc], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'808b607f-2095-4fb1-a92c-c116c5f18172', N'Kiểu buộc thắt dây chéo vắt lên trên', N'', CAST(N'1900-01-01' AS Date), CAST(N'1900-01-01' AS Date), 1)
INSERT [dbo].[KieuBuoc] ([Id_KieuBuoc], [tenKieuBuoc], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'cb181253-8d9c-453d-8178-f686834bb7a4', N'Kiểu thắt xỏ dây nút chạy', N'', CAST(N'1900-01-01' AS Date), CAST(N'1900-01-01' AS Date), 1)
GO
INSERT [dbo].[LotGiay] ([Id_LotGiay], [tenLotGiay], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'c61fdf3e-f5d0-48af-82c4-1e9c6c6a621c', N'Lót giầy Unisex', N'T?t', CAST(N'2021-12-12' AS Date), CAST(N'1900-01-01' AS Date), 1)
INSERT [dbo].[LotGiay] ([Id_LotGiay], [tenLotGiay], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'd6c11c67-5d48-4bd3-a9c0-1f40b2f36c68', N'Lót giầy thể thao 4D', N'T?t', CAST(N'2021-12-12' AS Date), CAST(N'1900-01-01' AS Date), 1)
INSERT [dbo].[LotGiay] ([Id_LotGiay], [tenLotGiay], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'08011e16-cea7-4c19-8118-428ace042732', N'Lót giầy Mika', N'T?t', CAST(N'2021-12-12' AS Date), CAST(N'1900-01-01' AS Date), 1)
INSERT [dbo].[LotGiay] ([Id_LotGiay], [tenLotGiay], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'2d5597ff-c7aa-469e-ade5-5153410200ab', N'Lót giầy thể thao Xilones', N'T?t', CAST(N'2021-12-12' AS Date), CAST(N'1900-01-01' AS Date), 1)
INSERT [dbo].[LotGiay] ([Id_LotGiay], [tenLotGiay], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'd11fdf18-b539-42a9-9148-6c3bddf8d210', N'Lót giầy Miko', N'T?t', CAST(N'2021-12-12' AS Date), CAST(N'1900-01-01' AS Date), 1)
INSERT [dbo].[LotGiay] ([Id_LotGiay], [tenLotGiay], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'a95bc498-6f2d-4f31-a3bc-9fd6b6e959bb', N'Lót giầy Mizuno', N'T?t', CAST(N'2021-12-12' AS Date), CAST(N'1900-01-01' AS Date), 1)
INSERT [dbo].[LotGiay] ([Id_LotGiay], [tenLotGiay], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'd12d641f-41e9-4f3f-bc00-b2d29ae4298e', N'Lót giầy Ximo', N'T?t', CAST(N'2021-12-12' AS Date), CAST(N'1900-01-01' AS Date), 1)
INSERT [dbo].[LotGiay] ([Id_LotGiay], [tenLotGiay], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'f62b2cb9-31a3-4a14-8680-b7a55950a426', N'Lót giầy Kamito', N'T?t', CAST(N'2021-12-12' AS Date), CAST(N'1900-01-01' AS Date), 1)
INSERT [dbo].[LotGiay] ([Id_LotGiay], [tenLotGiay], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'60c4d50c-b776-49ea-b89f-fc8712eb8e6a', N'Lót giầy thể thao 5D', N'T?t', CAST(N'2021-12-12' AS Date), CAST(N'1900-01-01' AS Date), 1)
GO
INSERT [dbo].[MauSac] ([Id_MauSac], [tenMauSac], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'ebd6db71-1535-4d14-8380-043891c668a2', N'Tím', N'', CAST(N'1900-01-01' AS Date), CAST(N'1900-01-01' AS Date), 0)
INSERT [dbo].[MauSac] ([Id_MauSac], [tenMauSac], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'01202fe9-cf88-4fac-9e48-4af2003b8769', N'Cam', N'', CAST(N'1900-01-01' AS Date), CAST(N'1900-01-01' AS Date), 0)
INSERT [dbo].[MauSac] ([Id_MauSac], [tenMauSac], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'04e28317-8b26-4dca-b513-708ae618778a', N'Vàng', N'', CAST(N'1900-01-01' AS Date), CAST(N'1900-01-01' AS Date), 0)
INSERT [dbo].[MauSac] ([Id_MauSac], [tenMauSac], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'914b8334-89e6-4bc7-afd3-75f2d30edfa2', N'Hường', N'', CAST(N'1900-01-01' AS Date), CAST(N'1900-01-01' AS Date), 0)
INSERT [dbo].[MauSac] ([Id_MauSac], [tenMauSac], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'2fbcb2eb-7202-4da8-ae5a-a3adbcd782f0', N'Đỏ', N'', CAST(N'1900-01-01' AS Date), CAST(N'1900-01-01' AS Date), 0)
INSERT [dbo].[MauSac] ([Id_MauSac], [tenMauSac], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'c2ffac6c-cd35-4d00-a686-a86ffab95b24', N'Xanh', N'', CAST(N'1900-01-01' AS Date), CAST(N'1900-01-01' AS Date), 0)
GO
INSERT [dbo].[Size] ([Id_Size], [size], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'68e96a6e-404c-4a33-88dc-1b1fa0a8f8c4', N'39', N'', CAST(N'1900-01-01' AS Date), CAST(N'1900-01-01' AS Date), 0)
INSERT [dbo].[Size] ([Id_Size], [size], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'ff026d43-6d03-44e6-8b1d-4af531c230d0', N'41', N'', CAST(N'1900-01-01' AS Date), CAST(N'1900-01-01' AS Date), 0)
INSERT [dbo].[Size] ([Id_Size], [size], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'e8ac5a79-ce62-44fd-9058-8b0b18a53b32', N'40', N'', CAST(N'1900-01-01' AS Date), CAST(N'1900-01-01' AS Date), 0)
INSERT [dbo].[Size] ([Id_Size], [size], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'37052011-1ced-43a4-9717-94c358f723a0', N'46', N'fe', CAST(N'2024-04-05' AS Date), CAST(N'2024-04-05' AS Date), 0)
INSERT [dbo].[Size] ([Id_Size], [size], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'9550a084-dc93-4fc5-9b5b-b223184cd663', N'42', N'', CAST(N'1900-01-01' AS Date), CAST(N'1900-01-01' AS Date), 0)
INSERT [dbo].[Size] ([Id_Size], [size], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'959080bc-0ea6-4ab0-8a0e-b6c2e4b62c7d', N'38', N'', CAST(N'1900-01-01' AS Date), CAST(N'1900-01-01' AS Date), 0)
INSERT [dbo].[Size] ([Id_Size], [size], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'6bc39fa8-71de-4317-8735-d089bebfdd3a', N'43', N'', CAST(N'1900-01-01' AS Date), CAST(N'1900-01-01' AS Date), 0)
INSERT [dbo].[Size] ([Id_Size], [size], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'e07d2324-d196-4ddf-a011-ef210decbc40', N'44', N'', CAST(N'1900-01-01' AS Date), CAST(N'1900-01-01' AS Date), 0)
INSERT [dbo].[Size] ([Id_Size], [size], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'98a74914-db90-4794-ab2d-fb3d15fe2b8d', N'45', N'', CAST(N'1900-01-01' AS Date), CAST(N'1900-01-01' AS Date), 0)
GO
INSERT [dbo].[ThuongHieu] ([Id_ThuongHieu], [tenThuongHieu], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'be4bda37-1e99-4074-bb2d-066e73b7cae4', N'Simo', N'Cao cấp', CAST(N'2023-12-12' AS Date), CAST(N'1900-01-01' AS Date), 1)
INSERT [dbo].[ThuongHieu] ([Id_ThuongHieu], [tenThuongHieu], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'22d1d2a0-cb34-4c28-a12c-0ae8b4feb084', N'Mika', N'Cao cấp', CAST(N'2023-12-12' AS Date), CAST(N'1900-01-01' AS Date), 1)
INSERT [dbo].[ThuongHieu] ([Id_ThuongHieu], [tenThuongHieu], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'403404cb-5c51-4ea6-bb2a-87e222892b89', N'UNisex', N'Cao cấp', CAST(N'2023-12-12' AS Date), CAST(N'1900-01-01' AS Date), 1)
INSERT [dbo].[ThuongHieu] ([Id_ThuongHieu], [tenThuongHieu], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'7101160a-a30e-43b8-9f40-95f7c43461f2', N'Mizuno', N'Cao cấp', CAST(N'2023-12-12' AS Date), CAST(N'1900-01-01' AS Date), 1)
INSERT [dbo].[ThuongHieu] ([Id_ThuongHieu], [tenThuongHieu], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'99249b6e-694e-4c6b-9f0d-97349413db7d', N'GuGCi', N'Cao cấp', CAST(N'2023-12-12' AS Date), CAST(N'1900-01-01' AS Date), 1)
INSERT [dbo].[ThuongHieu] ([Id_ThuongHieu], [tenThuongHieu], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'18234102-dea6-47b9-97c8-97c8ad6daffe', N'Like', N'Cao cấp', CAST(N'2023-12-12' AS Date), CAST(N'1900-01-01' AS Date), 1)
INSERT [dbo].[ThuongHieu] ([Id_ThuongHieu], [tenThuongHieu], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'a1660912-241a-4943-994e-c73f83aad53c', N'Kamito', N'Cao cấp', CAST(N'2023-12-12' AS Date), CAST(N'1900-01-01' AS Date), 1)
INSERT [dbo].[ThuongHieu] ([Id_ThuongHieu], [tenThuongHieu], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'b8a7d5ff-a5ef-4700-a362-f7aef3963ae0', N'Miko', N'Cao cấp', CAST(N'2023-12-12' AS Date), CAST(N'1900-01-01' AS Date), 1)
GO
INSERT [dbo].[TrongLuong] ([Id_TrongLuong], [tenTrongLuong], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'c1420e51-11b6-4a60-a422-209b26a2aa2d', N'150G', N'', CAST(N'2023-12-10' AS Date), CAST(N'1900-01-01' AS Date), 1)
INSERT [dbo].[TrongLuong] ([Id_TrongLuong], [tenTrongLuong], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'c1c9ee53-b5c3-45c7-b135-3d9e09dd013c', N'200G', N'', CAST(N'2023-12-10' AS Date), CAST(N'1900-01-01' AS Date), 1)
INSERT [dbo].[TrongLuong] ([Id_TrongLuong], [tenTrongLuong], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'c67c8c43-1dc4-4534-bd1c-4eb29658647f', N'140G', N'Nhẹ', CAST(N'2023-12-10' AS Date), CAST(N'1900-01-01' AS Date), 1)
INSERT [dbo].[TrongLuong] ([Id_TrongLuong], [tenTrongLuong], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'fccaf2d9-fb2c-4953-a8f9-56ecadceb8ce', N'160G', N'Nhẹ', CAST(N'2023-12-10' AS Date), CAST(N'1900-01-01' AS Date), 1)
INSERT [dbo].[TrongLuong] ([Id_TrongLuong], [tenTrongLuong], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'8bc761ef-35e9-4647-a1c5-7471be4321ce', N'190G', N'', CAST(N'2023-12-10' AS Date), CAST(N'1900-01-01' AS Date), 1)
INSERT [dbo].[TrongLuong] ([Id_TrongLuong], [tenTrongLuong], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'551dda9b-d3fd-46dd-ac34-8af5c8408a99', N'180G', N'', CAST(N'2023-12-10' AS Date), CAST(N'1900-01-01' AS Date), 1)
INSERT [dbo].[TrongLuong] ([Id_TrongLuong], [tenTrongLuong], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'd4eb3041-4554-4bd3-930f-b4ecc6af47c4', N'150G', N'Nhẹ', CAST(N'2023-12-10' AS Date), CAST(N'1900-01-01' AS Date), 1)
INSERT [dbo].[TrongLuong] ([Id_TrongLuong], [tenTrongLuong], [ghiChu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'bc668436-4205-4b85-ba57-ba5fbab8247f', N'170G', N'Nhẹ', CAST(N'2023-12-10' AS Date), CAST(N'1900-01-01' AS Date), 1)
GO
INSERT [dbo].[Users] ([Id_User], [maUser], [Url_Image], [email], [matKhau], [tenUser], [gioiTinh], [ngaySinh], [maCCCD], [hoKhau], [soDienThoai], [diaChi], [ghiChu], [ngayTao], [ngaySua], [trangThai], [role]) VALUES (N'27795ad2-2325-4369-aaed-3083566c6804', N'1', NULL, N'dao.q.tung.74.75@gmail.com', N'12345678', N'Đào Quang Tùng', N'1', CAST(N'2003-01-01' AS Date), N'079203030964', N'Hà Nội', N'0931418748', NULL, NULL, NULL, NULL, 0, N'ADMIN')
INSERT [dbo].[Users] ([Id_User], [maUser], [Url_Image], [email], [matKhau], [tenUser], [gioiTinh], [ngaySinh], [maCCCD], [hoKhau], [soDienThoai], [diaChi], [ghiChu], [ngayTao], [ngaySua], [trangThai], [role]) VALUES (N'8b368511-36c6-4b1f-9d11-32de781fdb22', N'maUser213047', NULL, N'vanh@gmail.com', N'12345678', N'nhanvien', N'Nam', CAST(N'2024-04-03' AS Date), N'66565', N'rrr', N'0988877779', N'ggg', N'hghgh', CAST(N'2024-04-05' AS Date), NULL, 0, N'ADMIN')
INSERT [dbo].[Users] ([Id_User], [maUser], [Url_Image], [email], [matKhau], [tenUser], [gioiTinh], [ngaySinh], [maCCCD], [hoKhau], [soDienThoai], [diaChi], [ghiChu], [ngayTao], [ngaySua], [trangThai], [role]) VALUES (N'd1564ea1-e65f-4131-99e9-5da8f725eac1', N'maUser15387', NULL, N'dung@gmail.com', N'12345678', N'gggg', N'Nam', CAST(N'2024-04-04' AS Date), N'2342342', N'123', N'0988877777', N'dfsdfsadfs', N'sđfsfds', CAST(N'2024-04-05' AS Date), NULL, 0, N'ADMIN')
INSERT [dbo].[Users] ([Id_User], [maUser], [Url_Image], [email], [matKhau], [tenUser], [gioiTinh], [ngaySinh], [maCCCD], [hoKhau], [soDienThoai], [diaChi], [ghiChu], [ngayTao], [ngaySua], [trangThai], [role]) VALUES (N'8b368511-36c6-4b1f-9d11-32de781fdb22', N'maUser213047', NULL, N'duong@gmail.com', N'12345678', N'nhanvien', N'Nam', CAST(N'2024-04-03' AS Date), N'66565', N'rrr', N'0988877779', N'ggg', N'hghgh', CAST(N'2024-04-05' AS Date), NULL, 0, N'ADMIN')
INSERT [dbo].[Users] ([Id_User], [maUser], [Url_Image], [email], [matKhau], [tenUser], [gioiTinh], [ngaySinh], [maCCCD], [hoKhau], [soDienThoai], [diaChi], [ghiChu], [ngayTao], [ngaySua], [trangThai], [role]) VALUES (N'd1564ea1-e65f-4131-99e9-5da8f725eac1', N'maUser15387', NULL, N'khai@gmail.com', N'12345678', N'gggg', N'Nam', CAST(N'2024-04-04' AS Date), N'2342342', N'123', N'0988877777', N'dfsdfsadfs', N'sđfsfds', CAST(N'2024-04-05' AS Date), NULL, 0, N'ADMIN')
INSERT [dbo].[Users] ([Id_User], [maUser], [Url_Image], [email], [matKhau], [tenUser], [gioiTinh], [ngaySinh], [maCCCD], [hoKhau], [soDienThoai], [diaChi], [ghiChu], [ngayTao], [ngaySua], [trangThai], [role]) VALUES (N'572fc4cc-daff-45f0-8adb-a2bd2081acdb', N'maUser11467', NULL, N'nhanvien@gmail.com', N'12345678', N'nhanvien', N'Nam', CAST(N'2024-04-12' AS Date), N'2342342', N'123', N'0988877775', N'ád', N'rgdgdfg', CAST(N'2024-04-07' AS Date), NULL, 0, N'MEMBER')
GO
INSERT [dbo].[ViTien] ([Id_ViTien], [Id_KhachHang], [maViTien], [thanhTien], [ngayTao], [ngaySua], [trangThai]) VALUES (N'aa2f8036-f6dc-4521-820f-1592a4e8691c', N'79ca583b-09bd-4099-b4ca-ccb3260418fb', N'MaViTien205054', CAST(774699 AS Decimal(20, 0)), NULL, NULL, 1)
INSERT [dbo].[ViTien] ([Id_ViTien], [Id_KhachHang], [maViTien], [thanhTien], [ngayTao], [ngaySua], [trangThai]) VALUES (N'74f92170-ba71-4da7-b03d-1773f81c1e63', N'523d59dd-d4a8-4050-94f2-af561840e16a', N'MaViTien20327', CAST(0 AS Decimal(20, 0)), NULL, NULL, 1)
INSERT [dbo].[ViTien] ([Id_ViTien], [Id_KhachHang], [maViTien], [thanhTien], [ngayTao], [ngaySua], [trangThai]) VALUES (N'66a7e62d-c316-4069-abe5-580ab407df7d', N'73abc162-487d-4139-b0d7-701fafe24219', N'MaViTien20344', CAST(0 AS Decimal(20, 0)), NULL, NULL, 1)
INSERT [dbo].[ViTien] ([Id_ViTien], [Id_KhachHang], [maViTien], [thanhTien], [ngayTao], [ngaySua], [trangThai]) VALUES (N'a4bbc9c0-8227-4d50-b667-de72d3480237', N'518eb580-2536-4154-a173-1252a74454f3', N'MaViTien16338', CAST(840599 AS Decimal(20, 0)), NULL, NULL, 1)
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__HoaDon__026B4D9B96074B5A]    Script Date: 07/04/2024 14:43:03 ******/
ALTER TABLE [dbo].[HoaDon] ADD UNIQUE NONCLUSTERED 
(
	[maHoaDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__KhachHan__0CCB3D485B648FFF]    Script Date: 07/04/2024 14:43:03 ******/
ALTER TABLE [dbo].[KhachHang] ADD UNIQUE NONCLUSTERED 
(
	[maKhachHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Users__18B21FF03DD5EE69]    Script Date: 07/04/2024 14:43:03 ******/
ALTER TABLE [dbo].[Users] ADD UNIQUE NONCLUSTERED 
(
	[maUser] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ChatLieu] ADD  DEFAULT (newid()) FOR [Id_ChatLieu]
GO
ALTER TABLE [dbo].[ChuongTrinhGiamGiaChiTietGiayTheThao] ADD  DEFAULT (newid()) FOR [Id_ChuongTrinhGiamGiaChiTietGiayTheThao]
GO
ALTER TABLE [dbo].[ChuongTrinhGiamGiaChiTietGiayTheThao] ADD  DEFAULT ((0)) FOR [soTienDaGiam]
GO
ALTER TABLE [dbo].[ChuongTrinhGiamGiaChiTietHoaDon] ADD  DEFAULT (newid()) FOR [Id_ChuongTrinhGiamGiaChiTietHoaDon]
GO
ALTER TABLE [dbo].[ChuongTrinhGiamGiaChiTietHoaDon] ADD  DEFAULT ((0)) FOR [soTienDaGiam]
GO
ALTER TABLE [dbo].[ChuongTrinhGiamGiaGiayTheThao] ADD  DEFAULT (newid()) FOR [Id_ChuongTrinhGiamGiaGiayTheThao]
GO
ALTER TABLE [dbo].[ChuongTrinhGiamGiaHoaDon] ADD  DEFAULT (newid()) FOR [Id_ChuongTrinhGiamGiaHoaDon]
GO
ALTER TABLE [dbo].[ChuongTrinhGiamGiaHoaDon] ADD  DEFAULT ((0)) FOR [soTienHoaDon]
GO
ALTER TABLE [dbo].[CoGiay] ADD  DEFAULT (newid()) FOR [Id_CoGiay]
GO
ALTER TABLE [dbo].[CongDung] ADD  DEFAULT (newid()) FOR [Id_CongDung]
GO
ALTER TABLE [dbo].[DayGiay] ADD  DEFAULT (newid()) FOR [Id_DayGiay]
GO
ALTER TABLE [dbo].[DeGiay] ADD  DEFAULT (newid()) FOR [Id_DeGiay]
GO
ALTER TABLE [dbo].[DinhTanGiay] ADD  DEFAULT (newid()) FOR [Id_DinhTanGiay]
GO
ALTER TABLE [dbo].[Form] ADD  DEFAULT (newid()) FOR [Id_Form]
GO
ALTER TABLE [dbo].[GiaoDichViChiTiet] ADD  DEFAULT (newid()) FOR [Id_GiaoDichViChiTiet]
GO
ALTER TABLE [dbo].[GiaoDichViChiTiet] ADD  DEFAULT (newid()) FOR [Id_ViTien]
GO
ALTER TABLE [dbo].[GiaoDichViChiTiet] ADD  DEFAULT (newid()) FOR [Id_User]
GO
ALTER TABLE [dbo].[GiaoDichViChiTiet] ADD  DEFAULT ((0)) FOR [donGia]
GO
ALTER TABLE [dbo].[GiayTheThao] ADD  DEFAULT (newid()) FOR [Id_GiayTheThao]
GO
ALTER TABLE [dbo].[GiayTheThao] ADD  DEFAULT ((0)) FOR [giaBan]
GO
ALTER TABLE [dbo].[GiayTheThao] ADD  DEFAULT ((0)) FOR [soTienGiamGia]
GO
ALTER TABLE [dbo].[GiayTheThaoChiTiet] ADD  DEFAULT (newid()) FOR [Id_GiayTheThaoChiTiet]
GO
ALTER TABLE [dbo].[GioHang] ADD  DEFAULT (newid()) FOR [Id_GioHang]
GO
ALTER TABLE [dbo].[GioHang] ADD  DEFAULT (newid()) FOR [Id_User]
GO
ALTER TABLE [dbo].[GioHang] ADD  DEFAULT (newid()) FOR [Id_KhachHang]
GO
ALTER TABLE [dbo].[GioHangChiTiet] ADD  DEFAULT (newid()) FOR [Id_GioHangChiTiet]
GO
ALTER TABLE [dbo].[GioHangChiTiet] ADD  DEFAULT (newid()) FOR [Id_GiayTheThaoChiTiet]
GO
ALTER TABLE [dbo].[GioHangChiTiet] ADD  DEFAULT (newid()) FOR [Id_GioHang]
GO
ALTER TABLE [dbo].[GioHangChiTiet] ADD  DEFAULT ((0)) FOR [donGia]
GO
ALTER TABLE [dbo].[GioHangChiTiet] ADD  DEFAULT ((0)) FOR [donGiaKhiGiam]
GO
ALTER TABLE [dbo].[HoaDon] ADD  DEFAULT (newid()) FOR [Id_HoaDon]
GO
ALTER TABLE [dbo].[HoaDon] ADD  DEFAULT ((0)) FOR [thanhTien]
GO
ALTER TABLE [dbo].[HoaDon] ADD  DEFAULT ((0)) FOR [phiShip]
GO
ALTER TABLE [dbo].[HoaDonChiTiet] ADD  DEFAULT (newid()) FOR [Id_HoaDonChiTiet]
GO
ALTER TABLE [dbo].[HoaDonChiTiet] ADD  DEFAULT ((0)) FOR [donGia]
GO
ALTER TABLE [dbo].[HuongDanBaoQuan] ADD  DEFAULT (newid()) FOR [Id_HuongDanBaoQuan]
GO
ALTER TABLE [dbo].[Image] ADD  DEFAULT (newid()) FOR [Id_Image]
GO
ALTER TABLE [dbo].[KhachHang] ADD  DEFAULT (newid()) FOR [Id_KhachHang]
GO
ALTER TABLE [dbo].[KieuBuoc] ADD  DEFAULT (newid()) FOR [Id_KieuBuoc]
GO
ALTER TABLE [dbo].[LotGiay] ADD  DEFAULT (newid()) FOR [Id_LotGiay]
GO
ALTER TABLE [dbo].[MauSac] ADD  DEFAULT (newid()) FOR [Id_MauSac]
GO
ALTER TABLE [dbo].[PhieuGiamGiaHoaDon] ADD  DEFAULT (newid()) FOR [Id_PhieuGiamGiaHoaDon]
GO
ALTER TABLE [dbo].[PhieuGiamGiaHoaDonChiTiet] ADD  DEFAULT (newid()) FOR [Id_PhieuGiamGiaHoaDonChiTiet]
GO
ALTER TABLE [dbo].[PhieuGiamGiaHoaDonChiTiet] ADD  DEFAULT ((0)) FOR [soTienHoaDonDaGiam]
GO
ALTER TABLE [dbo].[Size] ADD  DEFAULT (newid()) FOR [Id_Size]
GO
ALTER TABLE [dbo].[ThuongHieu] ADD  DEFAULT (newid()) FOR [Id_ThuongHieu]
GO
ALTER TABLE [dbo].[TrongLuong] ADD  DEFAULT (newid()) FOR [Id_TrongLuong]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT (newid()) FOR [Id_User]
GO
ALTER TABLE [dbo].[ViTien] ADD  DEFAULT (newid()) FOR [Id_ViTien]
GO
ALTER TABLE [dbo].[ViTien] ADD  DEFAULT (newid()) FOR [Id_KhachHang]
GO
ALTER TABLE [dbo].[ViTien] ADD  DEFAULT ((0)) FOR [thanhTien]
GO
ALTER TABLE [dbo].[ChuongTrinhGiamGiaChiTietGiayTheThao]  WITH CHECK ADD  CONSTRAINT [FK_ChuongTrinhGiamGiaChiTietGiayTheThao_ChuongTrinhGiamGiaGiayTheThao] FOREIGN KEY([Id_ChuongTrinhGiamGiaGiayTheThao])
REFERENCES [dbo].[ChuongTrinhGiamGiaGiayTheThao] ([Id_ChuongTrinhGiamGiaGiayTheThao])
GO
ALTER TABLE [dbo].[ChuongTrinhGiamGiaChiTietGiayTheThao] CHECK CONSTRAINT [FK_ChuongTrinhGiamGiaChiTietGiayTheThao_ChuongTrinhGiamGiaGiayTheThao]
GO
ALTER TABLE [dbo].[ChuongTrinhGiamGiaChiTietGiayTheThao]  WITH CHECK ADD  CONSTRAINT [FK_ChuongTrinhGiamGiaChiTietGiayTheThao_GiayTheThao] FOREIGN KEY([Id_GiayTheThao])
REFERENCES [dbo].[GiayTheThao] ([Id_GiayTheThao])
GO
ALTER TABLE [dbo].[ChuongTrinhGiamGiaChiTietGiayTheThao] CHECK CONSTRAINT [FK_ChuongTrinhGiamGiaChiTietGiayTheThao_GiayTheThao]
GO
ALTER TABLE [dbo].[ChuongTrinhGiamGiaChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_ChuongTrinhGiamGiaChiTietHoaDon_ChuongTrinhGiamGiaHoaDon] FOREIGN KEY([Id_ChuongTrinhGiamGiaHoaDon])
REFERENCES [dbo].[ChuongTrinhGiamGiaHoaDon] ([Id_ChuongTrinhGiamGiaHoaDon])
GO
ALTER TABLE [dbo].[ChuongTrinhGiamGiaChiTietHoaDon] CHECK CONSTRAINT [FK_ChuongTrinhGiamGiaChiTietHoaDon_ChuongTrinhGiamGiaHoaDon]
GO
ALTER TABLE [dbo].[ChuongTrinhGiamGiaChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_ChuongTrinhGiamGiaChiTietHoaDon_HoaDon] FOREIGN KEY([Id_HoaDon])
REFERENCES [dbo].[HoaDon] ([Id_HoaDon])
GO
ALTER TABLE [dbo].[ChuongTrinhGiamGiaChiTietHoaDon] CHECK CONSTRAINT [FK_ChuongTrinhGiamGiaChiTietHoaDon_HoaDon]
GO
ALTER TABLE [dbo].[GiaoDichViChiTiet]  WITH CHECK ADD  CONSTRAINT [FK_GiaoDichViChiTiet_User] FOREIGN KEY([Id_User])
REFERENCES [dbo].[Users] ([Id_User])
GO
ALTER TABLE [dbo].[GiaoDichViChiTiet] CHECK CONSTRAINT [FK_GiaoDichViChiTiet_User]
GO
ALTER TABLE [dbo].[GiaoDichViChiTiet]  WITH CHECK ADD  CONSTRAINT [FK_GiaoDichViChiTiet_ViTien] FOREIGN KEY([Id_ViTien])
REFERENCES [dbo].[ViTien] ([Id_ViTien])
GO
ALTER TABLE [dbo].[GiaoDichViChiTiet] CHECK CONSTRAINT [FK_GiaoDichViChiTiet_ViTien]
GO
ALTER TABLE [dbo].[GiayTheThao]  WITH CHECK ADD  CONSTRAINT [FK_GiayTheThao_ChatLieu] FOREIGN KEY([Id_ChatLieu])
REFERENCES [dbo].[ChatLieu] ([Id_ChatLieu])
GO
ALTER TABLE [dbo].[GiayTheThao] CHECK CONSTRAINT [FK_GiayTheThao_ChatLieu]
GO
ALTER TABLE [dbo].[GiayTheThao]  WITH CHECK ADD  CONSTRAINT [FK_GiayTheThao_CoGiay] FOREIGN KEY([Id_CoGiay])
REFERENCES [dbo].[CoGiay] ([Id_CoGiay])
GO
ALTER TABLE [dbo].[GiayTheThao] CHECK CONSTRAINT [FK_GiayTheThao_CoGiay]
GO
ALTER TABLE [dbo].[GiayTheThao]  WITH CHECK ADD  CONSTRAINT [FK_GiayTheThao_CongDung] FOREIGN KEY([Id_CongDung])
REFERENCES [dbo].[CongDung] ([Id_CongDung])
GO
ALTER TABLE [dbo].[GiayTheThao] CHECK CONSTRAINT [FK_GiayTheThao_CongDung]
GO
ALTER TABLE [dbo].[GiayTheThao]  WITH CHECK ADD  CONSTRAINT [FK_GiayTheThao_DayGiay] FOREIGN KEY([Id_DayGiay])
REFERENCES [dbo].[DayGiay] ([Id_DayGiay])
GO
ALTER TABLE [dbo].[GiayTheThao] CHECK CONSTRAINT [FK_GiayTheThao_DayGiay]
GO
ALTER TABLE [dbo].[GiayTheThao]  WITH CHECK ADD  CONSTRAINT [FK_GiayTheThao_DeGiay] FOREIGN KEY([Id_DeGiay])
REFERENCES [dbo].[DeGiay] ([Id_DeGiay])
GO
ALTER TABLE [dbo].[GiayTheThao] CHECK CONSTRAINT [FK_GiayTheThao_DeGiay]
GO
ALTER TABLE [dbo].[GiayTheThao]  WITH CHECK ADD  CONSTRAINT [FK_GiayTheThao_DinhTanGiay] FOREIGN KEY([Id_DinhTanGiay])
REFERENCES [dbo].[DinhTanGiay] ([Id_DinhTanGiay])
GO
ALTER TABLE [dbo].[GiayTheThao] CHECK CONSTRAINT [FK_GiayTheThao_DinhTanGiay]
GO
ALTER TABLE [dbo].[GiayTheThao]  WITH CHECK ADD  CONSTRAINT [FK_GiayTheThao_Form] FOREIGN KEY([Id_Form])
REFERENCES [dbo].[Form] ([Id_Form])
GO
ALTER TABLE [dbo].[GiayTheThao] CHECK CONSTRAINT [FK_GiayTheThao_Form]
GO
ALTER TABLE [dbo].[GiayTheThao]  WITH CHECK ADD  CONSTRAINT [FK_GiayTheThao_HuongDanBaoQuan] FOREIGN KEY([Id_HuongDanBaoQuan])
REFERENCES [dbo].[HuongDanBaoQuan] ([Id_HuongDanBaoQuan])
GO
ALTER TABLE [dbo].[GiayTheThao] CHECK CONSTRAINT [FK_GiayTheThao_HuongDanBaoQuan]
GO
ALTER TABLE [dbo].[GiayTheThao]  WITH CHECK ADD  CONSTRAINT [FK_GiayTheThao_KieuBuoc] FOREIGN KEY([Id_KieuBuoc])
REFERENCES [dbo].[KieuBuoc] ([Id_KieuBuoc])
GO
ALTER TABLE [dbo].[GiayTheThao] CHECK CONSTRAINT [FK_GiayTheThao_KieuBuoc]
GO
ALTER TABLE [dbo].[GiayTheThao]  WITH CHECK ADD  CONSTRAINT [FK_GiayTheThao_LotGiay] FOREIGN KEY([Id_LotGiay])
REFERENCES [dbo].[LotGiay] ([Id_LotGiay])
GO
ALTER TABLE [dbo].[GiayTheThao] CHECK CONSTRAINT [FK_GiayTheThao_LotGiay]
GO
ALTER TABLE [dbo].[GiayTheThao]  WITH CHECK ADD  CONSTRAINT [FK_GiayTheThao_ThuongHieu] FOREIGN KEY([Id_ThuongHieu])
REFERENCES [dbo].[ThuongHieu] ([Id_ThuongHieu])
GO
ALTER TABLE [dbo].[GiayTheThao] CHECK CONSTRAINT [FK_GiayTheThao_ThuongHieu]
GO
ALTER TABLE [dbo].[GiayTheThao]  WITH CHECK ADD  CONSTRAINT [FK_GiayTheThao_TrongLuong] FOREIGN KEY([Id_TrongLuong])
REFERENCES [dbo].[TrongLuong] ([Id_TrongLuong])
GO
ALTER TABLE [dbo].[GiayTheThao] CHECK CONSTRAINT [FK_GiayTheThao_TrongLuong]
GO
ALTER TABLE [dbo].[GiayTheThaoChiTiet]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietSanPham_MauSac] FOREIGN KEY([Id_MauSac])
REFERENCES [dbo].[MauSac] ([Id_MauSac])
GO
ALTER TABLE [dbo].[GiayTheThaoChiTiet] CHECK CONSTRAINT [FK_ChiTietSanPham_MauSac]
GO
ALTER TABLE [dbo].[GiayTheThaoChiTiet]  WITH CHECK ADD  CONSTRAINT [FK_GiayTheThaoChiTiet_GiayTheThao] FOREIGN KEY([Id_GiayTheThao])
REFERENCES [dbo].[GiayTheThao] ([Id_GiayTheThao])
GO
ALTER TABLE [dbo].[GiayTheThaoChiTiet] CHECK CONSTRAINT [FK_GiayTheThaoChiTiet_GiayTheThao]
GO
ALTER TABLE [dbo].[GiayTheThaoChiTiet]  WITH CHECK ADD  CONSTRAINT [FK_GiayTheThaoChiTiet_Size] FOREIGN KEY([Id_Size])
REFERENCES [dbo].[Size] ([Id_Size])
GO
ALTER TABLE [dbo].[GiayTheThaoChiTiet] CHECK CONSTRAINT [FK_GiayTheThaoChiTiet_Size]
GO
ALTER TABLE [dbo].[GioHang]  WITH CHECK ADD  CONSTRAINT [FK_GioHang_KhachHang] FOREIGN KEY([Id_KhachHang])
REFERENCES [dbo].[KhachHang] ([Id_KhachHang])
GO
ALTER TABLE [dbo].[GioHang] CHECK CONSTRAINT [FK_GioHang_KhachHang]
GO
ALTER TABLE [dbo].[GioHang]  WITH CHECK ADD  CONSTRAINT [FK_GioHang_Users] FOREIGN KEY([Id_User])
REFERENCES [dbo].[Users] ([Id_User])
GO
ALTER TABLE [dbo].[GioHang] CHECK CONSTRAINT [FK_GioHang_Users]
GO
ALTER TABLE [dbo].[GioHangChiTiet]  WITH CHECK ADD  CONSTRAINT [FK_GioHangChiTiet_GiayTheThaoChiTiet] FOREIGN KEY([Id_GiayTheThaoChiTiet])
REFERENCES [dbo].[GiayTheThaoChiTiet] ([Id_GiayTheThaoChiTiet])
GO
ALTER TABLE [dbo].[GioHangChiTiet] CHECK CONSTRAINT [FK_GioHangChiTiet_GiayTheThaoChiTiet]
GO
ALTER TABLE [dbo].[GioHangChiTiet]  WITH CHECK ADD  CONSTRAINT [FK_GioHangChiTiet_GioHang] FOREIGN KEY([Id_GioHang])
REFERENCES [dbo].[GioHang] ([Id_GioHang])
GO
ALTER TABLE [dbo].[GioHangChiTiet] CHECK CONSTRAINT [FK_GioHangChiTiet_GioHang]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_KhachHang] FOREIGN KEY([Id_KhachHang])
REFERENCES [dbo].[KhachHang] ([Id_KhachHang])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_KhachHang]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_Users] FOREIGN KEY([Id_User])
REFERENCES [dbo].[Users] ([Id_User])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_Users]
GO
ALTER TABLE [dbo].[HoaDonChiTiet]  WITH CHECK ADD  CONSTRAINT [FK_HoaDonChiTiet_GiayTheThaoChiTiet] FOREIGN KEY([Id_GiayTheThaoChiTiet])
REFERENCES [dbo].[GiayTheThaoChiTiet] ([Id_GiayTheThaoChiTiet])
GO
ALTER TABLE [dbo].[HoaDonChiTiet] CHECK CONSTRAINT [FK_HoaDonChiTiet_GiayTheThaoChiTiet]
GO
ALTER TABLE [dbo].[HoaDonChiTiet]  WITH CHECK ADD  CONSTRAINT [FK_HoaDonChiTiet_HoaDon] FOREIGN KEY([Id_HoaDon])
REFERENCES [dbo].[HoaDon] ([Id_HoaDon])
GO
ALTER TABLE [dbo].[HoaDonChiTiet] CHECK CONSTRAINT [FK_HoaDonChiTiet_HoaDon]
GO
ALTER TABLE [dbo].[Image]  WITH CHECK ADD  CONSTRAINT [FK_Image_GiayTheThao] FOREIGN KEY([Id_GiayTheThao])
REFERENCES [dbo].[GiayTheThao] ([Id_GiayTheThao])
GO
ALTER TABLE [dbo].[Image] CHECK CONSTRAINT [FK_Image_GiayTheThao]
GO
ALTER TABLE [dbo].[PhieuGiamGiaHoaDonChiTiet]  WITH CHECK ADD  CONSTRAINT [FK_PhieuGiamGiaHoaDonChiTiet_HoaDon] FOREIGN KEY([Id_HoaDon])
REFERENCES [dbo].[HoaDon] ([Id_HoaDon])
GO
ALTER TABLE [dbo].[PhieuGiamGiaHoaDonChiTiet] CHECK CONSTRAINT [FK_PhieuGiamGiaHoaDonChiTiet_HoaDon]
GO
ALTER TABLE [dbo].[PhieuGiamGiaHoaDonChiTiet]  WITH CHECK ADD  CONSTRAINT [FK_PhieuGiamGiaHoaDonChiTiet_PhieuGiamGiaHoaDon] FOREIGN KEY([Id_PhieuGiamGiaHoaDon])
REFERENCES [dbo].[PhieuGiamGiaHoaDon] ([Id_PhieuGiamGiaHoaDon])
GO
ALTER TABLE [dbo].[PhieuGiamGiaHoaDonChiTiet] CHECK CONSTRAINT [FK_PhieuGiamGiaHoaDonChiTiet_PhieuGiamGiaHoaDon]
GO
ALTER TABLE [dbo].[ViTien]  WITH CHECK ADD  CONSTRAINT [FK_ViTien_KhachHang] FOREIGN KEY([Id_KhachHang])
REFERENCES [dbo].[KhachHang] ([Id_KhachHang])
GO
ALTER TABLE [dbo].[ViTien] CHECK CONSTRAINT [FK_ViTien_KhachHang]
GO
USE [master]
GO
ALTER DATABASE [SD93_DATN] SET  READ_WRITE 
GO
