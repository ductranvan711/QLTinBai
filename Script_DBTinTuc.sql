--USE [TinTuc]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 5/7/2025 7:30:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Activity]    Script Date: 5/7/2025 7:30:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Activity](
	[Id] [uniqueidentifier] NOT NULL,
	[Title] [nvarchar](max) NULL,
	[Content] [nvarchar](max) NULL,
 CONSTRAINT [PK_Activity] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FAQ_YKien]    Script Date: 5/7/2025 7:30:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FAQ_YKien](
	[ID] [uniqueidentifier] NOT NULL,
	[ChuyenMucID] [uniqueidentifier] NULL,
	[BaiVietID] [uniqueidentifier] NULL,
	[NguoiGui] [nvarchar](250) NULL,
	[DienThoai] [varchar](100) NULL,
	[Email] [varchar](100) NULL,
	[NoiDung] [nvarchar](4000) NULL,
	[NoiDungTraLoi] [nvarchar](4000) NULL,
	[TrangThai] [int] NULL,
	[NguoiTaoLapId] [bigint] NOT NULL,
	[NguoiChinhSuaId] [bigint] NULL,
	[NgayTaoLap] [datetime2](7) NULL,
	[NgayChinhSua] [datetime2](7) NULL,
	[DanhDau] [varchar](50) NULL,
	[NgayTraLoi] [datetime2](7) NULL,
	[CoQuanTraLoi] [nvarchar](250) NULL,
	[Loai] [tinyint] NULL,
	[TepDinhKem] [nvarchar](1000) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Permission_Category]    Script Date: 5/7/2025 7:30:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Permission_Category](
	[UserID] [bigint] NOT NULL,
	[ChuyenMucID] [uniqueidentifier] NOT NULL,
	[Loai] [int] NOT NULL,
	[ApDungChoCapCon] [bit] NULL,
 CONSTRAINT [PK_Permission_Category] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC,
	[ChuyenMucID] ASC,
	[Loai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Permission_Menu]    Script Date: 5/7/2025 7:30:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Permission_Menu](
	[ID] [tinyint] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](200) NULL,
	[MenuID] [tinyint] NULL,
	[PermittedEdit] [bit] NULL,
	[PermittedDelete] [bit] NULL,
	[PermittedApprove] [bit] NULL,
	[PermittedCreate] [bit] NULL,
 CONSTRAINT [PK_Permission] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RoleClaims]    Script Date: 5/7/2025 7:30:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [bigint] NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_RoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 5/7/2025 7:30:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[RoleDescription] [nvarchar](100) NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_AdminMenu]    Script Date: 5/7/2025 7:30:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_AdminMenu](
	[ID] [tinyint] IDENTITY(1,1) NOT NULL,
	[ParentID] [int] NULL,
	[AreaName] [varchar](50) NULL,
	[ControllerName] [varchar](50) NULL,
	[ActionName] [varchar](50) NULL,
	[Title] [nvarchar](50) NULL,
	[IsLeaf] [bit] NULL,
	[IsShow] [bit] NULL,
	[Icon] [varchar](100) NULL,
	[DisplayOrder] [int] NULL,
 CONSTRAINT [PK_AdminMenu] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_BaiViet]    Script Date: 5/7/2025 7:30:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_BaiViet](
	[ID] [uniqueidentifier] NOT NULL,
	[TieuDe] [nvarchar](250) NOT NULL,
	[AnhDaiDien] [nvarchar](500) NULL,
	[Thumbnail] [nvarchar](500) NULL,
	[MoTaAnhDaiDien] [nvarchar](200) NULL,
	[TomTat] [nvarchar](500) NULL,
	[NoiDung] [ntext] NOT NULL,
	[TieuDiem] [bit] NULL,
	[ThuTuHienThi] [int] NULL,
	[URLBaiViet] [varchar](250) NULL,
	[NgayCongBo] [datetime] NULL,
	[HetHanCongBo] [datetime] NULL,
	[NguonTin] [nvarchar](250) NULL,
	[TacGia] [nvarchar](250) NULL,
	[TacQuyen] [nvarchar](250) NULL,
	[NgonNgu] [nvarchar](50) NULL,
	[LuotXem] [int] NULL,
	[TuKhoa] [nvarchar](250) NULL,
	[TrangThai] [int] NULL,
	[ChuyenMucID] [uniqueidentifier] NOT NULL,
	[ChuyenMucKhacID] [varchar](500) NULL,
	[CreatedOnDate] [datetime] NULL,
	[LastModifiedOnDate] [datetime] NULL,
	[CreatedByUserID] [bigint] NULL,
	[LastModifiedByUserID] [bigint] NULL,
	[DienThoai] [varchar](20) NULL,
	[Email] [varchar](100) NULL,
	[DiaChi] [nvarchar](200) NULL,
	[Website] [varchar](200) NULL,
	[GioMoCua] [time](7) NULL,
	[GioDongCua] [time](7) NULL,
	[ToaDoX] [float] NULL,
	[ToaDoY] [float] NULL,
 CONSTRAINT [PK_QLTT_TinBai] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_ChuyenMuc]    Script Date: 5/7/2025 7:30:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_ChuyenMuc](
	[ID] [uniqueidentifier] NOT NULL,
	[TenChuyenMuc] [nvarchar](100) NOT NULL,
	[ChuyenMucCapChaID] [uniqueidentifier] NULL,
	[BieuTuong] [nvarchar](200) NULL,
	[AnhDaiDien] [nvarchar](200) NULL,
	[MaChuyenMuc] [nchar](10) NULL,
	[MoTaAnhDaiDien] [nvarchar](100) NULL,
	[MoTa] [nvarchar](500) NULL,
	[NoiDung] [nvarchar](1000) NULL,
	[SuDung] [bit] NULL,
	[ThuTuHienThi] [int] NULL,
	[URLChuyenMuc] [varchar](100) NULL,
	[MoLienKetOCuaSoMoi] [bit] NULL,
	[LoaiLienKet] [tinyint] NULL,
	[DiaChiLienKet] [nvarchar](500) NULL,
	[NgonNgu] [nvarchar](50) NULL,
	[CreatedByUserID] [bigint] NULL,
	[LastModifiedByUserID] [bigint] NULL,
	[CreatedOnDate] [datetime] NULL,
	[LastModifiedOnDate] [datetime] NULL,
	[IsMenu] [bit] NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_QLTT_ChuyenMuc] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_ChuyenMucHoiDap]    Script Date: 5/7/2025 7:30:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_ChuyenMucHoiDap](
	[ID] [uniqueidentifier] NOT NULL,
	[TenChuyenMuc] [nvarchar](1000) NULL,
	[TenVietTat] [nvarchar](100) NULL,
	[MoTa] [nvarchar](4000) NULL,
	[SuDung] [bit] NULL,
	[ThuTuHienThi] [int] NULL,
	[NguoiTao] [bigint] NULL,
	[NgayTao] [datetime] NULL,
	[NguoiCapNhat] [bigint] NULL,
	[NgayCapNhat] [datetime] NULL,
	[NgonNgu] [nvarchar](50) NULL,
	[URLChuyenMuc] [varchar](100) NULL,
	[ViewID] [smallint] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_Media]    Script Date: 5/7/2025 7:30:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_Media](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TieuDe] [nvarchar](250) NULL,
	[MoTa] [nvarchar](200) NULL,
	[LuotTai] [int] NULL,
	[TenFileMedia] [nvarchar](100) NULL,
	[DuongDan] [nvarchar](200) NULL,
	[LoaiFileMedia] [int] NULL,
	[BaiVietID] [uniqueidentifier] NULL,
	[CreatedOnDate] [datetime] NULL,
	[LastModifiedOnDate] [datetime] NULL,
	[ThuTuHienThi] [int] NULL,
 CONSTRAINT [PK_QLTT_Media] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_ThietLapCauHinh]    Script Date: 5/7/2025 7:30:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_ThietLapCauHinh](
	[ID] [tinyint] IDENTITY(1,1) NOT NULL,
	[TenTieuChi] [varchar](250) NULL,
	[Loai] [tinyint] NULL,
	[SuDung] [bit] NULL,
	[MoTa] [nvarchar](4000) NULL,
	[TenLoai] [varchar](250) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_ThongSoCauHinh]    Script Date: 5/7/2025 7:30:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_ThongSoCauHinh](
	[ID] [uniqueidentifier] NOT NULL,
	[MaView] [smallint] NOT NULL,
	[MaTieuChi] [tinyint] NOT NULL,
	[GiaTriThietLap] [nvarchar](4000) NULL,
	[NguoiTao] [bigint] NULL,
	[NgayTao] [datetime] NULL,
	[NguoiCapNhat] [bigint] NULL,
	[NgayCapNhat] [datetime] NULL,
	[TenThongSo] [nvarchar](4000) NULL,
	[ThuTuHienThi] [int] NULL,
	[DuLieuLienKet] [tinyint] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_TinLienQuan]    Script Date: 5/7/2025 7:30:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_TinLienQuan](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[BaiVietID] [uniqueidentifier] NOT NULL,
	[BaiVietLienQuanID] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_QLTT_TinLienQuan] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_View]    Script Date: 5/7/2025 7:30:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_View](
	[ID] [smallint] IDENTITY(1,1) NOT NULL,
	[TenView] [varchar](250) NOT NULL,
	[MoTa] [nvarchar](4000) NULL,
	[DuongDan] [varchar](250) NULL,
	[Area] [varchar](250) NULL,
	[Controller] [varchar](250) NULL,
	[Action] [varchar](250) NULL,
	[ViewCapChaID] [smallint] NULL,
	[SuDung] [bit] NULL,
	[NguoiTao] [bigint] NULL,
	[NgayTao] [datetime] NULL,
	[NguoiCapNhat] [bigint] NULL,
	[NgayCapNhat] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserClaims]    Script Date: 5/7/2025 7:30:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [bigint] NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_UserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserLogins]    Script Date: 5/7/2025 7:30:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [bigint] NOT NULL,
 CONSTRAINT [PK_UserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserRoles]    Script Date: 5/7/2025 7:30:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserRoles](
	[UserId] [bigint] NOT NULL,
	[RoleId] [bigint] NOT NULL,
 CONSTRAINT [PK_UserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 5/7/2025 7:30:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[DisplayName] [nvarchar](max) NULL,
	[Bio] [nvarchar](max) NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[OrgUniqueCode] [nvarchar](max) NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserTokens]    Script Date: 5/7/2025 7:30:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserTokens](
	[UserId] [bigint] NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_UserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230921012333_UpdateUsers', N'7.0.12')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231109030823_ThemMaCoQuanChoUser', N'7.0.12')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231123090816_AddRoleDescription', N'7.0.12')
GO
INSERT [dbo].[FAQ_YKien] ([ID], [ChuyenMucID], [BaiVietID], [NguoiGui], [DienThoai], [Email], [NoiDung], [NoiDungTraLoi], [TrangThai], [NguoiTaoLapId], [NguoiChinhSuaId], [NgayTaoLap], [NgayChinhSua], [DanhDau], [NgayTraLoi], [CoQuanTraLoi], [Loai], [TepDinhKem]) VALUES (N'443e0cf7-f03f-4479-bd21-08fe92cbc326', NULL, NULL, N'Huỳnh Văn D', NULL, N'huynhvand@gmail.com', N'Về không gian văn phòng: Không gian thoải mái và phù hợp, kích thích tinh thần làm việc. 
Về chi phí: Mức chi phí ở Trung tâm vô cùng hợp lý đi kèm cùng nhiều tiện ích và dịch vụ chu đáo. Tôi có thể hoàn toàn sử dụng phòng họp, sảnh tiếp khách trong quá trình làm việc. Với một mức giá thuê văn phòng theo tôi là rất hợp lý tại khu vực vàng của thành phố Huế, rõ ràng tôi nhận lại được nhiều giá trị hơn.', NULL, 0, 0, NULL, CAST(N'2024-04-16T11:10:56.9333333' AS DateTime2), NULL, NULL, NULL, NULL, 0, NULL)
INSERT [dbo].[FAQ_YKien] ([ID], [ChuyenMucID], [BaiVietID], [NguoiGui], [DienThoai], [Email], [NoiDung], [NoiDungTraLoi], [TrangThai], [NguoiTaoLapId], [NguoiChinhSuaId], [NgayTaoLap], [NgayChinhSua], [DanhDau], [NgayTraLoi], [CoQuanTraLoi], [Loai], [TepDinhKem]) VALUES (N'82f47387-98d6-4f10-8e39-23d3ef003146', N'90e87dcf-4d52-4811-b9cb-6bc4810829ad', NULL, N'Nguyễn Văn C', N'', N'nguyenvanc@gmail.com', N'Bởi vậy bạn cần xác định rõ ràng mục đích đặt câu hỏi để chắc chắn rằng câu hỏi ấy sẽ mang lại những dữ liệu cần thiết phục vụ cho công tác chăm sóc khách hàng. Phần lớn các khách hàng B2B đều tìm kiếm và mua những giải pháp để hỗ trợ cho hoạt động sản xuất kinh doanh của họ. Bởi vậy hãy tập trung vào những câu hỏi có thể khai thác được những vấn đề, pain point của họ', N'<p><strong>Kính gửi &ocirc;ng C,</strong></p>

<p>V&iacute; dụ, khi đặt c&acirc;u hỏi để tư vấn phần mềm quản trị cho doanh nghiệp, mục đ&iacute;ch cần đạt được ở đ&acirc;y l&agrave; thu thập được những kh&oacute; khăn m&agrave; c&aacute;c CEO/Manager gặp phải trong qu&aacute; tr&igrave;nh vận h&agrave;nh doanh nghiệp khi kh&ocirc;ng c&oacute; c&ocirc;ng cụ hỗ trợ.</p>

<p style="text-align:center"><img alt="" src="/Upload/HoiDap/2024/2024/HueCIT_QLVanBanDieuHanh_1718787300.jpg" style="height:375px; width:500px" /></p>
', 2, 2, 2, CAST(N'2024-06-17T17:34:25.1533333' AS DateTime2), CAST(N'2024-06-19T15:55:14.4433333' AS DateTime2), NULL, CAST(N'2024-06-19T00:00:00.0000000' AS DateTime2), NULL, 1, N'/Upload\YKienPhanHoi\000.00.14.H57\2024\HueCIT_QLVanBanDieuHanh_1718870210.jpg')
INSERT [dbo].[FAQ_YKien] ([ID], [ChuyenMucID], [BaiVietID], [NguoiGui], [DienThoai], [Email], [NoiDung], [NoiDungTraLoi], [TrangThai], [NguoiTaoLapId], [NguoiChinhSuaId], [NgayTaoLap], [NgayChinhSua], [DanhDau], [NgayTraLoi], [CoQuanTraLoi], [Loai], [TepDinhKem]) VALUES (N'eba6fbab-93ca-4524-bec8-3f6e81f101bb', N'045867c2-c96e-4d48-8d00-439729dd0228', NULL, N'Nguyễn Văn A', N'', N'nguyenvana@gmail.com', N'Lương, phụ cấp của nhà giáo thấp,
dẫn đến tình trạng giáo viên không
yên tâm công tác, … kính mong Bộ
trưởng có giải pháp nâng cao thu nhập
cho đội ngũ đảm bảo cuộc sống!', N'<p><strong>Kính gửi &ocirc;ng A,</strong></p>

<p>Nh&agrave; gi&aacute;o v&agrave; c&aacute;n bộ quản l&yacute; gi&aacute;o dục được hưởng c&aacute;c ch&iacute;nh s&aacute;ch bao gồm: lương, phụ cấp th&acirc;m ni&ecirc;n vượt khung, phụ cấp chức vụ l&atilde;nh đạo (nếu c&oacute;), phụ cấp khu vực, phụ cấp ưu đ&atilde;i, phụ cấp th&acirc;m ni&ecirc;n v&agrave; một số ch&iacute;nh s&aacute;ch kh&aacute;c. Đối với nh&agrave; gi&aacute;o v&agrave; c&aacute;n bộ quản l&yacute; gi&aacute;o dục c&ocirc;ng t&aacute;c tại miền n&uacute;i, v&ugrave;ng cao, v&ugrave;ng c&oacute; điều kiện kinh tế - x&atilde; hội đặc biệt kh&oacute; khăn được hưởng một số ưu đ&atilde;i như: được hưởng phụ cấp ưu đ&atilde;i với mức cao hơn so với c&aacute;c nh&agrave; gi&aacute;o dạy ở đồng bằng, th&agrave;nh phố; được hưởng th&ecirc;m một số chế độ phụ cấp, trợ cấp kh&aacute;c như phụ cấp thu h&uacute;t; phụ cấp c&ocirc;ng t&aacute;c l&acirc;u năm; trợ cấp lần đầu; trợ cấp một lần khi chuyển c&ocirc;ng t&aacute;c ra khỏi v&ugrave;ng c&oacute; điều kiện kinh tế - x&atilde; hội đặc biệt kh&oacute; khăn; thanh to&aacute;n tiền t&agrave;u xe khi nghỉ ph&eacute;p hoặc nghỉ tết h&agrave;ng năm, phụ cấp tiền mua v&agrave; vận chuyển nước ngọt, nước sạch; phụ cấp lưu động, trợ cấp tham quan, học tập, bồi dưỡng chuy&ecirc;n m&ocirc;n, nghiệp vụ</p>
', 2, 2, 2, CAST(N'2024-06-19T13:47:30.9800000' AS DateTime2), CAST(N'2024-06-19T15:53:25.6000000' AS DateTime2), NULL, CAST(N'2024-06-19T00:00:00.0000000' AS DateTime2), NULL, 1, N'/Upload\YKienPhanHoi\000.00.14.H57\2024\HueCIT_QLVanBanDieuHanh_1718870210.jpg')
INSERT [dbo].[FAQ_YKien] ([ID], [ChuyenMucID], [BaiVietID], [NguoiGui], [DienThoai], [Email], [NoiDung], [NoiDungTraLoi], [TrangThai], [NguoiTaoLapId], [NguoiChinhSuaId], [NgayTaoLap], [NgayChinhSua], [DanhDau], [NgayTraLoi], [CoQuanTraLoi], [Loai], [TepDinhKem]) VALUES (N'f33fd9bc-0d08-4ffd-bb62-680eecd4ba80', NULL, NULL, N'Nguyễn Văn A', N'789652', N'nva@gmail.com', N'HueCIT nằm ở trung tâm thành phố, nên khách hàng tìm đến văn phòng rất dễ dàng. Tòa nhà mặc dù xây dựng đã lâu, nhưng bù lại cơ sở vật chất đầy đủ tiện nghi, sạch sẽ, gợi ý cần hay hỏi mượn gì Trung tâm cũng sẵn sàng cho mượn đầy đủ. Mọi người ở tòa nhà cực kỳ thân thiện, dễ thương, bất kể khi nào gặp ai cũng tỏa ra nguồn năng lượng tích cực, luôn lắng nghe và xử lý yêu cầu của khách hàng nhanh chóng.', NULL, 2, 2, 2, CAST(N'2024-04-16T08:32:21.2433333' AS DateTime2), CAST(N'2024-04-16T11:03:38.8000000' AS DateTime2), NULL, NULL, NULL, 0, NULL)
INSERT [dbo].[FAQ_YKien] ([ID], [ChuyenMucID], [BaiVietID], [NguoiGui], [DienThoai], [Email], [NoiDung], [NoiDungTraLoi], [TrangThai], [NguoiTaoLapId], [NguoiChinhSuaId], [NgayTaoLap], [NgayChinhSua], [DanhDau], [NgayTraLoi], [CoQuanTraLoi], [Loai], [TepDinhKem]) VALUES (N'6f8c0fbd-8cc3-4cac-b89f-8044b4175002', NULL, NULL, N'Nguyễn Thị M', N'789516', N'nguyenthim@gmail.com', N'Về cơ sở hạ tầng tại HueCIT tuy không quá hiện đại nhưng lúc nào cũng thấy rất sạch sẽ, đặc biệt về chăm sóc khách hàng thì lúc nào cũng hỗ trợ rất kịp thời, ai cũng nhiệt tình, thêm các bác bảo vệ, dì dọn vệ sinh ai cũng dễ thương.', N'<p>Y&ecirc;n tĩnh, sạch sẽ, dịch vụ chăm s&oacute;c kh&aacute;ch h&agrave;ng tận t&igrave;nh, cơ sở vật chất ổn định. N&oacute;i chung, t&ocirc;i rất h&agrave;i l&ograve;ng về chất lượng phục vụ của HueCIT.</p>
', 2, 2, 2, CAST(N'2024-04-16T08:45:49.6700000' AS DateTime2), CAST(N'2024-04-16T11:01:36.0200000' AS DateTime2), NULL, CAST(N'2024-04-16T00:00:00.0000000' AS DateTime2), NULL, 0, NULL)
INSERT [dbo].[FAQ_YKien] ([ID], [ChuyenMucID], [BaiVietID], [NguoiGui], [DienThoai], [Email], [NoiDung], [NoiDungTraLoi], [TrangThai], [NguoiTaoLapId], [NguoiChinhSuaId], [NgayTaoLap], [NgayChinhSua], [DanhDau], [NgayTraLoi], [CoQuanTraLoi], [Loai], [TepDinhKem]) VALUES (N'17f5d1ac-8d54-4035-a404-a2012588efc7', NULL, NULL, N'Nguyễn Thị M', N'789652', N'nguyenthim@gmail.com', N'Phản ứng của CSGT Hà Nội khi được HLV Philippe Troussier tặng vé bóng đá', NULL, 0, 2, NULL, CAST(N'2024-04-19T11:38:27.4066667' AS DateTime2), NULL, NULL, NULL, NULL, 0, NULL)
INSERT [dbo].[FAQ_YKien] ([ID], [ChuyenMucID], [BaiVietID], [NguoiGui], [DienThoai], [Email], [NoiDung], [NoiDungTraLoi], [TrangThai], [NguoiTaoLapId], [NguoiChinhSuaId], [NgayTaoLap], [NgayChinhSua], [DanhDau], [NgayTraLoi], [CoQuanTraLoi], [Loai], [TepDinhKem]) VALUES (N'eaf520e9-24d7-41c2-a71f-bb27c594f82f', NULL, NULL, N'Nguyễn Văn C', NULL, N'nguyenvanc@gmail.com', N'Trung tâm có chỗ để xe ô tô thoải mái, xử lý yêu cầu của khách hàng nhanh chóng. Thái độ của anh chị em phía Trung tâm với khách hàng vui vẻ, nhiệt tình, luôn lắng nghe ý kiến khách hàng.', NULL, 0, 2, NULL, CAST(N'2024-04-16T11:12:29.7000000' AS DateTime2), NULL, NULL, NULL, NULL, 0, NULL)
GO
INSERT [dbo].[Permission_Category] ([UserID], [ChuyenMucID], [Loai], [ApDungChoCapCon]) VALUES (2, N'11930bab-964d-49eb-a089-2822e94845d9', 1, NULL)
INSERT [dbo].[Permission_Category] ([UserID], [ChuyenMucID], [Loai], [ApDungChoCapCon]) VALUES (2, N'11930bab-964d-49eb-a089-2822e94845d9', 2, NULL)
INSERT [dbo].[Permission_Category] ([UserID], [ChuyenMucID], [Loai], [ApDungChoCapCon]) VALUES (2, N'11930bab-964d-49eb-a089-2822e94845d9', 3, NULL)
INSERT [dbo].[Permission_Category] ([UserID], [ChuyenMucID], [Loai], [ApDungChoCapCon]) VALUES (2, N'fee4c680-5952-4b0a-ab24-5eefd52baee7', 1, 1)
INSERT [dbo].[Permission_Category] ([UserID], [ChuyenMucID], [Loai], [ApDungChoCapCon]) VALUES (2, N'fee4c680-5952-4b0a-ab24-5eefd52baee7', 2, 1)
INSERT [dbo].[Permission_Category] ([UserID], [ChuyenMucID], [Loai], [ApDungChoCapCon]) VALUES (2, N'fee4c680-5952-4b0a-ab24-5eefd52baee7', 3, 1)
INSERT [dbo].[Permission_Category] ([UserID], [ChuyenMucID], [Loai], [ApDungChoCapCon]) VALUES (2, N'6eee995f-d0f9-4951-8882-706cf843c0be', 1, NULL)
INSERT [dbo].[Permission_Category] ([UserID], [ChuyenMucID], [Loai], [ApDungChoCapCon]) VALUES (2, N'6eee995f-d0f9-4951-8882-706cf843c0be', 2, NULL)
INSERT [dbo].[Permission_Category] ([UserID], [ChuyenMucID], [Loai], [ApDungChoCapCon]) VALUES (2, N'6eee995f-d0f9-4951-8882-706cf843c0be', 3, NULL)
INSERT [dbo].[Permission_Category] ([UserID], [ChuyenMucID], [Loai], [ApDungChoCapCon]) VALUES (10023, N'b51f7635-9fb5-4494-95a3-10b57d0b5cf4', 2, NULL)
INSERT [dbo].[Permission_Category] ([UserID], [ChuyenMucID], [Loai], [ApDungChoCapCon]) VALUES (10023, N'b51f7635-9fb5-4494-95a3-10b57d0b5cf4', 3, NULL)
GO
SET IDENTITY_INSERT [dbo].[Permission_Menu] ON 

INSERT [dbo].[Permission_Menu] ([ID], [RoleName], [MenuID], [PermittedEdit], [PermittedDelete], [PermittedApprove], [PermittedCreate]) VALUES (0, N'SystemAdmin', 28, 1, 1, 1, 1)
INSERT [dbo].[Permission_Menu] ([ID], [RoleName], [MenuID], [PermittedEdit], [PermittedDelete], [PermittedApprove], [PermittedCreate]) VALUES (6, N'Host', 25, 1, 1, 1, 1)
INSERT [dbo].[Permission_Menu] ([ID], [RoleName], [MenuID], [PermittedEdit], [PermittedDelete], [PermittedApprove], [PermittedCreate]) VALUES (7, N'SystemAdmin', 24, 1, 1, 0, 1)
INSERT [dbo].[Permission_Menu] ([ID], [RoleName], [MenuID], [PermittedEdit], [PermittedDelete], [PermittedApprove], [PermittedCreate]) VALUES (8, N'SystemAdmin', 48, 1, 1, 1, 1)
INSERT [dbo].[Permission_Menu] ([ID], [RoleName], [MenuID], [PermittedEdit], [PermittedDelete], [PermittedApprove], [PermittedCreate]) VALUES (14, N'Admin', 24, 1, 1, 0, 1)
INSERT [dbo].[Permission_Menu] ([ID], [RoleName], [MenuID], [PermittedEdit], [PermittedDelete], [PermittedApprove], [PermittedCreate]) VALUES (15, N'Admin', 25, 1, 1, 0, 1)
INSERT [dbo].[Permission_Menu] ([ID], [RoleName], [MenuID], [PermittedEdit], [PermittedDelete], [PermittedApprove], [PermittedCreate]) VALUES (26, N'SystemAdmin', 49, 1, 1, 1, 1)
INSERT [dbo].[Permission_Menu] ([ID], [RoleName], [MenuID], [PermittedEdit], [PermittedDelete], [PermittedApprove], [PermittedCreate]) VALUES (27, N'SystemAdmin', 25, 1, 1, 1, 1)
INSERT [dbo].[Permission_Menu] ([ID], [RoleName], [MenuID], [PermittedEdit], [PermittedDelete], [PermittedApprove], [PermittedCreate]) VALUES (50, N'Editor', 25, 1, 1, 0, 1)
INSERT [dbo].[Permission_Menu] ([ID], [RoleName], [MenuID], [PermittedEdit], [PermittedDelete], [PermittedApprove], [PermittedCreate]) VALUES (51, N'Editor', 75, 1, 0, 0, 1)
INSERT [dbo].[Permission_Menu] ([ID], [RoleName], [MenuID], [PermittedEdit], [PermittedDelete], [PermittedApprove], [PermittedCreate]) VALUES (54, N'Editor', 78, 0, 0, 0, 0)
SET IDENTITY_INSERT [dbo].[Permission_Menu] OFF
GO
SET IDENTITY_INSERT [dbo].[Roles] ON 

INSERT [dbo].[Roles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp], [RoleDescription]) VALUES (1, N'Host', N'HOST', NULL, N'Host')
INSERT [dbo].[Roles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp], [RoleDescription]) VALUES (2, N'SystemAdmin', NULL, NULL, N'Quản trị hệ thống')
INSERT [dbo].[Roles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp], [RoleDescription]) VALUES (3, N'Admin', N'ADMIN', NULL, N'Quản trị viên')
INSERT [dbo].[Roles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp], [RoleDescription]) VALUES (4, N'Editor', N'EDITOR', NULL, N'Biên tập viên')
INSERT [dbo].[Roles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp], [RoleDescription]) VALUES (5, N'Register', N'REGISTER', NULL, N'CBCCVC')
SET IDENTITY_INSERT [dbo].[Roles] OFF
GO
SET IDENTITY_INSERT [dbo].[TB_AdminMenu] ON 

INSERT [dbo].[TB_AdminMenu] ([ID], [ParentID], [AreaName], [ControllerName], [ActionName], [Title], [IsLeaf], [IsShow], [Icon], [DisplayOrder]) VALUES (23, NULL, N'', N'', N'', N'Quản lý nội dung', 0, 1, N'icon-fluent icon_fluent_apps_regular', 1)
INSERT [dbo].[TB_AdminMenu] ([ID], [ParentID], [AreaName], [ControllerName], [ActionName], [Title], [IsLeaf], [IsShow], [Icon], [DisplayOrder]) VALUES (24, 23, N'AdminTool', N'ChuyenMuc', N'Index', N'Chuyên mục', 1, 1, N'', 2)
INSERT [dbo].[TB_AdminMenu] ([ID], [ParentID], [AreaName], [ControllerName], [ActionName], [Title], [IsLeaf], [IsShow], [Icon], [DisplayOrder]) VALUES (25, 23, N'AdminTool', N'BaiViet', N'Index', N'Bài viết', 1, 1, N'', 3)
INSERT [dbo].[TB_AdminMenu] ([ID], [ParentID], [AreaName], [ControllerName], [ActionName], [Title], [IsLeaf], [IsShow], [Icon], [DisplayOrder]) VALUES (27, NULL, N'', N'', N'', N'Người dùng - Phân quyền', 0, 1, N'icon-fluent icon_fluent_people_settings_regular', 9)
INSERT [dbo].[TB_AdminMenu] ([ID], [ParentID], [AreaName], [ControllerName], [ActionName], [Title], [IsLeaf], [IsShow], [Icon], [DisplayOrder]) VALUES (28, 27, N'AdminTool', N'Account', N'Index', N'Danh sách tài khoản', 1, 1, N'', 5)
INSERT [dbo].[TB_AdminMenu] ([ID], [ParentID], [AreaName], [ControllerName], [ActionName], [Title], [IsLeaf], [IsShow], [Icon], [DisplayOrder]) VALUES (48, 27, N'AdminTool', N'Menu', N'Index', N'Danh sách menu', 1, 1, N'', 6)
INSERT [dbo].[TB_AdminMenu] ([ID], [ParentID], [AreaName], [ControllerName], [ActionName], [Title], [IsLeaf], [IsShow], [Icon], [DisplayOrder]) VALUES (49, 27, N'AdminTool', N'Role', N'Index', N'Danh sách vai trò', 1, 1, N'', 7)
INSERT [dbo].[TB_AdminMenu] ([ID], [ParentID], [AreaName], [ControllerName], [ActionName], [Title], [IsLeaf], [IsShow], [Icon], [DisplayOrder]) VALUES (66, NULL, N'', N'', N'', N'Cấu hình trình diễn', 0, 1, N'icon-fluent icon_fluent_settings_regular', 8)
INSERT [dbo].[TB_AdminMenu] ([ID], [ParentID], [AreaName], [ControllerName], [ActionName], [Title], [IsLeaf], [IsShow], [Icon], [DisplayOrder]) VALUES (67, 66, N'AdminTool', N'View', N'Index', N'Quản lý trình diễn', 1, 1, N'icon-fluent icon_fluent_preview_link_regular', 12)
INSERT [dbo].[TB_AdminMenu] ([ID], [ParentID], [AreaName], [ControllerName], [ActionName], [Title], [IsLeaf], [IsShow], [Icon], [DisplayOrder]) VALUES (73, NULL, N'', N'', N'', N'Trang chủ', 0, 1, N'icon-fluent icon_fluent_home_regular', 0)
INSERT [dbo].[TB_AdminMenu] ([ID], [ParentID], [AreaName], [ControllerName], [ActionName], [Title], [IsLeaf], [IsShow], [Icon], [DisplayOrder]) VALUES (74, 66, N'AdminTool', N'ThietLapCH', N'Index', N'Thông số cấu hình', 1, 1, N'icon-fluent icon_fluent_content_settings_regular', 10)
INSERT [dbo].[TB_AdminMenu] ([ID], [ParentID], [AreaName], [ControllerName], [ActionName], [Title], [IsLeaf], [IsShow], [Icon], [DisplayOrder]) VALUES (75, 23, N'AdminTool', N'BaiViet', N'Edit', N'Cập nhật bài viết', 1, 0, N'', 4)
INSERT [dbo].[TB_AdminMenu] ([ID], [ParentID], [AreaName], [ControllerName], [ActionName], [Title], [IsLeaf], [IsShow], [Icon], [DisplayOrder]) VALUES (77, 23, N'AdminTool', N'ChuyenMuc', N'Edit', N'Cập nhật chuyên mục', 1, 0, N'', 6)
INSERT [dbo].[TB_AdminMenu] ([ID], [ParentID], [AreaName], [ControllerName], [ActionName], [Title], [IsLeaf], [IsShow], [Icon], [DisplayOrder]) VALUES (78, 73, N'AdminTool', N'Home', N'Index', N'Trang chủ CMS', 1, 1, N'', 1)
INSERT [dbo].[TB_AdminMenu] ([ID], [ParentID], [AreaName], [ControllerName], [ActionName], [Title], [IsLeaf], [IsShow], [Icon], [DisplayOrder]) VALUES (79, 27, N'AdminTool', N'ChuyenMuc', N'PhanQuyen', N'Phân quyền chuyên mục', 1, 1, N'', 8)
INSERT [dbo].[TB_AdminMenu] ([ID], [ParentID], [AreaName], [ControllerName], [ActionName], [Title], [IsLeaf], [IsShow], [Icon], [DisplayOrder]) VALUES (80, 66, N'AdminTool', N'ThongSoCH', N'Index', N'Thiết lập cấu hình', 1, 1, N'icon-fluent icon_fluent_apps_list_detail_regular', 13)
INSERT [dbo].[TB_AdminMenu] ([ID], [ParentID], [AreaName], [ControllerName], [ActionName], [Title], [IsLeaf], [IsShow], [Icon], [DisplayOrder]) VALUES (81, NULL, N'', N'', N'', N'Thống kê', 0, 1, N'icon-fluent icon_fluent_chart_multiple_regular', 4)
INSERT [dbo].[TB_AdminMenu] ([ID], [ParentID], [AreaName], [ControllerName], [ActionName], [Title], [IsLeaf], [IsShow], [Icon], [DisplayOrder]) VALUES (82, 81, N'AdminTool', N'ThongKe', N'ThongKeBaiViet', N'Bài viết', 1, 1, N'', 0)
INSERT [dbo].[TB_AdminMenu] ([ID], [ParentID], [AreaName], [ControllerName], [ActionName], [Title], [IsLeaf], [IsShow], [Icon], [DisplayOrder]) VALUES (83, NULL, N'', N'', N'', N'Quản lý tiện ích', 0, 1, N'icon-fluent icon_fluent_person_feedback_regular', 3)
INSERT [dbo].[TB_AdminMenu] ([ID], [ParentID], [AreaName], [ControllerName], [ActionName], [Title], [IsLeaf], [IsShow], [Icon], [DisplayOrder]) VALUES (84, 83, N'AdminTool', N'Feedback', N'YKienPhanHoi', N'Góp ý, ý kiến', 1, 1, N'', 0)
INSERT [dbo].[TB_AdminMenu] ([ID], [ParentID], [AreaName], [ControllerName], [ActionName], [Title], [IsLeaf], [IsShow], [Icon], [DisplayOrder]) VALUES (85, 83, N'AdminTool', N'Feedback', N'HoiDap', N'Hỏi đáp', 1, 1, N'', 1)
INSERT [dbo].[TB_AdminMenu] ([ID], [ParentID], [AreaName], [ControllerName], [ActionName], [Title], [IsLeaf], [IsShow], [Icon], [DisplayOrder]) VALUES (86, 23, N'AdminTool', N'ChuyenMucHoiDap', N'Index', N'Chuyên mục hỏi đáp', 1, 1, N'', 2)
SET IDENTITY_INSERT [dbo].[TB_AdminMenu] OFF
GO
INSERT [dbo].[TB_BaiViet] ([ID], [TieuDe], [AnhDaiDien], [Thumbnail], [MoTaAnhDaiDien], [TomTat], [NoiDung], [TieuDiem], [ThuTuHienThi], [URLBaiViet], [NgayCongBo], [HetHanCongBo], [NguonTin], [TacGia], [TacQuyen], [NgonNgu], [LuotXem], [TuKhoa], [TrangThai], [ChuyenMucID], [ChuyenMucKhacID], [CreatedOnDate], [LastModifiedOnDate], [CreatedByUserID], [LastModifiedByUserID], [DienThoai], [Email], [DiaChi], [Website], [GioMoCua], [GioDongCua], [ToaDoX], [ToaDoY]) VALUES (N'94647dac-fcbb-458b-a968-00bfa014fdaa', N'BTC Festival Huế 2024 ký kết hợp đồng tài trợ với Vietnam Airlines trị giá 1,2 tỷ', N'/Upload\BaiViet\2024\le-ky-ket-hop-dong-tai-tro-giua-btc-festival-va-vietnam-airlines_1712045626.jpg', N'https://www.huefestival.com/upload/image/festivalhue/FES-2024/taitro-thanhly/kytaitro-vnairline-6.jpg', N'', N'Hôm nay, ngày 14/3/2024, vào lúc 16h00 tại hội trường UBND tỉnh Thừa Thiên Huế, BTC Festival Huế 2024 và Tổng Công ty Hàng không Việt Nam - Vietnam Airlines đã tổ chức Lễ ký kết hợp đồng tài trợ trị giá 1,2 tỷ đồng cho các hoạt động trong khuôn khổ Festival Huế 2024.', N'<p style="text-align:center"><a href="https://www.huefestival.com/upload/image/festivalhue/FES-2024/taitro-thanhly/kytaitro-vnairline-6.jpg"><img src="https://www.huefestival.com/upload/image/festivalhue/FES-2024/taitro-thanhly/kytaitro-vnairline-6.jpg" /></a></p>

<p>H&ocirc;m nay, ng&agrave;y 14/3/2024, v&agrave;o l&uacute;c 16h00 tại hội trường UBND tỉnh Thừa Thi&ecirc;n Huế, BTC Festival Huế 2024 v&agrave; Tổng C&ocirc;ng ty H&agrave;ng kh&ocirc;ng Việt Nam - Vietnam Airlines đ&atilde; tổ chức Lễ k&yacute; kết hợp đồng t&agrave;i trợ trị gi&aacute; 1,2 tỷ đồng cho c&aacute;c hoạt động trong khu&ocirc;n khổ Festival Huế 2024.</p>

<p>;</p>

<p>Festival Huế 2024 được tổ chức theo định hướng bốn m&ugrave;a, mở đầu bằng Lễ Ban S&oacute;c v&agrave;o 01/01/2024 v&agrave; kết th&uacute;c bằng Chương tr&igrave;nh Countdown v&agrave;o 31/12/2024, trong đ&oacute; điểm nhấn ch&iacute;nh l&agrave;&nbsp;<strong>Tuần lễ cao điểm Festival 2024</strong>&nbsp;với chủ đề &ldquo;Di sản văn ho&aacute; với hội nhập v&agrave; ph&aacute;t triển&rdquo; diễn ra từ ng&agrave;y 07 &ndash; 12/6/2024. Festival Huế năm nay tiếp tục khẳng định sức lan tỏa của một lễ hội văn h&oacute;a, quy tụ c&aacute;c đo&agrave;n nghệ thuật ti&ecirc;u biểu, đặc sắc của c&aacute;c v&ugrave;ng miền trong cả nước v&agrave; khắp c&aacute;c ch&acirc;u lục đến giao lưu, tr&igrave;nh diễn, hứa hẹn thu h&uacute;t h&agrave;ng trăm ng&agrave;n lượt du kh&aacute;ch trong nước v&agrave; quốc tế đến tham dự.</p>

<p style="text-align:center"><img alt="" src="https://www.huefestival.com/upload/image/festivalhue/FES-2024/taitro-thanhly/kytaitro-vnairline-3.jpg" /></p>

<p>Đến với Festival Huế 2024,&nbsp;<strong>Tổng C&ocirc;ng ty H&agrave;ng kh&ocirc;ng Việt Nam - Vietnam Airlines</strong>&nbsp;tiếp tục tham gia với danh vị&nbsp;<strong>&ldquo;Nh&agrave; vận chuyển ch&iacute;nh thức&rdquo;</strong>, trị gi&aacute;&nbsp;<strong>1,2 tỷ đồng</strong>. Đ&acirc;y cũng l&agrave;&nbsp;<strong>năm thứ 9 li&ecirc;n tiếp</strong>&nbsp;Vietnam Airlines tham gia đồng h&agrave;nh c&ugrave;ng Festival Huế. H&atilde;ng h&agrave;ng kh&ocirc;ng Quốc gia cũng sẽ đồng h&agrave;nh c&ugrave;ng Festival Huế, g&oacute;p phần truyền th&ocirc;ng định h&igrave;nh Huế l&agrave; Th&agrave;nh phố Festival đặc trưng của Việt Nam th&ocirc;ng qua c&aacute;c b&agrave;i viết giới thiệu về văn h&oacute;a, du lịch Huế; giới thiệu về Festival Huế 2024 tr&ecirc;n ấn phẩm Heritage ph&aacute;t h&agrave;nh tr&ecirc;n c&aacute;c chuyến bay v&agrave; phi&ecirc;n bản điện tử&hellip;</p>

<p style="text-align:center"><img alt="" src="https://www.huefestival.com/upload/image/festivalhue/FES-2024/taitro-thanhly/kytaitro-vnairline-2.jpg" /></p>

<p>Nhằm mục ti&ecirc;u tiếp tục chung tay c&ugrave;ng Ch&iacute;nh phủ, c&aacute;c địa phương trong việc x&uacute;c tiến c&aacute;c hoạt động du lịch, văn h&oacute;a, nghệ thuật, thể thao tạo đ&agrave; th&uacute;c đẩy phục hồi v&agrave; ph&aacute;t triển kinh tế, x&atilde; hội. Căn cứ Thỏa thuận hợp t&aacute;c to&agrave;n diện giữa UBND tỉnh Thừa Thi&ecirc;n Huế v&agrave; Tổng c&ocirc;ng ty H&agrave;ng kh&ocirc;ng Việt Nam giai đoạn 2022 - 2026, Vietnam Airlines rất vinh dự khi trở th&agrave;nh Nh&agrave; vận chuyển ch&iacute;nh thức của Festival Huế 2024.</p>

<p style="text-align:center"><img alt="" src="https://www.huefestival.com/upload/image/festivalhue/FES-2024/taitro-thanhly/kytaitro-vnairline-4.jpg" /></p>

<p>Tại buổi lễ, Vietnam Airlines cam kết sẽ phối hợp chặt chẽ, hiệu quả với Ban tổ chức Festival Huế 2024 cả trước, trong v&agrave; sau sự kiện để Festival Huế ng&agrave;y c&agrave;ng th&agrave;nh c&ocirc;ng, ghi dấu ấn đến du kh&aacute;ch trong v&agrave; ngo&agrave;i nước.</p>
', 0, NULL, N'btc-festival-hue-2024-ky-ket-hop-dong-tai-tro-voi-vietnam-airlines-tri-gia-12-ty-02042024151346', CAST(N'2024-03-14T00:00:00.000' AS DateTime), NULL, N'https://www.huefestival.com/', N'www.huefestival.com', N'', N'Tiếng việt (Việt Nam)', 0, N'', 1, N'94f2b4ce-4e63-40e5-bab6-02c662db6978', N'', CAST(N'2024-03-20T16:38:28.373' AS DateTime), CAST(N'2024-04-02T15:13:52.400' AS DateTime), 2, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TB_BaiViet] ([ID], [TieuDe], [AnhDaiDien], [Thumbnail], [MoTaAnhDaiDien], [TomTat], [NoiDung], [TieuDiem], [ThuTuHienThi], [URLBaiViet], [NgayCongBo], [HetHanCongBo], [NguonTin], [TacGia], [TacQuyen], [NgonNgu], [LuotXem], [TuKhoa], [TrangThai], [ChuyenMucID], [ChuyenMucKhacID], [CreatedOnDate], [LastModifiedOnDate], [CreatedByUserID], [LastModifiedByUserID], [DienThoai], [Email], [DiaChi], [Website], [GioMoCua], [GioDongCua], [ToaDoX], [ToaDoY]) VALUES (N'34959883-fcb4-4b60-b14f-02c38a3f8033', N'HueCIT tổ chức buổi bảo vệ đồ án khóa Lập trình web với Java K6', N'/Upload\BaiViet\2024\avata-Bao-ve-do-an-Java-K6-HueCIT.2_1712047917.jpg', N'https://huecit.vn/Portals/0/Medias/Nam2024/T3/avata-Khai-giang-TMDT-K18-HueCIT.10.jpg', N'HueCIT tổ chức buổi bảo vệ đồ án khóa Lập trình web với Java K6', N'Tham dự hội đồng chấm đồ án có Ông Đỗ Xuân Huyền, Trưởng phòng, Phòng Đào tạo và Bồi dưỡng, chủ tịch hội đồng; Bà Nguyễn Thị Thu Thủy, Chuyên viên Phòng Tư vấn Thiết kế và Sản xuất, ủy viên; Ông Trần Thanh Bình, Giảng viên Công nghệ thông tin (CNTT), giảng viên hướng dẫn đồ án của lớp; Bà Đặng Thị Nhung, Chuyên viên Phòng Đào tạo và Bồi dưỡng, thư ký hội đồng.', N'<p>aaaa</p>
', 0, NULL, N'huecit-to-chuc-buoi-bao-ve-do-an-khoa-lap-trinh-web-voi-java-k6-16042024171843', CAST(N'2024-04-01T00:00:00.000' AS DateTime), NULL, N'', N'', N'', N'Tiếng việt (Việt Nam)', 0, N'', 1, N'f120bb65-2b4e-48af-9a96-497058ebfb95', N'', CAST(N'2024-04-01T14:22:51.367' AS DateTime), CAST(N'2024-04-16T17:18:43.443' AS DateTime), 2, 2, N'', N'', N'', N'', NULL, NULL, 0, 0)
INSERT [dbo].[TB_BaiViet] ([ID], [TieuDe], [AnhDaiDien], [Thumbnail], [MoTaAnhDaiDien], [TomTat], [NoiDung], [TieuDiem], [ThuTuHienThi], [URLBaiViet], [NgayCongBo], [HetHanCongBo], [NguonTin], [TacGia], [TacQuyen], [NgonNgu], [LuotXem], [TuKhoa], [TrangThai], [ChuyenMucID], [ChuyenMucKhacID], [CreatedOnDate], [LastModifiedOnDate], [CreatedByUserID], [LastModifiedByUserID], [DienThoai], [Email], [DiaChi], [Website], [GioMoCua], [GioDongCua], [ToaDoX], [ToaDoY]) VALUES (N'fb671df3-ee01-4ec5-aff6-02f37b20a87b', N'Đoàn Thanh niên HueCIT tham gia chương trình “Tháng Ba biên giới” năm 2024', N'/Upload\BaiViet\2024\HueCIT_Thang-Ba-Bien-Gioi_Don-Bien-Phong-Vinh-Xuan-Thua-Thien-Hue-1_1713233368.jpg', N'/Upload\BaiViet\2024\HueCIT_Thang-Ba-Bien-Gioi_Don-Bien-Phong-Vinh-Xuan-Thua-Thien-Hue-1_1713233368.jpg', N'Đoàn Thanh niên HueCIT tham gia chương trình “Tháng Ba biên giới” năm 2024', N'Thiết thực triển khai các hoạt động kỷ niệm 65 năm Ngày Truyền thống Bộ đội Biên phòng (3/3/1959 - 3/3/2024), 35 năm Ngày Biên phòng toàn dân (3/3/1989 - 3/3/2024), 93 năm Ngày thành lập Đoàn TNCS Hồ Chí Minh (26/3/1931 - 26/3/2024) và Tháng Thanh niên năm 2024, ngày 17/3, Đoàn Khối Cơ quan và Doanh nghiệp tỉnh Thừa Thiên Huế tặng quà và triển khai hoạt động "Tháng Ba Biên giới" tại Đồn Biên Phòng Vinh Xuân, Bộ đội Biên phòng tỉnh Thừa Thiên Huế.', N'<p>Đ&acirc;y l&agrave; hoạt động nhằm tri &acirc;n v&agrave; hỗ trợ c&aacute;c chiến sỹ Bi&ecirc;n ph&ograve;ng tr&ecirc;n địa b&agrave;n, ph&aacute;t huy tinh thần xung k&iacute;ch thanh ni&ecirc;n của Tuổi trẻ&nbsp;Đo&agrave;n Khối Cơ quan v&agrave; Doanh nghiệp tỉnh Thừa Thi&ecirc;n Huế.</p>

<p>Tại&nbsp;buổi gặp gỡ, đồng ch&iacute; Nguyễn Hữu Tr&igrave;nh, B&iacute; thư Đo&agrave;n Khối Cơ quan v&agrave; Doanh nghiệp tỉnh nhấn mạnh về tinh thần đo&agrave;n kết v&agrave; tr&aacute;ch nhiệm của thanh ni&ecirc;n trong c&ocirc;ng t&aacute;c bảo vệ bi&ecirc;n giới, biển đảo; đồng thời b&agrave;y tỏ sự biết ơn s&acirc;u sắc đối với những nỗ lực v&agrave; hy sinh của c&aacute;c chiến sĩ&nbsp;trong việc bảo vệ bi&ecirc;n giới qu&ecirc; hương, qua đ&oacute;&nbsp;k&ecirc;u gọi c&aacute;c đo&agrave;n vi&ecirc;n thanh ni&ecirc;n trong Đo&agrave;n Khối&nbsp;c&ugrave;ng nhau chung tay g&oacute;p sức v&agrave;o c&ocirc;ng t&aacute;c bảo vệ bi&ecirc;n giới, biển đảo của Tổ quốc.</p>

<p><img alt="" src="https://huecit.vn/Portals/0/TinHoatDong/Nam2024/ThangThanhNien/HueCIT_Thang-Ba-Bien-Gioi_Don-Bien-Phong-Vinh-Xuan-Thua-Thien-Hue-3.jpg?ver=2024-03-18-153135-680" title="" /></p>

<p><em>Trao tặng c&aacute;c phần qu&agrave; cho&nbsp;Đồn Bi&ecirc;n Ph&ograve;ng Vinh Xu&acirc;n, Bộ đội Bi&ecirc;n ph&ograve;ng tỉnh Thừa Thi&ecirc;n Huế</em></p>

<p>Trong kh&ocirc;ng kh&iacute; vui tươi, nhiệt huyết của tuổi trẻ Th&aacute;ng Ba, Đo&agrave;n Khối Cơ quan v&agrave; Doanh nghiệp tỉnh đ&atilde; trao tặng đ&egrave;n năng lượng mặt trời v&agrave; m&aacute;y in cho Đồn Bi&ecirc;n Ph&ograve;ng Vinh Xu&acirc;n, gi&uacute;p c&aacute;c c&aacute;n bộ chiến sĩ c&oacute; th&ecirc;m điều kiện trong thực hiện nhiệm vụ bảo vệ Tổ quốc. Ngo&agrave;i ra, Đo&agrave;n cũng đ&atilde; tổ chức&nbsp;hoạt động trồng c&acirc;y xanh tại khu&ocirc;n vi&ecirc;n Đồn Bi&ecirc;n ph&ograve;ng, nhằm g&oacute;p phần xanh h&oacute;a, l&agrave;m đẹp m&ocirc;i trường sống v&agrave; l&agrave;m việc của c&aacute;c chiến sĩ v&agrave; c&oacute; buổi giao lưu văn nghệ nhằm thắt chặt t&igrave;nh qu&acirc;n - d&acirc;n giữa c&aacute;c c&aacute;n bộ chiến sĩ Đồn Bi&ecirc;n ph&ograve;ng Vinh Xu&acirc;n v&agrave; thanh ni&ecirc;n khối Cơ quan v&agrave; Doanh nghiệp tỉnh Thừa Thi&ecirc;n Huế.</p>

<p><strong>Một số h&igrave;nh ảnh đẹp tại chương tr&igrave;nh:</strong></p>

<p><strong><img alt="" src="https://huecit.vn/Portals/0/TinHoatDong/Nam2024/ThangThanhNien/HueCIT_Thang-Ba-Bien-Gioi_Don-Bien-Phong-Vinh-Xuan-Thua-Thien-Hue-5.jpg?ver=2024-03-18-153211-340" title="" /></strong></p>

<p><strong><img alt="" src="https://huecit.vn/Portals/0/TinHoatDong/Nam2024/ThangThanhNien/HueCIT_Thang-Ba-Bien-Gioi_Don-Bien-Phong-Vinh-Xuan-Thua-Thien-Hue-2.jpg?ver=2024-03-18-152843-327" title="" /></strong></p>

<p><strong><img alt="" src="https://huecit.vn/Portals/0/TinHoatDong/Nam2024/ThangThanhNien/HueCIT_Thang-Ba-Bien-Gioi_Don-Bien-Phong-Vinh-Xuan-Thua-Thien-Hue-4.jpg?ver=2024-03-18-153107-333" title="" /></strong></p>

<p><em>Tuổi trẻ Đo&agrave;n Khối Cơ quan v&agrave; Doanh nghiệp tỉnh&nbsp;chụp h&igrave;nh lưu niệm c&ugrave;ng c&aacute;n bộ chiến sĩ&nbsp;Đồn Bi&ecirc;n Ph&ograve;ng Vinh Xu&acirc;n, Bộ đội Bi&ecirc;n ph&ograve;ng tỉnh Thừa Thi&ecirc;n Huế.</em></p>
', 0, NULL, N'doan-thanh-nien-huecit-tham-gia-chuong-trinh-“thang-ba-bien-gioi”-nam-2024-17042024082751', CAST(N'2024-04-16T00:00:00.000' AS DateTime), NULL, N'', N'Đoàn Thanh niên/HueCIT', N'', N'Tiếng việt (Việt Nam)', 0, N'', 1, N'8a10d607-10f1-47c2-ba82-ec243c8e9145', N'92729D2A-9C36-4D7B-82E4-FB7FFA8C6A59', CAST(N'2024-04-16T09:09:30.030' AS DateTime), CAST(N'2024-04-17T08:28:31.410' AS DateTime), 2, 2, N'', N'', N'', N'', NULL, NULL, 0, 0)
INSERT [dbo].[TB_BaiViet] ([ID], [TieuDe], [AnhDaiDien], [Thumbnail], [MoTaAnhDaiDien], [TomTat], [NoiDung], [TieuDiem], [ThuTuHienThi], [URLBaiViet], [NgayCongBo], [HetHanCongBo], [NguonTin], [TacGia], [TacQuyen], [NgonNgu], [LuotXem], [TuKhoa], [TrangThai], [ChuyenMucID], [ChuyenMucKhacID], [CreatedOnDate], [LastModifiedOnDate], [CreatedByUserID], [LastModifiedByUserID], [DienThoai], [Email], [DiaChi], [Website], [GioMoCua], [GioDongCua], [ToaDoX], [ToaDoY]) VALUES (N'ee5e543c-b5d6-40aa-8a7d-0421dbcef41d', N'CVPM & Vườn ươm CNTT', N'/Upload\BaiViet\2024\ChoThueCSHT_DVCNTT_18_9_2015_17_35_30_831_CH_1712046628.jpg', N'https://www.huefestival.com/templates/default/images/logo_huefestival.png', N'gày 26/3, Tổng công ty Đường sắt Việt Nam phối hợp với UBND tỉnh Thừa Thiên Huế và thành phố Đà Nẵng tổ chức khai trương đoàn tàu chạy chuyên khu đoạn Huế - Đà Nẵng và ngược lại với tên gọi "Kết nối d', N'HueCIT là đơn vị đầu mối đại diện cho tỉnh Thừa Thiên Huế trong việc hỗ trợ các doanh nghiệp CNTT, các startup CNTT, các nhà đầu tư CNTT khi đến Huế, phát triển công viên phần mềm, hình thành Khu CNTT tập trung cho Tỉnh.', N'<table>
	<tbody>
		<tr>
			<td colspan="2">
			<p><strong>Dịch vụ cho thu&ecirc; văn ph&ograve;ng l&agrave;m việc</strong></p>
			HueCIT cung cấp dịch vụ cho thu&ecirc; ph&ograve;ng l&agrave;m việc cho c&aacute;c doanh nghiệp hoạt động trong lĩnh vực phần mềm v&agrave; dịch vụ c&ocirc;ng nghệ th&ocirc;ng tin. Tại đ&acirc;y, ch&uacute;ng t&ocirc;i cung cấp ph&ograve;ng l&agrave;m việc hiện đại với đầy đủ c&aacute;c cơ sở hạ tầng như m&aacute;y t&iacute;nh, điện chiếu s&aacute;ng, m&aacute;y điều h&ograve;a, &hellip; gi&uacute;p doanh nghiệp c&oacute; thể hoạt động ngay khi thu&ecirc; ph&ograve;ng. Với lợi thế tọa lạc ngay Trung t&acirc;m th&agrave;nh phố k&egrave;m theo kh&ocirc;ng gian l&agrave;m việc tho&aacute;ng m&aacute;t gồm s&acirc;n rộng 1.400 m2&nbsp; v&agrave; chỗ để xe rộng r&atilde;i sẽ tạo điều kiện thuận lợi cho doanh nghiệp trong qu&aacute; tr&igrave;nh vận chuyển cũng như nghỉ ngơi thư gi&atilde;n hay tổ chức c&aacute;c sự kiện ngo&agrave;i trời. B&ecirc;n cạnh đ&oacute;, HueCIT c&ograve;n hỗ trợ miễn ph&iacute; ph&ograve;ng họp gi&uacute;p doanh nghiệp c&oacute; thể tiếp đ&oacute;n chu đ&aacute;o đối t&aacute;c hay kh&aacute;ch mời của đơn vị.<br />
			&nbsp;</td>
		</tr>
		<tr>
			<td colspan="2">&nbsp;
			<p><strong>Th&ocirc;ng tin ph&ograve;ng cho thu&ecirc;</strong></p>

			<table border="1" cellpadding="0" cellspacing="1" style="width:625px">
				<tbody>
					<tr>
						<td>
						<p><strong>STT</strong></p>
						</td>
						<td>
						<p><strong>Hạng mục</strong></p>
						</td>
						<td>
						<p><strong>Diện t&iacute;ch</strong></p>
						</td>
						<td>
						<p><strong>Dịch vụ k&egrave;m theo</strong></p>
						</td>
					</tr>
					<tr>
						<td>
						<p>1</p>
						</td>
						<td>
						<p>Ph&ograve;ng l&agrave;m việc tại vị tr&iacute; Tầng 1</p>
						</td>
						<td>
						<p>25m<sup>2</sup></p>
						</td>
						<td rowspan="4">
						<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Cho thu&ecirc; B&agrave;n, ghế văn ph&ograve;ng, tủ đựng t&agrave;i liệu với chi ph&iacute; thấp</p>

						<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Vệ sinh định kỳ b&ecirc;n ngo&agrave;i v&agrave; khu vực chung</p>

						<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Vệ sinh b&ecirc;n trong văn ph&ograve;ng của kh&aacute;ch h&agrave;ng thu&ecirc;</p>

						<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&oacute; hệ thống ph&ograve;ng chống ch&aacute;y nổ (t&iacute;n hiệu, b&igrave;nh CO2, b&aacute;o kh&oacute;i, trung t&acirc;m b&aacute;o ch&aacute;y)</p>

						<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Chỗ đậu xe gắn m&aacute;y v&agrave; xe hơi</p>

						<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&aacute;c ph&ograve;ng họp lớn, nhỏ</p>

						<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Hỗ trợ đăng logo doanh nghiệp l&ecirc;n website HueCIT</p>

						<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Hỗ trợ đăng th&ocirc;ng tin tuyển dụng của doanh nghiệp l&ecirc;n website HueCIT, Kh&aacute;m ph&aacute; Huế</p>

						<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Đặt bảng t&ecirc;n doanh nghiệp tại t&ograve;a nh&agrave;</p>
						</td>
					</tr>
					<tr>
						<td>
						<p>2</p>
						</td>
						<td>
						<p>Ph&ograve;ng l&agrave;m việc tại vị tr&iacute; Tầng 2</p>
						</td>
						<td>
						<p>25m<sup>2</sup></p>

						<p>&nbsp;</p>
						</td>
					</tr>
					<tr>
						<td>
						<p>3</p>
						</td>
						<td>
						<p>Ph&ograve;ng l&agrave;m việc tại vị tr&iacute; Tầng 3</p>
						</td>
						<td>
						<p>25 m<sup>2</sup></p>

						<p>50m<sup>2</sup></p>

						<p>75m<sup>2</sup></p>
						</td>
					</tr>
					<tr>
						<td>
						<p>4</p>
						</td>
						<td>
						<p>Ph&ograve;ng l&agrave;m việc tại vị tr&iacute; Tầng 4</p>
						</td>
						<td>
						<p>25 m<sup>2</sup></p>

						<p>50m<sup>2</sup></p>

						<p>75m<sup>2</sup></p>
						</td>
					</tr>
				</tbody>
			</table>

			<p>&nbsp;</p>
			</td>
		</tr>
		<tr>
			<td>&nbsp;
			<p><strong>Dịch vụ cho thu&ecirc; ph&ograve;ng thực h&agrave;nh:</strong></p>

			<p><strong>HueCIT cung cấp ph&ograve;ng m&aacute;y thực h&agrave;nh với cấu h&igrave;nh mạnh, đ&aacute;p ứng nhu cầu của kh&aacute;ch h&agrave;ng</strong></p>

			<p>&nbsp;Th&ocirc;ng tin c&aacute;c ph&ograve;ng m&aacute;y cho thu&ecirc;</p>

			<ul>
				<li>- Diện t&iacute;ch ph&ograve;ng: 50m<sup>2</sup></li>
				<li>- Internet</li>
				<li>- Hệ thống điều h&ograve;a nhiệt độ</li>
				<li>- Hệ thống chiếu s&aacute;ng</li>
				<li>- Số lượng m&aacute;y: từ 25 m&aacute;y</li>
				<li>- Cấu h&igrave;nh theo y&ecirc;u cầu kh&aacute;ch h&agrave;ng</li>
			</ul>
			</td>
			<td>&nbsp;
			<p><strong>Hỉnh ảnh một ph&ograve;ng thực h&agrave;nh</strong></p>

			<p><img alt="" src="https://huecit.vn/Portals/3/Dichvu/CongVienPhanMem/ChoThueCoSoHaTang_New/HueCIT_ChoThuePhongThucHanh_Hue.jpg" /></p>
			</td>
		</tr>
		<tr>
			<td>&nbsp;<img alt="" src="https://huecit.vn/Portals/3/Dichvu/CongVienPhanMem/ChoThueCoSoHaTang_New/HueCIT_ChoThuePhongHopChatLuongCao_Hue.jpg" /></td>
			<td>&nbsp;
			<p><strong>Dịch vụ cho thu&ecirc; ph&ograve;ng họp, ph&ograve;ng học l&yacute; thuyết:</strong></p>

			<ul>
				<li>- Diện t&iacute;ch: 25m<sup>2</sup></li>
				<li>- Số ghế tối đa: 25 ghế</li>
				<li>- Bảng trắng focmica</li>
				<li>- Hệ thống điều h&ograve;a nhiệt độ</li>
				<li>- Hệ thống đ&egrave;n chiếu s&aacute;ng&nbsp;</li>
			</ul>
			</td>
		</tr>
	</tbody>
</table>

<table>
	<tbody>
		<tr>
			<td>
			<p><strong>Dịch vụ cho thu&ecirc; ph&ograve;ng Hội trường</strong></p>

			<p>&nbsp;Ph&ograve;ng lớn với sức chứa 100 người</p>

			<p>&nbsp;Trang bị sẵn hệ thống &acirc;m thanh, &aacute;nh s&aacute;ng</p>

			<p>&nbsp;Hệ thống điều h&ograve;a nhiệt độ với c&ocirc;ng suất lớn</p>
			</td>
			<td>&nbsp;<img alt="" src="https://huecit.vn/Portals/3/CongVienPhanmem/HueCIT_ChoThuePhongHoiTruong_Hue.jpg" /></td>
		</tr>
	</tbody>
</table>
', 0, NULL, N'cvpm-vuon-uom-cntt-16042024135916', CAST(N'2024-03-26T00:00:00.000' AS DateTime), NULL, N'', N'', N'', N'Tiếng việt (Việt Nam)', 0, N'', 1, N'b51f7635-9fb5-4494-95a3-10b57d0b5cf4', N'', CAST(N'2024-03-26T16:37:24.403' AS DateTime), CAST(N'2024-04-16T13:59:18.763' AS DateTime), 10023, 2, N'', N'', N'', N'', NULL, NULL, 0, 0)
INSERT [dbo].[TB_BaiViet] ([ID], [TieuDe], [AnhDaiDien], [Thumbnail], [MoTaAnhDaiDien], [TomTat], [NoiDung], [TieuDiem], [ThuTuHienThi], [URLBaiViet], [NgayCongBo], [HetHanCongBo], [NguonTin], [TacGia], [TacQuyen], [NgonNgu], [LuotXem], [TuKhoa], [TrangThai], [ChuyenMucID], [ChuyenMucKhacID], [CreatedOnDate], [LastModifiedOnDate], [CreatedByUserID], [LastModifiedByUserID], [DienThoai], [Email], [DiaChi], [Website], [GioMoCua], [GioDongCua], [ToaDoX], [ToaDoY]) VALUES (N'4c4859c5-6906-4c62-bd6f-05ae67def651', N'Đoàn Khối Cơ quan và Doanh nghiệp tỉnh tuyên dương 12 đảng viên trẻ xuất sắc tiêu biểu năm 2023', N'/Upload\BaiViet\2024\HueCIT_TuyenDuongDangVienTreTieuBieu2023_BichTTN-31012024_1713230582.jpg', N'/Upload\BaiViet\2024\HueCIT_TuyenDuongDangVienTreTieuBieu2023_BichTTN-31012024_1713230582.jpg', N'Đoàn Khối Cơ quan và Doanh nghiệp tỉnh tuyên dương 12 đảng viên trẻ xuất sắc tiêu biểu năm 2023', N'Thiết thực chào mừng kỷ niệm 94 năm ngày thành lập Đảng Cộng sản Việt Nam (03/02/1930 - 03/02/2024), chiều ngày 31/01, tại Bảo tàng Hồ Chí Minh (07 Lê Lợi, Tp. Huế), Đoàn Khối Cơ quan và Doanh nghiệp tỉnh tổ chức Lễ tuyên dương đảng viên trẻ xuất sắc tiêu biểu năm 2023.', N'<p>Ng&agrave;y 19/3 vừa qua, Chi đo&agrave;n Trung t&acirc;m CNTT tỉnh Thừa Thi&ecirc;n Huế đ&atilde; phối hợp với Chi đo&agrave;n PA03 - C&ocirc;ng an tỉnh, Chi đo&agrave;n Tham mưu Tổng hợp - C&ocirc;ng an Th&agrave;nh phố Huế v&agrave; c&aacute;c c&aacute; nh&acirc;n mạnh thường qu&acirc;n li&ecirc;n quan đi thăm v&agrave; tặng qu&agrave; cho 20 em học sinh ở trường Tiểu học B&igrave;nh Điền v&agrave; 31 em học sinh ở trường Tiểu học Hồng Tiến c&oacute; ho&agrave;n cảnh kh&oacute; khăn. Mỗi phần qu&agrave; trị gi&aacute; 500.000 đồng (bao gồm 200.000 đồng sữa, b&aacute;nh kẹo v&agrave; 300.000 đồng tiền mặt) v&agrave; qu&agrave; tặng gấu b&ocirc;ng. Ngo&agrave;i ra, Đo&agrave;n cũng tiến h&agrave;nh thăm v&agrave; tặng 6 phần qu&agrave; cho 6 gia đ&igrave;nh c&oacute; ho&agrave;n cảnh kh&oacute; khăn nhất x&atilde; B&igrave;nh Tiến, Thị x&atilde; Hương Tr&agrave; với mỗi phần qu&agrave; l&agrave; 20 k&iacute; gạo.&nbsp;</p>

<p><img alt="" src="https://huecit.vn/Portals/0/TinHoatDong/Nam2024/ThangThanhNien/HueCIT_Tang-qua-cho-tre-em-ngheo-Thang-Thanh-Nien-6.jpg?ver=2024-03-26-162701-043" title="" /></p>

<p><img alt="" src="https://huecit.vn/Portals/0/TinHoatDong/Nam2024/ThangThanhNien/HueCIT_Tang-qua-cho-tre-em-ngheo-Thang-Thanh-Nien-1.jpg?ver=2024-03-26-161904-523" title="" /></p>

<p><em>Tặng qu&agrave; cho c&aacute;c em học sinh ngh&egrave;o nh&acirc;n dịp Th&aacute;ng Thanh ni&ecirc;n</em></p>

<p><img alt="" src="https://huecit.vn/Portals/0/TinHoatDong/Nam2024/ThangThanhNien/HueCIT_Tang-qua-cho-tre-em-ngheo-Thang-Thanh-Nien-2.jpg?ver=2024-03-26-161904-523" title="" /></p>

<p><img alt="" src="https://huecit.vn/Portals/0/TinHoatDong/Nam2024/ThangThanhNien/HueCIT_Tang-qua-cho-tre-em-ngheo-Thang-Thanh-Nien-3.jpg?ver=2024-03-26-162747-430" title="" /></p>

<p><em>Hoạt động thăm v&agrave; tặng qu&agrave; c&aacute;c gia đ&igrave;nh c&oacute; ho&agrave;n cảnh kh&oacute; khăn nhất tr&ecirc;n địa b&agrave;n x&atilde; B&igrave;nh Tiến, thị x&atilde; Hương Tr&agrave;</em></p>

<p>S&aacute;ng ng&agrave;y 26/3, nh&acirc;n dịp kỷ niệm 93 năm Ng&agrave;y th&agrave;nh lập Đo&agrave;n TNCS Hồ Ch&iacute; Minh (26/3/1931 - 26/3/2024), Chi đo&agrave;n Trung t&acirc;m CNTT tỉnh cũng đ&atilde; c&oacute; buổi họp trực tuyến c&ugrave;ng Quận Đo&agrave;n B&igrave;nh T&acirc;n v&agrave; Quận Đo&agrave;n 7 (Th&agrave;nh phố Hồ Ch&iacute; Minh) về việc b&agrave;n giao, nh&acirc;n rộng phần mềm quản l&yacute; nghĩa trang liệt sĩ do Đo&agrave;n thanh ni&ecirc;n Trung t&acirc;m CNTT tỉnh x&acirc;y dựng. Đ&acirc;y l&agrave; c&ocirc;ng tr&igrave;nh thanh ni&ecirc;n đ&atilde; được Chi đo&agrave;n Trung t&acirc;m CNTT tỉnh triển khai th&agrave;nh c&ocirc;ng cho Nghĩa trang Liệt sĩ B&igrave;nh Ch&aacute;nh - B&igrave;nh T&acirc;n (TP. Hồ Ch&iacute; Minh) v&agrave; thực hiện b&agrave;n giao cho địa phương nh&acirc;n dịp kỷ niệm Ng&agrave;y Thương binh - Liệt sĩ trong năm 2023. Ph&aacute;t huy tinh thần xung k&iacute;ch thanh ni&ecirc;n trong c&ocirc;ng t&aacute;c chuyển đổi số, c&ugrave;ng tấm l&ograve;ng tri &acirc;n của tuổi trẻ đối với c&aacute;c thế hệ cha anh đ&atilde; hi sinh v&igrave; Tổ quốc trong cả nước, c&ugrave;ng với sự tin tưởng v&agrave; kết nối từ Quận Đo&agrave;n B&igrave;nh T&acirc;n, Chi đo&agrave;n Trung t&acirc;m dự kiến sẽ tiếp tục triển khai, nh&acirc;n rộng m&ocirc; h&igrave;nh n&agrave;y tr&ecirc;n địa b&agrave;n th&agrave;nh phố Hồ Ch&iacute; Minh th&ocirc;ng qua k&yacute; kết hoạt động năm 2024 với Chi đo&agrave;n Văn ph&ograve;ng Quận Đo&agrave;n B&igrave;nh T&acirc;n cũng như đang c&oacute; c&aacute;c nghi&ecirc;n cứu, đề xuất để nh&acirc;n rộng tr&ecirc;n địa b&agrave;n tỉnh Thừa Thi&ecirc;n Huế.</p>

<p><img alt="" src="https://huecit.vn/Portals/0/TinHoatDong/Nam2024/ThangThanhNien/HueCIT_Ky-Ket-Hoat-Dong_QuanDoanBinhTan-1.jpg?ver=2024-03-26-162017-267" title="" /></p>

<p><em>Buổi l&agrave;m việc trực tuyến v&agrave; triển khai k&yacute; kết hoạt động năm 2024 nhằm nh&acirc;n rộng m&ocirc; h&igrave;nh phần mềm nghĩa trang liệt sĩ của HueCIT với lực lượng n&ograve;ng cốt l&agrave; đo&agrave;n vi&ecirc;n thanh ni&ecirc;n Chi đo&agrave;n Trung t&acirc;m x&acirc;y dựng v&agrave; ph&aacute;t triển</em></p>

<p>Trước đ&oacute;, v&agrave;o ng&agrave;y 25/3, Chi đo&agrave;n Trung t&acirc;m CNTT tỉnh cũng đ&atilde; tổ chức sinh hoạt Chi đo&agrave;n Th&aacute;ng 3 nhằm &ocirc;n lại truyền thống vẻ vang của Đo&agrave;n TNCS Hồ Ch&iacute; Minh cho đo&agrave;n vi&ecirc;n thanh ni&ecirc;n tại đơn vị. Hiện nay, Chi đo&agrave;n Trung t&acirc;m CNTT tỉnh c&oacute; 29 đo&agrave;n vi&ecirc;n.&nbsp;C&aacute;c đo&agrave;n vi&ecirc;n Chi đo&agrave;n đều c&oacute; tr&igrave;nh độ Đại học, tr&ecirc;n Đại học. Trong đ&oacute;: 05 đo&agrave;n vi&ecirc;n l&agrave; Thạc sĩ; 01 đo&agrave;n vi&ecirc;n đang học Thạc sĩ, 01 đo&agrave;n vi&ecirc;n đang l&agrave;m Nghi&ecirc;n cứu sinh của chương tr&igrave;nh đ&agrave;o tạo Tiến sĩ; 06 đo&agrave;n vi&ecirc;n l&agrave; đảng vi&ecirc;n. Th&ocirc;ng qua c&aacute;c buổi sinh hoạt Chi đo&agrave;n, c&aacute;c đo&agrave;n vi&ecirc;n thanh ni&ecirc;n c&oacute; cơ hội học tập, bồi dưỡng n&acirc;ng cao nhận thức về Đảng, về Đo&agrave;n cũng như &yacute; thức được vai tr&ograve; xung k&iacute;ch thanh ni&ecirc;n tại đơn vị, qua đ&oacute; ph&aacute;t hiện, đ&agrave;o tạo v&agrave; giới thiệu c&aacute;c đo&agrave;n vi&ecirc;n ưu t&uacute; để Chi bộ Trung t&acirc;m r&egrave;n luyện, ph&aacute;t triển đứng v&agrave;o h&agrave;ng ngũ của Đảng.</p>

<p><img alt="" src="https://huecit.vn/Portals/0/TinHoatDong/Nam2024/ThangThanhNien/HueCIT_Sinh-hoat-Doan_Thang-Thanh-Nien.jpg?ver=2024-03-26-162017-300" title="" /></p>
', 0, NULL, N'doan-khoi-co-quan-va-doanh-nghiep-tinh-tuyen-duong-12-dang-vien-tre-xuat-sac-tieu-bieu-nam-2023-16042024082302', CAST(N'2024-04-16T00:00:00.000' AS DateTime), NULL, N'Chi đoàn Trung tâm CNTT tỉnh sinh hoạt đoàn nhân Tháng Thanh niên.', N'Đoàn Thanh niên/HueCIT', N'Đoàn Thanh niên/HueCIT', N'Tiếng việt (Việt Nam)', 0, N'Đoàn Thanh niên', 1, N'8a10d607-10f1-47c2-ba82-ec243c8e9145', N'', CAST(N'2024-04-16T08:23:03.900' AS DateTime), NULL, 2, NULL, N'', N'', N'', N'', NULL, NULL, 0, 0)
INSERT [dbo].[TB_BaiViet] ([ID], [TieuDe], [AnhDaiDien], [Thumbnail], [MoTaAnhDaiDien], [TomTat], [NoiDung], [TieuDiem], [ThuTuHienThi], [URLBaiViet], [NgayCongBo], [HetHanCongBo], [NguonTin], [TacGia], [TacQuyen], [NgonNgu], [LuotXem], [TuKhoa], [TrangThai], [ChuyenMucID], [ChuyenMucKhacID], [CreatedOnDate], [LastModifiedOnDate], [CreatedByUserID], [LastModifiedByUserID], [DienThoai], [Email], [DiaChi], [Website], [GioMoCua], [GioDongCua], [ToaDoX], [ToaDoY]) VALUES (N'9cbb2402-b2b7-4383-86bd-07563461c1d3', N'Chuỗi sự kiện chào mừng 23 năm thành lập Khu Công viên phần mềm Quang Trung (16/03/2001 – 16/03/2024)', N'https://huecit.vn/Portals/0/Medias/Nam2024/T3/Khamphahue-chuoi-su-kien-QTSC.jpg', N'https://huecit.vn/Portals/0/Medias/Nam2024/T3/Khamphahue-chuoi-su-kien-QTSC.jpg', N'Chuỗi sự kiện chào mừng 23 năm thành lập Khu Công viên phần mềm Quang Trung (16/03/2001 – 16/03/2024)', N'Nhân dịp kỷ niệm 23 năm ngày thành lập (16/03/2001 – 16/03/2024), với mục đích gắn kết cộng đồng nội khu, nâng cao giá trị các dịch vụ tiện ích mang lại cho người lao động, sinh viên đang làm việc và học tập trong khuôn viên; cũng như xây dựng môi trường làm việc xanh – sạch – đẹp, mang tầm vóc công nghệ; kết nối doanh nghiệp và sinh viên ngành CNTT cùng các cơ hội nghề nghiệp, Khu Công viên phần mềm Quang Trung (QTSC) tổ chức chuỗi sự kiện với các hoạt động cộng đồng và hội thảo chuyên ngành sa', N'<p><strong>1. Tuần lễ khuyến m&atilde;i c&aacute;c dịch vụ tiện &iacute;ch nội khu</strong></p>

<p>- Thời gian tổ chức: dự kiến 11/3 - 17/3/2024</p>

<p>- H&igrave;nh thức: c&aacute;c đơn vị cung cấp dịch vụ tiện &iacute;ch nội khu c&ugrave;ng hưởng ứng tham gia ng&agrave;y kỷ niệm th&agrave;nh lập QTSC với c&aacute;c chương tr&igrave;nh khuyến m&atilde;i hấp dẫn như giảm gi&aacute;, tặng voucher, upsize&hellip; d&agrave;nh cho người lao động, sinh vi&ecirc;n trong nội khu.</p>

<p>- H&igrave;nh ảnh v&agrave; th&ocirc;ng tin chi tiết về chương tr&igrave;nh khuyến m&atilde;i của c&aacute;c đơn vị tham gia sẽ được cập nhật li&ecirc;n tục tr&ecirc;n Fanpage QTSC https://www.facebook.com/QualityTechSolutionComplex)</p>

<p><strong>2. Hội thảo &quot;Sản xuất bền vững hướng đến m&ocirc; h&igrave;nh tăng trưởng xanh&quot;</strong></p>

<p>- Thời gian tổ chức: dự kiến ng&agrave;y 26/03/2024</p>

<p>- Địa điểm tổ chức: Hội trường t&ograve;a nh&agrave; QTSC Building 1, Khu C&ocirc;ng vi&ecirc;n phần mềm Quang Trung, Quận 12, TP.HCM</p>

<p>- Mục đ&iacute;ch: nhằm tăng cường nhận thức về tầm quan trọng của sản xuất bền vững v&agrave; m&ocirc; h&igrave;nh tăng trưởng xanh, chia sẻ kiến thức v&agrave; kinh nghiệm về việc x&acirc;y dựng v&agrave; thực hiện c&aacute;c m&ocirc; h&igrave;nh sản xuất xanh v&agrave; ph&aacute;t triển kinh tế bền vững.</p>

<p>- Đăng k&yacute; tham dự: Ms. Nhi L&ecirc;: 08888 77 654, email: lpt@dxcenter.org.vn&nbsp;</p>

<p><strong>3. Hội thảo Cơ hội nghề nghiệp ng&agrave;nh CNTT: &ldquo;Đ&oacute;n đầu xu hướng &ndash; Vững bước tương lai&rdquo;</strong></p>

<p>- Thời gian tổ chức: dự kiến ng&agrave;y 28/03/2024</p>

<p>- Địa điểm tổ chức: Hội trường t&ograve;a nh&agrave; QTSC Building 1, Khu C&ocirc;ng vi&ecirc;n phần mềm Quang Trung, Quận 12, TP.HCM</p>

<p>- H&igrave;nh thức: hội thảo, khu vực phỏng vấn tuyển dụng, check in nhận qu&agrave; tặng</p>

<p>- Mục đ&iacute;ch: tạo cơ hội v&agrave; s&acirc;n chơi nhằm kết nối doanh nghiệp c&ocirc;ng nghệ với sinh vi&ecirc;n năm cuối chuy&ecirc;n ng&agrave;nh CNTT, qua đ&oacute; gi&uacute;p sinh vi&ecirc;n nắm bắt xu hướng nghề nghiệp trong tương lai, trang bị những kiến thức, kỹ năng cần thiết trong c&ocirc;ng việc; đồng thời c&aacute;c doanh nghiệp c&oacute; cơ hội tiếp cận v&agrave; tuyển dụng được nguồn nh&acirc;n lực ph&ugrave; hợp, g&oacute;p phần x&acirc;y dựng đội ngũ nh&acirc;n lực chất lượng cao.</p>

<p>- Th&ocirc;ng tin li&ecirc;n hệ: Ms. Thu Nguy&ecirc;n: 0917204967, email:thunguyen@qtsc.com.vn&nbsp;</p>

<p>- Tham khảo th&ocirc;ng tin chi tiết tại link: https://www.qtsc.com.vn/tin-tuc/moi-tham-gia-hoi-thao-co-hoi-nghe-nghiep-nganh-cntt-don-dau-xu-huong-vung-buoc-tuong-lai&nbsp;</p>

<p><strong>4. Chương tr&igrave;nh &ldquo;Chung tay v&igrave; QTSC xanh&rdquo;</strong></p>

<p>- Thời gian tổ chức: dự kiến ng&agrave;y 29/03/2024</p>

<p>- H&igrave;nh thức: trồng c&acirc;y v&agrave; dọn dẹp vệ sinh một số khu vực trong QTSC</p>

<p>- Mục đ&iacute;ch: hưởng ứng chương tr&igrave;nh &ldquo;Triệu c&acirc;y xanh - V&igrave; một Việt Nam xanh&rdquo; do Trung ương Đo&agrave;n x&aacute;c lập trong giai đoạn 2021-2025; k&ecirc;u gọi cộng đồng nội khu c&ugrave;ng chung tay x&acirc;y dựng một QTSC xanh &ndash; sạch &ndash; đẹp, mang lại kh&ocirc;ng kh&iacute; trong l&agrave;nh, m&ocirc;i trường c&ocirc;ng nghệ xanh cho những người đang l&agrave;m việc v&agrave; học tập tại đ&acirc;y.</p>

<p>- Đăng k&yacute; tham gia: Ms. Thanh Tr&uacute;c: (84-28) 3715.8888 (#0), 08888 77607, email: thanhtruc@qtsc.com.vn</p>

<p>- Tham khảo th&ocirc;ng tin chi tiết tại link: https://www.qtsc.com.vn/tin-tuc/moi-tham-gia-chuong-trinh-chung-tay-vi-qtsc-xanh-2024&nbsp;</p>

<p><strong>5. Lễ k&yacute; kết hợp t&aacute;c triển khai ứng dụng Cervi Care AI tr&ecirc;n hạ tầng của QTSC</strong></p>

<p>- Thời gian tổ chức: dự kiến ng&agrave;y 06/04/2024</p>

<p>- Mục đ&iacute;ch: th&ocirc;ng qua hợp t&aacute;c chiến lược giữa QTSC v&agrave; đối t&aacute;c để ph&aacute;t huy c&aacute;c lợi &iacute;ch, hiệu quả của việc ứng dụng AI v&agrave; CNTT trong lĩnh vực y tế.</p>

<p>Qua 23 năm h&igrave;nh th&agrave;nh v&agrave; ph&aacute;t triển, QTSC đ&atilde; trở th&agrave;nh một trong những c&ocirc;ng vi&ecirc;n phần mềm h&agrave;ng đầu ch&acirc;u &Aacute;, được Bộ Th&ocirc;ng tin v&agrave; Truyền th&ocirc;ng đ&aacute;nh gi&aacute; l&agrave; khu CNTT tập trung lớn nhất v&agrave; th&agrave;nh c&ocirc;ng nhất hiện nay trong cả nước. Với vai tr&ograve; ti&ecirc;n phong trong việc th&uacute;c đẩy ph&aacute;t triển ng&agrave;nh CNTT, QTSC hướng đến mục ti&ecirc;u trở th&agrave;nh nơi cung cấp giải ph&aacute;p c&ocirc;ng nghệ chất lượng cao, đem lại c&aacute;c gi&aacute; trị hữu &iacute;ch nhất cho x&atilde; hội.</p>

<p>&nbsp;Chuỗi sự kiện ch&agrave;o mừng 23 năm th&agrave;nh lập Khu C&ocirc;ng vi&ecirc;n phần mềm Quang Trung (16/03/2001 &ndash; 16/03/2024)</p>
', 0, NULL, N'chuoi-su-kien-chao-mung-23-nam-thanh-lap-khu-cong-vien-phan-mem-quang-trung-16032001-–-16032024-16042024172059', CAST(N'2024-04-05T00:00:00.000' AS DateTime), NULL, N'', N'', N'', N'Tiếng việt (Việt Nam)', 0, N'', 1, N'f1ac63bb-7eba-4041-8c70-2c70d8e64133', N'', CAST(N'2024-04-05T08:52:41.190' AS DateTime), CAST(N'2024-04-16T17:20:59.270' AS DateTime), 2, 2, N'', N'', N'', N'', NULL, NULL, 0, 0)
INSERT [dbo].[TB_BaiViet] ([ID], [TieuDe], [AnhDaiDien], [Thumbnail], [MoTaAnhDaiDien], [TomTat], [NoiDung], [TieuDiem], [ThuTuHienThi], [URLBaiViet], [NgayCongBo], [HetHanCongBo], [NguonTin], [TacGia], [TacQuyen], [NgonNgu], [LuotXem], [TuKhoa], [TrangThai], [ChuyenMucID], [ChuyenMucKhacID], [CreatedOnDate], [LastModifiedOnDate], [CreatedByUserID], [LastModifiedByUserID], [DienThoai], [Email], [DiaChi], [Website], [GioMoCua], [GioDongCua], [ToaDoX], [ToaDoY]) VALUES (N'c5c643f5-b4e7-4230-abfa-0eac59e349cd', N'PHẦN MỀM QUẢN LÝ NGHĨA TRANG ỨNG DỤNG GIS', N'/Upload\BaiViet\2024\ảnh bia_1719830631.jpg', N'/Upload\BaiViet\2024\ảnh bia_1719830631.jpg', N'', N'', N'<table style="width: 100%;">
 <tbody>
  <tr>
   <td style="text-align: justify;" class="col-md-6 col-sm-6"><span style="font-size: medium; color: #0070c0;"><strong>Giới thiệu</strong></span><br>
   <br>
   <span style="font-size: 16px;">Phần mềm Quản lý Nghĩa trang ứng dụng công nghệ GIS là công cụ hỗ trợ tối ưu trong công tác quản lý thông tin, dữ liệu hiện trạng về hoạt động của nghĩa trang. Thông qua ứng dụng công nghệ GIS giúp người dùng dễ dàng hơn trong việc tìm kiếm thông tin của các mộ phần, cũng như giúp cho các cấp quản lý, các phòng nghiệp vụ dễ dàng theo dõi, cập nhật các dữ liệu, cung cấp thông tin và xây dựng các báo cáo chuyên môn kịp thời.</span></td>
   <td class="col-md-6 col-sm-6"><span style="font-size: 16px;"><img alt="" src="/Portals/3/Sanpham/HueCIT_QuanLyNghiaTrangLietSi.jpg" class="img-responsive" style="margin: auto;">&nbsp;</span></td>
  </tr>
  <tr>
   <td style="text-align: justify;" class="col-md-6 col-sm-6">
   <p><strong><span style="font-size: 16px; color: #0070c0;">Các chức năng chính:</span></strong></p>

   <p><strong><span style="font-size: 16px; color: #0070c0;">Định vị ngôi mộ&nbsp;trong tổng thể nghĩa trang</span></strong></p>
   <span>Phần mềm cho phép người dùng định vị được phần mộ cần tìm kiếm thông tin từ ngoài Trang chủ một cách nhanh chóng, dễ dàng cũng như các thông tin liên quan đến phần mộ (thông tin tóm tắt của ngôi mộ, chỉ đường)</span></td>
   <td class="col-md-6 col-sm-6"><img alt="" src="/Portals/0/anh.jpg" style="width: 640px; height: 310px; margin: auto;" title="" class="img-responsive">&nbsp;</td>
  </tr>
  <tr>
   <td class="col-md-6 col-sm-6">&nbsp;<img alt="" src="/Portals/0/ntls2_1.JPG" style="width: 640px; height: 305px; margin: auto;" title="" class="img-responsive"></td>
   <td class="col-md-6 col-sm-6"><span><span style="font-size: 16px; color: #0070c0;"><strong>Quản lý Danh sách mộ</strong></span></span>
   <p style="margin-top: 6pt; text-align: justify;"><span><span style="color: #0c0c0c;">Phần mềm hỗ trợ công tác quản lý danh sách cũng như thông tin chi tiết của các phần mộ theo hệ thống. Cụ thể, người dùng dễ dàng quản lý thông tin chi tiết của từng mộ theo các trường thông tin cần thiết như: Họ tên, quê quán, ngày sinh, ngày hi sinh, chức vụ, đơn vị, tình trạng quy tập, vị trí mộ...&nbsp;</span></span></p>
   <span> </span>

   <p style="margin-top: 6pt; text-align: justify;"><span><span style="color: #0c0c0c;">Người quản lý có thể tùy chỉnh thông tin (thêm mới, sửa, xóa...) bất kỳ thông tin nào khi cần cập nhật lại, có thể trích xuất dữ liệu (file excel) để sử dụng cho hoạt động chuyên môn và tìm kiếm thông tin dễ dàng từ chức năng lọc dữ liệu của phần mềm để xem thông tin mộ theo các tiêu chí như:</span></span></p>
   <span> </span>

   <p style="margin: 6pt 0in 0.0001pt 15.05pt; text-align: justify;"><span><span style="color: #0c0c0c;">&gt; Số lô vị trí mộ</span></span></p>
   <span> </span>

   <p style="margin: 6pt 0in 0.0001pt 15.05pt; text-align: justify;"><span><span style="color: #0c0c0c;">&gt; Số hàng vị trí mộ</span></span></p>
   <span> </span>

   <p style="margin: 6pt 0in 0.0001pt 15.05pt; text-align: justify;"><span><span style="color: #0c0c0c;">&gt; Lọc theo điều kiện&nbsp;</span></span></p>
   <span> </span>

   <p style="margin: 6pt 0in 0.0001pt 15.05pt; text-align: justify;"><span><span style="color: #0c0c0c;">&gt; Tất cả</span></span></p>
   <span> </span>

   <p style="margin: 6pt 0in 0.0001pt 15.05pt; text-align: justify;"><span><span style="color: #0c0c0c;">&gt; Mộ phần còn trống</span></span></p>
   <span> </span>

   <p style="margin: 6pt 0in 0.0001pt 15.05pt; text-align: justify;"><span><span style="color: #0c0c0c;">&gt; Mộ phần đã sử dụng</span></span></p>
   <span> </span>

   <p style="margin: 6pt 0in 0.0001pt 15.05pt; text-align: justify;"><span><span style="color: #0c0c0c;">&gt; Mộ phần&nbsp;đã xác định</span></span></p>
   <span> </span>

   <p style="margin: 6pt 0in 0.0001pt 15.05pt; text-align: justify;"><span><span style="color: #0c0c0c;">&gt; Mộ phần&nbsp;chưa xác định (khuyết thông tin)</span></span></p>
   <span> </span><br>
   <br>
   <br>
   <br>
   &nbsp;</td>
  </tr>
  <tr>
   <td style="text-align: justify;" class="col-md-6 col-sm-6">
   <p><strong><span style="font-size: 16px; color: #0070c0;">Tìm kiếm thông tin mộ phần</span></strong></p>
   <span>Phần mềm hỗ trợ tìm kiếm nhanh thông tin về mộ phần linh hoạt theo một trong các tiêu chí như: họ tên, năm sinh, năm hi sinh hoặc quê quán. Từ danh sách mộ phần tìm kiếm được người dùng có thể chọn đúng tên mộ phần mình cần tìm để xem thêm các thông tin chi tiết về mộ phần như tình trạng quy tập, vị trí mộ và xem mộ trên bản đồ GIS của nghĩa trang.</span></td>
   <td class="col-md-6 col-sm-6"><img alt="" src="/Portals/0/ntls3_1.JPG" style="width: 640px; height: 312px; margin: auto;" title="" class="img-responsive"></td>
  </tr>
 </tbody>
</table>

<table style="width: 100%;">
 <tbody>
  <tr>
   <td class="col-md-6 col-sm-6">
   <p>&nbsp;<br>
   <img alt="" src="/Portals/0/ntls4.JPG" style="width: 640px; height: 301px; margin: auto;" title="" class="img-responsive"></p>
   </td>
   <td class="col-md-6 col-sm-6">
   <p><span style="font-size: 16px; color: #0070c0;"><strong>Quản lý thư viện media</strong></span></p>

   <p>Phần mềm hỗ trợ chức năng trình diễn hình ảnh, video, cho phép hiển thị hình ảnh hoạt động của nghĩa trang. Người quản lý dễ dàng Thêm mới/ Xóa ảnh, video theo mục đích sử dụng.</p>
   </td>
  </tr>
  <tr>
   <td class="col-md-6 col-sm-6">
   <p><span style="font-size: 16px; color: #0070c0;"><strong>Quản lý thông tin góp ý</strong> </span></p>

   <p style="text-align: justify;"><span>Phần mềm cho phép tương tác giữa nghĩa trang và người xem, tuy nhiên người quản trị có thể chủ động kiểm duyệt thông tin nhờ chức năng cho phép xử lý, Xóa và Xem trước khi Duyệt hiển thị ra bên ngoài của phần mềm.</span></p>

   <p style="margin-top: 6pt; text-align: justify;">&nbsp;</p>

   <p>&nbsp;</p>
   </td>
   <td class="col-md-6 col-sm-6">&nbsp;<img alt="" src="/Portals/0/ntls5.JPG" style="width: 640px; height: 305px; margin: auto;" title="" class="img-responsive"></td>
  </tr>
 </tbody>
</table>

<p style="margin-top: 6pt; text-align: justify;">Với giao diện thân thiện, dễ sử dụng, việc quản lý thông tin nghĩa trang trở nên dễ dàng hơn bao giờ hết. Việc ứng dụng công nghệ thông tin trong việc quản lý nghĩa trang vì vậy không chỉ hỗ trợ chính quyền trong công tác quản lý mà còn giúp cho thân nhân của các mộ phần&nbsp;đỡ vất vả hơn rất nhiều trong việc thăm, viếng các phần mộ&nbsp;tại các nghĩa trang. Đây là một việc làm cần thiết và cấp bách mà bất cứ địa phương nào cũng nên thực hiện để thiết thực hóa công tác tri ân, đền ơn đáp nghĩa.</p>

<p style="margin-top: 6pt; text-align: center;"><span style="font-size: 16px;">Thông tin chi tiết tham khảo về phần mềm có tại địa chỉ:&nbsp;</span></p>

<p style="margin-top: 6pt; text-align: center;"><a href="http://nghiatranglietsibinhchanhbinhtan.vn"><span style="font-size: 16px;"><strong>http://nghiatranglietsibinhchanhbinhtan.vn/</strong></span></a></p>', 0, NULL, N'phan-mem-quan-ly-nghia-trang-ung-dung-gis-01072024174313', CAST(N'2024-07-01T00:00:00.000' AS DateTime), CAST(N'2024-07-01T00:00:00.000' AS DateTime), N'', N'', N'', N'Tiếng việt (Việt Nam)', 0, N'', 1, N'fee4c680-5952-4b0a-ab24-5eefd52baee7', N'', CAST(N'2024-07-01T17:43:51.577' AS DateTime), NULL, 2, NULL, N'', N'', N'', N'', NULL, NULL, 0, 0)
INSERT [dbo].[TB_BaiViet] ([ID], [TieuDe], [AnhDaiDien], [Thumbnail], [MoTaAnhDaiDien], [TomTat], [NoiDung], [TieuDiem], [ThuTuHienThi], [URLBaiViet], [NgayCongBo], [HetHanCongBo], [NguonTin], [TacGia], [TacQuyen], [NgonNgu], [LuotXem], [TuKhoa], [TrangThai], [ChuyenMucID], [ChuyenMucKhacID], [CreatedOnDate], [LastModifiedOnDate], [CreatedByUserID], [LastModifiedByUserID], [DienThoai], [Email], [DiaChi], [Website], [GioMoCua], [GioDongCua], [ToaDoX], [ToaDoY]) VALUES (N'c78e3281-a93e-4406-a5e7-1b2e05d71f89', N'Dự án tiêu biểu', N'', N'', N'', N'', N'<table align="center" border="1" style="width:100%">
	<tbody>
		<tr>
			<td colspan="3">
			<p><strong>Dự&nbsp;&aacute;n x&acirc;y dựng v&agrave; triển khai phần mềm cho c&aacute;c cơ quan nh&agrave; nước</strong></p>
			</td>
		</tr>
		<tr>
			<td>&nbsp;</td>
			<td><strong>T&ecirc;n hợp đồng</strong></td>
			<td><strong>Chủ đầu tư</strong></td>
		</tr>
		<tr>
			<td>1</td>
			<td>Nghi&ecirc;n cứu X&acirc;y dựng m&ocirc; h&igrave;nh C&ocirc;ng sở điện tử, ch&iacute;nh quyền điện tử tại tỉnh Thừa Thi&ecirc;n Huế</td>
			<td>Sở Khoa học v&agrave; C&ocirc;ng nghệ Thừa Thi&ecirc;n Huế</td>
		</tr>
		<tr>
			<td>2</td>
			<td>N&acirc;ng cấp Cổng th&ocirc;ng tin điện tử tỉnh Thừa Thi&ecirc;n Huế</td>
			<td>Văn ph&ograve;ng UBND tỉnh Thừa Thi&ecirc;n</td>
		</tr>
		<tr>
			<td>3</td>
			<td>X&acirc;y dựng cơ sở dữ liệu về t&agrave;i nguy&ecirc;n văn h&oacute;a, du lịch tỉnh Thừa Thi&ecirc;n Huế</td>
			<td>Sở Văn h&oacute;a Thể thao Du lịch Thừa Thi&ecirc;n Huế</td>
		</tr>
		<tr>
			<td>4</td>
			<td>Triển khai phần mềm th&ocirc;ng tin v&agrave; c&ocirc;ng khai dịch vụ c&ocirc;ng tr&ecirc;n địa b&agrave;n th&agrave;nh phố Huế</td>
			<td>UBND th&agrave;nh phố Huế</td>
		</tr>
		<tr>
			<td>5</td>
			<td>N&acirc;ng cấp phần mềm Quản l&yacute; Văn bản v&agrave; điều h&agrave;nh</td>
			<td>Văn ph&ograve;ng UBND tỉnh Thừa Thi&ecirc;n</td>
		</tr>
		<tr>
			<td>6</td>
			<td>N&acirc;ng cấp phần mềm Quản l&yacute; cơ sở dữ liệu kinh tế - x&atilde; hội tỉnh Thừa Thi&ecirc;n Huế</td>
			<td>Sở Kế hoạch v&agrave; Đầu tư Thừa Thi&ecirc;n Huế</td>
		</tr>
		<tr>
			<td>7</td>
			<td>Thực hiện chuyển đổi phần mềm Quản l&yacute; th&ocirc;ng tin kinh tế- x&atilde; hội tỉnh l&ecirc;n điện to&aacute;n đ&aacute;m m&acirc;y</td>
			<td>Sở Th&ocirc;ng tin v&agrave; Truyền th&ocirc;ng Thừa Thi&ecirc;n Huế</td>
		</tr>
		<tr>
			<td>8</td>
			<td>Thiết kế, x&acirc;y dựng v&agrave; triển khai phần mềm Quản l&yacute; hộ tịch HS-CivilStar</td>
			<td>Ph&ograve;ng Tư ph&aacute;p Th&agrave;nh phố Huế; Ph&ograve;ng Tư ph&aacute;p c&aacute;c th&agrave;nh phố Tam Kỳ, Hội An v&agrave; huyện N&uacute;i th&agrave;nh - tỉnh Quảng Nam; Ph&ograve;ng Tư ph&aacute;p th&agrave;nh phố Vinh v&agrave; c&aacute;c huyện - tỉnh Nghệ An; Ph&ograve;ng Tư ph&aacute;p th&agrave;nh phố Đ&agrave; Lạt - tỉnh L&acirc;m Đồng</td>
		</tr>
		<tr>
			<td>9</td>
			<td>Thiết kế, x&acirc;y dựng phần mềm &ldquo;Quản l&yacute; theo d&otilde;i tiếp nhận thụ l&yacute; v&agrave; ban h&agrave;nh văn bản tại cơ quan h&agrave;nh ch&iacute;nh nh&agrave; nước&rdquo;</td>
			<td>Văn ph&ograve;ng UBND tỉnh Thừa Thi&ecirc;n Huế, Thanh H&oacute;a, Hải Ph&ograve;ng</td>
		</tr>
		<tr>
			<td>10</td>
			<td>Thiết kế, x&acirc;y dựng v&agrave; triển khai phần mềm t&iacute;nh cước tập trung HS-UniTax</td>
			<td>Bưu điện tỉnh B&igrave;nh Dương Dương</td>
		</tr>
		<tr>
			<td>11</td>
			<td>Thiết kế, x&acirc;y dựng v&agrave; triển khai phần mềm t&iacute;nh cước tập trung HS-UniTax</td>
			<td>Bưu điện tỉnh Hưng Y&ecirc;n</td>
		</tr>
		<tr>
			<td>12</td>
			<td>Thiết kế, x&acirc;y dựng v&agrave; triển khai phần mềm t&iacute;nh cước tập trung HS-UniTax</td>
			<td>Bưu điện tỉnh B&igrave;nh Dương Dương</td>
		</tr>
		<tr>
			<td>13</td>
			<td>X&acirc;y dựng c&aacute;c giải ph&aacute;p tin học h&oacute;a quản l&yacute; h&agrave;nh ch&iacute;nh nh&agrave; nước tại tỉnh Thừa Thi&ecirc;n Huế th&ocirc;ng qua hệ thống phần mềm sổ tay c&ocirc;ng vụ; phần mềm cổng th&ocirc;ng tin điện tử tỉnh Thừa Thi&ecirc;n Huế; phần mềm tiếp nhận, xử l&yacute; v&agrave; ho&agrave;n trả hồ sơ một cửa; phần mềm quản l&yacute; số liệu lao động, ph&acirc;n hệ quản l&yacute; hộ khẩu, tạm tr&uacute;, tạm vắng.</td>
			<td>Văn ph&ograve;ng UBND tỉnh Thừa Thi&ecirc;n Huế</td>
		</tr>
		<tr>
			<td>14</td>
			<td>X&acirc;y dựng c&aacute;c giải ph&aacute;p ph&aacute;t triển v&agrave; ứng dụng CNTT trong thời kỳ hội nhập tại tỉnh Thừa Thi&ecirc;n Huế</td>
			<td>Văn ph&ograve;ng UBND tỉnh Thừa Thi&ecirc;n Huế</td>
		</tr>
		<tr>
			<td>15</td>
			<td>X&acirc;y dựng v&agrave; triển khai phần mềm &ldquo;Hệ thống th&ocirc;ng tin tổng hợp kinh tế x&atilde; hội&rdquo; tr&ecirc;n phạm vi 4 tỉnh: Thừa Thi&ecirc;n Huế, Quảng Trị, Gia Lai, KonTum</td>
			<td>Văn ph&ograve;ng Ch&iacute;nh phủ</td>
		</tr>
		<tr>
			<td>16</td>
			<td>X&acirc;y dựng v&agrave; triển khai &ldquo;Trang th&ocirc;ng tin điện tử phục vụ điều h&agrave;nh t&aacute;c nghiệp&rdquo; tr&ecirc;n phạm vi 4 tỉnh: Thừa Thi&ecirc;n Huế, Quảng Trị, Gia Lai, KonTum</td>
			<td>Văn ph&ograve;ng Ch&iacute;nh phủ</td>
		</tr>
		<tr>
			<td>17&nbsp;</td>
			<td>Tư vấn x&acirc;y dựng phần mềm: &quot;Mua sắm phần mềm phục vụ quản l&yacute; v&agrave; giảng dạy&quot;</td>
			<td>Trường Cao đẵng Y tế Huế</td>
		</tr>
		<tr>
			<td>18&nbsp;</td>
			<td>Tư vấn x&acirc;y dựng phần mềm quản trị v&agrave; xử l&yacute; th&ocirc;ng tin trang web đa ng&ocirc;n ngữ huetourism.gov.vn; visithue.vn</td>
			<td>Sở du lịch Huế</td>
		</tr>
		<tr>
			<td>19&nbsp;</td>
			<td>X&acirc;y dựng phần mềm, đ&agrave;o tạo v&agrave; chuyển giao c&ocirc;ng nghệ&quot; thuộc hạng mục dự &aacute;n &quot; X&acirc;y dựng hệ thống th&ocirc;ng tin doanh nghiệp v&agrave; hộ c&aacute; thể tỉnh Thừa Thi&ecirc;n Huế&quot;&nbsp;</td>
			<td>Sở Kế hoạch&nbsp;đầu tư tỉnh Thừa Thi&ecirc;n Huế</td>
		</tr>
		<tr>
			<td>20&nbsp;</td>
			<td>X&acirc;y dựng phần mềm số h&oacute;a r&uacute;t tr&iacute;ch th&ocirc;ng tin t&agrave;i liệu&quot; thuộc dự &aacute;n &quot;X&acirc;y dựng cổng dịch vụ c&ocirc;ng trực tuyến tỉnh Thừa Thi&ecirc;n Huế&quot;&nbsp;</td>
			<td>Sở Th&ocirc;ng tin v&agrave; Truyền th&ocirc;ng Thừa Thi&ecirc;n Huế&nbsp;</td>
		</tr>
		<tr>
			<td>21&nbsp;</td>
			<td>X&acirc;y dựng phần mềm quản trị v&agrave; xử l&yacute; th&ocirc;ng tin website Tạp ch&iacute; Nghi&ecirc;n cứu v&agrave; Ph&aacute;t triển&nbsp;</td>
			<td>Tạp ch&iacute; Nghi&ecirc;n cứu v&agrave; Ph&aacute;t triển tỉnh Thừa Thi&ecirc;n Huế&nbsp;</td>
		</tr>
		<tr>
			<td>22&nbsp;</td>
			<td>X&acirc;y dựng Cổng th&ocirc;ng tin chỉ số đ&aacute;nh gi&aacute; năng lực cạnh tranh cấp Sở, ban, ng&agrave;nh v&agrave; địa phương tỉnh Thừa Thi&ecirc;n Huế&nbsp;</td>
			<td>Sở Kế hoạch v&agrave; Đầu tư Thừa Thi&ecirc;n Huế&nbsp;</td>
		</tr>
		<tr>
			<td>23&nbsp;</td>
			<td>Nghi&ecirc;n cứu x&acirc;y dựng m&ocirc; h&igrave;nh c&ocirc;ng sở v&agrave; ch&iacute;nh quyền điện tử di động tại tỉnh Thừa Thi&ecirc;n Huế&nbsp;</td>
			<td>Sở Khoa học v&agrave; C&ocirc;ng nghệ tỉnh Thừa Thi&ecirc;n Huế&nbsp;</td>
		</tr>
		<tr>
			<td>24&nbsp;</td>
			<td>Thiết kế phần mềm quản l&yacute; v&agrave; sử dụng hệ thống chỉ dẫn địa l&yacute; v&agrave; nhập dữ liệu v&agrave;o hệ thống quản l&yacute; chỉ dẫn địa l&yacute;&nbsp;</td>
			<td>Sở Khoa học v&agrave; C&ocirc;ng nghệ tỉnh Thừa Thi&ecirc;n Huế&nbsp;</td>
		</tr>
		<tr>
			<td>25&nbsp;</td>
			<td>&nbsp;Kiểm thử phần mềm: N&acirc;ng cấp phần mềm Quản l&yacute; văn bản v&agrave; điều h&agrave;nh theo quy định về lưu trữ điện tử v&agrave; ph&aacute;t triển phi&ecirc;n bản d&agrave;nh cho thiết bị di động</td>
			<td>&nbsp;Sở Th&ocirc;ng tin v&agrave; Truyền th&ocirc;ng tỉnh Gia Lai</td>
		</tr>
		<tr>
			<td>26&nbsp;</td>
			<td>N&acirc;ng cấp Cổng th&ocirc;ng tin sản phẩm đặc sản Huế</td>
			<td>Trung t&acirc;m x&uacute;c tiến thương mại Thừa Thi&ecirc;n Huế&nbsp;</td>
		</tr>
		<tr>
			<td>27&nbsp;</td>
			<td>Nghi&ecirc;n cứu, x&acirc;y dựng nền tảng hạ tầng dữ liệu kh&ocirc;ng gian (SDI), phục vụ quy hoạch, quản l&yacute; v&agrave; ph&aacute;t triển đ&ocirc; thị - Ứng dụng th&iacute; điểm tại tỉnh TT huế&nbsp;</td>
			<td>Văn ph&ograve;ng c&aacute;c chương tr&igrave;nh trọng điểm cấp Nh&agrave; nước&nbsp;</td>
		</tr>
		<tr>
			<td>28</td>
			<td>N&acirc;ng cấp website Cố đ&ocirc; khởi nghiệp</td>
			<td>Sở Khoa học v&agrave; C&ocirc;ng nghệ tỉnh Thừa Thi&ecirc;n Huế</td>
		</tr>
		<tr>
			<td>29</td>
			<td>X&acirc;y dựng giao diện trang Điều h&agrave;nh t&aacute;c nghiệp</td>
			<td>Văn ph&ograve;ng Đo&agrave;n ĐBQH v&agrave; HĐND tỉnh Thừa Thi&ecirc;n Huế</td>
		</tr>
		<tr>
			<td>30</td>
			<td>N&acirc;ng cấp hệ thống Cổng th&ocirc;ng tin điện tử Hội đồng nh&acirc;n d&acirc;n tỉnh Thừa Thi&ecirc;n Huế</td>
			<td>Văn ph&ograve;ng Đo&agrave;n ĐBQH v&agrave; HĐND tỉnh Thừa Thi&ecirc;n Huế</td>
		</tr>
		<tr>
			<td>31</td>
			<td>X&acirc;y dựng phần mềm thuộc tiểu dự &aacute;n N&acirc;ng cấp hệ thống th&ocirc;ng tin Doanh nghiệp thuộc dự &aacute;n Ph&aacute;t triển dịch vụ đ&ocirc; thị th&ocirc;ng minh tỉnh Thừa Thi&ecirc;n Huế giai đoạn 2018 - 2020</td>
			<td>Sở Kế hoạch v&agrave; Đầu tư tỉnh Thừa Thi&ecirc;n Huế</td>
		</tr>
		<tr>
			<td>32</td>
			<td>Triển khai v&agrave; Đ&agrave;o tạo tập huấn sử dụng hệ thống Quản l&yacute; văn b&agrave;n v&agrave; điều h&agrave;nh</td>
			<td>Văn ph&ograve;ng Tỉnh ủy Thừa Thi&ecirc;n Huế</td>
		</tr>
		<tr>
			<td>33</td>
			<td>X&acirc;y dựng phần mềm v&agrave; cơ sở dữ liệu thuộc hạng mục X&acirc;y dựng phần mềm v&agrave; cơ sở dữ liệu Nghệ thuật tuồng Huế</td>
			<td>Trung t&acirc;m Bảo tồn Di t&iacute;ch Cố đ&ocirc; Huế</td>
		</tr>
		<tr>
			<td>34</td>
			<td>Tạo lập cơ sở dữ liệu v&agrave; x&acirc;y dựng phần mềm thuộc hạng mục App Di t&iacute;ch Huế th&iacute; điểm tại Đại Nội thuộc dự &aacute;n X&acirc;y dựng ứng dụng di động (app) Di t&iacute;ch Huế</td>
			<td>Trung t&acirc;m Bảo tồn Di t&iacute;ch Cố đ&ocirc; Huế</td>
		</tr>
		<tr>
			<td>35</td>
			<td>Thiết kế phần mềm quản l&yacute; v&agrave; sử dụng hệ thống chỉ dẫn địa l&yacute; v&agrave; nhập dữ liệu v&agrave;o hệ thống quản l&yacute; chỉ dẫn địa l&yacute;</td>
			<td>Sở Khoa học v&agrave; C&ocirc;ng nghệ tỉnh Thừa Thi&ecirc;n Huế</td>
		</tr>
		<tr>
			<td>36</td>
			<td>X&acirc;y dựng phần mềm quản l&yacute; cơ sở dữ liệu v&agrave; b&aacute;o c&aacute;o trực tuyến về vật liệu nổ c&ocirc;ng nghiệp tr&ecirc;n địa b&agrave;n tỉnh Thừa Thi&ecirc;n Huế</td>
			<td>Sở C&ocirc;ng thương Thừa Thi&ecirc;n Huế</td>
		</tr>
		<tr>
			<td colspan="3">
			<p><strong>Dự &aacute;n x&acirc;y dựng v&agrave; triển khai c&aacute;c giải ph&aacute;p ứng tổng thể cho doanh nghiệp</strong></p>
			</td>
		</tr>
		<tr>
			<td>1</td>
			<td>X&acirc;y dựng c&aacute;c giải ph&aacute;p ứng dụng CNTT tổng thể cho Ph&ograve;ng kh&aacute;m Đa khoa Từ thiện - Tuệ Tĩnh Đường Hải Đức</td>
			<td>C&ocirc;ng ty TTNT</td>
		</tr>
		<tr>
			<td>2</td>
			<td>X&acirc;y dựng c&aacute;c giải ph&aacute;p ứng dụng CNTT tổng thể cho đơn vị</td>
			<td>Đ&agrave;i Ph&aacute;t thanh Truyền h&igrave;nh Thừa Thi&ecirc;n Huế</td>
		</tr>
		<tr>
			<td>3</td>
			<td>X&acirc;y dựng c&aacute;c giải ph&aacute;p ứng dụng CNTT tổng thể cho doanh nghiệp</td>
			<td>C&ocirc;ng ty TNHH Nh&agrave; nước Một th&agrave;nh vi&ecirc;n X&acirc;y dựng v&agrave; Cấp nước Thừa Thi&ecirc;n Huế</td>
		</tr>
		<tr>
			<td>4</td>
			<td>X&acirc;y dựng&nbsp;phần mềm quản l&yacute; nh&acirc;n sử, chấm c&ocirc;ng</td>
			<td>C&ocirc;ng ty TNHH giải ph&aacute;p phần mềm Kim Cương&nbsp;</td>
		</tr>
		<tr>
			<td>5&nbsp;</td>
			<td>Tư vấn, x&acirc;y dựng&nbsp;phần mềm Quản l&yacute; văn bản v&agrave; điều h&agrave;nh</td>
			<td>C&ocirc;ng ty cổ phần Thủy Điện Hương Điền&nbsp;</td>
		</tr>
		<tr>
			<td>6</td>
			<td>Triển khai phần mềm Quản l&yacute; văn bản v&agrave; điều h&agrave;nh</td>
			<td>C&ocirc;ng ty Cổ phần cấp nước Thừa Thi&ecirc;n Huế</td>
		</tr>
		<tr>
			<td>7</td>
			<td>N&acirc;ng cấp hệ thống đ&aacute;nh gi&aacute; chỉ số năng lực cạnh tranh c&aacute;c Sở, ban, ng&agrave;nh v&agrave; địa phương thuộc tỉnh</td>
			<td>Viện Nghi&ecirc;n cứu ph&aacute;t tri&ecirc;n tỉnh Thừa Thi&ecirc;n Huế</td>
		</tr>
		<tr>
			<td>8</td>
			<td>N&acirc;ng cấp phần mềm Cơ sở dữ liệu chuy&ecirc;n gia, cơ sở dữ liệu &yacute; tưởng giải ph&aacute;p ph&aacute;t triển tỉnh Thừa Thi&ecirc;n Huế</td>
			<td>Viện Nghi&ecirc;n cứu ph&aacute;t tri&ecirc;n tỉnh Thừa Thi&ecirc;n Huế</td>
		</tr>
		<tr>
			<td>9</td>
			<td>N&acirc;ng cấp Cổng th&ocirc;ng tin sản phẩm đặc sản Huế</td>
			<td>Trung t&acirc;m X&uacute;c tiến Thương mại Thừa Thi&ecirc;n Huế</td>
		</tr>
		<tr>
			<td colspan="3">
			<p><strong>Dự &aacute;n thiết kế v&agrave; x&acirc;y dựng website</strong></p>
			</td>
		</tr>
		<tr>
			<td>1</td>
			<td>X&acirc;y dựng website hỗ trợ doanh nghiệp</td>
			<td>Trung t&acirc;m Khuyến n&ocirc;ng v&agrave; x&uacute;c tiến Thương mại Thừa Thi&ecirc;n Huế</td>
		</tr>
		<tr>
			<td>2</td>
			<td>Thiết kế, x&acirc;y dựng trang th&ocirc;ng tin điện tử</td>
			<td>Trường Cao đẳng Nghề Du lịch Huế</td>
		</tr>
		<tr>
			<td>3</td>
			<td>Thiết kế, x&acirc;y dựng trang th&ocirc;ng tin doanh nghiệp</td>
			<td>C&ocirc;ng ty Cổ phần Huetronic</td>
		</tr>
		<tr>
			<td>4</td>
			<td>Thiết kế, x&acirc;y dựng trang th&ocirc;ng tin điện tử</td>
			<td>Trường Đại học Kinh tế Huế</td>
		</tr>
		<tr>
			<td>5</td>
			<td>Thiết kế, x&acirc;y dựng trang th&ocirc;ng tin điện tử phục vụ dạy học</td>
			<td>Sở Gi&aacute;o dục v&agrave; Đ&agrave;o tạo tỉnh Kon Tum</td>
		</tr>
		<tr>
			<td>6</td>
			<td>X&acirc;y dựng phần mềm quản trị v&agrave; xử l&yacute; website&nbsp;</td>
			<td>C&ocirc;ng ty TNHH NN MTV quản l&yacute; khai th&aacute;c c&ocirc;ng tr&igrave;nh thủy lợi Thừa Thi&ecirc;n Huế</td>
		</tr>
		<tr>
			<td>7&nbsp;</td>
			<td>X&acirc;y dựng phần mềm quản trị v&agrave; xử l&yacute; website&nbsp;</td>
			<td>Chi Nh&aacute;nh Tổng c&ocirc;ng ty Đường sắt Việt Nam- Khai th&aacute;c đường s&aacute;t Thừa Thi&ecirc;n Huế</td>
		</tr>
		<tr>
			<td>8&nbsp;</td>
			<td>X&acirc;y dựng phần mềm quản trị v&agrave; xử l&yacute; website&nbsp;</td>
			<td>C&ocirc;ng ty cổ phần đầu tư x&acirc;y dựng du lịch v&agrave; ph&aacute;t triển Đất v&agrave;ng</td>
		</tr>
		<tr>
			<td>9&nbsp;</td>
			<td>X&acirc;y dựng Trang th&ocirc;ng tin điện tử về Nh&agrave; vườn Huế</td>
			<td>Ban quản l&yacute; v&agrave; bảo vệ nh&agrave; Huế&nbsp;</td>
		</tr>
		<tr>
			<td>10</td>
			<td>X&acirc;y dựng Hệ thống trang th&ocirc;ng tin điện tử</td>
			<td>&nbsp;Bảo t&agrave;ng Thi&ecirc;n nhi&ecirc;n duy&ecirc;n hải Miền Trung</td>
		</tr>
		<tr>
			<td>11</td>
			<td>X&acirc;y dựng website v&agrave; ph&acirc;n hệ quản l&yacute; số liệu thu mua của c&aacute;c kho</td>
			<td>C&ocirc;ng ty Cổ phần Ong Mật Đaklak</td>
		</tr>
		<tr>
			<td>12</td>
			<td>X&acirc;y dựng website Nh&atilde;n hiệu tập thể thịt b&ograve; v&agrave;ng A Lưới</td>
			<td>Trung t&acirc;m Ứng dụng tiến bộ Khoa học v&agrave; C&ocirc;ng nghệ</td>
		</tr>
		<tr>
			<td>13</td>
			<td>X&acirc;y dựng website</td>
			<td>Bệnh viện Răng H&agrave;m Mặt Huế</td>
		</tr>
		<tr>
			<td>14</td>
			<td>X&acirc;y dựng Cổng th&ocirc;ng tin giao dịch c&ocirc;ng nghệ v&agrave; thiết bị</td>
			<td>Trung t&acirc;m Ứng dụng tiến bộ Khoa học v&agrave; C&ocirc;ng nghệ</td>
		</tr>
		<tr>
			<td colspan="3">
			<p><strong>DỰ &Aacute;N CHO C&Aacute;C TỔ CHỨC DOANH NGHIỆP NƯỚC NGO&Agrave;I</strong></p>
			</td>
		</tr>
		<tr>
			<td>&nbsp;</td>
			<td><strong>T&ecirc;n hợp đồng</strong></td>
			<td><strong>Chủ đầu tư</strong></td>
		</tr>
		<tr>
			<td>1</td>
			<td>Dự &aacute;n x&acirc;y dựng phần mềm Quản l&yacute; khu vui chơi giải tr&iacute; Odelyos</td>
			<td>C&ocirc;ng ty Omniris Technologies</td>
		</tr>
		<tr>
			<td>2</td>
			<td>Dự &aacute;n thiết kế, x&acirc;y dựng phần mềm th&agrave;nh phố điện tử (eCity)</td>
			<td>C&ocirc;ng ty HereUare, Hoa Kỳ</td>
		</tr>
		<tr>
			<td>3</td>
			<td>Dự &aacute;n thiết kế, x&acirc;y dựng phần mềm mạng x&atilde; hội Viet Planet</td>
			<td>C&ocirc;ng ty HereUare, Hoa Kỳ</td>
		</tr>
		<tr>
			<td>4</td>
			<td>Dự &aacute;n thiết kế v&agrave; x&acirc;y dựng phần mềm chia sẻ video Broad Video Network (BVN)</td>
			<td>C&ocirc;ng ty HereUare, Hoa Kỳ</td>
		</tr>
		<tr>
			<td>5</td>
			<td>Dự &aacute;n x&acirc;y dựng v&agrave; n&acirc;ng cấp c&aacute;c website C&ocirc;ng ty Mandarin Media</td>
			<td>C&ocirc;ng ty Mandarin Media</td>
		</tr>
	</tbody>
</table>
', 0, NULL, N'du-an-tieu-bieu-17042024163834', CAST(N'2024-04-17T00:00:00.000' AS DateTime), NULL, N'', N'', N'', N'Tiếng việt (Việt Nam)', 0, N'', 1, N'725ef3a5-6329-4edb-a1cf-dfeefbfde739', N'', CAST(N'2024-04-17T10:45:13.643' AS DateTime), CAST(N'2024-04-17T16:39:15.610' AS DateTime), 2, 2, N'', N'', N'', N'', NULL, NULL, 0, 0)
INSERT [dbo].[TB_BaiViet] ([ID], [TieuDe], [AnhDaiDien], [Thumbnail], [MoTaAnhDaiDien], [TomTat], [NoiDung], [TieuDiem], [ThuTuHienThi], [URLBaiViet], [NgayCongBo], [HetHanCongBo], [NguonTin], [TacGia], [TacQuyen], [NgonNgu], [LuotXem], [TuKhoa], [TrangThai], [ChuyenMucID], [ChuyenMucKhacID], [CreatedOnDate], [LastModifiedOnDate], [CreatedByUserID], [LastModifiedByUserID], [DienThoai], [Email], [DiaChi], [Website], [GioMoCua], [GioDongCua], [ToaDoX], [ToaDoY]) VALUES (N'48324fd0-7d18-43c6-9f90-2314885cae57', N'PHẦN MỀM QUẢN LÝ VỀ CÔNG TÁC THANH TRA, KIỂM TRA', N'/Upload\BaiViet\2024\AnhDaiDien-ThanhTraKiemTra_1_1712048563.jpg', N'https://huecit.vn/Portals/3/Medias/Nam2022/T11/HueCIT_BannerSanPham_PhanMemQuanLyCongTacThanhTraKiemTra_22_11_2022_15_08_20_674_CH.png', N'PHẦN MỀM QUẢN LÝ VỀ CÔNG TÁC THANH TRA, KIỂM TRA', N'Hệ thống quản lý công tác thanh tra, kiểm tra là giải pháp đáp ứng đẩy đủ các yêu cầu nghiệp vụ của ngành về công tác thanh tra, kiểm tra, xử lý chồng chéo và tổng hợp số liệu trên phạm vi toàn tỉnh.', N'<div class="NewsContent_Products bg-pink d-flex justify-content-between">
<div class="NewsContent_Products_item align-self-center col-md-6 flex-fill"><img alt="" src="/Upload/BaiViet/2024/giao dien_1_1713321006.png" style="height:590px; width:1287px" /></div>

<div class="NewsContent_Products_item align-self-center col-md-6 flex-fill">
<p class="NewsContent_Products_item_title">T&iacute;nh năng nổi bật</p>

<ul>
	<li>X&acirc;y dựng kế hoạch thanh tra v&agrave; xử l&yacute; chồng ch&eacute;o</li>
	<li>Quản l&yacute; cuộc thanh tra, kiểm tra</li>
	<li>Quản l&yacute; số liệu, nội dung kiến nghị v&agrave; xử l&yacute; kiến nghị sau thanh tra, kiểm tra</li>
	<li>Tr&iacute;ch xuất c&aacute;c mẫu b&aacute;o c&aacute;o theo TT02-TTCP theo kỳ b&aacute;o c&aacute;o, theo từng đơn vị, ph&ograve;ng ban</li>
</ul>
</div>
</div>

<div class="NewsContent_Products d-flex justify-content-between">
<div class="NewsContent_Products_item align-self-center col-md-6 flex-fill">
<p class="NewsContent_Products_item_title">Ưu điểm của giải ph&aacute;p</p>

<ul>
	<li>Phần mềm được x&acirc;y dựng tr&ecirc;n nền tảng c&ocirc;ng nghệ điện to&aacute;n đ&aacute;m m&acirc;y, gi&uacute;p triển khai, bảo tr&igrave; hệ thống dễ d&agrave;ng, tiết kiệm chi ph&iacute;</li>
	<li>Hệ thống triển khai tập trung, li&ecirc;n th&ocirc;ng giữa c&aacute;c đơn vị, tiết kiệm thời gian triển khai, c&aacute;c m&aacute;y trạm kh&ocirc;ng cần phải c&agrave;i đặt phần mềm.</li>
	<li>Phần mềm hỗ trợ tự động kiểm tra chồng ch&eacute;o khi lập kế hoạch thanh tra, kiểm tra tại đơn vị, từ đ&oacute; hỗ trợ thanh tra r&agrave; so&aacute;t v&agrave; xử l&yacute; chồng ch&eacute;o tr&ecirc;n phạm vi to&agrave;n tỉnh.</li>
	<li>Tổng hợp b&aacute;o c&aacute;o nhanh ch&oacute;ng, số liệu ch&iacute;nh x&aacute;c</li>
	<li>Bảo tr&igrave; hệ thống dễ d&agrave;ng</li>
	<li>Hỗ trợ c&aacute;c biểu mẫu phiếu in, tổng hợp b&aacute;o c&aacute;o theo y&ecirc;u cầu quy tr&igrave;nh nghiệp vụ</li>
</ul>
</div>

<div class="NewsContent_Products_item align-self-center col-md-6 flex-fill">
<p class="NewsContent_Products_item_title">Li&ecirc;n hệ:</p>

<p>Ph&ograve;ng kinh doanh 0935.787.224/ 0777.657.979</p>

<p>Link sử dụng phần mềm: <a href="http://quanlythanhtra.huecit.com" target="_blank">http://quanlythanhtra.huecit.com</a></p>
</div>
</div>

<p><iframe frameborder="0" height="50px" name="f420401b0f76accfe" sandbox="" scrolling="no" src="https://www.facebook.com/v2.5/plugins/share_button.php?app_id=1003337709730939&amp;channel=https%3A%2F%2Fstaticxx.facebook.com%2Fx%2Fconnect%2Fxd_arbiter%2F%3Fversion%3D46%23cb%3Dfe4d105466ee2d43a%26domain%3Dhuecit.vn%26is_canvas%3Dfalse%26origin%3Dhttps%253A%252F%252Fhuecit.vn%252Ffb72e8753a0843a32%26relation%3Dparent.parent&amp;container_width=1903&amp;href=https%3A%2F%2Fhuecit.vn%2FSan-pham%2FThong-tin-san-pham%2Ftid%2FHueCIT-eDoc-Phan-mem-Quan-ly-Van-ban-va-Dieu-hanh%2Fpid%2F2223%2Fcid%2F2223&amp;layout=button_count&amp;locale=vi_VN&amp;sdk=joey" title="fb:share_button Facebook Social Plugin" width="1000px"></iframe></p>
', 0, NULL, N'phan-mem-quan-ly-ve-cong-tac-thanh-tra-kiem-tra-17042024141755', CAST(N'2024-04-01T00:00:00.000' AS DateTime), NULL, N'', N'', N'', N'Tiếng việt (Việt Nam)', 0, N'', 1, N'6eee995f-d0f9-4951-8882-706cf843c0be', N'B51F7635-9FB5-4494-95A3-10B57D0B5CF4', CAST(N'2024-04-01T14:44:17.780' AS DateTime), CAST(N'2024-04-17T14:18:36.527' AS DateTime), 2, 2, N'', N'', N'', N'', NULL, NULL, 0, 0)
INSERT [dbo].[TB_BaiViet] ([ID], [TieuDe], [AnhDaiDien], [Thumbnail], [MoTaAnhDaiDien], [TomTat], [NoiDung], [TieuDiem], [ThuTuHienThi], [URLBaiViet], [NgayCongBo], [HetHanCongBo], [NguonTin], [TacGia], [TacQuyen], [NgonNgu], [LuotXem], [TuKhoa], [TrangThai], [ChuyenMucID], [ChuyenMucKhacID], [CreatedOnDate], [LastModifiedOnDate], [CreatedByUserID], [LastModifiedByUserID], [DienThoai], [Email], [DiaChi], [Website], [GioMoCua], [GioDongCua], [ToaDoX], [ToaDoY]) VALUES (N'd8d03e26-314f-4dd3-a7af-307c7c4a9107', N'Thi trắc nghiệm trực tuyến tìm hiểu về Ngày truyền thống Ngành Tuyên giáo của Đảng', N'/Upload\BaiViet\2024\Khamphahue_Cuoc-thi-trac-nghiem-ve-nganh-tuyen-giao_1713342675.jpg', N'/Upload\BaiViet\2024\Khamphahue_Cuoc-thi-trac-nghiem-ve-nganh-tuyen-giao_1713342675.jpg', N'Thi trắc nghiệm trực tuyến tìm hiểu về Ngày truyền thống Ngành Tuyên giáo của Đảng', N'Cuộc thi trắc nghiệm trực tuyến tìm hiểu về truyền thống ngành Tuyên giáo của Đảng diễn ra hàng tuần, kéo dài từ ngày 17/7/2023 đến hết ngày 06/8/2023.', N'<h4><a href="https://huecit.vn/Blog/Tin-tuc-Blog/cid/328/tid/Diem-tin" id="dnn_ctr677_ViewTinBai_DsChuyenMucTinBai_lnkTieuDeChuyenMuc_TinBai">ĐIỂM TIN</a></h4>

<p>Thi trắc nghiệm trực tuyến t&igrave;m hiểu về Ng&agrave;y truyền thống Ng&agrave;nh Tuy&ecirc;n gi&aacute;o của Đảng</p>

<p>20/07/2023 8:34:00 SA</p>

<p>Xem cỡ chữ:&nbsp;<a href="https://huecit.vn/Blog/Tin-tuc-Blog/cid/328/pid/2428/tid/Thi-trac-nghiem-truc-tuyen-tim-hieu-ve-Ngay-truyen-thong-Nganh-Tuyen-giao-cua-Dang#"><input name="dnn$ctr677$ViewTinBai$DsChuyenMucTinBai$btnZoomOut" src="https://huecit.vn/DesktopModules/DNNTinBai/images/icon_zoom1.png" type="image" /></a>&nbsp;<a href="https://huecit.vn/Blog/Tin-tuc-Blog/cid/328/pid/2428/tid/Thi-trac-nghiem-truc-tuyen-tim-hieu-ve-Ngay-truyen-thong-Nganh-Tuyen-giao-cua-Dang#"><input name="dnn$ctr677$ViewTinBai$DsChuyenMucTinBai$btnZoomIn" src="https://huecit.vn/DesktopModules/DNNTinBai/images/icon_zoom2.png" type="image" />&nbsp;</a><a href="https://huecit.vn/Blog/Tin-tuc-Blog/cid/328/pid/2428/tid/Thi-trac-nghiem-truc-tuyen-tim-hieu-ve-Ngay-truyen-thong-Nganh-Tuyen-giao-cua-Dang#"><input name="dnn$ctr677$ViewTinBai$DsChuyenMucTinBai$btnZoom" src="https://huecit.vn/DesktopModules/DNNTinBai/images/icon_zoom.png" type="image" /></a></p>

<ul>
</ul>

<p>Cuộc thi trắc nghiệm trực tuyến t&igrave;m hiểu về truyền thống ng&agrave;nh Tuy&ecirc;n gi&aacute;o của Đảng diễn ra h&agrave;ng tuần, k&eacute;o d&agrave;i từ ng&agrave;y 17/7/2023 đến hết ng&agrave;y 06/8/2023.</p>

<p><img id="dnn_ctr677_ViewTinBai_DsChuyenMucTinBai_imgAnhDaiDien" src="https://huecit.vn/Portals/0/Medias/Nam2023/T7/Khamphahue_Cuoc-thi-trac-nghiem-ve-nganh-tuyen-giao.jpg" /></p>

<p>Hướng tới kỷ niệm 78 năm Ng&agrave;y C&aacute;ch mạng th&aacute;ng T&aacute;m th&agrave;nh c&ocirc;ng (19/8/1945 - 19/8/2023) v&agrave; Ng&agrave;y Quốc kh&aacute;nh nước Cộng h&ograve;a x&atilde; hội chủ nghĩa Việt Nam (02/9/1945 - 02/9/2023); nh&acirc;n kỷ niệm 93 năm Ng&agrave;y truyền thống ng&agrave;nh Tuy&ecirc;n gi&aacute;o của Đảng (01/8/1930 - 01/8/2023), Ban Tuy&ecirc;n gi&aacute;o Trung ương tổ chức Cuộc thi trắc nghiệm trực tuyến t&igrave;m hiểu về truyền thống ng&agrave;nh Tuy&ecirc;n gi&aacute;o của Đảng tr&ecirc;n Trang Th&ocirc;ng tin điện tử tổng hợp B&aacute;o c&aacute;o vi&ecirc;n (baocaovien.vn).</p>

<p>Cuộc thi nhằm tuy&ecirc;n truyền về lịch sử 93 năm x&acirc;y dựng v&agrave; ph&aacute;t triển ng&agrave;nh Tuy&ecirc;n gi&aacute;o của Đảng. Qua đ&oacute;, gi&uacute;p c&aacute;n bộ, đảng vi&ecirc;n v&agrave; c&aacute;c tầng lớp nh&acirc;n d&acirc;n hiểu, nhận thức đầy đủ, s&acirc;u sắc hơn về ng&agrave;nh Tuy&ecirc;n gi&aacute;o của Đảng; về vai tr&ograve; của c&ocirc;ng t&aacute;c Tuy&ecirc;n gi&aacute;o đối với sự nghiệp c&aacute;ch mạng Việt Nam dưới sự l&atilde;nh đạo của Đảng. Đ&acirc;y cũng l&agrave; dịp khẳng định tr&aacute;ch nhiệm v&agrave; quyết t&acirc;m của to&agrave;n Ng&agrave;nh trong tổ chức, triển khai thực hiện thắng lợi Nghị quyết Đại hội XIII của Đảng; g&oacute;p phần đẩy mạnh c&ocirc;ng t&aacute;c tuy&ecirc;n truyền chủ trương, đường lối của Đảng v&agrave; ch&iacute;nh s&aacute;ch, ph&aacute;p luật của Nh&agrave; nước; bảo vệ nền tảng tư tưởng của Đảng, đấu tranh, phản b&aacute;c quan điểm sai tr&aacute;i của c&aacute;c thế lực th&ugrave; địch.</p>

<p>Cuộc thi diễn ra từ ng&agrave;y 17/7/2023 đến hết ng&agrave;y 06/8/2023, tương ứng với 3 tuần thi: Tuần thứ nhất: từ ng&agrave;y 17 - 23/7/2023; Tuần thứ hai: từ ng&agrave;y 24 - 30/7/2023; Tuần thứ ba: từ ng&agrave;y 31/7 - 06/8/2023.</p>

<p>Mỗi tuần thi, Ban Tổ chức sẽ đưa ra một số c&acirc;u hỏi trắc nghiệm về lịch sử ng&agrave;nh Tuy&ecirc;n gi&aacute;o; chức năng, nhiệm vụ, cơ cấu tổ chức của ng&agrave;nh Tuy&ecirc;n gi&aacute;o; một số đặc trưng, y&ecirc;u cầu, nhiệm vụ nổi bật của ng&agrave;nh Tuy&ecirc;n gi&aacute;o trong giai đoạn hiện nay&hellip;</p>

<p>Thể lệ Cuộc thi, c&ugrave;ng c&aacute;c th&ocirc;ng tin chung về Cuộc thi, c&acirc;u hỏi thi, người đạt giải tuần; t&agrave;i liệu tham khảo sẽ được đăng tr&ecirc;n Trang Th&ocirc;ng tin điện tử tổng hợp B&aacute;o c&aacute;o vi&ecirc;n (baocaovien.vn). Ngo&agrave;i ra, link li&ecirc;n kết Cuộc thi, th&ocirc;ng tin về Cuộc thi cũng được đăng tải tr&ecirc;n một số cơ quan b&aacute;o ch&iacute;; Trang Th&ocirc;ng tin điện tử của Ban Tuy&ecirc;n gi&aacute;o c&aacute;c tỉnh ủy, th&agrave;nh ủy trực thuộc Trung ương&hellip;</p>

<p>Cuộc thi hướng đến c&aacute;c đối tượng: C&aacute;n bộ, đảng vi&ecirc;n, c&ocirc;ng chức, vi&ecirc;n chức, người lao động; chiến sĩ c&aacute;c lực lượng vũ trang; đo&agrave;n vi&ecirc;n, hội vi&ecirc;n c&aacute;c tổ chức ch&iacute;nh trị - x&atilde; hội; c&aacute;c tầng lớp nh&acirc;n d&acirc;n (trừ c&aacute;c th&agrave;nh vi&ecirc;n trong Ban Tổ chức, Tổ Thư k&yacute; Cuộc thi). Ban Tổ chức Cuộc thi khuyến kh&iacute;ch v&agrave; đề nghị đội ngũ B&aacute;o c&aacute;o vi&ecirc;n c&aacute;c cấp, tuy&ecirc;n truyền vi&ecirc;n n&ograve;ng cốt cơ sở ph&aacute;t huy tinh thần tr&aacute;ch nhiệm, t&iacute;ch cực hưởng ứng tham gia Cuộc thi.</p>

<p>Để tham gia, người dự thi truy cập &ldquo;Cuộc thi trắc nghiệm trực tuyến&rdquo; tại Trang Th&ocirc;ng tin điện tử tổng hợp B&aacute;o c&aacute;o vi&ecirc;n (baocaovien.vn) của Ban Tuy&ecirc;n gi&aacute;o Trung ương hoặc tr&ecirc;n c&aacute;c b&aacute;o, tạp ch&iacute;, trang th&ocirc;ng tin điện tử c&oacute; link li&ecirc;n kết Cuộc thi. Sau khi trả lời c&aacute;c c&acirc;u hỏi trắc nghiệm bằng c&aacute;ch lựa chọn 01 phương &aacute;n đ&uacute;ng cho mỗi c&acirc;u hỏi, người dự thi phải dự đo&aacute;n tổng số lượt người dự thi trong tuần thi đ&oacute;; nhấp chuột v&agrave;o phần &nbsp;&ldquo;Ho&agrave;n th&agrave;nh&rdquo; để kết th&uacute;c phần trả lời.</p>

<p>Cơ cấu giải thưởng mỗi tuần thi bao gồm:<strong>&nbsp;01 giải Nhất</strong>: trị gi&aacute; 3.000.000 đồng;<strong>&nbsp;02</strong>&nbsp;<strong>giải Nh&igrave;</strong>: mỗi giải trị gi&aacute; 2.000.000 đồng;<strong>&nbsp;03 giải Ba</strong>; mỗi giải trị gi&aacute; 1.000.000 đồng;<strong>&nbsp;05 giải Khuyến kh&iacute;ch</strong>: mỗi giải trị gi&aacute; 500.000 đồng; v&agrave; một số giải thưởng kh&aacute;c do Ban Tổ chức Cuộc thi quyết định (Ngo&agrave;i tiền thưởng, c&aacute;c c&aacute; nh&acirc;n đạt giải sẽ được nhận Giấy chứng nhận của Ban Tổ chức Cuộc thi).</p>
', 0, NULL, N'thi-trac-nghiem-truc-tuyen-tim-hieu-ve-ngay-truyen-thong-nganh-tuyen-giao-cua-dang-17042024153115', CAST(N'2024-04-17T00:00:00.000' AS DateTime), NULL, N'', N'', N'', N'Tiếng việt (Việt Nam)', 0, N'', 1, N'2f167597-9f57-4a03-9feb-3013eabedf53', N'', CAST(N'2024-04-17T15:31:17.483' AS DateTime), NULL, 2, NULL, N'', N'', N'', N'', NULL, NULL, 0, 0)
INSERT [dbo].[TB_BaiViet] ([ID], [TieuDe], [AnhDaiDien], [Thumbnail], [MoTaAnhDaiDien], [TomTat], [NoiDung], [TieuDiem], [ThuTuHienThi], [URLBaiViet], [NgayCongBo], [HetHanCongBo], [NguonTin], [TacGia], [TacQuyen], [NgonNgu], [LuotXem], [TuKhoa], [TrangThai], [ChuyenMucID], [ChuyenMucKhacID], [CreatedOnDate], [LastModifiedOnDate], [CreatedByUserID], [LastModifiedByUserID], [DienThoai], [Email], [DiaChi], [Website], [GioMoCua], [GioDongCua], [ToaDoX], [ToaDoY]) VALUES (N'f3b1bfd7-5d23-4259-9f9d-392e130341cd', N'Đoàn Thanh niên Trung tâm CNTT tỉnh và các hoạt động thiết thực trong Tháng Thanh niên 2024', N'/Upload\BaiViet\2024\HueCIT_Tang-qua-cho-tre-em-ngheo-Thang-Thanh-Nien_1713233549.jpg', N'/Upload\BaiViet\2024\HueCIT_Tang-qua-cho-tre-em-ngheo-Thang-Thanh-Nien_1713233549.jpg', N'Đoàn Thanh niên Trung tâm CNTT tỉnh và các hoạt động thiết thực trong Tháng Thanh niên 2024', N'Thiết thực triển khai chuỗi các hoạt động kỷ niệm 93 năm Ngày thành lập Đoàn TNCS Hồ Chí Minh (26/3/1931 - 26/3/2024), trong tháng 3/2024, Chi đoàn Trung tâm CNTT tỉnh Thừa Thiên Huế đã thực hiện các công việc, phần việc thanh niên có ý nghĩa.', N'<p>Ng&agrave;y 19/3 vừa qua, Chi đo&agrave;n Trung t&acirc;m CNTT tỉnh Thừa Thi&ecirc;n Huế đ&atilde; phối hợp với Chi đo&agrave;n PA03 - C&ocirc;ng an tỉnh, Chi đo&agrave;n Tham mưu Tổng hợp - C&ocirc;ng an Th&agrave;nh phố Huế v&agrave; c&aacute;c c&aacute; nh&acirc;n mạnh thường qu&acirc;n li&ecirc;n quan đi thăm v&agrave; tặng qu&agrave; cho 20 em học sinh ở trường Tiểu học B&igrave;nh Điền v&agrave; 31 em học sinh ở trường Tiểu học Hồng Tiến c&oacute; ho&agrave;n cảnh kh&oacute; khăn. Mỗi phần qu&agrave; trị gi&aacute; 500.000 đồng (bao gồm 200.000 đồng sữa, b&aacute;nh kẹo v&agrave; 300.000 đồng tiền mặt) v&agrave; qu&agrave; tặng gấu b&ocirc;ng. Ngo&agrave;i ra, Đo&agrave;n cũng tiến h&agrave;nh thăm v&agrave; tặng 6 phần qu&agrave; cho 6 gia đ&igrave;nh c&oacute; ho&agrave;n cảnh kh&oacute; khăn nhất x&atilde; B&igrave;nh Tiến, Thị x&atilde; Hương Tr&agrave; với mỗi phần qu&agrave; l&agrave; 20 k&iacute; gạo.</p>

<p><img alt="" src="https://huecit.vn/Portals/0/TinHoatDong/Nam2024/ThangThanhNien/HueCIT_Tang-qua-cho-tre-em-ngheo-Thang-Thanh-Nien-6.jpg?ver=2024-03-26-162701-043" title="" /></p>

<p><img alt="" src="https://huecit.vn/Portals/0/TinHoatDong/Nam2024/ThangThanhNien/HueCIT_Tang-qua-cho-tre-em-ngheo-Thang-Thanh-Nien-1.jpg?ver=2024-03-26-161904-523" title="" /></p>

<p><em>Tặng qu&agrave; cho c&aacute;c em học sinh ngh&egrave;o nh&acirc;n dịp Th&aacute;ng Thanh ni&ecirc;n</em></p>

<p><img alt="" src="https://huecit.vn/Portals/0/TinHoatDong/Nam2024/ThangThanhNien/HueCIT_Tang-qua-cho-tre-em-ngheo-Thang-Thanh-Nien-2.jpg?ver=2024-03-26-161904-523" title="" /></p>

<p><img alt="" src="https://huecit.vn/Portals/0/TinHoatDong/Nam2024/ThangThanhNien/HueCIT_Tang-qua-cho-tre-em-ngheo-Thang-Thanh-Nien-3.jpg?ver=2024-03-26-162747-430" title="" /></p>

<p><em>Hoạt động thăm v&agrave; tặng qu&agrave; c&aacute;c gia đ&igrave;nh c&oacute; ho&agrave;n cảnh kh&oacute; khăn nhất tr&ecirc;n địa b&agrave;n x&atilde; B&igrave;nh Tiến, thị x&atilde; Hương Tr&agrave;</em></p>

<p>S&aacute;ng ng&agrave;y 26/3, nh&acirc;n dịp kỷ niệm 93 năm Ng&agrave;y th&agrave;nh lập Đo&agrave;n TNCS Hồ Ch&iacute; Minh (26/3/1931 - 26/3/2024), Chi đo&agrave;n Trung t&acirc;m CNTT tỉnh cũng đ&atilde; c&oacute; buổi họp trực tuyến c&ugrave;ng Quận Đo&agrave;n B&igrave;nh T&acirc;n v&agrave; Quận Đo&agrave;n 7 (Th&agrave;nh phố Hồ Ch&iacute; Minh) về việc b&agrave;n giao, nh&acirc;n rộng phần mềm quản l&yacute; nghĩa trang liệt sĩ do Đo&agrave;n thanh ni&ecirc;n Trung t&acirc;m CNTT tỉnh x&acirc;y dựng. Đ&acirc;y l&agrave; c&ocirc;ng tr&igrave;nh thanh ni&ecirc;n đ&atilde; được Chi đo&agrave;n Trung t&acirc;m CNTT tỉnh triển khai th&agrave;nh c&ocirc;ng cho Nghĩa trang Liệt sĩ B&igrave;nh Ch&aacute;nh - B&igrave;nh T&acirc;n (TP. Hồ Ch&iacute; Minh) v&agrave; thực hiện b&agrave;n giao cho địa phương nh&acirc;n dịp kỷ niệm Ng&agrave;y Thương binh - Liệt sĩ trong năm 2023. Ph&aacute;t huy tinh thần xung k&iacute;ch thanh ni&ecirc;n trong c&ocirc;ng t&aacute;c chuyển đổi số, c&ugrave;ng tấm l&ograve;ng tri &acirc;n của tuổi trẻ đối với c&aacute;c thế hệ cha anh đ&atilde; hi sinh v&igrave; Tổ quốc trong cả nước, c&ugrave;ng với sự tin tưởng v&agrave; kết nối từ Quận Đo&agrave;n B&igrave;nh T&acirc;n, Chi đo&agrave;n Trung t&acirc;m dự kiến sẽ tiếp tục triển khai, nh&acirc;n rộng m&ocirc; h&igrave;nh n&agrave;y tr&ecirc;n địa b&agrave;n th&agrave;nh phố Hồ Ch&iacute; Minh th&ocirc;ng qua k&yacute; kết hoạt động năm 2024 với Chi đo&agrave;n Văn ph&ograve;ng Quận Đo&agrave;n B&igrave;nh T&acirc;n cũng như đang c&oacute; c&aacute;c nghi&ecirc;n cứu, đề xuất để nh&acirc;n rộng tr&ecirc;n địa b&agrave;n tỉnh Thừa Thi&ecirc;n Huế.</p>

<p><img alt="" src="https://huecit.vn/Portals/0/TinHoatDong/Nam2024/ThangThanhNien/HueCIT_Ky-Ket-Hoat-Dong_QuanDoanBinhTan-1.jpg?ver=2024-03-26-162017-267" title="" /></p>

<p><em>Buổi l&agrave;m việc trực tuyến v&agrave; triển khai k&yacute; kết hoạt động năm 2024 nhằm nh&acirc;n rộng m&ocirc; h&igrave;nh phần mềm nghĩa trang liệt sĩ của HueCIT với lực lượng n&ograve;ng cốt l&agrave; đo&agrave;n vi&ecirc;n thanh ni&ecirc;n Chi đo&agrave;n Trung t&acirc;m x&acirc;y dựng v&agrave; ph&aacute;t triển</em></p>

<p>Trước đ&oacute;, v&agrave;o ng&agrave;y 25/3, Chi đo&agrave;n Trung t&acirc;m CNTT tỉnh cũng đ&atilde; tổ chức sinh hoạt Chi đo&agrave;n Th&aacute;ng 3 nhằm &ocirc;n lại truyền thống vẻ vang của Đo&agrave;n TNCS Hồ Ch&iacute; Minh cho đo&agrave;n vi&ecirc;n thanh ni&ecirc;n tại đơn vị. Hiện nay, Chi đo&agrave;n Trung t&acirc;m CNTT tỉnh c&oacute; 29 đo&agrave;n vi&ecirc;n.&nbsp;C&aacute;c đo&agrave;n vi&ecirc;n Chi đo&agrave;n đều c&oacute; tr&igrave;nh độ Đại học, tr&ecirc;n Đại học. Trong đ&oacute;: 05 đo&agrave;n vi&ecirc;n l&agrave; Thạc sĩ; 01 đo&agrave;n vi&ecirc;n đang học Thạc sĩ, 01 đo&agrave;n vi&ecirc;n đang l&agrave;m Nghi&ecirc;n cứu sinh của chương tr&igrave;nh đ&agrave;o tạo Tiến sĩ; 06 đo&agrave;n vi&ecirc;n l&agrave; đảng vi&ecirc;n. Th&ocirc;ng qua c&aacute;c buổi sinh hoạt Chi đo&agrave;n, c&aacute;c đo&agrave;n vi&ecirc;n thanh ni&ecirc;n c&oacute; cơ hội học tập, bồi dưỡng n&acirc;ng cao nhận thức về Đảng, về Đo&agrave;n cũng như &yacute; thức được vai tr&ograve; xung k&iacute;ch thanh ni&ecirc;n tại đơn vị, qua đ&oacute; ph&aacute;t hiện, đ&agrave;o tạo v&agrave; giới thiệu c&aacute;c đo&agrave;n vi&ecirc;n ưu t&uacute; để Chi bộ Trung t&acirc;m r&egrave;n luyện, ph&aacute;t triển đứng v&agrave;o h&agrave;ng ngũ của Đảng.</p>

<p><img alt="" src="https://huecit.vn/Portals/0/TinHoatDong/Nam2024/ThangThanhNien/HueCIT_Sinh-hoat-Doan_Thang-Thanh-Nien.jpg?ver=2024-03-26-162017-300" title="" /></p>
', 0, NULL, N'doan-thanh-nien-trung-tam-cntt-tinh-va-cac-hoat-dong-thiet-thuc-trong-thang-thanh-nien-2024-13092024165302', CAST(N'2024-04-16T00:00:00.000' AS DateTime), NULL, N'Ban Truyền thông/HueCIT', N'Ban Truyền thông/HueCIT', N'Ban Truyền thông/HueCIT', N'Tiếng việt (Việt Nam)', 0, N'Đoàn Thanh niên', 1, N'8a10d607-10f1-47c2-ba82-ec243c8e9145', N'92729D2A-9C36-4D7B-82E4-FB7FFA8C6A59', CAST(N'2024-04-16T09:12:30.743' AS DateTime), CAST(N'2024-09-13T16:52:32.297' AS DateTime), 2, 2, N'0123456789', N'test@gmail.com', N'123 test địa chỉ', N'https://test.com.vn', CAST(N'13:50:14' AS Time), CAST(N'13:50:16' AS Time), 12, 23)
INSERT [dbo].[TB_BaiViet] ([ID], [TieuDe], [AnhDaiDien], [Thumbnail], [MoTaAnhDaiDien], [TomTat], [NoiDung], [TieuDiem], [ThuTuHienThi], [URLBaiViet], [NgayCongBo], [HetHanCongBo], [NguonTin], [TacGia], [TacQuyen], [NgonNgu], [LuotXem], [TuKhoa], [TrangThai], [ChuyenMucID], [ChuyenMucKhacID], [CreatedOnDate], [LastModifiedOnDate], [CreatedByUserID], [LastModifiedByUserID], [DienThoai], [Email], [DiaChi], [Website], [GioMoCua], [GioDongCua], [ToaDoX], [ToaDoY]) VALUES (N'51d5b6e9-0814-498e-b64c-3954884b3652', N'HỆ THỐNG QUẢN LÝ HOẠT ĐỘNG KHOA HỌC VÀ CÔNG NGHỆ', N'/Upload\BaiViet\2024\AnhDaiDien_KHCN_26_5_2023_10_30_16_981_SA_1719823963.jpg', N'/Upload\BaiViet\2024\AnhDaiDien_KHCN_26_5_2023_10_30_16_981_SA_1719823963.jpg', N'', N'', N'<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>

<table style="width:100%">
	<tbody>
		<tr>
			<td style="text-align:justify">&nbsp; &nbsp;
			<p><span style="color:#0070c0; font-size:medium"><strong>GIỚI THIỆU</strong></span><br />
			&nbsp; &nbsp;<br />
			&nbsp; &nbsp;<span style="font-size:16px">Hệ thống quản l&yacute; Khoa học v&agrave; C&ocirc;ng nghệ&nbsp;l&agrave; giải ph&aacute;p chuyển đổi số c&aacute;c hoạt động li&ecirc;n quan đến quản l&yacute; v&agrave; thực hiện nhiệm vụ khoa học v&agrave; c&ocirc;ng nghệ (KHCN), hỗ trợ c&ocirc;ng t&aacute;c quản l&yacute; ng&agrave;nh trong việc số h&oacute;a to&agrave;n bộ quy tr&igrave;nh thực hiện nhiệm vụ KHCN; g&oacute;p phần c&ocirc;ng khai, minh bạch hoạt động KHCN tr&ecirc;n địa b&agrave;n, từng bước h&igrave;nh th&agrave;nh v&agrave; ho&agrave;n thiện cơ sở dữ liệu (CSDL) chuy&ecirc;n gia, nh&agrave; khoa học v&agrave; nhiệm vụ KHCN.</span></p>
			&nbsp; &nbsp;

			<p><span style="font-size:16px">Hệ thống c&ograve;n thực hiện việc số h&oacute;a to&agrave;n bộ quy tr&igrave;nh thực hiện c&aacute;c c&ocirc;ng việc của 1 đề t&agrave;i KH&amp;CN từ giai đoạn đề xuất đến giai đoạn nghiệm thu, giao nạp kết quả. Gi&uacute;p c&ocirc;ng khai, minh bạch hoạt động KH&amp;CN tr&ecirc;n địa b&agrave;n, cung cấp th&ocirc;ng tin về hoạt động KH&amp;CN tới c&aacute;c c&aacute; nh&acirc;n, tổ chức.</span></p>
			&nbsp; &nbsp;

			<p><span style="font-size:16px">Hiện nay, <a href="https://detaikhoahoc.thuathienhue.gov.vn/">Hệ thống Quản l&yacute; KHCN tỉnh Thừa Thi&ecirc;n Huế</a> đang được vận h&agrave;nh tại địa chỉ: <a href="https://detaikhoahoc.thuathienhue.gov.vn/">https://detaikhoahoc.thuathienhue.gov.vn/</a></span></p>
			&nbsp; &nbsp;</td>
			<td><span style="font-size:16px">&nbsp;</span><img alt="" class="img-responsive" src="/Portals/0/AnhDaiDien_KHCN_3.jpg" style="height:335px; margin:auto; width:622px" title="" /></td>
		</tr>
		<tr>
			<td style="text-align:justify">&nbsp; &nbsp;
			<p><img alt="" class="img-responsive" src="/Portals/0/TinHoatDong/Nam2023/Thang10/HeThongQuanLyNhiemVuKHCN/Phan-mem-quan-ly-nhiem-vu-khoa-hoc-cong-nghe-tinh-Thua-Thien-Hue-1.jpg?ver=2023-10-31-113028-267" style="margin:auto" title="" /></p>
			&nbsp; &nbsp;</td>
			<td>&nbsp; &nbsp;
			<p><strong><span style="color:#0070c0; font-size:16px">C&Aacute;C CHỨC NĂNG CH&Iacute;NH:</span></strong></p>
			&nbsp; &nbsp;

			<p><span style="color:#0070c0"><strong>Cổng th&ocirc;ng tin nhiệm vụ, đề t&agrave;i KHCN</strong></span></p>
			&nbsp; &nbsp;

			<p style="text-align:justify">Đăng tải c&aacute;c tin tức về KHCN trong nước v&agrave; quốc tế; C&ocirc;ng bố kết quả thực hiện c&aacute;c nhiệm vụ KHCN, gi&uacute;p c&aacute;c c&aacute; nh&acirc;n, tổ chức khai th&aacute;c kho dữ liệu nhiệm vụ, đề t&agrave;i KHCN.</p>
			&nbsp; &nbsp;</td>
		</tr>
		<tr>
			<td>&nbsp;<span style="color:#0070c0; font-size:16px"><strong>Quản l&yacute; nhiệm vụ KHCN</strong></span> &nbsp; &nbsp;
			<p style="text-align:justify"><span style="color:#0c0c0c">Thực hiện c&aacute;c c&ocirc;ng việc từ khi nạp hồ sơ đề xuất nhiệm vụ KHCN đến khi nghiệm thu, giao nộp sản phẩm th&ocirc;ng qua 5 quy tr&igrave;nh ch&iacute;nh, trong đ&oacute; cốt l&otilde;i l&agrave; c&aacute;c biểu mẫu KH&amp;CN được số h&oacute;a tr&ecirc;n Hệ thống.</span></p>
			&nbsp; &nbsp;</td>
			<td><img alt="" class="img-responsive" src="/Portals/0/TinHoatDong/Nam2023/Thang10/HeThongQuanLyNhiemVuKHCN/Phan-mem-quan-ly-nhiem-vu-khoa-hoc-cong-nghe-tinh-Thua-Thien-Hue-2.jpg?ver=2023-10-31-113028-453" style="margin:auto" title="" /> &nbsp; &nbsp;
			<p style="text-align:justify">&nbsp;</p>
			&nbsp; &nbsp;<br />
			&nbsp; &nbsp;<br />
			&nbsp; &nbsp;<br />
			&nbsp; &nbsp;&nbsp;</td>
		</tr>
		<tr>
			<td style="text-align:justify">&nbsp; &nbsp;
			<p><img alt="" class="img-responsive" src="/Portals/0/TinHoatDong/Nam2023/Thang10/HeThongQuanLyNhiemVuKHCN/Phan-mem-quan-ly-nhiem-vu-khoa-hoc-cong-nghe-tinh-Thua-Thien-Hue-3.jpg?ver=2023-10-31-113028-437" style="margin:auto" title="" /></p>
			&nbsp; &nbsp;</td>
			<td>&nbsp; &nbsp; &nbsp;
			<p><strong><span style="color:#0070c0; font-size:16px">C&Aacute;C CHỨC NĂNG CỤ THỂ:&nbsp;</span></strong></p>
			&nbsp; &nbsp;

			<p style="text-align:justify">Nộp hồ sơ đăng k&yacute; nhiệm vụ; Quản l&yacute; hồ sơ nhiệm vụ; Cập nhật thuyết minh nhiệm vụ; Xem c&aacute;c phi&ecirc;n bản chỉnh sửa thuyết minh; Lập đơn đăng k&yacute; chủ tr&igrave; nhiệm vụ; Lập giấy x&aacute;c nhận phối hợp thực hiện; Quản l&yacute; kế hoạch thực hiện nhiệm vụ KHCN; B&aacute;o c&aacute;o tiến độ thực hiện nhiệm vụ KHCN; Cập nhật dự to&aacute;n v&agrave; kinh ph&iacute;; Quản l&yacute; danh s&aacute;ch tổ chức phối hợp; Quản l&yacute; danh s&aacute;ch th&agrave;nh vi&ecirc;n tham gia; Quản l&yacute; danh s&aacute;ch chuy&ecirc;n gia thu&ecirc; tham gia; Quản l&yacute; danh s&aacute;ch t&agrave;i sản của nhiệm vụ; Quản l&yacute; c&aacute;c văn bản li&ecirc;n quan đến nhiệm vụ; Quản l&yacute; danh s&aacute;ch sản phẩm giao nộp; B&aacute;o c&aacute;o tự đ&aacute;nh gi&aacute; kết quả; Quản l&yacute; hợp đồng của nhiệm vụ; Quản l&yacute; hồ sơ đ&aacute;nh gi&aacute; nghiệm thu; Quản l&yacute; hồ sơ quyết to&aacute;n thanh l&yacute;; Quản l&yacute; hồ sơ c&ocirc;ng nhận kết quả; Đăng h&igrave;nh ảnh sản phẩm v&agrave;o showroom; Đề xuất gia hạn nhiệm vụ; Đề xuất gia hạn hợp đồng</p>
			&nbsp; &nbsp;</td>
		</tr>
	</tbody>
</table>

<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>

<table style="width:100%">
	<tbody>
		<tr>
			<td>&nbsp; &nbsp;
			<p style="text-align:justify">&nbsp;<span style="color:#0070c0"><strong>ƯU ĐIỂM CỦA HỆ THỐNG</strong></span></p>
			&nbsp; &nbsp;

			<p style="text-align:justify">&gt; Giao diện th&acirc;n diện, dễ d&agrave;ng quản l&yacute; v&agrave; khai th&aacute;c th&ocirc;ng tin</p>
			&nbsp; &nbsp;

			<p style="text-align:justify">&gt; Tiết kiệm thời gian nhờ quản l&yacute; tập trung</p>
			&nbsp; &nbsp;

			<p style="text-align:justify">&gt; Hỗ trợ b&aacute;o c&aacute;o, thống k&ecirc; trực quan, trực tiếp</p>
			&nbsp; &nbsp;

			<p style="text-align:justify">&gt; Dễ d&agrave;ng ứng dụng, chuyển giao c&ocirc;ng nghệ</p>
			&nbsp; &nbsp;</td>
			<td><img alt="" class="img-responsive" src="/Portals/0/TinHoatDong/Nam2023/Thang10/HeThongQuanLyNhiemVuKHCN/Phan-mem-quan-ly-nhiem-vu-khoa-hoc-cong-nghe-tinh-Thua-Thien-Hue-_4.jpg?ver=2023-10-31-113028-387" style="margin:auto" title="" /></td>
		</tr>
		<tr>
			<td>&nbsp; &nbsp;
			<p><span style="color:#ffffff"><img alt="" class="img-responsive" src="/Portals/0/TinHoatDong/Nam2023/Thang10/HeThongQuanLyNhiemVuKHCN/Phan-mem-quan-ly-nhiem-vu-khoa-hoc-cong-nghe-tinh-Thua-Thien-Hue_5.jpg?ver=2023-10-31-113028-437" style="margin:auto" title="" /></span></p>
			&nbsp; &nbsp;</td>
			<td style="text-align:justify">&nbsp; &nbsp;
			<p>&nbsp;<span style="color:#0070c0"><strong>KHẢ NĂNG ỨNG DỤNG</strong></span></p>
			&nbsp; &nbsp;

			<p>Hiện nay, Hệ thống Quản l&yacute; nhiệm vụ KH&amp;CN tỉnh Thừa Thi&ecirc;n Huế được c&agrave;i đặt tại hệ thống hạ tầng Trung t&acirc;m Gi&aacute;m s&aacute;t điều h&agrave;nh đ&ocirc; thị th&ocirc;ng minh tỉnh Thừa Thi&ecirc;n Huế (IOC), được số h&oacute;a v&agrave; chuẩn h&oacute;a tr&ecirc;n hệ thống từ th&aacute;ng 7/2023; triển khai b&agrave;n giao, tập huấn vận h&agrave;nh, sử dụng Hệ thống cho to&agrave;n thể c&aacute;n bộ c&aacute;c ph&ograve;ng chuy&ecirc;n m&ocirc;n tại Sở KH&amp;CN tỉnh Thừa Thi&ecirc;n Huế; triển khai tập huấn diện rộng cho c&aacute;n bộ quản l&yacute; nhiệm vụ KH&amp;CN của c&aacute;c sở ng&agrave;nh li&ecirc;n quan, c&aacute;c tổ chức v&agrave; c&aacute;c nh&agrave; khoa học l&agrave; chuy&ecirc;n gia, tham gia nghi&ecirc;n cứu, thực hiện đề t&agrave;i KH&amp;CN tr&ecirc;n địa b&agrave;n tỉnh; Đồng thời cho ph&eacute;p kết nối, li&ecirc;n th&ocirc;ng với nhiều hệ thống trong tỉnh Thừa Thi&ecirc;n Huế.</p>
			&nbsp; &nbsp;

			<p>Việc Hệ thống Quản l&yacute; nhiệm vụ KH&amp;CN tỉnh Thừa Thi&ecirc;n Huế đi v&agrave;o vận h&agrave;nh ch&iacute;nh thức g&oacute;p phần thực hiện kế hoạch Chuyển đổi số của ng&agrave;nh KHCN, l&agrave; một trong những đột ph&aacute; quan trọng của ng&agrave;nh hướng đến ph&aacute;t triển KHCN v&agrave; đổi mới s&aacute;ng tạo nhằm n&acirc;ng cao n&acirc;ng suất, chất lượng, hiệu quả v&agrave; sức cạnh tranh của nền kinh tế, đưa KHCN thực sự trở th&agrave;nh động lực th&uacute;c đẩy ph&aacute;t triển kinh tế - x&atilde; hội của tỉnh Thừa Thi&ecirc;n Huế n&oacute;i ri&ecirc;ng cũng như ng&agrave;nh KHCN n&oacute;i chung.</p>
			&nbsp; &nbsp;</td>
		</tr>
	</tbody>
</table>

<p><a class="btn btn-outline-primary" href="https://detaikhoahoc.thuathienhue.gov.vn/" style="display: inline-flex;width: auto;" target="_blank">TRUY CẬP HỆ THỐNG CƠ SỞ DỮ LIỆU KHOA HỌC V&Agrave; C&Ocirc;NG NGHỆ TỈNH THỪA THI&Ecirc;N HUẾ</a></p>

<p><a class="btn btn-outline-primary" href="https://qlkhcn.huecit.com/" style="display: inline-flex;width: auto;" target="_blank">TRUY CẬP D&Ugrave;NG THỬ PHẦN MỀM</a></p>

<p style="text-align:justify"><strong><span style="font-size:larger"><span style="font-family:arial">Video tr&igrave;nh diễn sử dụng sản phẩm:</span></span></strong></p>

<p><iframe frameborder="0" height="450" sandbox="" src="https://www.youtube.com/embed/rn9Hv3gMTgg?si=eVRYRmraVSajGrdV" title="YouTube video player" width="100%"></iframe></p>
', 0, NULL, N'he-thong-quan-ly-hoat-dong-khoa-hoc-va-cong-nghe-01072024155205', CAST(N'2024-07-01T00:00:00.000' AS DateTime), CAST(N'2024-07-01T00:00:00.000' AS DateTime), N'', N'', N'', N'Tiếng việt (Việt Nam)', 0, N'', 1, N'fee4c680-5952-4b0a-ab24-5eefd52baee7', N'', CAST(N'2024-07-01T15:52:43.770' AS DateTime), NULL, 2, NULL, N'', N'', N'', N'', NULL, NULL, 0, 0)
INSERT [dbo].[TB_BaiViet] ([ID], [TieuDe], [AnhDaiDien], [Thumbnail], [MoTaAnhDaiDien], [TomTat], [NoiDung], [TieuDiem], [ThuTuHienThi], [URLBaiViet], [NgayCongBo], [HetHanCongBo], [NguonTin], [TacGia], [TacQuyen], [NgonNgu], [LuotXem], [TuKhoa], [TrangThai], [ChuyenMucID], [ChuyenMucKhacID], [CreatedOnDate], [LastModifiedOnDate], [CreatedByUserID], [LastModifiedByUserID], [DienThoai], [Email], [DiaChi], [Website], [GioMoCua], [GioDongCua], [ToaDoX], [ToaDoY]) VALUES (N'dc2a0df6-72e6-4d48-8219-4410786e5d40', N'Thông báo tuyển dụng nhân viên lập trình phần mềm (Tháng 7)', N'/Upload\BaiViet\2024\tuyendungt2_1712746287.png', N'/Upload\BaiViet\2024\tuyendungt2_1712746287.png', N'', N'Nhằm mở rộng hoạt động sản xuất kinh doanh, Trung tâm Công nghệ thông tin tỉnh Thừa Thiên Huế (HueCIT) thông báo tuyển dụng nhân sự như sau:', N'<p><strong><em>- Vị tr&iacute;:</em>&nbsp;Lập tr&igrave;nh vi&ecirc;n (web/mobile developer)</strong></p>

<p><em>- Số lượng: 10</em></p>

<p>-&nbsp;<em>Mức lương</em><em>:</em>&nbsp;Thỏa thuận, l&ecirc;n đến 30 triệu đồng</p>

<p>-&nbsp;<em>Tr&igrave;nh độ:</em>&nbsp;Cao đẳng trở l&ecirc;n</p>

<p>-&nbsp;<em>Kinh nghiệm:</em>&nbsp;C&oacute; kinh nghiệm v&agrave; chưa c&oacute; kinh nghiệm sẽ được đ&agrave;o tạo .</p>

<p><em>- Địa điểm l&agrave;m việc:</em>&nbsp;06 L&ecirc; Lợi, Th&agrave;nh phố Huế</p>

<p><strong>* M&ocirc; tả c&ocirc;ng việc:</strong></p>

<p>-Thiết kế, x&acirc;y dựng v&agrave; ph&aacute;t triển c&aacute;c hệ thống ứng dụng (website, mobile).</p>

<p>- L&agrave;m việc độc lập hoặc theo nh&oacute;m trong qu&aacute; tr&igrave;nh thực hiện dự &aacute;n.</p>

<p><strong>*Y&ecirc;u cầu:</strong></p>

<p>- Kiến thức tốt về cấu tr&uacute;c dữ liệu v&agrave; thuật to&aacute;n.</p>

<p>- C&oacute; khả năng l&agrave;m việc độc lập v&agrave; giải quyết vấn đề tốt.</p>

<p>- C&oacute; khả năng tự học tập nghi&ecirc;n cứu c&aacute;c kỹ thuật mới.</p>

<p>- C&oacute; kỹ năng l&agrave;m việc nh&oacute;m, chịu được &aacute;p lực v&agrave; c&oacute; tr&aacute;ch nhiệm với c&ocirc;ng việc được giao.</p>

<p>- Cẩn thận tỉ mỉ trong c&ocirc;ng việc</p>

<p><strong>*Quyền lợi được hưởng:</strong></p>

<p>&nbsp;</p>

<p>- BHXH, BHYT, BHTN theo quy định của luật, Bảo hiểm bệnh viện quốc tế.</p>

<p>- Du lịch hằng năm, teambuilding h&agrave;ng th&aacute;ng..</p>

<p>- Thưởng lễ, Tết, v&agrave; c&aacute;c khoản phụ cấp kh&aacute;c.</p>

<p>- Được đề xuất v&agrave; tham gia c&aacute;c kh&oacute;a đ&agrave;o tạo nội bộ v&agrave; b&ecirc;n ngo&agrave;i.</p>

<p>- Được x&eacute;t tăng lương định kỳ 06 th&aacute;ng/lần</p>

<p>- M&ocirc;i trường l&agrave;m việc năng động, c&oacute; cơ hội thăng tiến v&agrave; n&acirc;ng cao năng lực bản th&acirc;n.</p>

<p><strong>*Hồ sơ v&agrave; thủ tục</strong></p>

<p>- C&aacute;c ứng vi&ecirc;n gửi CV qua email&nbsp;<a href="mailto:tuyendung@huecit.vn">tuyendung@huecit.vn</a>.</p>

<p>-&nbsp; Hạn nộp hồ sơ: 20/8/2022.</p>

<p>-&nbsp; Địa chỉ li&ecirc;n hệ: Ph&ograve;ng Kế hoạch - Tổng hợp, Trung t&acirc;m CNTT tỉnh, số 06 L&ecirc; Lợi, phường Vĩnh Ninh, th&agrave;nh phố Huế. SĐT: 0234.3823650.</p>

<p><strong>Ưu ti&ecirc;n c&aacute;c ứng vi&ecirc;n nộp hồ sơ sớm được phỏng vấn đi l&agrave;m ngay.</strong></p>

<p><a href="/Upload/BaiViet/2024/tuong-trinhcongson_1712804223.jpg">file Image</a></p>

<p><a href="/Upload/BaiViet/2024/file_example_MP4_480_1_5MG_1712804133.mp4">file Media</a></p>
', 0, NULL, N'thong-bao-tuyen-dung-nhan-vien-lap-trinh-phan-mem-thang-7-11042024095709', CAST(N'2024-04-10T00:00:00.000' AS DateTime), NULL, N'', N'', N'', N'Tiếng việt (Việt Nam)', 0, N'', 1, N'39f89a2a-aff0-4de8-abe5-c6f114621c5b', N'', CAST(N'2024-04-10T17:51:27.827' AS DateTime), CAST(N'2024-04-11T09:57:35.420' AS DateTime), 2, 2, N'', N'', N'', N'', NULL, NULL, 0, 0)
INSERT [dbo].[TB_BaiViet] ([ID], [TieuDe], [AnhDaiDien], [Thumbnail], [MoTaAnhDaiDien], [TomTat], [NoiDung], [TieuDiem], [ThuTuHienThi], [URLBaiViet], [NgayCongBo], [HetHanCongBo], [NguonTin], [TacGia], [TacQuyen], [NgonNgu], [LuotXem], [TuKhoa], [TrangThai], [ChuyenMucID], [ChuyenMucKhacID], [CreatedOnDate], [LastModifiedOnDate], [CreatedByUserID], [LastModifiedByUserID], [DienThoai], [Email], [DiaChi], [Website], [GioMoCua], [GioDongCua], [ToaDoX], [ToaDoY]) VALUES (N'7973cf4a-3e57-422f-aee8-4bf0625d3652', N'Tết đoàn kết - Quà xuân yêu thương nhân dịp Tết nguyên đán Giáp Thìn năm 2024', N'/Upload\BaiViet\2024\HueCIT_Trao-tang-qua-cho-nguoi-ngheo_Tet-Giap-Thin-2024-1_1713233208.jpg', N'/Upload\BaiViet\2024\HueCIT_Trao-tang-qua-cho-nguoi-ngheo_Tet-Giap-Thin-2024-1_1713233208.jpg', N'Tết đoàn kết - Quà xuân yêu thương nhân dịp Tết nguyên đán Giáp Thìn năm 2024', N'Nhằm thiết thực triển khai hoạt động "Xuân tình nguyện", "Tết vì người nghèo", vừa qua, tổ chức Công đoàn và Chi đoàn Trung tâm CNTT tỉnh Thừa Thiên Huế đã thực hiện hoạt động kết nối và tặng quà cho 20 hộ nghèo, cận nghèo, gia đình khó khăn, người khuyết tật trên địa bàn phường Phú Hậu, thành phố Huế.', N'<p>C&aacute;c phần qu&agrave; &yacute; nghĩa đ&atilde; được trao tận tay c&aacute;c hộ gia đ&igrave;nh tại chương tr&igrave;nh. Đ&acirc;y l&agrave; nguồn kinh ph&iacute; được vận động v&agrave; tr&iacute;ch từ hoạt động giải chạy thiện nguyện trong nội bộ do C&ocirc;ng đo&agrave;n Trung t&acirc;m ph&aacute;t động v&agrave; triển khai trong th&aacute;ng 1/2024; v&agrave; một phần từ nguồn quỹ của Chi đo&agrave;n.</p>

<p>Th&ocirc;ng qua hoạt động, Trung t&acirc;m đ&atilde; đ&oacute;ng g&oacute;p một phần nhỏ trong việc chung tay c&ugrave;ng địa phương quan t&acirc;m, hỗ trợ cho c&aacute;c đối tượng yếu thế trong x&atilde; hội c&oacute; một c&aacute;i Tết ấm no hơn; gi&aacute;o dục v&agrave; ph&aacute;t huy tinh thần tương th&acirc;n tương &aacute;i trong đo&agrave;n vi&ecirc;n, thanh ni&ecirc;n cũng như lan tỏa tinh thần v&igrave; cộng đồng trong to&agrave;n x&atilde; hội.</p>

<p><strong>Một số h&igrave;nh ảnh tại chương tr&igrave;nh:</strong></p>

<p><strong><img alt="" src="https://huecit.vn/Portals/0/TinHoatDong/Nam2024/ThienNguyen/HueCIT_Trao-tang-qua-cho-nguoi-ngheo_Tet-Giap-Thin-2024.jpg?ver=2024-02-01-105716-767" title="" /></strong></p>

<p><em>C&aacute;c&nbsp;hộ ngh&egrave;o, cận ngh&egrave;o, gia đ&igrave;nh kh&oacute; khăn, người khuyết tật tr&ecirc;n địa b&agrave;n phường Ph&uacute; Hậu được tiếp nhận c&aacute;c phần qu&agrave; tại chương tr&igrave;nh</em></p>

<p><strong><img alt="" src="https://huecit.vn/Portals/0/TinHoatDong/Nam2024/ThienNguyen/HueCIT_Trao-tang-qua-cho-nguoi-ngheo_Tet-Giap-Thin-2024-CongDoan.jpg?ver=2024-02-01-105716-800" title="" /></strong></p>

<p><em>&Ocirc;ng Phạm Văn Tấn, Ph&oacute; Chủ tịch C&ocirc;ng đo&agrave;n Trung t&acirc;m CNTT tỉnh trao qu&agrave; thiện nguyện tại chương tr&igrave;nh</em></p>

<p><strong><img alt="" src="https://huecit.vn/Portals/0/TinHoatDong/Nam2024/ThienNguyen/HueCIT_Trao-tang-qua-cho-nguoi-ngheo_Tet-Giap-Thin-2024-2.jpg?ver=2024-02-01-105716-817" title="" /></strong></p>

<p><em>C&aacute;c phần qu&agrave; Tết v&agrave; nhu yếu phẩm được tổ chức C&ocirc;ng đo&agrave;n, Chi đo&agrave;n Trung t&acirc;m trao tận tay đến c&aacute;c gia đ&igrave;nh c&oacute; ho&agrave;n cảnh kh&oacute; khăn</em></p>

<p><strong><img alt="" src="https://huecit.vn/Portals/0/TinHoatDong/Nam2024/ThienNguyen/HueCIT_Trao-tang-qua-cho-nguoi-ngheo_Tet-Giap-Thin-2024-3.jpg?ver=2024-02-01-105716-800" title="" /></strong></p>

<p><em>Quan t&acirc;m, gi&uacute;p đỡ c&aacute;c đối tượng, ho&agrave;n cảnh kh&oacute; khăn trong x&atilde; hội l&agrave; hoạt động thường xuy&ecirc;n được tổ chức C&ocirc;ng đo&agrave;n, Chi đo&agrave;n Trung t&acirc;m quan t&acirc;m, ch&uacute; trọng triển khai h&agrave;ng năm</em></p>

<p><strong><img alt="" src="https://huecit.vn/Portals/0/TinHoatDong/Nam2024/ThienNguyen/HueCIT_Trao-tang-qua-cho-nguoi-ngheo_Tet-Giap-Thin-2024_LuuNiem.jpg?ver=2024-02-01-105716-817" title="" /></strong></p>

<p><em>Đo&agrave;n trao tặng qu&agrave; thiện nguyện Trung t&acirc;m CNTT tỉnh chụp h&igrave;nh lưu niệm c&ugrave;ng đại diện UBMTTQ Phường Ph&uacute; Hậu v&agrave; c&aacute;c c&aacute; nh&acirc;n đại diện li&ecirc;n quan sau chương tr&igrave;nh.</em></p>
', 1, NULL, N'tet-doan-ket-qua-xuan-yeu-thuong-nhan-dip-tet-nguyen-dan-giap-thin-nam-2024-16042024090701', CAST(N'2024-04-16T00:00:00.000' AS DateTime), NULL, N'Ban Truyền thông/HueCIT', N'Ban Truyền thông/HueCIT', N'Ban Truyền thông/HueCIT', N'Tiếng việt (Việt Nam)', 0, N'Ban Truyền thông/HueCIT', 1, N'8a10d607-10f1-47c2-ba82-ec243c8e9145', N'', CAST(N'2024-04-16T09:06:49.820' AS DateTime), CAST(N'2024-04-16T09:07:03.203' AS DateTime), 2, 2, N'', N'', N'', N'', NULL, NULL, 0, 0)
INSERT [dbo].[TB_BaiViet] ([ID], [TieuDe], [AnhDaiDien], [Thumbnail], [MoTaAnhDaiDien], [TomTat], [NoiDung], [TieuDiem], [ThuTuHienThi], [URLBaiViet], [NgayCongBo], [HetHanCongBo], [NguonTin], [TacGia], [TacQuyen], [NgonNgu], [LuotXem], [TuKhoa], [TrangThai], [ChuyenMucID], [ChuyenMucKhacID], [CreatedOnDate], [LastModifiedOnDate], [CreatedByUserID], [LastModifiedByUserID], [DienThoai], [Email], [DiaChi], [Website], [GioMoCua], [GioDongCua], [ToaDoX], [ToaDoY]) VALUES (N'55314362-9591-4a91-828a-57fec849c417', N'HueCIT khai giảng khoá Thương mại điện tử K18', N'/Upload\BaiViet\2024\avata-Khai-giang-TMDT-K18-HueCIT.10_1713340453.jpg', N'/Upload\BaiViet\2024\avata-Khai-giang-TMDT-K18-HueCIT.10_1713340614.jpg', N'', N'Chiều tối ngày 11/3/2024, Trung tâm Công nghệ thông tin tỉnh Thừa Thiên Huế (HueCIT) tổ chức buổi khai giảng khoá học Thương mại điện tử K18 tại Trung tâm.', N'<div class="des-info-caption" style="border:0px; padding:0px">
<div class="details news_img" id="dnn_ctr621_ViewTinBai_DsChuyenMucTinBai_NoZoom_idnewsimg" style="border:0px; padding:0px; text-align:center">
<div class="group-cap" style="border:0px; padding:0px">
<div class="news_summary" id="dnn_ctr621_ViewTinBai_DsChuyenMucTinBai_NoZoom_lblNewsSummary" style="border:0px; padding:0px 0px 10px; text-align:justify">&nbsp;</div>
<img alt="HueCIT khai giảng khoá Thương mại điện tử K18" class="news_thumb" id="dnn_ctr621_ViewTinBai_DsChuyenMucTinBai_NoZoom_imgAnhDaiDien" src="https://huecit.vn/Portals/0/Medias/Nam2024/T3/avata-Khai-giang-TMDT-K18-HueCIT.10.jpg" style="border:0px; box-sizing:border-box; font:inherit; max-width:100%; padding:0px 0px 20px; vertical-align:middle" /></div>

<div class="news_noteimg" id="dnn_ctr621_ViewTinBai_DsChuyenMucTinBai_NoZoom_idnoteimg" style="border:0px; padding:0px 20px 12px 0px; text-align:center; width:1175.22px"><span style="font-size:14px"><span style="font-family:inherit"><span style="color:#3791f5">HueCIT khai giảng kho&aacute; Thương mại điện tử K18</span></span></span></div>
</div>
</div>

<div class="description-info-detail" style="border:0px; padding:0px">&nbsp;</div>

<div class="news_content" id="dnn_ctr621_ViewTinBai_DsChuyenMucTinBai_NoZoom_lblNewsContent" style="border:0px; padding:0px; text-align:justify">
<p style="text-align:justify"><span style="font-size:inherit"><span style="font-family:inherit"><span style="color:#444444">Tại buổi khai giảng, &ocirc;ng Đỗ Xu&acirc;n Huyền, Trưởng ph&ograve;ng Ph&ograve;ng Đ&agrave;o tạo v&agrave; Bồi dưỡng chia sẻ một số th&ocirc;ng tin về HueCIT v&agrave; phổ biến qua c&aacute;c kiến thức trong chương tr&igrave;nh đ&agrave;o tạo, t&iacute;nh ứng dụng của c&aacute;c module kh&oacute;a học Thương mại điện tử m&agrave; lớp sẽ được học.</span></span></span></p>

<p style="text-align:center"><span style="font-size:inherit"><span style="font-family:inherit"><span style="color:#444444"><img alt="" class="img-responsive" src="https://huecit.vn/Portals/0/Tindaotao/2024/Khaigiang/TMDT/K18/Khai-giang-TMDT-K18-HueCIT_4.jpg?ver=2024-03-19-142034-717" style="border:0px; box-sizing:border-box; display:block; font:inherit; height:auto; max-width:100%; padding:0px; vertical-align:middle; width:auto" title="" /><br />
<img alt="" class="img-responsive" src="https://huecit.vn/Portals/0/Tindaotao/2024/Khaigiang/TMDT/K18/Khai-giang-TMDT-K18-HueCIT.jpg?ver=2024-03-19-142034-933" style="border:0px; box-sizing:border-box; display:block; font:inherit; height:auto; max-width:100%; padding:0px; vertical-align:middle; width:auto" title="" /><br />
<span style="color:#28166f"><em>&Ocirc;ng Đỗ Xu&acirc;n Huyền chia sẻ, giới thiệu về HueCIT v&agrave; th&ocirc;ng tin chương tr&igrave;nh Thương mại điện tử tại buổi khai giảng</em></span></span></span></span></p>

<p style="text-align:justify"><span style="font-size:inherit"><span style="font-family:inherit"><span style="color:#444444">Kh&oacute;a học Thương mại điện tử K18, c&aacute;c học vi&ecirc;n sẽ được học theo lịch song song cả 3 nội dung chương tr&igrave;nh c&ugrave;ng một l&uacute;c: Emarketing, Tin học ứng dụng cơ bản v&agrave; Thiết kế đồ họa. Với c&aacute;c nội dung đ&agrave;o tạo của kh&oacute;a, học vi&ecirc;n c&oacute; cơ hội tiếp cận với nhiều kiến thức kh&aacute;c nhau như: Marketing, chạy quảng c&aacute;o; Photoshop, đồ họa, thiết kế; Kỹ năng tin học chuẩn về excel, word, PowerPoint,... v&agrave; ph&aacute;t triển c&aacute;c kỹ năng cần thiết để c&oacute; thể th&agrave;nh c&ocirc;ng trong ng&agrave;nh thương mại điện tử.</span></span></span></p>

<p style="text-align:center"><span style="font-size:inherit"><span style="font-family:inherit"><span style="color:#444444"><img alt="" class="img-responsive" src="https://huecit.vn/Portals/0/Tindaotao/2024/Khaigiang/TMDT/K18/Khai-giang-TMDT-K18-HueCIT_1.jpg?ver=2024-03-19-142034-200" style="border:0px; box-sizing:border-box; display:block; font:inherit; height:auto; max-width:100%; padding:0px; vertical-align:middle; width:auto" title="" /><br />
<img alt="" class="img-responsive" src="https://huecit.vn/Portals/0/Tindaotao/2024/Khaigiang/TMDT/K18/Khai-giang-TMDT-K18-HueCIT_3.jpg?ver=2024-03-19-142034-277" style="border:0px; box-sizing:border-box; display:block; font:inherit; height:auto; max-width:100%; padding:0px; vertical-align:middle; width:auto" title="" /><br />
<img alt="" class="img-responsive" src="https://huecit.vn/Portals/0/Tindaotao/2024/Khaigiang/TMDT/K18/Khai-giang-TMDT-K18-HueCIT_5.jpg?ver=2024-03-19-142034-730" style="border:0px; box-sizing:border-box; display:block; font:inherit; height:auto; max-width:100%; padding:0px; vertical-align:middle; width:auto" title="" /><br />
<img alt="" class="img-responsive" src="https://huecit.vn/Portals/0/Tindaotao/2024/Khaigiang/TMDT/K18/Khai-giang-TMDT-K18-HueCIT_6.jpg?ver=2024-03-19-142034-887" style="border:0px; box-sizing:border-box; display:block; font:inherit; height:auto; max-width:100%; padding:0px; vertical-align:middle; width:auto" title="" /><br />
<img alt="" class="img-responsive" src="https://huecit.vn/Portals/0/Tindaotao/2024/Khaigiang/TMDT/K18/Khai-giang-TMDT-K18-HueCIT_7.jpg?ver=2024-03-19-142034-887" style="border:0px; box-sizing:border-box; display:block; font:inherit; height:auto; max-width:100%; padding:0px; vertical-align:middle; width:auto" title="" /><br />
<img alt="" class="img-responsive" src="https://huecit.vn/Portals/0/Tindaotao/2024/Khaigiang/TMDT/K18/Khai-giang-TMDT-K18-HueCIT_8.jpg?ver=2024-03-19-142034-887" style="border:0px; box-sizing:border-box; display:block; font:inherit; height:auto; max-width:100%; padding:0px; vertical-align:middle; width:auto" title="" /><br />
<span style="color:#28166f"><em>To&agrave;n cảnh buổi khai giảng kh&oacute;a Thương mại điện tử K18 tại Trung t&acirc;m</em></span></span></span></span></p>

<p style="text-align:justify"><span style="font-size:inherit"><span style="font-family:inherit"><span style="color:#444444">Kh&oacute;a học K19 Thương mại điện tử khai giảng v&agrave;o ng&agrave;y 06/5/2024</span></span></span></p>

<p><span style="font-size:inherit"><span style="font-family:inherit"><span style="color:#444444">Để đăng k&yacute; kh&oacute;a học Thương mại điện tử tại HueCIT, vui l&ograve;ng li&ecirc;n hệ Ph&ograve;ng Đ&agrave;o tạo v&agrave; Bồi dưỡng, tầng 2, số 6 L&ecirc; Lợi &ndash; th&agrave;nh phố Huế.</span></span></span></p>

<p><span style="font-size:inherit"><span style="font-family:inherit"><span style="color:#444444">Hotline&nbsp;:<span style="color:#28166f">&nbsp;<em><strong>0234.390.7777 (trong giờ h&agrave;nh ch&iacute;nh)</strong></em></span></span></span></span></p>

<p><span style="font-size:inherit"><span style="font-family:inherit"><span style="color:#444444">Fanpage:&nbsp;<strong><a href="https://www.facebook.com/Aptech-Hue-1549657725082378/?ref=pages_you_manage" style="box-sizing:border-box; padding:0px; border:0px; font:inherit; vertical-align:baseline; color:#3791f5; text-decoration:none; outline:0px; transition:color 0.3s ease 0s" target="_blank"><span style="color:#28166f"><em>Hue Aptech</em></span></a><span style="color:#28166f">;&nbsp;</span><a href="https://www.facebook.com/Huecit/?ref=pages_you_manage" style="box-sizing:border-box; padding:0px; border:0px; font:inherit; vertical-align:baseline; color:#3791f5; text-decoration:none; outline:0px; transition:color 0.3s ease 0s" target="_blank"><span style="color:#28166f"><em>HueCIT</em></span></a><span style="color:#28166f">;&nbsp;</span><em><a href="https://www.facebook.com/huecit.edu/" style="box-sizing:border-box; padding:0px; border:0px; font:inherit; vertical-align:baseline; color:#3791f5; text-decoration:none; outline:0px; transition:color 0.3s ease 0s"><span style="color:#28166f">HueCIT.edu</span></a><span style="color:#28166f">;</span></em>&nbsp;<em><a href="https://www.facebook.com/arena.huecit" style="box-sizing:border-box; padding:0px; border:0px; font:inherit; vertical-align:baseline; color:#3791f5; text-decoration:none; outline:0px; transition:color 0.3s ease 0s" target="_blank"><span style="color:#28166f">Arena.Hue</span></a></em></strong></span></span></span></p>

<p><span style="font-size:inherit"><span style="font-family:inherit"><span style="color:#444444">Website:<span style="color:#002060"><a href="http://daotao.huecit.vn/" style="box-sizing:border-box; padding:0px; border:0px; font:inherit; vertical-align:baseline; color:#3791f5; text-decoration:none; outline:0px; transition:color 0.3s ease 0s" target="_blank"><em>&nbsp;</em></a></span><a href="http://daotao.huecit.vn/" style="box-sizing:border-box; padding:0px; border:0px; font:inherit; vertical-align:baseline; color:#3791f5; text-decoration:none; outline:0px; transition:color 0.3s ease 0s" target="_blank"><span style="color:#28166f"><em><strong>Daotao.huecit.v</strong></em></span></a><span style="color:#28166f"><strong>n</strong></span></span></span></span></p>
</div>

<div id="VideoMeidaTinBai" style="border:0px; padding:0px">&nbsp;</div>

<div class="AudioMeDiaTinBai" style="border:0px; padding:0px">&nbsp;</div>

<div class="mg-30" style="border:0px; padding:0px">
<div class="FileDinhKemTinBai" style="border:0px; padding:0px; text-align:start">&nbsp;</div>

<div class="meta-source" style="border:0px; padding:0px; text-align:start">&nbsp;</div>
</div>
', 0, NULL, N'huecit-khai-giang-khoa-thuong-mai-dien-tu-k18-17042024145612', CAST(N'2024-03-11T00:00:00.000' AS DateTime), NULL, N'', N'', N'', N'Tiếng việt (Việt Nam)', 0, N'', 1, N'57214e56-18b0-456a-9b36-d263cb332d75', N'', CAST(N'2024-04-17T14:54:13.870' AS DateTime), CAST(N'2024-04-17T14:56:54.787' AS DateTime), 2, 2, N'', N'', N'', N'', NULL, NULL, 0, 0)
INSERT [dbo].[TB_BaiViet] ([ID], [TieuDe], [AnhDaiDien], [Thumbnail], [MoTaAnhDaiDien], [TomTat], [NoiDung], [TieuDiem], [ThuTuHienThi], [URLBaiViet], [NgayCongBo], [HetHanCongBo], [NguonTin], [TacGia], [TacQuyen], [NgonNgu], [LuotXem], [TuKhoa], [TrangThai], [ChuyenMucID], [ChuyenMucKhacID], [CreatedOnDate], [LastModifiedOnDate], [CreatedByUserID], [LastModifiedByUserID], [DienThoai], [Email], [DiaChi], [Website], [GioMoCua], [GioDongCua], [ToaDoX], [ToaDoY]) VALUES (N'c407f646-52cd-46dd-a4a3-5c34af6b12ef', N'Hội nghị tổng kết công tác đảng năm 2023 trong Chi bộ Trung tâm CNTT tỉnh Thừa Thiên Huế', N'/Upload\BaiViet\2024\HueCIT_HoiNghiCongTacDang_Nam2023_1713230711.jpg', N'/Upload\BaiViet\2024\HueCIT_HoiNghiCongTacDang_Nam2023_1713230711.jpg', N'Đồng chí Hoàng Bảo Hùng, Bí thư Chi hộ, Giám đốc Trung tâm chủ trì Hội nghị', N'Chiều ngày 05/01/2024, Chi bộ Trung tâm CNTT tỉnh Thừa Thiên Huế tổ chức Hội nghị tổng kết công tác đảng năm 2023, triển khai phương hướng, nhiệm vụ công tác năm 2024 trong Chi bộ Trung tâm CNTT tỉnh Thừa Thiên Huế. Đồng chí Hoàng Bảo Hùng, Bí thư Chi bộ, Giám đốc Trung tâm chủ trì Hội nghị.', N'<p>Tham dự Hội nghị c&oacute; c&aacute;c đồng ch&iacute; trong Chi ủy, Ban Gi&aacute;m đốc Trung t&acirc;m, c&aacute;c đồng ch&iacute; (đ/c) đảng vi&ecirc;n, đại diện l&atilde;nh đạo c&aacute;c ph&ograve;ng ban chuy&ecirc;n m&ocirc;n v&agrave; c&aacute;c cảm t&igrave;nh đảng tại đơn vị.</p>

<p><img alt="" src="https://huecit.vn/Portals/0/TinHoatDong/Nam2024/HoiNghiCongTacDang/HueCIT_HoiNghiCongTacDang_Nam2023-toanthe.jpg?ver=2024-01-10-175735-913" title="" /></p>

<p><em>To&agrave;n cảnh Hội nghị</em></p>

<p>B&aacute;o c&aacute;o tổng kết c&ocirc;ng t&aacute;c đảng năm 2023 tại Hội nghị, đ/c&nbsp;L&ecirc; Vĩnh Chiến, Ph&oacute; B&iacute; thư Chi bộ, Ph&oacute; Gi&aacute;m đốc Trung t&acirc;m cho biết: Dưới sự l&atilde;nh chỉ đạo thường xuy&ecirc;n về mọi mặt của Chi ủy Trung t&acirc;m, sự chủ động, t&iacute;ch cực của c&aacute;c tổ chức C&ocirc;ng đo&agrave;n v&agrave; Đo&agrave;n thanh ni&ecirc;n c&ugrave;ng sự gương mẫu đi đầu trong mọi hoạt động của c&aacute;c đảng vi&ecirc;n trong Chi bộ, trong năm 2023, Chi bộ Trung t&acirc;m CNTT tỉnh Thừa Thi&ecirc;n Huế đ&atilde; ho&agrave;n th&agrave;nh tốt c&aacute;c nhiệm vụ đề ra theo chương tr&igrave;nh c&ocirc;ng t&aacute;c từ đầu năm, trong đ&oacute; chỉ đạo tốt để c&aacute;c ph&ograve;ng ban chuy&ecirc;n m&ocirc;n trong Trung t&acirc;m ph&aacute;t huy năng lực tập thể, năng lực c&aacute; nh&acirc;n đem về nhiều th&agrave;nh t&iacute;ch nổi bật cho đơn vị, ti&ecirc;u biểu như:&nbsp;<a href="https://huecit.vn/Tin-tuc/Tin-tuc-chi-tiet/cid/345/pid/2485/tid/HueCIT-dat-Giai-Nhat-Hoi-thi-Sang-tao-Khoa-hoc-va-Ky-thuat-tinh-Thua-Thien-Hue-lan-thu-XIII-nam-2023">Giải Nhất Hội thi S&aacute;ng tạo Khoa học Kỹ thuật tỉnh Thừa Thi&ecirc;n Huế năm 2023</a>, Giải thưởng VIFOTEC, 01 c&aacute; nh&acirc;n được t&ocirc;n vinh l&agrave;&nbsp;<a href="https://huecit.vn/Tin-tuc/Tin-tuc-chi-tiet/cid/345/pid/2445/tid/Ton-vinh-17-Tri-thuc-Khoa-hoc-va-Cong-nghe-tieu-bieu-tinh-Thua-Thien-Hue-nam-2023">Tr&iacute; thức Khoa học c&ocirc;ng nghệ ti&ecirc;u biểu của tỉnh</a>, 01 c&aacute; nh&acirc;n&nbsp;c&oacute; th&agrave;nh t&iacute;ch xuất sắc trong Cuộc vận động to&agrave;n d&acirc;n x&acirc;y dựng Thừa Thi&ecirc;n Huế, kh&ocirc;ng r&aacute;c thải v&agrave; gần 2 năm thực hiện Chỉ thị 07-CT/TU, ng&agrave;y 05/7/2021 của Ban Thường vụ Tỉnh ủy về việc tiếp tục đẩy mạnh c&aacute;c phong tr&agrave;o x&acirc;y dựng Thừa Thi&ecirc;n Huế&nbsp;<a href="https://huecit.vn/Tin-tuc/Tin-tuc-chi-tiet/cid/58/pid/2473/tid/Lan-toa-va-nhan-rong-cac-mo-hinh-xay-dung-Thua-Thien-Hue-ngay-cang-sang-xanh-sach">xanh, sạch, s&aacute;ng</a>;...&nbsp;Đặc biệt, Tập thể Trung t&acirc;m CNTT tỉnh cũng vinh dự nhận được Danh hiệu Cờ thi đua Dẫn đầu khối thi đua Văn ho&aacute; - X&atilde; hội năm 2023.</p>

<p><img alt="" src="https://huecit.vn/Portals/0/TinHoatDong/Nam2024/HoiNghiCongTacDang/HueCIT_HoiNghiCongTacDang_Nam2023-LeVinhChien.jpg?ver=2024-01-10-175849-403" title="" /></p>

<p><em>Đồng ch&iacute;&nbsp;L&ecirc; Vĩnh Chiến, Ph&oacute; B&iacute; thư Chi bộ, Ph&oacute; Gi&aacute;m đốc Trung t&acirc;m thay mặt Chi ủy b&aacute;o c&aacute;o tổng kết c&ocirc;ng t&aacute;c đảng năm 2023, phương hướng nhiệm vụ năm 2024</em></p>

<p>Tại Hội nghị, Chi ủy Trung t&acirc;m cũng đ&atilde; c&oacute; c&aacute;c b&aacute;o c&aacute;o về chương tr&igrave;nh c&ocirc;ng t&aacute;c kiểm tra gi&aacute;m s&aacute;t, kế hoạch c&ocirc;ng t&aacute;c đảng trong năm 2024 cũng như c&oacute; sự ph&acirc;n c&ocirc;ng nhiệm vụ đảng vi&ecirc;n trong Chi bộ tr&ecirc;n cơ sở đảm bảo ho&agrave;n th&agrave;nh c&aacute;c nhiệm vụ đặt ra từ đầu nhiệm kỳ, ph&aacute;t huy năng lực sở trường của c&aacute;c đảng vi&ecirc;n gắn với c&ocirc;ng t&aacute;c chuy&ecirc;n m&ocirc;n, vị tr&iacute; việc l&agrave;m tại Trung t&acirc;m để n&acirc;ng cao chất lượng sinh hoạt Chi bộ cũng như vai tr&ograve; của mỗi đảng vi&ecirc;n trong Chi bộ.</p>

<p><img alt="" src="https://huecit.vn/Portals/0/TinHoatDong/Nam2024/HoiNghiCongTacDang/HueCIT_HoiNghiCongTacDang_Nam2023-ChiUy.jpg?ver=2024-01-10-175849-437" title="" /></p>

<p><em>Đồng ch&iacute; Nguyễn Thị Thanh Thủy, Chi ủy vi&ecirc;n, Trưởng ph&ograve;ng Ph&ograve;ng Tư vấn, Thiết kế v&agrave; Sản xuất tr&igrave;nh b&agrave;y chương tr&igrave;nh c&ocirc;ng t&aacute;c của Chi bộ Trung t&acirc;m CNTT tỉnh trong năm 2024</em></p>

<p><img alt="" src="https://huecit.vn/Portals/0/TinHoatDong/Nam2024/HoiNghiCongTacDang/HueCIT_HoiNghiCongTacDang_Nam2023-DoXuanHuyen.jpg?ver=2024-01-10-175849-390" title="" /></p>

<p><em>Đồng ch&iacute;&nbsp;Đỗ Xu&acirc;n Huyền, Chi ủy vi&ecirc;n, Trưởng ph&ograve;ng Đ&agrave;o tạo v&agrave; Bồi dưỡng tr&igrave;nh b&agrave;y chương tr&igrave;nh&nbsp;c&ocirc;ng t&aacute;c kiểm tra, gi&aacute;m s&aacute;t đảng vi&ecirc;n năm 2024 tại Hội nghị</em></p>

<p>Trong năm 2023, c&aacute;c tổ chức đo&agrave;n thể của Trung t&acirc;m dưới sự chỉ đạo của Chi bộ đ&atilde; c&oacute; những bước tiến r&otilde; rệt trong việc triển khai, thực hiện hiệu quả c&aacute;c hoạt động. Đối với tổ chức C&ocirc;ng đo&agrave;n, nhiều hoạt động mới mẻ được tổ chức C&ocirc;ng đo&agrave;n&nbsp;tham mưu, b&aacute;o c&aacute;o&nbsp;cho Chi bộ để triển khai nhằm n&acirc;ng cao đời sống tinh thần cho c&aacute;c c&ocirc;ng đo&agrave;n vi&ecirc;n như: Tổ chức cuộc thi &quot;Qu&yacute; &Ocirc;ng v&agrave;o Bếp&quot; nh&acirc;n ng&agrave;y Quốc tế Phụ nữ 08/03; Chương tr&igrave;nh tham quan nghỉ dưỡng tại B&agrave; N&agrave; Hill; Giải chạy HueCIT Jogging v&agrave; Giải B&oacute;ng b&agrave;n nh&acirc;n kỷ niệm 23 năm th&agrave;nh lập Trung t&acirc;m; Chương tr&igrave;nh Gala Dinner ch&agrave;o đ&oacute;n Gi&aacute;ng Sinh v&agrave; Ch&uacute;c mừng Năm Mới...</p>

<p><img alt="" src="https://huecit.vn/Portals/0/TinHoatDong/Nam2024/HoiNghiCongTacDang/HueCIT_HoiNghiCongTacDang_Nam2023-CongDoan.jpg?ver=2024-01-10-180958-523" title="" /></p>

<p><em>Đồng ch&iacute; Trần Vinh Hạnh, Chủ tịch C&ocirc;ng đo&agrave;n b&aacute;o c&aacute;o tổng kết hoạt động C&ocirc;ng đo&agrave;n năm 2023 v&agrave; phương hướng nhiệm vụ năm 2024 tại Hội nghị</em></p>

<p>Đối với tổ chức Đo&agrave;n Thanh ni&ecirc;n, năm 2023 l&agrave; một năm ghi nhận sự tăng trưởng về chất lượng&nbsp;v&agrave; số lượng. Số đo&agrave;n vi&ecirc;n Chi đo&agrave;n hiện nay l&agrave; 29 đo&agrave;n vi&ecirc;n, độ tuổi trung b&igrave;nh l&agrave; 29 tuổi, trong đ&oacute; c&oacute; 13 đo&agrave;n vi&ecirc;n nữ, 16 đo&agrave;n vi&ecirc;n nam; c&aacute;c đo&agrave;n vi&ecirc;n đều c&oacute; tr&igrave;nh độ đại học v&agrave; tr&ecirc;n đại học, trong đ&oacute; c&oacute; 05 thạc sĩ, 01 đo&agrave;n vi&ecirc;n đang l&agrave;m nghi&ecirc;n cứu sinh của chương tr&igrave;nh đ&agrave;o tạo Tiến sĩ, 01 đo&agrave;n vi&ecirc;n đang học chương tr&igrave;nh đ&agrave;o tạo Thạc sĩ; c&oacute; 06 đo&agrave;n vi&ecirc;n l&agrave; đảng vi&ecirc;n. Trong năm, nhiều đo&agrave;n vi&ecirc;n c&oacute; nhiều đ&oacute;ng g&oacute;p quan trọng trong c&ocirc;ng t&aacute;c chuy&ecirc;n m&ocirc;n cũng như tham gia t&iacute;ch cực v&agrave; đạt giải cao tại c&aacute;c Hội thi do Đo&agrave;n Khối Cơ quan v&agrave; Doanh nghiệp tỉnh ph&aacute;t động, tổ chức. Đặc biệt, ph&aacute;t huy vai tr&ograve; xung k&iacute;ch thanh ni&ecirc;n gắn với c&ocirc;ng t&aacute;c chuy&ecirc;n m&ocirc;n v&agrave; hoạt động chuyển đổi số, năm 2023, dưới sự chỉ đạo của Cấp ủy, Ban Gi&aacute;m đốc Trung t&acirc;m v&agrave; sự hỗ trợ của c&aacute;c ph&ograve;ng chuy&ecirc;n m&ocirc;n, Chi đo&agrave;n Trung t&acirc;m đ&atilde; phối hợp với Quận đo&agrave;n B&igrave;nh T&acirc;n, Huyện Đo&agrave;n B&igrave;nh Ch&aacute;nh&nbsp;(TP. HCM)&nbsp;x&acirc;y dựng c&ocirc;ng tr&igrave;nh thanh ni&ecirc;n&nbsp;<a href="https://huecit.vn/Tin-tuc/Tin-tuc-chi-tiet/cid/58/pid/2430/tid/Xay-dung-phan-mem-quan-ly-nghia-trang-liet-si-nhan-ky-niem-76-nam-ngay-Thuong-binh-Liet-si">Phần mềm quản l&yacute; nghĩa trang liệt sĩ B&igrave;nh Ch&aacute;nh - B&igrave;nh T&acirc;n</a>&nbsp;nh&acirc;n kỷ niệm 76 năm ng&agrave;y Thương binh - Liệt sĩ 27/7. Năm 2023, Chi đo&agrave;n Trung t&acirc;m tiếp tục giữ vững danh hiệu Chi đo&agrave;n Ho&agrave;n th&agrave;nh Xuất sắc nhiệm vụ.</p>

<p><img alt="" src="https://huecit.vn/Portals/0/TinHoatDong/Nam2024/HoiNghiCongTacDang/HueCIT_HoiNghiCongTacDang_Nam2023-DoanThanhNien.jpg?ver=2024-01-10-180958-540" title="" /></p>

<p><em>Đồng ch&iacute; Trần Thị Ngọc B&iacute;ch, B&iacute; thư Chi đo&agrave;n Trung t&acirc;m CNTT tỉnh&nbsp;b&aacute;o c&aacute;o tổng kết hoạt động Đo&agrave;n v&agrave; phong tr&agrave;o thanh ni&ecirc;n&nbsp;năm 2023 v&agrave; phương hướng nhiệm vụ năm 2024 tại Hội nghị</em></p>

<p>Đ&aacute;nh gi&aacute; cao những th&agrave;nh t&iacute;ch đạt được trong năm vừa qua của Trung t&acirc;m v&agrave; c&aacute;c tổ chức đo&agrave;n thể, tại Hội nghị, đ/c Ho&agrave;ng Bảo H&ugrave;ng, B&iacute; thư Chi bộ, Gi&aacute;m đốc Trung t&acirc;m&nbsp;đề nghị c&aacute;c đảng vi&ecirc;n cần n&ecirc;u cao tinh thần gương mẫu, ph&aacute;t huy hơn nữa vai tr&ograve; đảng vi&ecirc;n trong c&ocirc;ng t&aacute;c chuy&ecirc;n m&ocirc;n cũng như c&ocirc;ng t&aacute;c đảng; mạnh dạn đề xuất c&aacute;c nội dung c&ocirc;ng việc gắn với chức năng nhiệm vụ được giao; tăng cường sinh hoạt chuy&ecirc;n đề gắn với định hướng ph&aacute;t triển v&agrave; đẩy mạnh c&aacute;c nhiệm vụ trọng t&acirc;m, mảng lĩnh vực quan trọng cần th&uacute;c đẩy trong năm của Trung t&acirc;m; đồng thời tăng cường phối kết hợp, lồng gh&eacute;p c&aacute;c hoạt động của tổ chức C&ocirc;ng đo&agrave;n, Đo&agrave;n Thanh ni&ecirc;n để ph&aacute;t huy nguồn lực ngo&agrave;i ban chấp h&agrave;nh&nbsp;cũng như năng lực, sở trường của c&aacute;c c&ocirc;ng đo&agrave;n vi&ecirc;n v&agrave; đo&agrave;n vi&ecirc;n, đưa c&aacute;c hoạt động, phong tr&agrave;o ng&agrave;y c&agrave;ng đi v&agrave;o thực chất, qua đ&oacute; giới thiệu cho đảng c&aacute;c&nbsp;đo&agrave;n vi&ecirc;n ưu t&uacute; để g&oacute;p phần x&acirc;y dựng lực lượng đảng vi&ecirc;n trong Chi bộ ng&agrave;y c&agrave;ng đ&ocirc;ng đảo v&agrave; tinh nhuệ.</p>

<p>Cũng tại Hội nghị, Chi bộ đ&atilde; tiến h&agrave;nh trao Quyết định v&agrave; thẻ đảng vi&ecirc;n cho đảng vi&ecirc;n mới Văn Đức Tiến Hưng; khen thưởng 03 đảng vi&ecirc;n ho&agrave;n th&agrave;nh Xuất sắc nhiệm vụ, bao gồm: đ/c Nguyễn Thị Thanh Thủy, đ/c Nguyễn Th&ugrave;y Trang v&agrave; đ/c Nguyễn Thị Tr&acirc;m.</p>

<p><img alt="" src="https://huecit.vn/Portals/0/TinHoatDong/Nam2024/HoiNghiCongTacDang/HueCIT_HoiNghiCongTacDang_Nam2023-2.jpg?ver=2024-01-10-180958-540" title="" /></p>

<p><em>Đồng ch&iacute; Ho&agrave;ng Bảo H&ugrave;ng, B&iacute; thư Chi bộ, Gi&aacute;m đốc Trung t&acirc;m&nbsp;trao quyết định c&ocirc;ng nhận đảng vi&ecirc;n ch&iacute;nh thức v&agrave; thẻ đảng vi&ecirc;n cho đồng ch&iacute; Văn Đức Tiến Hưng</em></p>

<p><img alt="" src="https://huecit.vn/Portals/0/TinHoatDong/Nam2024/HoiNghiCongTacDang/HueCIT_HoiNghiCongTacDang_Nam2023-3.jpg?ver=2024-01-10-180958-540" title="" /></p>
', 1, NULL, N'hoi-nghi-tong-ket-cong-tac-dang-nam-2023-trong-chi-bo-trung-tam-cntt-tinh-thua-thien-hue-16042024082511', CAST(N'2024-04-16T00:00:00.000' AS DateTime), NULL, N'Ban Truyền thông/HueCIT', N'Ban Truyền thông/HueCIT', N'', N'Tiếng việt (Việt Nam)', 0, N'Đoàn Thanh niên', 1, N'8a10d607-10f1-47c2-ba82-ec243c8e9145', N'', CAST(N'2024-04-16T08:25:12.567' AS DateTime), NULL, 2, NULL, N'', N'', N'', N'', NULL, NULL, 0, 0)
INSERT [dbo].[TB_BaiViet] ([ID], [TieuDe], [AnhDaiDien], [Thumbnail], [MoTaAnhDaiDien], [TomTat], [NoiDung], [TieuDiem], [ThuTuHienThi], [URLBaiViet], [NgayCongBo], [HetHanCongBo], [NguonTin], [TacGia], [TacQuyen], [NgonNgu], [LuotXem], [TuKhoa], [TrangThai], [ChuyenMucID], [ChuyenMucKhacID], [CreatedOnDate], [LastModifiedOnDate], [CreatedByUserID], [LastModifiedByUserID], [DienThoai], [Email], [DiaChi], [Website], [GioMoCua], [GioDongCua], [ToaDoX], [ToaDoY]) VALUES (N'117e24ec-a49e-45fe-860b-681599f0136a', N'Giải thưởng đạt được', N'', N'', N'', N'', N'<ul>
	<li>Năm 2023</li>
	<li>Giải thưởng: Giải Nhất</li>
	<li>Cuộc thi: Hội thi S&aacute;ng tạo Kỹ thuật tỉnh Thừa Thi&ecirc;n Huế lần thứ XIII năm 2023.</li>
	<li>Đơn vị tổ chức: Li&ecirc;n hiệp c&aacute;c Hội Khoa học v&agrave; Kỹ thuật tỉnh Thừa Thi&ecirc;n Huế phối hợp với Đại học Huế, Li&ecirc;n đo&agrave;n Lao động tỉnh, Sở Khoa học &amp; C&ocirc;ng nghệ, Tỉnh đo&agrave;n.</li>
	<li><a href="https://huecit.vn/Tin-tuc/Tin-tuc-chi-tiet/cid/345/pid/2485/tid/HueCIT-dat-Giai-Nhat-Hoi-thi-Sang-tao-Khoa-hoc-va-Ky-thuat-tinh-Thua-Thien-Hue-lan-thu-XIII-nam-2023">Xem chi tiết</a></li>
</ul>

<p>&nbsp;</p>

<p>Hệ thống dữ liệu mở tỉnh Thừa Thi&ecirc;n Huế (Open Data)</p>

<ul>
	<li>Năm 2022</li>
	<li>Giải thưởng: Giải Khuyến kh&iacute;ch</li>
	<li>Cuộc thi: Giải thưởng S&aacute;ng tạo Khoa học C&ocirc;ng nghệ Việt Nam lần thứ 28.</li>
	<li>Đơn vị tổ chức: Li&ecirc;n hiệp c&aacute;c Hội Khoa học v&agrave; Kỹ thuật Việt Nam phối hợp với Bộ Khoa học v&agrave; C&ocirc;ng nghệ, Tổng Li&ecirc;n đo&agrave;n Lao động Việt Nam, Trung ương Đo&agrave;n TNCS Hồ Ch&iacute; Minh.</li>
	<li><a href="https://huecit.vn/Tin-tuc/Tin-tuc-chi-tiet/cid/345/pid/2412/tid/He-thong-du-lieu-mo-tinh-Thua-Thien-Hue-Open-Data-dat-Giai-thuong-Sang-tao-Khoa-hoc-Cong-nghe-Viet-Nam-lan-thu-28">Xem chi tiết</a></li>
</ul>

<p>&nbsp;</p>

<p>Hệ thống dữ liệu mở tỉnh Thừa Thi&ecirc;n Huế (Open Data)</p>

<ul>
	<li>Năm 2022</li>
	<li>Giải thưởng: Giải Nh&igrave;</li>
	<li>Cuộc thi: Hội thi S&aacute;ng tạo Kỹ thuật tỉnh Thừa Thi&ecirc;n Huế lần thứ XII năm 2022.</li>
	<li>Đơn vị tổ chức: Li&ecirc;n hiệp c&aacute;c Hội Khoa học v&agrave; Kỹ thuật tỉnh Thừa Thi&ecirc;n Huế phối hợp với Đại học Huế, Li&ecirc;n đo&agrave;n Lao động tỉnh, Sở Khoa học &amp; C&ocirc;ng nghệ, Tỉnh đo&agrave;n.</li>
	<li><a href="https://huecit.vn/San-pham/Thong-tin-san-pham/tid/HUECIT-OPEN-DATAHe-thong-du-lieu-mo-tinh-Thua-Thien-Hue/cid/262">Xem chi tiết</a></li>
</ul>

<p>&nbsp;</p>

<p>Ứng dụng hỗ trợ Chuyển đổi số cho Doanh nghiệp</p>

<ul>
	<li>Năm 2022</li>
	<li>Giải thưởng: Sản phẩm, Dịch vụ, Giải ph&aacute;p C&ocirc;ng nghệ số ti&ecirc;u biểu.</li>
	<li>Cuộc thi: Giải thưởng Chuyển đổi số Việt Nam (VietNam Digital Awards &ndash; VDA) 2022.</li>
	<li>Đơn vị tổ chức: Hội Truyền th&ocirc;ng số Việt Nam (VDCA).</li>
	<li><a href="https://www.huecit.vn/tmdt/index.html">Xem chi tiết</a></li>
</ul>

<p>&nbsp;</p>

<p>Hệ thống đ&aacute;nh gi&aacute; năng lực cạnh tranh cấp sở ban ng&agrave;nh v&agrave; địa phương (DDCI)</p>

<ul>
	<li>Năm 2021</li>
	<li>Giải thưởng: Giải Ba</li>
	<li>Cuộc thi: Hội thi S&aacute;ng tạo Kỹ thuật tỉnh Thừa Thi&ecirc;n Huế lần thứ XI, năm 2021.</li>
	<li><a href="https://huecit.vn/Tin-tuc/Tin-tuc-chi-tiet/cid/173/pid/286/tid/DDCI-Minh-bach-hoa-moi-truong-dau-tu-kinh-doanh-cua-moi-dia-phuong">Xem chi tiết</a></li>
</ul>

<p>&nbsp;</p>

<p>Hue-mOffice &ndash; Hệ thống th&ocirc;ng tin nền tảng cho Ch&iacute;nh quyền điện tử di động</p>

<ul>
	<li>Năm 2021</li>
	<li>Giải thưởng: Cơ quan nh&agrave; nước, đơn vị sự nghiệp chuyển đổi số xuất sắc.</li>
	<li>Cuộc thi: Giải thưởng Chuyển đổi số Việt Nam 2021 - Vietnam Digital Awards.</li>
	<li><a href="https://huecit.vn/Tin-tuc/Tin-tuc-chi-tiet/cid/345/pid/1075/tid/Hue-mOffice-%E2%80%93-He-thong-thong-tin-nen-tang-cho-Chinh-quyen-dien-tu-di-dong">Xem chi tiết</a></li>
</ul>

<p>&nbsp;</p>

<p>Hệ thống Quản l&yacute; văn bản v&agrave; điều h&agrave;nh</p>

<ul>
	<li>Năm 2020</li>
	<li>Giải thưởng: Cơ quan nh&agrave; nước Chuyển đổi số Xuất sắc.</li>
	<li>Cuộc thi: Giải thưởng Chuyển đổi số Việt Nam &ndash; Vietnam Digital Awards 2020.</li>
	<li>Đơn vị tổ chức: Hội Truyền th&ocirc;ng số Việt Nam (VDCA).</li>
	<li><a href="https://huecit.vn/Gioi-thieu/tid/Giai-thuong/pid/1243/cid/San-pham/Thong-tin-san-pham/tid/HueCIT-eDocPhan-mem-Quan-ly-Van-ban-va-Dieu-hanh/cid/10">Xem chi tiết</a></li>
</ul>

<p>&nbsp;</p>

<p>Cổng dịch vụ c&ocirc;ng tỉnh Thừa Thi&ecirc;n Huế</p>

<ul>
	<li>Năm 2017</li>
	<li>Giải thưởng: Giải Ba</li>
	<li>Cuộc thi: Hội thi S&aacute;ng tạo Kỹ thuật tỉnh Thừa Thi&ecirc;n Huế lần thứ VIII, năm 2017.</li>
	<li>Đơn vị tổ chức: Ban Tổ chức giải thưởng S&aacute;ng tạo KHCN Thừa Thi&ecirc;n Huế.</li>
	<li><a href="https://huecit.vn/Tin-tuc/Tin-tuc-chi-tiet/cid/345/pid/2168/tid/Cong-dich-vu-cong-tinh-Thua-Thien-Hue-Mot-san-pham-CNTT-mang-tinh-dot-pha-trong-xay-dung-chinh-quyen-dien-tu-tai-tinh-Thua-Thien-Hue">Xem chi tiết</a></li>
</ul>

<p>&nbsp;</p>

<p>Khung kỹ thuật ch&iacute;nh quyền điện tử v&agrave; hệ thống c&ocirc;ng sở điện tử đa cấp tỉnh Thừa Thi&ecirc;n Huế</p>

<ul>
	<li>Năm 2016</li>
	<li>G&oacute;p mặt v&agrave;o S&aacute;ch v&agrave;ng S&aacute;ng tạo Việt Nam năm 2016.</li>
	<li>Đơn vị tổ chức: Ban Thường trực Ủy ban Trung ương Mặt trận T&ocirc;̉ qu&ocirc;́c Việt Nam ph&ocirc;́i hợp với Li&ecirc;n hiệp c&aacute;c Hội Khoa học v&agrave; Kỹ thuật Việt Nam, Bộ Khoa học v&agrave; C&ocirc;ng nghệ v&agrave; c&aacute;c bộ, ng&agrave;nh li&ecirc;n quan.</li>
	<li><a href="https://huecit.vn/San-pham/Thong-tin-san-pham/tid/Khung-ky-thuat-chinh-quyen-dien-tu-va-he-thong-cong-so-dien-tu-da-cap-tinh-Thua-Thien-Hue/cid/357">Xem chi tiết</a></li>
</ul>

<ul>
	<li>Năm 2016</li>
	<li>Giải thưởng: Danh hiệu Sao Khu&ecirc;</li>
	<li>Cuộc thi: Giải thưởng Sao Khu&ecirc; 2016.</li>
	<li>Đơn vị tổ chức: Hiệp hội phần mềm v&agrave; c&ocirc;ng nghệ th&ocirc;ng tin Việt Nam (VINASA) tổ chức.</li>
	<li><a href="https://huecit.vn/San-pham/Thong-tin-san-pham/tid/Khung-ky-thuat-chinh-quyen-dien-tu-va-he-thong-cong-so-dien-tu-da-cap-tinh-Thua-Thien-Hue/cid/357">Xem chi tiết</a></li>
</ul>

<ul>
	<li>Năm 2015</li>
	<li>Giải thưởng: Giải Nhất</li>
	<li>Cuộc thi: Hội thi s&aacute;ng tạo kỹ thuật tỉnh Thừa Thi&ecirc;n Huế, năm 2015.</li>
	<li>Đơn vị tổ chức: Ban Tổ chức giải thưởng S&aacute;ng tạo KHCN Thừa Thi&ecirc;n Huế.</li>
</ul>

<p>&nbsp;</p>

<p>Phần mềm chữ n&ocirc;m chữ Th&aacute;i chữ Chăm</p>

<ul>
	<li>Năm 2012</li>
	<li>Giải thưởng: Giải Khuyến kh&iacute;ch</li>
	<li>Cuộc thi: Hội thi s&aacute;ng tạo kỹ thuật to&agrave;n quốc.</li>
	<li>Đơn vị tổ chức: VIFOTEC.</li>
	<li><a href="http://hannom.huecit.vn/">Xem chi tiết phần mềm chữ H&aacute;n - N&ocirc;m</a></li>
</ul>

<p>&nbsp;</p>

<p>Phần mềm Việt-H&aacute;n-N&ocirc;m gi&uacute;p nhập c&aacute;c k&yacute; tự N&ocirc;m tr&ecirc;n m&aacute;y t&iacute;nh Phần mềm Từ điển tra cứu trực tuyến H&aacute;n - N&ocirc;m - Việt</p>

<ul>
	<li>Năm 2011</li>
	<li>Giải thưởng: Giải thưởng Balaban</li>
	<li>Đơn vị tổ chức: Hội Bảo tồn Di sản chữ N&ocirc;m (VNPF).</li>
	<li><a href="https://huecit.vn/Tin-tuc/Tin-tuc-chi-tiet/cid/345/pid/1428/tid/Phan-mem-chu-nom-chu-Thai-chu-Cham-dat-giai-VIFOTEC-2012">Xem chi tiết</a></li>
</ul>

<ul>
	<li>Năm 2004</li>
	<li>Giải thưởng: Giải Nhất</li>
	<li>Cuộc thi: Giải thưởng S&aacute;ng tạo Khoa học c&ocirc;ng nghệ tỉnh Thừa Thi&ecirc;n Huế.</li>
	<li>Đơn vị tổ chức: Ban Tổ chức giải thưởng S&aacute;ng tạo KHCN TT-Huế.</li>
</ul>

<p>&nbsp;</p>

<p>Hệ thống phần mềm v&agrave; trang WEB hỗ trợ chữ Th&aacute;i Việt Nam</p>

<ul>
	<li>Năm 2010</li>
	<li>Giải thưởng: Giải Nh&igrave;</li>
	<li>Cuộc thi: Giải thưởng s&aacute;ng tạo Kỹ thuật v&agrave; Khoa học c&ocirc;ng nghệ To&agrave;n quốc lần thứ 10.</li>
	<li>Đơn vị tổ chức: VIFOTEC.</li>
	<li><a href="http://chuthai.huecit.vn/">Xem chi tiết</a></li>
</ul>

<p>&nbsp;</p>

<p>Hệ thống phần mềm v&agrave; trang WEB hỗ trợ chữ Chăm Việt Nam</p>

<ul>
	<li>Năm 2009</li>
	<li>Giải thưởng: Giải Nh&igrave;</li>
	<li>Cuộc thi: Giải thưởng s&aacute;ng tạo Kỹ thuật v&agrave; Khoa học c&ocirc;ng nghệ lần thứ 10 của tỉnh Thừa Thi&ecirc;n Huế.</li>
	<li>Đơn vị tổ chức: Ban Tổ chức giải thưởng S&aacute;ng tạo KHCN TT-Huế.</li>
</ul>

<p>&nbsp;</p>

<p>Bản đồ tr&ecirc;n thiết bị cầm tay HS-PPCMap</p>

<ul>
	<li>Năm 2006</li>
	<li>Giải thưởng: Giải Nh&igrave;</li>
	<li>Cuộc thi: Hội thi s&aacute;ng tạo kỹ thuật to&agrave;n quốc (Vifotech) lần thứ VIII.</li>
	<li>Đơn vị tổ chức: VIFOTEC.</li>
</ul>

<ul>
	<li>Năm 2005</li>
	<li>Giải thưởng: Giải nh&igrave;.</li>
	<li>Cuộc thi: Giải thưởng S&aacute;ng tạo Khoa học c&ocirc;ng nghệ tỉnh Thừa Thi&ecirc;n Huế.</li>
	<li>Đơn vị tổ chức: Ban Tổ chức giải thưởng S&aacute;ng tạo KHCN TT-Huế.</li>
</ul>

<p>&nbsp;</p>

<p>Giải ph&aacute;p chung cho c&aacute;c ứng dụng tương t&aacute;c tự động qua điện thoại (HS IVR)</p>

<ul>
	<li>Năm 2004</li>
	<li>Giải thưởng: Giải Triển vọng</li>
	<li>Cuộc thi: Tr&iacute; tuệ Việt Nam.</li>
	<li>Đơn vị tổ chức: B&aacute;o Lao Động Đ&agrave;i Truyền h&igrave;nh Việt Nam. C&ocirc;ng ty cổ phần ph&aacute;t triển đầu tư c&ocirc;ng nghệ FPT.</li>
</ul>

<p>&nbsp;</p>

<p>Hệ thống lọc số điện thoại HS-PhoneFilter</p>

<ul>
	<li>Năm 2004</li>
	<li>Giải thưởng: Giải Ba</li>
	<li>Cuộc thi: Giải thưởng S&aacute;ng tạo Khoa học c&ocirc;ng nghệ tỉnh Thừa Thi&ecirc;n Huế.</li>
	<li>Đơn vị tổ chức: Ban Tổ chức giải thưởng S&aacute;ng tạo KHCN TT-Huế.</li>
</ul>

<p>&nbsp;</p>

<p>Website B&aacute;c Hồ với tuổi trẻ</p>

<ul>
	<li>Năm 2003</li>
	<li>Giải thưởng: Giải Nhất</li>
	<li>Cuộc thi: Cuộc thi s&aacute;ng tạo trang web &ldquo;B&aacute;c Hồ với tuổi trẻ&rdquo;.</li>
	<li>Đơn vị tổ chức: B&aacute;o Tiền Phong; C&ocirc;ng ty NetNam v&agrave; Trung t&acirc;m th&ocirc;ng tin (Ban Khoa gi&aacute;o Trung ương) v&agrave; Trung t&acirc;m ph&aacute;t triển KHCN v&agrave; t&agrave;i năng trẻ.</li>
</ul>

<p>[&nbsp;&nbsp;]</p>
', 0, NULL, N'giai-thuong-dat-duoc-17042024163840', CAST(N'2024-04-17T00:00:00.000' AS DateTime), NULL, N'', N'', N'', N'Tiếng việt (Việt Nam)', 0, N'', 1, N'725ef3a5-6329-4edb-a1cf-dfeefbfde739', N'', CAST(N'2024-04-17T10:44:28.303' AS DateTime), CAST(N'2024-04-17T16:39:21.250' AS DateTime), 2, 2, N'', N'', N'', N'', NULL, NULL, 0, 0)
INSERT [dbo].[TB_BaiViet] ([ID], [TieuDe], [AnhDaiDien], [Thumbnail], [MoTaAnhDaiDien], [TomTat], [NoiDung], [TieuDiem], [ThuTuHienThi], [URLBaiViet], [NgayCongBo], [HetHanCongBo], [NguonTin], [TacGia], [TacQuyen], [NgonNgu], [LuotXem], [TuKhoa], [TrangThai], [ChuyenMucID], [ChuyenMucKhacID], [CreatedOnDate], [LastModifiedOnDate], [CreatedByUserID], [LastModifiedByUserID], [DienThoai], [Email], [DiaChi], [Website], [GioMoCua], [GioDongCua], [ToaDoX], [ToaDoY]) VALUES (N'52ef8d3a-43da-4a46-ae16-6fc18fa9a44e', N'HUECIT-VPĐT - HỆ THỐNG VĂN PHÒNG ĐIỆN TỬ', N'/Upload\BaiViet\2024\VanPhongDienTu_1712048601.jpg', N'https://huecit.vn/Portals/3/Medias/Nam2022/T1/VanPhongDienTu_18_1_2022_18_54_21_729_CH.jpg', N'HUECIT-VPĐT - HỆ THỐNG VĂN PHÒNG ĐIỆN TỬ', N'Hệ thống Văn phòng điện tử dành cho Doanh nghiệp (Hue Office) là một sản phẩm nằm trong nhóm giải pháp hỗ trợ doanh nghiệp thực hiện chuyển đổi số. Bao gồm việc số hóa, ghi nhận các dữ liệu hoạt động hàng ngày, kết nối thông minh, khai thác tối đa số liệu của doanh nghiệp nhằm thay đổi phương thức điều hành, lãnh đạo, quy trình làm việc, văn hóa doanh nghiệp, góp phần căn bản để chuyển đổi mô hình doanh nghiệp truyền thống sang mô hình doanh nghiệp số.

Với nhiều tính năng ưu việt, Hệ thống văn ', N'<p>a&acirc;&acirc;</p>
', 0, NULL, N'huecitvpdt-he-thong-van-phong-dien-tu-17042024135350', CAST(N'2024-04-01T00:00:00.000' AS DateTime), NULL, N'', N'', N'', N'Tiếng việt (Việt Nam)', 0, N'', 1, N'11930bab-964d-49eb-a089-2822e94845d9', N'', CAST(N'2024-04-01T14:43:38.240' AS DateTime), CAST(N'2024-04-17T13:54:32.293' AS DateTime), 2, 2, N'', N'', N'', N'', NULL, NULL, 0, 0)
INSERT [dbo].[TB_BaiViet] ([ID], [TieuDe], [AnhDaiDien], [Thumbnail], [MoTaAnhDaiDien], [TomTat], [NoiDung], [TieuDiem], [ThuTuHienThi], [URLBaiViet], [NgayCongBo], [HetHanCongBo], [NguonTin], [TacGia], [TacQuyen], [NgonNgu], [LuotXem], [TuKhoa], [TrangThai], [ChuyenMucID], [ChuyenMucKhacID], [CreatedOnDate], [LastModifiedOnDate], [CreatedByUserID], [LastModifiedByUserID], [DienThoai], [Email], [DiaChi], [Website], [GioMoCua], [GioDongCua], [ToaDoX], [ToaDoY]) VALUES (N'40cd738e-93c8-45c6-afc1-735e24f2291e', N'Thông báo tuyển dụng lập trình viên mobile', N'/Upload\BaiViet\2024\tuyendungmobileDev_1712746181.png', N'/Upload\BaiViet\2024\tuyendungmobileDev_1712746181.png', N'', N'HueCIT đang tìm kiếm vị trí lập trình viên mobile làm việc tại Huế với các thông tin sau:', N'<p>HueCIT đang t&igrave;m kiếm vị tr&iacute; lập tr&igrave;nh vi&ecirc;n mobile l&agrave;m việc tại Huế với c&aacute;c th&ocirc;ng tin sau:</p>

<p><strong>*M&ocirc; tả c&ocirc;ng việc</strong></p>

<ul>
	<li>&nbsp;-Ph&aacute;t triển c&aacute;c ứng dụng mobile c&oacute; chất lượng cao, hoạt động tốt tr&ecirc;n đa nền tảng&nbsp; (iOS, Android)</li>
	<li>&nbsp;-Ph&aacute;t triển cross platform application sử dụng React Native;</li>
	<li>&nbsp;-Nghi&ecirc;n cứu c&aacute;c c&ocirc;ng nghệ mới để &aacute;p dụng v&agrave;o việc ph&aacute;t triển v&agrave; tối ưu ho&aacute; sản phẩm</li>
</ul>

<p><strong>*Y&ecirc;u cầu năng lực</strong></p>

<ul>
	<li>-Tốt nghiệp từ cao đẳng trở l&ecirc;n c&aacute;c ng&agrave;nh CNTT hoặc c&aacute;c bằng cấp li&ecirc;n quan về CNTT đủ đ&aacute;p ứng y&ecirc;u cầu c&ocirc;ng việc</li>
	<li>-Kinh nghiệm 1-3 năm lập tr&igrave;nh ứng dụng mobile đa nền tảng (iOS v&agrave; Android), trong đ&oacute; &iacute;t nhất 1 năm sử dụng React Native</li>
	<li>-Kiến thức tốt về OOP, MVVM, cấu tr&uacute;c dữ liệu v&agrave; giải thuật</li>
	<li>-Kỹ năng lập tr&igrave;nh TypeScript tốt. C&oacute; kinh nghiệm code với Objective-C / Switf, Android / Java l&agrave; một lợi thế</li>
	<li>-C&oacute; kiến thức về Restful API</li>
	<li>-T&iacute;ch hợp thư viện b&ecirc;n thứ 3</li>
	<li>-Th&agrave;nh thạo c&ocirc;ng cụ ph&aacute;t triển (Git, Jira...)</li>
</ul>

<p><strong>*Quyền lợi</strong></p>

<ul>
	<li>-Hưởng đầy đủ c&aacute;c chế độ về nghỉ ph&eacute;p, nghỉ lễ, BHXH, BHYT, BHTN theo quy định của luật.</li>
	<li>- Hỗ trợ bảo hiểm bệnh viện quốc tế, du lịch hằng năm, Team building&nbsp;</li>
	<li>-Thưởng lễ, Tết, cuối năm.</li>
	<li>- Thời gian l&agrave;m việc: Thứ 2- Thứ 6</li>
	<li>-Được x&eacute;t tăng lương 6 th&aacute;ng/ lần</li>
	<li>-C&ocirc;ng việc ổn định, l&acirc;u d&agrave;i.</li>
	<li>- Được tham gia c&aacute;c kh&oacute;a đ&agrave;o tạo nội bộ v&agrave; b&ecirc;n ngo&agrave;i</li>
	<li>- M&ocirc;i trường l&agrave;m việc năng động, c&oacute; cơ hội thăng tiến v&agrave; n&acirc;ng cao năng lực bản th&acirc;n.</li>
</ul>

<p><strong>*Hồ sơ v&agrave; thủ tục</strong></p>

<ul>
	<li>-C&aacute;c ứng vi&ecirc;n nộp CV trực tiếp tại Trung t&acirc;m hoặc gửi qua email&nbsp;<a href="mailto:hr@huecit.vn">hr@huecit.vn</a>.</li>
	<li>-Hạn nộp hồ sơ:&nbsp;<strong>12/5/2023</strong>.</li>
	<li>-Địa chỉ li&ecirc;n hệ: Ph&ograve;ng Kế hoạch - Tổng hợp, Trung t&acirc;m C&ocirc;ng ngh&ecirc;̣ th&ocirc;ng tin tỉnh Thừa Thi&ecirc;n Huế, số 06 L&ecirc; Lợi, phường Vĩnh Ninh, th&agrave;nh phố Huế. SĐT: 0234.3823650</li>
	<li>-Ưu ti&ecirc;n c&aacute;c hồ sơ nộp sớm.</li>
</ul>

<p>&nbsp;</p>
', 0, NULL, N'thong-bao-tuyen-dung-lap-trinh-vien-mobile-12042024163204', CAST(N'2024-04-10T00:00:00.000' AS DateTime), NULL, N'', N'', N'', N'Tiếng việt (Việt Nam)', 0, N'', 1, N'39f89a2a-aff0-4de8-abe5-c6f114621c5b', N'', CAST(N'2024-04-10T11:35:52.250' AS DateTime), CAST(N'2024-04-12T16:32:06.583' AS DateTime), 2, 2, N'', N'', N'', N'', NULL, NULL, 0, 0)
INSERT [dbo].[TB_BaiViet] ([ID], [TieuDe], [AnhDaiDien], [Thumbnail], [MoTaAnhDaiDien], [TomTat], [NoiDung], [TieuDiem], [ThuTuHienThi], [URLBaiViet], [NgayCongBo], [HetHanCongBo], [NguonTin], [TacGia], [TacQuyen], [NgonNgu], [LuotXem], [TuKhoa], [TrangThai], [ChuyenMucID], [ChuyenMucKhacID], [CreatedOnDate], [LastModifiedOnDate], [CreatedByUserID], [LastModifiedByUserID], [DienThoai], [Email], [DiaChi], [Website], [GioMoCua], [GioDongCua], [ToaDoX], [ToaDoY]) VALUES (N'e4fc7d30-4bcb-45ba-a6f3-881c9dfdef1b', N'HueCIT đón tiếp và làm việc với Trung tâm Khoa học trải nghiệm EURECA Academy - Lego Robotics Hue', N'https://huecit.vn/Portals/0/Medias/Nam2024/T4/HueCIT_Lam-Viec-Voi-EURECA-ACADEMY-LEGO-ROBOTICS-VIETNAM-Ve-Dao-Tao-STEM-1.jpg', N'https://huecit.vn/Portals/0/Medias/Nam2024/T4/HueCIT_Lam-Viec-Voi-EURECA-ACADEMY-LEGO-ROBOTICS-VIETNAM-Ve-Dao-Tao-STEM-1.jpg', N'HueCIT đón tiếp và làm việc với Trung tâm Khoa học trải nghiệm EURECA Academy - Lego Robotics Hue', N'Sáng ngày 27/3, Trung tâm CNTT tỉnh Thừa Thiên Huế (HueCIT) đã có buổi đón tiếp Đại diện đơn vị EURECA Academy - Lego Robotics Hue tới tham quan, làm việc tại HueCIT và tìm kiếm cơ hội hợp tác, phát triển trong hoạt động đào tạo STEM tại tỉnh Thừa Thiên Huế.', N'<p>Về ph&iacute;a EURECA&nbsp;Academy - Lego Robotics Hue c&oacute; &Ocirc;ng Thuận Ng&ocirc; - Người s&aacute;ng lập c&ocirc;ng ty c&ugrave;ng cộng sự. Về ph&iacute;a HueCIT c&oacute; &Ocirc;ng L&ecirc; Vĩnh Chiến - Gi&aacute;m đốc Trung t&acirc;m; &Ocirc;ng Đỗ Xu&acirc;n Huyền - Trưởng ph&ograve;ng Ph&ograve;ng Đ&agrave;o tạo v&agrave; Bồi dưỡng c&ugrave;ng c&aacute;c &Ocirc;ng B&agrave; thuộc bộ phận kinh doanh, kỹ thuật v&agrave; truyền th&ocirc;ng của đơn vị.</p>

<p><img alt="" src="https://huecit.vn/Portals/0/TinHoatDong/Nam2024/EURECA-ACADEMY/HueCIT_Lam-Viec-Voi-EURECA-ACADEMY-LEGO-ROBOTICS-VIETNAM-Ve-Dao-Tao-STEM.jpg?ver=2024-04-02-153355-267" title="" /></p>

<p><em>Trung t&acirc;m Khoa học trải nghiệm EURECA l&agrave;m việc với HueCIT t&igrave;m hiểu về STEM</em></p>

<p>Trung t&acirc;m Khoa học trải nghiệm EURECA&nbsp;được th&agrave;nh lập từ năm 2018, l&agrave; một trong những đơn vị ti&ecirc;n phong tại tỉnh Thừa Thi&ecirc;n Huế v&agrave; khu vực miền Trung về lĩnh vực gi&aacute;o dục STEM Robotics v&agrave; Khoa học trải nghiệm. L&agrave; đối t&aacute;c ch&iacute;nh thức duy nhất của Lego Education Việt Nam tại Huế, Trung t&acirc;m EURECA chuy&ecirc;n tổ chức c&aacute;c lớp họp STEM Robotics ở nhiều cấp độ cho nhiều độ tuổi học sinh.</p>

<p>Ph&aacute;t biểu tại buổi gặp gỡ, l&agrave;m việc, &Ocirc;ng Thuận Ng&ocirc; đ&atilde; c&oacute; những giới thiệu về doanh nghiệp v&agrave; định hướng ph&aacute;t triển trong thời gian tới, đồng thời cho biết th&ecirc;m: Với hơn 6 năm kinh nghiệm trong lĩnh vực đ&agrave;o tạo STEM, đ&atilde; đ&agrave;o tạo hơn 2000 học vi&ecirc;n, Trung t&acirc;m Khoa học trải nghiệm EURECA mong muốn sẽ tiếp tục ph&aacute;t triển, mở rộng nhu cầu đ&agrave;o tạo STEM cho học sinh ở c&aacute;c độ tuổi bậc trung học tr&ecirc;n địa b&agrave;n tỉnh Thừa Thi&ecirc;n Huế.</p>

<p><img alt="" src="https://huecit.vn/Portals/0/TinHoatDong/Nam2024/EURECA-ACADEMY/HueCIT_Lam-Viec-Voi-EURECA-ACADEMY-LEGO-ROBOTICS-VIETNAM-Ve-Dao-Tao-STEM-2.jpg?ver=2024-04-02-153355-220" title="" /></p>

<p>Giới thiệu tổng quan về HueCIT c&ugrave;ng hoạt động đ&agrave;o tạo của Trung t&acirc;m trong hơn 23 năm h&igrave;nh th&agrave;nh v&agrave; ph&aacute;t triển, với tinh thần cầu thị, hợp t&aacute;c c&ugrave;ng ph&aacute;t triển, &Ocirc;ng L&ecirc; Vĩnh Chiến - Gi&aacute;m đốc HueCIT cho biết: Hiện nay, b&ecirc;n cạnh c&aacute;c chương tr&igrave;nh đạo tạo chuy&ecirc;n s&acirc;u về Lập tr&igrave;nh, Thiết kế đồ họa được HueCIT mua bản quyền từ Tập đo&agrave;n APTECH Ấn Độ, cũng như c&aacute;c chương tr&igrave;nh đạo ngắn hạn về ứng dụng CNTT, HueCIT c&ograve;n d&agrave;nh diện t&iacute;ch 80m<sup>2</sup>&nbsp;v&agrave; trang bị hệ thống ph&ograve;ng học v&agrave; trang thiết bị hiện đại d&agrave;nh cho&nbsp;hoạt động đ&agrave;o tạo STEM cho nh&oacute;m học sinh bậc Tiểu học v&agrave; Trung học cơ sở tr&ecirc;n địa b&agrave;n tỉnh Thừa Thi&ecirc;n Huế. B&ecirc;n cạnh hoạt động tiếp nhận đăng k&yacute; tham quan (theo đo&agrave;n) về m&ocirc; h&igrave;nh gi&aacute;o dục STEM, c&aacute;c chương tr&igrave;nh đạo tạo STEM hiện nay của HueCIT kh&aacute; đa dạng như: Điều khiển c&aacute;nh tay robot - Dobot cơ bản; STEM Robotics-Ultimates 2.0; Lập tr&igrave;nh m&aacute;y bay kh&ocirc;ng người l&aacute;i Litebee Wing; Lắp r&aacute;p hộp khoa học Sciencebox; Lập tr&igrave;nh điều khiển mạch Halocode; C&ocirc;ng nghệ in 3D v&agrave; khắc Laser.</p>
', 0, NULL, N'huecit-don-tiep-va-lam-viec-voi-trung-tam-khoa-hoc-trai-nghiem-eureca-academy-lego-robotics-hue-13092024165224', CAST(N'2024-04-05T00:00:00.000' AS DateTime), NULL, N'', N'', N'', N'Tiếng việt (Việt Nam)', 0, N'', 1, N'92729d2a-9c36-4d7b-82e4-fb7ffa8c6a59', N'', CAST(N'2024-04-05T08:50:31.010' AS DateTime), CAST(N'2024-09-13T16:51:54.257' AS DateTime), 2, 2, N'', N'', N'', N'', NULL, NULL, 0, 0)
INSERT [dbo].[TB_BaiViet] ([ID], [TieuDe], [AnhDaiDien], [Thumbnail], [MoTaAnhDaiDien], [TomTat], [NoiDung], [TieuDiem], [ThuTuHienThi], [URLBaiViet], [NgayCongBo], [HetHanCongBo], [NguonTin], [TacGia], [TacQuyen], [NgonNgu], [LuotXem], [TuKhoa], [TrangThai], [ChuyenMucID], [ChuyenMucKhacID], [CreatedOnDate], [LastModifiedOnDate], [CreatedByUserID], [LastModifiedByUserID], [DienThoai], [Email], [DiaChi], [Website], [GioMoCua], [GioDongCua], [ToaDoX], [ToaDoY]) VALUES (N'476717fe-0285-4a11-8059-957862e3e6bc', N'HueCIT khai giảng khóa Kiểm thử phần mềm thực dụng K01', N'/Upload\BaiViet\2024\avata-HueCIT-khai-giang-khoa-Kiem-thu-phan-mem-K01.4_1713340548.jpg', N'/Upload\BaiViet\2024\avata-HueCIT-khai-giang-khoa-Kiem-thu-phan-mem-K01.4_1713340596.jpg', N'', N'Chiều tối ngày 21/3/2024, Trung tâm Công nghệ thông tin tỉnh Thừa Thiên Huế (HueCIT) tổ chức buổi khai giảng khóa Kiểm thử phần mềm thực dụng K01 tại trung tâm.', N'<div class="des-info-caption" style="border:0px; padding:0px; text-align:start">
<div class="details news_img" id="dnn_ctr621_ViewTinBai_DsChuyenMucTinBai_NoZoom_idnewsimg" style="border:0px; padding:0px; text-align:center">
<div class="group-cap" style="border:0px; padding:0px">
<div class="news_summary" id="dnn_ctr621_ViewTinBai_DsChuyenMucTinBai_NoZoom_lblNewsSummary" style="border:0px; padding:0px 0px 10px; text-align:justify">&nbsp;</div>
<span style="font-size:14px"><span style="font-family:&quot;Open Sans&quot;"><span style="color:rgba(38, 38, 38, 0.8)"><span style="background-color:#ffffff"><img alt="HueCIT khai giảng khóa Kiểm thử phần mềm thực dụng K01 tại Trung tâm" class="news_thumb" id="dnn_ctr621_ViewTinBai_DsChuyenMucTinBai_NoZoom_imgAnhDaiDien" src="https://huecit.vn/Portals/0/Medias/Nam2024/T3/avata-HueCIT-khai-giang-khoa-Kiem-thu-phan-mem-K01.4.jpg" style="border:0px; box-sizing:border-box; font:inherit; max-width:100%; padding:0px 0px 20px; vertical-align:middle" /></span></span></span></span></div>

<div class="news_noteimg" id="dnn_ctr621_ViewTinBai_DsChuyenMucTinBai_NoZoom_idnoteimg" style="border:0px; padding:0px 20px 12px 0px; text-align:center; width:1175.22px"><span style="font-size:14px"><span style="font-family:&quot;Open Sans&quot;"><span style="color:rgba(38, 38, 38, 0.8)"><span style="background-color:#ffffff"><span style="font-size:14px"><span style="font-family:inherit"><span style="color:#3791f5">HueCIT khai giảng kh&oacute;a Kiểm thử phần mềm thực dụng K01 tại Trung t&acirc;m</span></span></span></span></span></span></span></div>
</div>
</div>

<div class="description-info-detail" style="border:0px; padding:0px; text-align:start">&nbsp;</div>

<div class="news_content" id="dnn_ctr621_ViewTinBai_DsChuyenMucTinBai_NoZoom_lblNewsContent" style="border:0px; padding:0px; text-align:justify">
<p style="text-align:justify"><span style="font-size:14px"><span style="font-family:&quot;Open Sans&quot;"><span style="color:rgba(38, 38, 38, 0.8)"><span style="background-color:#ffffff"><span style="font-size:inherit"><span style="font-family:inherit"><span style="color:#444444">&ldquo;Kiểm thử phần mềm thực dụng&rdquo; l&agrave; chương tr&igrave;nh đ&agrave;o tạo Kỹ sư kiểm thử phần mềm thực dụng mới nhất do tập đo&agrave;n Mettatonic Corporation tại Mỹ thiết kế v&agrave; ph&aacute;t triển th&ocirc;ng qua C&ocirc;ng ty Sắc Th&aacute;i Huế, HueCIT l&agrave; đơn vị tại Huế được C&ocirc;ng ty Sắc Th&aacute;i Huế chuyển nhượng bản quyền chương tr&igrave;nh đ&agrave;o tạo Kỹ sư kiểm thử phần mềm.</span></span></span></span></span></span></span></p>

<p style="text-align:justify"><span style="font-size:14px"><span style="font-family:&quot;Open Sans&quot;"><span style="color:rgba(38, 38, 38, 0.8)"><span style="background-color:#ffffff"><span style="font-size:inherit"><span style="font-family:inherit"><span style="color:#444444">Tham dự buổi lễ khai giảng kh&oacute;a Kiểm thử phần mềm thực dụng K01, về ph&iacute;a c&ocirc;ng ty Sắc Th&aacute;i Huế, c&oacute; &Ocirc;ng L&ecirc; Tấn Ch&acirc;u, Gi&aacute;m đốc điều h&agrave;nh c&ocirc;ng ty Sắc Th&aacute;i Huế; B&agrave; Nguyễn Thị Minh Phước, giảng vi&ecirc;n của Sắc Th&aacute;i Huế.</span></span></span></span></span></span></span></p>

<p style="text-align:justify"><span style="font-size:14px"><span style="font-family:&quot;Open Sans&quot;"><span style="color:rgba(38, 38, 38, 0.8)"><span style="background-color:#ffffff"><span style="font-size:inherit"><span style="font-family:inherit"><span style="color:#444444">Về ph&iacute;a HueCIT, c&oacute; &Ocirc;ng Đỗ Xu&acirc;n Huyền, Trưởng ph&ograve;ng Ph&ograve;ng Đ&agrave;o tạo v&agrave; Bồi dưỡng HueCIT.</span></span></span></span></span></span></span></p>

<p style="text-align:justify"><span style="font-size:14px"><span style="font-family:&quot;Open Sans&quot;"><span style="color:rgba(38, 38, 38, 0.8)"><span style="background-color:#ffffff"><span style="font-size:inherit"><span style="font-family:inherit"><span style="color:#444444">Với kh&oacute;a Kiểm thử phần mềm thực dụng K01, học vi&ecirc;n đa dạng, c&oacute; nhiều độ tuổi, lĩnh vực c&ocirc;ng t&aacute;c v&agrave; đến từ nhiều tỉnh th&agrave;nh kh&aacute;c nhau như Huế, Đ&agrave; Nẵng, Bắc Giang. Để tạo điều kiện thuận lợi cho c&aacute;c học vi&ecirc;n được tham gia kh&oacute;a học th&igrave; lớp được tổ chức học theo h&igrave;nh thức vừa online vừa offline.</span></span></span></span></span></span></span></p>

<p style="text-align:center"><span style="font-size:14px"><span style="font-family:&quot;Open Sans&quot;"><span style="color:rgba(38, 38, 38, 0.8)"><span style="background-color:#ffffff"><span style="font-size:inherit"><span style="font-family:inherit"><span style="color:#444444"><img alt="" class="img-responsive" src="https://huecit.vn/Portals/0/Tindaotao/2024/Khaigiang/Kiemthuphanmem/K01/HueCIT-khai-giang-khoa-Kiem-thu-phan-mem-K01_1.jpg?ver=2024-03-22-102204-467" style="border:0px; box-sizing:border-box; display:block; font:inherit; height:auto; max-width:100%; padding:0px; vertical-align:middle; width:auto" title="" /><br />
<img alt="" class="img-responsive" src="https://huecit.vn/Portals/0/Tindaotao/2024/Khaigiang/Kiemthuphanmem/K01/HueCIT-khai-giang-khoa-Kiem-thu-phan-mem-K01_2.jpg?ver=2024-03-22-102204-467" style="border:0px; box-sizing:border-box; display:block; font:inherit; height:auto; max-width:100%; padding:0px; vertical-align:middle; width:auto" title="" /><br />
<span style="color:#28166f"><em>Học vi&ecirc;n vừa online vừa offline tại buổi lễ khai giảng</em></span></span></span></span></span></span></span></span></p>

<div style="border:0px; padding:0px">
<p style="text-align:justify"><span style="font-size:14px"><span style="font-family:&quot;Open Sans&quot;"><span style="color:rgba(38, 38, 38, 0.8)"><span style="background-color:#ffffff"><span style="font-size:inherit"><span style="font-family:inherit"><span style="color:#444444">Tại buổi lễ khai giảng, &Ocirc;ng Đỗ Xu&acirc;n Huyền Trưởng ph&ograve;ng Ph&ograve;ng Đ&agrave;o tạo v&agrave; Bồi dưỡng HueCIT nhấn mạnh: &ldquo;Ch&uacute;ng ta kh&ocirc;ng thể phủ nhận vai tr&ograve; của phần mềm trong cuộc sống hiện đại. Từ c&aacute;c ứng dụng di động cho đến c&aacute;c hệ thống quản l&yacute; doanh nghiệp, phần mềm đ&oacute;ng vai tr&ograve; kh&ocirc;ng thể thiếu trong việc n&acirc;ng cao hiệu suất l&agrave;m việc, tối ưu h&oacute;a quy tr&igrave;nh v&agrave; cung cấp trải nghiệm người d&ugrave;ng tốt nhất. V&igrave; vậy, việc đảm bảo chất lượng phần mềm th&ocirc;ng qua việc kiểm thử l&agrave; điều hết sức cần thiết&hellip;&rdquo;</span></span></span></span></span></span></span></p>

<p style="text-align:justify"><span style="font-size:14px"><span style="font-family:&quot;Open Sans&quot;"><span style="color:rgba(38, 38, 38, 0.8)"><span style="background-color:#ffffff"><span style="font-size:inherit"><span style="font-family:inherit"><span style="color:#444444">&Ocirc;ng Đỗ Xu&acirc;n Huyền c&ograve;n chia sẻ: &ldquo;Kh&oacute;a Kiểm thử phần mềm thực dụng tại HueCIT kh&ocirc;ng chỉ tập trung v&agrave;o l&yacute; thuyết m&agrave; c&ograve;n ch&uacute; trọng v&agrave;o thực h&agrave;nh&hellip; Qua những buổi học, thảo luận v&agrave; b&agrave;i tập thực h&agrave;nh, t&ocirc;i tin rằng mỗi bạn học vi&ecirc;n sẽ t&iacute;ch lũy được những kỹ năng qu&yacute; b&aacute;u, mở rộng tầm nh&igrave;n v&agrave; trở th&agrave;nh những chuy&ecirc;n gia kiểm thử phần mềm đ&aacute;ng tin cậy trong tương lai&rdquo;.</span></span></span></span></span></span></span></p>

<p style="text-align:center"><span style="font-size:14px"><span style="font-family:&quot;Open Sans&quot;"><span style="color:rgba(38, 38, 38, 0.8)"><span style="background-color:#ffffff"><span style="font-size:inherit"><span style="font-family:inherit"><span style="color:#444444"><img alt="" class="img-responsive" src="https://huecit.vn/Portals/0/Tindaotao/2024/Khaigiang/Kiemthuphanmem/K01/HueCIT-khai-giang-khoa-Kiem-thu-phan-mem-K01_6.jpg?ver=2024-03-22-102204-467" style="border:0px; box-sizing:border-box; display:block; font:inherit; height:auto; max-width:100%; padding:0px; vertical-align:middle; width:auto" title="" /><br />
<span style="color:#28166f"><em>&Ocirc;ng Đỗ Xu&acirc;n Huyền (đứng giữa) ph&aacute;t biểu tại buổi lễ khai giảng</em></span></span></span></span></span></span></span></span></p>
</div>

<p style="text-align:justify"><span style="font-size:14px"><span style="font-family:&quot;Open Sans&quot;"><span style="color:rgba(38, 38, 38, 0.8)"><span style="background-color:#ffffff"><span style="font-size:inherit"><span style="font-family:inherit"><span style="color:#444444">Trong buổi lễ khai giảng, B&agrave; Nguyễn Thị Minh Phước, giảng vi&ecirc;n của Sắc Th&aacute;i Huế cũng chia sẻ rằng: Đảm nhận vai tr&ograve; l&agrave; giảng vi&ecirc;n giảng dạy phần thực h&agrave;nh cho kh&oacute;a Kiểm thử phần mềm thực dụng tại HueCIT, ngo&agrave;i việc sử dụng tiếng Anh th&igrave; B&agrave; Phước sẽ hướng học vi&ecirc;n được tiếp cận c&aacute;c phương ph&aacute;p kiểm thử đ&uacute;ng đắn v&agrave; ph&ugrave; hợp nhất để đảm bảo rằng phần mềm được ph&aacute;t triển v&agrave; triển khai một c&aacute;ch an to&agrave;n, ổn định v&agrave; hiệu quả.</span></span></span></span></span></span></span></p>

<p style="text-align:center"><span style="font-size:14px"><span style="font-family:&quot;Open Sans&quot;"><span style="color:rgba(38, 38, 38, 0.8)"><span style="background-color:#ffffff"><span style="font-size:inherit"><span style="font-family:inherit"><span style="color:#444444"><img alt="" class="img-responsive" src="https://huecit.vn/Portals/0/Tindaotao/2024/Khaigiang/Kiemthuphanmem/K01/HueCIT-khai-giang-khoa-Kiem-thu-phan-mem-K01_5.jpg?ver=2024-03-22-102204-527" style="border:0px; box-sizing:border-box; display:block; font:inherit; height:auto; max-width:100%; padding:0px; vertical-align:middle; width:auto" title="" /><br />
<img alt="" class="img-responsive" src="https://huecit.vn/Portals/0/Tindaotao/2024/Khaigiang/Kiemthuphanmem/K01/HueCIT-khai-giang-khoa-Kiem-thu-phan-mem-K01_3.jpg?ver=2024-03-22-102204-467" style="border:0px; box-sizing:border-box; display:block; font:inherit; height:auto; max-width:100%; padding:0px; vertical-align:middle; width:auto" title="" /><br />
<span style="color:#28166f"><em>B&agrave; Nguyễn Thị Minh Phước (đứng) chia sẻ tại buổi lễ khai giảng</em></span></span></span></span></span></span></span></span></p>

<p style="text-align:justify"><span style="font-size:14px"><span style="font-family:&quot;Open Sans&quot;"><span style="color:rgba(38, 38, 38, 0.8)"><span style="background-color:#ffffff"><span style="font-size:inherit"><span style="font-family:inherit"><span style="color:#444444">Buổi lễ khai giảng kh&oacute;a Kiểm thử phần mềm thực dụng K01 diễn ra th&agrave;nh c&ocirc;ng tốt đẹp. HueCIT xin ch&uacute;c mừng tất cả c&aacute;c bạn học vi&ecirc;n đ&atilde; bắt đầu trải qua h&agrave;nh tr&igrave;nh học tập v&agrave; ph&aacute;t triển c&aacute; nh&acirc;n của m&igrave;nh.</span></span></span></span></span></span></span></p>

<p style="text-align:center"><span style="font-size:14px"><span style="font-family:&quot;Open Sans&quot;"><span style="color:rgba(38, 38, 38, 0.8)"><span style="background-color:#ffffff"><span style="font-size:inherit"><span style="font-family:inherit"><span style="color:#444444"><img alt="" class="img-responsive" src="https://huecit.vn/Portals/0/Tindaotao/2024/Khaigiang/Kiemthuphanmem/K01/HueCIT-khai-giang-khoa-Kiem-thu-phan-mem-K01.jpg?ver=2024-03-22-102204-450" style="border:0px; box-sizing:border-box; display:block; font:inherit; height:auto; max-width:100%; padding:0px; vertical-align:middle; width:auto" title="" /><br />
<img alt="" class="img-responsive" src="https://huecit.vn/Portals/0/Tindaotao/2024/Khaigiang/Kiemthuphanmem/K01/HueCIT-khai-giang-khoa-Kiem-thu-phan-mem-K01_8.jpg?ver=2024-03-22-102204-467" style="border:0px; box-sizing:border-box; display:block; font:inherit; height:auto; max-width:100%; padding:0px; vertical-align:middle; width:auto" title="" /><br />
<img alt="" class="img-responsive" src="https://huecit.vn/Portals/0/Tindaotao/2024/Khaigiang/Kiemthuphanmem/K01/HueCIT-khai-giang-khoa-Kiem-thu-phan-mem-K01_9.jpg?ver=2024-03-22-102204-450" style="border:0px; box-sizing:border-box; display:block; font:inherit; height:auto; max-width:100%; padding:0px; vertical-align:middle; width:auto" title="" /><br />
<span style="color:#28166f"><em>To&agrave;n cảnh buổi lễ khai giảng kh&oacute;a Kiểm thử phần mềm thực dụng K01 tại HueCIT</em></span></span></span></span></span></span></span></span></p>

<p><span style="font-size:14px"><span style="font-family:&quot;Open Sans&quot;"><span style="color:rgba(38, 38, 38, 0.8)"><span style="background-color:#ffffff"><span style="font-size:inherit"><span style="font-family:inherit"><span style="color:#444444">HueCIT đang chi&ecirc;u sinh kh&oacute;a Kiểm thử phần mềm thực dụng&nbsp;K02, dự kiến khai giảng v&agrave;o th&aacute;ng 4/2024</span></span></span></span></span></span></span></p>

<p><span style="font-size:14px"><span style="font-family:&quot;Open Sans&quot;"><span style="color:rgba(38, 38, 38, 0.8)"><span style="background-color:#ffffff"><span style="font-size:inherit"><span style="font-family:inherit"><span style="color:#444444">Để đăng k&yacute; kh&oacute;a học tại HueCIT, vui l&ograve;ng li&ecirc;n hệ Ph&ograve;ng Đ&agrave;o tạo v&agrave; Bồi dưỡng, tầng 2, số 6 L&ecirc; Lợi &ndash; th&agrave;nh phố Huế.</span></span></span></span></span></span></span></p>

<p><span style="font-size:14px"><span style="font-family:&quot;Open Sans&quot;"><span style="color:rgba(38, 38, 38, 0.8)"><span style="background-color:#ffffff"><span style="font-size:inherit"><span style="font-family:inherit"><span style="color:#444444">Hotline&nbsp;:&nbsp;<span style="color:#28166f"><em><strong>0234.390.7777 (trong giờ h&agrave;nh ch&iacute;nh)</strong></em></span></span></span></span></span></span></span></span></p>

<p><span style="font-size:14px"><span style="font-family:&quot;Open Sans&quot;"><span style="color:rgba(38, 38, 38, 0.8)"><span style="background-color:#ffffff"><span style="font-size:inherit"><span style="font-family:inherit"><span style="color:#444444">Fanpage:&nbsp;<strong><a href="https://www.facebook.com/Aptech-Hue-1549657725082378/?ref=pages_you_manage" style="box-sizing:border-box; padding:0px; border:0px; font:inherit; vertical-align:baseline; color:#3791f5; text-decoration:none; outline:0px; transition:color 0.3s ease 0s" target="_blank"><span style="color:#28166f"><em>Hue Aptech</em></span></a><span style="color:#28166f">;&nbsp;</span><a href="https://www.facebook.com/Huecit/?ref=pages_you_manage" style="box-sizing:border-box; padding:0px; border:0px; font:inherit; vertical-align:baseline; color:#3791f5; text-decoration:none; outline:0px; transition:color 0.3s ease 0s" target="_blank"><span style="color:#28166f"><em>HueCIT</em></span></a><span style="color:#28166f">;&nbsp;</span><em><a href="https://www.facebook.com/huecit.edu/" style="box-sizing:border-box; padding:0px; border:0px; font:inherit; vertical-align:baseline; color:#3791f5; text-decoration:none; outline:0px; transition:color 0.3s ease 0s"><span style="color:#28166f">HueCIT.edu</span></a><span style="color:#28166f">;</span></em>&nbsp;<em><a href="https://www.facebook.com/arena.huecit" style="box-sizing:border-box; padding:0px; border:0px; font:inherit; vertical-align:baseline; color:#3791f5; text-decoration:none; outline:0px; transition:color 0.3s ease 0s" target="_blank"><span style="color:#28166f">Arena.Hue</span></a></em></strong></span></span></span></span></span></span></span></p>

<p><span style="font-size:14px"><span style="font-family:&quot;Open Sans&quot;"><span style="color:rgba(38, 38, 38, 0.8)"><span style="background-color:#ffffff"><span style="font-size:inherit"><span style="font-family:inherit"><span style="color:#444444">Website:<span style="color:#002060"><a href="http://daotao.huecit.vn/" style="box-sizing:border-box; padding:0px; border:0px; font:inherit; vertical-align:baseline; color:#3791f5; text-decoration:none; outline:0px; transition:color 0.3s ease 0s" target="_blank"><em>&nbsp;</em></a></span><a href="http://daotao.huecit.vn/" style="box-sizing:border-box; padding:0px; border:0px; font:inherit; vertical-align:baseline; color:#3791f5; text-decoration:none; outline:0px; transition:color 0.3s ease 0s" target="_blank"><span style="color:#28166f"><em><strong>Daotao.huecit.v</strong></em></span></a><span style="color:#28166f"><strong>n</strong></span></span></span></span></span></span></span></span></p>
</div>
', 0, NULL, N'huecit-khai-giang-khoa-kiem-thu-phan-mem-thuc-dung-k01-17042024145554', CAST(N'2024-04-17T00:00:00.000' AS DateTime), NULL, N'', N'', N'', N'Tiếng việt (Việt Nam)', 0, N'', 1, N'57214e56-18b0-456a-9b36-d263cb332d75', N'', CAST(N'2024-04-17T14:55:48.973' AS DateTime), CAST(N'2024-04-17T14:56:36.387' AS DateTime), 2, 2, N'', N'', N'', N'', NULL, NULL, 0, 0)
INSERT [dbo].[TB_BaiViet] ([ID], [TieuDe], [AnhDaiDien], [Thumbnail], [MoTaAnhDaiDien], [TomTat], [NoiDung], [TieuDiem], [ThuTuHienThi], [URLBaiViet], [NgayCongBo], [HetHanCongBo], [NguonTin], [TacGia], [TacQuyen], [NgonNgu], [LuotXem], [TuKhoa], [TrangThai], [ChuyenMucID], [ChuyenMucKhacID], [CreatedOnDate], [LastModifiedOnDate], [CreatedByUserID], [LastModifiedByUserID], [DienThoai], [Email], [DiaChi], [Website], [GioMoCua], [GioDongCua], [ToaDoX], [ToaDoY]) VALUES (N'9de82e73-2007-4244-9bc3-97e272e0c694', N'JOBOKO - Nền tảng công nghệ tuyển dụng được vinh danh tại Make in Viet Nam 2023', N'https://huecit.vn/Portals/0/Medias/Nam2023/T12/joboko-nen-tang-tuyen-dung-make-in-viet-nam-2023.jpg', N'https://huecit.vn/Portals/0/Medias/Nam2023/T12/joboko-nen-tang-tuyen-dung-make-in-viet-nam-2023.jpg', N'JOBOKO - Nền tảng công nghệ tuyển dụng được vinh danh tại Make in Viet Nam 2023', N'Lễ công bố và trao giải thưởng Make In Viet Nam 2023 đã tôn vinh 43 sản phẩm xuất sắc tại 5 hạng mục, trong đó nền tảng công nghệ tuyển dụng JobOKO đã giành được giải Đồng ở hạng mục “Sản phẩm công nghệ số xuất sắc cho xã hội số”.', N'<p>Bộ Truyền th&ocirc;ng v&agrave; Th&ocirc;ng tin chủ tr&igrave; tổ chức giải thưởng Make In Viet Nam h&agrave;ng năm từ năm 2020 để t&ocirc;n vinh những doanh nghiệp với sản phẩm c&ocirc;ng nghệ số c&oacute; đ&oacute;ng g&oacute;p cho mục ti&ecirc;u chuyển đổi số của Việt Nam. Giải thưởng đ&atilde; ghi nhận những gi&aacute; t&iacute;ch cực của JobOKO mang đến cho x&atilde; hội số.&nbsp;<br />
&nbsp;<br />
<strong>JobOKO - Nền tảng c&ocirc;ng nghệ tuyển dụng đ&oacute;ng g&oacute;p gi&aacute; trị cho x&atilde; hội&nbsp;</strong></p>

<p>Tỉnh Thừa Thi&ecirc;n Huế hiện nay c&oacute; tr&ecirc;n 81% l&agrave; những doanh nghiệp vừa v&agrave; nhỏ, những doanh nghiệp n&agrave;y c&ograve;n gặp nhiều kh&oacute; khăn trong qu&aacute; tr&igrave;nh tuyển dụng do ph&ograve;ng nh&acirc;n sự nhỏ, &iacute;t dữ liệu dẫn đến tuyển sai người l&agrave;m tốn k&eacute;m chi ph&iacute; v&agrave; k&eacute;o d&agrave;i thời gian. Thấu hiểu được vấn đề n&agrave;y v&agrave; tiếp tục ph&aacute;t huy những gi&aacute; trị được Make In Viet Nam c&ocirc;ng nhận, JobOKO d&agrave;nh tặng g&oacute;i VIP đăng tin&nbsp;<a href="https://vn.joboko.com/">tuyển dụng</a>&nbsp;miễn ph&iacute; cho c&aacute;c doanh nghiệp của tỉnh Thừa Thi&ecirc;n Huế. Doanh nghiệp tham gia sẽ được hỗ trợ nền tảng tuyển dụng bằng c&ocirc;ng nghệ, tiếp cận người lao động nhanh nhất v&agrave; li&ecirc;n tục nhận gợi &yacute; ứng vi&ecirc;n ph&ugrave; hợp.&nbsp;</p>

<p>Chương tr&igrave;nh được kỳ vọng sẽ gi&uacute;p nhiều doanh nghiệp tr&ecirc;n địa b&agrave;n tỉnh x&acirc;y dựng được hệ thống nh&acirc;n sự chất lượng, tăng hiệu quả kinh doanh v&agrave; g&oacute;p phần ph&aacute;t triển kinh tế của tỉnh n&oacute;i ri&ecirc;ng v&agrave; đất nước n&oacute;i chung.&nbsp;</p>

<p><strong>C&ocirc;ng nghệ tuyển dụng vượt trội&nbsp;</strong></p>

<p>JobOKO vừa ra mắt phi&ecirc;n bản mới 3.0 với nhiều n&acirc;ng cấp, cải tiến c&ocirc;ng nghệ vượt bậc để hỗ trợ hiệu quả doanh nghiệp trong qu&aacute; tr&igrave;nh tuyển dụng. JobOKO đ&atilde; ph&aacute;t triển OKO-Engine kết hợp với m&aacute;y học (Machine Learning) v&agrave; tr&iacute; tuệ nh&acirc;n tạo (AI) s&agrave;ng lọc, ph&acirc;n t&iacute;ch v&agrave; đ&aacute;nh gi&aacute; tr&ecirc;n kho dữ liệu hơn 2,000,000 hồ sơ để gợi &yacute; những ứng vi&ecirc;n c&oacute; độ tương th&iacute;ch cao gi&uacute;p doanh nghiệp tiết kiệm thời gian v&agrave; chi ph&iacute;. Hệ thống đ&atilde; xử l&yacute; hơn 4,500,000 tin đăng tuyển dụng v&agrave; hỗ trợ kết nối hơn 20,000,000 việc l&agrave;m.&nbsp;</p>

<p>C&ocirc;ng nghệ Job Search Engine cũng l&agrave; một trong những yếu tố được hội đồng gi&aacute;m khảo của giải thưởng Make In Viet Nam 2023 đ&aacute;nh gi&aacute; cao. Đ&acirc;y l&agrave; c&ocirc;ng nghệ duy nhất tại Việt Nam gi&uacute;p tổng hợp việc l&agrave;m từ mọi nguồn. Với Job Search Engine, ứng vi&ecirc;n c&oacute; thể t&igrave;m thấy việc l&agrave;m ph&ugrave; hợp tại những doanh nghiệp uy t&iacute;n chỉ tr&ecirc;n một nền tảng c&ocirc;ng nghệ tuyển dụng duy nhất l&agrave; JobOKO. Đặc biệt, h&agrave;ng trăm ng&agrave;n mẫu CV độc đ&aacute;o được JobOKO thiết kế dựa tr&ecirc;n kinh nghiệm từ c&aacute;c chuy&ecirc;n gia nh&acirc;n sự h&agrave;ng đầu l&agrave;m nổi bật v&agrave; ấn tượng&nbsp;<a href="https://vn.joboko.com/mau-cv-xin-viec-tao-cv">CV xin việc</a>&nbsp;của ứng vi&ecirc;n trong mắt nh&agrave; tuyển dụng.&nbsp;</p>

<p><strong>Nền tảng c&ocirc;ng nghệ tuyển dụng ti&ecirc;n phong đổi mới, s&aacute;ng tạo &nbsp;</strong></p>

<p>L&agrave; nền tảng c&ocirc;ng nghệ tuyển dụng duy nhất được vinh danh tại giải thưởng tại Make In Viet Nam năm nay, JobOKO được ghi nhận những đ&oacute;ng g&oacute;p cho s&aacute;ng tạo, ph&aacute;t triển c&ocirc;ng nghệ số từ đ&oacute; th&uacute;c đẩy sự ph&aacute;t triển mạnh mẽ v&agrave; bền vững của nền kinh tế Việt Nam.</p>

<p>&ldquo;Trong suốt thời gian hoạt động, nền tảng c&ocirc;ng nghệ tuyển dụng JobOKO lu&ocirc;n kh&ocirc;ng ngừng x&acirc;y dựng v&agrave; ph&aacute;t triển những giải ph&aacute;p c&ocirc;ng nghệ tuyển dụng đột ph&aacute; để tối ưu chi ph&iacute; tuyển dụng cho doanh nghiệp v&agrave; nhanh ch&oacute;ng kết nối người lao động với việc l&agrave;m. Đ&acirc;y sẽ lu&ocirc;n l&agrave; nhiệm vụ trọng t&acirc;m của JobOKO tr&ecirc;n h&agrave;nh tr&igrave;nh thực hiện sứ mệnh &ldquo;Kết nối đ&uacute;ng người, đ&uacute;ng việc.&rdquo; - Đại diện của JobOKO chia sẻ.&nbsp;</p>
', 1, NULL, N'joboko-nen-tang-cong-nghe-tuyen-dung-duoc-vinh-danh-tai-make-in-viet-nam-2023-16042024172237', CAST(N'2024-04-05T00:00:00.000' AS DateTime), NULL, N'', N'', N'', N'Tiếng việt (Việt Nam)', 0, N'', 1, N'f1ac63bb-7eba-4041-8c70-2c70d8e64133', N'94F2B4CE-4E63-40E5-BAB6-02C662DB6978,92729D2A-9C36-4D7B-82E4-FB7FFA8C6A59', CAST(N'2024-04-05T08:53:35.877' AS DateTime), CAST(N'2024-04-16T17:22:37.837' AS DateTime), 2, 2, N'', N'', N'', N'', NULL, NULL, 0, 0)
INSERT [dbo].[TB_BaiViet] ([ID], [TieuDe], [AnhDaiDien], [Thumbnail], [MoTaAnhDaiDien], [TomTat], [NoiDung], [TieuDiem], [ThuTuHienThi], [URLBaiViet], [NgayCongBo], [HetHanCongBo], [NguonTin], [TacGia], [TacQuyen], [NgonNgu], [LuotXem], [TuKhoa], [TrangThai], [ChuyenMucID], [ChuyenMucKhacID], [CreatedOnDate], [LastModifiedOnDate], [CreatedByUserID], [LastModifiedByUserID], [DienThoai], [Email], [DiaChi], [Website], [GioMoCua], [GioDongCua], [ToaDoX], [ToaDoY]) VALUES (N'10e427f3-b649-47ff-8c3c-9d392266c49a', N'UBND tỉnh công bố quyết định của Chủ tịch UBND tỉnh về công tác cán bộ', N'https://huecit.vn/Portals/0/Medias/Nam2024/T3/AnhBoNhiem_GiamDocTrungTam_2024.jpg', N'https://huecit.vn/Portals/0/Medias/Nam2024/T3/AnhBoNhiem_GiamDocTrungTam_2024.jpg', N'UBND tỉnh công bố quyết định của Chủ tịch UBND tỉnh về công tác cán bộ', N'Chiều ngày 29/3, UBND tỉnh Thừa Thiên Huế đã tổ chức Lễ công bố Quyết định bổ nhiệm Phó Chánh Văn phòng Ủy ban nhân dân tỉnh; Phó Giám đốc Sở Thông tin và Truyền thông và Giám đốc Trung tâm Công nghệ thông tin tỉnh. Phó Bí thư Tỉnh ủy, Chủ tịch UBND tỉnh Nguyễn Văn Phương chủ trì và trao Quyết định bổ nhiệm.', N'<p>Tại buổi lễ, l&atilde;nh đạo Sở Nội vụ đ&atilde; c&ocirc;ng bố c&aacute;c Quyết định của Chủ tịch UBND tỉnh về c&ocirc;ng t&aacute;c c&aacute;n bộ. Theo đ&oacute;, Bổ nhiệm b&agrave; Trần T&ocirc;n Thu Hằng, Trưởng ph&ograve;ng Ph&ograve;ng Tổng hợp, Văn ph&ograve;ng Ủy ban nh&acirc;n d&acirc;n tỉnh, giữ chức vụ Ph&oacute; Ch&aacute;nh Văn ph&ograve;ng Ủy ban nh&acirc;n d&acirc;n tỉnh;&nbsp;Bổ nhiệm &ocirc;ng B&ugrave;i Ho&agrave;ng Minh, Gi&aacute;m đốc Trung t&acirc;m Gi&aacute;m s&aacute;t, điều h&agrave;nh đ&ocirc; thị th&ocirc;ng minh trực thuộc Sở Th&ocirc;ng tin v&agrave; Truyền th&ocirc;ng, giữ chức vụ Ph&oacute; Gi&aacute;m đốc Sở Th&ocirc;ng tin v&agrave; Truyền th&ocirc;ng. Thời hạn giữ chức vụ&nbsp; l&agrave; 05 năm, kể từ ng&agrave;y 01/4/2024 đến ng&agrave;y 31/3/ 2029.</p>

<p>Bổ nhiệm &ocirc;ng L&ecirc; Vĩnh Chiến,&nbsp;Ph&oacute;&nbsp;Gi&aacute;m đốc Trung t&acirc;m C&ocirc;ng nghệ th&ocirc;ng tin tỉnh,&nbsp;giữ&nbsp;chức vụ Gi&aacute;m đốc Trung t&acirc;m C&ocirc;ng nghệ th&ocirc;ng tin tỉnh.&nbsp;Thời hạn giữ chức vụ 05 năm, kể từ ng&agrave;y 14/&nbsp;3/&nbsp;2024 đến ng&agrave;y 13/3/&nbsp;2029.</p>

<p>Ph&aacute;t biểu tại buổi lễ, Chủ tịch UBND tỉnh Nguyễn Văn Phương gửi lời ch&uacute;c mừng đến c&aacute;c c&aacute; nh&acirc;n đ&atilde; được t&iacute;n nhiệm bổ nhiệm giữ chức vụ mới. Chủ tịch UBND tỉnh đề nghị tr&ecirc;n cương vị mới, c&aacute;c c&aacute; nh&acirc;n được điều động, bổ nhiệm đợt n&agrave;y tiếp tục nỗ lực cố gắng, ph&aacute;t huy kinh nghiệm trong qu&aacute; tr&igrave;nh c&ocirc;ng t&aacute;c để tiếp cận c&ocirc;ng việc mới, tiếp tục đổi mới, tăng cường hiệu lực, hiệu quả quản l&yacute; nh&agrave; nước v&agrave; c&ocirc;ng t&aacute;c chỉ đạo, điều h&agrave;nh; giữ vững nguy&ecirc;n tắc, kỷ luật, kỷ cương h&agrave;nh ch&iacute;nh, h&agrave;nh động quyết liệt; đề cao tr&aacute;ch nhiệm c&aacute; nh&acirc;n kết hợp với ph&aacute;t huy tr&iacute; tuệ tập thể; ph&aacute;t huy tinh thần đo&agrave;n kết, hợp t&aacute;c v&agrave; hỗ trợ lẫn nhau ho&agrave;n th&agrave;nh tốt nhiệm vụ, g&oacute;p phần x&acirc;y dựng dựng tỉnh Thừa Thi&ecirc;n Huế ng&agrave;y c&agrave;ng ph&aacute;t triển.</p>
', 1, NULL, N'ubnd-tinh-cong-bo-quyet-dinh-cua-chu-tich-ubnd-tinh-ve-cong-tac-can-bo-16042024172302', CAST(N'2024-04-05T00:00:00.000' AS DateTime), NULL, N'', N'', N'', N'Tiếng việt (Việt Nam)', 0, N'', 1, N'92729d2a-9c36-4d7b-82e4-fb7ffa8c6a59', N'94F2B4CE-4E63-40E5-BAB6-02C662DB6978', CAST(N'2024-04-05T08:49:50.160' AS DateTime), CAST(N'2024-04-16T17:23:02.647' AS DateTime), 2, 2, N'', N'', N'', N'', NULL, NULL, 0, 0)
INSERT [dbo].[TB_BaiViet] ([ID], [TieuDe], [AnhDaiDien], [Thumbnail], [MoTaAnhDaiDien], [TomTat], [NoiDung], [TieuDiem], [ThuTuHienThi], [URLBaiViet], [NgayCongBo], [HetHanCongBo], [NguonTin], [TacGia], [TacQuyen], [NgonNgu], [LuotXem], [TuKhoa], [TrangThai], [ChuyenMucID], [ChuyenMucKhacID], [CreatedOnDate], [LastModifiedOnDate], [CreatedByUserID], [LastModifiedByUserID], [DienThoai], [Email], [DiaChi], [Website], [GioMoCua], [GioDongCua], [ToaDoX], [ToaDoY]) VALUES (N'6f40e15c-ac35-445c-9f61-a1e1629610a3', N'Khách hàng và đối tác', N'', N'', N'', N'', N'<table>
	<tbody>
		<tr>
			<td colspan="2">I. KH&Aacute;CH H&Agrave;NG TI&Ecirc;U BIỂU CỦA HUECIT</td>
		</tr>
		<tr>
			<td colspan="2"><strong>Kh&aacute;ch h&agrave;ng trong tỉnh</strong></td>
		</tr>
		<tr>
			<td colspan="2">
			<ul>
				<li><a href="http://vpubnd.thuathienhue.gov.vn/" target="_blank">Văn ph&ograve;ng UBND tỉnh Thừa Thi&ecirc;n Huế</a></li>
				<li><a href="http://skhdt.thuathienhue.gov.vn/" target="_blank">Sở Kế hoạch v&agrave; Đầu tư tỉnh Thừa Thi&ecirc;n Huế</a></li>
				<li><a href="http://www.huecity.gov.vn/" target="_blank">UBND th&agrave;nh phố Huế</a></li>
				<li><a href="http://www.hueworldheritage.org.vn/" target="_blank">Trung t&acirc;m Bảo tồn Di t&iacute;ch Cố đ&ocirc; Huế</a></li>
				<li><a href="http://sct.thuathienhue.gov.vn/" target="_blank">Sở C&ocirc;ng thương tỉnh Thừa Thi&ecirc;n Huế</a></li>
				<li><a href="http://stttt.thuathienhue.gov.vn/" target="_blank">Sở Th&ocirc;ng tin v&agrave; Truyền th&ocirc;ng tỉnh Thừa Thi&ecirc;n Huế</a></li>
				<li><a href="http://svhtt.thuathienhue.gov.vn/" target="_blank">Sở Văn h&oacute;a Thể thao tỉnh Thừa Thi&ecirc;n Huế</a></li>
				<li><a href="http://skhcn.thuathienhue.gov.vn/" target="_blank">Sở Khoa học v&agrave; C&ocirc;ng nghệ tỉnh Thừa Thi&ecirc;n Huế</a></li>
				<li><a href="http://sldtbxh.thuathienhue.gov.vn/" target="_blank">Sở Lao động v&agrave; Thương binh X&atilde; hội tỉnh Thừa Thi&ecirc;n Huế</a></li>
				<li><a href="http://sxd.thuathienhue.gov.vn/" target="_blank">Sở X&acirc;y dựng tỉnh Thừa Thi&ecirc;n Huế</a></li>
				<li><a href="http://sngv.thuathienhue.gov.vn/" target="_blank">Sở Ngoại vụ tỉnh Thừa Thi&ecirc;n Huế</a></li>
				<li><a href="https://huecit.vn/Gioi-thieu/tid/Khach-hang-doi-tac/pid/1699/cid/57#" target="_blank">Trung t&acirc;m khuyến c&ocirc;ng v&agrave; x&uacute;c tiến thương mại tỉnh Thừa Thi&ecirc;n Huế</a></li>
				<li><a href="http://www.trt.vn/" target="_blank">Đ&agrave;i Ph&aacute;t thanh Truyền h&igrave;nh tỉnh Thừa Thi&ecirc;n Huế</a></li>
				<li><a href="https://huecit.vn/Gioi-thieu/tid/Khach-hang-doi-tac/pid/1699/cid/57#" target="_blank">Trung t&acirc;m Th&ocirc;ng tin dữ liệu điện tử tỉnh Thừa Thi&ecirc;n Huế</a></li>
				<li><a href="https://huecit.vn/Gioi-thieu/tid/Khach-hang-doi-tac/pid/1699/cid/57#" target="_blank">Trung t&acirc;m tin học h&agrave;nh ch&iacute;nh tỉnh Thừa Thi&ecirc;n Huế</a></li>
				<li>Bưu điện Thừa Thi&ecirc;n Huế</li>
				<li>Điện lực Thừa Thi&ecirc;n Huế</li>
				<li>Bệnh viện Trung ương Huế</li>
				<li>C&ocirc;ng ty TNHH MTV X&acirc;y dựng v&agrave; Cấp nước Thừa Thi&ecirc;n Huế</li>
				<li><a href="https://huecit.vn/Gioi-thieu/tid/Khach-hang-doi-tac/pid/1699/cid/57#" target="_blank">BQL Khu Kinh tế Ch&acirc;n M&acirc;y Lăng C&ocirc;</a></li>
				<li><a href="http://www.hce.edu.vn/" target="_blank">Trường Đại học Kinh tế Huế</a></li>
				<li><a href="https://huecit.vn/Gioi-thieu/tid/Khach-hang-doi-tac/pid/1699/cid/57#" target="_blank">Trường Cao đẳng C&ocirc;ng nghiệp Huế</a></li>
				<li><a href="http://www.hueic.edu.vn/" target="_blank">Trường Cao nghề du lịch Huế</a></li>
				<li><a href="https://huecit.vn/Gioi-thieu/tid/Khach-hang-doi-tac/pid/1699/cid/57#" target="_blank">C&ocirc;ng ty cổ phần Huetronics</a></li>
				<li><a href="https://khamphahue.com.vn/Du-lich/Chi-tiet/cid/378/pid/9861" target="_blank">C&ocirc;ng ty TNHH SAIGON MORIN Huế</a></li>
			</ul>
			</td>
		</tr>
		<tr>
			<td colspan="2"><strong>Kh&aacute;ch h&agrave;ng Ngoại tỉnh</strong></td>
		</tr>
		<tr>
			<td colspan="2">
			<ul>
				<li>C&ocirc;ng ty đo đạc Ảnh địa h&igrave;nh (APT) - Bộ t&agrave;i nguy&ecirc;n v&agrave; m&ocirc;i trường</li>
				<li>Sở Lao động Thương binh X&atilde; hội Quảng Nam</li>
				<li>Sở Lao động Thương binh X&atilde; hội Quảng Ng&atilde;i</li>
				<li>Bưu điện B&igrave;nh Dương</li>
				<li>Bưu điện Hưng Y&ecirc;n</li>
				<li>Văn ph&ograve;ng UBND tỉnh Quảng Trị</li>
				<li>Ph&ograve;ng Tư ph&aacute;p c&aacute;c th&agrave;nh phố Tam Kỳ, Hội An v&agrave; huyện N&uacute;i th&agrave;nh - tỉnh Quảng Nam</li>
				<li>Ph&ograve;ng Tư ph&aacute;p th&agrave;nh phố Vinh v&agrave; c&aacute;c huyện - tỉnh Nghệ An</li>
				<li>Thanh tra th&agrave;nh phố Đ&agrave; Lạt - tỉnh L&acirc;m Đồng</li>
				<li>Ban thi đua khen thưởng H&agrave; Tĩnh</li>
				<li>C&ocirc;ng ty cổ phần đầu tư - Thiết kế viễn Th&ocirc;ng Cần Thơ</li>
				<li>Sở Ngoại vụ B&igrave;nh Dương</li>
				<li>Văn ph&ograve;ng Tỉnh ủy B&igrave;nh Dương</li>
				<li>C&ocirc;ng ty cổ phần kho&aacute;ng sản Quảng Trị</li>
				<li>Sở Văn h&oacute;a, Thể thao &amp; Du lịch tỉnh B&igrave;nh Định</li>
				<li>Sở Gi&aacute;o dục v&agrave; Đ&agrave;o tạo tỉnh Kon Tum</li>
			</ul>
			</td>
		</tr>
		<tr>
			<td colspan="2"><strong>Kh&aacute;ch h&agrave;ng nước ngo&agrave;i</strong></td>
		</tr>
		<tr>
			<td colspan="2">
			<p>&nbsp;</p>

			<ul>
				<li>C&ocirc;ng ty Omniris technologie&nbsp;</li>
				<li>C&ocirc;ng ty HereUare, Hoa Kỳ</li>
				<li>C&ocirc;ng ty Mandarin Media</li>
				<li>E-CAPITAL GROUP INC</li>
				<li>C&ocirc;ng ty Magrabit</li>
				<li>Iti -Holiday, Indochina Travel Individual Reisen</li>
				<li>Ms. Kim Nguy&ecirc;n</li>
				<li>Mr.Heiko Grimm&nbsp;</li>
			</ul>
			</td>
		</tr>
		<tr>
			<td colspan="2">II. KH&Aacute;CH H&Agrave;NG THAM GIA C&Ocirc;NG VI&Ecirc;N PHẦN MỀM V&Agrave; VƯỜN ƯƠM CNTT</td>
		</tr>
		<tr>
			<td>
			<p><img alt="" src="https://huecit.vn/Portals/3/GioiThieu/Khachhang/HueCIT_CongVien_06.jpg" /></p>

			<p>C&ocirc;ng ty cổ phần Acronics Việt Nam &ndash; Văn ph&ograve;ng đại diện tại Huế</p>
			&nbsp;

			<p><strong>Th&ocirc;ng tin chung:</strong></p>

			<ul>
				<li>T&ecirc;n giao dịch: Acronics VN Joint Stock Company.</li>
				<li>Địa chỉ: L&ocirc; 9B1-B, Nguyễn Tất Th&agrave;nh, Phường Tam Thuận, Quận Thanh kh&ecirc;, Tp. Đ&agrave; Nẵng.</li>
				<li>Địa chỉ Văn ph&ograve;ng đại diện tại Huế: Tầng 4, t&ograve;a nh&agrave; HueCIT, 6 L&ecirc; Lợi, Huế.</li>
				<li>Tel : (54) 3938 869.</li>
				<li>Website:&nbsp;<a href="http://www.acronics.com/">www.acronics.com</a>.</li>
			</ul>

			<p><strong>Lĩnh vực hoạt động</strong></p>

			<ul>
				<li>Nghi&ecirc;n cứu ph&aacute;t triển c&ocirc;ng nghệ th&ocirc;ng tin.</li>
			</ul>
			</td>
			<td>
			<p>C&ocirc;ng ty Cổ phần Việt L&agrave;o Th&aacute;i</p>
			&nbsp;

			<p><strong>Th&ocirc;ng tin chung:</strong></p>

			<ul>
				<li>Địa chỉ: Tầng 3, t&ograve;a nh&agrave; HueCIT, 6 L&ecirc; Lợi, Huế.</li>
				<li>Tel : 0938 105 468.</li>
				<li>Email:&nbsp;<a href="mailto:hieuhoang0171@gmail.com">hieuhoang0171@gmail.com</a>.</li>
			</ul>

			<p><strong>Lĩnh vực hoạt động</strong></p>

			<ul>
				<li>Lập tr&igrave;nh m&aacute;y vi t&iacute;nh.</li>
			</ul>
			</td>
		</tr>
		<tr>
			<td>
			<p><img alt="" src="https://huecit.vn/Portals/3/Medias/Nam2017/T1/CongTyHueSup.png" /></p>

			<p>C&ocirc;ng ty TNHH MTV T&acirc;n Nguy&ecirc;n</p>
			&nbsp;

			<p><strong>Th&ocirc;ng tin chung:</strong></p>

			<ul>
				<li>Địa chỉ: Tầng 4, t&ograve;a nh&agrave; HueCIT, 6 L&ecirc; Lợi, Huế.</li>
				<li>Phone: 054.3938366.</li>
				<li>Email:&nbsp;<a href="mailto:info@tannguyen.vn">info@tannguyen.vn</a>.</li>
			</ul>

			<p><strong>Lĩnh vực hoạt động</strong></p>

			<ul>
				<li>Hoạt động dịch vụ c&ocirc;ng nghệ th&ocirc;ng tin v&agrave; c&aacute;c dịch vụ kh&aacute;c li&ecirc;n quan đến m&aacute;y t&iacute;nh</li>
				<li>Xuất bản phần mềm.</li>
				<li>B&aacute;n bu&ocirc;n thiết bị v&agrave; linh kiện điện tử,viễn th&ocirc;ng.</li>
				<li>Quảng c&aacute;o</li>
			</ul>
			</td>
			<td>
			<p>C&ocirc;ng ty cổ phần thương mại v&agrave; x&acirc;y lắp Đ&ocirc;ng A</p>
			&nbsp;

			<p><strong>Th&ocirc;ng tin chung:</strong></p>

			<ul>
				<li>Địa chỉ: Tầng 4, t&ograve;a nh&agrave; HueCIT, 6 L&ecirc; Lợi, Huế.</li>
				<li>Tel: 0546.507777.</li>
				<li>Email:&nbsp;<a href="mailto:donga.xaylap@gmail.com">donga.xaylap@gmail.com</a>.</li>
			</ul>

			<p><strong>Lĩnh vực hoạt động</strong></p>

			<ul>
				<li>Lập tr&igrave;nh m&aacute;y vi t&iacute;nh</li>
			</ul>
			</td>
		</tr>
		<tr>
			<td>
			<p><img alt="" src="https://huecit.vn/Portals/3/Medias/Nam2017/T1/CongTyFAup.jpg" /></p>

			<p>C&ocirc;ng ty TNHH tư vấn thiết kế FAGROUP</p>
			&nbsp;

			<p><strong>Th&ocirc;ng tin chung:</strong></p>

			<ul>
				<li>Địa chỉ: Tầng 4, t&ograve;a nh&agrave; HueCIT, 6 L&ecirc; Lợi, Huế.</li>
				<li>Tel: 054.3931983.</li>
				<li>Email:&nbsp;<a href="mailto:fa.group2010@gmail.com">fa.group2010@gmail.com</a>.</li>
			</ul>

			<p><strong>Lĩnh vực hoạt động</strong></p>

			<ul>
				<li>Lập tr&igrave;nh m&aacute;y vi t&iacute;nh.</li>
			</ul>
			</td>
			<td>
			<p><img alt="" src="https://huecit.vn/Portals/3/GioiThieu/Khachhang/cog_08.gif" /></p>

			<p>C&ocirc;ng ty Cổ phần Dịch vụ COG</p>
			&nbsp;

			<p><strong>Th&ocirc;ng tin chung:</strong></p>

			<ul>
				<li>Địa chỉ: Tầng 4, t&ograve;a nh&agrave; HueCIT, 6 L&ecirc; Lợi, Huế.</li>
				<li>Tel: 054 6250168.</li>
			</ul>

			<p><strong>Lĩnh vực hoạt động</strong></p>

			<ul>
				<li>Lập tr&igrave;nh m&aacute;y vi t&iacute;nh</li>
				<li>B&aacute;n bu&ocirc;n m&aacute;y vi t&iacute;nh, thiết bị ngoại vi, phần mềm</li>
				<li>Tư vấn m&aacute;y vi t&iacute;nh v&agrave; quản trị hệ thống m&aacute;y vi t&iacute;nh</li>
				<li>Hoạt động dịch vụ CNTT kh&aacute;c li&ecirc;n quan đến m&aacute;y vi t&iacute;nh: khắc phục sự cố, c&agrave;i phần mềm...</li>
				<li>Xử l&yacute; dữ liệu</li>
				<li>Cổng th&ocirc;ng tin</li>
				<li>Thiết kế, đồ họa</li>
				<li>Quảng c&aacute;o</li>
				<li>Nghi&ecirc;n cứu v&agrave; ph&aacute;t triển thực nghiệm khoa học tự nhi&ecirc;n v&agrave; kỹ thuật</li>
			</ul>
			</td>
		</tr>
		<tr>
			<td>
			<p><img alt="" src="https://huecit.vn/Portals/3/GioiThieu/Khachhang/hoatam_11.jpg" /></p>

			<p>C&ocirc;ng ty TNHH MTV H&oacute;a Tam</p>
			&nbsp;

			<p><strong>Th&ocirc;ng tin chung:</strong></p>

			<ul>
				<li>Địa chỉ: Tầng 3, t&ograve;a nh&agrave; HueCIT, 6 L&ecirc; Lợi, Huế</li>
				<li>Tel: 0906407743</li>
			</ul>

			<p><strong>Lĩnh vực hoạt động</strong></p>

			<ul>
				<li>Lập tr&igrave;nh m&aacute;y vi t&iacute;nh</li>
			</ul>
			</td>
			<td>
			<p><img alt="" src="https://huecit.vn/Portals/3/GioiThieu/Khachhang/Icodedark_10_7_2015_16_41_48_771_CH.PNG" /></p>

			<p>C&ocirc;ng ty TNHH MTV Giải ph&aacute;p Phần mềm ICODEDARK</p>
			&nbsp;

			<p><strong>Th&ocirc;ng tin chung:</strong></p>

			<ul>
				<li>Địa chỉ: Tầng 3, t&ograve;a nh&agrave; HueCIT, 6 L&ecirc; Lợi, Huế</li>
				<li>Tel: 0913463890</li>
				<li>Email: hatieuphong@gmail.com</li>
				<li>Website:http://icodedark.com</li>
			</ul>

			<p><strong>Lĩnh vực hoạt động</strong></p>

			<ul>
				<li>Hoạt động dịch vụ c&ocirc;ng nghệ th&ocirc;ng tin v&agrave; dịch vụ kh&aacute;c li&ecirc;n quan đến m&aacute;y t&iacute;nh</li>
				<li>Lập tr&igrave;nh m&aacute;y vi t&iacute;nh</li>
				<li>Tư vấn m&aacute;y vi t&iacute;nh v&agrave; quản trị hệ thống m&aacute;y vi t&iacute;nh</li>
			</ul>
			</td>
		</tr>
		<tr>
			<td>
			<p><img alt="" src="https://huecit.vn/Portals/3/GioiThieu/Khachhang/diadu_10.png" /></p>

			<p>C&ocirc;ng ty TNHH Giải ph&aacute;p v&agrave; C&ocirc;ng nghệ Địa Dư</p>
			&nbsp;

			<p><strong>Th&ocirc;ng tin chung:</strong></p>

			<ul>
				<li>Địa chỉ: 67/50/5 đường số 38, khu phố 8. P. Hiệp B&igrave;nh Ch&aacute;nh, Q. Thủ Đức, TP. Hồ Ch&iacute; Minh</li>
				<li>Tel: 0905530355</li>
			</ul>

			<p><strong>Lĩnh vực hoạt động</strong></p>

			<ul>
				<li>Lập tr&igrave;nh m&aacute;y vi t&iacute;nh</li>
				<li>Tư vấn m&aacute;y vi t&iacute;nh v&agrave; quản trị hệ thống m&aacute;y vi t&iacute;nh</li>
				<li>Hoạt động chuy&ecirc;n m&ocirc;n, khoa học v&agrave; c&ocirc;ng nghệ kh&aacute;c: Tư vấn về m&ocirc;i trường, tư vấn về c&ocirc;ng nghệ...</li>
				<li>Nghi&ecirc;n cứu v&agrave; ph&aacute;t triển thực nghiệm khoa học tự nhi&ecirc;n v&agrave; kỹ thuật</li>
				<li>B&aacute;n bu&ocirc;n m&aacute;y m&oacute;c, thiết bị v&agrave; phụ t&ugrave;ng kh&aacute;c</li>
				<li>B&aacute;n bu&ocirc;n m&aacute;y vi t&iacute;nh, thiết bị ngoại vi, phần mềm</li>
				<li>Lắp đặt m&aacute;y m&oacute;c v&agrave; thiết bị c&ocirc;ng nghiệp</li>
			</ul>
			</td>
			<td>
			<p>&nbsp;</p>

			<p>&nbsp;</p>
			</td>
		</tr>
		<tr>
			<td colspan="2">III. ĐỐI T&Aacute;C</td>
		</tr>
		<tr>
			<td>
			<p><img alt="" src="https://huecit.vn/Portals/3/GioiThieu/Khachhang/logo_bleu.gif" /></p>

			<p>C&ocirc;ng ty Omniris technologie</p>

			<ul>
				<li>Địa chỉ li&ecirc;n hệ: 2, rue de la Libert&eacute;; 26100 ROMANS-SUR-ISERE; FRANCE.</li>
				<li>Điện thoại: 33. (0) 4.75.72.86.30</li>
				<li>Fax: 33. (0) 4.75.72.86.31</li>
				<li>Website:&nbsp;<a href="http://www.omniris.com/">www.omniris.com</a></li>
				<li>Email: info@omniris.com.</li>
			</ul>
			</td>
			<td>
			<p><img alt="" src="https://huecit.vn/Portals/3/GioiThieu/Khachhang/ls_logo.gif" /></p>

			<p>Aptech Global Learning Solutions</p>

			<ul>
				<li>Địa chỉ li&ecirc;n hệ: Aptech House, A-65, MIDC Marol, Andheri (East) Mumbai 400 093</li>
				<li>Điện thoại: +91-22-28272300</li>
				<li>Fax: +91-22-2827 2399</li>
				<li>Website:&nbsp;<a href="https://www.aptech-worldwide.com/">www.aptech-worldwide.com</a></li>
				<li>Email: customercare@aptech.ac.in.</li>
			</ul>
			</td>
		</tr>
		<tr>
			<td>
			<p><img alt="" src="https://huecit.vn/Portals/3/GioiThieu/Khachhang/static1.squarespace.com.jpg" /></p>

			<p>C&ocirc;ng ty Mandarin Media: Portland, USA</p>

			<ul>
				<li>Địa chỉ li&ecirc;n hệ: P.O. Box 328, New Gloucester.</li>
				<li>Điện thoại: (207) 926-3700</li>
				<li>Website:&nbsp;<a href="http://www.mandarinmedia.net/">www.mandarinmedia.net</a></li>
				<li>Email: hphillips@mandarinmedia.net.</li>
			</ul>
			</td>
			<td>
			<p><img alt="" src="https://huecit.vn/Portals/3/GioiThieu/Khachhang/logo_MISA.png" /></p>

			<p>C&ocirc;ng ty Cổ phần Misa</p>

			<ul>
				<li>Địa chỉ li&ecirc;n hệ: Nh&agrave; I, Kh&aacute;ch sạn La Th&agrave;nh, Số 218 Đội Cấn, Ba Đ&igrave;nh, H&agrave; Nội.</li>
				<li>Điện thoại: 84-4-37627891</li>
				<li>Fax: 84-4-3762 9746</li>
				<li>Website:&nbsp;<a href="http://www.misa.com.vn/">www.misa.com.vn</a></li>
				<li>Email: sales@misa.com.vn</li>
			</ul>
			</td>
		</tr>
		<tr>
			<td>
			<p>&nbsp;</p>

			<p>C&ocirc;ng ty cổ phần đầu tư - thiết kế viễn th&ocirc;ng Cần Thơ</p>

			<ul>
				<li>Địa chỉ li&ecirc;n hệ: 1B Đường 3 th&aacute;ng 2, Q. Ninh Kiều, TP Cần Thơ</li>
				<li>Điện thoại: (071) 3828999 - 73199</li>
				<li>Fax: (017) 828333</li>
				<li>Email: cadico@vnn.vn</li>
			</ul>
			</td>
			<td>
			<p>&nbsp;</p>

			<p>C&ocirc;ng ty Cổ phần NTS Đ&agrave; Nẵng</p>

			<ul>
				<li>Địa chỉ li&ecirc;n hệ: Tầng 7, t&ograve;a nh&agrave; Danabook, 76 Bạch Đằng, Đ&agrave; Nẵng</li>
				<li>Điện thoại: (054) - (0511) 3817145</li>
				<li>Fax: (0511) 3817146</li>
				<li>Website:&nbsp;<a href="http://www.nts.com.vn/">www.nts.com.vn</a></li>
				<li>Email: ntsdng@nts.com.vn</li>
			</ul>
			</td>
		</tr>
	</tbody>
</table>
', 0, NULL, N'khach-hang-va-doi-tac-17042024163853', CAST(N'2024-04-17T00:00:00.000' AS DateTime), NULL, N'', N'', N'', N'Tiếng việt (Việt Nam)', 0, N'', 1, N'725ef3a5-6329-4edb-a1cf-dfeefbfde739', N'', CAST(N'2024-04-17T10:43:41.590' AS DateTime), CAST(N'2024-04-17T16:39:33.687' AS DateTime), 2, 2, N'', N'', N'', N'', NULL, NULL, 0, 0)
INSERT [dbo].[TB_BaiViet] ([ID], [TieuDe], [AnhDaiDien], [Thumbnail], [MoTaAnhDaiDien], [TomTat], [NoiDung], [TieuDiem], [ThuTuHienThi], [URLBaiViet], [NgayCongBo], [HetHanCongBo], [NguonTin], [TacGia], [TacQuyen], [NgonNgu], [LuotXem], [TuKhoa], [TrangThai], [ChuyenMucID], [ChuyenMucKhacID], [CreatedOnDate], [LastModifiedOnDate], [CreatedByUserID], [LastModifiedByUserID], [DienThoai], [Email], [DiaChi], [Website], [GioMoCua], [GioDongCua], [ToaDoX], [ToaDoY]) VALUES (N'dce067ec-f1e9-47a2-bc99-a786d75b0234', N'KHÁNH THÀNH TƯỢNG NGHỆ THUẬT CỐ NHẠC SỸ TRỊNH CÔNG SƠN BÊN BỜ SÔNG HƯƠNG', N'/Upload\BaiViet\2024\2024_02_28Trinh_1712045750.jpg', N'https://www.huefestival.com/upload/image/festivalhue/FES-2024/tuong-trinhcongson-1.jpg', N'', N'Chiều 28/2, tại công viên Trịnh Công Sơn, UBND thành phố Huế tổ chức Lễ khánh thành tượng nghệ thuật cố nhạc sỹ Trịnh Công Sơn và chương trình nghệ thuật "Chiều trên quê hương tôi." Đây là một trong những hoạt động có ý nghĩa nhân kỷ niệm 85 năm ngày sinh của cố nhạc sỹ (28/2/1939-28/2/2024).', N'<p style="text-align:center"><a href="https://www.huefestival.com/upload/image/festivalhue/FES-2024/tuong-trinhcongson-1.jpg"><img src="https://www.huefestival.com/upload/image/festivalhue/FES-2024/tuong-trinhcongson-1.jpg" /></a></p>

<p>Chiều 28/2, tại c&ocirc;ng vi&ecirc;n Trịnh C&ocirc;ng Sơn, UBND th&agrave;nh phố Huế tổ chức Lễ kh&aacute;nh th&agrave;nh tượng nghệ thuật cố nhạc sỹ Trịnh C&ocirc;ng Sơn v&agrave; chương tr&igrave;nh nghệ thuật &quot;Chiều tr&ecirc;n qu&ecirc; hương t&ocirc;i.&quot; Đ&acirc;y l&agrave; một trong những hoạt động c&oacute; &yacute; nghĩa nh&acirc;n kỷ niệm 85 năm ng&agrave;y sinh của cố nhạc sỹ (28/2/1939-28/2/2024).</p>

<p>;</p>

<p>Ngay sau Lễ kh&aacute;nh th&agrave;nh tượng, đ&atilde; diễn ra chương tr&igrave;nh &quot;Chiều tr&ecirc;n qu&ecirc; hương t&ocirc;i&quot; với sự tham gia của c&aacute;c ca sỹ nỗi tiếng như Đức Tuấn, Giang Trang, Tấn Sơn, L&atilde; Anh Thư, Đội K&egrave;n Huế...</p>

<p style="text-align:center"><img alt="" src="https://www.huefestival.com/upload/image/festivalhue/FES-2024/tuong-trinhcongson-2.jpg" /></p>

<p>Lễ kh&aacute;nh th&agrave;nh tượng nghệ thuật Trịnh C&ocirc;ng Sơn nhằm ghi nhận v&agrave; t&ocirc;n vinh những đ&oacute;ng g&oacute;p của cố nhạc sỹ Trịnh C&ocirc;ng Sơn &ndash; người con t&agrave;i hoa của xứ Huế d&agrave;nh cho nền T&acirc;n nhạc Việt Nam. Tượng nghệ thuật nhạc sỹ Trịnh C&ocirc;ng Sơn l&agrave; t&aacute;c phẩm đi&ecirc;u khắc do cố đi&ecirc;u khắc gia Trương Đ&igrave;nh Quế s&aacute;ng t&aacute;c, tượng c&oacute; chất liệu bằng đồng, chiều cao 1,7m, chiều rộng 1,6m, chiều d&agrave;i 2,3m, trọng lượng 500kg với sự tư vấn thiết kế của Kiến tr&uacute;c sư Hồ Viết Vinh c&ugrave;ng nh&oacute;m cộng sự trường Đại học Kiến tr&uacute;c th&agrave;nh phố Hồ Ch&iacute; Minh v&agrave; được &ocirc;ng L&ecirc; H&ugrave;ng Mạnh - Chủ tịch Hội đồng th&agrave;nh vi&ecirc;n ki&ecirc;m Tổng gi&aacute;m đốc C&ocirc;ng ty X&acirc;y dựng - Kinh doanh Nh&agrave; Gia H&ograve;a (TP. Hồ Ch&iacute; Minh) l&agrave; chủ sở hữu d&agrave;nh tặng cho th&agrave;nh phố Huế.&nbsp;Tượng m&ocirc; tả Nhạc sỹ họ Trịnh c&uacute;i xuống như đang nh&igrave;n v&agrave;o trang s&aacute;ch, như đang nh&igrave;n v&agrave;o ch&iacute;nh m&igrave;nh. V&agrave; kh&ocirc;ng thể thiếu &ldquo;người bạn&rdquo; đồng h&agrave;nh c&ugrave;ng &ocirc;ng l&agrave; c&acirc;y đ&agrave;n ghi-ta.</p>

<p style="text-align:center"><img alt="" src="https://www.huefestival.com/upload/image/festivalhue/FES-2024/tuong-trinhcongson-4.jpg" /></p>

<p>Thời gian qua, TP. Huế đ&atilde; nỗ lực chỉnh trang c&ocirc;ng vi&ecirc;n Trịnh C&ocirc;ng Sơn, g&oacute;p phần t&ocirc;n tạo cảnh quan chung của đ&ocirc; thị Huế v&agrave; kh&ocirc;ng gian bờ s&ocirc;ng Hương tương xứng với vị thế, &yacute; nghĩa khi đặt tượng Trịnh C&ocirc;ng Sơn.</p>

<p style="text-align:center"><img alt="" src="https://www.huefestival.com/upload/image/festivalhue/FES-2024/tuong-trinhcongson-5.jpg" /></p>

<p>Nơi đặt tượng cố nhạc sỹ Trịnh C&ocirc;ng Sơn cũng sẽ l&agrave; điểm dừng ch&acirc;n để những người mến mộ t&agrave;i năng cố nhạc sĩ c&oacute; dịp hiểu th&ecirc;m về cuộc đời v&agrave; sự nghiệp của &ocirc;ng, nơi &ocirc;ng đ&atilde; s&aacute;ng t&aacute;c những ca kh&uacute;c đầu tay. Trong tương lai, tin tưởng rằng c&ocirc;ng vi&ecirc;n Trịnh C&ocirc;ng Sơn sẽ l&agrave; một điểm đến hấp dẫn cho c&ocirc;ng ch&uacute;ng - những người y&ecirc;u mến nhạc sỹ Trịnh C&ocirc;ng Sơn, l&agrave; nơi để những người y&ecirc;u nhạc Trịnh giao lưu &acirc;m nhạc, gặp gỡ.</p>

<p style="text-align:center"><img alt="" src="https://www.huefestival.com/upload/image/festivalhue/FES-2024/tuong-trinhcongson-3.jpg" /></p>
', 0, NULL, N'khanh-thanh-tuong-nghe-thuat-co-nhac-sy-trinh-cong-son-ben-bo-song-huong-02042024151550', CAST(N'2024-02-29T00:00:00.000' AS DateTime), NULL, N'', N'', N'', N'Tiếng việt (Việt Nam)', 0, N'', 1, N'94f2b4ce-4e63-40e5-bab6-02c662db6978', N'', CAST(N'2024-03-20T16:43:42.937' AS DateTime), CAST(N'2024-04-02T15:15:55.617' AS DateTime), 2, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TB_BaiViet] ([ID], [TieuDe], [AnhDaiDien], [Thumbnail], [MoTaAnhDaiDien], [TomTat], [NoiDung], [TieuDiem], [ThuTuHienThi], [URLBaiViet], [NgayCongBo], [HetHanCongBo], [NguonTin], [TacGia], [TacQuyen], [NgonNgu], [LuotXem], [TuKhoa], [TrangThai], [ChuyenMucID], [ChuyenMucKhacID], [CreatedOnDate], [LastModifiedOnDate], [CreatedByUserID], [LastModifiedByUserID], [DienThoai], [Email], [DiaChi], [Website], [GioMoCua], [GioDongCua], [ToaDoX], [ToaDoY]) VALUES (N'29fcb3d4-01b8-470a-a18c-a7bada201bf1', N'LỄ KHÁNH THÀNH TƯỢNG NGHỆ THUẬT TRỊNH CÔNG SƠN VÀ CHƯƠNG TRÌNH BIỂU DIỄN NHẠC TRỊNH CÔNG SƠN', N'/Upload\BaiViet\2024\2024_02_28Trinh1_1712045804.jpg', N'https://www.huefestival.com/upload/image/festivalhue/FES-2024/trinhcongson.jpg', N'', N'Nhạc sĩ Trịnh Công Sơn (1939-2001) đã để lại một gia tài âm nhạc đồ sộ với hơn 600 ca khúc, trong đó, có hơn 200 bài hát phổ biến. Ông còn được xem là một nhà thơ, một họa sĩ, một diễn viên và một ca sĩ. Ông từng là hội viên Hội Âm nhạc thành phố Hồ Chí Minh, hội viên Hội Nhạc sĩ Việt Nam, nguyên Phó Tổng Biên tập phụ san Thế Giới Âm Nhạc (Hội Nhạc sĩ Việt Nam).', N'<p style="text-align:center"><a href="https://www.huefestival.com/upload/image/festivalhue/FES-2024/trinhcongson.jpg"><img src="https://www.huefestival.com/upload/image/festivalhue/FES-2024/trinhcongson.jpg" /></a></p>

<p>Nhạc sĩ Trịnh C&ocirc;ng Sơn (1939-2001) đ&atilde; để lại một gia t&agrave;i &acirc;m nhạc đồ sộ với hơn 600 ca kh&uacute;c, trong đ&oacute;, c&oacute; hơn 200 b&agrave;i h&aacute;t phổ biến. &Ocirc;ng c&ograve;n được xem l&agrave; một nh&agrave; thơ, một họa sĩ, một diễn vi&ecirc;n v&agrave; một ca sĩ. &Ocirc;ng từng l&agrave; hội vi&ecirc;n Hội &Acirc;m nhạc th&agrave;nh phố Hồ Ch&iacute; Minh, hội vi&ecirc;n Hội Nhạc sĩ Việt Nam, nguy&ecirc;n Ph&oacute; Tổng Bi&ecirc;n tập phụ san Thế Giới &Acirc;m Nhạc (Hội Nhạc sĩ Việt Nam).</p>

<p>;</p>

<p>&nbsp;</p>

<p>Lễ kh&aacute;nh th&agrave;nh tượng nghệ thuật Trịnh C&ocirc;ng Sơn v&agrave; chương tr&igrave;nh biểu diễn &acirc;m nhạc Trịnh C&ocirc;ng Sơn sẽ được tổ chức v&agrave;o ng&agrave;y 28/02/2024 tại c&ocirc;ng vi&ecirc;n đường Trịnh C&ocirc;ng Sơn, phường Gia Hội, th&agrave;nh phố Huế. Cụ thể:</p>

<p><strong>- Lễ kh&aacute;nh th&agrave;nh tượng nghệ thuật Trịnh C&ocirc;ng Sơn: v&agrave;o l&uacute;c 16 giờ 30.</strong></p>

<p><strong>- Chương tr&igrave;nh biểu diễn nhạc Trịnh C&ocirc;ng Sơn: v&agrave;o l&uacute;c 17 giờ 30.</strong></p>

<p>Tượng nghệ thuật cố nhạc sĩ Trịnh C&ocirc;ng Sơn l&agrave; t&aacute;c phẩm đi&ecirc;u khắc nghệ thuật của cố đi&ecirc;u khắc gia Trương Đ&igrave;nh Quế do &ocirc;ng L&ecirc; H&ugrave;ng Mạnh, Chủ tịch Hội đồng th&agrave;nh vi&ecirc;n ki&ecirc;m Tổng gi&aacute;m đốc c&ocirc;ng ty TNHH X&acirc;y dựng - Kinh doanh nh&agrave; Gia H&ograve;a (Quận 1, Th&agrave;nh phố Hồ Ch&iacute; Minh) t&agrave;i trợ thực hiện v&agrave; tặng th&agrave;nh phố Huế. Tượng được đ&uacute;c bằng đồng, c&oacute; k&iacute;ch thước: cao 1,7m x rộng 1,6m x d&agrave;i 2,3m, được Kiến tr&uacute;c sư Hồ Viết Vinh v&agrave; nh&oacute;m cộng sự phối hợp với Trung t&acirc;m C&ocirc;ng vi&ecirc;n c&acirc;y xanh th&agrave;nh phố Huế thiết kế, lắp đặt, kết hợp h&agrave;i h&ograve;a với cảnh quan c&ocirc;ng vi&ecirc;n đường Trịnh C&ocirc;ng Sơn, phường Gia Hội, th&agrave;nh phố Huế.</p>

<p>Chương tr&igrave;nh biểu diễn &acirc;m nhạc Trịnh C&ocirc;ng Sơn được UBND th&agrave;nh phố Huế phối hợp với gia đ&igrave;nh cố nhạc sĩ Trịnh C&ocirc;ng Sơn tổ chức, sẽ l&agrave; nơi hội tụ của c&aacute;c ca sĩ đến từ th&agrave;nh phố Hồ Ch&iacute; Minh, th&agrave;nh phố H&agrave; Nội v&agrave; th&agrave;nh phố Huế: ca sĩ&nbsp;<strong>Đức Tuấn</strong>, ca sĩ&nbsp;<strong>Giang Trang</strong>, ca sĩ&nbsp;<strong>Tấn Sơn</strong>, ca sĩ&nbsp;<strong>L&atilde; Anh Thư</strong>,&nbsp;<strong>Đội K&egrave;n Huế</strong>,&hellip; C&aacute;c ca kh&uacute;c của cố nhạc sĩ Trịnh C&ocirc;ng Sơn sẽ gợi nhớ về những th&aacute;ng năm sinh sống v&agrave; s&aacute;ng t&aacute;c nghệ thuật của nhạc sĩ Trịnh C&ocirc;ng Sơn.</p>

<p>Lễ kh&aacute;nh th&agrave;nh tượng nghệ thuật Trịnh C&ocirc;ng Sơn l&agrave; hoạt động được UBND th&agrave;nh phố Huế tổ chức nhằm ghi nhận những đ&oacute;ng g&oacute;p của cố nhạc sĩ Trịnh C&ocirc;ng Sơn d&agrave;nh cho nền T&acirc;n nhạc Việt Nam n&oacute;i chung v&agrave; cho Huế n&oacute;i ri&ecirc;ng; g&oacute;p phần t&ocirc;n tạo cảnh quan chung của cố đ&ocirc; Huế v&agrave; kh&ocirc;ng gian bờ s&ocirc;ng Hương - những h&igrave;nh ảnh kh&ocirc;ng thể thiếu trong &acirc;m nhạc Trịnh C&ocirc;ng Sơn. C&ugrave;ng với chương tr&igrave;nh biểu diễn nhạc Trịnh C&ocirc;ng Sơn, đ&acirc;y l&agrave; một trong những hoạt động c&oacute; &yacute; nghĩa v&agrave; được tổ chức đ&uacute;ng v&agrave;o dịp 85 năm ng&agrave;y sinh của cố nhạc sĩ Trịnh C&ocirc;ng Sơn (28/02/1939 - 28/02/2024).</p>
', 0, NULL, N'le-khanh-thanh-tuong-nghe-thuat-trinh-cong-son-va-chuong-trinh-bieu-dien-nhac-trinh-cong-son-02042024151644', CAST(N'2024-02-28T00:00:00.000' AS DateTime), NULL, N'', N'', N'', N'Tiếng việt (Việt Nam)', 0, N'', 1, N'94f2b4ce-4e63-40e5-bab6-02c662db6978', N'', CAST(N'2024-03-20T16:45:11.400' AS DateTime), CAST(N'2024-04-02T15:16:49.453' AS DateTime), 2, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TB_BaiViet] ([ID], [TieuDe], [AnhDaiDien], [Thumbnail], [MoTaAnhDaiDien], [TomTat], [NoiDung], [TieuDiem], [ThuTuHienThi], [URLBaiViet], [NgayCongBo], [HetHanCongBo], [NguonTin], [TacGia], [TacQuyen], [NgonNgu], [LuotXem], [TuKhoa], [TrangThai], [ChuyenMucID], [ChuyenMucKhacID], [CreatedOnDate], [LastModifiedOnDate], [CreatedByUserID], [LastModifiedByUserID], [DienThoai], [Email], [DiaChi], [Website], [GioMoCua], [GioDongCua], [ToaDoX], [ToaDoY]) VALUES (N'1990180f-5f83-41b3-a76f-a8782aa48637', N'Quỹ Giáo dục Huế Hiếu Học thông báo chỉ tiêu và thời gian tiếp nhận hồ sơ cấp học bổng', N'/Upload\BaiViet\2024\Khamphahue_QuyGiaoDucHueHieuHocnamHoc2023-2024_1713321440.jpg', N'/Upload\BaiViet\2024\Khamphahue_QuyGiaoDucHueHieuHocnamHoc2023-2024_1713321440.jpg', N'Quỹ Giáo dục Huế Hiếu Học thông báo chỉ tiêu và thời gian tiếp nhận hồ sơ cấp học bổng', N'Thực hiện công tác khuyến học thường niên, sau thời gian tiếp nhận hồ sơ của các em học sinh, sinh viên, nhằm hỗ trợ thêm cho đối tượng sinh viên là người Huế có hoàn cảnh khó khăn biết vươn lên trong học tập trong năm học 2023 - 2024, Quỹ Giáo dục Huế Hiếu Học thông báo dự kiến chỉ tiêu trao học bổng trong năm học 2023 - 2024 dành cho đối tượng sinh viên', N'<h4>Cụ thể như sau:</h4>

<p>- To&agrave;n kh&oacute;a : 35 em x 10.000.000 đồng/suất = 350.000.000 đồng.</p>

<p>- B&igrave;nh thường: &nbsp;114 em x 4.000.000 đồng/suất= 452.000.000 đồng.</p>

<p>MẪU đề nghị cấp học bổng được c&ocirc;ng khai tr&ecirc;n c&aacute;c nh&oacute;m Facebook:&nbsp;<a href="https://www.facebook.com/groups/hocbonghuehieuhoc">https://www.facebook.com/groups/hocbonghuehieuhoc</a>&nbsp;-&nbsp;<a href="https://www.facebook.com/groups/huehieuhoc">https://www.facebook.com/groups/huehieuhoc</a>.</p>

<p>Hạn cuối nhận hồ sơ qua email l&agrave; 30/09/2023.</p>

<p>Quỹ Gi&aacute;o dục Huế Hiếu Học ch&iacute;nh thức th&agrave;nh lập v&agrave;o ng&agrave;y 13/10/2006, hoạt động nhằm mục đ&iacute;ch kế tiếp truyền thống hiếu học, uống nước nhớ nguồn, l&aacute; l&agrave;nh đ&ugrave;m l&aacute; r&aacute;ch của mảnh đất Thừa Thi&ecirc;n Huế, kết nối cộng đồng những người con nặng t&igrave;nh với qu&ecirc; hương v&agrave; những người y&ecirc;u Huế, đang sinh sống tại Việt Nam v&agrave; nước ngo&agrave;i. Trong năm học 2022 - 2023, Quỹ Gi&aacute;o dục Huế Hiếu Học đ&atilde; cấp học bổng với số tiền 881.000.000 đồng đến c&aacute;c em học sinh, sinh vi&ecirc;n l&agrave; người Huế c&oacute; ho&agrave;n cảnh kh&oacute; khăn biết vươn l&ecirc;n trong học tập.&nbsp;</p>

<p>Học bổng Huế Hiếu Học năm học 2023 - 2024 dự kiến sẽ được trao v&agrave;o ng&agrave;y 11/11 tại TP. HCM v&agrave; ng&agrave;y 19/11/2023 tại Huế.</p>
', 0, NULL, N'quy-giao-duc-hue-hieu-hoc-thong-bao-chi-tieu-va-thoi-gian-tiep-nhan-ho-so-cap-hoc-bong-17042024093719', CAST(N'2024-04-17T00:00:00.000' AS DateTime), NULL, N'', N'', N'', N'Tiếng việt (Việt Nam)', 0, N'', 1, N'bfecce3d-4dbb-4891-b759-b0a07bcdb547', N'', CAST(N'2024-04-17T09:37:21.217' AS DateTime), NULL, 2, NULL, N'', N'', N'', N'', NULL, NULL, 0, 0)
INSERT [dbo].[TB_BaiViet] ([ID], [TieuDe], [AnhDaiDien], [Thumbnail], [MoTaAnhDaiDien], [TomTat], [NoiDung], [TieuDiem], [ThuTuHienThi], [URLBaiViet], [NgayCongBo], [HetHanCongBo], [NguonTin], [TacGia], [TacQuyen], [NgonNgu], [LuotXem], [TuKhoa], [TrangThai], [ChuyenMucID], [ChuyenMucKhacID], [CreatedOnDate], [LastModifiedOnDate], [CreatedByUserID], [LastModifiedByUserID], [DienThoai], [Email], [DiaChi], [Website], [GioMoCua], [GioDongCua], [ToaDoX], [ToaDoY]) VALUES (N'c8deb29c-4c18-4c02-9c1f-a8b94dae2bb7', N'Aenean auctor gravida sem.', N'/Upload\BaiViet\2024\HueCIT-ThietKeDoHoa_1712046675.jpg', N'https://www.huefestival.com/templates/default/images/logo_huefestival.png', N'Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.', N'Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede. Morbi porttitor lorem id ligula.', N'<p>Nulla mollis molestie lorem. Quisque ut erat.</p>
', 0, NULL, N'aenean-auctor-gravida-sem-16042024172320', CAST(N'2023-12-21T00:00:00.000' AS DateTime), CAST(N'2024-07-11T00:00:00.000' AS DateTime), N'', N'', N'', N'Tiếng việt (Việt Nam)', 0, N'', 1, N'b51f7635-9fb5-4494-95a3-10b57d0b5cf4', N'', CAST(N'2024-04-02T15:31:20.690' AS DateTime), CAST(N'2024-04-16T17:23:19.987' AS DateTime), 2, 2, N'', N'', N'', N'', NULL, NULL, 0, 0)
INSERT [dbo].[TB_BaiViet] ([ID], [TieuDe], [AnhDaiDien], [Thumbnail], [MoTaAnhDaiDien], [TomTat], [NoiDung], [TieuDiem], [ThuTuHienThi], [URLBaiViet], [NgayCongBo], [HetHanCongBo], [NguonTin], [TacGia], [TacQuyen], [NgonNgu], [LuotXem], [TuKhoa], [TrangThai], [ChuyenMucID], [ChuyenMucKhacID], [CreatedOnDate], [LastModifiedOnDate], [CreatedByUserID], [LastModifiedByUserID], [DienThoai], [Email], [DiaChi], [Website], [GioMoCua], [GioDongCua], [ToaDoX], [ToaDoY]) VALUES (N'ba2cc35d-8c90-4eea-abb8-a93b0b1c1181', N'ĐÀO TẠO HueCIT chiêu sinh khóa đào tạo “CULTURE TECHNOLOGY THÔNG QUA KỸ THUẬT PHOTOGRAMMETRY VÀ 360VR”', N'/Upload\BaiViet\2024\poster-chieu-sinh-PHOTOGRAMMETRY-va- 360VR_1712047961.jpg', N'https://huecit.vn/Portals/0/Medias/Nam2024/T3/avata-Bao-ve-do-an-Java-K6-HueCIT.2.jpg', N'ĐÀO TẠO HueCIT chiêu sinh khóa đào tạo “CULTURE TECHNOLOGY THÔNG QUA KỸ THUẬT PHOTOGRAMMETRY VÀ 360VR”', N'Khóa đào tạo “CULTURE TECHNOLOGY THÔNG QUA KỸ THUẬT PHOTOGRAMMETRY VÀ 360VR” Với sự hợp tác Công ty PoSTMEDIA, công ty Hàn Quốc được thành lập vào năm 1993 và hiện dẫn đầu về ngành Công nghệ Văn hóa, hiện đang đặt trụ sở tại Gangnam, Seoul, Hàn Quốc.', N'<p>aa&acirc;</p>
', 0, NULL, N'dao-tao-huecit-chieu-sinh-khoa-dao-tao-“culture-technology-thong-qua-ky-thuat-photogrammetry-va-360vr”-17042024143911', CAST(N'2024-04-01T00:00:00.000' AS DateTime), NULL, N'', N'', N'', N'Tiếng việt (Việt Nam)', 0, N'', 1, N'57214e56-18b0-456a-9b36-d263cb332d75', N'', CAST(N'2024-04-01T14:25:14.970' AS DateTime), CAST(N'2024-04-17T14:39:53.037' AS DateTime), 2, 2, N'', N'', N'', N'', NULL, NULL, 0, 0)
INSERT [dbo].[TB_BaiViet] ([ID], [TieuDe], [AnhDaiDien], [Thumbnail], [MoTaAnhDaiDien], [TomTat], [NoiDung], [TieuDiem], [ThuTuHienThi], [URLBaiViet], [NgayCongBo], [HetHanCongBo], [NguonTin], [TacGia], [TacQuyen], [NgonNgu], [LuotXem], [TuKhoa], [TrangThai], [ChuyenMucID], [ChuyenMucKhacID], [CreatedOnDate], [LastModifiedOnDate], [CreatedByUserID], [LastModifiedByUserID], [DienThoai], [Email], [DiaChi], [Website], [GioMoCua], [GioDongCua], [ToaDoX], [ToaDoY]) VALUES (N'933c761c-dd59-4bdd-8895-b0ab16b5c2ae', N'Aliquam erat volutpat. In congue.', N'http://dummyimage.com/159x100.png/ff4444/ffffff', N'https://www.huefestival.com/templates/default/images/logo_huefestival.png', N'Integer a nibh. In quis justo. Maecenas rhoncus aliquam lacus.', N'Morbi non quam nec dui luctus rutrum. Nulla tellus. In sagittis dui vel nisl. Duis ac nibh.', N'<p>Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est. Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.</p>

<p style="text-align:center"><img alt="" src="/Upload/BaiViet/2024/3(91)_1712281625.jpg" style="height:912px; width:1276px" /></p>
', 0, NULL, N'aliquam-erat-volutpat-in-congue-05042024084900', CAST(N'2024-01-24T00:00:00.000' AS DateTime), CAST(N'2024-09-30T00:00:00.000' AS DateTime), N'', N'', N'', N'Tiếng việt (Việt Nam)', 0, N'', 1, N'f120bb65-2b4e-48af-9a96-497058ebfb95', N'', CAST(N'2024-04-01T14:18:34.143' AS DateTime), CAST(N'2024-04-05T08:49:12.113' AS DateTime), 2, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TB_BaiViet] ([ID], [TieuDe], [AnhDaiDien], [Thumbnail], [MoTaAnhDaiDien], [TomTat], [NoiDung], [TieuDiem], [ThuTuHienThi], [URLBaiViet], [NgayCongBo], [HetHanCongBo], [NguonTin], [TacGia], [TacQuyen], [NgonNgu], [LuotXem], [TuKhoa], [TrangThai], [ChuyenMucID], [ChuyenMucKhacID], [CreatedOnDate], [LastModifiedOnDate], [CreatedByUserID], [LastModifiedByUserID], [DienThoai], [Email], [DiaChi], [Website], [GioMoCua], [GioDongCua], [ToaDoX], [ToaDoY]) VALUES (N'a817d02c-f9f7-4eb9-b358-b2a90f280fc1', N'HỆ THỐNG VÉ ĐIỆN TỬ THAM QUAN DI TÍCH HUẾ', N'/Upload\BaiViet\2024\HueCIT_He-Thong-ve-Dien-Tu_Chuyen-Doi-So_2023_1719824044.jpg', N'/Upload\BaiViet\2024\HueCIT_He-Thong-ve-Dien-Tu_Chuyen-Doi-So_2023_1719824044.jpg', N'', N'', N'<table style="width: 100%;">
 <tbody>
  <tr>
   <td style="text-align: justify;" class="col-md-6 col-sm-6"><strong><span style="color: #0070c0;">GIỚI THIỆU</span></strong><br>
   <br>
   Thiết thực thực hiện Đề án Chuyển đổi số Trung tâm Bảo tồn Di tích Cố đô Huế giai đoạn 2022 – 2025, từ tháng 6/2022, Trung tâm Công nghệ thông tin tỉnh Thừa Thiên Huế (HueCIT) đã triển khai tổ chức nghiên cứu, tư vấn, xây dựng Hệ thống vé điện tử cho Trung tâm Bảo tồn Di tích Cố đô Huế. Đây là một trong những dự án trọng điểm thuộc Đề án chuyển đổi số và là dự án đảm bảo cho hạ tầng hệ thống thông tin, dữ liệu và đa dịch vụ tích hợp trên nền tảng số của Trung tâm Bảo tồn Di tích Cố đô Huế.<br>
   <br>
   Địa chỉ truy cập Hệ thống vé điện tử:&nbsp;<br>
   <span style="font-size: 18px;"><a href="https://eticket.hueworldheritage.org.vn/" target="_blank">https://eticket.hueworldheritage.org.vn/</a></span></td>
   <td class="col-md-6 col-sm-6"><img alt="Hệ thống vé điện tử, Trung tâm bảo tồn Di tích Cố đô Huế, năm dữ liệu quốc gia, số hóa di tích, chuyển đổi số ngành du lịch, du lich hue" src="/Portals/3/Sanpham/He-Thong-Ve-Dien-Tu/HueCIT_He-Thong-ve-Dien-Tu_Chuyen-Doi-So_2023.jpg" class="img-responsive" style="margin: auto;">&nbsp;</td>
  </tr>
  <tr>
   <td class="col-md-6 col-sm-6">&nbsp;<img alt="Hệ thống vé điện tử, Trung tâm bảo tồn Di tích Cố đô Huế, năm dữ liệu quốc gia, số hóa di tích, chuyển đổi số ngành du lịch, du lich hue" src="/Portals/3/Sanpham/He-Thong-Ve-Dien-Tu/AvatarTinBai_He-Thong-Ve-Dien-Tu-Tham-Quan-Di-Tich-Hue.png" class="img-responsive" style="margin: auto;"></td>
   <td style="text-align: justify;" class="col-md-6 col-sm-6"><strong><span style="color: #0070c0;">&nbsp;CÁC CHỨC NĂNG CHÍNH</span></strong><br>
   <br>
   <strong>1. Mua vé thuận tiện mọi lúc mọi nơi</strong><br>
   Hệ thống hỗ trợ khách hàng xem được các thông tin tổng quan về các điểm tham quan/di sản/di tích/sự kiện/dịch vụ; các số liệu tham quan đối với các điểm di tích và đặt mua vé thuận tiện, mọi lúc mọi nơi chỉ với thiết bị di động/máy vi tính...<br>
   <br>
   <strong>2. Cho phép thanh toán trực tuyến</strong><br>
   Hệ thống cho phép mua vé trực tiếp, mua vé online một cách thuận lợi, dễ dàng chỉ với hình thức đăng ký tài khoản; trên nhiều hình thức mua vé (mua vé cá nhân, mua vé tập thể); Đặt vé (giữ thông tin vé trên hệ thống 3 ngày); In/nhận biên lai thu tiền phí, lệ phí...<br>
   <br>
   <strong>3. Cho phép vào cổng bằng mã QR</strong><br>
   Với mỗi giao dịch mua vé từ Hệ thống sẽ phát sinh một mã QR code riêng, cho phép vào cổng bằng mã QR tương ứng, dễ dàng kiểm soát và quản lý thông tin trên hệ thống.<br>
   <br>
   <strong>4. Xuất biên lai điện tử</strong><br>
   Cho phép xuất biên lai điện tử cho các giao dịch từ Hệ thống.<br>
   <br>
   <strong>5. Thống kê, báo cáo trực quan</strong><br>
   Chức năng thống kê, báo cáo trực quan hỗ trợ người lãnh đạo, quản lý dễ dàng xem thống kê tại mỗi địa điểm hoặc tất cả các điểm;&nbsp;Số lượng vé đã bán/người bán/điểm bán/thời gian; Số lượng vé vào cửa/loại vé (người lớn, trẻ em, khách nước ngoài, đối tượng đặc biệt); Doanh thu; Số vé hủy... Đồng thời hỗ trợ nhân viên kiểm soát vé dễ dàng trong các thao tác thực hiện và báo cáo liên quan.</td>
  </tr>
  <tr>
   <td style="text-align: justify;" class="col-md-6 col-sm-6">Đáng chú ý, ngoài chức năng chính là bán vé tham quan, phần mềm này giới thiệu theo hình thức giản lược các địa điểm du lịch thuộc Quần thể Di tích Cố đô Huế do Trung tâm Bảo tồn Di tích Cố đô Huế quản lý bằng các bài viết song ngữ Việt-Anh.<br>
   <br>
   Hệ thống hình ảnh di sản được chọn lọc với tính thẩm mỹ cao cũng là một điểm nhấn của ứng dụng công nghệ này.&nbsp;</td>
   <td class="col-md-6 col-sm-6">&nbsp;<img alt="" src="/Portals/3/Sanpham/He-Thong-Ve-Dien-Tu/HueCIT_He-Thong-ve-Dien-Tu_Chuyen-Doi-So_2023-1.jpg" class="img-responsive" style="margin: auto;"></td>
  </tr>
  <tr>
   <td style="text-align: center;" class="col-md-6 col-sm-6">&nbsp;<img alt="Hệ thống vé điện tử, Trung tâm bảo tồn Di tích Cố đô Huế, năm dữ liệu quốc gia, số hóa di tích, chuyển đổi số ngành du lịch, du lich hue" src="/Portals/3/TinTuc/2022/ChuyenDoiSo/HeThongVeDienTu/HueCIT_Khai-truong-he-thong-ve-dien-tu-tai-Quan-the-di-tich-co-do-Hue.jpg" class="img-responsive" style="margin: auto;"><br>
   <em><span style="color: #0070c0;">Hệ thống vé điện tử đã chính thức đi vào vận hành tại Khu di sản Huế từ cuối tháng 12/2022</span></em></td>
   <td style="text-align: justify;" class="col-md-6 col-sm-6"><span style="font-weight: bold; color: #0070c0;">QUÁ TRÌNH TRIỂN KHAI</span><br>
   <br>
   <span style="color: #3f3f3f;">Từ đầu năm 2022, HueCIT đã tiến hành xây dựng và nâng cấp hệ thống vé điện tử của Trung tâm Bảo tồn Di tích Cố đô Huế trên nền tảng web (hướng đến tích hợp trên nền tảng app mobile) phục vụ công tác quản lý điều hành các hoạt động bán vé của Trung tâm, triển khai tại tất cả các địa điểm bán vé thuộc Quần thể Di tích Huế và nhằm phục vụ cho du khách, các khách sạn, công ty lữ hành và các du khách chủ động mua vé trực tuyến để tham quan di tích Huế.<br>
   <br>
   Từ đầu tháng 11/2022, Trung tâm đã tiến hành thử nghiệm tại 4 địa điểm: Đại Nội, Lăng Tự Đức, Lăng Minh Mạng, Lăng Khải Định cho thấy các kết quả rất tích cực trong việc triển khai hệ thống vé điện tử (trước đây sử dụng hệ thống thẻ từ để vào các cổng kiểm soát có nhiều bất cập).&nbsp;<br>
   <br>
   Cho đến nay, 100% vé tham quan tại 4 điểm di tích trên đã được thực hiện bán vé điện tử trên hệ thống phần mềm và quét mã QR khi vào cổng kiểm soát.</span></td>
  </tr>
  <tr>
   <td style="text-align: justify;" class="col-md-6 col-sm-6"><span style="color: #0070c0;"><strong>&nbsp;HIỆU QUẢ MANG LẠI</strong></span><br>
   <br>
   <a href="https://eticket.hueworldheritage.org.vn/" target="_blank">Hệ thống vé điện tử</a> giúp cho du khách, người dân tăng được trải nghiệm khách hàng một cách thú vị, chuyển đổi hình thức mua vé một cách thuận tiện và&nbsp; thanh toán không dùng tiền mặt. Bên cạnh đó, việc đưa hệ thống vé điện tử vào hoạt động làm cải tiến quy trình nghiệp vụ cải thiện tốc độ và chất lượng phục vụ du khách trong nghiệp vụ bán vé truyền thống.&nbsp;<br>
   <br>
   Qua đó, việc phân tích, tổng hợp dữ liệu từ hệ thống vé điện tử sẽ là cơ sở quan trọng cho việc dự báo, tham mưu ra quyết định để tăng hiệu quả cho công tác quản lý, điều hành của Trung tâm Bảo tồn Di tích Cố đô Huế, có dữ liệu dự báo cho tình hình khách tham quan tại các điểm di tích và sự hài lòng của du khách khi trải nghiệm các dịch vụ do Trung tâm cung cấp...<br>
   <br>
   <a href="https://eticket.hueworldheritage.org.vn/" target="_blank">Hệ thống vé điện tử</a> và các ứng dụng tương hợp của Trung tâm Bảo tồn Di tích Cố đô Huế (App Di tích Huế, Dịch vụ trải nghiệm thực tế ảo XR...) đã và đang làm tăng khả năng quảng bá và mở rộng, gia tăng các dịch vụ số cho du khách nhằm tăng lượng khách tham quan và phát triển doanh thu một cách bền vững, đáp ứng yêu cầu đổi mới phù hợp với xu hướng của cuộc cách mạng công nghiệp 4.0, góp phần thúc đẩy công tác chuyển đổi số ngành du lịch trên địa bàn tỉnh Thừa Thiên Huế.</td>
   <td style="text-align: center;" class="col-md-6 col-sm-6"><img alt="Hệ thống vé điện tử, Trung tâm bảo tồn Di tích Cố đô Huế, năm dữ liệu quốc gia, số hóa di tích, chuyển đổi số ngành du lịch, du lich hue" src="/Portals/3/TinTuc/2022/ChuyenDoiSo/HeThongVeDienTu/HueCIT_Khai-truong-he-thong-ve-dien-tu-tai-Quan-the-di-tich-co-do-Hue-5.jpg" class="img-responsive" style="margin: auto;"><br>
   <span style="color: #0070c0;"><em>Chuyên nghiệp hóa và minh bạch hóa quy trình quản lý tại các điểm bán vé tham quan, nâng cao trải nghiệm của du khách</em></span></td>
  </tr>
  <tr>
   <td style="text-align: center;" class="col-md-6 col-sm-6">&nbsp;<img alt="Hệ thống vé điện tử, Trung tâm bảo tồn Di tích Cố đô Huế, năm dữ liệu quốc gia, số hóa di tích, chuyển đổi số ngành du lịch, du lich hue" src="/Portals/3/Sanpham/He-Thong-Ve-Dien-Tu/HueCIT_Trien-khai-He-Thong-ve-Dien-Tu-Di-Tich-Hue.jpg" class="img-responsive" style="margin: auto;"><br>
   <em><span style="color: #0070c0;">Cán bộ kỹ thuật HueCIT trực tiếp thử nghiệm Hệ thống vé điện tử thay thế hệ thống thẻ từ tại các điểm lăng thuộc Quần thể di tích Cố đô Huế trước khi đưa vào vận hành sử dụng</span></em></td>
   <td style="text-align: justify;" class="col-md-6 col-sm-6"><strong><span style="color: #0070c0;">&nbsp;KHẢ NĂNG ỨNG DỤNG</span></strong><br>
   <br>
   Số hóa vé tham qua là một phần của du lịch thông minh. Với những tính năng mới mẻ, ưu việt làm thay đổi mô hình quản lý vận hành, Hệ thống vé điện tử mở ra hướng đi mới cho các di tích lịch sử văn hóa, điểm tham quan nhằm mang lại sự thuận tiện cho các du khách, hướng tới sự minh bạch, khoa học, văn minh, thân thiện với môi trường.<br>
   <br>
   <strong>Tin bài truyền thông liên quan:</strong><br>
   <br>
   &gt; <a href="https://baochinhphu.vn/khai-truong-he-thong-ve-dien-tu-tai-quan-the-di-tich-co-do-hue-102221220095046297.htm" target="_blank">[BÁO ĐIỆN TỬ CHÍNH PHỦ] -&nbsp;Khai trương Hệ thống vé điện tử tại Quần thể Di tích Cố đô Huế</a><br>
   <br>
   &gt; <a href="https://dulich.laodong.vn/tin-tuc/he-thong-ve-dien-tu-trai-nghiem-thuc-te-ao-o-di-tich-hue-1129202.html" target="_blank">[BÁO LAO ĐỘNG] -&nbsp;Hệ thống vé điện tử, trải nghiệm thực tế ảo ở di tích Huế</a><br>
   <br>
   &gt; <a href="https://mekongasean.vn/khai-truong-he-thong-ve-dien-tu-tai-quan-the-di-tich-co-do-hue-post15610.html" target="_blank">[ASEAN TIMES] -&nbsp;Khai trương hệ thống vé điện tử tại Quần thể Di tích Cố đô Huế</a><br>
   <br>
   &gt;&nbsp;<a href="https://baothuathienhue.vn/khai-truong-he-thong-ve-dien-tu-va-dich-vu-trai-nghiem-thuc-te-ao-xr-a121702.html" target="_blank">[BÁO THỪA THIÊN HUẾ] - Khai trương hệ thống vé điện tử và dịch vụ trải nghiệm thực tế ảo XR</a><br>
   <br>
   &gt;&nbsp;<a href="https://khamphahue.com.vn/Hue-24h/Chi-tiet/tid/Khai-truong-He-thong-ve-dien-tu-tai-Quan-the-Di-tich-Co-do-Hue.html/pid/14698/cid/22" target="_blank">[KHÁM PHÁ HUẾ] - Khai trương Hệ thống vé điện tử tại Quần thể Di tích Cố đô Huế</a><br>
   <br>
   &gt;&nbsp;<a href="https://vov.vn/du-lich/khai-truong-he-thong-ve-dien-tu-va-dich-vu-trai-nghiem-di-tich-ao-tai-co-do-hue-post991667.vov" target="_blank">[VOV] - Khai trương hệ thống vé điện tử và dịch vụ trải nghiệm di tích ảo tại Cố đô Huế</a><br>
   <br>
   &gt;&nbsp;<a href="https://danviet.vn/khai-truong-he-thong-ve-dien-tu-va-dich-vu-trai-nghiem-thuc-te-ao-tai-quan-the-di-tich-hue-20221220102223385.htm" target="_blank">[DÂN VIỆT] - Huế: Khai trương hệ thống vé điện tử và dịch vụ trải nghiệm thực tế ảo</a>
   <div>&nbsp;</div>
   </td>
  </tr>
 </tbody>
</table>

<p>&nbsp;</p>', 0, NULL, N'he-thong-ve-dien-tu-tham-quan-di-tich-hue-01072024155326', CAST(N'2024-07-01T00:00:00.000' AS DateTime), CAST(N'2024-07-01T00:00:00.000' AS DateTime), N'', N'', N'', N'Tiếng việt (Việt Nam)', 0, N'', 1, N'fee4c680-5952-4b0a-ab24-5eefd52baee7', N'', CAST(N'2024-07-01T15:54:04.583' AS DateTime), NULL, 2, NULL, N'', N'', N'', N'', NULL, NULL, 0, 0)
INSERT [dbo].[TB_BaiViet] ([ID], [TieuDe], [AnhDaiDien], [Thumbnail], [MoTaAnhDaiDien], [TomTat], [NoiDung], [TieuDiem], [ThuTuHienThi], [URLBaiViet], [NgayCongBo], [HetHanCongBo], [NguonTin], [TacGia], [TacQuyen], [NgonNgu], [LuotXem], [TuKhoa], [TrangThai], [ChuyenMucID], [ChuyenMucKhacID], [CreatedOnDate], [LastModifiedOnDate], [CreatedByUserID], [LastModifiedByUserID], [DienThoai], [Email], [DiaChi], [Website], [GioMoCua], [GioDongCua], [ToaDoX], [ToaDoY]) VALUES (N'996f8350-3851-4c21-9d84-b750fe5ef325', N'HUECIT-PORTAL - TRANG THÔNG TIN ĐIỆN TỬ ĐIỀU HÀNH TÁC NGHIỆP', N'/Upload\BaiViet\2024\TrangĐHTN_1712048644.jpg', N'https://huecit.vn/Portals/0/Medias/Nam2023/T4/HueCIT_HuePortal.jpg', N'HUECIT-PORTAL - TRANG THÔNG TIN ĐIỆN TỬ ĐIỀU HÀNH TÁC NGHIỆP', N'Cổng thông tin điện tử được xây dựng, nâng cấp nhằm tạo ra một kênh thông tin tuyên truyền và định hướng dư luận chính thống nhất trên địa bàn tỉnh thông qua việc cung cấp các thông tin về lịch sử, văn hoá, các hoạt động kinh tế - xã hội của tỉnh và các hoạt động chỉ đạo điều hành của lãnh đạo; là đầu mối kết nối hoạt động cung cấp thông tin của cơ quan hành chính các cấp, hướng tới phục vụ triển khai các dịch vụ công và xây dựng mối quan hệ trực tuyến giữa Chính quyền với người dân, tổ chức và ', N'<p>aaa</p>
', 0, NULL, N'huecitportal-trang-thong-tin-dien-tu-dieu-hanh-tac-nghiep-17042024135408', CAST(N'2024-04-01T00:00:00.000' AS DateTime), NULL, N'', N'', N'', N'Tiếng việt (Việt Nam)', 0, N'', 1, N'6eee995f-d0f9-4951-8882-706cf843c0be', N'', CAST(N'2024-04-01T14:42:37.770' AS DateTime), CAST(N'2024-04-17T13:54:50.137' AS DateTime), 2, 2, N'', N'', N'', N'', NULL, NULL, 0, 0)
INSERT [dbo].[TB_BaiViet] ([ID], [TieuDe], [AnhDaiDien], [Thumbnail], [MoTaAnhDaiDien], [TomTat], [NoiDung], [TieuDiem], [ThuTuHienThi], [URLBaiViet], [NgayCongBo], [HetHanCongBo], [NguonTin], [TacGia], [TacQuyen], [NgonNgu], [LuotXem], [TuKhoa], [TrangThai], [ChuyenMucID], [ChuyenMucKhacID], [CreatedOnDate], [LastModifiedOnDate], [CreatedByUserID], [LastModifiedByUserID], [DienThoai], [Email], [DiaChi], [Website], [GioMoCua], [GioDongCua], [ToaDoX], [ToaDoY]) VALUES (N'80f2e861-ed39-42cd-a3ba-bc5d3f219c89', N'QTSC mời tham dự Hội thảo Cơ hội nghề nghiệp ngành CNTT: "Đón đầu xu hướng - Vững bước tương lai"', N'https://huecit.vn/Portals/0/Medias/Nam2024/T3/QTSC_ChuongTrinhHoiThaoCoHoiNgheNghiepCNTT%20.jpg', N'https://huecit.vn/Portals/0/Medias/Nam2024/T3/QTSC_ChuongTrinhHoiThaoCoHoiNgheNghiepCNTT%20.jpg', N'QTSC mời tham dự Hội thảo Cơ hội nghề nghiệp ngành CNTT: "Đón đầu xu hướng - Vững bước tương lai"', N'Là một trong những hoạt động nổi bật nhằm chào mừng kỷ niệm 23 năm thành lập Khu Công viên phần mềm Quang Trung (03/2001 – 03/2024), Hội thảo Cơ hội nghề nghiệp ngành CNTT: "Đón đầu xu hướng - Vững bước tương lai" sẽ được diễn ra vào ngày 28/03/2024 (thứ Năm), với sự phối hợp tổ chức của QTSC và Trung tâm Hỗ trợ và Tư vấn Chuyển đổi số TP.HCM (DXCenter).', N'<p>Khủng hoảng kinh tế to&agrave;n cầu đ&atilde; t&aacute;c động mạnh mẽ tới ng&agrave;nh c&ocirc;ng nghệ th&ocirc;ng tin. Theo số liệu đầu năm 2023 của tạp ch&iacute; kinh tế Việt Nam (www.vneconomy.vn), thị trường c&ocirc;ng nghệ đ&atilde; cắt giảm hơn 94.000 việc l&agrave;m, c&aacute;c c&ocirc;ng ty như Microsoft, Alphabet v&agrave; Amazon cũng đối mặt với việc nh&acirc;n sự bị cắt giảm đ&aacute;ng kể. Vậy trong bối cảnh kh&oacute; khăn n&agrave;y, thị trường lao động c&ocirc;ng nghệ th&ocirc;ng tin tại Việt Nam sẽ ra sao? Suy tho&aacute;i kinh tế sẽ ảnh hưởng thế n&agrave;o đến lực lượng nh&acirc;n sự ng&agrave;nh CNTT?</p>

<p>Nh&acirc;n dịp kỷ niệm 23 năm th&agrave;nh lập Khu C&ocirc;ng vi&ecirc;n phần mềm Quang Trung (QTSC), C&ocirc;ng ty TNHH một th&agrave;nh vi&ecirc;n Ph&aacute;t triển C&ocirc;ng vi&ecirc;n phần mềm Quang Trung v&agrave; Trung t&acirc;m Hỗ trợ v&agrave; Tư vấn Chuyển đổi số TP.HCM (DXCenter) tổ chức buổi chia sẻ về xu hướng ng&agrave;nh CNTT trong tương lai v&agrave; cơ hội nghề nghiệp cho c&aacute;c bạn sinh vi&ecirc;n ng&agrave;nh c&ocirc;ng nghệ với chủ đề &ldquo;Đ&oacute;n đầu xu hướng &ndash; Vững bước tương lai&rdquo;, tổ chức v&agrave;o ng&agrave;y 28/03/2024 (thứ Năm) tại hội trường t&ograve;a nh&agrave; QTSC Building 1, Khu C&ocirc;ng vi&ecirc;n phần mềm Quang Trung, phường T&acirc;n Ch&aacute;nh Hiệp, Quận 12, TP.HCM. Chương tr&igrave;nh bao gồm 4 hoạt động như sau:</p>

<p>1. Hội thảo &ldquo;Đ&oacute;n đầu xu hướng - Vững bước tương lai&rdquo;</p>

<p>2. Khu vực gian h&agrave;ng phỏng vấn &ldquo;Chinh phục Nh&agrave; tuyển dụng&rdquo;</p>

<p>3. Tham quan bảo t&agrave;ng QTSC v&agrave; c&aacute;c doanh nghiệp c&ocirc;ng nghệ nội khu</p>

<p>4. Tham gia hoạt động &ldquo;Check-in ảnh xinh &ndash; nhận ngay qu&agrave; xịn&rdquo;</p>

<p>5. Talkshow &quot;Kỹ năng phỏng vấn thử chinh phục nh&agrave; tuyển dụng&quot;</p>

<p>Với mục ti&ecirc;u tạo cơ hội v&agrave; s&acirc;n chơi nhằm kết nối doanh nghiệp c&ocirc;ng nghệ với sinh vi&ecirc;n năm cuối chuy&ecirc;n ng&agrave;nh CNTT, qua đ&oacute; gi&uacute;p sinh vi&ecirc;n nắm bắt xu hướng nghề nghiệp trong tương lai, đồng thời trang bị những kiến thức, kỹ năng cần thiết, t&aacute;c phong chuy&ecirc;n nghiệp trong c&ocirc;ng việc. Th&ocirc;ng qua chương tr&igrave;nh c&aacute;c doanh nghiệp c&ocirc;ng nghệ đang hoạt động tại QTSC c&oacute; thể tiếp cận v&agrave; tuyển dụng được nguồn nh&acirc;n sự ph&ugrave; hợp, phục vụ hoạt động sản xuất kinh doanh v&agrave; g&oacute;p phần x&acirc;y dựng đội ngũ nh&acirc;n lực chất lượng cao, linh hoạt đ&aacute;p ứng những thay đổi của thị trường.</p>

<p>QTSC tr&acirc;n trọng k&iacute;nh mời Qu&yacute; Doanh nghiệp tham gia chương tr&igrave;nh&nbsp;<strong>(ho&agrave;n to&agrave;n miễn ph&iacute;)</strong>&nbsp;với c&aacute;c nội dung sau: tham gia Khu vực gian h&agrave;ng phỏng vấn &ldquo;Chinh phục Nh&agrave; tuyển dụng&rdquo;; tạo điều kiện cho sinh vi&ecirc;n tham gia tham quan m&ocirc;i trường l&agrave;m việc thực tế tại doanh nghiệp; doanh nghiệp tham gia tr&igrave;nh b&agrave;y tại hội thảo.</p>
', 1, NULL, N'qtsc-moi-tham-du-hoi-thao-co-hoi-nghe-nghiep-nganh-cntt-"don-dau-xu-huong-vung-buoc-tuong-lai"-16042024172336', CAST(N'2024-04-05T00:00:00.000' AS DateTime), NULL, N'', N'', N'', N'Tiếng việt (Việt Nam)', 0, N'', 1, N'f1ac63bb-7eba-4041-8c70-2c70d8e64133', N'94F2B4CE-4E63-40E5-BAB6-02C662DB6978', CAST(N'2024-04-05T08:51:40.010' AS DateTime), CAST(N'2024-04-16T17:23:36.483' AS DateTime), 2, 2, N'', N'', N'', N'', NULL, NULL, 0, 0)
INSERT [dbo].[TB_BaiViet] ([ID], [TieuDe], [AnhDaiDien], [Thumbnail], [MoTaAnhDaiDien], [TomTat], [NoiDung], [TieuDiem], [ThuTuHienThi], [URLBaiViet], [NgayCongBo], [HetHanCongBo], [NguonTin], [TacGia], [TacQuyen], [NgonNgu], [LuotXem], [TuKhoa], [TrangThai], [ChuyenMucID], [ChuyenMucKhacID], [CreatedOnDate], [LastModifiedOnDate], [CreatedByUserID], [LastModifiedByUserID], [DienThoai], [Email], [DiaChi], [Website], [GioMoCua], [GioDongCua], [ToaDoX], [ToaDoY]) VALUES (N'f28dea8f-f3fa-450b-a92d-c5fd74555903', N'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.', N'http://dummyimage.com/113x100.png/ff4444/ffffff', N'http://dummyimage.com/226x100.png/5fa2dd/ffffff', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', N'Aliquam erat volutpat. In congue. Etiam justo.', N'<p>Mauris sit amet eros. Suspendisse accumsan tortor quis turpis. Sed ante. Vivamus tortor. Duis mattis egestas metus. Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh. Quisque id justo sit amet sapien dignissim vestibulum.</p>
', 0, NULL, N'morbi-porttitor-lorem-id-ligula-suspendisse-ornare-consequat-lectus-in-est-risus-auctor-sed-tristique-in-tempus-sit-amet-sem-01042024141824', CAST(N'2023-09-06T00:00:00.000' AS DateTime), CAST(N'2025-02-27T00:00:00.000' AS DateTime), N'', N'', N'', N'Tiếng việt (Việt Nam)', 0, N'', 1, N'f120bb65-2b4e-48af-9a96-497058ebfb95', N'', CAST(N'2024-04-01T14:18:24.947' AS DateTime), CAST(N'2024-04-01T14:18:24.947' AS DateTime), 2, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TB_BaiViet] ([ID], [TieuDe], [AnhDaiDien], [Thumbnail], [MoTaAnhDaiDien], [TomTat], [NoiDung], [TieuDiem], [ThuTuHienThi], [URLBaiViet], [NgayCongBo], [HetHanCongBo], [NguonTin], [TacGia], [TacQuyen], [NgonNgu], [LuotXem], [TuKhoa], [TrangThai], [ChuyenMucID], [ChuyenMucKhacID], [CreatedOnDate], [LastModifiedOnDate], [CreatedByUserID], [LastModifiedByUserID], [DienThoai], [Email], [DiaChi], [Website], [GioMoCua], [GioDongCua], [ToaDoX], [ToaDoY]) VALUES (N'5690a36d-9310-45cd-a462-c706fc704be4', N'Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis. Fusce posuere felis sed lacus.', N'http://dummyimage.com/126x100.png/5fa2dd/ffffff', N'http://dummyimage.com/112x100.png/dddddd/000000', N'Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.', N'Proin at turpis a pede posuere nonummy. Integer non velit. Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque. Duis bibendum.', N'<p>Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis. Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem. Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus. Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien.</p>
', 0, NULL, N'nullam-orci-pede-venenatis-non-sodales-sed-tincidunt-eu-felis-fusce-posuere-felis-sed-lacus-17042024144025', CAST(N'2023-07-09T00:00:00.000' AS DateTime), CAST(N'2024-11-12T00:00:00.000' AS DateTime), N'', N'', N'', N'Tiếng việt (Việt Nam)', 0, N'', 1, N'b87d10b9-5835-4c3c-a0c1-507d65746850', N'', CAST(N'2024-04-01T14:18:15.690' AS DateTime), CAST(N'2024-04-17T14:41:07.217' AS DateTime), 2, 2, N'', N'', N'', N'', NULL, NULL, 0, 0)
INSERT [dbo].[TB_BaiViet] ([ID], [TieuDe], [AnhDaiDien], [Thumbnail], [MoTaAnhDaiDien], [TomTat], [NoiDung], [TieuDiem], [ThuTuHienThi], [URLBaiViet], [NgayCongBo], [HetHanCongBo], [NguonTin], [TacGia], [TacQuyen], [NgonNgu], [LuotXem], [TuKhoa], [TrangThai], [ChuyenMucID], [ChuyenMucKhacID], [CreatedOnDate], [LastModifiedOnDate], [CreatedByUserID], [LastModifiedByUserID], [DienThoai], [Email], [DiaChi], [Website], [GioMoCua], [GioDongCua], [ToaDoX], [ToaDoY]) VALUES (N'a58d2e41-4389-4df8-b9f3-c8651f06db71', N'Ngày hội thơ Huế Chương trình thơ nhạc “Hương sắc mùa xuân”', N'/Upload\BaiViet\2024\tho-hue-2_1710927945.jpg', N'/Upload\BaiViet\2024\tho-hue-2_1710927945.jpg', N'', N'', N'<p style="text-align:center"><a href="https://www.huefestival.com/upload/image/festivalhue/FES-2024/tho-hue-2.jpg"><img src="https://www.huefestival.com/upload/image/festivalhue/FES-2024/tho-hue-2.jpg" /></a></p>

<p>Ng&agrave;y hội thơ Huế l&agrave; chuỗi c&aacute;c sự kiện thuộc chương tr&igrave;nh Ng&agrave;y thơ Việt Nam nằm trong khu&ocirc;n khổ Lễ hội m&ugrave;a xu&acirc;n của Festival Huế 2024, với c&aacute;c hoạt động như: giao lưu thi ca, viếng mộ thi nh&acirc;n, c&aacute;c Chương tr&igrave;nh thơ trong dịp Nguy&ecirc;n ti&ecirc;u năm 2024 tại Huế.</p>

<p>;</p>

<p>19h30 tối 14 th&aacute;ng Gi&ecirc;ng (nhằm ng&agrave;y 23/02/2024) l&agrave; chương tr&igrave;nh thơ Nguy&ecirc;n ti&ecirc;u do Hội Li&ecirc;n hiệp VHNT, Hội Nh&agrave; văn Thừa Thi&ecirc;n Huế tổ chức với sự tham gia của nhiều nh&agrave; thơ Huế tại Nh&agrave; K&egrave;n, c&ocirc;ng vi&ecirc;n 3 th&aacute;ng 2.</p>

<p>Đặc biệt điểm nhấn của Ng&agrave;y hội thơ Huế, chương tr&igrave;nh Thơ nhạc &ldquo;Hương sắc m&ugrave;a xu&acirc;n&rdquo; do Ban Tổ chức Festival Huế, Trung t&acirc;m Bảo tồn Di t&iacute;ch Cố đ&ocirc; Huế, Hội Li&ecirc;n hiệp Văn học Nghệ thuật Thừa Thi&ecirc;n Huế, Hội Nh&agrave; văn Thừa Thi&ecirc;n Huế tổ chức từ 20h10 đến 21h30 ng&agrave;y 24/2/2024 tại Phủ Nội vụ, Đại Nội, Huế.</p>

<p style="text-align:center"><img alt="" src="https://www.huefestival.com/upload/image/festivalhue/FES-2024/banner-huongsac-muaxuan.jpg" /></p>

<p>Chương tr&igrave;nh thơ nhạc &ldquo;Hương sắc m&ugrave;a xu&acirc;n&rdquo; bao gồm diễn ng&acirc;m nhiều b&agrave;i thơ ti&ecirc;u biểu của c&aacute;c t&aacute;c giả như chủ tịch Hồ Ch&iacute; Minh, Vũ Đ&igrave;nh Li&ecirc;n, Nguyễn B&iacute;nh, Đ&ocirc;ng Hồ, Nguyễn Khoa Điềm, Ho&agrave;ng Phủ Ngọc Tường, v.v. c&aacute;c ca kh&uacute;c phổ thơ ti&ecirc;u biểu của c&aacute;c nhạc sĩ như Văn Cao, Trần Ho&agrave;n, Cao Việt B&aacute;ch, L&ecirc; Anh,v.v. Chương tr&igrave;nh được d&agrave;n dựng c&ocirc;ng phu với c&aacute;ch kết hợp s&acirc;n khấu thực cảnh h&ograve;a quyện c&ugrave;ng &aacute;nh s&aacute;ng Đại Nội v&agrave;o ban đ&ecirc;m, hy vọng sẽ mang đến cho c&ocirc;ng ch&uacute;ng những khoảnh khắc s&acirc;u lắng về nội dung, ấn tượng về cảnh tr&iacute; ri&ecirc;ng c&oacute; của Huế.</p>

<p style="text-align:center"><img alt="" src="https://www.huefestival.com/upload/image/festivalhue/FES-2024/tho-hue.jpg" /></p>

<p>Chương tr&igrave;nh thơ nhạc &ldquo;Hương sắc m&ugrave;a xu&acirc;n&rdquo; được tổ chức tại kh&ocirc;ng gian Phủ Nội Vụ, Đại Nội Huế, truyền h&igrave;nh trực tiếp tr&ecirc;n s&oacute;ng Đ&agrave;i Ph&aacute;t thanh Truyền h&igrave;nh Thừa Thi&ecirc;n Huế v&agrave; được Livestream tr&ecirc;n c&aacute;c nền tảng truyền th&ocirc;ng số. Chương tr&igrave;nh phục vụ cộng đồng, kh&ocirc;ng thu ph&iacute; v&agrave;o cửa. Qu&yacute; kh&aacute;ch tham dự chương tr&igrave;nh v&agrave;o cửa Hiển Nhơn hoặc cửa Ho&agrave; B&igrave;nh từ 19h30 tối 24/2/2024.</p>

<p>Ng&agrave;y hội thơ Huế l&agrave; dịp thu h&uacute;t th&ecirc;m người tri &acirc;m, những t&acirc;m hồn đồng điệu với thơ, ca, nhạc, họa xứ Huế. L&agrave; một nhịp đập trữ t&igrave;nh mang phong c&aacute;ch rất ri&ecirc;ng qua c&aacute;c kỳ Festival Huế, Ng&agrave;y hội thơ Huế sẽ đem đến cho c&ocirc;ng ch&uacute;ng nhiều giọng thơ của c&aacute;c nh&agrave; thơ xứ Huế qua nhiều thế hệ. C&aacute;c b&agrave;i thơ được chuyển tải qua c&aacute;c h&igrave;nh thức diễn ng&acirc;m, tr&igrave;nh diễn tiểu phẩm, s&acirc;n khấu h&oacute;a,... sẽ thổi hồn v&agrave; l&agrave;m cho c&aacute;c b&agrave;i thơ th&ecirc;m gi&agrave;u cảm x&uacute;c.</p>
', 0, NULL, N'Ngay-hoi-tho-Hue-Chuong-trinh-tho-nhac-“Huong-sac-mua-xuan”-20032024164545', CAST(N'2024-02-21T00:00:00.000' AS DateTime), NULL, N'', N'', N'', N'Tiếng việt (Việt Nam)', 0, N'', 1, N'94f2b4ce-4e63-40e5-bab6-02c662db6978', N'', CAST(N'2024-03-20T16:46:21.577' AS DateTime), NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TB_BaiViet] ([ID], [TieuDe], [AnhDaiDien], [Thumbnail], [MoTaAnhDaiDien], [TomTat], [NoiDung], [TieuDiem], [ThuTuHienThi], [URLBaiViet], [NgayCongBo], [HetHanCongBo], [NguonTin], [TacGia], [TacQuyen], [NgonNgu], [LuotXem], [TuKhoa], [TrangThai], [ChuyenMucID], [ChuyenMucKhacID], [CreatedOnDate], [LastModifiedOnDate], [CreatedByUserID], [LastModifiedByUserID], [DienThoai], [Email], [DiaChi], [Website], [GioMoCua], [GioDongCua], [ToaDoX], [ToaDoY]) VALUES (N'436d5c91-de9e-410d-bdaf-cad0cd910bc7', N'Chuyên gia: "HLV Troussier không thay đổi, đội tuyển Việt Nam còn thua nữa"', N'/Upload\BaiViet\2024\troussier-1711416391664_1712046738.jpg', N'https://www.huefestival.com/templates/default/images/logo_huefestival.png', N'HLV Troussier chưa sử dụng hết các nhân sự tốt nhất của đội tuyển Việt Nam (Ảnh: Mạnh Quân).', N'Các chuyên gia cho rằng HLV Philippe Troussier chưa sử dụng hết sức mạnh của đội tuyển Việt Nam, khi ông vẫn không tin dùng các cầu thủ có nhiều kinh nghiệm và cả phong độ tốt.', N'<p>Tuy nhi&ecirc;n, nếu lật ngược được thế cờ, &quot;Những chiến binh sao v&agrave;ng&quot; lại s&aacute;ng cửa đi tiếp ở bảng F. Vấn đề được nhiều người quan t&acirc;m l&uacute;c n&agrave;y l&agrave; HLV Troussier sẽ sử dụng nh&acirc;n sự, lối chơi như thế n&agrave;o. Trong trường hợp đội&nbsp;<a href="https://dantri.com.vn/chu-de/doi-tuyen-bong-da-quoc-gia-viet-nam-4218.htm">tuyển Việt Nam</a>&nbsp;đ&aacute; như trận lượt đi, cơ hội gi&agrave;nh chiến thắng l&agrave; kh&ocirc;ng nhiều.</p>

<p>&quot;T&ocirc;i cho rằng c&aacute;ch sử dụng nh&acirc;n sự của HLV Troussier ở trận lượt đi kh&ocirc;ng hợp l&yacute;. C&oacute; những cầu thủ phong độ tốt như&nbsp;<a href="https://dantri.com.vn/tim-kiem/quang+h%E1%BA%A3i.htm">Quang Hải</a>&nbsp;xếp ngồi dự bị cả trận, trong khi Minh Trọng gặp vấn đề về t&acirc;m l&yacute; lại được đ&aacute; ch&iacute;nh. Tương tự Tuấn T&agrave;i cũng kh&ocirc;ng chơi tốt mấy trận trước rồi nhưng vẫn được trọng dụng.</p>

<p>Điều n&agrave;y khiến đội tuyển Việt Nam kh&ocirc;ng thể ph&aacute;t huy được hết sức mạnh của m&igrave;nh&quot;, b&igrave;nh luận vi&ecirc;n (BLV) Quang Huy ph&acirc;n t&iacute;ch về trận thua 0-1 của đội tuyển Việt Nam trước Indonesia ng&agrave;y 21/3.</p>

<p>Theo BLV Quang Huy, HLV Troussier cần c&oacute; sự thay đổi, &iacute;t nhất l&agrave; việc xếp đội h&igrave;nh, thay người v&agrave; c&aacute;ch tiếp cận trận đấu. Đội tuyển Việt Nam cần phải c&oacute; một đội h&igrave;nh mạnh nhất, với những cầu thủ được xếp ở vị tr&iacute; sở trường.</p>

<p>Đ&aacute;ng ch&uacute; &yacute;, Quang Hải cần được sử dụng ngay từ đầu nếu như cầu thủ n&agrave;y kh&ocirc;ng gặp vấn đề về sức khỏe. &quot;Ch&uacute;ng ta phải đưa ra những con người tốt nhất, đ&uacute;ng chỗ của họ th&igrave; mới ph&aacute;t huy được. Trận đấu n&agrave;y, Quang Hải cần được sử dụng. Đ&oacute; sẽ l&agrave; cầu thủ c&oacute; thể l&agrave;m n&ecirc;n sự kh&aacute;c biệt&quot;, BLV Quang Huy cho biết.</p>
', 0, NULL, N'chuyen-gia-"hlv-troussier-khong-thay-doi-doi-tuyen-viet-nam-con-thua-nua"-04042024091546', CAST(N'2024-03-11T00:00:00.000' AS DateTime), NULL, N'Dân trí', N'Kim Anh', N'', N'Tiếng việt (Việt Nam)', 0, N'', 1, N'b51f7635-9fb5-4494-95a3-10b57d0b5cf4', N'', CAST(N'2024-03-21T17:12:53.987' AS DateTime), CAST(N'2024-04-04T09:15:47.747' AS DateTime), 10023, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TB_BaiViet] ([ID], [TieuDe], [AnhDaiDien], [Thumbnail], [MoTaAnhDaiDien], [TomTat], [NoiDung], [TieuDiem], [ThuTuHienThi], [URLBaiViet], [NgayCongBo], [HetHanCongBo], [NguonTin], [TacGia], [TacQuyen], [NgonNgu], [LuotXem], [TuKhoa], [TrangThai], [ChuyenMucID], [ChuyenMucKhacID], [CreatedOnDate], [LastModifiedOnDate], [CreatedByUserID], [LastModifiedByUserID], [DienThoai], [Email], [DiaChi], [Website], [GioMoCua], [GioDongCua], [ToaDoX], [ToaDoY]) VALUES (N'926ad793-c618-4f7a-a8a0-cb0b7ce511ee', N'Tổng quan', N'', N'', N'', N'', N'<div class="d-flex">
<div class="col-md-6 flex-fill"><img alt="" src="https://huecit.vn/Portals/0/BanGiamDoc.jpg" style="width:100%" /></div>

<div class="col-md-6 flex-fill">
<div class="text-blue text-bold">
<h2>Bối cảnh th&agrave;nh lập Trung t&acirc;m</h2>
</div>

<p>C&aacute;c mốc h&igrave;nh th&agrave;nh</p>

<ul>
	<li>Ng&agrave;y 05/6/2000: Nghị quyết 07/2000/NQ-CP của Ch&iacute;nh phủ về x&acirc;y dựng v&agrave; ph&aacute;t triển c&ocirc;ng nghiệp phần mềm giai đoạn 2000 &ndash; 2005</li>
	<li>Ng&agrave;y 17/10/2000: Chỉ thị 58-CT/TW của Ban chấp h&agrave;nh Trung ương về đẩy mạnh ứng dụng v&agrave; ph&aacute;t triển CNTT phục vụ sự nghiệp c&ocirc;ng nghiệp h&oacute;a, hiện đại h&oacute;a</li>
	<li>Ng&agrave;y 24/5/2001: Quyết định của Thủ tướng Ch&iacute;nh phủ về việc ph&ecirc; duyệt Chương tr&igrave;nh h&agrave;nh động triển khai Chỉ thị 58-CT/TW của Bộ Ch&iacute;nh trị về đẩy mạnh ứng dụng v&agrave; ph&aacute;t triển CNTT trong sự nghiệp c&ocirc;ng nghiệp h&oacute;a v&agrave; hiện đại h&oacute;a giai đoạn 2001&ndash;2005</li>
</ul>

<p>H&igrave;nh th&agrave;nh v&agrave; ph&aacute;t triển</p>

<ul>
	<li>Ng&agrave;y 10/10/2000: Quyết định 2727/QĐ-UB của Ủy ban nh&acirc;n d&acirc;n tỉnh Thừa Thi&ecirc;n Huế th&agrave;nh lập Trung t&acirc;m C&ocirc;ng nghệ Phần mềm (Huesoft) trực thuộc Sở Khoa học, C&ocirc;ng nghệ v&agrave; M&ocirc;i trường</li>
	<li>Ng&agrave;y 31/8/2001: Th&agrave;nh lập C&ocirc;ng vi&ecirc;n C&ocirc;ng nghệ Phần mềm Huế (HueSP) trực thuộc C&ocirc;ng ty Tư vấn x&acirc;y dựng c&ocirc;ng tr&igrave;nh giao th&ocirc;ng Thừa Thi&ecirc;n Huế theo Quyết định số 2127/QĐ-UB của Ủy ban Nh&acirc;n d&acirc;n tỉnh Thừa Thi&ecirc;n Huế</li>
	<li>Ng&agrave;y 22/9/2004: Th&agrave;nh lập Trung t&acirc;m C&ocirc;ng nghệ Th&ocirc;ng tin tỉnh Thừa Thi&ecirc;n Huế (HueCIT) tr&ecirc;n cơ sở s&aacute;t nhập Trung t&acirc;m C&ocirc;ng nghệ Phần mềm Thừa Thi&ecirc;n Huế (Huesoft) v&agrave; C&ocirc;ng vi&ecirc;n C&ocirc;ng nghệ Phần mềm Huế (HueSP) theo Quyết định số 3289/2004/QĐ-UB của UBND tỉnh TT-Huế</li>
	<li>Ng&agrave;y 19/12/2011: Kiện to&agrave;n Trung t&acirc;m C&ocirc;ng nghệ Th&ocirc;ng tin tỉnh theo Quyết định số 2635/QĐ-UBND của UBND tỉnh Thừa Thi&ecirc;n Huế.</li>
</ul>
</div>
</div>

<div class="bg-pink p-1">
<div class="text-blue text-bold text-center">
<h2>Chức năng, nhiệm vụ</h2>
</div>

<p>(<em>Theo Quyết định Quyết định số 1972/Q&ETH;-UBND ng&agrave;y 04 th&aacute;ng 8 năm 2020 của UBND tỉnh Thừa Thi&ecirc;n Huế về việc quy định chức năng, nhiệm vụ, quyền hạn v&agrave; cơ cấu tổ chức của Trung t&acirc;m C&ocirc;ng nghệ Th&ocirc;ng tin tỉnh</em>)</p>

<ul>
	<li>1. Đ&agrave;o tạo nguồn nh&acirc;n lực CNTT, đ&agrave;o tạo ngoại ngữ theo c&aacute;c chương tr&igrave;nh quy định của Bộ GD-ĐT, Bộ LĐ-TB-XH v&agrave; đ&agrave;o tạo theo nhu cầu x&atilde; hội đối với c&aacute;c lĩnh vực m&agrave; Trung t&acirc;m c&oacute; thế mạnh; đ&agrave;o tạo nguồn nh&acirc;n lực chất lượng cao để đ&aacute;p ứng y&ecirc;u cầu x&acirc;y dựng th&agrave;nh phố th&ocirc;ng minh v&agrave; bảo đảm sự ph&aacute;t triển của ng&agrave;nh CNTT; li&ecirc;n kết với c&aacute;c trường đại học, cao đẳng trong v&agrave; ngo&agrave;i nước để bổ sung nguồn lực CNTT cho tỉnh, cho c&aacute;c doanh nghiệp tại Khu CVPM, Khu CNTT tập trung; đ&agrave;o tạo cho CB,CC trong c&aacute;c cơ quan nh&agrave; nước; đ&agrave;o tạo chuyển đổi nghề nghiệp lĩnh vực CNTT v&agrave; truyền th&ocirc;ng; x&acirc;y dựng chương tr&igrave;nh đ&agrave;o tạo ngoại ngữ d&agrave;nh cho đối tượng xuất khẩu lao động tr&ecirc;n địa b&agrave;n tỉnh v&agrave; c&aacute;c khu vực l&acirc;n cận.</li>
	<li>2. Nghi&ecirc;n cứu, tham mưu UBND tỉnh c&aacute;c giải ph&aacute;p về ứng dụng CNTT trong c&aacute;c cơ quan nh&agrave; nước nhằm tiến đến một ch&iacute;nh quyền điện tử hiệu quả tại tỉnh Thừa Thi&ecirc;n Huế.</li>
	<li>3. Tư vấn thiết kế, gi&aacute;m s&aacute;t v&agrave; kiểm thử đối với c&aacute;c dự &aacute;n CNTT v&agrave; c&oacute; ứng dụng CNTT trong c&aacute;c cơ quan nh&agrave; nước v&agrave; doanh nghiệp.</li>
	<li>4. Cung cấp sản phẩm, dịch vụ sự nghiệp c&ocirc;ng thuộc lĩnh vực CNTT cho c&aacute;c cơ quan nh&agrave; nước được UBND tỉnh giao nhiệm vụ, đặt h&agrave;ng h&agrave;ng năm.</li>
	<li>5. X&acirc;y dựng v&agrave; cung cấp sản phẩm, dịch vụ li&ecirc;n quan đến ứng dụng c&ocirc;ng nghệ th&ocirc;ng tin cho c&aacute;c cơ quan nh&agrave; nước v&agrave; cho x&atilde; hội.</li>
	<li>6. Cung cấp dịch vụ nội dung số v&agrave; chuyển đổi số cho c&aacute;c ng&agrave;nh/tổ chức v&agrave; doanh nghiệp.</li>
	<li>7. Ph&aacute;t triển Trang th&ocirc;ng tin điện tử Kh&aacute;m ph&aacute; Huế.</li>
	<li>8. Quản l&yacute; Khu C&ocirc;ng vi&ecirc;n phần mềm, CNTT tập trung (gọi tắt l&agrave; Khu CVPM, CNTT tập trung):
	<ul>
		<li>a) Tổ chức phối hợp ho&agrave;n thiện Khu C&ocirc;ng vi&ecirc;n phần mềm tại Khu đ&ocirc; thị An V&acirc;n Dương theo quy hoạch của tỉnh, theo hướng ứng dụng CNTT trong lĩnh vực văn h&oacute;a, du lịch, y tế, ph&aacute;t huy đ&uacute;ng tiềm năng thế mạnh của tỉnh; Tập trung ho&agrave;n chỉnh c&aacute;c sản phẩm, dịch vụ phục vụ cho Ch&iacute;nh phủ điện tử, Đ&ocirc; thị th&ocirc;ng minh.</li>
		<li>b) Hợp t&aacute;c với c&aacute;c th&agrave;nh vi&ecirc;n của Chuỗi CVPM Quang Trung v&agrave; doanh nghiệp CNTT trong v&agrave; ngo&agrave;i nước để triển khai c&aacute;c hoạt động b&aacute;n sản phẩm, gia c&ocirc;ng phần mềm, k&ecirc;u gọi đầu tư. Hỗ trợ, th&uacute;c đẩy doanh nghiệp CNTT tham gia Vườn ươm doanh nghiệp CNTT.</li>
		<li>c) X&uacute;c tiến thương mại,&nbsp;<a href="http://xuctiendautu.huecit.vn/" target="_blank">x&uacute;c tiến đầu tư trong lĩnh vực CNTT</a>; tổ chức hội chợ, triển l&atilde;m, tr&igrave;nh diễn sản phẩm v&agrave; dịch vụ CNTT.</li>
		<li>d) Cung cấp hạ tầng, dịch vụ v&agrave; c&aacute;c điều kiện cần thiết để c&aacute;c tổ chức, doanh nghiệp trong Khu CVPM, CNTT tập trung hoạt động; cung cấp dịch vụ tiện nghi về cơ sở hạ tầng CNTT cho x&atilde; hội.</li>
		<li>đ) Quản l&yacute;, phổ biến, hướng dẫn, kiểm tra, gi&aacute;m s&aacute;t việc thực hiện quy định, quy hoạch, kế hoạch c&oacute; li&ecirc;n quan đến Khu CVPM, CNTT tập trung; kiểm so&aacute;t việc cung cấp c&aacute;c dịch vụ hạ tầng theo đ&uacute;ng c&aacute;c hợp đồng với nh&agrave; đầu tư c&aacute;c dự &aacute;n. Hướng dẫn c&aacute;c nh&agrave; đầu tư, doanh nghiệp x&acirc;y dựng, kinh doanh, khai th&aacute;c, sử dụng cơ sở hạ tầng theo đ&uacute;ng quy tr&igrave;nh, quy phạm kỹ thuật của Nh&agrave; nước.</li>
		<li>e) Hỗ trợ, cung cấp th&ocirc;ng tin để c&aacute;c doanh nghiệp trong Khu CVPM, CNTT tập trung, li&ecirc;n kết, hợp t&aacute;c với nhau để tạo ra hệ sinh th&aacute;i về CNTT. Đầu mối giải quyết c&aacute;c kh&oacute; khăn, vướng mắc của nh&agrave; đầu tư tại Khu CVPM, CNTT tập trung.</li>
		<li>g) X&acirc;y dựng cơ chế phối hợp kiểm tra, gi&aacute;m s&aacute;t việc thực hiện mục ti&ecirc;u đầu tư, việc chấp h&agrave;nh ph&aacute;p luật về x&acirc;y dựng, lao động, tiền lương, bảo hiểm x&atilde; hội đối với người lao động, bảo vệ quyền lợi hợp ph&aacute;p của người lao động v&agrave; người sử dụng lao động, bảo đảm an to&agrave;n, vệ sinh lao động, ph&ograve;ng chống ch&aacute;y nổ, an ninh - trật tự, bảo vệ m&ocirc;i trường đối với c&aacute;c dự &aacute;n tại Khu CVPM, CNTT tập trung.</li>
		<li>h) Hỗ trợ v&agrave; chăm s&oacute;c kh&aacute;ch h&agrave;ng: Hỗ trợ tư vấn ph&aacute;p l&yacute; v&agrave; thực hiện thủ tục h&agrave;nh ch&iacute;nh li&ecirc;n quan đến hoạt động c&aacute;c doanh nghiệp trong Khu CVPM, CNTT tập trung; Ph&aacute;p chế của Trung t&acirc;m; Chăm s&oacute;c kh&aacute;ch h&agrave;ng (thu thập phản hồi th&ocirc;ng tin, kiểm tra sự h&agrave;i l&ograve;ng) về tất cả c&aacute;c dịch vụ do Khu CVPM, CNTT cung cấp.</li>
		<li>i) Quản l&yacute; đầu tư v&agrave; hạ tầng: Quản l&yacute; đầu tư x&acirc;y dựng cơ bản, quản l&yacute; dự &aacute;n của nh&agrave; đầu tư theo quy hoạch v&agrave; thiết kế đuợc duyệt; quản l&yacute; vệ sinh m&ocirc;i trường (r&aacute;c thải rắn sinh hoạt c&ocirc;ng vi&ecirc;n), cảnh quan, hạ tầng giao th&ocirc;ng, hệ thống tho&aacute;t nước mưa, nước thải, dịch vụ b&atilde;i xe ngo&agrave;i t&ograve;a nh&agrave; của Khu CVPM, CNTT tập trung; phối hợp với địa phương kiểm tra dịch vụ vệ sinh an to&agrave;n thực phẩm của Khu CVPM, CNTT tập trung.</li>
		<li>k) X&acirc;y dựng kế hoạch v&agrave; triển khai c&aacute;c hoạt động hợp t&aacute;c quốc tế trong lĩnh vực CNTT v&agrave; truyền th&ocirc;ng theo quy định của ph&aacute;p luật.</li>
		<li>l) Tổng hợp b&aacute;o c&aacute;o thống k&ecirc;, b&aacute;o c&aacute;o t&agrave;i ch&iacute;nh của doanh nghiệp hoạt động trong Khu CVPM, CNTT tập trung; đ&aacute;nh gi&aacute; hiệu quả đầu tư trong Khu CVPM, CNTT tập trung. B&aacute;o c&aacute;o định kỳ với Bộ TT&amp;TT, c&aacute;c bộ, ng&agrave;nh c&oacute; li&ecirc;n quan, UBND tỉnh v&agrave; Hội đồng quản l&yacute; Chuỗi CVPM Quang Trung về t&igrave;nh h&igrave;nh x&acirc;y dựng v&agrave; ph&aacute;t triển Khu CVPM, CNTT tập trung.</li>
	</ul>
	</li>
</ul>
</div>

<div class="pt-1 text-blue text-bold text-center">
<h2>Cơ sở hạ tầng</h2>
</div>

<div class="d-flex justify-content-center">
<div class="col-md-6 flex-fill">
<p>T&ograve;a nh&agrave; HueCIT c&oacute; 5 tầng, tọa lạc tại số 6 L&ecirc; Lợi, th&agrave;nh phố Huế tr&ecirc;n diện t&iacute;ch đất 2.378m<sup>2</sup>&nbsp;với tổng diện t&iacute;ch s&agrave;n l&agrave; 2.450m<sup>2</sup>, trong đ&oacute;:</p>

<ul>
	<li>17 ph&ograve;ng l&agrave;m việc.</li>
	<li>6 ph&ograve;ng thực h&agrave;nh, 5 ph&ograve;ng học l&yacute; thuyết.</li>
	<li>1 ph&ograve;ng họp, 1 hội trường.</li>
</ul>

<p>V&agrave; s&acirc;n vườn rộng 1.400m<sup>2</sup>&nbsp;d&ugrave;ng l&agrave;m nơi tổ chức hội chợ, triển l&atilde;m CNTT, nơi để xe, s&acirc;n nghỉ...</p>

<p>Hệ thống mạng hiện đại với 7 m&aacute;y chủ, hơn 280 m&aacute;y t&iacute;nh v&agrave; c&aacute;c thiết bị viễn th&ocirc;ng.</p>
</div>
</div>

<div class="d-flex">
<div class="col-md-6 flex-fill"><img alt="" src="https://huecit.vn/Portals/3/GioiThieu/HueCIT_ToaNhaHueCIT.png" style="width:100%" /></div>

<div class="col-md-6 flex-fill"><img alt="" src="https://huecit.vn/Portals/3/GioiThieu/HueCIT_KhuCVPMHue.png" style="width:100%" /></div>
</div>

<p class="pt-1"><img alt="" src="https://huecit.vn/Portals/0/HueCIT_CoCauToChuc.jpg" style="width:100%" />&nbsp;<img alt="" src="https://huecit.vn/Portals/3/GioiThieu/huecit.png" style="width:100%" /></p>
', 0, NULL, N'tong-quan-19042024085658', CAST(N'2024-04-17T00:00:00.000' AS DateTime), NULL, N'', N'', N'', N'Tiếng việt (Việt Nam)', 0, N'', 1, N'725ef3a5-6329-4edb-a1cf-dfeefbfde739', N'', CAST(N'2024-04-17T11:09:55.983' AS DateTime), CAST(N'2024-04-19T08:57:43.333' AS DateTime), 2, 2, N'', N'', N'', N'', NULL, NULL, 0, 0)
INSERT [dbo].[TB_BaiViet] ([ID], [TieuDe], [AnhDaiDien], [Thumbnail], [MoTaAnhDaiDien], [TomTat], [NoiDung], [TieuDiem], [ThuTuHienThi], [URLBaiViet], [NgayCongBo], [HetHanCongBo], [NguonTin], [TacGia], [TacQuyen], [NgonNgu], [LuotXem], [TuKhoa], [TrangThai], [ChuyenMucID], [ChuyenMucKhacID], [CreatedOnDate], [LastModifiedOnDate], [CreatedByUserID], [LastModifiedByUserID], [DienThoai], [Email], [DiaChi], [Website], [GioMoCua], [GioDongCua], [ToaDoX], [ToaDoY]) VALUES (N'2bdb58c4-a210-424d-a88b-d5ad580b4cf4', N'Phản ứng của CSGT Hà Nội khi được HLV Philippe Troussier tặng vé bóng đá', N'/Upload\BaiViet\2024\tang-ve-17114222835542030178750_1712046783.jpg', N'https://www.huefestival.com/templates/default/images/logo_huefestival.png', N'HLV Troussier hỏi thăm công việc và tặng vé cho 2 chiến sĩ cảnh sát (Ảnh: Mạng xã hội).', N'Hai chiến sĩ CSGT cảm thấy bất ngờ khi được HLV Troussier tặng vé xem trận đấu giữa tuyển Việt Nam và Indonesia tối 26/3.', N'<p>Kết th&uacute;c buổi tập chiều 25/3, tr&ecirc;n đường đi ra xe của đội tuyển Việt Nam,&nbsp;HLV Philippe Troussier bất ngờ đi về ph&iacute;a hai chiến sĩ cảnh s&aacute;t&nbsp;<a href="https://dantri.com.vn/xa-hoi/giao-thong.htm">giao th&ocirc;ng</a>&nbsp;- những người phụ tr&aacute;ch dẫn đo&agrave;n cho đội tuyển từ s&acirc;n vận động Mỹ Đ&igrave;nh về kh&aacute;ch sạn.</p>

<p>HLV Troussier hỏi han c&ocirc;ng việc của lực lượng, hỏi hai anh đ&atilde; c&oacute; v&eacute; xem trận đấu&nbsp;giữa tuyển Việt Nam - Indonesia tối 26/3 hay chưa.&nbsp;</p>

<p>Khi biết họ kh&ocirc;ng c&oacute; v&eacute; v&agrave;o s&acirc;n, &ocirc;ng Troussier quyết định tặng v&eacute; cho hai cảnh s&aacute;t. Khi to&agrave;n đội trở về kh&aacute;ch sạn, hai tấm v&eacute; đ&atilde; được chuyển đến tay c&aacute;c chiến sĩ.&nbsp;</p>

<p><img alt="Phản ứng của CSGT Hà Nội khi được HLV Philippe Troussier tặng vé bóng đá  - 1" src="https://cdnphoto.dantri.com.vn/6vCsbI0Q_oDvcfocOZFGEStzodk=/thumb_w/1020/2024/03/26/4320630037842605004299445285999170848268135n-1711428356162.jpg" title="Phản ứng của CSGT Hà Nội khi được HLV Philippe Troussier tặng vé bóng đá  - 1" /></p>

<p>HLV Troussier hỏi thăm c&ocirc;ng việc v&agrave; tặng v&eacute; cho 2 chiến sĩ cảnh s&aacute;t (Ảnh: Mạng x&atilde; hội).</p>

<p><a href="https://quangcaodantri.vn/?utm_source=dantri.com.vn" target="_blank"><em>Quảng c&aacute;o của</em>&nbsp;<strong>DTads</strong></a></p>

<p>H&agrave;nh động của HLV Troussier thu h&uacute;t sự quan t&acirc;m v&agrave; th&iacute;ch th&uacute; của cộng đồng mạng. Nhiều b&agrave;i viết tr&ecirc;n mạng x&atilde; hội thu về h&agrave;ng chục ngh&igrave;n lượt y&ecirc;u th&iacute;ch, b&igrave;nh luận v&agrave; chia sẻ.&nbsp;</p>

<p>&quot;H&agrave;nh động đẹp của HLV Troussier đ&aacute;ng để ch&uacute;ng ta phải suy nghĩ. &Ocirc;ng ấy v&agrave; c&aacute;c cầu thủ rất cần những lời động vi&ecirc;n, cổ vũ của ch&uacute;ng ta v&agrave;o l&uacute;c n&agrave;y&quot;, t&agrave;i khoản Đỗ Mạnh H&ugrave;ng b&igrave;nh luận.&nbsp;</p>

<p>&quot;Ch&uacute;c mừng hai anh chiến sĩ may mắn. Ch&uacute;c HLV Troussier v&agrave; đội tuyển thi đấu th&agrave;nh c&ocirc;ng&quot;, một người kh&aacute;c viết.&nbsp;</p>

<p>Chỉ huy đội Đội cảnh s&aacute;t giao th&ocirc;ng tuần tra dẫn đo&agrave;n, Ph&ograve;ng cảnh s&aacute;t giao th&ocirc;ng C&ocirc;ng an H&agrave; Nội, cho biết hai cảnh s&aacute;t giao th&ocirc;ng trong b&agrave;i viết l&agrave; đại &uacute;y&nbsp;B&ugrave;i Xu&acirc;n Điệp v&agrave; thượng &uacute;y Nguyễn Hữu T&uacute;y.</p>
', 0, NULL, N'phan-ung-cua-csgt-ha-noi-khi-duoc-hlv-philippe-troussier-tang-ve-bong-da-04042024091538', CAST(N'2024-03-21T00:00:00.000' AS DateTime), NULL, N'Dân trí', N'H. Long', N'', N'Tiếng việt (Việt Nam)', 0, N'', 1, N'b51f7635-9fb5-4494-95a3-10b57d0b5cf4', N'', CAST(N'2024-03-21T15:16:47.000' AS DateTime), CAST(N'2024-04-04T09:15:39.457' AS DateTime), 10023, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TB_BaiViet] ([ID], [TieuDe], [AnhDaiDien], [Thumbnail], [MoTaAnhDaiDien], [TomTat], [NoiDung], [TieuDiem], [ThuTuHienThi], [URLBaiViet], [NgayCongBo], [HetHanCongBo], [NguonTin], [TacGia], [TacQuyen], [NgonNgu], [LuotXem], [TuKhoa], [TrangThai], [ChuyenMucID], [ChuyenMucKhacID], [CreatedOnDate], [LastModifiedOnDate], [CreatedByUserID], [LastModifiedByUserID], [DienThoai], [Email], [DiaChi], [Website], [GioMoCua], [GioDongCua], [ToaDoX], [ToaDoY]) VALUES (N'e0c937ca-b00f-4f4e-b4a9-e3c675224f36', N'Thông báo tuyển dụng viên chức năm 2023', N'/Upload\BaiViet\2024\195d4174109t1757l5-vnhet-tb-tuyen-dung_1713498567.jpg', N'/Upload\BaiViet\2024\195d4174109t1757l5-vnhet-tb-tuyen-dung_1713498567.jpg', N'', N'Căn cứ Kế hoạch số 260/KH-CNTT ngày 25/5/2023 của Trung tâm Công nghệ Thông tin tỉnh về việc tuyển dụng viên chức vào làm việc tại Trung tâm năm 2023.

Trung tâm Thông báo tuyển dụng viên chức năm 2023 như sau:

I. Số lượng, tiêu chuẩn, vị trí tuyển dụng:

- Số lượng: 02 người

- Tiêu chuẩn chức danh nghề nghiệp: Chuyên viên Truyền thông và Chuyên viên Hành chính – Đảm bảo hạ tầng cơ sở.

- Vị trí:

+ Chuyên viên Truyền thông: 01 người.

+ Chuyên viên Hành chính – Đảm bảo hạ tầng cơ sở: 01 người', N'<p>29/05/2023 10:08:31 SA</p>

<ul>
</ul>

<p>Căn cứ Kế hoạch số 260/KH-CNTT ng&agrave;y 25/5/2023 của Trung t&acirc;m C&ocirc;ng nghệ Th&ocirc;ng tin tỉnh về việc tuyển dụng vi&ecirc;n chức v&agrave;o l&agrave;m việc tại Trung t&acirc;m năm 2023.</p>

<p>Trung t&acirc;m Th&ocirc;ng b&aacute;o tuyển dụng vi&ecirc;n chức năm 2023 như sau:</p>

<p><strong>I</strong><strong>.&nbsp;</strong><strong>Số lượng, ti&ecirc;u chuẩn,&nbsp;</strong><strong>vị tr&iacute; tuyển dụng:</strong></p>

<p>- Số lượng: 02 người</p>

<p>- Ti&ecirc;u chuẩn chức danh nghề nghiệp: Chuy&ecirc;n vi&ecirc;n Truyền th&ocirc;ng v&agrave; Chuy&ecirc;n vi&ecirc;n H&agrave;nh ch&iacute;nh &ndash; Đảm bảo hạ tầng cơ sở.</p>

<p><strong>-&nbsp;</strong><strong>Vị tr&iacute;:</strong></p>

<p><strong>+&nbsp;</strong>Chuy&ecirc;n vi&ecirc;n Truyền th&ocirc;ng: 01 người.</p>

<p>+ Chuy&ecirc;n vi&ecirc;n H&agrave;nh ch&iacute;nh &ndash; Đảm bảo hạ tầng cơ sở: 01 người.</p>

<p><strong>II</strong><strong>. Điều kiện đăng k&yacute; dự tuyển</strong></p>

<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; C&oacute; quốc tịch Việt Nam v&agrave; cư tr&uacute; tại Việt Nam.</p>

<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Tuổi đời dự tuyển kh&ocirc;ng qu&aacute; 45 tuổi.</p>

<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; C&oacute; phiếu đăng k&yacute; dự tuyển (<em>theo mẫu</em>).</p>

<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; C&oacute; l&yacute; lịch r&otilde; r&agrave;ng c&oacute; x&aacute;c nhận cơ quan ch&iacute;nh quyền địa phương.</p>

<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; C&oacute; đủ sức khoẻ để đảm nhận nhiệm vụ theo vị tr&iacute; việc l&agrave;m đăng k&yacute; dự tuyển. Giấy kh&aacute;m sức khoẻ do cơ quan y tế c&oacute; thẩm quyền x&aacute;c nhận (từ bệnh viện huyện, quận hoặc tương đương trở l&ecirc;n).</p>

<p><strong>III. Ti&ecirc;u chuẩn về tr&igrave;nh độ đ&agrave;o tạo, bồi dưỡng:</strong></p>

<p><strong>1.&nbsp;</strong><strong>Chuy&ecirc;n vi&ecirc;n Truyền th&ocirc;ng</strong><strong>:</strong></p>

<p>a)&nbsp;&nbsp;&nbsp;&nbsp; C&oacute; bằng tốt nghiệp đại học trở l&ecirc;n của c&aacute;c chuy&ecirc;n ng&agrave;nh Ng&ocirc;n ngữ Anh, Truyền th&ocirc;ng đa phương tiện hoặc C&ocirc;ng nghệ th&ocirc;ng tin;</p>

<p>b)&nbsp;&nbsp;&nbsp; C&oacute; tr&igrave;nh độ ngoại ngữ bậc 2 (A2) theo quy định tại Th&ocirc;ng tư số 01/2014/TT-BGDĐT ng&agrave;y 24/01/2014 của Bộ Gi&aacute;o dục v&agrave; Đ&agrave;o tạo;</p>

<p><strong>2</strong><strong>.&nbsp;</strong><strong>Chuy&ecirc;n vi&ecirc;n H&agrave;nh ch&iacute;nh &ndash; Đảm bảo hạ tầng cơ sở</strong><strong>:</strong></p>

<p>a) C&oacute; bằng tốt nghiệp cao đẳng trở l&ecirc;n chuy&ecirc;n ng&agrave;nh Kỹ thuật điện d&acirc;n dụng; H&agrave;nh ch&iacute;nh, Kinh tế&hellip;v&agrave; c&oacute; bằng sơ cấp nghề hoặc Trung cấp điện d&acirc;n dụng, điện x&iacute; nghiệp.</p>

<p>b) C&oacute; tr&igrave;nh độ ngoại ngữ bậc 2 (A2) theo quy định tại Th&ocirc;ng tư số 01/2014/TT-BGDĐT ng&agrave;y 24/01/2014 của Bộ Gi&aacute;o dục v&agrave; Đ&agrave;o tạo.</p>

<p><strong>IV. Quy định về hồ sơ</strong></p>

<p>Số lượng hồ sơ nộp: 01 bộ, bao gồm:</p>

<p>-&nbsp; Phiếu đăng k&yacute; dự tuyển vi&ecirc;n chức theo mẫu ban h&agrave;nh k&egrave;m theo Nghị định số 115/2020/NĐ-CP ng&agrave;y 25/9/2020 của Ch&iacute;nh phủ&nbsp;<a href="http://iemh.edu.vn/UploadFile/files/M%e1%ba%abu%20s%e1%bb%91%201%20PHI%e1%ba%beU%20%c4%90%c4%82NG%20K%c3%9d%20D%e1%bb%b0%20TUY%e1%bb%82N.doc"><em>(theo mẫu số 1)</em>;</a></p>

<p>-&nbsp; Bản Sơ yếu l&yacute; lịch tự thuật (c&oacute; d&aacute;n ảnh) c&oacute; x&aacute;c nhận của cơ quan c&oacute; thẩm quyền trong thời hạn 06 th&aacute;ng, t&iacute;nh đến ng&agrave;y nộp hồ sơ dự tuyển&nbsp;<a href="http://iemh.edu.vn/UploadFile/files/M%e1%ba%abu%20s%e1%bb%91%202%20S%c6%a1%20y%e1%ba%bfu%20LL.doc"><em>(theo mẫu số 2)</em>;</a></p>

<p>- Bản sao văn bằng, chứng chỉ v&agrave; kết quả học tập theo y&ecirc;u cầu của vị tr&iacute; dự tuyển được cơ quan c&oacute; thẩm quyền chứng thực. Trường hợp c&oacute; văn bằng do cơ sở đ&agrave;o tạo nước ngo&agrave;i cấp phải được c&ocirc;ng chứng dịch thuật sang tiếng Việt;</p>

<p>- Bản sao: Giấy khai sinh; Thẻ căn cước c&ocirc;ng d&acirc;n;</p>

<p>- Giấy chứng nhận sức khỏe c&oacute; gi&aacute; trị 06 th&aacute;ng t&iacute;nh đến ng&agrave;y nộp hồ sơ dự tuyển;</p>

<p>- 02 phong b&igrave; c&oacute; d&aacute;n tem, ghi địa chỉ li&ecirc;n hệ v&agrave; 2 ảnh 3&times;4.</p>

<p><strong>V. H&igrave;nh thức v&agrave; nguy&ecirc;n tắc tuyển dụng:</strong></p>

<p>Tuyển dụng bằng h&igrave;nh thức x&eacute;t tuyển, được thực hiện theo 2 v&ograve;ng như sau:</p>

<p>V&ograve;ng 1: Kiểm tra điều kiện, ti&ecirc;u chuẩn của người dự tuyển đăng k&yacute; tại Phiếu đăng k&yacute; dự tuyển theo y&ecirc;u cầu của vị tr&iacute; việc l&agrave;m, nếu ph&ugrave; hợp th&igrave; người dự tuyển được tham dự v&ograve;ng 2.</p>

<p>V&ograve;ng 2: Phỏng vấn để kiểm tra về năng lực, tr&igrave;nh độ chuy&ecirc;n m&ocirc;n, nghiệp vụ của người dự tuyển. Điểm phỏng vấn được t&iacute;nh theo thang điểm 100. Thời gian phỏng vấn 30 ph&uacute;t. Kh&ocirc;ng thực hiện việc ph&uacute;c khảo đối với kết quả phỏng vấn.</p>

<p><strong>&nbsp;7. Thời gian, địa điểm nhận hồ sơ:</strong></p>

<p>- Thời gian nhận hồ sơ từ &nbsp;nay đến 17 giờ 00 ph&uacute;t ng&agrave;y 25/6/2023.</p>

<p>- Địa điểm nhận hồ sơ: Văn ph&ograve;ng Trung t&acirc;m C&ocirc;ng nghệ Th&ocirc;ng tỉnh Thừa Thi&ecirc;n Huế, số 06 L&ecirc; Lợi, phường Vĩnh Ninh, th&agrave;nh phố Huế.</p>

<p>- Điện thoại: 0234. 3823650.</p>
', 0, NULL, N'thong-bao-tuyen-dung-vien-chuc-nam-2023-19042024104927', CAST(N'2024-04-10T00:00:00.000' AS DateTime), NULL, N'', N'', N'', N'Tiếng việt (Việt Nam)', 0, N'', 1, N'39f89a2a-aff0-4de8-abe5-c6f114621c5b', N'', CAST(N'2024-04-10T17:34:49.157' AS DateTime), CAST(N'2024-04-19T10:50:12.657' AS DateTime), 2, 2, N'', N'', N'', N'', NULL, NULL, 0, 0)
INSERT [dbo].[TB_BaiViet] ([ID], [TieuDe], [AnhDaiDien], [Thumbnail], [MoTaAnhDaiDien], [TomTat], [NoiDung], [TieuDiem], [ThuTuHienThi], [URLBaiViet], [NgayCongBo], [HetHanCongBo], [NguonTin], [TacGia], [TacQuyen], [NgonNgu], [LuotXem], [TuKhoa], [TrangThai], [ChuyenMucID], [ChuyenMucKhacID], [CreatedOnDate], [LastModifiedOnDate], [CreatedByUserID], [LastModifiedByUserID], [DienThoai], [Email], [DiaChi], [Website], [GioMoCua], [GioDongCua], [ToaDoX], [ToaDoY]) VALUES (N'63f5c556-a49d-4a0d-9cc8-e551b3f540bc', N'Đại lý phần mềm, dịch vụ', N'/Upload\BaiViet\2024\vn-4-1711029934249-1711046640170-1711428819187_1712046824.jpg', N'/Upload\BaiViet\2024\HueCIT-DaiLyPM_1713250399.jpg', N'Đại lý phần mềm, dịch vụ', N'HueCIT là đại lý chính thức phân phối sản phẩm phần mềm diệt virus của Kasperky và các sản phẩm phần mềm, dịch vụ của Tập đoàn Bưu chính Viễn thông Việt Nam (VNPT) tại Huế.', N'<table>
	<tbody>
		<tr>
			<td>&nbsp;<img alt="" src="https://huecit.vn/Portals/3/Dichvu/DaiLyCap1_VNPT/HueCIT_Hoc-truc-tuyen_hoc-tai-nha-e-learning-vnpt.jpg" /></td>
			<td><strong>VNPT E-Learning (Phần mềm dạy học trực tuyến)</strong><br />
			VNPT E-Learning - Dịch vụ nền tảng học v&agrave; thi trực tuyến l&agrave; một hệ thống Quản l&yacute; đ&agrave;o tạo trực tuyến, nhằm hỗ trợ c&ocirc;ng cụ đ&agrave;o tạo online cho c&aacute;c Sở/Ph&ograve;ng/ Nh&agrave; trường gi&uacute;p đ&agrave;o tạo gi&aacute;o vi&ecirc;n, học sinh n&acirc;ng cao tr&igrave;nh độ b&ecirc;n cạnh c&aacute;c phương thức dạy truyền thống với chi ph&iacute; thấp v&agrave; thời gian triển khai nhanh ch&oacute;ng dựa tr&ecirc;n nền tảng điện to&aacute;n đ&aacute;m m&acirc;y hiện đại.</td>
		</tr>
		<tr>
			<td><strong>VnEdu-Quiz (Phần mềm chấm thi trắc nghiệm)</strong><br />
			Phần mềm chấm thi trắc nghiệm l&agrave; c&ocirc;ng cụ hỗ trợ đắc lực cho Nh&agrave; trường, gi&aacute;o vi&ecirc;n trong c&ocirc;ng t&aacute;c chấm thi, nhập điểm qua h&igrave;nh thức trắc nghiệm, g&oacute;p phần giảm thiểu thời gian, c&ocirc;ng sức của gi&aacute;o vi&ecirc;n v&agrave; đảm bảo t&iacute;nh ch&iacute;nh x&aacute;c, minh bạch trong việc đ&aacute;nh gi&aacute; kết quả học tập của học sinh tại Nh&agrave; trường.&nbsp;</td>
			<td>&nbsp;<img alt="" src="https://huecit.vn/Portals/3/Dichvu/DaiLyCap1_VNPT/HueCIT_phan-mem-thi-trac-nghiem.jpg" /></td>
		</tr>
		<tr>
			<td>&nbsp;<img alt="" src="https://huecit.vn/Portals/3/Dichvu/DaiLyCap1_VNPT/HueCIT_Trung-tam-dieu-hanh-giao-duc-vnpt-ioc_ung-dung-cntt-cho-giao-duc-moi-nhat.jpg" /></td>
			<td><strong>VnEdu-IOC (Trung t&acirc;m điều h&agrave;nh gi&aacute;o dục)</strong><br />
			Hệ thống &ldquo;Trung t&acirc;m điều h&agrave;nh gi&aacute;o dục&rdquo; x&acirc;y dựng nhằm mục ti&ecirc;u:<br />
			- Cung cấp bức tranh to&agrave;n cảnh của gi&aacute;o dục tr&ecirc;n cơ sở tập hợp th&ocirc;ng tin dữ liệu của tất cả c&aacute;c hệ thống th&ocirc;ng minh v&agrave; c&aacute;c nguồn dữ liệu kh&aacute;c, đồng thời đưa ra c&aacute;c chỉ số đo lường hoạt động của từng hệ thống (KPI);<br />
			- Truy nhập thời gian thực đến c&aacute;c hệ th&ocirc;ng ứng dụng th&ocirc;ng minh của gi&aacute;o dục;<br />
			- T&iacute;ch hợp c&ocirc;ng cụ tương t&aacute;c v&agrave; hỗ trợ ra quyết định kịp thời;<br />
			- Cung cấp cho L&atilde;nh đạo Ph&ograve;ng, Sở c&aacute;c thống k&ecirc;, b&aacute;o c&aacute;o;<br />
			- Tối ưu ho&aacute; c&aacute;c dịch vụ của Gi&aacute;o dục bằng c&aacute;ch cải thiện hiệu suất v&agrave; giảm chi ph&iacute;;<br />
			- Quản l&yacute; v&agrave; khắc phục sự cố bằng việc tổ chức phản ứng xử l&yacute; nhanh;<br />
			- Ph&acirc;n t&iacute;ch v&agrave; đưa ra c&aacute;c dự b&aacute;o về c&aacute;c sự kiện tương lai.</td>
		</tr>
		<tr>
			<td><strong>VnEduQoE</strong><br />
			Hệ thốngKiểm định chất lượng gi&aacute;o dục l&agrave; c&ocirc;ng cụ hỗ trợ cơ sở gi&aacute;o dục tự đ&aacute;nh gi&aacute; về chất lượng hoạt động gi&aacute;o dục, cơ sở vật chất, vấn đề li&ecirc;n quan của nh&agrave; trường v&agrave; Cơ quan Quản l&yacute; Nh&agrave; nước về gi&aacute;o dục trong c&ocirc;ng t&aacute;c đ&aacute;nh gi&aacute; ngo&agrave;i để x&aacute;c định mức đạt được theo ti&ecirc;u chuẩn đ&aacute;nh gi&aacute; của Bộ Gi&aacute;o dục &amp; Đ&agrave;o tạo.<br />
			VnEdu-Qoe l&agrave; sản phẩm hỗ trợ tối ưu c&ocirc;ng t&aacute;c quản l&yacute; hoạt động gi&aacute;o dục tr&ecirc;n m&ocirc;i trường mạng, hỗ trợ tốt cho c&aacute;c nh&oacute;m kh&aacute;ch h&agrave;ng: Sở Gi&aacute;o dục &amp; Đ&agrave;o tạo, Ph&ograve;ng Gi&aacute;o dục &amp; Đ&agrave;o tạo, Trường học...</td>
			<td>&nbsp;<img alt="" src="https://huecit.vn/Portals/3/Dichvu/DaiLyCap1_VNPT/HueCIT_mang-giao-duc-viet-nam-vnedu.jpg" /></td>
		</tr>
		<tr>
			<td>&nbsp;<img alt="" src="https://huecit.vn/Portals/3/Dichvu/DaiLyCap1_VNPT/HueCIT_Dich-vu-chu-ky-so-vnpt.jpg" /></td>
			<td><strong>VNPT-CA</strong><br />
			Chữ k&yacute; số được hiểu như con dấu điện tử của c&aacute; nh&acirc;n, doanh nghiệp, tổ chức.<br />
			Chứng thư số l&agrave; một dạng chứng thư điện tử do tổ chức cung cấp dịch vụ chứng thực chữ k&yacute; số CA cung cấp.<br />
			Chứng thư số tương tự như :<br />
			&ldquo;Giấy chứng nhận con dấu&rdquo; của doanh nghiệp&nbsp;<br />
			&ldquo;Chứng minh thư&rdquo; đối với c&aacute; nh&acirc;n Sử dụng tr&ecirc;n m&ocirc;i trường m&aacute;y t&iacute;nh v&agrave; Internet
			<p>&nbsp;</p>
			</td>
		</tr>
		<tr>
			<td><strong>Fiber VNN</strong><br />
			Dịch vụ c&aacute;p quang tốc độ cao do VNPT cung cấp l&agrave; dịch vụ truy cập Internet c&aacute;p quang hiện đại nhất của VNPT hiện nay với đường truyền ho&agrave;n to&agrave;n bằng c&aacute;p quang từ đầu nối đến người sử dụng.&nbsp;Với đường truyền n&agrave;y, kh&aacute;ch h&agrave;ng c&oacute; thể thoải m&aacute;i truy cập v&agrave;o mạng với tốc độ cao ổn định v&agrave; an to&agrave;n, kh&ocirc;ng chỉ trong nước m&agrave; c&ograve;n ra quốc tế. Người d&ugrave;ng Internet sẽ được sử dụng đường truyền tối thiểu 30 Mbps, tr&ecirc;n nhiều thiết bị v&agrave; tần suất sử dụng lớn với mức gi&aacute; kh&aacute; thấp so với mặt bằng chung.<br />
			<br />
			<strong>Những ưu điểm vượt trội:&nbsp;</strong><br />
			- Tốc độ cao v&agrave; ổn định<br />
			- Hệ thống phủ khắp cả nước<br />
			- Miễn ph&iacute; sử dụng Modem&nbsp;khi đăng k&yacute; lắp đặt mạng Internet mới<br />
			- Miễn ph&iacute; cước lắp đặt&nbsp;cho những kh&aacute;ch h&agrave;ng thanh to&aacute;n trước tiền cước từ 6 th&aacute;ng.<br />
			- Đa dịch vụ tr&ecirc;n 1 đường d&acirc;y (dịch vụ Internet, dịch vụ MyTV...)&nbsp;<br />
			- An to&agrave;n, bảo mật cao với&nbsp;Phần mềm bảo mật F-Secure</td>
			<td>&nbsp;<img alt="" src="https://huecit.vn/Portals/3/Dichvu/DaiLyCap1_VNPT/HueCIT_Dich-vu-cap-quang-vnpt_fibervnn.jpg" /></td>
		</tr>
		<tr>
			<td>&nbsp;<img alt="" src="https://huecit.vn/Portals/3/Dichvu/DaiLyCap1_VNPT/HueCIT_dang-ky-ten-mien-domain_dich-vu-cntt-uy-tin-tai-hue.jpg" /></td>
			<td><strong>T&ecirc;n miền Domain</strong><br />
			T&ecirc;n miền (Domain name) l&agrave; định danh của website tr&ecirc;n Internet.&nbsp;T&ecirc;n miền ch&iacute;nh l&agrave; thương hiệu, l&agrave; &quot;t&agrave;i sản&quot; định danh của mỗi đơn vị, tổ chức, doanh nghiệp, c&aacute; nh&acirc;n. V&igrave; vậy, việc lựa chọn t&ecirc;n miền tốt cũng như dịch vụ cung cấp t&ecirc;n miền tốt sẽ gi&uacute;p c&aacute;c đơn vị, tổ chức, doanh nghiệp, c&aacute; nh&acirc;n y&ecirc;n t&acirc;m trong h&agrave;nh tr&igrave;nh ph&aacute;t triển của m&igrave;nh.</td>
		</tr>
		<tr>
			<td><strong>Web Hosting</strong><br />
			Web hosting l&agrave; nơi kh&ocirc;ng gian tr&ecirc;n m&aacute;y chủ c&oacute; c&agrave;i dịch vụ Internet như ftp,www, nơi đ&oacute; kh&aacute;ch h&agrave;ng c&oacute; thể chứa nội dung trang web hay dữ liệu của m&igrave;nh tr&ecirc;n kh&ocirc;ng gian đ&oacute;.<br />
			Dịch vụ Hosting của VNPT Thừa Thi&ecirc;n Huế đảm bảo:<br />
			- M&aacute;y chủ cấu h&igrave;nh mạnh, tốc độ cao, hỗ trợ nhiều ng&ocirc;n ngữ lập tr&igrave;nh, đảm bảo tối ưu nhất về chất lượng dịch vụ v&agrave; c&aacute;c giải ph&aacute;p cho người sử dụng.<br />
			- M&aacute;y chủ được kết nối trực tiếp với người d&ugrave;ng internet tại Việt Nam v&agrave; Quốc tế<br />
			- Được sự hỗ trợ nhiệt t&igrave;nh 24/7 của đội ngũ kỹ thuật vi&ecirc;n gi&agrave;u kinh nghiệm.</td>
			<td>&nbsp;<img alt="" src="https://huecit.vn/Portals/3/Dichvu/DaiLyCap1_VNPT/HueCIT_dich-vu-luu-tru-web_webhosting_VNPT-web.jpg" /></td>
		</tr>
	</tbody>
</table>

<p>&nbsp;</p>
', 0, NULL, N'dai-ly-phan-mem-dich-vu-16042024135318', CAST(N'2024-03-26T00:00:00.000' AS DateTime), NULL, N'Dân trí', N'H. Long', N'', N'Tiếng việt (Việt Nam)', 0, N'', 1, N'b51f7635-9fb5-4494-95a3-10b57d0b5cf4', N'', CAST(N'2024-03-21T17:13:09.003' AS DateTime), CAST(N'2024-04-16T13:53:21.423' AS DateTime), 10023, 2, N'', N'', N'', N'', NULL, NULL, 0, 0)
INSERT [dbo].[TB_BaiViet] ([ID], [TieuDe], [AnhDaiDien], [Thumbnail], [MoTaAnhDaiDien], [TomTat], [NoiDung], [TieuDiem], [ThuTuHienThi], [URLBaiViet], [NgayCongBo], [HetHanCongBo], [NguonTin], [TacGia], [TacQuyen], [NgonNgu], [LuotXem], [TuKhoa], [TrangThai], [ChuyenMucID], [ChuyenMucKhacID], [CreatedOnDate], [LastModifiedOnDate], [CreatedByUserID], [LastModifiedByUserID], [DienThoai], [Email], [DiaChi], [Website], [GioMoCua], [GioDongCua], [ToaDoX], [ToaDoY]) VALUES (N'40811088-68cb-4556-8e79-e7f67d8842fa', N'Thư mời', N'', N'', N'Thư gửi quý khách hàng', N'Hơn 20 năm hình thành và phát triển, HueCIT đã từng bước khẳng định vai trò của mình trong việc tham vấn các chính sách về CNTT cho tỉnh Thừa Thiên Huế, công tác đào tạo nguồn nhân lực CNTT cũng như tổ chức xây dựng, phát triển và cung cấp các giải pháp ứng dụng, các dịch vụ CNTT tổng thể cho các cơ quan, doanh nghiệp.', N'<div class="news_list_detail">
<div class="groupmenuheader">
<div class="container_module_title">
<h4>Thực hiện chủ trương của UBND tỉnh Thừa Thi&ecirc;n Huế về việc hỗ trợ c&aacute;c doanh nghiệp phần mềm <a href="/Upload/BaiViet/2024/B1-2c-TMDA_1726221002.doc">/Upload/BaiViet/2024/B1-2c-TMDA_1726221002.doc</a>ph&aacute;t triển v&agrave; k&ecirc;u gọi c&aacute;c doanh nghiệp phần mềm đầu tư v&agrave;o tỉnh Thừa Thi&ecirc;n Huế, năm 2012 <strong>C&ocirc;ng vi&ecirc;n phần mềm Thừa Thi&ecirc;n Huế (Hue Software Park - HueSP)</strong>&nbsp;trực thuộc Trung t&acirc;m CNTT tỉnh Thừa Thi&ecirc;n Huế (HueCIT) được th&agrave;nh lập. Với nhiều ch&iacute;nh s&aacute;ch hỗ trợ c&ugrave;ng với vị tr&iacute; địa l&yacute; thuận tiện, đến nay, HueSP đ&atilde; thu h&uacute;t được hơn 35 lượt doanh nghiệp trong v&agrave; ngo&agrave;i nước tham gia, hiện tại đang vận h&agrave;nh với 14 doanh nghiệp hoạt động trong lĩnh vực CNTT với số lượng người l&agrave;m việc thường xuy&ecirc;n l&agrave; khoảng 200 người.&nbsp;</h4>
</div>
</div>

<div class="news_content">
<p style="margin-left:0; margin-right:0; text-align:justify">H&agrave;ng năm, Trung t&acirc;m đ&oacute;n tiếp trung b&igrave;nh khoảng 20 đo&agrave;n kh&aacute;ch trong nước v&agrave; nước ngo&agrave;i đến t&igrave;m kiếm cơ hội đầu tư trong lĩnh vực CNTT tại Thừa Thi&ecirc;n Huế.&nbsp;C&aacute;c doanh nghiệp tham gia v&agrave;o HueSP c&oacute; cơ hội hợp t&aacute;c vừa c&oacute; điều kiện học hỏi kinh nghiệm c&ugrave;ng nhau ph&aacute;t triển g&oacute;p phần th&uacute;c đẩy sự ph&aacute;t triển chung của ng&agrave;nh CNTT tại Thừa Thi&ecirc;n Huế.</p>

<p style="margin-left:0; margin-right:0; text-align:center"><img alt="" src="http://huecit.vn/Portals/3/GioiThieu/HueCIT_Khu-keu-goi-dau-tu-cong-vien-phan-mem-hue-1.jpg" style="text-align:center" /></p>

<p style="margin-left:0; margin-right:0; text-align:justify">Ng&agrave;y 25/12/2019,&nbsp;HueCIT ch&iacute;nh thức trở th&agrave;nh th&agrave;nh vi&ecirc;n Chuỗi C&ocirc;ng vi&ecirc;n phần mềm Quang Trung (QTSC) theo quyết định ph&ecirc; duyệt số 1898/QĐ-TTg của Thủ tướng Ch&iacute;nh phủ. Theo đ&oacute;, c&aacute;c doanh nghiệp CNTT khi tham gia v&agrave;o HueSP (bao gồm: <strong>T&ograve;a nh&agrave; HueCIT</strong> - 06 L&ecirc; Lợi v&agrave;&nbsp;<strong>Khu E - Đ&ocirc; thị mới An V&acirc;n Dương</strong> (11 552 m<sup>2</sup>))&nbsp;sẽ được hưởng c&aacute;c ch&iacute;nh s&aacute;ch ưu đ&atilde;i của Khu CNTT tập trung c&ugrave;ng những ch&iacute;nh s&aacute;ch ưu đ&atilde;i kh&aacute;c của tỉnh Thừa Thi&ecirc;n Huế.&nbsp; Đ&acirc;y l&agrave; bước đệm để Thừa Thi&ecirc;n Huế h&igrave;nh th&agrave;nh Khu CNTT tập trung, g&oacute;p phần trong việc thực hiện Nghị quyết số 54-NQ/TW của Bộ Ch&iacute;nh trị về X&acirc;y dựng v&agrave; ph&aacute;t triển tỉnh Thừa Thi&ecirc;n Huế đến năm 2030, tầm nh&igrave;n 2045, trong đ&oacute; lấy&nbsp;c&ocirc;ng nghệ th&ocirc;ng tin v&agrave; truyền th&ocirc;ng l&agrave; ng&agrave;nh đột ph&aacute;.</p>

<p style="margin-left:0; margin-right:0; text-align:center"><img alt="" src="/Portals/3/GioiThieu/HueCIT_Khu-keu-goi-dau-tu-cong-vien-phan-mem-hue-2.jpg" /></p>

<p style="margin-left:0; margin-right:0; text-align:center"><em>M&ocirc; h&igrave;nh dự &aacute;n t&ograve;a nh&agrave; HueCIT tại Khu E - Đ&ocirc; thị mới An V&acirc;n Dương đang ho&agrave;n tất c&aacute;c thủ tục, sẽ khởi c&ocirc;ng v&agrave;o năm 2021.</em></p>

<p style="margin-left:0; margin-right:0; text-align:justify">Với chức năng l&agrave; đơn vị đầu mối đại diện cho tỉnh Thừa Thi&ecirc;n Huế trong việc hỗ trợ doanh nghiệp (tư vấn ph&aacute;p l&yacute;, hỗ trợ c&aacute;c thủ tục h&agrave;nh ch&iacute;nh li&ecirc;n quan...) cũng như k&ecirc;u gọi thu h&uacute;t đầu tư tr&ecirc;n địa b&agrave;n tỉnh, HueCIT mong muốn được giới thiệu v&agrave; hợp t&aacute;c với Qu&yacute; Kh&aacute;ch h&agrave;ng tiềm năng về Khu B - Đ&ocirc; thị mới An V&acirc;n Dương, nơi m&agrave; HueCIT đang được UBND tỉnh giao l&agrave;m Chủ đầu tư. Dự &aacute;n với tổng diện t&iacute;ch 39,6ha n&agrave;y được x&acirc;y dựng để trở th&agrave;nh Th&agrave;nh phố truyền th&ocirc;ng th&ocirc;ng minh của tỉnh Thừa Thi&ecirc;n Huế, l&agrave; bước triển khai của Đề &aacute;n &quot;Ph&aacute;t triển dịch vụ đ&ocirc; thị th&ocirc;ng minh tr&ecirc;n địa b&agrave;n tỉnh Thừa Thi&ecirc;n - Huế đến năm 2020 định hướng đến năm 2025&quot;.</p>

<p style="margin-left:0; margin-right:0; text-align:center"><em><img alt="" src="/Portals/3/GioiThieu/HueCIT_Khu-B-Do-thi-moi-An-Van-Duong_Thanh-pho-truyen-thong-thong-minh-thua-thien-hue.jpg" /></em></p>

<p style="margin-left:0; margin-right:0; text-align:center"><em>Khu B - Khu Đ&ocirc; thị mới An V&acirc;n Dương với m&ocirc; h&igrave;nh x&acirc;y dựng Th&agrave;nh phố truyền th&ocirc;ng th&ocirc;ng minh tỉnh Thừa Thi&ecirc;n Huế</em></p>

<p style="margin-left:0; margin-right:0; text-align:justify">Sở hữu đội ngũ nh&acirc;n sự tr&igrave;nh độ cao, c&oacute; nhiều kinh nghiệm cũng như <span style="font-family:inherit; font-size:inherit">đội ngũ tư vấn vi&ecirc;n nhiệt t&igrave;nh,&nbsp;</span>lu&ocirc;n lắng nghe những &yacute; kiến đ&oacute;ng g&oacute;p, chia sẻ v&agrave; đ&aacute;p ứng tối đa c&aacute;c y&ecirc;u cầu từ ph&iacute;a kh&aacute;ch h&agrave;ng, đến với HueCIT, Qu&yacute; kh&aacute;ch h&agrave;ng sẽ lựa chọn được những dịch vụ ph&ugrave; hợp nhất, tối ưu nhất.</p>

<p style="margin-left:0; margin-right:0; text-align:justify">Với định hướng ph&aacute;t triển &quot;HueCIT - Một điểm đến đa mục ti&ecirc;u&quot;, chắc chắn rằng những dịch vụ m&agrave; HueCIT cung cấp sẽ đem lại những trải nghiệm tuyệt vời cũng như sự h&agrave;i l&ograve;ng cho Qu&yacute; kh&aacute;ch h&agrave;ng.</p>

<p><strong><span style="color:#00b0f0"><a href="https://www.facebook.com/Huecit/">H</a><a href="https://www.facebook.com/Huecit/">ueCIT</a></span></strong> rất h&acirc;n hạnh v&agrave; mong muốn hợp t&aacute;c với Qu&yacute; Kh&aacute;ch h&agrave;ng!</p>

<p style="text-align:right">&nbsp;GI&Aacute;M ĐỐC TRUNG T&Acirc;M</p>

<p style="text-align:right"><strong>Ho&agrave;ng Bảo H&ugrave;ng&nbsp; &nbsp; &nbsp;&nbsp;</strong></p>
</div>

<div class="clearfloat">&nbsp;</div>

<div class="clearfloat">&nbsp;</div>
<!-- Your like button code -->

<div class="fb-share-button fb_iframe_widget text-center"><iframe frameborder="0" height="1000px" name="fb415eb6351b4764c" sandbox="" scrolling="no" src="https://www.facebook.com/v2.5/plugins/share_button.php?app_id=1003337709730939&amp;channel=https%3A%2F%2Fstaticxx.facebook.com%2Fx%2Fconnect%2Fxd_arbiter%2F%3Fversion%3D46%23cb%3Df0e48feb5a6e35d6f%26domain%3Dhuecit.vn%26is_canvas%3Dfalse%26origin%3Dhttps%253A%252F%252Fhuecit.vn%252Ffca94c6ae020f5a61%26relation%3Dparent.parent&amp;container_width=1903&amp;href=https%3A%2F%2Fhuecit.vn%2FDich-vu%2FTin-tuc-chi-tiet%2Ftid%2FThu-gui-Quy-khach-hang%2Fpid%2F737%2Fcid%2F737&amp;layout=button_count&amp;locale=vi_VN&amp;sdk=joey" style="border: none; visibility: visible; width: 86px; height: 20px;" title="fb:share_button Facebook Social Plugin" width="1000px"></iframe></div>
</div>
', 0, NULL, N'thu-moi-13092024165018', NULL, NULL, N'', N'', N'', N'Tiếng việt (Việt Nam)', 0, N'', 1, N'b482ca4e-6668-4521-b0e7-99f91a9e04e4', N'', CAST(N'2024-07-02T13:51:42.063' AS DateTime), CAST(N'2024-09-13T16:49:48.413' AS DateTime), 2, 2, N'', N'', N'', N'', NULL, NULL, 0, 0)
INSERT [dbo].[TB_BaiViet] ([ID], [TieuDe], [AnhDaiDien], [Thumbnail], [MoTaAnhDaiDien], [TomTat], [NoiDung], [TieuDiem], [ThuTuHienThi], [URLBaiViet], [NgayCongBo], [HetHanCongBo], [NguonTin], [TacGia], [TacQuyen], [NgonNgu], [LuotXem], [TuKhoa], [TrangThai], [ChuyenMucID], [ChuyenMucKhacID], [CreatedOnDate], [LastModifiedOnDate], [CreatedByUserID], [LastModifiedByUserID], [DienThoai], [Email], [DiaChi], [Website], [GioMoCua], [GioDongCua], [ToaDoX], [ToaDoY]) VALUES (N'd159b36b-4538-4a8e-b74f-ea60fe508977', N'HueCIT và Công ty TNHH MTV YST (Hàn Quốc) ký kết hợp tác về đào tạo nguồn nhân lực đồ họa về VR-3D, 360', N'https://huecit.vn/Portals/0/Medias/Nam2024/T4/HueCIT_Ky-Ket-Dao-Tao-Voi-YST-Han-Quoc-ve-Thuc-Te-Ao-3.jpg', N'https://huecit.vn/Portals/0/Medias/Nam2024/T4/HueCIT_Ky-Ket-Dao-Tao-Voi-YST-Han-Quoc-ve-Thuc-Te-Ao-3.jpg', N'HueCIT và Công ty TNHH MTV YST (Hàn Quốc) ký kết hợp tác về đào tạo nguồn nhân lực đồ họa về VR-3D, 360', N'Sau thời gian tìm hiểu, làm việc và xác định nhu cầu cũng như khả năng hợp tác trong lĩnh vực đào tạo nguồn nhân lực chất lượng cao, chiều ngày 01/4, tại trụ sở HueCIT (06 Lê Lợi, Tp. Huế), Trung tâm CNTT tỉnh Thừa Thiên Huế và Công ty TNHH MTV YST, Hàn Quốc (YST) đã có buổi làm việc và ký kết biên bản ghi nhớ hợp tác nhằm bồi dưỡng nhân tài chuyên môn và đào tạo ứng dụng các phần mềm phát triển nội dung thực tế ảo để phát triển nguồn nhân lực đồ họa.', N'<p>ham dự buổi l&agrave;m việc v&agrave; k&yacute; kết, về ph&iacute;a YST c&oacute; &Ocirc;ng Jeon Yeong Saeng- Tổng gi&aacute;m đốc YST H&agrave;n Quốc; &Ocirc;ng Han Sang il- Gi&aacute;m đốc kinh doanh; B&agrave; Park Eunjung - Gi&aacute;m đốc chi nh&aacute;nh YST Việt Nam c&ugrave;ng bộ phận Phi&ecirc;n dịch v&agrave; Thư k&yacute; của C&ocirc;ng ty.</p>

<p>Về ph&iacute;a HueCIT c&oacute; &Ocirc;ng L&ecirc; Vĩnh Chiến &ndash; Gi&aacute;m đốc; &Ocirc;ng Đỗ Xu&acirc;n Huyền - Trưởng ph&ograve;ng Ph&ograve;ng Đ&agrave;o tạo v&agrave; Bồi dưỡng; B&agrave; Ho&agrave;ng Thị Ngọc Dung - Trưởng ph&ograve;ng Ph&ograve;ng Kế hoạch v&agrave; Tổng hợp; &Ocirc;ng V&otilde; Huy Hiểu - Trưởng ph&ograve;ng Ph&ograve;ng Chuyển đổi số c&ugrave;ng c&aacute;c &Ocirc;ng/B&agrave; l&agrave; Ph&oacute; Trưởng ph&ograve;ng chuy&ecirc;n m&ocirc;n v&agrave; phụ tr&aacute;ch truyền th&ocirc;ng thuộc HueCIT.</p>

<p><img alt="" src="https://huecit.vn/Portals/0/TinHoatDong/Nam2024/YST-HAN-QUOC/HueCIT_Ky-Ket-Dao-Tao-Voi-YST-Han-Quoc-ve-Thuc-Te-Ao-6.jpg?ver=2024-04-02-115033-613" title="" /></p>

<p><em>To&agrave;n cảnh buổi l&agrave;m việc giữa HueCIT v&agrave; YST H&agrave;n Quốc</em></p>

<p>Tại buổi l&agrave;m việc, ph&iacute;a YST H&agrave;n Quốc đ&atilde; c&oacute; những trao đổi cụ thể trong việc phối hợp triển khai c&aacute;c kh&oacute;a đ&agrave;o tạo miễn ph&iacute; tại HueCIT th&ocirc;ng qua c&aacute;c kh&oacute;a học đ&agrave;o tạo ứng dụng c&aacute;c phần mềm ph&aacute;t triển nội dung thực tế ảo (VR-3D, 360,...) cho c&aacute;c đối tượng c&oacute; năng lực chuy&ecirc;n m&ocirc;n về CNTT, thiết kế đồ họa, mỹ thuật... cũng như c&oacute; nhu cầu ph&aacute;t triển năng lực bản th&acirc;n trong lĩnh vực mới về thực tế ảo.&nbsp;</p>

<p>&Ocirc;ng Jeon Yeong Saeng- Tổng gi&aacute;m đốc YST H&agrave;n Quốc cho biết đ&acirc;y sẽ l&agrave; c&aacute;c ứng vi&ecirc;n cho YST tiếp nhận học việc, thử việc v&agrave; tuyển dụng sau đ&oacute; nếu đ&aacute;p ứng được c&aacute;c y&ecirc;u cầu, ti&ecirc;u chuẩn của YST m&agrave; trước mắt l&agrave; sự đ&aacute;nh gi&aacute; chất lượng học vi&ecirc;n đến từ HueCIT v&agrave; c&aacute;c chuy&ecirc;n gia giảng dạy th&ocirc;ng qua qu&aacute; tr&igrave;nh đ&agrave;o tạo trực tiếp của c&aacute;c kh&oacute;a học.</p>

<p>Ph&aacute;t biểu tại buổi l&agrave;m việc, &Ocirc;ng L&ecirc; Vĩnh Chiến, Gi&aacute;m đốc HueCIT cho biết: Với kinh nghiệm đ&agrave;o tạo v&agrave; giảng dạy trong lĩnh vực CNTT v&agrave; ứng dụng CNTT trong hơn 23 năm qua, c&ugrave;ng hệ thống trang thiết bị m&aacute;y m&oacute;c, hạ tầng hiện đại với sự quan t&acirc;m, đầu tư từ tỉnh Thừa Thi&ecirc;n Huế, HueCIT rất sẵn s&agrave;ng trong việc phối hợp với c&aacute;c đơn vị, tổ chức như YST H&agrave;n Quốc trong việc đ&agrave;o tạo nguồn nh&acirc;n lực chất lượng cao theo y&ecirc;u cầu của doanh nghiệp. Đ&acirc;y l&agrave; hoạt động thiết thực nhằm mở ra cơ hội học tập v&agrave; việc l&agrave;m cho sinh vi&ecirc;n CNTT v&agrave; c&aacute;c ng&agrave;nh ứng dụng CNTT li&ecirc;n quan tại Huế, g&oacute;p phần ph&aacute;t triển nguồn nh&acirc;n lực CNTT theo định hướng của tỉnh Thừa Thi&ecirc;n Huế trong định hướng phấn đấu trở th&agrave;nh Th&agrave;nh phố trực thuộc trung ương trong thời gian tới.</p>
', 1, NULL, N'huecit-va-cong-ty-tnhh-mtv-yst-han-quoc-ky-ket-hop-tac-ve-dao-tao-nguon-nhan-luc-do-hoa-ve-vr3d-360-17042024144937', CAST(N'2024-04-05T00:00:00.000' AS DateTime), NULL, N'', N'', N'', N'Tiếng việt (Việt Nam)', 0, N'', 1, N'b87d10b9-5835-4c3c-a0c1-507d65746850', N'94F2B4CE-4E63-40E5-BAB6-02C662DB6978', CAST(N'2024-04-05T08:48:41.020' AS DateTime), CAST(N'2024-04-17T14:50:19.657' AS DateTime), 2, 2, N'', N'', N'', N'', NULL, NULL, 0, 0)
INSERT [dbo].[TB_BaiViet] ([ID], [TieuDe], [AnhDaiDien], [Thumbnail], [MoTaAnhDaiDien], [TomTat], [NoiDung], [TieuDiem], [ThuTuHienThi], [URLBaiViet], [NgayCongBo], [HetHanCongBo], [NguonTin], [TacGia], [TacQuyen], [NgonNgu], [LuotXem], [TuKhoa], [TrangThai], [ChuyenMucID], [ChuyenMucKhacID], [CreatedOnDate], [LastModifiedOnDate], [CreatedByUserID], [LastModifiedByUserID], [DienThoai], [Email], [DiaChi], [Website], [GioMoCua], [GioDongCua], [ToaDoX], [ToaDoY]) VALUES (N'8316d0ab-4261-456b-914d-eab3fc92a708', N'HUECIT-OPEN DATA - HỆ THỐNG DỮ LIỆU MỞ TỈNH THỪA THIÊN HUẾ', N'/Upload\BaiViet\2024\HueCIT_OpenData_Home_1712048747.jpg', N'https://huecit.vn/Portals/3/Medias/Nam2021/T8/Avatar_500x375_OpenDataThuaThienHue_10_8_2021_09_23_44_456_SA.jpg', N'HUECIT-OPEN DATA - HỆ THỐNG DỮ LIỆU MỞ TỈNH THỪA THIÊN HUẾ', N'Trong xã hội Internet toàn cầu như hiện nay, việc tìm kiếm tri thức trở nên dễ dàng hơn bao giờ hết. Chỉ với một cú click chuột, mọi người đã có thể thu về cho mình hàng trăm, thậm chí hàng ngàn kết quả tìm kiếm trong vài giây. Dữ liệu trực tuyến dần trở thành tài nguyên được ví như “dầu mỏ của nền kinh tế số”.

Nhằm khai có hiệu quả hệ thống cơ sở dữ liệu dùng chung, hiện đại hóa kết cấu hạ tầng CNTT của địa phương trên tất cả các lĩnh vực, đặc biệt là nguồn dữ liệu phục vụ cho hoạt động khởi n', N'<p>aaa</p>
', 0, NULL, N'huecitopen-data-he-thong-du-lieu-mo-tinh-thua-thien-hue-17042024135425', CAST(N'2024-04-01T00:00:00.000' AS DateTime), NULL, N'', N'', N'', N'Tiếng việt (Việt Nam)', 0, N'', 1, N'6eee995f-d0f9-4951-8882-706cf843c0be', N'', CAST(N'2024-04-01T14:41:57.917' AS DateTime), CAST(N'2024-04-17T13:55:06.843' AS DateTime), 2, 2, N'', N'', N'', N'', NULL, NULL, 0, 0)
INSERT [dbo].[TB_BaiViet] ([ID], [TieuDe], [AnhDaiDien], [Thumbnail], [MoTaAnhDaiDien], [TomTat], [NoiDung], [TieuDiem], [ThuTuHienThi], [URLBaiViet], [NgayCongBo], [HetHanCongBo], [NguonTin], [TacGia], [TacQuyen], [NgonNgu], [LuotXem], [TuKhoa], [TrangThai], [ChuyenMucID], [ChuyenMucKhacID], [CreatedOnDate], [LastModifiedOnDate], [CreatedByUserID], [LastModifiedByUserID], [DienThoai], [Email], [DiaChi], [Website], [GioMoCua], [GioDongCua], [ToaDoX], [ToaDoY]) VALUES (N'f5dd6d40-3c21-4206-9871-f2a5ca512c7d', N'Phổ cập bộ nhận diện Ngày Chuyển đổi số quốc gia năm 2023', N'/Upload\BaiViet\2024\hanh,fds,_1712658096.webp', N'/Upload\BaiViet\2024\p2lDvjtInZuEaY18CFa9--1--zhve7_1712658096.jpg', N'', N'', N'<p>Hướng tới kỷ niệm Ng&agrave;y Chuyển đổi số quốc gia (10/10) v&agrave; tạo sức lan tỏa mạnh mẽ trong to&agrave;n x&atilde; hội, ng&agrave;y 18/9/2023, Bộ Th&ocirc;ng tin v&agrave; Truyền th&ocirc;ng ban h&agrave;nh C&ocirc;ng văn số 4754/BTTTT-CĐSQG về việc phổ cập bộ nhận diện Ng&agrave;y Chuyển đổi số quốc gia năm 2023</p>

<p>Theo đ&oacute;,&nbsp;Bộ Th&ocirc;ng tin v&agrave; Truyền th&ocirc;ng đề nghị c&aacute;c địa phương thực hiện phổ cập, truyền th&ocirc;ng bộ nhận diện Ng&agrave;y Chuyển đổi số quốc gia năm 2023 th&ocirc;ng qua việc hiển thị bộ nhận diện tr&ecirc;n Cổng th&ocirc;ng tin điện tử của cơ quan, địa phương; tr&ecirc;n c&aacute;c bảng điện tử, m&agrave;n h&igrave;nh c&ocirc;ng cộng thuộc sự quản l&yacute;; tr&ecirc;n c&aacute;c trang web, ứng dụng di động của c&aacute;c bộ, ng&agrave;nh, địa phương v&agrave; tr&ecirc;n c&aacute;c b&aacute;o điện tử của ng&agrave;nh, lĩnh vực, địa phương quản l&yacute;. Thời gian triển khai từ ng&agrave;y 01 - 10/10.</p>

<p>Đồng thời, đưa bộ nhận diện Ng&agrave;y Chuyển đổi số quốc gia v&agrave;o c&aacute;c ấn phẩm trực tuyến v&agrave; trực tiếp của c&aacute;c sự kiện hưởng ứng Ng&agrave;y Chuyển đổi số quốc gia năm 2023.</p>

<p><img alt="" src="https://huecit.vn/Portals/0/TinChuyenNganh/Nam2023/HueCIT_Ngay-chuyen-doi-so-quoc-gia-10-10.png?ver=2023-10-02-180010-140" title="" /><img alt="" src="https://huecit.vn/Portals/0/Hue24h/ChuyenDoiSo/Nam2023/Khamphahue_ngay-chuyen-doi-so-quoc-gia-2023.jpg?ver=2023-10-02-174729-463" title="" /></p>

<p><strong>C&aacute;ch thay ảnh đại diện c&oacute; k&egrave;m khung h&igrave;nh avatar về Ng&agrave;y Chuyển đổi số quốc gia:</strong></p>

<p><strong>Bước 1:</strong>&nbsp;Truy cập một trong 2 đường link dưới đ&acirc;y để lựa chọn mẫu khung avatar y&ecirc;u th&iacute;ch:</p>

<table align="center" border="1" cellpadding="1" cellspacing="2">
	<tbody>
		<tr>
			<td>
			<p><img alt="" src="https://huecit.vn/Portals/0/Hue24h/ChuyenDoiSo/Nam2023/Khamphahue_Bo-nhan-dien-ngay-chuyen-doi-so-quoc-gia-2023-avatar.jpg?ver=2023-10-02-173209-513" title="" /><img alt="" src="https://huecit.vn/Portals/0/TinChuyenNganh/Nam2023/Khamphahue_Bo-nhan-dien-ngay-chuyen-doi-so-quoc-gia-2023-avatar.jpg?ver=2023-10-02-175154-860" title="" /></p>

			<p><em><a href="https://khunghinh.net/p/1a2b1fbe02b3400a">https://khunghinh.net/p/1a2b1fbe02b3400a</a></em></p>
			</td>
			<td>
			<p><img alt="" src="https://huecit.vn/Portals/0/Hue24h/ChuyenDoiSo/Nam2023/Khamphahue_Bo-nhan-dien-ngay-chuyen-doi-so-quoc-gia-2023-avatar-2.png?ver=2023-10-02-173349-473" title="" /><img alt="" src="https://huecit.vn/Portals/0/TinChuyenNganh/Nam2023/Khamphahue_Bo-nhan-dien-ngay-chuyen-doi-so-quoc-gia-2023-avatar-2.png?ver=2023-10-02-175154-967" title="" /></p>

			<p><a href="https://khunghinh.net/p/1a2b1fbe02b3400a"><em>https://khunghinh.net/p/1a2b1fbe02b3400a</em></a></p>
			</td>
		</tr>
	</tbody>
</table>

<p><br />
<strong>Bước 2:</strong>&nbsp;Sau khi lựa chọn được mẫu y&ecirc;u th&iacute;ch, bấm &quot;Chọn h&igrave;nh&quot; ở ph&iacute;a dưới khung h&igrave;nh để tải ảnh l&ecirc;n.</p>

<p><strong>Bước 3:</strong>&nbsp;Sau khi tải ảnh l&ecirc;n, k&eacute;o v&agrave; di chuyển trực tiếp ảnh v&agrave;o trong khung h&igrave;nh, hoặc sử dụng thanh c&ocirc;ng cụ b&ecirc;n dưới để k&eacute;o v&agrave; chỉnh h&igrave;nh ảnh sao cho vừa vặn hiển thị.</p>

<p><strong>Bước 4:</strong>&nbsp;Sau khi đ&atilde; căn chỉnh xong, chọn &quot;Tiếp tục&quot;. Sau đ&oacute;, chọn &quot;Tải h&igrave;nh&quot; (khi thanh tải chạy hết l&agrave; bấm tải ảnh xuống).</p>

<p><strong>Bước 5:</strong>&nbsp;Thay ảnh đại diện tr&ecirc;n Zalo, Facebook v&agrave; c&aacute;c nền tảng mạng x&atilde; hội bằng h&igrave;nh ảnh vừa tải xuống.</p>

<p>Khuyến kh&iacute;ch người d&ugrave;ng thực hiện gắn thẻ c&aacute;c hashtag tr&ecirc;n nội dung b&agrave;i đăng thay ảnh: #ngaychuyendoisoquocgia #namdulieuso #10102023.</p>

<p>Tải bộ nhận diện tr&ecirc;n Cổng chuyển đổi số quốc gia tại địa chỉ:&nbsp;<a href="https://dx.gov.vn/">https://dx.gov.vn</a>, hoặc qu&eacute;t m&atilde; QR dưới đ&acirc;y:</p>

<p><img alt="" src="https://huecit.vn/Portals/0/TinChuyenNganh/Nam2023/HueCIT_MaQR_BoNhanDienThuongHieu_NgayChueynDoiSoQuocGia2023.jpg?ver=2023-10-02-175739-950" title="" /></p>

<p><em>Qu&eacute;t m&atilde; QR để tải bộ nhận diện Ng&agrave;y Chuyển đổi số quốc gia năm 2023.</em></p>
', 0, NULL, N'pho-cap-bo-nhan-dien-ngay-chuyen-doi-so-quoc-gia-nam-2023-09042024172136', CAST(N'2024-04-09T00:00:00.000' AS DateTime), NULL, N'Ban Truyền thông/HueCIT', N'Ban Truyền thông/HueCIT', N'Ban Truyền thông/HueCIT', N'Tiếng việt (Việt Nam)', 0, N'', 1, N'3a146610-64c3-4cbf-8129-127311b595e0', N'', CAST(N'2024-04-09T17:21:35.953' AS DateTime), NULL, 2, NULL, N'', N'', N'', N'', NULL, NULL, 0, 0)
INSERT [dbo].[TB_BaiViet] ([ID], [TieuDe], [AnhDaiDien], [Thumbnail], [MoTaAnhDaiDien], [TomTat], [NoiDung], [TieuDiem], [ThuTuHienThi], [URLBaiViet], [NgayCongBo], [HetHanCongBo], [NguonTin], [TacGia], [TacQuyen], [NgonNgu], [LuotXem], [TuKhoa], [TrangThai], [ChuyenMucID], [ChuyenMucKhacID], [CreatedOnDate], [LastModifiedOnDate], [CreatedByUserID], [LastModifiedByUserID], [DienThoai], [Email], [DiaChi], [Website], [GioMoCua], [GioDongCua], [ToaDoX], [ToaDoY]) VALUES (N'137fcf94-b7d7-4260-8c4f-f3d35e446071', N'Thiết kế mỹ thuật đa phương tiện', N'/Upload\BaiViet\2024\ce1225f92e766b3a87113dc69560e88f_1712046875.jpg', N'/Upload\BaiViet\2024\HueCIT-ThietKeDoHoa_1713250508.jpg', N'Donec quis orci eget orci vehicula condimentum. Curabitur in libero ut massa volutpat convallis.', N'HueCIT cung cấp các dịch vụ thiết kế đa dạng như: Website (thiết kế giao diện hoặc xây dựng website trọn gói), Logo và biểu tượng, hệ thống nhận diện thương hiệu: slogan, business card, letterhead, envelope, brochure, poster, catalogue,…', N'<table>
	<tbody>
		<tr>
			<td>&nbsp;<img alt="" src="https://huecit.vn/Portals/3/Dichvu/DichVu.jpg" /></td>
			<td>&nbsp;
			<p>Dịch vụ thiết kế Mỹ thuật đa phương tiện (Multimedia) của HueCIT mong muốn c&ugrave;ng bạn thu h&uacute;t sự quan t&acirc;m, t&iacute;n nhiệm của kh&aacute;ch h&agrave;ng từ những biểu tượng thương hiệu ấn tượng, đặc trưng, v&agrave; mang phong c&aacute;ch ri&ecirc;ng cho từng doanh nghiệp.</p>

			<p>Ch&uacute;ng t&ocirc;i c&oacute; nhiều kinh nghiệm trong việc thiết kế mẫu website đẹp, tiện lợi, tương th&iacute;ch với cả m&aacute;y t&iacute;nh v&agrave; di động; thiết kế giao diện cho c&aacute;c ứng dụng v&agrave; tr&ograve; chơi tr&ecirc;n nền tảng Android v&agrave; iOS; thiết kế logo, biểu tượng, phim giới thiệu v.v&hellip;Đặc biệt ch&uacute;ng t&ocirc;i c&oacute; dịch vụ chỉnh sửa v&agrave; tối ưu h&oacute;a h&igrave;nh ảnh, gi&uacute;p kh&aacute;ch h&agrave;ng xử l&yacute; h&agrave;ng loạt h&igrave;nh ảnh sản phẩm, c&acirc;n chỉnh m&agrave;u sắc, bố cục, x&oacute;a ph&ocirc;ng nền. Sự kết hợp nhuần nhuyễn, v&agrave; chặt chẽ giữa c&aacute;c yếu tố mỹ thuật, c&ocirc;ng nghệ v&agrave; nội dung sẽ l&agrave;m n&ecirc;n sự s&aacute;ng tạo, chuy&ecirc;n nghiệp v&agrave; thuận tiện trong mỗi sản phẩm m&agrave; HueCIT mang đến cho qu&yacute; kh&aacute;ch.</p>
			</td>
		</tr>
	</tbody>
</table>
', 0, NULL, N'thiet-ke-my-thuat-da-phuong-tien-16042024135508', CAST(N'2024-01-28T00:00:00.000' AS DateTime), CAST(N'2024-04-28T00:00:00.000' AS DateTime), N'', N'', N'', N'Tiếng việt (Việt Nam)', 0, N'', 1, N'b51f7635-9fb5-4494-95a3-10b57d0b5cf4', N'', CAST(N'2024-04-02T15:34:40.543' AS DateTime), CAST(N'2024-04-16T13:55:11.153' AS DateTime), 2, 2, N'', N'', N'', N'', NULL, NULL, 0, 0)
GO
INSERT [dbo].[TB_ChuyenMuc] ([ID], [TenChuyenMuc], [ChuyenMucCapChaID], [BieuTuong], [AnhDaiDien], [MaChuyenMuc], [MoTaAnhDaiDien], [MoTa], [NoiDung], [SuDung], [ThuTuHienThi], [URLChuyenMuc], [MoLienKetOCuaSoMoi], [LoaiLienKet], [DiaChiLienKet], [NgonNgu], [CreatedByUserID], [LastModifiedByUserID], [CreatedOnDate], [LastModifiedOnDate], [IsMenu], [IsActive]) VALUES (N'94f2b4ce-4e63-40e5-bab6-02c662db6978', N'Tin tức', NULL, N'', N'', N'          ', NULL, NULL, NULL, 1, 5, N'tin-tuc', 0, 3, N'12', N'Tiếng việt (Việt Nam)', 2, NULL, CAST(N'2024-03-19T15:51:55.550' AS DateTime), CAST(N'2024-04-17T17:28:30.553' AS DateTime), 1, 0)
INSERT [dbo].[TB_ChuyenMuc] ([ID], [TenChuyenMuc], [ChuyenMucCapChaID], [BieuTuong], [AnhDaiDien], [MaChuyenMuc], [MoTaAnhDaiDien], [MoTa], [NoiDung], [SuDung], [ThuTuHienThi], [URLChuyenMuc], [MoLienKetOCuaSoMoi], [LoaiLienKet], [DiaChiLienKet], [NgonNgu], [CreatedByUserID], [LastModifiedByUserID], [CreatedOnDate], [LastModifiedOnDate], [IsMenu], [IsActive]) VALUES (N'4957b02c-ab2c-4642-952b-0990b32fb15a', N'Banner Ứng dụng chuyển đổi số cho Doanh nghiệp', N'fed5709b-ffe1-49ab-940d-66d47a897b24', NULL, N'/Upload\ChuyenMuc\2024\UngDungCDSDN_1713349688.png', N'          ', NULL, N'Ứng dụng chuyển đổi số cho Doanh nghiệp được vinh danh là một trong 27 đơn vị xuất sắc cả nước được tôn vinh ở hạng mục Sản phẩm, Dịch vụ, Giải pháp Công nghệ số tiêu biểu với sản phẩm Ứng dụng hỗ trợ Chuyển đổi số cho Doanh nghiệp.', NULL, 1, 2, N'banner-ung-dung-chuyen-doi-so-cho-doanh-nghiep', 0, 1, N'', N'Tiếng việt (Việt Nam)', 2, NULL, CAST(N'2024-04-17T17:28:08.297' AS DateTime), NULL, 1, 0)
INSERT [dbo].[TB_ChuyenMuc] ([ID], [TenChuyenMuc], [ChuyenMucCapChaID], [BieuTuong], [AnhDaiDien], [MaChuyenMuc], [MoTaAnhDaiDien], [MoTa], [NoiDung], [SuDung], [ThuTuHienThi], [URLChuyenMuc], [MoLienKetOCuaSoMoi], [LoaiLienKet], [DiaChiLienKet], [NgonNgu], [CreatedByUserID], [LastModifiedByUserID], [CreatedOnDate], [LastModifiedOnDate], [IsMenu], [IsActive]) VALUES (N'b51f7635-9fb5-4494-95a3-10b57d0b5cf4', N'Dịch vụ', NULL, N'', N'', N'          ', NULL, NULL, NULL, 1, 3, N'dich-vu', 0, 3, N'10', N'Tiếng việt (Việt Nam)', 2, NULL, CAST(N'2024-03-21T09:47:26.570' AS DateTime), CAST(N'2024-04-17T17:28:18.360' AS DateTime), 1, 0)
INSERT [dbo].[TB_ChuyenMuc] ([ID], [TenChuyenMuc], [ChuyenMucCapChaID], [BieuTuong], [AnhDaiDien], [MaChuyenMuc], [MoTaAnhDaiDien], [MoTa], [NoiDung], [SuDung], [ThuTuHienThi], [URLChuyenMuc], [MoLienKetOCuaSoMoi], [LoaiLienKet], [DiaChiLienKet], [NgonNgu], [CreatedByUserID], [LastModifiedByUserID], [CreatedOnDate], [LastModifiedOnDate], [IsMenu], [IsActive]) VALUES (N'3a146610-64c3-4cbf-8129-127311b595e0', N'Góc công nghệ', N'2f167597-9f57-4a03-9feb-3013eabedf53', N'', N'', N'          ', NULL, NULL, NULL, 1, 0, N'goc-cong-nghe', 0, 1, N'', N'Tiếng việt (Việt Nam)', 2, NULL, CAST(N'2024-04-09T17:16:12.837' AS DateTime), CAST(N'2024-04-09T17:16:19.137' AS DateTime), 0, 0)
INSERT [dbo].[TB_ChuyenMuc] ([ID], [TenChuyenMuc], [ChuyenMucCapChaID], [BieuTuong], [AnhDaiDien], [MaChuyenMuc], [MoTaAnhDaiDien], [MoTa], [NoiDung], [SuDung], [ThuTuHienThi], [URLChuyenMuc], [MoLienKetOCuaSoMoi], [LoaiLienKet], [DiaChiLienKet], [NgonNgu], [CreatedByUserID], [LastModifiedByUserID], [CreatedOnDate], [LastModifiedOnDate], [IsMenu], [IsActive]) VALUES (N'0c176d07-3354-448f-bcbf-1a2d299c8ec5', N'Quyền lợi được hưởng', N'39f89a2a-aff0-4de8-abe5-c6f114621c5b', NULL, NULL, N'          ', NULL, NULL, NULL, 1, 0, N'quyen-loi-duoc-huong', 0, 1, N'', N'Tiếng việt (Việt Nam)', 2, NULL, CAST(N'2024-04-15T09:26:13.657' AS DateTime), NULL, 0, 0)
INSERT [dbo].[TB_ChuyenMuc] ([ID], [TenChuyenMuc], [ChuyenMucCapChaID], [BieuTuong], [AnhDaiDien], [MaChuyenMuc], [MoTaAnhDaiDien], [MoTa], [NoiDung], [SuDung], [ThuTuHienThi], [URLChuyenMuc], [MoLienKetOCuaSoMoi], [LoaiLienKet], [DiaChiLienKet], [NgonNgu], [CreatedByUserID], [LastModifiedByUserID], [CreatedOnDate], [LastModifiedOnDate], [IsMenu], [IsActive]) VALUES (N'11930bab-964d-49eb-a089-2822e94845d9', N'Doanh nghiệp', N'fee4c680-5952-4b0a-ab24-5eefd52baee7', N'', N'', N'          ', NULL, NULL, NULL, 1, 3, N'doanh-nghiep', 0, 1, N'', N'Tiếng việt (Việt Nam)', 2, NULL, CAST(N'2024-03-19T15:52:39.167' AS DateTime), CAST(N'2024-03-29T14:41:14.740' AS DateTime), 1, 0)
INSERT [dbo].[TB_ChuyenMuc] ([ID], [TenChuyenMuc], [ChuyenMucCapChaID], [BieuTuong], [AnhDaiDien], [MaChuyenMuc], [MoTaAnhDaiDien], [MoTa], [NoiDung], [SuDung], [ThuTuHienThi], [URLChuyenMuc], [MoLienKetOCuaSoMoi], [LoaiLienKet], [DiaChiLienKet], [NgonNgu], [CreatedByUserID], [LastModifiedByUserID], [CreatedOnDate], [LastModifiedOnDate], [IsMenu], [IsActive]) VALUES (N'f1ac63bb-7eba-4041-8c70-2c70d8e64133', N'Tin chuyên ngành', N'94f2b4ce-4e63-40e5-bab6-02c662db6978', N'', N'', N'          ', NULL, NULL, NULL, 1, 0, N'tin-chuyen-nganh', 0, 1, N'', N'Tiếng việt (Việt Nam)', 2, NULL, CAST(N'2024-04-04T10:00:36.087' AS DateTime), CAST(N'2024-04-17T18:18:13.787' AS DateTime), 1, 0)
INSERT [dbo].[TB_ChuyenMuc] ([ID], [TenChuyenMuc], [ChuyenMucCapChaID], [BieuTuong], [AnhDaiDien], [MaChuyenMuc], [MoTaAnhDaiDien], [MoTa], [NoiDung], [SuDung], [ThuTuHienThi], [URLChuyenMuc], [MoLienKetOCuaSoMoi], [LoaiLienKet], [DiaChiLienKet], [NgonNgu], [CreatedByUserID], [LastModifiedByUserID], [CreatedOnDate], [LastModifiedOnDate], [IsMenu], [IsActive]) VALUES (N'2f167597-9f57-4a03-9feb-3013eabedf53', N'Blog', NULL, N'', N'', N'          ', NULL, N'Trang blog', NULL, 1, 7, N'blog', 0, 3, N'53', N'Tiếng việt (Việt Nam)', 2, NULL, CAST(N'2024-03-29T14:36:44.667' AS DateTime), CAST(N'2024-04-17T17:28:45.077' AS DateTime), 1, 0)
INSERT [dbo].[TB_ChuyenMuc] ([ID], [TenChuyenMuc], [ChuyenMucCapChaID], [BieuTuong], [AnhDaiDien], [MaChuyenMuc], [MoTaAnhDaiDien], [MoTa], [NoiDung], [SuDung], [ThuTuHienThi], [URLChuyenMuc], [MoLienKetOCuaSoMoi], [LoaiLienKet], [DiaChiLienKet], [NgonNgu], [CreatedByUserID], [LastModifiedByUserID], [CreatedOnDate], [LastModifiedOnDate], [IsMenu], [IsActive]) VALUES (N'0a5ecc46-d1b5-455b-a289-4898511cba2e', N'Tòa nhà HueCIT', N'fed5709b-ffe1-49ab-940d-66d47a897b24', NULL, N'/Upload\ChuyenMuc\2024\HueCIT_Banner1_1713349386.jpg', N'          ', N'Tòa nhà HueCIT có 5 tầng, tọa lạc tại số 6 Lê Lợi, thành phố Huế trên diện tích đất 2.378m2 với tổng', NULL, NULL, 1, 1, N'toa-nha-huecit', 0, 1, N'', N'Tiếng việt (Việt Nam)', 2, NULL, CAST(N'2024-04-17T17:23:06.947' AS DateTime), NULL, 0, 0)
INSERT [dbo].[TB_ChuyenMuc] ([ID], [TenChuyenMuc], [ChuyenMucCapChaID], [BieuTuong], [AnhDaiDien], [MaChuyenMuc], [MoTaAnhDaiDien], [MoTa], [NoiDung], [SuDung], [ThuTuHienThi], [URLChuyenMuc], [MoLienKetOCuaSoMoi], [LoaiLienKet], [DiaChiLienKet], [NgonNgu], [CreatedByUserID], [LastModifiedByUserID], [CreatedOnDate], [LastModifiedOnDate], [IsMenu], [IsActive]) VALUES (N'f120bb65-2b4e-48af-9a96-497058ebfb95', N'Đào tạo', NULL, N'', N'', N'          ', NULL, NULL, NULL, 1, 4, N'dao-tao', 1, 2, N'http://daotao.huecit.vn/', N'Tiếng việt (Việt Nam)', 2, NULL, CAST(N'2024-03-19T15:55:27.917' AS DateTime), CAST(N'2024-04-02T15:56:50.810' AS DateTime), 1, 0)
INSERT [dbo].[TB_ChuyenMuc] ([ID], [TenChuyenMuc], [ChuyenMucCapChaID], [BieuTuong], [AnhDaiDien], [MaChuyenMuc], [MoTaAnhDaiDien], [MoTa], [NoiDung], [SuDung], [ThuTuHienThi], [URLChuyenMuc], [MoLienKetOCuaSoMoi], [LoaiLienKet], [DiaChiLienKet], [NgonNgu], [CreatedByUserID], [LastModifiedByUserID], [CreatedOnDate], [LastModifiedOnDate], [IsMenu], [IsActive]) VALUES (N'b87d10b9-5835-4c3c-a0c1-507d65746850', N'Tin hoạt động', N'f120bb65-2b4e-48af-9a96-497058ebfb95', N'', N'', N'          ', NULL, NULL, NULL, 1, 0, N'tin-hoat-dong', 0, 1, N'', N'Tiếng việt (Việt Nam)', 2, NULL, CAST(N'2024-04-17T14:37:57.400' AS DateTime), CAST(N'2024-04-17T18:30:36.597' AS DateTime), 1, 0)
INSERT [dbo].[TB_ChuyenMuc] ([ID], [TenChuyenMuc], [ChuyenMucCapChaID], [BieuTuong], [AnhDaiDien], [MaChuyenMuc], [MoTaAnhDaiDien], [MoTa], [NoiDung], [SuDung], [ThuTuHienThi], [URLChuyenMuc], [MoLienKetOCuaSoMoi], [LoaiLienKet], [DiaChiLienKet], [NgonNgu], [CreatedByUserID], [LastModifiedByUserID], [CreatedOnDate], [LastModifiedOnDate], [IsMenu], [IsActive]) VALUES (N'fee4c680-5952-4b0a-ab24-5eefd52baee7', N'Sản phẩm', NULL, N'', N'', N'          ', NULL, NULL, NULL, 1, 2, N'san-pham', 0, 3, N'5', N'Tiếng việt (Việt Nam)', 2, NULL, CAST(N'2024-03-19T15:47:45.847' AS DateTime), CAST(N'2024-04-17T17:28:10.530' AS DateTime), 1, 0)
INSERT [dbo].[TB_ChuyenMuc] ([ID], [TenChuyenMuc], [ChuyenMucCapChaID], [BieuTuong], [AnhDaiDien], [MaChuyenMuc], [MoTaAnhDaiDien], [MoTa], [NoiDung], [SuDung], [ThuTuHienThi], [URLChuyenMuc], [MoLienKetOCuaSoMoi], [LoaiLienKet], [DiaChiLienKet], [NgonNgu], [CreatedByUserID], [LastModifiedByUserID], [CreatedOnDate], [LastModifiedOnDate], [IsMenu], [IsActive]) VALUES (N'fed5709b-ffe1-49ab-940d-66d47a897b24', N'Banner Slide', NULL, NULL, NULL, N'          ', NULL, NULL, NULL, 1, 110, N'banner-slide', 0, 1, N'', N'Tiếng việt (Việt Nam)', 2, NULL, CAST(N'2024-04-17T17:20:55.120' AS DateTime), NULL, 0, 0)
INSERT [dbo].[TB_ChuyenMuc] ([ID], [TenChuyenMuc], [ChuyenMucCapChaID], [BieuTuong], [AnhDaiDien], [MaChuyenMuc], [MoTaAnhDaiDien], [MoTa], [NoiDung], [SuDung], [ThuTuHienThi], [URLChuyenMuc], [MoLienKetOCuaSoMoi], [LoaiLienKet], [DiaChiLienKet], [NgonNgu], [CreatedByUserID], [LastModifiedByUserID], [CreatedOnDate], [LastModifiedOnDate], [IsMenu], [IsActive]) VALUES (N'6eee995f-d0f9-4951-8882-706cf843c0be', N'Chính phủ điện tử', N'fee4c680-5952-4b0a-ab24-5eefd52baee7', N'', N'', N'          ', NULL, NULL, NULL, 1, 2, N'chinh-phu-dien-tu', 0, 3, N'~/Views/BaiViet/SanPham/SanPham.cshtml', N'Tiếng việt (Việt Nam)', 2, NULL, CAST(N'2024-03-19T15:52:15.993' AS DateTime), CAST(N'2024-04-17T17:57:46.423' AS DateTime), 1, 0)
INSERT [dbo].[TB_ChuyenMuc] ([ID], [TenChuyenMuc], [ChuyenMucCapChaID], [BieuTuong], [AnhDaiDien], [MaChuyenMuc], [MoTaAnhDaiDien], [MoTa], [NoiDung], [SuDung], [ThuTuHienThi], [URLChuyenMuc], [MoLienKetOCuaSoMoi], [LoaiLienKet], [DiaChiLienKet], [NgonNgu], [CreatedByUserID], [LastModifiedByUserID], [CreatedOnDate], [LastModifiedOnDate], [IsMenu], [IsActive]) VALUES (N'2fe75067-1ca7-4477-b465-7512f09b4637', N'Trang chủ', NULL, N'', N'', N'          ', NULL, NULL, NULL, 1, 1, N'trang-chu', 0, 3, N'1', N'Tiếng việt (Việt Nam)', 2, NULL, CAST(N'2024-03-29T14:34:25.420' AS DateTime), CAST(N'2024-04-04T09:01:27.930' AS DateTime), 1, 0)
INSERT [dbo].[TB_ChuyenMuc] ([ID], [TenChuyenMuc], [ChuyenMucCapChaID], [BieuTuong], [AnhDaiDien], [MaChuyenMuc], [MoTaAnhDaiDien], [MoTa], [NoiDung], [SuDung], [ThuTuHienThi], [URLChuyenMuc], [MoLienKetOCuaSoMoi], [LoaiLienKet], [DiaChiLienKet], [NgonNgu], [CreatedByUserID], [LastModifiedByUserID], [CreatedOnDate], [LastModifiedOnDate], [IsMenu], [IsActive]) VALUES (N'516b5f46-9fe2-401f-b140-7bbdba9aae62', N'Tin hoạt động', N'b51f7635-9fb5-4494-95a3-10b57d0b5cf4', N'', N'', N'          ', NULL, NULL, NULL, 1, 0, N'tin-hoat-dong', 0, 1, N'', N'Tiếng việt (Việt Nam)', 2, NULL, CAST(N'2024-04-17T18:36:49.657' AS DateTime), CAST(N'2024-07-02T15:20:50.613' AS DateTime), 0, 0)
INSERT [dbo].[TB_ChuyenMuc] ([ID], [TenChuyenMuc], [ChuyenMucCapChaID], [BieuTuong], [AnhDaiDien], [MaChuyenMuc], [MoTaAnhDaiDien], [MoTa], [NoiDung], [SuDung], [ThuTuHienThi], [URLChuyenMuc], [MoLienKetOCuaSoMoi], [LoaiLienKet], [DiaChiLienKet], [NgonNgu], [CreatedByUserID], [LastModifiedByUserID], [CreatedOnDate], [LastModifiedOnDate], [IsMenu], [IsActive]) VALUES (N'c01e27f2-0c42-47f6-9e29-833ec719ba91', N'Vị trí tuyển dụng', N'39f89a2a-aff0-4de8-abe5-c6f114621c5b', N'', N'', N'          ', NULL, NULL, NULL, 1, 0, N'vi-tri-tuyen-dung', 0, 1, N'', N'Tiếng việt (Việt Nam)', 2, NULL, CAST(N'2024-04-15T09:25:59.820' AS DateTime), CAST(N'2024-04-15T09:26:36.747' AS DateTime), 0, 0)
INSERT [dbo].[TB_ChuyenMuc] ([ID], [TenChuyenMuc], [ChuyenMucCapChaID], [BieuTuong], [AnhDaiDien], [MaChuyenMuc], [MoTaAnhDaiDien], [MoTa], [NoiDung], [SuDung], [ThuTuHienThi], [URLChuyenMuc], [MoLienKetOCuaSoMoi], [LoaiLienKet], [DiaChiLienKet], [NgonNgu], [CreatedByUserID], [LastModifiedByUserID], [CreatedOnDate], [LastModifiedOnDate], [IsMenu], [IsActive]) VALUES (N'b482ca4e-6668-4521-b0e7-99f91a9e04e4', N'Thư mời', N'b51f7635-9fb5-4494-95a3-10b57d0b5cf4', NULL, NULL, N'          ', NULL, NULL, NULL, 1, 1, N'thu-moi', 0, 1, N'', N'Tiếng việt (Việt Nam)', 2, NULL, CAST(N'2024-07-02T13:53:56.227' AS DateTime), NULL, 0, 0)
INSERT [dbo].[TB_ChuyenMuc] ([ID], [TenChuyenMuc], [ChuyenMucCapChaID], [BieuTuong], [AnhDaiDien], [MaChuyenMuc], [MoTaAnhDaiDien], [MoTa], [NoiDung], [SuDung], [ThuTuHienThi], [URLChuyenMuc], [MoLienKetOCuaSoMoi], [LoaiLienKet], [DiaChiLienKet], [NgonNgu], [CreatedByUserID], [LastModifiedByUserID], [CreatedOnDate], [LastModifiedOnDate], [IsMenu], [IsActive]) VALUES (N'086a67b0-0e82-4896-843a-a06bedafe258', N'Bước chân HueCIT', N'2f167597-9f57-4a03-9feb-3013eabedf53', NULL, NULL, N'          ', NULL, NULL, NULL, 1, 0, N'buoc-chan-huecit', 0, 1, N'', N'Tiếng việt (Việt Nam)', 2, NULL, CAST(N'2024-04-09T17:17:13.577' AS DateTime), NULL, 0, 0)
INSERT [dbo].[TB_ChuyenMuc] ([ID], [TenChuyenMuc], [ChuyenMucCapChaID], [BieuTuong], [AnhDaiDien], [MaChuyenMuc], [MoTaAnhDaiDien], [MoTa], [NoiDung], [SuDung], [ThuTuHienThi], [URLChuyenMuc], [MoLienKetOCuaSoMoi], [LoaiLienKet], [DiaChiLienKet], [NgonNgu], [CreatedByUserID], [LastModifiedByUserID], [CreatedOnDate], [LastModifiedOnDate], [IsMenu], [IsActive]) VALUES (N'41341896-06bf-40c9-b3bd-a3032c885e18', N'Trang thơ HueCIT', N'2f167597-9f57-4a03-9feb-3013eabedf53', NULL, NULL, N'          ', NULL, NULL, NULL, 1, 0, N'trang-tho-huecit', 0, 1, N'', N'Tiếng việt (Việt Nam)', 2, NULL, CAST(N'2024-04-09T17:17:48.633' AS DateTime), NULL, 0, 0)
INSERT [dbo].[TB_ChuyenMuc] ([ID], [TenChuyenMuc], [ChuyenMucCapChaID], [BieuTuong], [AnhDaiDien], [MaChuyenMuc], [MoTaAnhDaiDien], [MoTa], [NoiDung], [SuDung], [ThuTuHienThi], [URLChuyenMuc], [MoLienKetOCuaSoMoi], [LoaiLienKet], [DiaChiLienKet], [NgonNgu], [CreatedByUserID], [LastModifiedByUserID], [CreatedOnDate], [LastModifiedOnDate], [IsMenu], [IsActive]) VALUES (N'bfecce3d-4dbb-4891-b759-b0a07bcdb547', N'Trao đổi & chia sẽ', N'2f167597-9f57-4a03-9feb-3013eabedf53', NULL, NULL, N'          ', NULL, NULL, NULL, 1, 0, N'trao-doi-chia-se', 0, 1, N'', N'Tiếng việt (Việt Nam)', 2, NULL, CAST(N'2024-04-09T17:16:48.203' AS DateTime), NULL, 0, 0)
INSERT [dbo].[TB_ChuyenMuc] ([ID], [TenChuyenMuc], [ChuyenMucCapChaID], [BieuTuong], [AnhDaiDien], [MaChuyenMuc], [MoTaAnhDaiDien], [MoTa], [NoiDung], [SuDung], [ThuTuHienThi], [URLChuyenMuc], [MoLienKetOCuaSoMoi], [LoaiLienKet], [DiaChiLienKet], [NgonNgu], [CreatedByUserID], [LastModifiedByUserID], [CreatedOnDate], [LastModifiedOnDate], [IsMenu], [IsActive]) VALUES (N'cc9d585c-e6ed-443a-9546-b215fa5e7e9c', N'Hỏi đáp', NULL, N'', N'', N'          ', NULL, NULL, NULL, 1, 9, N'hoi-dap', 0, 3, N'122', N'Tiếng việt (Việt Nam)', 2, NULL, CAST(N'2024-04-17T16:37:19.493' AS DateTime), CAST(N'2024-04-19T13:34:46.377' AS DateTime), 1, 0)
INSERT [dbo].[TB_ChuyenMuc] ([ID], [TenChuyenMuc], [ChuyenMucCapChaID], [BieuTuong], [AnhDaiDien], [MaChuyenMuc], [MoTaAnhDaiDien], [MoTa], [NoiDung], [SuDung], [ThuTuHienThi], [URLChuyenMuc], [MoLienKetOCuaSoMoi], [LoaiLienKet], [DiaChiLienKet], [NgonNgu], [CreatedByUserID], [LastModifiedByUserID], [CreatedOnDate], [LastModifiedOnDate], [IsMenu], [IsActive]) VALUES (N'4bce5e1e-7461-4d1f-8199-b3c5cd42b9f2', N'Góc học viên', N'f120bb65-2b4e-48af-9a96-497058ebfb95', NULL, NULL, N'          ', NULL, NULL, NULL, 1, 3, N'goc-hoc-vien', 0, 1, N'', N'Tiếng việt (Việt Nam)', 2, NULL, CAST(N'2024-04-17T14:38:51.013' AS DateTime), NULL, 1, 0)
INSERT [dbo].[TB_ChuyenMuc] ([ID], [TenChuyenMuc], [ChuyenMucCapChaID], [BieuTuong], [AnhDaiDien], [MaChuyenMuc], [MoTaAnhDaiDien], [MoTa], [NoiDung], [SuDung], [ThuTuHienThi], [URLChuyenMuc], [MoLienKetOCuaSoMoi], [LoaiLienKet], [DiaChiLienKet], [NgonNgu], [CreatedByUserID], [LastModifiedByUserID], [CreatedOnDate], [LastModifiedOnDate], [IsMenu], [IsActive]) VALUES (N'cf7cabdc-25ea-49a4-a050-bf698052c312', N'Hồ sơ nộp', N'39f89a2a-aff0-4de8-abe5-c6f114621c5b', NULL, NULL, N'          ', NULL, NULL, NULL, 1, 0, N'ho-so-nop', 0, 1, N'', N'Tiếng việt (Việt Nam)', 2, NULL, CAST(N'2024-04-15T09:26:31.100' AS DateTime), NULL, 0, 0)
INSERT [dbo].[TB_ChuyenMuc] ([ID], [TenChuyenMuc], [ChuyenMucCapChaID], [BieuTuong], [AnhDaiDien], [MaChuyenMuc], [MoTaAnhDaiDien], [MoTa], [NoiDung], [SuDung], [ThuTuHienThi], [URLChuyenMuc], [MoLienKetOCuaSoMoi], [LoaiLienKet], [DiaChiLienKet], [NgonNgu], [CreatedByUserID], [LastModifiedByUserID], [CreatedOnDate], [LastModifiedOnDate], [IsMenu], [IsActive]) VALUES (N'39f89a2a-aff0-4de8-abe5-c6f114621c5b', N'Tuyển Dụng', NULL, N'', N'', N'          ', NULL, NULL, NULL, 1, 8, N'tuyen-dung', 0, 3, N'60', N'Tiếng việt (Việt Nam)', 2, NULL, CAST(N'2024-04-02T15:39:25.043' AS DateTime), CAST(N'2024-04-19T08:02:04.060' AS DateTime), 1, 0)
INSERT [dbo].[TB_ChuyenMuc] ([ID], [TenChuyenMuc], [ChuyenMucCapChaID], [BieuTuong], [AnhDaiDien], [MaChuyenMuc], [MoTaAnhDaiDien], [MoTa], [NoiDung], [SuDung], [ThuTuHienThi], [URLChuyenMuc], [MoLienKetOCuaSoMoi], [LoaiLienKet], [DiaChiLienKet], [NgonNgu], [CreatedByUserID], [LastModifiedByUserID], [CreatedOnDate], [LastModifiedOnDate], [IsMenu], [IsActive]) VALUES (N'57214e56-18b0-456a-9b36-d263cb332d75', N'Đào tạo', N'f120bb65-2b4e-48af-9a96-497058ebfb95', N'', N'', N'          ', NULL, NULL, NULL, 1, 2, N'dao-tao-26', 0, 1, N'', N'Tiếng việt (Việt Nam)', 2, NULL, CAST(N'2024-04-17T14:39:18.583' AS DateTime), CAST(N'2024-04-17T14:52:01.043' AS DateTime), 1, 0)
INSERT [dbo].[TB_ChuyenMuc] ([ID], [TenChuyenMuc], [ChuyenMucCapChaID], [BieuTuong], [AnhDaiDien], [MaChuyenMuc], [MoTaAnhDaiDien], [MoTa], [NoiDung], [SuDung], [ThuTuHienThi], [URLChuyenMuc], [MoLienKetOCuaSoMoi], [LoaiLienKet], [DiaChiLienKet], [NgonNgu], [CreatedByUserID], [LastModifiedByUserID], [CreatedOnDate], [LastModifiedOnDate], [IsMenu], [IsActive]) VALUES (N'725ef3a5-6329-4edb-a1cf-dfeefbfde739', N'Giới thiệu', NULL, N'', N'', N'          ', NULL, NULL, NULL, 1, 6, N'gioi-thieu', 0, 3, N'55', N'Tiếng việt (Việt Nam)', 2, NULL, CAST(N'2024-03-19T15:55:58.840' AS DateTime), CAST(N'2024-04-17T17:28:38.540' AS DateTime), 1, 0)
INSERT [dbo].[TB_ChuyenMuc] ([ID], [TenChuyenMuc], [ChuyenMucCapChaID], [BieuTuong], [AnhDaiDien], [MaChuyenMuc], [MoTaAnhDaiDien], [MoTa], [NoiDung], [SuDung], [ThuTuHienThi], [URLChuyenMuc], [MoLienKetOCuaSoMoi], [LoaiLienKet], [DiaChiLienKet], [NgonNgu], [CreatedByUserID], [LastModifiedByUserID], [CreatedOnDate], [LastModifiedOnDate], [IsMenu], [IsActive]) VALUES (N'8a10d607-10f1-47c2-ba82-ec243c8e9145', N'Hoạt động đoàn thể', N'94f2b4ce-4e63-40e5-bab6-02c662db6978', N'', N'', N'          ', NULL, NULL, NULL, 1, 0, N'hoat-dong-doan-the', 0, 1, N'', N'Tiếng việt (Việt Nam)', 2, NULL, CAST(N'2024-04-16T08:20:06.477' AS DateTime), CAST(N'2024-04-17T18:18:29.793' AS DateTime), 1, 0)
INSERT [dbo].[TB_ChuyenMuc] ([ID], [TenChuyenMuc], [ChuyenMucCapChaID], [BieuTuong], [AnhDaiDien], [MaChuyenMuc], [MoTaAnhDaiDien], [MoTa], [NoiDung], [SuDung], [ThuTuHienThi], [URLChuyenMuc], [MoLienKetOCuaSoMoi], [LoaiLienKet], [DiaChiLienKet], [NgonNgu], [CreatedByUserID], [LastModifiedByUserID], [CreatedOnDate], [LastModifiedOnDate], [IsMenu], [IsActive]) VALUES (N'92729d2a-9c36-4d7b-82e4-fb7ffa8c6a59', N'Tin hoạt động', N'94f2b4ce-4e63-40e5-bab6-02c662db6978', N'', N'', N'          ', NULL, NULL, NULL, 1, 0, N'tin-hoat-dong-1', 0, 1, N'', N'Tiếng việt (Việt Nam)', 2, NULL, CAST(N'2024-04-04T10:00:11.080' AS DateTime), CAST(N'2024-04-17T18:18:37.820' AS DateTime), 1, 0)
GO
INSERT [dbo].[TB_ChuyenMucHoiDap] ([ID], [TenChuyenMuc], [TenVietTat], [MoTa], [SuDung], [ThuTuHienThi], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [NgonNgu], [URLChuyenMuc], [ViewID]) VALUES (N'045867c2-c96e-4d48-8d00-439729dd0228', N'Đào tạo HueCIT', N'đt', N'Đào tạo HueCIT', 1, 2, 2, CAST(N'2024-06-19T14:00:47.490' AS DateTime), 2, CAST(N'2024-06-19T14:44:23.670' AS DateTime), N'Tiếng Việt (Việt Nam)', N'dao-tao-huecit', 122)
INSERT [dbo].[TB_ChuyenMucHoiDap] ([ID], [TenChuyenMuc], [TenVietTat], [MoTa], [SuDung], [ThuTuHienThi], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [NgonNgu], [URLChuyenMuc], [ViewID]) VALUES (N'90e87dcf-4d52-4811-b9cb-6bc4810829ad', N'Sản phẩm HueCIT', N'sp', N'Sản phẩm HueCIT', 1, 1, 2, CAST(N'2024-06-19T14:00:34.897' AS DateTime), 2, CAST(N'2024-06-20T08:05:30.210' AS DateTime), N'Tiếng Việt (Việt Nam)', N'san-pham-huecit', 122)
GO
SET IDENTITY_INSERT [dbo].[TB_Media] ON 

INSERT [dbo].[TB_Media] ([ID], [TieuDe], [MoTa], [LuotTai], [TenFileMedia], [DuongDan], [LoaiFileMedia], [BaiVietID], [CreatedOnDate], [LastModifiedOnDate], [ThuTuHienThi]) VALUES (69, N'aaaaa', N'', 3, N'7svtAUVwvSHJkumRcPja-EASBw.jpg', N'/Upload\Media\2024\7svtAUVwvSHJkumRcPja-EASBw_1712197298.jpg', 4, N'ee5e543c-b5d6-40aa-8a7d-0421dbcef41d', CAST(N'2024-04-04T09:21:39.820' AS DateTime), CAST(N'2024-04-16T13:59:18.797' AS DateTime), 0)
INSERT [dbo].[TB_Media] ([ID], [TieuDe], [MoTa], [LuotTai], [TenFileMedia], [DuongDan], [LoaiFileMedia], [BaiVietID], [CreatedOnDate], [LastModifiedOnDate], [ThuTuHienThi]) VALUES (70, N'bbbbbb', N'', 1, N'T11-SoLieuKPI-TVTKSX.xls', N'/Upload\Media\2024\T11-SoLieuKPI-TVTKSX_1712197298.xls', 1, N'ee5e543c-b5d6-40aa-8a7d-0421dbcef41d', CAST(N'2024-04-04T09:21:39.860' AS DateTime), CAST(N'2024-04-16T13:59:18.803' AS DateTime), 0)
INSERT [dbo].[TB_Media] ([ID], [TieuDe], [MoTa], [LuotTai], [TenFileMedia], [DuongDan], [LoaiFileMedia], [BaiVietID], [CreatedOnDate], [LastModifiedOnDate], [ThuTuHienThi]) VALUES (71, N'ccccccc', N'', 0, N'A2tZdZ8QAgdJD8yLFLNf--1--vkcxa.jpg', N'/Upload\Media\2024\A2tZdZ8QAgdJD8yLFLNf--1--vkcxa_1712197332.jpg', 4, N'63f5c556-a49d-4a0d-9cc8-e551b3f540bc', CAST(N'2024-04-04T09:22:13.593' AS DateTime), CAST(N'2024-04-16T13:53:21.450' AS DateTime), 0)
INSERT [dbo].[TB_Media] ([ID], [TieuDe], [MoTa], [LuotTai], [TenFileMedia], [DuongDan], [LoaiFileMedia], [BaiVietID], [CreatedOnDate], [LastModifiedOnDate], [ThuTuHienThi]) VALUES (72, N'dddddd', N'', 0, N'fXcu7FmvErCBmPqVsN1h--1--c256c.jpg', N'/Upload\Media\2024\fXcu7FmvErCBmPqVsN1h--1--c256c_1712197332.jpg', 4, N'63f5c556-a49d-4a0d-9cc8-e551b3f540bc', CAST(N'2024-04-04T09:22:13.617' AS DateTime), CAST(N'2024-04-16T13:53:21.460' AS DateTime), 0)
INSERT [dbo].[TB_Media] ([ID], [TieuDe], [MoTa], [LuotTai], [TenFileMedia], [DuongDan], [LoaiFileMedia], [BaiVietID], [CreatedOnDate], [LastModifiedOnDate], [ThuTuHienThi]) VALUES (73, N'Ảnh 1', N'Mô tả ảnh 1', 0, N'HueCIT_Thang-Ba-Bien-Gioi_Don-Bien-Phong-Vinh-Xuan-Thua-Thien-Hue-5.jpg', N'/Upload\Media\2024\HueCIT_Thang-Ba-Bien-Gioi_Don-Bien-Phong-Vinh-Xuan-Thua-Thien-Hue-5_1713250190.jpg', 4, N'fb671df3-ee01-4ec5-aff6-02f37b20a87b', CAST(N'2024-04-16T13:50:28.547' AS DateTime), CAST(N'2024-04-17T08:28:31.460' AS DateTime), 0)
INSERT [dbo].[TB_Media] ([ID], [TieuDe], [MoTa], [LuotTai], [TenFileMedia], [DuongDan], [LoaiFileMedia], [BaiVietID], [CreatedOnDate], [LastModifiedOnDate], [ThuTuHienThi]) VALUES (74, N'Ảnh 2', N'Mô tả ảnh 2', 0, N'HueCIT_Thang-Ba-Bien-Gioi_Don-Bien-Phong-Vinh-Xuan-Thua-Thien-Hue-2.jpg', N'/Upload\Media\2024\HueCIT_Thang-Ba-Bien-Gioi_Don-Bien-Phong-Vinh-Xuan-Thua-Thien-Hue-2_1713250190.jpg', 4, N'fb671df3-ee01-4ec5-aff6-02f37b20a87b', CAST(N'2024-04-16T13:50:28.567' AS DateTime), CAST(N'2024-04-17T08:28:31.533' AS DateTime), 0)
INSERT [dbo].[TB_Media] ([ID], [TieuDe], [MoTa], [LuotTai], [TenFileMedia], [DuongDan], [LoaiFileMedia], [BaiVietID], [CreatedOnDate], [LastModifiedOnDate], [ThuTuHienThi]) VALUES (75, N'Ảnh 3', N'Mô tả ảnh 3', 0, N'HueCIT_Thang-Ba-Bien-Gioi_Don-Bien-Phong-Vinh-Xuan-Thua-Thien-Hue-4.jpg', N'/Upload\Media\2024\HueCIT_Thang-Ba-Bien-Gioi_Don-Bien-Phong-Vinh-Xuan-Thua-Thien-Hue-4_1713250190.jpg', 4, N'fb671df3-ee01-4ec5-aff6-02f37b20a87b', CAST(N'2024-04-16T13:50:28.583' AS DateTime), CAST(N'2024-04-17T08:28:31.560' AS DateTime), 0)
INSERT [dbo].[TB_Media] ([ID], [TieuDe], [MoTa], [LuotTai], [TenFileMedia], [DuongDan], [LoaiFileMedia], [BaiVietID], [CreatedOnDate], [LastModifiedOnDate], [ThuTuHienThi]) VALUES (76, N'Hội nghị công tác Đảng năm 2023', N'', 0, N'HueCIT_HoiNghiCongTacDang_Nam2023.jpg', N'/Upload\Media\2024\HueCIT_HoiNghiCongTacDang_Nam2023_1713321440.jpg', 4, N'1990180f-5f83-41b3-a76f-a8782aa48637', CAST(N'2024-04-17T09:37:21.300' AS DateTime), NULL, 0)
INSERT [dbo].[TB_Media] ([ID], [TieuDe], [MoTa], [LuotTai], [TenFileMedia], [DuongDan], [LoaiFileMedia], [BaiVietID], [CreatedOnDate], [LastModifiedOnDate], [ThuTuHienThi]) VALUES (77, N'Tuyển dụng', N'', 0, N'tuyendungmobileDev.png', N'/Upload\Media\2024\tuyendungmobileDev_1713321440.png', 4, N'1990180f-5f83-41b3-a76f-a8782aa48637', CAST(N'2024-04-17T09:37:21.363' AS DateTime), NULL, 0)
INSERT [dbo].[TB_Media] ([ID], [TieuDe], [MoTa], [LuotTai], [TenFileMedia], [DuongDan], [LoaiFileMedia], [BaiVietID], [CreatedOnDate], [LastModifiedOnDate], [ThuTuHienThi]) VALUES (78, N'Tuyên dương', N'', 0, N'HueCIT_TuyenDuongDangVienTreTieuBieu2023_BichTTN-31012024.jpg', N'/Upload\Media\2024\HueCIT_TuyenDuongDangVienTreTieuBieu2023_BichTTN-31012024_1713342676.jpg', 4, N'd8d03e26-314f-4dd3-a7af-307c7c4a9107', CAST(N'2024-04-17T15:31:17.540' AS DateTime), NULL, 0)
INSERT [dbo].[TB_Media] ([ID], [TieuDe], [MoTa], [LuotTai], [TenFileMedia], [DuongDan], [LoaiFileMedia], [BaiVietID], [CreatedOnDate], [LastModifiedOnDate], [ThuTuHienThi]) VALUES (79, N'Khám phá huế', N'', 0, N'Khamphahue_QuyGiaoDucHueHieuHocnamHoc2023-2024.jpg', N'/Upload\Media\2024\Khamphahue_QuyGiaoDucHueHieuHocnamHoc2023-2024_1713342676.jpg', 4, N'd8d03e26-314f-4dd3-a7af-307c7c4a9107', CAST(N'2024-04-17T15:31:17.550' AS DateTime), NULL, 0)
SET IDENTITY_INSERT [dbo].[TB_Media] OFF
GO
SET IDENTITY_INSERT [dbo].[TB_ThietLapCauHinh] ON 

INSERT [dbo].[TB_ThietLapCauHinh] ([ID], [TenTieuChi], [Loai], [SuDung], [MoTa], [TenLoai]) VALUES (1, N'titleSection', 0, 1, N'Tiêu đề section', N'string')
INSERT [dbo].[TB_ThietLapCauHinh] ([ID], [TenTieuChi], [Loai], [SuDung], [MoTa], [TenLoai]) VALUES (2, N'isShow', 2, 1, N'Sử dụng*', N'bool')
INSERT [dbo].[TB_ThietLapCauHinh] ([ID], [TenTieuChi], [Loai], [SuDung], [MoTa], [TenLoai]) VALUES (3, N'image', 8, 1, N'Hỉnh ảnh', N'image')
INSERT [dbo].[TB_ThietLapCauHinh] ([ID], [TenTieuChi], [Loai], [SuDung], [MoTa], [TenLoai]) VALUES (4, N'file', 9, 1, N'Tệp đính kèm', N'file')
INSERT [dbo].[TB_ThietLapCauHinh] ([ID], [TenTieuChi], [Loai], [SuDung], [MoTa], [TenLoai]) VALUES (5, N'category', 10, 1, N'Danh mục', N'select')
INSERT [dbo].[TB_ThietLapCauHinh] ([ID], [TenTieuChi], [Loai], [SuDung], [MoTa], [TenLoai]) VALUES (7, N'logo', 8, 1, N'Logo', N'image')
INSERT [dbo].[TB_ThietLapCauHinh] ([ID], [TenTieuChi], [Loai], [SuDung], [MoTa], [TenLoai]) VALUES (8, N'numOf', 1, 1, N'Số lượng', N'int')
INSERT [dbo].[TB_ThietLapCauHinh] ([ID], [TenTieuChi], [Loai], [SuDung], [MoTa], [TenLoai]) VALUES (9, N'isFocus', 2, 1, N'Tiểu điểm bài viết', N'bool')
INSERT [dbo].[TB_ThietLapCauHinh] ([ID], [TenTieuChi], [Loai], [SuDung], [MoTa], [TenLoai]) VALUES (11, N'isShowPaging', 2, 1, N'Phân trang', N'bool')
INSERT [dbo].[TB_ThietLapCauHinh] ([ID], [TenTieuChi], [Loai], [SuDung], [MoTa], [TenLoai]) VALUES (12, N'isShowCategoryName', 2, 1, N'Hiển thị tên chuyên mục', N'bool')
INSERT [dbo].[TB_ThietLapCauHinh] ([ID], [TenTieuChi], [Loai], [SuDung], [MoTa], [TenLoai]) VALUES (13, N'isShowSummary', 2, 1, N'Hiển thị tóm tắt', N'bool')
INSERT [dbo].[TB_ThietLapCauHinh] ([ID], [TenTieuChi], [Loai], [SuDung], [MoTa], [TenLoai]) VALUES (14, N'isShowTitle', 2, 1, N'Hiển thị tên bài viết', N'bool')
INSERT [dbo].[TB_ThietLapCauHinh] ([ID], [TenTieuChi], [Loai], [SuDung], [MoTa], [TenLoai]) VALUES (15, N'isShowThumbnail', 2, 1, N'Hiển thị thumbnail', N'bool')
INSERT [dbo].[TB_ThietLapCauHinh] ([ID], [TenTieuChi], [Loai], [SuDung], [MoTa], [TenLoai]) VALUES (16, N'isShowDeclarationDay', 2, 1, N'Hiển thị ngày công bố', N'bool')
INSERT [dbo].[TB_ThietLapCauHinh] ([ID], [TenTieuChi], [Loai], [SuDung], [MoTa], [TenLoai]) VALUES (17, N'isShowContent', 2, 1, N'Hiển thị nội dung', N'bool')
INSERT [dbo].[TB_ThietLapCauHinh] ([ID], [TenTieuChi], [Loai], [SuDung], [MoTa], [TenLoai]) VALUES (20, N'isTitleSection', 2, 1, N'Hiển thị tiêu đề Section', N'bool')
INSERT [dbo].[TB_ThietLapCauHinh] ([ID], [TenTieuChi], [Loai], [SuDung], [MoTa], [TenLoai]) VALUES (25, N'isShowAvatar', 2, 1, N'Hiển thị ảnh đại diện', N'bool')
INSERT [dbo].[TB_ThietLapCauHinh] ([ID], [TenTieuChi], [Loai], [SuDung], [MoTa], [TenLoai]) VALUES (26, N'typeView', 10, 1, N'Loại view*', N'select')
INSERT [dbo].[TB_ThietLapCauHinh] ([ID], [TenTieuChi], [Loai], [SuDung], [MoTa], [TenLoai]) VALUES (29, N'isShowContact', 2, 1, N'Hiển thị thông tin liên hệ', N'bool')
INSERT [dbo].[TB_ThietLapCauHinh] ([ID], [TenTieuChi], [Loai], [SuDung], [MoTa], [TenLoai]) VALUES (30, N'isShowAuthor', 2, 1, N'Hiển thị tác giả', N'bool')
INSERT [dbo].[TB_ThietLapCauHinh] ([ID], [TenTieuChi], [Loai], [SuDung], [MoTa], [TenLoai]) VALUES (31, N'isShowNewsSource', 2, 1, N'Hiển thị nguồn tin', N'bool')
INSERT [dbo].[TB_ThietLapCauHinh] ([ID], [TenTieuChi], [Loai], [SuDung], [MoTa], [TenLoai]) VALUES (32, N'isShowCopyRight', 2, 1, N'Hiển thị tác quyền', N'bool')
INSERT [dbo].[TB_ThietLapCauHinh] ([ID], [TenTieuChi], [Loai], [SuDung], [MoTa], [TenLoai]) VALUES (33, N'isShowKeys', 2, 1, N'Hiển thị từ khóa', N'bool')
INSERT [dbo].[TB_ThietLapCauHinh] ([ID], [TenTieuChi], [Loai], [SuDung], [MoTa], [TenLoai]) VALUES (34, N'content', 11, 1, N'Nội dung', N'content')
INSERT [dbo].[TB_ThietLapCauHinh] ([ID], [TenTieuChi], [Loai], [SuDung], [MoTa], [TenLoai]) VALUES (35, N'isFAQ', 2, 1, N'Là câu hỏi', N'bool')
SET IDENTITY_INSERT [dbo].[TB_ThietLapCauHinh] OFF
GO
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'b041b787-2fdc-45f7-ac97-000ece6ea0ae', 161, 5, N'20a19e58-4624-49b2-af25-6c79b8f339df,858188b5-6fbd-4b0d-9354-20c1be90727d', 2, CAST(N'2024-04-19T13:48:55.890' AS DateTime), 2, CAST(N'2024-06-19T15:20:56.047' AS DateTime), N'Chuyên mục', 2, 1)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'52952b86-47ce-477d-a7ed-0055d3f29ca1', 127, 2, N'1', 2, CAST(N'2024-04-17T16:25:44.020' AS DateTime), NULL, NULL, N'Sử dụng', 0, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'efc51ebd-97c1-4143-9e48-008bb6ad76a7', 88, 15, N'1', 2, CAST(N'2024-04-15T13:45:48.457' AS DateTime), 2, CAST(N'2024-04-16T09:16:57.083' AS DateTime), N'Hiển thị thumbnail', 6, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'a4527f40-6ab4-47da-b559-00a953563ac5', 82, 14, N'1', 2, CAST(N'2024-04-15T08:46:47.463' AS DateTime), 2, CAST(N'2024-04-15T08:50:05.393' AS DateTime), N'Hiển thị tên bài viết', 7, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'bd797edc-93eb-400d-9c1f-017606f89b8d', 161, 12, N'1', 2, CAST(N'2024-04-19T13:48:55.897' AS DateTime), 2, CAST(N'2024-06-19T15:20:56.057' AS DateTime), N'Hiển thị tên chuyên mục', 4, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'3e35bbe9-c44e-4805-83d4-019151d39750', 99, 30, N'1', 2, CAST(N'2024-04-16T15:30:34.480' AS DateTime), NULL, NULL, N'Hiển thị tác giả', 7, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'6c59bf5f-70e6-4fcb-b2a4-019b8e18cfbf', 116, 15, N'1', 2, CAST(N'2024-04-16T17:35:50.180' AS DateTime), 2, CAST(N'2024-04-16T17:38:55.003' AS DateTime), N'Hiển thị thumbnail', 6, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'59cd32f0-4090-4fa7-88db-01c3aeff5a73', 6, 12, N'0', 2, CAST(N'2024-04-11T10:49:51.133' AS DateTime), 2, CAST(N'2024-07-02T15:22:20.443' AS DateTime), N'Hiển thị tên chuyên mục', 6, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'c23245c9-087e-4b4f-8659-02a4fcaa52f4', 119, 31, N'1', 2, CAST(N'2024-04-17T10:46:07.400' AS DateTime), NULL, NULL, N'Hiển thị nguồn tin', 8, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'2fff9bbb-fef5-4c1d-a40e-02b08e5c4478', 109, 16, N'0', 2, CAST(N'2024-04-16T16:57:49.887' AS DateTime), 2, CAST(N'2024-04-16T17:01:28.027' AS DateTime), N'Hiển thị ngày công bố', 8, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'cb63c2b2-e41f-4268-9350-02e6cb178035', 115, 26, N'7', 2, CAST(N'2024-04-16T17:34:34.087' AS DateTime), 2, CAST(N'2024-04-17T09:10:00.537' AS DateTime), N'Loại view*', 4, 4)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'5353c729-d8c2-4184-ab03-032ea448cdbd', 81, 8, N'5', 2, CAST(N'2024-04-15T08:37:45.740' AS DateTime), 2, CAST(N'2024-04-15T08:45:43.667' AS DateTime), N'Số lượng', 3, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'4cc8e9b1-2c66-4a77-b99b-0367e2f37b7c', 104, 26, N'16', 2, CAST(N'2024-04-19T09:17:44.623' AS DateTime), NULL, NULL, N'Loại view*', 2, 4)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'22730b24-af45-4b65-b0f1-0456658f01e4', 78, 9, N'1', 2, CAST(N'2024-04-16T10:10:31.120' AS DateTime), 2, CAST(N'2024-04-17T14:59:54.827' AS DateTime), N'Tiểu điểm bài viết', 7, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'51306968-671d-4591-ae64-048bee80f91d', 108, 32, N'1', 2, CAST(N'2024-04-16T16:57:04.947' AS DateTime), NULL, NULL, N'Hiển thị tác quyền', 9, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'07cf5b28-7397-46fd-8d5d-05df575ed8bb', 87, 2, N'1', 2, CAST(N'2024-04-15T09:31:00.863' AS DateTime), 2, CAST(N'2024-04-15T09:31:31.447' AS DateTime), N'Sử dụng', 0, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'bff24045-cd08-41d3-aa6f-06566e18ae91', 151, 16, N'1', 2, CAST(N'2024-04-19T09:56:02.670' AS DateTime), 2, CAST(N'2024-04-19T11:03:21.280' AS DateTime), N'Hiển thị ngày công bố', 8, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'9242cbcf-96f7-423a-931f-07426b7e42dc', 119, 29, N'1', 2, CAST(N'2024-04-17T10:46:07.403' AS DateTime), NULL, NULL, N'Hiển thị thông tin liên hệ', 10, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'd100d6cd-0fef-42d7-a137-07fb32c76de3', 143, 8, N'7', 2, CAST(N'2024-04-19T09:44:07.287' AS DateTime), NULL, NULL, N'Số lượng', 3, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'ed4468a6-7de5-4452-b21a-08c8d605546b', 80, 2, N'1', 2, CAST(N'2024-04-15T08:35:26.630' AS DateTime), 2, CAST(N'2024-04-17T08:47:47.060' AS DateTime), N'Sử dụng', 0, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'1365fa79-6d7b-4334-aecf-0914b804a361', 6, 26, N'1', 2, CAST(N'2024-04-15T08:07:03.720' AS DateTime), 2, CAST(N'2024-07-02T15:22:20.297' AS DateTime), N'Loại view*', 4, 4)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'35e240d9-c8ed-491d-bba0-09ea93eedc4e', 78, 5, N'f1ac63bb-7eba-4041-8c70-2c70d8e64133,8a10d607-10f1-47c2-ba82-ec243c8e9145,92729d2a-9c36-4d7b-82e4-fb7ffa8c6a59,94f2b4ce-4e63-40e5-bab6-02c662db6978', 2, CAST(N'2024-04-15T08:25:09.040' AS DateTime), 2, CAST(N'2024-04-17T14:59:54.817' AS DateTime), N'Chuyên mục', 2, 1)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'0d488856-6b1e-4786-836a-0a6caa7383d7', 160, 16, N'1', 2, CAST(N'2024-04-19T13:48:55.757' AS DateTime), 2, CAST(N'2024-06-20T15:05:40.393' AS DateTime), N'Hiển thị ngày công bố', 3, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'f05b09f2-ebc0-4fac-949c-0a77ea3f1de1', 83, 27, N'Bài viết', 2, CAST(N'2024-04-15T09:05:16.860' AS DateTime), 2, CAST(N'2024-04-15T09:06:58.523' AS DateTime), N'Nội dung hiển thị', 2, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'3b67a25a-a34d-4025-8d5b-0ab932bd256b', 152, 16, N'0', 2, CAST(N'2024-04-19T09:56:02.717' AS DateTime), 2, CAST(N'2024-04-19T11:04:29.470' AS DateTime), N'Hiển thị ngày công bố', 8, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'244061c1-1b06-4863-9020-0b1b8d3a86ba', 84, 2, N'1', 2, CAST(N'2024-04-15T09:07:55.500' AS DateTime), 2, CAST(N'2024-04-17T09:02:43.870' AS DateTime), N'Sử dụng', 0, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'ea85450c-5113-4446-a7d9-0c80f68dbbdc', 125, 2, N'1', 2, CAST(N'2024-04-17T16:25:43.917' AS DateTime), 2, CAST(N'2024-06-19T11:33:22.100' AS DateTime), N'Sử dụng', 0, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'2ee8d382-6b85-4b6d-aaed-0cc09324a2c1', 115, 1, N'Chuyên mục', 2, CAST(N'2024-04-16T17:34:34.053' AS DateTime), 2, CAST(N'2024-04-16T17:38:33.893' AS DateTime), N'Tiêu đề section', 1, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'c83a0365-12d4-4d21-8065-0cdfc6ebd500', 109, 1, N'Chuyên mục', 2, CAST(N'2024-04-16T16:57:49.867' AS DateTime), 2, CAST(N'2024-04-16T17:01:28.010' AS DateTime), N'Tiêu đề section', 1, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'2f8bf55b-ba03-4254-bbb0-1020fb033934', 117, 25, N'1', 2, CAST(N'2024-04-16T17:36:00.573' AS DateTime), 2, CAST(N'2024-04-16T17:39:08.950' AS DateTime), N'Hiển thị ảnh đại diện', 6, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'b3f2a695-bc17-459e-8345-10d894f6b8d2', 78, 12, N'1', 2, CAST(N'2024-04-15T08:25:09.057' AS DateTime), 2, CAST(N'2024-04-17T14:59:54.820' AS DateTime), N'Hiển thị tên chuyên mục', 4, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'bf2311a4-5f1e-43df-a52a-111c28826a78', 84, 8, N'7', 2, CAST(N'2024-04-15T09:07:55.550' AS DateTime), 2, CAST(N'2024-04-17T09:02:43.870' AS DateTime), N'Số lượng', 3, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'58bb1a5d-d996-486d-b204-112301ef13bf', 148, 12, N'1', 2, CAST(N'2024-04-19T09:54:08.260' AS DateTime), NULL, NULL, N'Hiển thị tên chuyên mục', 1, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'e094d690-88d1-48ea-82bb-1155dd1d4c45', 126, 14, N'1', 2, CAST(N'2024-04-17T16:25:44.000' AS DateTime), NULL, NULL, N'Hiển thị tên bài viết', 7, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'50010937-d8fd-4b11-bcfc-11fd2e83dda0', 7, 8, N'5', 2, CAST(N'2024-04-03T14:30:40.663' AS DateTime), 2, CAST(N'2024-04-17T14:49:27.927' AS DateTime), N'Số lượng', 3, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'7bde544c-c839-4292-ae3b-127b9fa52400', 90, 26, N'13', 2, CAST(N'2024-04-15T14:13:39.540' AS DateTime), 2, CAST(N'2024-04-17T09:07:20.460' AS DateTime), N'Loại view*', 4, 4)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'93b43967-82ec-4f44-95af-12932738ba9a', 121, 33, N'1', 2, CAST(N'2024-04-17T10:47:39.683' AS DateTime), NULL, NULL, N'Hiển thị từ khóa', 11, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'2b1688a9-1d15-4558-bec1-131ff41b4684', 2, 15, N'1', 2, CAST(N'2024-04-08T15:56:25.210' AS DateTime), 2, CAST(N'2024-04-19T13:43:08.897' AS DateTime), N'Hiển thị thumbnail', 6, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'0c3831cb-d829-4e62-a034-1366ba2a36bb', 84, 5, N'3a146610-64c3-4cbf-8129-127311b595e0,086a67b0-0e82-4896-843a-a06bedafe258,41341896-06bf-40c9-b3bd-a3032c885e18,bfecce3d-4dbb-4891-b759-b0a07bcdb547,2f167597-9f57-4a03-9feb-3013eabedf53', 2, CAST(N'2024-04-15T09:07:55.547' AS DateTime), 2, CAST(N'2024-04-17T09:02:43.870' AS DateTime), N'Chuyên mục', 2, 1)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'f16f2136-d69e-420c-a64f-1378ba7330de', 6, 5, N'fee4c680-5952-4b0a-ab24-5eefd52baee7,6eee995f-d0f9-4951-8882-706cf843c0be,11930bab-964d-49eb-a089-2822e94845d9', 2, CAST(N'2024-04-04T13:38:19.227' AS DateTime), 2, CAST(N'2024-07-02T15:22:20.293' AS DateTime), N'Chuyên mục', 1, 1)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'6f00b86f-6afb-4d3c-9399-139e8d9d6227', 163, 2, N'1', 2, CAST(N'2024-04-19T13:48:55.997' AS DateTime), 2, CAST(N'2024-06-17T14:18:34.360' AS DateTime), N'Sử dụng', 0, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'92d9504d-eb73-45cf-8456-14074b785800', 117, 5, N'0c176d07-3354-448f-bcbf-1a2d299c8ec5,c01e27f2-0c42-47f6-9e29-833ec719ba91,cf7cabdc-25ea-49a4-a050-bf698052c312,39f89a2a-aff0-4de8-abe5-c6f114621c5b', 2, CAST(N'2024-04-16T17:36:00.560' AS DateTime), 2, CAST(N'2024-04-16T17:39:08.913' AS DateTime), N'Chuyên mục', 2, 1)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'4ba4f08a-046b-4c9d-8ca4-14641ac14614', 144, 29, N'1', 2, CAST(N'2024-04-19T09:44:07.353' AS DateTime), NULL, NULL, N'Hiển thị thông tin liên hệ', 10, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'fdb322fd-2447-40a5-8492-148a3ca695cd', 121, 2, N'1', 2, CAST(N'2024-04-17T10:47:39.607' AS DateTime), NULL, NULL, N'Sử dụng', 0, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'eaf2e8f2-1643-450f-ab2b-14bec16f49e5', 119, 2, N'1', 2, CAST(N'2024-04-17T10:46:07.380' AS DateTime), NULL, NULL, N'Sử dụng', 0, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'0ea0bae7-e4f7-4f86-accb-150d4ddf23fb', 118, 25, N'1', 2, CAST(N'2024-04-17T10:21:17.213' AS DateTime), NULL, NULL, N'Hiển thị ảnh đại diện', 5, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'aba750b2-b38b-4c3e-9695-153e09492e31', 2, 16, N'1', 2, CAST(N'2024-04-08T15:57:13.750' AS DateTime), 2, CAST(N'2024-04-19T13:43:08.897' AS DateTime), N'Hiển thị ngày công bố', 8, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'72911265-2e61-419e-bd37-169865d8be7d', 91, 13, N'1', 2, CAST(N'2024-04-15T14:15:06.837' AS DateTime), 2, CAST(N'2024-04-15T14:23:50.373' AS DateTime), N'Hiển thị tóm tắt', 10, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'761d32ec-ec05-4524-870c-16d83af58404', 2, 0, N'4', 2, CAST(N'2024-04-02T15:50:19.843' AS DateTime), 2, CAST(N'2024-04-02T16:19:34.810' AS DateTime), N'Số lượng bài viết hiển thị', 3, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'597745c4-9c45-4b29-b146-17a4fa3a2f47', 86, 26, N'7', 2, CAST(N'2024-04-15T09:24:18.773' AS DateTime), 2, CAST(N'2024-04-17T09:06:42.590' AS DateTime), N'Loại view*', 4, 4)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'd112b02f-980b-4fdd-964c-184cc8b6bd0c', 92, 13, N'1', 2, CAST(N'2024-04-15T14:57:31.560' AS DateTime), 2, CAST(N'2024-04-16T16:09:25.410' AS DateTime), N'Hiển thị tóm tắt', 4, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'c00650c6-9fa9-4154-97bb-1889683e565d', 2, 0, N'1', 2, CAST(N'2024-04-02T14:16:12.063' AS DateTime), 2, CAST(N'2024-04-02T15:45:52.140' AS DateTime), N'Hiển thị bài viết', 0, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'a0f2a38c-03ea-414f-9c8e-18ec72f5ec12', 80, 16, N'1', 2, CAST(N'2024-04-15T08:35:26.657' AS DateTime), 2, CAST(N'2024-04-17T08:47:47.133' AS DateTime), N'Hiển thị ngày công bố', 8, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'7ae28913-9fb2-460a-9571-19b3da724c12', 125, 14, N'1', 2, CAST(N'2024-06-19T11:41:15.163' AS DateTime), NULL, NULL, N'Hiển thị tên bài viết', 8, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'596d3f49-abf4-4a7b-833e-19d1a552905f', 99, 32, N'1', 2, CAST(N'2024-04-16T15:30:34.483' AS DateTime), NULL, NULL, N'Hiển thị tác quyền', 9, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'651a3292-0577-4239-b46a-1a600a33d8f1', 108, 16, N'1', 2, CAST(N'2024-04-16T16:57:04.930' AS DateTime), NULL, NULL, N'Hiển thị ngày công bố', 3, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'ad0f6c3f-0fbd-4a59-ab54-1a72528d446a', 114, 30, N'1', 2, CAST(N'2024-04-16T17:34:17.220' AS DateTime), NULL, NULL, N'Hiển thị tác giả', 7, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'd2be9947-462e-479c-bfe6-1a99cea8c0d1', 82, 12, N'1', 2, CAST(N'2024-04-15T08:46:47.453' AS DateTime), 2, CAST(N'2024-04-15T08:50:05.370' AS DateTime), N'Hiển thị tên chuyên mục', 4, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'053a0357-641e-4163-ae5f-1ace7b830ab5', 127, 5, N'3a146610-64c3-4cbf-8129-127311b595e0,086a67b0-0e82-4896-843a-a06bedafe258,41341896-06bf-40c9-b3bd-a3032c885e18,bfecce3d-4dbb-4891-b759-b0a07bcdb547,2f167597-9f57-4a03-9feb-3013eabedf53', 2, CAST(N'2024-04-17T16:25:44.047' AS DateTime), NULL, NULL, N'Chuyên mục', 2, 1)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'7789ed87-6f9d-4075-ac28-1ad784717cf3', 143, 12, N'1', 2, CAST(N'2024-04-19T09:44:07.290' AS DateTime), NULL, NULL, N'Hiển thị tên chuyên mục', 4, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'34120b3f-ea02-45e6-9e80-1b735a62292c', 90, 12, N'1', 2, CAST(N'2024-04-15T14:13:39.540' AS DateTime), 2, CAST(N'2024-04-15T14:30:26.837' AS DateTime), N'Hiển thị tên chuyên mục', 4, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'2c4932b7-6b0a-4e12-88a9-1c184e16b790', 81, 2, N'1', 2, CAST(N'2024-04-15T08:37:45.680' AS DateTime), 2, CAST(N'2024-04-15T08:45:43.663' AS DateTime), N'Sử dụng', 0, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'3a7a3c3a-a40c-4e52-ab53-1c995ceb40d1', 85, 15, N'1', 2, CAST(N'2024-04-15T09:20:08.003' AS DateTime), 2, CAST(N'2024-04-15T09:23:31.977' AS DateTime), N'Hiển thị thumbnail', 6, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'e0160e5d-90c7-4534-927e-1cc9776e7a13', 106, 31, N'1', 2, CAST(N'2024-04-16T16:31:05.227' AS DateTime), NULL, NULL, N'Hiển thị nguồn tin', 8, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'd8f1bf37-9c54-4347-9d96-1d24718a8b8b', 151, 8, N'7', 2, CAST(N'2024-04-19T09:56:02.653' AS DateTime), 2, CAST(N'2024-04-19T11:03:21.240' AS DateTime), N'Số lượng', 3, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'cff2b693-9061-480f-a062-1d42d38343c5', 150, 12, N'1', 2, CAST(N'2024-04-19T09:56:02.600' AS DateTime), 2, CAST(N'2024-04-19T11:02:55.490' AS DateTime), N'Hiển thị tên chuyên mục', 4, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'2967a893-997e-455b-8df3-1d5bbab0c0ce', 78, 8, N'7', 2, CAST(N'2024-04-15T08:25:09.047' AS DateTime), 2, CAST(N'2024-04-17T14:59:54.820' AS DateTime), N'Số lượng', 3, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'ddb7a80e-73a6-455d-af55-1dd870bae1fc', 118, 13, N'1', 2, CAST(N'2024-04-17T10:21:17.200' AS DateTime), NULL, NULL, N'Hiển thị tóm tắt', 4, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'3642159a-718d-4bac-be43-1df0d0c03d5b', 120, 30, N'1', 2, CAST(N'2024-04-17T10:47:22.037' AS DateTime), NULL, NULL, N'Hiển thị tác giả', 7, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'af213a4f-b27e-4fb7-8520-1e1a9adf0aba', 121, 14, N'1', 2, CAST(N'2024-04-17T10:47:39.620' AS DateTime), NULL, NULL, N'Hiển thị tên bài viết', 2, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'dd4caadd-63bb-4ed2-a7fd-1e4cb264f999', 110, 2, N'1', 2, CAST(N'2024-04-16T16:58:10.670' AS DateTime), 2, CAST(N'2024-04-16T17:26:33.660' AS DateTime), N'Sử dụng', 0, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'2613f0ac-ac0f-433f-aa15-1ed34ba71ad5', 77, 2, N'1', 2, CAST(N'2024-04-15T08:19:02.697' AS DateTime), 2, CAST(N'2024-04-15T08:22:26.183' AS DateTime), N'Sử dụng', 0, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'996efa45-bd70-472b-a0cd-1f3f613a9cc6', 80, 11, N'0', 2, CAST(N'2024-04-15T08:35:26.650' AS DateTime), 2, CAST(N'2024-04-17T08:47:47.110' AS DateTime), N'Phân trang', 6, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'352c4821-5bf2-4c38-b45f-2057a32bbcb2', 69, 11, N'1', 2, CAST(N'2024-04-10T11:12:11.727' AS DateTime), 2, CAST(N'2024-04-17T14:41:29.417' AS DateTime), N'Phân trang', 4, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'a715160e-cbb5-48ad-98fa-2072bfc74fdb', 3, 8, N'6', 2, CAST(N'2024-04-02T15:51:25.770' AS DateTime), 2, CAST(N'2024-04-15T07:51:56.687' AS DateTime), N'Số lượng', 2, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'a0a10348-c069-4ccf-b6f7-212ddf517864', 124, 15, N'1', 2, CAST(N'2024-04-17T16:25:43.870' AS DateTime), 2, CAST(N'2024-06-17T09:20:06.420' AS DateTime), N'Hiển thị thumbnail', 8, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'725451ea-23fe-4cc2-a8b9-21514ab26788', 7, 14, N'1', 2, CAST(N'2024-04-11T09:31:24.383' AS DateTime), 2, CAST(N'2024-04-17T14:49:27.927' AS DateTime), N'Hiển thị tiêu đề', 6, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'7fd91428-5830-4ca9-a404-219643f271cc', 9, 26, N'9', 2, CAST(N'2024-04-11T18:32:13.910' AS DateTime), 2, CAST(N'2024-04-17T15:51:58.647' AS DateTime), N'Loại view*', 3, 4)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'f22d914a-321d-4752-ba4f-21ddfe74b670', 90, 2, N'1', 2, CAST(N'2024-04-15T14:13:39.503' AS DateTime), 2, CAST(N'2024-04-15T14:30:26.817' AS DateTime), N'Sử dụng', 0, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'2f021875-d409-45f1-bd08-21f7bbf835f4', 3, 20, N'1', 2, CAST(N'2024-04-11T09:48:09.437' AS DateTime), 2, CAST(N'2024-04-15T07:51:56.723' AS DateTime), N'Hiển thị tiêu đề Section', 7, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'06ba71c0-212d-4cf3-b7b6-2220259bac50', 163, 20, N'1', 2, CAST(N'2024-04-19T13:48:56.013' AS DateTime), 2, CAST(N'2024-06-17T14:18:34.387' AS DateTime), N'Hiển thị tiêu đề section', 5, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'd61d6f7b-88eb-4134-9174-227784f2dfee', 121, 30, N'1', 2, CAST(N'2024-04-17T10:47:39.660' AS DateTime), NULL, NULL, N'Hiển thị tác giả', 7, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'3a1af30b-198b-4b9d-86bb-232a1c48b232', 150, 16, N'0', 2, CAST(N'2024-04-19T09:56:02.620' AS DateTime), 2, CAST(N'2024-04-19T11:02:55.543' AS DateTime), N'Hiển thị ngày công bố', 8, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'4da960ba-da27-4458-93d0-23637f4c5404', 161, 8, N'5', 2, CAST(N'2024-04-19T13:48:55.893' AS DateTime), 2, CAST(N'2024-06-19T15:20:56.053' AS DateTime), N'Số lượng', 3, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'9a75d0e8-07a5-4306-9b90-23755ad07fc1', 91, 5, N'f1ac63bb-7eba-4041-8c70-2c70d8e64133', 2, CAST(N'2024-04-15T14:15:06.813' AS DateTime), 2, CAST(N'2024-04-15T14:23:50.313' AS DateTime), N'Chuyên mục', 2, 1)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'dc8fa856-b01b-4025-a80f-2377f4957622', 153, 15, N'1', 2, CAST(N'2024-04-19T11:06:30.183' AS DateTime), NULL, NULL, N'Hiển thị thumbnail', 4, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'079f0f4d-e9bc-4b9f-ab8e-23cd7bf53a9c', 163, 11, N'1', 2, CAST(N'2024-04-19T13:48:56.020' AS DateTime), 2, CAST(N'2024-06-17T14:18:34.397' AS DateTime), N'Phân trang', 6, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'4f5ba72d-8c03-455a-bf0a-2444b30a2c18', 88, 13, N'1', 2, CAST(N'2024-04-15T13:45:48.463' AS DateTime), 2, CAST(N'2024-04-16T09:16:57.097' AS DateTime), N'Hiển thị tóm tắt', 10, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'd7077ad5-e96d-4535-9caa-244587b1bde3', 124, 5, N'20a19e58-4624-49b2-af25-6c79b8f339df,858188b5-6fbd-4b0d-9354-20c1be90727d', 2, CAST(N'2024-04-17T16:25:43.843' AS DateTime), 2, CAST(N'2024-06-17T09:12:06.100' AS DateTime), N'Chuyên mục', 2, 1)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'79ab661c-e732-421b-bb58-252be469c618', 7, 11, N'1', 2, CAST(N'2024-04-12T16:51:57.780' AS DateTime), 2, CAST(N'2024-04-17T14:49:27.927' AS DateTime), N'Phân trang', 4, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'23722b34-b2ef-428e-91ac-2536023d45d9', 92, 29, N'1', 2, CAST(N'2024-04-16T14:49:23.670' AS DateTime), 2, CAST(N'2024-04-16T16:09:25.520' AS DateTime), N'Hiển thị thông tin liên hệ', 10, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'eb4ead1b-2186-478b-b96b-25bb752e90a6', 106, 32, N'1', 2, CAST(N'2024-04-16T16:31:05.230' AS DateTime), NULL, NULL, N'Hiển thị tác quyền', 9, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'07474e42-ba1a-4599-9f3a-25f3501526be', 81, 20, N'1', 2, CAST(N'2024-04-15T08:37:45.957' AS DateTime), 2, CAST(N'2024-04-15T08:45:43.700' AS DateTime), N'Hiển thị tiêu đề section', 5, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'fa63ab89-740e-41be-b29a-25feb903b33d', 153, 25, N'1', 2, CAST(N'2024-04-19T09:56:02.740' AS DateTime), NULL, NULL, N'Hiển thị ảnh đại diện', 5, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'ae518c18-27bf-4713-a408-26af65335fd3', 78, 20, N'1', 2, CAST(N'2024-04-15T08:25:09.057' AS DateTime), 2, CAST(N'2024-04-17T14:59:54.823' AS DateTime), N'Hiển thị tiêu đề section', 5, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'782349f9-385a-4e45-bac0-27075896d18d', 160, 31, N'1', 2, CAST(N'2024-04-19T13:48:55.770' AS DateTime), 2, CAST(N'2024-06-20T15:05:40.430' AS DateTime), N'Hiển thị nguồn tin', 8, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'1df38017-fc8c-4742-8281-2750ad5cf411', 148, 13, N'1', 2, CAST(N'2024-04-19T09:54:08.267' AS DateTime), NULL, NULL, N'Hiển thị tóm tắt', 4, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'311c5103-da86-47bb-9bf6-27a7be7ca119', 148, 14, N'1', 2, CAST(N'2024-04-19T09:54:08.260' AS DateTime), NULL, NULL, N'Hiển thị tên bài viết', 2, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'0a63150d-6b9f-4823-b175-28187ad5a41c', 120, 16, N'1', 2, CAST(N'2024-04-17T10:47:22.027' AS DateTime), NULL, NULL, N'Hiển thị ngày công bố', 3, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'a556635a-3d51-4224-9d75-281c54c2a401', 151, 14, N'1', 2, CAST(N'2024-04-19T09:56:02.670' AS DateTime), 2, CAST(N'2024-04-19T11:03:21.270' AS DateTime), N'Hiển thị tên bài viết', 7, NULL)
GO
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'bd00ee56-bc1d-48a0-b212-283e61d9438f', 124, 35, N'1', 2, CAST(N'2024-06-17T09:19:27.680' AS DateTime), NULL, NULL, N'Là câu hỏi', 7, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'887b7810-5453-498f-83be-28683db64ff1', 82, 2, N'1', 2, CAST(N'2024-04-15T08:46:47.417' AS DateTime), 2, CAST(N'2024-04-15T08:50:05.343' AS DateTime), N'Sử dụng', 0, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'ae53ec1b-e4ec-4577-94fd-28c3bd8f6b19', 7, 20, N'1', 2, CAST(N'2024-04-11T09:37:47.807' AS DateTime), 2, CAST(N'2024-04-17T14:49:27.927' AS DateTime), N'Hiển thị tiêu đề Section', 8, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'e1fc778f-7354-49ef-a261-29409aa29257', 79, 25, N'1', 2, CAST(N'2024-04-15T08:28:48.537' AS DateTime), 2, CAST(N'2024-04-17T08:47:32.513' AS DateTime), N'Hiển thị ảnh đại diện', 6, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'6f340594-fcf1-49a5-9a39-29a4d3f7ccbf', 85, 8, N'5', 2, CAST(N'2024-04-15T09:20:07.993' AS DateTime), 2, CAST(N'2024-04-15T09:23:31.897' AS DateTime), N'Số lượng', 3, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'bc8c5d38-6702-4981-ae8a-2a41636fc539', 121, 29, N'1', 2, CAST(N'2024-04-17T10:47:39.680' AS DateTime), NULL, NULL, N'Hiển thị thông tin liên hệ', 10, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'8c685c07-6f68-41b7-a5f3-2a619397e04f', 92, 25, N'1', 2, CAST(N'2024-04-15T14:57:31.553' AS DateTime), 2, CAST(N'2024-04-16T16:09:25.410' AS DateTime), N'Hiển thị ảnh đại diện', 5, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'0658980b-67dc-49bf-82e7-2ada46df99a4', 148, 30, N'1', 2, CAST(N'2024-04-19T09:54:08.273' AS DateTime), NULL, NULL, N'Hiển thị tác giả', 7, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'17d8536c-3599-4a02-ad30-2affd076701c', 153, 17, N'1', 2, CAST(N'2024-04-19T09:56:02.743' AS DateTime), NULL, NULL, N'Hiển thị nội dung', 6, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'4472d225-80d7-4e27-bc72-2b752d177da7', 85, 12, N'0', 2, CAST(N'2024-04-15T09:20:07.997' AS DateTime), 2, CAST(N'2024-04-15T09:23:31.897' AS DateTime), N'Hiển thị tên chuyên mục', 4, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'61a562b7-c551-4104-be70-2b97ce36f55c', 86, 16, N'1', 2, CAST(N'2024-04-15T09:24:18.790' AS DateTime), 2, CAST(N'2024-04-15T09:29:25.343' AS DateTime), N'Hiển thị ngày công bố', 8, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'aee7d4cb-24af-464d-b814-2c9fe9e79071', 87, 25, N'1', 2, CAST(N'2024-04-15T09:31:00.910' AS DateTime), 2, CAST(N'2024-04-15T09:31:31.470' AS DateTime), N'Hiển thị ảnh đại diện', 6, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'7dbfe4c9-fea5-49a7-bae1-2cccd6eeca5c', 90, 16, N'1', 2, CAST(N'2024-04-15T14:13:39.553' AS DateTime), 2, CAST(N'2024-04-15T14:30:26.857' AS DateTime), N'Hiển thị ngày công bố', 8, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'6b4811dd-ae78-4343-aee5-2d0cbb0e28fa', 126, 20, N'1', 2, CAST(N'2024-04-17T16:25:43.990' AS DateTime), NULL, NULL, N'Hiển thị tiêu đề section', 5, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'620ea9b1-e358-444b-81a1-2d3df24bf5a0', 82, 27, N'Bài viết', 2, CAST(N'2024-04-15T08:46:47.447' AS DateTime), 2, CAST(N'2024-04-15T08:50:05.343' AS DateTime), N'Nội dung hiển thị', 2, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'0fbf1e40-dee8-47db-b0f8-2db78e6c695e', 144, 17, N'1', 2, CAST(N'2024-04-19T09:44:07.343' AS DateTime), NULL, NULL, N'Hiển thị nội dung', 6, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'969b7009-0799-4ec8-a7ec-2dbeb1fd4459', 121, 13, N'1', 2, CAST(N'2024-04-17T10:47:39.653' AS DateTime), NULL, NULL, N'Hiển thị tóm tắt', 4, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'9852c7f4-82c2-45cf-91d0-2e57b356dcb6', 110, 25, N'1', 2, CAST(N'2024-04-16T16:58:10.683' AS DateTime), 2, CAST(N'2024-04-16T17:26:33.673' AS DateTime), N'Hiển thị ảnh đại diện', 6, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'fb96bbf4-b6c8-48ad-829e-2e8aa983aa49', 126, 5, N'3a146610-64c3-4cbf-8129-127311b595e0,086a67b0-0e82-4896-843a-a06bedafe258,41341896-06bf-40c9-b3bd-a3032c885e18,bfecce3d-4dbb-4891-b759-b0a07bcdb547,2f167597-9f57-4a03-9feb-3013eabedf53', 2, CAST(N'2024-04-17T16:25:43.980' AS DateTime), NULL, NULL, N'Chuyên mục', 2, 1)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'1117ce02-94b4-40bb-88b1-3006f543f9d1', 65, 8, N'6', 2, CAST(N'2024-04-09T16:35:43.727' AS DateTime), 2, CAST(N'2024-04-17T14:58:53.440' AS DateTime), N'Số lượng', 3, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'2baba4f0-c160-45a2-93fd-30853821f5e5', 124, 11, N'1', 2, CAST(N'2024-04-17T16:25:43.873' AS DateTime), 2, CAST(N'2024-06-17T09:12:06.117' AS DateTime), N'Phân trang', 6, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'683b7c4a-1a5c-4a13-938c-30cd17c307e6', 152, 1, N'Tin nổi bật', 2, CAST(N'2024-04-19T09:56:02.697' AS DateTime), 2, CAST(N'2024-04-19T11:04:29.357' AS DateTime), N'Tiêu đề section', 1, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'db5de82b-a994-443b-95f8-329475ebc543', 82, 8, N'10', 2, CAST(N'2024-04-15T08:46:47.447' AS DateTime), 2, CAST(N'2024-04-15T08:50:05.343' AS DateTime), N'Số lượng', 3, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'7770b9e7-5592-4b27-9416-32e7aabd0704', 110, 1, N'Đọc nhiều nhất', 2, CAST(N'2024-04-16T16:58:10.670' AS DateTime), 2, CAST(N'2024-04-16T17:26:33.660' AS DateTime), N'Tiêu đề section', 1, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'5c18ee48-e58d-47ef-bf55-3323c5fb1b99', 2, 6, N'94f2b4ce-4e63-40e5-bab6-02c662db6978', 2, CAST(N'2024-04-02T18:53:03.493' AS DateTime), 2, CAST(N'2024-04-03T11:07:20.893' AS DateTime), N'Danh sách bài viết của', 2, 1)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'8e5c0a28-313f-4814-99d8-332ba174b56a', 102, 20, N'1', 2, CAST(N'2024-04-19T10:22:48.723' AS DateTime), NULL, NULL, N'Hiển thị tiêu đề Section', 2, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'1d5fd5e5-99d8-401f-b82c-33a47bd035e6', 117, 15, N'1', 2, CAST(N'2024-04-16T17:36:00.573' AS DateTime), 2, CAST(N'2024-04-16T17:39:08.957' AS DateTime), N'Hiển thị thumbnail', 6, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'414a4e25-75bc-4291-ac8d-3404ff137c45', 127, 26, N'12', 2, CAST(N'2024-04-17T16:25:44.053' AS DateTime), NULL, NULL, N'Loại view*', 4, 4)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'6dd9d3eb-628f-45f0-90b4-343406abea8a', 86, 8, N'10', 2, CAST(N'2024-04-15T09:24:18.773' AS DateTime), 2, CAST(N'2024-04-15T09:29:25.260' AS DateTime), N'Số lượng', 3, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'4dee1861-ff3f-4678-aff8-346003c12a8c', 114, 29, N'1', 2, CAST(N'2024-04-16T17:34:17.263' AS DateTime), NULL, NULL, N'Hiển thị thông tin liên hệ', 10, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'3610026a-fb14-4939-9099-34737822c474', 9, 12, N'0', 2, CAST(N'2024-04-11T09:20:24.120' AS DateTime), 2, CAST(N'2024-04-17T15:51:58.673' AS DateTime), N'Hiển thị tên chuyên mục', 6, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'fb8c6a96-cd31-4110-9430-35443b761b4a', 84, 15, N'1', 2, CAST(N'2024-04-15T09:07:55.560' AS DateTime), 2, CAST(N'2024-04-17T09:02:43.897' AS DateTime), N'Hiển thị thumbnail', 6, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'a5999210-09a8-4f5f-8d01-3619e21c27a5', 92, 2, N'1', 2, CAST(N'2024-04-15T14:57:31.503' AS DateTime), 2, CAST(N'2024-04-16T16:09:25.410' AS DateTime), N'Sử dụng', 0, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'df886290-cece-4a13-add5-3696a20dab70', 9, 1, N'Sản phẩm', 2, CAST(N'2024-04-03T13:55:39.940' AS DateTime), 2, CAST(N'2024-04-17T15:51:58.647' AS DateTime), N'Tiêu đề section', 1, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'b2317961-0c0b-4e4e-8cae-36bf1adcc45c', 115, 25, N'1', 2, CAST(N'2024-04-16T17:34:34.120' AS DateTime), 2, CAST(N'2024-04-16T17:38:33.940' AS DateTime), N'Hiển thị ảnh đại diện', 6, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'9a0f2e85-76ea-4e93-b183-372682c79aec', 3, 5, N'b51f7635-9fb5-4494-95a3-10b57d0b5cf4', 2, CAST(N'2024-04-04T08:24:33.577' AS DateTime), 2, CAST(N'2024-04-15T07:51:56.690' AS DateTime), N'Chuyên mục', 3, 1)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'52b1941d-3bb3-46d5-af24-372ce3eaa7f3', 161, 16, N'0', 2, CAST(N'2024-04-19T13:48:55.910' AS DateTime), 2, CAST(N'2024-06-19T15:20:56.100' AS DateTime), N'Hiển thị ngày công bố', 8, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'98cd05cd-f0e5-4c58-885b-37c467951723', 120, 12, N'1', 2, CAST(N'2024-04-17T10:47:22.017' AS DateTime), NULL, NULL, N'Hiển thị tên chuyên mục', 1, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'9b797a82-aa63-40ab-9ac2-3820ccee9dbd', 80, 8, N'3', 2, CAST(N'2024-04-15T08:35:26.640' AS DateTime), 2, CAST(N'2024-04-17T08:47:47.060' AS DateTime), N'Số lượng', 3, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'380ea14c-4732-48a5-b7d4-38382f017f56', 81, 14, N'1', 2, CAST(N'2024-04-15T08:37:45.993' AS DateTime), 2, CAST(N'2024-04-15T08:45:43.700' AS DateTime), N'Hiển thị tên bài viết', 7, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'412aabb4-a5cd-44a9-89a9-397df65370f6', 86, 15, N'1', 2, CAST(N'2024-04-15T09:24:18.780' AS DateTime), 2, CAST(N'2024-04-15T09:29:25.310' AS DateTime), N'Hiển thị thumbnail', 6, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'3b96178a-3cbe-4013-b5f8-3a4dce6cdb7b', 99, 17, N'1', 2, CAST(N'2024-04-16T15:30:34.477' AS DateTime), NULL, NULL, N'Hiển thị nội dung', 6, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'077758b9-b5cf-4cbf-b39c-3ab0bebad247', 3, 0, N'Dịch vụ', 2, CAST(N'2024-04-01T09:49:15.923' AS DateTime), 2, CAST(N'2024-04-02T15:48:15.550' AS DateTime), N'Tiêu đề(Dịch vụ)', 7, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'72bfea25-942f-46b8-b878-3ac23ef9708f', 127, 13, N'1', 2, CAST(N'2024-04-17T16:25:44.070' AS DateTime), NULL, NULL, N'Hiển thị tóm tắt', 10, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'df5a8d67-1dd0-4db9-b9a0-3af38d5e0baa', 108, 31, N'1', 2, CAST(N'2024-04-16T16:57:04.943' AS DateTime), NULL, NULL, N'Hiển thị nguồn tin', 8, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'9463ec20-a814-4422-89c3-3afcfe649a45', 125, 12, N'1', 2, CAST(N'2024-04-17T16:25:43.930' AS DateTime), 2, CAST(N'2024-06-19T11:33:22.093' AS DateTime), N'Hiển thị tên chuyên mục', 4, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'a73a5bf1-bbf1-4b94-947a-3b4fdd1d3b8b', 119, 16, N'1', 2, CAST(N'2024-04-17T10:46:07.390' AS DateTime), NULL, NULL, N'Hiển thị ngày công bố', 3, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'65e1c9b5-7ba7-48f8-ae9d-3b5873f37eb7', 110, 12, N'0', 2, CAST(N'2024-04-16T16:58:10.677' AS DateTime), 2, CAST(N'2024-04-16T17:26:33.663' AS DateTime), N'Hiển thị tên chuyên mục', 4, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'c5b11846-0452-4b64-95f5-3ba74874fc45', 150, 13, N'1', 2, CAST(N'2024-04-19T09:56:02.620' AS DateTime), 2, CAST(N'2024-04-19T11:02:55.670' AS DateTime), N'Hiển thị tóm tắt', 10, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'897c57db-2d04-402c-ab20-3bdc4ec274c1', 87, 11, N'0', 2, CAST(N'2024-04-15T09:31:00.910' AS DateTime), 2, CAST(N'2024-04-15T09:31:31.477' AS DateTime), N'Phân trang', 6, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'8f1168dd-79c2-43fd-ad25-3c2388852545', 0, 0, N'fee4c680-5952-4b0a-ab24-5eefd52baee7,06de3702-a8ed-4d10-8729-8ae10314aaba', 2, CAST(N'2024-03-27T18:58:40.607' AS DateTime), 2, CAST(N'2024-04-02T14:15:30.733' AS DateTime), NULL, 0, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'eaf42d60-bd20-4f54-bbe0-3c26e0b775d2', 0, 8, N'43242342', 2, CAST(N'2024-04-19T09:18:10.763' AS DateTime), 2, CAST(N'2024-04-19T09:18:30.563' AS DateTime), N'Số lượng', 4, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'65218554-4ca0-4de0-868d-3c980773c0ef', 124, 12, N'1', 2, CAST(N'2024-04-17T16:25:43.850' AS DateTime), 2, CAST(N'2024-06-17T09:12:06.023' AS DateTime), N'Hiển thị tên chuyên mục', 4, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'b9defb56-c7da-4a04-a94a-3cf1c76f902c', 90, 1, N'Bài viết khác', 2, CAST(N'2024-04-15T14:13:39.527' AS DateTime), 2, CAST(N'2024-04-15T14:30:26.817' AS DateTime), N'Tiêu đề section', 1, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'c4b3a0b2-1c27-4a2a-b953-3e4bbe3e06a7', 99, 2, N'1', 2, CAST(N'2024-04-16T15:30:34.447' AS DateTime), NULL, NULL, N'Sử dụng', 0, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'930047e5-5f8b-4e61-98f7-3ea9d2cdac0d', 85, 16, N'1', 2, CAST(N'2024-04-15T09:20:08.010' AS DateTime), 2, CAST(N'2024-04-15T09:23:31.977' AS DateTime), N'Hiển thị ngày công bố', 8, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'aeea4464-b520-4392-98ac-3f1bc949d937', 126, 2, N'1', 2, CAST(N'2024-04-17T16:25:43.973' AS DateTime), NULL, NULL, N'Sử dụng', 0, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'66cf7e1f-dc93-4bad-bf3a-3f4aa3d2400b', 6, 8, N'10', 2, CAST(N'2024-04-11T10:51:57.777' AS DateTime), 2, CAST(N'2024-07-02T15:22:20.297' AS DateTime), N'Số lượng', 3, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'615bb736-f91a-4032-943b-3fd2f02a5870', 120, 17, N'1', 2, CAST(N'2024-04-17T10:47:22.033' AS DateTime), NULL, NULL, N'Hiển thị nội dung', 6, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'de2290a9-7295-423b-ab45-3fd756f87b9f', 115, 2, N'1', 2, CAST(N'2024-04-16T17:34:34.040' AS DateTime), 2, CAST(N'2024-04-16T17:38:33.893' AS DateTime), N'Sử dụng', 0, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'fa60d5c8-1ec6-4c81-bf74-406815288c69', 86, 20, N'1', 2, CAST(N'2024-04-15T09:24:18.780' AS DateTime), 2, CAST(N'2024-04-15T09:29:25.303' AS DateTime), N'Hiển thị tiêu đề section', 5, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'043db02c-62a6-44aa-8595-410d5faf5832', 90, 11, N'1', 2, CAST(N'2024-04-15T14:13:39.547' AS DateTime), 2, CAST(N'2024-04-15T14:30:26.840' AS DateTime), N'Phân trang', 6, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'd45e6366-c0da-4bec-94e9-4136960feba8', 0, 0, NULL, 2, CAST(N'2024-04-02T10:24:46.413' AS DateTime), 2, CAST(N'2024-04-02T14:15:30.793' AS DateTime), NULL, 0, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'7927e048-23ee-4d94-afe1-419209e9f8de', 127, 14, N'1', 2, CAST(N'2024-04-17T16:25:44.067' AS DateTime), NULL, NULL, N'Hiển thị tên bài viết', 7, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'2630f5b4-d904-4188-b4e7-41b668111517', 87, 1, N'Đọc nhiều nhất', 2, CAST(N'2024-04-15T09:31:00.877' AS DateTime), 2, CAST(N'2024-04-15T09:31:31.450' AS DateTime), N'Tiêu đề section', 1, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'd6f9cce4-a7a0-41a0-9d3a-41bc1314cb51', 0, 0, N'4', 2, CAST(N'2024-03-29T08:52:19.840' AS DateTime), 2, CAST(N'2024-04-02T14:15:30.633' AS DateTime), NULL, 0, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'2e2930da-149c-4abb-a677-420b02bd9cd4', 86, 14, N'1', 2, CAST(N'2024-04-15T09:24:18.787' AS DateTime), 2, CAST(N'2024-04-15T09:29:25.333' AS DateTime), N'Hiển thị tên bài viết', 7, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'4fe37644-348f-46f4-801d-422aab334047', 111, 13, N'1', 2, CAST(N'2024-04-16T16:59:34.000' AS DateTime), 2, CAST(N'2024-04-16T17:06:50.980' AS DateTime), N'Hiển thị tóm tắt', 10, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'5379b3f1-2698-4c28-978a-432a76a48719', 135, 2, N'1', 2, CAST(N'2024-04-19T08:41:32.730' AS DateTime), 2, CAST(N'2024-04-19T11:31:36.833' AS DateTime), N'Sử dụng', 0, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'bd9b034c-d640-49bc-ba63-43704b9401d8', 87, 5, N'92729d2a-9c36-4d7b-82e4-fb7ffa8c6a59', 2, CAST(N'2024-04-15T09:31:00.897' AS DateTime), 2, CAST(N'2024-04-15T09:31:31.450' AS DateTime), N'Chuyên mục', 2, 1)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'b0a6a2d1-4525-4667-a21f-43cc1681e21c', 80, 25, N'1', 2, CAST(N'2024-04-15T08:35:26.650' AS DateTime), 2, CAST(N'2024-04-17T08:47:47.110' AS DateTime), N'Hiển thị ảnh đại diện', 6, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'033883ec-0385-4104-9588-4487e05cf49d', 161, 1, N'Chuyên mục', 2, CAST(N'2024-04-19T13:48:55.887' AS DateTime), 2, CAST(N'2024-06-19T15:20:56.040' AS DateTime), N'Tiêu đề section', 1, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'b41a3500-bb1c-4cf0-9ed2-451fb79c15f4', 121, 5, N'c78e3281-a93e-4406-a5e7-1b2e05d71f89', 2, CAST(N'2024-04-17T10:51:39.740' AS DateTime), NULL, NULL, N'Danh mục', 1, 2)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'7812a486-70d5-469c-9770-45837b97c82d', 151, 11, N'1', 2, CAST(N'2024-04-19T09:56:02.663' AS DateTime), 2, CAST(N'2024-04-19T11:03:21.257' AS DateTime), N'Phân trang', 6, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'33af896f-ce95-4d5c-80a8-4633afef1c82', 115, 13, N'1', 2, CAST(N'2024-04-16T17:34:34.127' AS DateTime), 2, CAST(N'2024-04-16T17:38:33.937' AS DateTime), N'Hiển thị tóm tắt', 10, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'fe6b45b3-f617-4275-81bc-4667251273e3', 163, 12, N'1', 2, CAST(N'2024-04-19T13:48:56.010' AS DateTime), 2, CAST(N'2024-06-17T14:18:34.373' AS DateTime), N'Hiển thị tên chuyên mục', 4, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'34090325-5379-46af-bf72-478675489cde', 94, 11, N'1', 2, CAST(N'2024-04-15T16:33:37.537' AS DateTime), 2, CAST(N'2024-04-15T17:42:54.713' AS DateTime), N'Phân trang', 6, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'85a50111-af16-45a4-8d35-479180dab391', 111, 16, N'1', 2, CAST(N'2024-04-16T16:59:33.997' AS DateTime), 2, CAST(N'2024-04-16T17:06:50.970' AS DateTime), N'Hiển thị ngày công bố', 8, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'eef214fc-f1bd-451d-b625-47a6a140e87e', 117, 14, N'1', 2, CAST(N'2024-04-16T17:36:00.580' AS DateTime), 2, CAST(N'2024-04-16T17:39:08.960' AS DateTime), N'Hiển thị tên bài viết', 7, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'a9a06700-71a1-40fa-a654-4a485d10c463', 78, 27, N'Bài viết', 2, CAST(N'2024-04-15T08:25:09.043' AS DateTime), 2, CAST(N'2024-04-15T08:34:44.450' AS DateTime), N'Nội dung hiển thị', 2, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'1fa7fd36-efa2-4705-b645-4ad257001fab', 106, 14, N'1', 2, CAST(N'2024-04-16T16:31:05.213' AS DateTime), NULL, NULL, N'Hiển thị tên bài viết', 2, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'07aecc22-66ab-4289-9d28-4ad54329769f', 87, 8, N'3', 2, CAST(N'2024-04-15T09:31:00.900' AS DateTime), 2, CAST(N'2024-04-15T09:31:31.453' AS DateTime), N'Số lượng', 3, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'423ac377-27ea-4408-b092-4b054468b55c', 80, 1, N'Tin chuyên ngành', 2, CAST(N'2024-04-15T08:35:26.633' AS DateTime), 2, CAST(N'2024-04-17T08:47:47.060' AS DateTime), N'Tiêu đề section', 1, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'25984c16-7272-445a-bc88-4b91d30a3caa', 79, 1, N'Tin hoạt động', 2, CAST(N'2024-04-15T08:28:48.487' AS DateTime), 2, CAST(N'2024-04-17T08:47:32.470' AS DateTime), N'Tiêu đề section', 1, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'2b57cbad-dda5-473e-837c-4bc5417b3d47', 92, 14, N'1', 2, CAST(N'2024-04-15T14:57:31.553' AS DateTime), 2, CAST(N'2024-04-16T16:09:25.410' AS DateTime), N'Hiển thị tên bài viết', 2, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'770e961b-9a70-4afa-ba4e-4c748fc9c058', 92, 27, N'Bài viết', 2, CAST(N'2024-04-15T14:57:31.533' AS DateTime), NULL, NULL, N'Nội dung hiển thị', 2, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'd1c924d5-59e5-4143-b77f-4c85253bdb59', 153, 8, N'10', 2, CAST(N'2024-04-19T10:06:41.907' AS DateTime), NULL, NULL, N'Số lượng', 1, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'9779b305-7340-42ba-8144-4ca1236faa5e', 124, 2, N'1', 2, CAST(N'2024-04-17T16:25:43.817' AS DateTime), 2, CAST(N'2024-06-17T09:12:06.023' AS DateTime), N'Sử dụng', 0, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'cd2cf147-c08d-4f65-aebf-4cf26acbcbe7', 160, 12, N'1', 2, CAST(N'2024-04-19T13:48:55.747' AS DateTime), 2, CAST(N'2024-06-20T15:05:40.393' AS DateTime), N'Hiển thị tên chuyên mục', 1, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'48a16c5b-b6a9-4001-98ad-4d1b7c34cdf7', 111, 25, N'1', 2, CAST(N'2024-04-16T16:59:33.993' AS DateTime), 2, CAST(N'2024-04-16T17:06:50.953' AS DateTime), N'Hiển thị ảnh đại diện', 6, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'30fe5575-5443-4ac2-9c0b-4d31726a6564', 121, 1, N'Khách hàng đối tác', 2, CAST(N'2024-04-17T10:47:39.627' AS DateTime), NULL, NULL, N'Tiêu đề section', 3, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'8748ac0a-81b7-4cda-b2f1-4dc27ec4e4ea', 80, 13, N'1', 2, CAST(N'2024-04-15T08:35:26.660' AS DateTime), 2, CAST(N'2024-04-17T08:47:47.140' AS DateTime), N'Hiển thị tóm tắt', 10, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'b7d7b9d1-897c-4dd0-ac5a-4e25c569cc41', 121, 31, N'1', 2, CAST(N'2024-04-17T10:47:39.663' AS DateTime), NULL, NULL, N'Hiển thị nguồn tin', 8, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'bfc8872d-e817-45fa-8744-4ea6107d57c1', 114, 16, N'1', 2, CAST(N'2024-04-16T17:34:17.187' AS DateTime), NULL, NULL, N'Hiển thị ngày công bố', 3, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'e35063c9-63fb-47e9-8bf6-4f1cda446963', 80, 15, N'1', 2, CAST(N'2024-04-15T08:35:26.653' AS DateTime), 2, CAST(N'2024-04-17T08:47:47.120' AS DateTime), N'Hiển thị thumbnail', 6, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'0d0083af-1eee-4556-9731-4f391eb522d7', 90, 13, N'1', 2, CAST(N'2024-04-15T14:13:39.553' AS DateTime), 2, CAST(N'2024-04-15T14:30:26.867' AS DateTime), N'Hiển thị tóm tắt', 10, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'17af5a36-d9a7-4e84-bf8a-4f4cac7113c2', 88, 26, N'13', 2, CAST(N'2024-04-15T13:45:48.447' AS DateTime), 2, CAST(N'2024-04-17T09:07:07.880' AS DateTime), N'Loại view*', 4, 4)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'b9fe8641-74ee-40bf-9328-4f7cee9e1972', 161, 14, N'1', 2, CAST(N'2024-04-19T13:48:55.910' AS DateTime), 2, CAST(N'2024-06-19T15:20:56.100' AS DateTime), N'Hiển thị tên bài viết', 7, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'990f862a-8d7d-4869-b31e-502ee0b6615e', 77, 15, N'1', 2, CAST(N'2024-04-15T08:19:02.777' AS DateTime), 2, CAST(N'2024-04-15T08:22:26.240' AS DateTime), N'Hiển thị thumbnail', 6, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'a6f01d17-fa9e-49b7-a80a-503e6af7f496', 124, 16, N'1', 2, CAST(N'2024-04-17T16:25:43.890' AS DateTime), 2, CAST(N'2024-06-17T09:20:28.813' AS DateTime), N'Hiển thị ngày công bố', 9, NULL)
GO
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'81763823-1513-4a99-abee-50743fe7517f', 9, 16, N'0', 2, CAST(N'2024-04-11T09:22:31.557' AS DateTime), 2, CAST(N'2024-04-17T15:51:58.673' AS DateTime), N'Hiển thị ngày công bố', 7, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'9e2c591f-426c-4486-9f82-509f6cc2c814', 0, 3, N'/Upload\Theme\2024\Khamphahue_QuyGiaoDucHueHieuHocnamHoc2023-2024_1713492043.jpg', 2, CAST(N'2024-04-19T08:48:37.320' AS DateTime), 2, CAST(N'2024-04-19T09:00:44.090' AS DateTime), N'Hỉnh ảnh', 1, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'a09c05b5-b920-4d9e-998d-50a81693323b', 119, 12, N'1', 2, CAST(N'2024-04-17T10:46:07.383' AS DateTime), NULL, NULL, N'Hiển thị tên chuyên mục', 1, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'87597e82-cede-4911-9a29-5151b67b806e', 99, 13, N'1', 2, CAST(N'2024-04-16T15:30:34.473' AS DateTime), NULL, NULL, N'Hiển thị tóm tắt', 4, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'657888b8-aab6-4099-b2eb-51b04def74ab', 124, 25, N'1', 2, CAST(N'2024-04-17T16:25:43.887' AS DateTime), 2, CAST(N'2024-06-17T09:12:06.073' AS DateTime), N'Hiển thị ảnh đại diện', 6, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'0296191d-1e03-4ae4-a8d6-51f33335de7a', 84, 12, N'1', 2, CAST(N'2024-04-15T09:07:55.557' AS DateTime), 2, CAST(N'2024-04-17T09:02:43.870' AS DateTime), N'Hiển thị tên chuyên mục', 4, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'2569d755-1fbe-4657-9596-520b396a995f', 94, 15, N'1', 2, CAST(N'2024-04-15T16:33:37.540' AS DateTime), 2, CAST(N'2024-04-15T17:42:54.717' AS DateTime), N'Hiển thị thumbnail', 6, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'355cb6cc-9338-4ee4-9069-522af461217d', 87, 20, N'1', 2, CAST(N'2024-04-15T09:31:00.903' AS DateTime), 2, CAST(N'2024-04-15T09:31:31.470' AS DateTime), N'Hiển thị tiêu đề section', 5, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'4b853507-3c65-4f8c-b05b-523b9747907c', 84, 20, N'1', 2, CAST(N'2024-04-15T09:07:55.557' AS DateTime), 2, CAST(N'2024-04-17T09:02:43.897' AS DateTime), N'Hiển thị tiêu đề section', 5, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'01deec52-cef3-41d6-9e32-527a3f4a70b4', 117, 12, N'1', 2, CAST(N'2024-04-16T17:36:00.567' AS DateTime), 2, CAST(N'2024-04-16T17:39:08.913' AS DateTime), N'Hiển thị tên chuyên mục', 4, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'9a44c49a-5aee-4b8d-be71-52c197a166f9', 123, 20, N'1', 2, CAST(N'2024-04-17T16:25:43.737' AS DateTime), NULL, NULL, N'Hiển thị tiêu đề section', 5, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'cabfbbc3-d48e-42db-bc74-530c1e589ed5', 85, 27, N'Bài viết', 2, CAST(N'2024-04-15T09:20:07.990' AS DateTime), 2, CAST(N'2024-04-15T09:23:31.883' AS DateTime), N'Nội dung hiển thị', 2, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'3b392474-699f-4b4a-b942-53a9537eec73', 148, 29, N'1', 2, CAST(N'2024-04-19T09:54:08.280' AS DateTime), NULL, NULL, N'Hiển thị thông tin liên hệ', 10, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'6a330635-13a5-479b-a775-53f8f87b33e1', 90, 15, N'1', 2, CAST(N'2024-04-15T14:13:39.550' AS DateTime), 2, CAST(N'2024-04-15T14:30:26.840' AS DateTime), N'Hiển thị thumbnail', 6, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'd397d3b2-a54e-4f21-8cfa-53fd102e89d5', 9, 5, N'6eee995f-d0f9-4951-8882-706cf843c0be,11930bab-964d-49eb-a089-2822e94845d9', 2, CAST(N'2024-04-03T13:57:03.423' AS DateTime), 2, CAST(N'2024-04-17T15:51:58.647' AS DateTime), N'Chuyên mục', 3, 1)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'ee894436-7f99-46e1-84b8-547e8ddc9d23', 88, 5, N'8a10d607-10f1-47c2-ba82-ec243c8e9145', 2, CAST(N'2024-04-15T13:45:48.430' AS DateTime), 2, CAST(N'2024-04-16T09:16:57.060' AS DateTime), N'Chuyên mục', 2, 1)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'8b76cad8-9a88-4166-b048-548c7f3c91c8', 94, 8, N'7', 2, CAST(N'2024-04-15T16:33:37.530' AS DateTime), 2, CAST(N'2024-04-17T14:58:10.383' AS DateTime), N'Số lượng', 3, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'486a33e4-c2ad-4643-a5e1-5490aeb6303d', 0, 1, N'Hỏi đáp', 2, CAST(N'2024-04-09T16:35:43.713' AS DateTime), 2, CAST(N'2024-04-19T08:07:35.227' AS DateTime), N'Tiêu đề section', 1, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'cab82328-9ea1-4742-aa7c-5502a6870571', 94, 2, N'1', 2, CAST(N'2024-04-15T16:33:37.500' AS DateTime), 2, CAST(N'2024-04-15T17:42:54.673' AS DateTime), N'Sử dụng', 0, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'62517e56-e79c-4016-8064-550e6ff336f6', 111, 14, N'1', 2, CAST(N'2024-04-16T16:59:33.993' AS DateTime), 2, CAST(N'2024-04-16T17:06:50.960' AS DateTime), N'Hiển thị tên bài viết', 7, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'50524a31-d4bb-45cf-99a0-5521cdc8b0df', 0, 0, NULL, 2, CAST(N'2024-04-01T17:05:44.327' AS DateTime), 2, CAST(N'2024-04-02T14:15:30.720' AS DateTime), NULL, 0, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'1362e76c-a218-4223-a3b5-5542983b9b7c', 153, 2, N'1', 2, CAST(N'2024-04-19T09:56:02.727' AS DateTime), NULL, NULL, N'Sử dụng', 0, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'8693c1bf-0e7b-4526-97d3-5568b5bf7e9e', 110, 20, N'1', 2, CAST(N'2024-04-16T16:58:10.680' AS DateTime), 2, CAST(N'2024-04-16T17:26:33.670' AS DateTime), N'Hiển thị tiêu đề section', 5, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'245d4fd9-2a72-4e37-ac5e-55c1a55ab54d', 163, 26, N'18', 2, CAST(N'2024-04-19T13:48:56.010' AS DateTime), 2, CAST(N'2024-06-17T14:18:34.370' AS DateTime), N'Loại view*', 4, 4)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'efb96f5c-987d-4fce-b2b4-56043d6a74bf', 2, 0, N'1', 2, CAST(N'2024-04-02T17:04:14.523' AS DateTime), 2, CAST(N'2024-04-02T18:08:22.097' AS DateTime), N'Hiển thị bài viết', 0, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'bbf277b3-b205-4e03-b375-5679b7aab0cc', 151, 13, N'1', 2, CAST(N'2024-04-19T09:56:02.673' AS DateTime), 2, CAST(N'2024-04-19T11:03:21.290' AS DateTime), N'Hiển thị tóm tắt', 10, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'855e3432-5665-4b04-9f09-569ee6d68fb7', 119, 32, N'1', 2, CAST(N'2024-04-17T10:46:07.403' AS DateTime), NULL, NULL, N'Hiển thị tác quyền', 9, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'e3935c18-ec0b-42d5-8cfb-56ccd510e2fb', 126, 25, N'1', 2, CAST(N'2024-04-17T16:25:43.993' AS DateTime), NULL, NULL, N'Hiển thị ảnh đại diện', 6, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'8b5c4551-23d1-483a-aadc-5705cccf5ce5', 119, 33, N'1', 2, CAST(N'2024-04-17T10:46:07.407' AS DateTime), NULL, NULL, N'Hiển thị từ khóa', 11, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'6c29838a-d04f-45ae-bf5f-5707e9bded9d', 151, 15, N'1', 2, CAST(N'2024-04-19T09:56:02.663' AS DateTime), 2, CAST(N'2024-04-19T11:03:21.263' AS DateTime), N'Hiển thị thumbnail', 6, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'a8652be3-dfe1-494e-9754-57c6c6f66ec1', 2, 0, N'1', 2, CAST(N'2024-04-02T15:47:17.077' AS DateTime), 2, CAST(N'2024-04-02T16:19:34.810' AS DateTime), N'Hiển thị bài viết', 0, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'0212ad94-47bc-4e33-8588-57d07e2ce16f', 120, 32, N'1', 2, CAST(N'2024-04-17T10:47:22.040' AS DateTime), NULL, NULL, N'Hiển thị tác quyền', 9, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'd6f337b8-8003-4a9f-b9d7-58097ec24988', 125, 1, N'Chuyên mục', 2, CAST(N'2024-04-17T16:25:43.920' AS DateTime), 2, CAST(N'2024-06-19T11:33:22.093' AS DateTime), N'Tiêu đề section', 1, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'da2debdb-1383-4430-a000-584455fe9f3d', 79, 2, N'1', 2, CAST(N'2024-04-15T08:28:48.470' AS DateTime), 2, CAST(N'2024-04-17T08:47:32.470' AS DateTime), N'Sử dụng', 0, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'ecfaa23d-91ea-4cce-b18a-585753e989f5', 160, 17, N'1', 2, CAST(N'2024-04-19T13:48:55.767' AS DateTime), 2, CAST(N'2024-06-20T15:05:40.420' AS DateTime), N'Hiển thị nội dung', 6, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'9b5071c0-8b05-4482-bb6e-58ad5b95f7a7', 153, 13, N'1', 2, CAST(N'2024-04-19T09:56:02.737' AS DateTime), NULL, NULL, N'Hiển thị tóm tắt', 4, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'71278e1e-18db-4e83-a3d4-592ea9e8e3f4', 150, 8, N'5', 2, CAST(N'2024-04-19T09:56:02.600' AS DateTime), 2, CAST(N'2024-04-19T11:02:55.490' AS DateTime), N'Số lượng', 3, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'27875518-a09b-4346-b29d-5954d13ef877', 82, 26, N'7', 2, CAST(N'2024-04-15T08:46:47.450' AS DateTime), 2, CAST(N'2024-04-17T09:05:45.733' AS DateTime), N'Loại view*', 4, 4)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'7e0ac3f6-5ec5-4c1a-91c7-5966554f6be0', 2, 14, N'1', 2, CAST(N'2024-04-08T15:56:49.440' AS DateTime), 2, CAST(N'2024-04-19T13:43:08.897' AS DateTime), N'Hiển thị tên bài viết', 7, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'e943def1-0ed1-4bde-b147-59d9caccef5c', 150, 26, N'7', 2, CAST(N'2024-04-19T09:56:02.603' AS DateTime), 2, CAST(N'2024-04-19T11:02:55.490' AS DateTime), N'Loại view*', 4, 4)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'6c24c63e-1338-480d-ad04-5a5415f64246', 82, 25, N'1', 2, CAST(N'2024-04-15T08:46:47.460' AS DateTime), 2, CAST(N'2024-04-15T08:50:05.393' AS DateTime), N'Hiển thị ảnh đại diện', 6, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'6aeca7c4-145e-47f7-9d9f-5b74ca4c12b4', 126, 15, N'1', 2, CAST(N'2024-04-17T16:25:43.990' AS DateTime), NULL, NULL, N'Hiển thị thumbnail', 6, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'0e1c3e6c-56da-47d3-a6ff-5ba22bd2f429', 83, 11, N'0', 2, CAST(N'2024-04-15T09:05:16.913' AS DateTime), 2, CAST(N'2024-04-16T17:25:36.350' AS DateTime), N'Phân trang', 6, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'7c534fbd-f60e-4336-8a49-5bbea58f4417', 143, 26, N'12', 2, CAST(N'2024-04-19T09:44:07.290' AS DateTime), NULL, NULL, N'Loại view*', 4, 4)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'af40482c-4493-4d97-a4e7-5bc330eb2a00', 143, 25, N'1', 2, CAST(N'2024-04-19T09:44:07.300' AS DateTime), NULL, NULL, N'Hiển thị ảnh đại diện', 6, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'6147c2d5-37cc-4e67-83bb-5c2e7dc6c8e3', 85, 2, N'1', 2, CAST(N'2024-04-15T09:20:07.967' AS DateTime), 2, CAST(N'2024-04-15T09:23:31.870' AS DateTime), N'Sử dụng', 0, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'90855b5e-844a-4eef-84d5-5c396ecfaedf', 104, 20, N'1', 2, CAST(N'2024-04-19T09:48:35.287' AS DateTime), NULL, NULL, N'Hiển thị tiêu đề Section', 3, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'8025da43-d750-4221-aa58-5c624f502809', 143, 1, N'Các sản phẩm khác', 2, CAST(N'2024-04-19T09:44:07.280' AS DateTime), NULL, NULL, N'Tiêu đề section', 1, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'4358f961-2e0e-4379-bd1a-5c793e9eac3f', 111, 2, N'1', 2, CAST(N'2024-04-16T16:59:33.950' AS DateTime), 2, CAST(N'2024-04-16T17:06:50.903' AS DateTime), N'Sử dụng', 0, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'97b1725b-e926-4002-8c5e-5ca5a9ca0e74', 124, 26, N'18', 2, CAST(N'2024-04-17T16:25:43.850' AS DateTime), 2, CAST(N'2024-06-17T09:20:46.093' AS DateTime), N'Loại view*', 11, 4)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'6ca916cc-bba3-48d5-8144-5cc7cc0b868b', 163, 5, N'20a19e58-4624-49b2-af25-6c79b8f339df,858188b5-6fbd-4b0d-9354-20c1be90727d', 2, CAST(N'2024-04-19T13:48:56.003' AS DateTime), 2, CAST(N'2024-06-17T14:18:34.360' AS DateTime), N'Chuyên mục', 2, 1)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'9f836c56-809b-46ec-aae2-5cddd9300c2d', 118, 12, N'1', 2, CAST(N'2024-04-17T10:21:17.073' AS DateTime), NULL, NULL, N'Hiển thị tên chuyên mục', 1, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'd800eb90-1e0a-4e5d-a8ce-5d052a9baef7', 148, 25, N'1', 2, CAST(N'2024-04-19T09:54:08.267' AS DateTime), NULL, NULL, N'Hiển thị ảnh đại diện', 5, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'89a644cb-c528-4692-98f7-5d0a0119c798', 104, 1, N'Liên hệ với chúng tôi', 2, CAST(N'2024-04-19T09:15:07.890' AS DateTime), NULL, NULL, N'Tiêu đề section', 1, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'e20b9722-1007-4443-aa41-5dda783d10dd', 77, 12, N'1', 2, CAST(N'2024-04-15T08:19:02.747' AS DateTime), 2, CAST(N'2024-04-15T08:22:26.207' AS DateTime), N'Hiển thị tên chuyên mục', 4, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'dda77db5-64e4-4074-ab11-5e1cdfd84ecd', 7, 5, N'b87d10b9-5835-4c3c-a0c1-507d65746850,57214e56-18b0-456a-9b36-d263cb332d75', 2, CAST(N'2024-04-03T14:30:03.777' AS DateTime), 2, CAST(N'2024-04-17T14:49:27.927' AS DateTime), N'Chuyên mục', 2, 1)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'd398dfb1-ee6a-40c6-91f3-5ea857e219c9', 121, 25, N'1', 2, CAST(N'2024-04-17T10:47:39.657' AS DateTime), NULL, NULL, N'Hiển thị ảnh đại diện', 5, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'6346d94b-d0b0-41d1-afa6-5ef1dddfa0b7', 152, 11, N'0', 2, CAST(N'2024-04-19T09:56:02.710' AS DateTime), 2, CAST(N'2024-04-19T11:04:29.427' AS DateTime), N'Phân trang', 6, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'a739f6fd-c845-4420-829c-5f0982794743', 94, 26, N'12', 2, CAST(N'2024-04-15T16:33:37.530' AS DateTime), 2, CAST(N'2024-04-17T09:07:48.903' AS DateTime), N'Loại view*', 4, 4)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'f12d5fa4-a94d-4ccc-a92a-5fe12387d8f7', 103, 35, N'0', 2, CAST(N'2024-04-16T17:28:48.123' AS DateTime), 2, CAST(N'2024-07-02T10:59:25.993' AS DateTime), N'Là câu hỏi', 2, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'63134a8c-4f4f-410a-a6b5-60c8e382a268', 9, 20, N'1', 2, CAST(N'2024-04-16T10:23:06.947' AS DateTime), 2, CAST(N'2024-04-17T15:51:58.673' AS DateTime), N'Hiển thị tiêu đề Section', 6, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'12ab4e7e-a53e-4e17-a284-60cd208d5d29', 79, 26, N'5', 2, CAST(N'2024-04-15T08:28:48.530' AS DateTime), 2, CAST(N'2024-04-17T09:05:12.460' AS DateTime), N'Loại view*', 4, 4)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'dc97fa87-c78c-4878-be41-619a0d0667a7', 114, 2, N'1', 2, CAST(N'2024-04-16T17:34:17.170' AS DateTime), NULL, NULL, N'Sử dụng', 0, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'3eb7e869-6e17-484d-8b4d-62ed1c700c3a', 78, 11, N'0', 2, CAST(N'2024-04-15T08:25:09.060' AS DateTime), 2, CAST(N'2024-04-17T14:59:54.823' AS DateTime), N'Phân trang', 6, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'191b69eb-298a-4d1e-8ce1-63112ec85709', 7, 26, N'11', 2, CAST(N'2024-04-11T18:27:48.860' AS DateTime), 2, CAST(N'2024-04-17T14:49:27.927' AS DateTime), N'Loại view*', 2, 4)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'debae1d7-4b2e-410a-b18b-63bec238f43b', 69, 8, N'5', 2, CAST(N'2024-04-10T11:12:11.713' AS DateTime), 2, CAST(N'2024-04-17T14:41:29.407' AS DateTime), N'Số lượng bài viết', 2, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'16f9ce4f-12cc-4bf2-b26a-6427bf8defcc', 111, 26, N'13', 2, CAST(N'2024-04-16T16:59:33.980' AS DateTime), 2, CAST(N'2024-04-17T09:09:45.360' AS DateTime), N'Loại view*', 4, 4)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'c97a733e-6a05-45f7-b5dd-64a6832e8996', 6, 14, N'1', 2, CAST(N'2024-04-11T10:27:26.743' AS DateTime), 2, CAST(N'2024-07-02T15:22:20.330' AS DateTime), N'Hiển thị tên bài viết', 5, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'301b1dec-7a57-43d8-a39f-64b363c2505a', 3, 27, N'Bài viết', 2, CAST(N'2024-04-11T18:31:15.747' AS DateTime), 2, CAST(N'2024-04-15T07:51:56.687' AS DateTime), N'Nội dung hiển thị', 2, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'6d17364f-7a38-4355-9730-64debbcaed83', 91, 2, N'1', 2, CAST(N'2024-04-15T14:15:06.810' AS DateTime), 2, CAST(N'2024-04-15T14:23:50.313' AS DateTime), N'Sử dụng', 0, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'fbf62163-764b-4164-8ce1-64e7db68225e', 69, 10, N'5', 2, CAST(N'2024-04-10T11:12:11.723' AS DateTime), 2, CAST(N'2024-04-11T14:14:19.857' AS DateTime), N'Số lượng bài viết mỗi trang(có phân trang)', 4, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'4a28d65e-aa51-45d9-b0d4-652b40ab7bb2', 88, 2, N'1', 2, CAST(N'2024-04-15T13:45:48.403' AS DateTime), 2, CAST(N'2024-04-16T09:16:57.060' AS DateTime), N'Sử dụng', 0, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'ed948349-7c2d-4831-bbef-65518533c495', 161, 15, N'1', 2, CAST(N'2024-04-19T13:48:55.900' AS DateTime), 2, CAST(N'2024-06-19T15:20:56.083' AS DateTime), N'Hiển thị thumbnail', 6, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'52edb241-0830-4213-b663-655b747124e1', 92, 17, N'1', 2, CAST(N'2024-04-16T14:43:17.843' AS DateTime), 2, CAST(N'2024-04-16T16:09:25.447' AS DateTime), N'Hiển thị nội dung', 6, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'dd35baf0-4028-4962-9232-65d6652d2749', 90, 25, N'1', 2, CAST(N'2024-04-15T14:13:39.543' AS DateTime), 2, CAST(N'2024-04-15T14:30:26.850' AS DateTime), N'Hiển thị ảnh đại diện', 6, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'ee3ed7fa-f8a2-4029-850f-669c7c33a4ee', 94, 20, N'1', 2, CAST(N'2024-04-15T16:33:37.537' AS DateTime), 2, CAST(N'2024-04-15T17:42:54.693' AS DateTime), N'Hiển thị tiêu đề section', 5, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'40c006fd-b223-4a1a-8d6a-66b40a95d293', 78, 2, N'1', 2, CAST(N'2024-04-15T08:25:09.020' AS DateTime), 2, CAST(N'2024-04-17T14:59:54.817' AS DateTime), N'Sử dụng', 0, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'b7acdf04-6732-42ed-b50b-66ee9feda8bb', 86, 1, N'Chuyên mục', 2, CAST(N'2024-04-15T09:24:18.767' AS DateTime), 2, CAST(N'2024-04-15T09:29:25.260' AS DateTime), N'Tiêu đề section', 1, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'4efc819d-4a93-45e5-943d-6783a6b4c757', 83, 1, N'Đọc nhiều nhất', 2, CAST(N'2024-04-15T09:05:16.843' AS DateTime), 2, CAST(N'2024-04-16T17:25:36.343' AS DateTime), N'Tiêu đề section', 1, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'1c5ca601-219d-46d2-aa6e-67c8ecc66a35', 163, 16, N'1', 2, CAST(N'2024-04-19T13:48:56.027' AS DateTime), 2, CAST(N'2024-06-17T14:18:34.403' AS DateTime), N'Hiển thị ngày công bố', 8, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'771ec17d-6124-4581-b739-6826b51b563d', 109, 15, N'1', 2, CAST(N'2024-04-16T16:57:49.880' AS DateTime), 2, CAST(N'2024-04-16T17:01:28.020' AS DateTime), N'Hiển thị thumbnail', 6, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'f24ff602-5054-4fe0-a7c5-68271c32262a', 91, 1, N'Tin chuyên ngành', 2, CAST(N'2024-04-15T14:15:06.810' AS DateTime), 2, CAST(N'2024-04-15T14:23:50.313' AS DateTime), N'Tiêu đề section', 1, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'f821d23d-eb84-4853-8818-68bf68cd7c8f', 127, 16, N'1', 2, CAST(N'2024-04-17T16:25:44.070' AS DateTime), NULL, NULL, N'Hiển thị ngày công bố', 8, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'43d515c8-1a5a-4521-ba47-693a8da65763', 114, 32, N'1', 2, CAST(N'2024-04-16T17:34:17.243' AS DateTime), NULL, NULL, N'Hiển thị tác quyền', 9, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'72ed05c2-1a7f-4b13-8dd2-695bcefebfe5', 87, 26, N'8', 2, CAST(N'2024-04-15T09:31:00.900' AS DateTime), 2, CAST(N'2024-04-17T09:06:55.283' AS DateTime), N'Loại view*', 4, 4)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'ce3f6c22-392e-4016-892f-69cb90b6d9d8', 119, 1, N'Khách hàng đối tác', 2, CAST(N'2024-04-17T10:46:51.170' AS DateTime), NULL, NULL, N'Tiêu đề section', 3, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'922b2f91-c283-42f8-a492-69fb05c284aa', 92, 32, N'1', 2, CAST(N'2024-04-16T14:44:28.290' AS DateTime), 2, CAST(N'2024-04-16T16:09:25.447' AS DateTime), N'Hiển thị tác quyền', 9, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'05e3d2c5-b4a6-4df7-a6b3-6a9e09a40afe', 84, 1, N'Bài viết khác', 2, CAST(N'2024-04-15T09:07:55.523' AS DateTime), 2, CAST(N'2024-04-17T09:02:43.870' AS DateTime), N'Tiêu đề section', 1, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'245fe832-cc50-464e-81d7-6b349a325444', 91, 16, N'0', 2, CAST(N'2024-04-15T14:15:06.833' AS DateTime), 2, CAST(N'2024-04-15T14:23:50.363' AS DateTime), N'Hiển thị ngày công bố', 8, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'fb270594-6472-4c2f-8c04-6b797b1c6707', 127, 1, N'Bài viết khác', 2, CAST(N'2024-04-17T16:25:44.043' AS DateTime), NULL, NULL, N'Tiêu đề section', 1, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'6d297922-b006-4375-b315-6bf8cc88afbe', 109, 14, N'1', 2, CAST(N'2024-04-16T16:57:49.887' AS DateTime), 2, CAST(N'2024-04-16T17:01:28.020' AS DateTime), N'Hiển thị tên bài viết', 7, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'32add8e0-3672-47e8-b8ae-6c338878c37c', 82, 13, N'1', 2, CAST(N'2024-04-15T08:46:47.467' AS DateTime), 2, CAST(N'2024-04-15T08:50:05.400' AS DateTime), N'Hiển thị tóm tắt', 10, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'a2b33b5d-7f25-4b36-848c-6c9480ddd47d', 79, 15, N'1', 2, CAST(N'2024-04-15T08:28:48.537' AS DateTime), 2, CAST(N'2024-04-17T08:47:32.513' AS DateTime), N'Hiển thị thumbnail', 6, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'5b1a674b-7df3-4be5-8f68-6cddb62b4650', 9, 13, N'1', 2, CAST(N'2024-04-11T09:23:15.430' AS DateTime), 2, CAST(N'2024-04-17T15:51:58.677' AS DateTime), N'Hiển thị tóm tắt', 8, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'1329f83c-d3b2-443e-86c9-6cf091f2d8aa', 118, 33, N'1', 2, CAST(N'2024-04-17T10:21:17.230' AS DateTime), NULL, NULL, N'Hiển thị từ khóa', 11, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'ad7309cb-6062-47c8-abab-6d9c17c40d51', 165, 3, N'/Upload\Theme\2024\Banner_HueCIT_HeThongOpenData_10_10_2022_15_05_56_186_CH_1719909294.png', 2, CAST(N'2024-06-26T16:36:38.343' AS DateTime), 2, CAST(N'2024-07-03T09:01:45.787' AS DateTime), N'Hỉnh ảnh 1', 4, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'ca250edc-507b-4a16-8e62-6e0ad0507454', 77, 11, N'0', 2, CAST(N'2024-04-15T08:19:02.773' AS DateTime), 2, CAST(N'2024-04-15T08:22:26.227' AS DateTime), N'Phân trang', 6, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'f47ded04-c75a-4954-8a69-6e6a2949a470', 81, 27, N'Bài viết', 2, CAST(N'2024-04-15T08:37:45.730' AS DateTime), 2, CAST(N'2024-04-15T08:45:43.663' AS DateTime), N'Nội dung hiển thị', 2, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'9881d33f-bcbb-4968-96ce-6f14144ac6c6', 160, 25, N'0', 2, CAST(N'2024-04-19T13:48:55.763' AS DateTime), 2, CAST(N'2024-06-20T15:05:40.393' AS DateTime), N'Hiển thị ảnh đại diện', 5, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'7e10411a-22c2-4652-9ded-6f3d38d7de0f', 81, 1, N'Danh sách blog', 2, CAST(N'2024-04-15T08:37:45.700' AS DateTime), 2, CAST(N'2024-04-15T08:45:43.663' AS DateTime), N'Tiêu đề section', 1, NULL)
GO
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'e3a7d280-e9db-4fdd-893c-6fa8d12fc1a1', 116, 2, N'1', 2, CAST(N'2024-04-16T17:35:50.070' AS DateTime), 2, CAST(N'2024-04-16T17:38:54.970' AS DateTime), N'Sử dụng', 0, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'e3380522-4b40-406b-8d3c-6fe2d32bdaca', 80, 5, N'f1ac63bb-7eba-4041-8c70-2c70d8e64133', 2, CAST(N'2024-04-15T08:35:26.640' AS DateTime), 2, CAST(N'2024-04-17T08:47:47.067' AS DateTime), N'Chuyên mục', 2, 1)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'44e440cb-3aed-4f2d-9b0f-6ff37365e4e1', 150, 2, N'1', 2, CAST(N'2024-04-19T09:56:02.577' AS DateTime), 2, CAST(N'2024-04-19T11:02:55.490' AS DateTime), N'Sử dụng', 0, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'3de79b66-71ed-4e12-a963-70796b7705e5', 6, 11, N'1', 2, CAST(N'2024-04-04T15:05:08.670' AS DateTime), 2, CAST(N'2024-07-02T15:22:20.293' AS DateTime), N'Phân trang', 3, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'c84dded3-716b-4aff-8ded-70a0241bc015', 91, 26, N'8', 2, CAST(N'2024-04-15T14:15:06.820' AS DateTime), 2, CAST(N'2024-04-17T09:07:34.130' AS DateTime), N'Loại view*', 4, 4)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'0458059e-650e-4fcb-a845-70b03f1fd396', 114, 17, N'1', 2, CAST(N'2024-04-16T17:34:17.193' AS DateTime), NULL, NULL, N'Hiển thị nội dung', 6, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'ff47ab06-5b59-43e3-a3a0-71501fa481f5', 116, 11, N'0', 2, CAST(N'2024-04-16T17:35:50.177' AS DateTime), 2, CAST(N'2024-04-16T17:38:55.010' AS DateTime), N'Phân trang', 6, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'2d3b3afe-c81b-4ac4-a06a-717051664262', 119, 17, N'1', 2, CAST(N'2024-04-17T10:46:07.397' AS DateTime), NULL, NULL, N'Hiển thị nội dung', 6, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'898868a7-7e61-4b3e-b3c5-71bca6e2ebb0', 109, 8, N'5', 2, CAST(N'2024-04-16T16:57:49.870' AS DateTime), 2, CAST(N'2024-04-16T17:01:28.017' AS DateTime), N'Số lượng', 3, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'c4022866-3e6e-4ad5-a9db-7231598d14ab', 152, 15, N'1', 2, CAST(N'2024-04-19T09:56:02.713' AS DateTime), 2, CAST(N'2024-04-19T11:04:29.457' AS DateTime), N'Hiển thị thumbnail', 6, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'3b9c5a82-5dae-419d-8dc4-73366ba0a1ef', 143, 2, N'1', 2, CAST(N'2024-04-19T09:44:07.247' AS DateTime), NULL, NULL, N'Sử dụng', 0, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'034929a5-4f54-4ee1-85c3-734d6739e725', 163, 25, N'0', 2, CAST(N'2024-04-19T13:48:56.017' AS DateTime), 2, CAST(N'2024-06-17T14:18:34.393' AS DateTime), N'Hiển thị ảnh đại diện', 6, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'62832b7e-3504-46ac-8bb9-74d884ed3379', 126, 26, N'8', 2, CAST(N'2024-04-17T16:25:43.987' AS DateTime), NULL, NULL, N'Loại view*', 4, 4)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'a8f32d99-165a-4b29-9a32-7539dc02e7db', 83, 26, N'8', 2, CAST(N'2024-04-15T09:05:16.873' AS DateTime), 2, CAST(N'2024-04-17T09:06:02.100' AS DateTime), N'Loại view*', 4, 4)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'cd2b0b5d-7d0e-4e46-b2b8-755d4ec3d1da', 151, 5, N'f1ac63bb-7eba-4041-8c70-2c70d8e64133,92729d2a-9c36-4d7b-82e4-fb7ffa8c6a59,94f2b4ce-4e63-40e5-bab6-02c662db6978', 2, CAST(N'2024-04-19T09:56:02.650' AS DateTime), 2, CAST(N'2024-04-19T11:03:21.237' AS DateTime), N'Chuyên mục', 2, 1)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'74e3b195-18a1-41a4-b2f1-7597dceff4d3', 83, 16, N'1', 2, CAST(N'2024-04-15T09:05:16.960' AS DateTime), 2, CAST(N'2024-04-16T17:25:36.350' AS DateTime), N'Hiển thị ngày công bố', 8, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'ad2e1ead-54fa-46cd-b7f6-75c5ceebaf1b', 6, 15, N'1', 2, CAST(N'2024-04-11T10:49:16.657' AS DateTime), 2, CAST(N'2024-07-02T15:22:20.297' AS DateTime), N'Hiển thị thumbnail', 4, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'e9007849-68cb-4cc4-a74c-761ec7d20d1f', 82, 1, N'Chuyên mục', 2, CAST(N'2024-04-15T08:46:47.433' AS DateTime), 2, CAST(N'2024-04-15T08:50:05.343' AS DateTime), N'Tiêu đề section', 1, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'62868e65-482a-4c4a-958c-76b48ee262a3', 148, 32, N'1', 2, CAST(N'2024-04-19T09:54:08.277' AS DateTime), NULL, NULL, N'Hiển thị tác quyền', 9, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'546f1a37-76cf-4b53-a61b-76f3b3fe5453', 160, 35, N'1', 2, CAST(N'2024-06-17T10:50:31.340' AS DateTime), 2, CAST(N'2024-06-20T15:05:40.450' AS DateTime), N'Là câu hỏi', 20, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'dc528ae1-6544-4838-ae6d-771255ff2562', 125, 26, N'7', 2, CAST(N'2024-04-17T16:25:43.927' AS DateTime), 2, CAST(N'2024-06-19T11:33:22.097' AS DateTime), N'Loại view*', 5, 4)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'a27d4b0b-582b-45f4-9c7c-783cb9f58869', 77, 25, N'1', 2, CAST(N'2024-04-15T08:19:02.793' AS DateTime), 2, CAST(N'2024-04-15T08:22:26.233' AS DateTime), N'Hiển thị ảnh đại diện', 6, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'afd9db40-3ace-4cb0-aee7-7871e43a761e', 106, 16, N'1', 2, CAST(N'2024-04-16T16:31:05.213' AS DateTime), NULL, NULL, N'Hiển thị ngày công bố', 3, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'68046002-98f8-44e5-8d76-78c749ee2e51', 80, 12, N'0', 2, CAST(N'2024-04-15T08:35:26.643' AS DateTime), 2, CAST(N'2024-04-17T08:47:47.060' AS DateTime), N'Hiển thị tên chuyên mục', 4, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'cd901b08-d133-4566-9a97-7985af48b590', 151, 25, N'1', 2, CAST(N'2024-04-19T09:56:02.667' AS DateTime), 2, CAST(N'2024-04-19T11:03:21.257' AS DateTime), N'Hiển thị ảnh đại diện', 6, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'c63ec096-9bb6-41b0-9c0a-79a3481c546d', 91, 25, N'1', 2, CAST(N'2024-04-15T14:15:06.827' AS DateTime), 2, CAST(N'2024-04-15T14:23:50.343' AS DateTime), N'Hiển thị ảnh đại diện', 6, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'ea67a198-e20e-4718-8fe6-7ad06953291a', 79, 5, N'f1ac63bb-7eba-4041-8c70-2c70d8e64133,92729d2a-9c36-4d7b-82e4-fb7ffa8c6a59,94f2b4ce-4e63-40e5-bab6-02c662db6978', 2, CAST(N'2024-04-15T08:28:48.523' AS DateTime), 2, CAST(N'2024-04-17T08:47:32.470' AS DateTime), N'Chuyên mục', 2, 1)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'681bcb60-b84a-48fe-9292-7b5d470b865a', 3, 1, N'Dịch vụ', 2, CAST(N'2024-04-02T15:51:06.707' AS DateTime), 2, CAST(N'2024-04-15T07:51:56.687' AS DateTime), N'Tiêu đề', 1, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'521b4b2d-85b0-4a46-a048-7bddaac7bd45', 9, 15, N'1', 2, CAST(N'2024-04-15T09:57:31.990' AS DateTime), 2, CAST(N'2024-04-17T15:51:58.677' AS DateTime), N'Hiển thị thumbnail', 7, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'572004d6-28e2-4253-91fa-7c58c0990617', 153, 16, N'1', 2, CAST(N'2024-04-19T09:56:02.733' AS DateTime), NULL, NULL, N'Hiển thị ngày công bố', 3, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'e4dc93f5-088e-4bdd-a3cc-7c5b460bd3b1', 87, 16, N'1', 2, CAST(N'2024-04-15T09:31:00.917' AS DateTime), 2, CAST(N'2024-04-15T09:31:31.497' AS DateTime), N'Hiển thị ngày công bố', 8, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'20a6a0d1-8d69-4889-be4f-7c6c960f176a', 69, 2, N'1', 2, CAST(N'2024-04-10T11:12:11.720' AS DateTime), 2, CAST(N'2024-04-17T14:41:29.407' AS DateTime), N'Sử dụng', 3, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'422540bc-dbca-44b3-83e7-7d1b38bc0581', 150, 11, N'0', 2, CAST(N'2024-04-19T09:56:02.613' AS DateTime), 2, CAST(N'2024-04-19T11:02:55.530' AS DateTime), N'Phân trang', 6, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'b8ded572-60f0-4c81-a6fa-7d4dda2ec3fa', 2, 8, N'5', 2, CAST(N'2024-04-12T11:02:23.553' AS DateTime), 2, CAST(N'2024-04-19T13:43:08.893' AS DateTime), N'Số lượng', 3, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'7680f555-6947-4433-8e4c-7e5c99b22e2c', 3, 0, N'1', 2, CAST(N'2024-04-01T09:46:58.000' AS DateTime), 2, CAST(N'2024-04-02T15:48:15.547' AS DateTime), N'Hiển thị bài viết(Dịch vụ)', 6, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'0c6ad5f3-9c47-468c-b229-7e8330463870', 119, 25, N'1', 2, CAST(N'2024-04-17T10:46:07.393' AS DateTime), NULL, NULL, N'Hiển thị ảnh đại diện', 5, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'ed7862d2-3aec-4ecf-8070-7e8f6347d22b', 135, 3, N'/Upload\Theme\2024\BannerOpenData_1719971515.jpg', 2, CAST(N'2024-04-19T09:01:34.380' AS DateTime), 2, CAST(N'2024-07-03T08:56:28.897' AS DateTime), N'Hỉnh ảnh', 2, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'bbf17acc-5daa-41f9-b3f6-7f1b462ed02c', 114, 25, N'1', 2, CAST(N'2024-04-16T17:34:17.193' AS DateTime), NULL, NULL, N'Hiển thị ảnh đại diện', 5, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'e9c5b1ca-63cf-429c-a2cb-8048aab0306d', 88, 16, N'0', 2, CAST(N'2024-04-15T13:45:48.460' AS DateTime), 2, CAST(N'2024-04-16T09:16:57.090' AS DateTime), N'Hiển thị ngày công bố', 8, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'951848c5-6db1-4b73-86ea-8048f8b7580f', 78, 13, N'1', 2, CAST(N'2024-04-15T08:25:09.070' AS DateTime), 2, CAST(N'2024-04-17T14:59:54.833' AS DateTime), N'Hiển thị tóm tắt', 10, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'f0735cfa-3f78-4adc-ae31-8059ef693cf3', 0, 3, N'/Upload\Theme\2024\BannerOpenData_1713492252.jpg', 2, CAST(N'2024-04-19T09:02:04.277' AS DateTime), 2, CAST(N'2024-04-19T09:04:13.553' AS DateTime), N'Hỉnh ảnh 2', 2, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'7828ccc3-d4be-4730-9eba-80b34f4826f1', 118, 31, N'1', 2, CAST(N'2024-04-17T10:21:17.220' AS DateTime), NULL, NULL, N'Hiển thị nguồn tin', 8, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'3ab9cee0-d35d-4c05-b586-8171f458fd52', 65, 1, N'Phóng sự ảnh', 2, CAST(N'2024-04-19T08:09:58.370' AS DateTime), NULL, NULL, N'Tiêu đề section', 0, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'2fa287bd-f4ae-493e-b3f2-819c85e8d087', 106, 2, N'1', 2, CAST(N'2024-04-16T16:31:05.207' AS DateTime), NULL, NULL, N'Sử dụng', 0, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'de10bd0c-5b00-47b5-b950-824279c67056', 115, 20, N'1', 2, CAST(N'2024-04-16T17:34:34.110' AS DateTime), 2, CAST(N'2024-04-16T17:38:33.930' AS DateTime), N'Hiển thị tiêu đề section', 5, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'927749e7-f15c-46dc-981c-82b2cfc343f6', 2, 0, N'Tin tức', 2, CAST(N'2024-04-02T14:21:23.667' AS DateTime), 2, CAST(N'2024-04-02T15:45:52.137' AS DateTime), N'Tiêu đề', 1, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'31b1add4-a80f-4127-b6d7-83038407a9e5', 109, 20, N'1', 2, CAST(N'2024-04-16T16:57:49.877' AS DateTime), 2, CAST(N'2024-04-16T17:01:28.020' AS DateTime), N'Hiển thị tiêu đề section', 5, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'a44cf521-2300-4a77-a04f-834e8ca3c7f8', 6, 16, N'0', 2, CAST(N'2024-04-11T10:50:16.693' AS DateTime), 2, CAST(N'2024-07-02T15:22:20.330' AS DateTime), N'Hiển thị ngày công bố', 7, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'47ef9fdc-0fd6-4de0-ac70-839f6196912f', 120, 14, N'1', 2, CAST(N'2024-04-17T10:47:22.023' AS DateTime), NULL, NULL, N'Hiển thị tên bài viết', 2, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'e3795d96-8c2b-421e-840b-842c2d97a576', 88, 14, N'1', 2, CAST(N'2024-04-15T13:45:48.460' AS DateTime), 2, CAST(N'2024-04-16T09:16:57.090' AS DateTime), N'Hiển thị tên bài viết', 7, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'e4f406d1-7209-49b6-9d03-8442b22ab221', 165, 3, N'/Upload\Theme\2024\Banner_HueCIT_HeThongQuanLyCayXanhDoThi_11_10_2022_11_13_02_679_SA_1719908819.png', 2, CAST(N'2024-06-26T16:36:38.340' AS DateTime), 2, CAST(N'2024-07-03T09:01:41.433' AS DateTime), N'Hỉnh ảnh', 3, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'29a9807d-6032-4cf6-9d2a-8462f779c098', 91, 11, N'0', 2, CAST(N'2024-04-15T14:15:06.830' AS DateTime), 2, CAST(N'2024-04-15T14:23:50.350' AS DateTime), N'Phân trang', 6, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'f4b6633c-b025-4112-b4d1-849d564eb3d8', 117, 2, N'1', 2, CAST(N'2024-04-16T17:36:00.560' AS DateTime), 2, CAST(N'2024-04-16T17:39:08.910' AS DateTime), N'Sử dụng', 0, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'7a1fe264-e9e9-43a9-95ba-84fa503dd2e3', 2, 0, N'06de3702-a8ed-4d10-8729-8ae10314aaba', 2, CAST(N'2024-04-02T15:49:41.293' AS DateTime), 2, CAST(N'2024-04-02T16:19:34.810' AS DateTime), N'Danh sách bài viết của', 2, 1)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'72af60bf-a1cf-479d-9b8d-8518c0758dd3', 77, 26, N'3', 2, CAST(N'2024-04-15T08:19:02.750' AS DateTime), 2, CAST(N'2024-04-17T09:04:35.620' AS DateTime), N'Loại view*', 4, 4)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'5d0d0e7f-a6e5-4c2b-bcfe-85d7a45c4ad1', 144, 14, N'1', 2, CAST(N'2024-04-19T09:44:07.333' AS DateTime), NULL, NULL, N'Hiển thị tên bài viết', 2, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'f97acd15-c1e8-4312-9a44-85ddab80cd69', 83, 25, N'1', 2, CAST(N'2024-04-15T09:05:16.933' AS DateTime), 2, CAST(N'2024-04-16T17:25:36.350' AS DateTime), N'Hiển thị ảnh đại diện', 6, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'9425c8a4-ca8d-459d-bcff-85df318127e0', 81, 5, N'3a146610-64c3-4cbf-8129-127311b595e0,f1ac63bb-7eba-4041-8c70-2c70d8e64133,086a67b0-0e82-4896-843a-a06bedafe258,41341896-06bf-40c9-b3bd-a3032c885e18,bfecce3d-4dbb-4891-b759-b0a07bcdb547,2f167597-9f57-4a03-9feb-3013eabedf53', 2, CAST(N'2024-04-15T08:37:45.720' AS DateTime), 2, CAST(N'2024-04-15T08:45:43.663' AS DateTime), N'Chuyên mục', 2, 1)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'9d76af51-6dc5-45da-be32-869c9cac910f', 77, 14, N'1', 2, CAST(N'2024-04-15T08:19:02.797' AS DateTime), 2, CAST(N'2024-04-15T08:22:26.243' AS DateTime), N'Hiển thị tên bài viết', 7, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'3ac8133a-145f-4396-9b1a-86e4134e7459', 152, 2, N'1', 2, CAST(N'2024-04-19T09:56:02.693' AS DateTime), 2, CAST(N'2024-04-19T11:04:29.357' AS DateTime), N'Sử dụng', 0, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'331a37b4-b5cf-4984-a009-877bbd5d1584', 144, 30, N'1', 2, CAST(N'2024-04-19T09:44:07.347' AS DateTime), NULL, NULL, N'Hiển thị tác giả', 7, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'f26bf2c9-67a6-43f4-9e58-880862091b31', 3, 15, N'1', 2, CAST(N'2024-04-11T09:47:22.203' AS DateTime), 2, CAST(N'2024-04-15T07:51:56.707' AS DateTime), N'Hiển thị thumbnail', 5, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'58289e6b-241f-4084-9aa9-88516ae97469', 108, 33, N'1', 2, CAST(N'2024-04-16T16:57:04.950' AS DateTime), NULL, NULL, N'Hiển thị từ khóa', 11, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'89f42399-6c33-496e-99dc-887b8e02215b', 126, 12, N'1', 2, CAST(N'2024-04-17T16:25:43.983' AS DateTime), NULL, NULL, N'Hiển thị tên chuyên mục', 4, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'04fc53b5-ce74-42d7-b111-8885c050a2f5', 143, 20, N'1', 2, CAST(N'2024-04-19T09:44:07.293' AS DateTime), NULL, NULL, N'Hiển thị tiêu đề section', 5, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'0165cba6-83f6-4f77-88e0-8911fcd48b94', 124, 8, N'5', 2, CAST(N'2024-04-17T16:25:43.847' AS DateTime), 2, CAST(N'2024-06-17T09:12:06.087' AS DateTime), N'Số lượng', 3, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'6c0f5a01-4c94-4c99-baa2-8956d60f0dac', 0, 0, N'Tin tức', NULL, CAST(N'2024-03-26T18:16:45.990' AS DateTime), 2, CAST(N'2024-04-02T14:15:30.753' AS DateTime), NULL, 0, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'389fd8ea-f893-4ab9-9fe1-895d335cd61f', 83, 13, N'1', 2, CAST(N'2024-04-15T09:05:16.983' AS DateTime), 2, CAST(N'2024-04-16T17:25:36.363' AS DateTime), N'Hiển thị tóm tắt', 10, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'dddc8555-0a08-4b94-964d-899312a67835', 110, 11, N'0', 2, CAST(N'2024-04-16T16:58:10.687' AS DateTime), 2, CAST(N'2024-04-16T17:26:33.670' AS DateTime), N'Phân trang', 6, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'a9bad35b-932b-42e3-b033-8a130afcb500', 127, 15, N'1', 2, CAST(N'2024-04-17T16:25:44.063' AS DateTime), NULL, NULL, N'Hiển thị thumbnail', 6, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'7be704b6-b006-4c1d-b54f-8a415d9449ad', 82, 11, N'0', 2, CAST(N'2024-04-15T08:46:47.457' AS DateTime), 2, CAST(N'2024-04-15T08:50:05.393' AS DateTime), N'Phân trang', 6, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'2c51c3d3-54b4-4957-bfbc-8a55a0939e49', 7, 2, N'1', 2, CAST(N'2024-04-03T14:30:19.883' AS DateTime), 2, CAST(N'2024-04-17T14:49:27.927' AS DateTime), N'Sử dụng', 0, 1)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'691ae036-71ac-43e5-b34d-8abe2e1b5bcf', 123, 35, N'1', 2, CAST(N'2024-06-14T15:15:05.950' AS DateTime), NULL, NULL, N'Là câu hỏi', 4, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'9d2727ec-87bc-4aae-a682-8b2784d21b77', 160, 13, N'1', 2, CAST(N'2024-04-19T13:48:55.760' AS DateTime), 2, CAST(N'2024-06-20T15:05:40.393' AS DateTime), N'Hiển thị tóm tắt', 4, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'5d6bf832-1925-4ad6-a5c7-8be49e4feda1', 77, 1, N'Dich vụ', 2, CAST(N'2024-04-15T08:19:02.710' AS DateTime), 2, CAST(N'2024-04-15T08:22:26.183' AS DateTime), N'Tiêu đề section', 1, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'dc3dafd9-2901-4c93-85e4-8c6843f88ccf', 114, 31, N'1', 2, CAST(N'2024-04-16T17:34:17.230' AS DateTime), NULL, NULL, N'Hiển thị nguồn tin', 8, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'c43170c7-40cf-4722-add3-8c7079123537', 127, 11, N'0', 2, CAST(N'2024-04-17T16:25:44.063' AS DateTime), NULL, NULL, N'Phân trang', 6, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'64e2ec81-0e56-4fbb-bf3d-8cb73bf0f066', 65, 14, N'1', 2, CAST(N'2024-04-09T16:35:43.737' AS DateTime), 2, CAST(N'2024-04-17T14:58:53.457' AS DateTime), N'Hiển thị tiêu đề', 7, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'340ac842-771e-48e0-aa37-8cf84f0c7562', 111, 5, N'3a146610-64c3-4cbf-8129-127311b595e0,086a67b0-0e82-4896-843a-a06bedafe258,41341896-06bf-40c9-b3bd-a3032c885e18,bfecce3d-4dbb-4891-b759-b0a07bcdb547,2f167597-9f57-4a03-9feb-3013eabedf53', 2, CAST(N'2024-04-16T16:59:33.977' AS DateTime), 2, CAST(N'2024-04-16T17:06:50.907' AS DateTime), N'Chuyên mục', 2, 1)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'49eeb11f-58ed-44bd-a49d-8dab68cbd86c', 7, 15, N'1', 2, CAST(N'2024-04-11T09:29:51.783' AS DateTime), 2, CAST(N'2024-04-17T14:49:27.927' AS DateTime), N'Hiển thị thumbnail', 5, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'3b85218d-8118-49f2-a059-8dca2842732f', 94, 13, N'1', 2, CAST(N'2024-04-15T16:33:37.547' AS DateTime), 2, CAST(N'2024-04-15T17:42:54.727' AS DateTime), N'Hiển thị tóm tắt', 10, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'17f26688-d29f-4396-9927-8e7cc3e5e914', 115, 15, N'1', 2, CAST(N'2024-04-16T17:34:34.117' AS DateTime), 2, CAST(N'2024-04-16T17:38:33.930' AS DateTime), N'Hiển thị thumbnail', 6, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'59a3f157-2bbc-4580-99a1-8e930db53cb7', 80, 14, N'1', 2, CAST(N'2024-04-15T08:35:26.653' AS DateTime), 2, CAST(N'2024-04-17T08:47:47.140' AS DateTime), N'Hiển thị tên bài viết', 7, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'e6a5f132-7bd9-4c98-883f-8eacf5d11389', 115, 5, N'0c176d07-3354-448f-bcbf-1a2d299c8ec5,c01e27f2-0c42-47f6-9e29-833ec719ba91,cf7cabdc-25ea-49a4-a050-bf698052c312', 2, CAST(N'2024-04-16T17:34:34.060' AS DateTime), 2, CAST(N'2024-04-16T17:38:33.893' AS DateTime), N'Chuyên mục', 2, 1)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'5c31c293-61f3-488f-8532-8ee20a4253e4', 85, 14, N'1', 2, CAST(N'2024-04-15T09:20:08.010' AS DateTime), 2, CAST(N'2024-04-15T09:23:31.973' AS DateTime), N'Hiển thị tên bài viết', 7, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'55fa9a56-c182-4671-b7de-8eeae51d31ff', 118, 5, N'926ad793-c618-4f7a-a8a0-cb0b7ce511ee', 2, CAST(N'2024-04-17T11:10:35.940' AS DateTime), NULL, NULL, N'Danh mục', 1, 2)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'2d96fc12-60bb-4c09-9baf-8f8aeaa0f781', 123, 1, N'Hỏi đáp', 2, CAST(N'2024-04-17T16:25:43.643' AS DateTime), 2, CAST(N'2024-04-17T18:35:34.517' AS DateTime), N'Tiêu đề section', 1, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'40be7662-b0ad-41ea-bf65-9140ead754cb', 6, 2, N'1', 2, CAST(N'2024-04-04T13:40:05.143' AS DateTime), 2, CAST(N'2024-07-02T15:22:20.297' AS DateTime), N'Sử dụng', 0, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'635a6391-9764-404b-a59c-9167383b3777', 94, 5, N'fee4c680-5952-4b0a-ab24-5eefd52baee7', 2, CAST(N'2024-04-15T16:33:37.527' AS DateTime), 2, CAST(N'2024-04-15T17:42:54.673' AS DateTime), N'Chuyên mục', 2, 1)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'49013002-d42e-4cae-a5e7-918fc2caf2c2', 117, 1, N'Bài viết khác', 2, CAST(N'2024-04-16T17:36:00.560' AS DateTime), 2, CAST(N'2024-04-16T17:39:08.913' AS DateTime), N'Tiêu đề section', 1, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'75924561-37f0-4ff2-a366-9230bf89c71f', 94, 1, N'Các sản phẩm khác', 2, CAST(N'2024-04-15T16:33:37.517' AS DateTime), 2, CAST(N'2024-04-15T17:42:54.673' AS DateTime), N'Tiêu đề section', 1, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'49b264b9-d2be-409a-822e-925b97aa5efb', 88, 11, N'0', 2, CAST(N'2024-04-15T13:45:48.453' AS DateTime), 2, CAST(N'2024-04-16T09:16:57.090' AS DateTime), N'Phân trang', 6, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'2511a574-396e-4fa0-aef2-930d462a44be', 103, 26, N'20', 2, CAST(N'2024-04-16T15:39:32.733' AS DateTime), 2, CAST(N'2024-07-02T10:59:25.993' AS DateTime), N'Loại view*', 1, 4)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'd662c1a1-72f5-44ab-8258-9338f64df733', 85, 13, N'1', 2, CAST(N'2024-04-15T09:20:08.013' AS DateTime), 2, CAST(N'2024-04-15T09:23:31.977' AS DateTime), N'Hiển thị tóm tắt', 10, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'e20af714-5548-4a69-9155-934045b0e1f7', 116, 8, N'4', 2, CAST(N'2024-04-16T17:35:50.160' AS DateTime), 2, CAST(N'2024-04-16T17:38:54.970' AS DateTime), N'Số lượng', 3, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'8ad3551f-cfbe-42d1-be50-939621b4f2f7', 78, 1, N'Tin tức sự kiện', 2, CAST(N'2024-04-15T08:25:09.037' AS DateTime), 2, CAST(N'2024-04-17T14:59:54.817' AS DateTime), N'Tiêu đề section', 1, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'7ac7342a-a06d-436b-ab50-93a059a8d144', 87, 13, N'1', 2, CAST(N'2024-04-15T09:31:00.917' AS DateTime), 2, CAST(N'2024-04-15T09:31:31.497' AS DateTime), N'Hiển thị tóm tắt', 10, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'4b1bb306-ac23-4c7a-bc67-93fc04061b66', 120, 2, N'1', 2, CAST(N'2024-04-17T10:47:22.017' AS DateTime), NULL, NULL, N'Sử dụng', 0, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'bf3f5a6f-1522-48f4-b702-949f23e4382d', 88, 1, N'Hoạt động đoàn thể', 2, CAST(N'2024-04-15T13:45:48.427' AS DateTime), 2, CAST(N'2024-04-16T09:16:57.060' AS DateTime), N'Tiêu đề section', 1, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'8b0720b5-e728-4844-9425-94f3c68332b4', 117, 11, N'1', 2, CAST(N'2024-04-16T17:36:00.577' AS DateTime), 2, CAST(N'2024-04-16T17:39:08.957' AS DateTime), N'Phân trang', 6, NULL)
GO
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'9ba14b49-d27e-4b9e-8826-95818208e480', 77, 5, N'b51f7635-9fb5-4494-95a3-10b57d0b5cf4', 2, CAST(N'2024-04-15T08:19:02.720' AS DateTime), 2, CAST(N'2024-04-15T08:22:26.183' AS DateTime), N'Chuyên mục', 2, 1)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'9d1de8f7-5083-492a-b1d9-95d251765133', 2, 5, N'f1ac63bb-7eba-4041-8c70-2c70d8e64133,92729d2a-9c36-4d7b-82e4-fb7ffa8c6a59,94f2b4ce-4e63-40e5-bab6-02c662db6978', 2, CAST(N'2024-04-03T17:57:15.810' AS DateTime), 2, CAST(N'2024-04-19T13:43:08.893' AS DateTime), N'Chuyên mục', 2, 1)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'ba4a61f6-4b79-4230-9b5a-95e304daeb0c', 148, 2, N'1', 2, CAST(N'2024-04-19T09:54:08.253' AS DateTime), NULL, NULL, N'Sử dụng', 0, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'85ed968a-3922-4d26-b211-96aa33c847bb', 106, 25, N'1', 2, CAST(N'2024-04-16T16:31:05.220' AS DateTime), NULL, NULL, N'Hiển thị ảnh đại diện', 5, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'b18ac4ca-43bb-4362-8861-9704231f29dd', 86, 27, N'Bài viết', 2, CAST(N'2024-04-15T09:24:18.767' AS DateTime), 2, CAST(N'2024-04-15T09:29:25.260' AS DateTime), N'Nội dung hiển thị', 2, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'c4320ee1-a8ca-41c9-b220-976fbe71b0c5', 2, 0, N'06de3702-a8ed-4d10-8729-8ae10314aaba,94f2b4ce-4e63-40e5-bab6-02c662db6978', 2, CAST(N'2024-04-02T14:26:39.320' AS DateTime), 2, CAST(N'2024-04-02T15:45:52.137' AS DateTime), N'Danh sách bài viết của', 2, 1)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'e9014c20-ff5a-45b6-a06e-97aeb0f1e901', 124, 14, N'1', 2, CAST(N'2024-04-17T16:25:43.890' AS DateTime), 2, CAST(N'2024-06-17T09:12:06.117' AS DateTime), N'Hiển thị tên bài viết', 7, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'c2f020dd-3fd6-46e6-bf33-985fafe53d8e', 150, 15, N'1', 2, CAST(N'2024-04-19T09:56:02.610' AS DateTime), 2, CAST(N'2024-04-19T11:02:55.530' AS DateTime), N'Hiển thị thumbnail', 6, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'b9833068-47f6-4401-97ad-986ab6c1a725', 7, 13, N'1', 2, CAST(N'2024-04-11T09:32:41.297' AS DateTime), 2, CAST(N'2024-04-17T14:49:27.927' AS DateTime), N'Hiển thị tóm tắt', 8, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'1f17089c-6e9f-4d58-8479-99116b009d42', 120, 5, N'117e24ec-a49e-45fe-860b-681599f0136a', 2, CAST(N'2024-04-17T10:50:44.647' AS DateTime), NULL, NULL, N'Danh mục', 1, 2)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'dc847f23-c322-47e4-bc21-99c32d147bab', 2, 11, N'0', 2, CAST(N'2024-04-12T08:43:27.127' AS DateTime), 2, CAST(N'2024-04-19T13:43:08.893' AS DateTime), N'Phân trang', 6, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'8a5dd3e4-73c8-4f9c-937e-99e4c4aa8052', 99, 14, N'1', 2, CAST(N'2024-04-16T15:30:34.470' AS DateTime), NULL, NULL, N'Hiển thị tên bài viết', 2, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'41a25ea4-9d31-45f2-9237-9a54c7654927', 111, 20, N'1', 2, CAST(N'2024-04-16T16:59:33.983' AS DateTime), 2, CAST(N'2024-04-16T17:06:50.940' AS DateTime), N'Hiển thị tiêu đề section', 5, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'8f192f1e-bb36-4f21-9ee4-9aa50e528978', 0, 1, N'Liên hệ với chúng tôi', 2, CAST(N'2024-04-19T09:13:13.510' AS DateTime), 2, CAST(N'2024-04-19T09:13:58.673' AS DateTime), N'Tiêu đề section', 1, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'f3686d0b-00a4-40d6-bc7d-9b873cbaec7d', 163, 15, N'0', 2, CAST(N'2024-04-19T13:48:56.020' AS DateTime), 2, CAST(N'2024-06-17T14:18:34.400' AS DateTime), N'Hiển thị thumbnail', 6, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'fcfa62aa-d994-4396-b0d8-9bc479a8bd6c', 110, 15, N'1', 2, CAST(N'2024-04-16T16:58:10.687' AS DateTime), 2, CAST(N'2024-04-16T17:26:33.670' AS DateTime), N'Hiển thị thumbnail', 6, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'2e43939b-bb08-4910-a5ac-9c481bb5e93a', 150, 5, N'f1ac63bb-7eba-4041-8c70-2c70d8e64133,8a10d607-10f1-47c2-ba82-ec243c8e9145,92729d2a-9c36-4d7b-82e4-fb7ffa8c6a59', 2, CAST(N'2024-04-19T09:56:02.597' AS DateTime), 2, CAST(N'2024-04-19T11:02:55.490' AS DateTime), N'Chuyên mục', 2, 1)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'acb9c06c-a6f2-4044-9e3d-9d3db9889263', 91, 27, N'Bài viết', 2, CAST(N'2024-04-15T14:15:06.817' AS DateTime), 2, CAST(N'2024-04-15T14:23:50.313' AS DateTime), N'Nội dung hiển thị', 2, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'20eaf8cc-53fd-4c80-aec2-9d4e80770b85', 119, 5, N'6f40e15c-ac35-445c-9f61-a1e1629610a3', 2, CAST(N'2024-04-17T10:49:40.880' AS DateTime), NULL, NULL, N'Danh mục', 1, 2)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'428a8413-e006-4d70-9b4e-9d5bad06d33f', 65, 15, N'1', 2, CAST(N'2024-04-09T16:35:43.733' AS DateTime), 2, CAST(N'2024-04-17T14:58:53.453' AS DateTime), N'Hiển thị thumbnail', 6, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'8956e372-3a6f-477a-bea9-9ddd40b78e06', 116, 1, N'Đọc nhiều nhất', 2, CAST(N'2024-04-16T17:35:50.123' AS DateTime), 2, CAST(N'2024-04-16T17:38:54.970' AS DateTime), N'Tiêu đề section', 1, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'd3899754-b17b-4ae0-b302-9e5f6bba5c37', 88, 8, N'5', 2, CAST(N'2024-04-15T13:45:48.443' AS DateTime), 2, CAST(N'2024-04-16T09:16:57.060' AS DateTime), N'Số lượng', 3, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'a5325585-4978-4ab5-afb0-9e8abcf1e442', 84, 27, N'Bài viết', 2, CAST(N'2024-04-15T09:07:55.543' AS DateTime), 2, CAST(N'2024-04-15T09:16:51.667' AS DateTime), N'Nội dung hiển thị', 2, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'5306dcc4-d82d-4a1d-b1d2-9ec91c814403', 124, 20, N'1', 2, CAST(N'2024-04-17T16:25:43.853' AS DateTime), 2, CAST(N'2024-06-17T09:12:06.073' AS DateTime), N'Hiển thị tiêu đề section', 5, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'f972b9ed-4317-4e12-b948-9ecfe909b0de', 118, 17, N'1', 2, CAST(N'2024-04-17T10:21:17.217' AS DateTime), NULL, NULL, N'Hiển thị nội dung', 6, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'9ac05913-b535-4fd0-a901-9ed4040819b9', 161, 25, N'1', 2, CAST(N'2024-04-19T13:48:55.907' AS DateTime), 2, CAST(N'2024-06-19T15:20:56.083' AS DateTime), N'Hiển thị ảnh đại diện', 6, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'de46fd0f-1549-49c4-956a-9ee3c15dffdd', 3, 14, N'1', 2, CAST(N'2024-04-11T09:47:05.270' AS DateTime), 2, CAST(N'2024-04-15T07:51:56.710' AS DateTime), N'Hiển thị tên bài viết', 4, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'83103b13-8336-45e2-9cef-9f0d34ce50aa', 115, 11, N'0', 2, CAST(N'2024-04-16T17:34:34.120' AS DateTime), 2, CAST(N'2024-04-16T17:38:33.930' AS DateTime), N'Phân trang', 6, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'4413280d-72d1-4067-a94e-9fbe8ebd6deb', 118, 32, N'1', 2, CAST(N'2024-04-17T10:21:17.223' AS DateTime), NULL, NULL, N'Hiển thị tác quyền', 9, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'78d69608-6894-4687-a09a-9fe7f16b802e', 65, 13, N'1', 2, CAST(N'2024-04-09T16:35:43.757' AS DateTime), 2, CAST(N'2024-04-17T14:58:53.460' AS DateTime), N'Hiển thị tóm tắt', 10, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'20c8942b-692e-4ed0-9bef-a01ab0d1bf2b', 106, 29, N'1', 2, CAST(N'2024-04-16T16:31:05.230' AS DateTime), NULL, NULL, N'Hiển thị thông tin liên hệ', 10, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'95e424f7-bd1a-489e-8fd2-a0874e0dfea8', 109, 26, N'7', 2, CAST(N'2024-04-16T16:57:49.877' AS DateTime), 2, CAST(N'2024-04-17T09:09:15.720' AS DateTime), N'Loại view*', 4, 4)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'b7fb36b3-dcf2-4254-8a6b-a11b28ac4392', 123, 26, N'17', 2, CAST(N'2024-04-17T16:25:43.697' AS DateTime), 2, CAST(N'2024-04-17T18:35:08.273' AS DateTime), N'Loại view*', 3, 4)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'9351bb42-600b-45c5-908d-a14abb88f4b2', 2, 13, N'0', 2, CAST(N'2024-04-08T15:57:29.847' AS DateTime), 2, CAST(N'2024-04-19T13:43:08.897' AS DateTime), N'Hiển thị tóm tắt', 10, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'91a3929a-3439-461d-9c26-a1c523f3f1f9', 78, 26, N'4', 2, CAST(N'2024-04-15T08:25:09.053' AS DateTime), 2, CAST(N'2024-04-17T14:59:54.820' AS DateTime), N'Loại view*', 4, 4)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'0a4012a3-98a3-4386-afb7-a1fc16781af8', 79, 8, N'3', 2, CAST(N'2024-04-15T08:28:48.523' AS DateTime), 2, CAST(N'2024-04-17T08:47:32.470' AS DateTime), N'Số lượng', 3, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'e63051d4-8a74-4b7f-9742-a2055caf8592', 160, 33, N'0', 2, CAST(N'2024-04-19T13:48:55.863' AS DateTime), 2, CAST(N'2024-06-20T15:05:40.447' AS DateTime), N'Hiển thị từ khóa', 11, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'ce0e0011-f8c1-4b5c-af54-a2218d119b48', 85, 25, N'1', 2, CAST(N'2024-04-15T09:20:08.007' AS DateTime), 2, CAST(N'2024-04-15T09:23:31.973' AS DateTime), N'Hiển thị ảnh đại diện', 6, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'95292e64-20d8-4258-a08e-a25f6ec4d3a1', 106, 13, N'1', 2, CAST(N'2024-04-16T16:31:05.217' AS DateTime), NULL, NULL, N'Hiển thị tóm tắt', 4, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'8069e50f-e211-42a1-bd65-a28605f1db11', 2, 12, N'1', 2, CAST(N'2024-04-08T11:15:01.550' AS DateTime), 2, CAST(N'2024-04-19T13:43:08.893' AS DateTime), N'Hiển thị tên chuyên mục', 4, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'0714fd21-659a-4358-b25f-a29b4db388bc', 135, 26, N'19', 2, CAST(N'2024-04-19T08:41:32.770' AS DateTime), 2, CAST(N'2024-07-03T08:44:15.540' AS DateTime), N'Loại view*', 1, 4)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'00711313-b6a9-47c7-a715-a4c4938da28a', 3, 0, N'5', 2, CAST(N'2024-04-01T09:40:15.717' AS DateTime), 2, CAST(N'2024-04-02T15:48:16.200' AS DateTime), N'Số lượng bài viết(Dịch vụ)', 5, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'b5f124bb-9f5f-455d-aa15-a58a86b5f747', 144, 13, N'1', 2, CAST(N'2024-04-19T09:44:07.340' AS DateTime), NULL, NULL, N'Hiển thị tóm tắt', 4, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'5521ca75-12f2-4f22-8a10-a5b1cf8f16ac', 110, 26, N'8', 2, CAST(N'2024-04-16T16:58:10.680' AS DateTime), 2, CAST(N'2024-04-17T09:09:29.177' AS DateTime), N'Loại view*', 4, 4)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'fce2a2bf-9fe3-48f8-b548-a5cedd735c55', 117, 16, N'1', 2, CAST(N'2024-04-16T17:36:00.593' AS DateTime), 2, CAST(N'2024-04-16T17:39:08.963' AS DateTime), N'Hiển thị ngày công bố', 8, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'18ff1694-b7a4-4a39-a69b-a60659493064', 65, 26, N'15', 2, CAST(N'2024-04-17T09:43:24.630' AS DateTime), 2, CAST(N'2024-04-17T14:58:53.440' AS DateTime), N'Loại view*', 3, 4)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'b9b3d17c-7ca0-4d7b-b505-a738a3a58f72', 92, 30, N'1', 2, CAST(N'2024-04-16T14:35:03.567' AS DateTime), 2, CAST(N'2024-04-16T16:09:25.447' AS DateTime), N'Hiển thị tác giả', 7, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'b8781824-6d4e-4c48-a9d4-a83381476292', 94, 25, N'1', 2, CAST(N'2024-04-15T16:33:37.540' AS DateTime), 2, CAST(N'2024-04-15T17:42:54.723' AS DateTime), N'Hiển thị ảnh đại diện', 6, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'4f89ee5f-a897-434a-b724-a8537f65d5aa', 116, 14, N'1', 2, CAST(N'2024-04-16T17:35:50.183' AS DateTime), 2, CAST(N'2024-04-16T17:38:55.017' AS DateTime), N'Hiển thị tên bài viết', 7, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'2b41f3b6-cd4c-4ba5-8c62-a8ce4262cac1', 114, 14, N'1', 2, CAST(N'2024-04-16T17:34:17.187' AS DateTime), NULL, NULL, N'Hiển thị tên bài viết', 2, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'986e8f8c-f9ed-43ec-b1ed-a903de2cdeb9', 127, 8, N'7', 2, CAST(N'2024-04-17T16:25:44.050' AS DateTime), NULL, NULL, N'Số lượng', 3, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'fc1387b1-c6f3-4268-b24b-a90958ebcdbd', 111, 15, N'1', 2, CAST(N'2024-04-16T16:59:33.990' AS DateTime), 2, CAST(N'2024-04-16T17:06:50.943' AS DateTime), N'Hiển thị thumbnail', 6, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'4ac47c10-f0ff-46d6-bd93-a92f6e50c789', 79, 12, N'0', 2, CAST(N'2024-04-15T08:28:48.527' AS DateTime), 2, CAST(N'2024-04-17T08:47:32.470' AS DateTime), N'Hiển thị tên chuyên mục', 4, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'93c88551-8a06-4a2d-a96c-a95ac00a5c07', 150, 20, N'1', 2, CAST(N'2024-04-19T09:56:02.607' AS DateTime), 2, CAST(N'2024-04-19T11:02:55.530' AS DateTime), N'Hiển thị tiêu đề section', 5, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'61656dc0-4694-400d-ae3a-a9c73384a212', 108, 13, N'1', 2, CAST(N'2024-04-16T16:57:04.933' AS DateTime), NULL, NULL, N'Hiển thị tóm tắt', 4, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'e23bbcf9-c446-483a-8edd-aa2463ab3dd6', 90, 14, N'1', 2, CAST(N'2024-04-15T14:13:39.550' AS DateTime), 2, CAST(N'2024-04-15T14:30:26.850' AS DateTime), N'Hiển thị tên bài viết', 7, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'0522c500-9970-4c5c-8037-aa4570a206a8', 2, 0, N'5', 2, CAST(N'2024-04-02T14:29:43.863' AS DateTime), 2, CAST(N'2024-04-02T15:45:52.140' AS DateTime), N'Số lượng bài viết hiển thị', 3, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'82bca0f6-71f7-46af-b7da-aa4f92f70ebc', 110, 16, N'0', 2, CAST(N'2024-04-16T16:58:10.690' AS DateTime), 2, CAST(N'2024-04-16T17:26:33.673' AS DateTime), N'Hiển thị ngày công bố', 8, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'7a943161-9c05-483d-9fc6-aa6efdc6524a', 90, 27, N'Bài viết', 2, CAST(N'2024-04-15T14:13:39.533' AS DateTime), 2, CAST(N'2024-04-15T14:30:26.817' AS DateTime), N'Nội dung hiển thị', 2, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'87624837-9b7b-4e6a-a93a-aa9703acffb2', 117, 8, N'7', 2, CAST(N'2024-04-16T17:36:00.563' AS DateTime), 2, CAST(N'2024-04-16T17:39:08.920' AS DateTime), N'Số lượng', 3, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'04dfdd61-0bcf-496d-93ef-ab0c43cebe3e', 85, 20, N'1', 2, CAST(N'2024-04-15T09:20:08.000' AS DateTime), 2, CAST(N'2024-04-15T09:23:31.953' AS DateTime), N'Hiển thị tiêu đề section', 5, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'ef7ce375-dff7-4d0d-ba20-ab268e06e86f', 87, 14, N'1', 2, CAST(N'2024-04-15T09:31:00.913' AS DateTime), 2, CAST(N'2024-04-15T09:31:31.477' AS DateTime), N'Hiển thị tên bài viết', 7, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'fc9e0610-0efa-4a69-a5ce-ab69414c0ec4', 114, 33, N'1', 2, CAST(N'2024-04-16T17:34:17.273' AS DateTime), NULL, NULL, N'Hiển thị từ khóa', 11, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'354fcf2f-3eb4-4040-82f6-ac12605f9b62', 83, 14, N'1', 2, CAST(N'2024-04-15T09:05:16.940' AS DateTime), 2, CAST(N'2024-04-16T17:25:36.350' AS DateTime), N'Hiển thị tên bài viết', 7, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'46ec75ff-1d95-4724-a613-ac8352477518', 121, 16, N'1', 2, CAST(N'2024-04-17T10:47:39.643' AS DateTime), NULL, NULL, N'Hiển thị ngày công bố', 3, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'96e6441d-bed4-4239-bf25-ac8ac0cdfc1c', 65, 2, N'1', 2, CAST(N'2024-04-09T16:35:43.727' AS DateTime), 2, CAST(N'2024-04-17T14:58:53.440' AS DateTime), N'Sử dụng', 4, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'bc444fe4-bc3d-42e2-8f16-ac8b4322136e', 86, 12, N'1', 2, CAST(N'2024-04-15T09:24:18.777' AS DateTime), 2, CAST(N'2024-04-15T09:29:25.293' AS DateTime), N'Hiển thị tên chuyên mục', 4, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'2294ca80-db38-416b-9450-aca17a1041d2', 102, 1, N'Thư mời', 2, CAST(N'2024-04-19T10:06:22.863' AS DateTime), NULL, NULL, N'Tiêu đề section', 1, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'b6ae5f3b-c861-4475-be8c-aca4b4e543ab', 99, 29, N'1', 2, CAST(N'2024-04-16T15:30:34.487' AS DateTime), NULL, NULL, N'Hiển thị thông tin liên hệ', 10, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'd40b6a23-6b4a-4799-b846-acd5cff904b4', 119, 30, N'1', 2, CAST(N'2024-04-17T10:46:07.400' AS DateTime), NULL, NULL, N'Hiển thị tác giả', 7, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'9354e4ad-eb15-4845-bc11-adcf38196abb', 2, 0, N'Tin tức', 2, CAST(N'2024-04-02T17:04:25.100' AS DateTime), 2, CAST(N'2024-04-02T18:08:56.600' AS DateTime), N'Tiêu đề', 1, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'b43b5f4b-304e-4798-a4b0-ade1c9c5b8f0', 78, 16, N'1', 2, CAST(N'2024-04-15T08:25:09.070' AS DateTime), 2, CAST(N'2024-04-17T14:59:54.833' AS DateTime), N'Hiển thị ngày công bố', 8, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'024246b1-a584-4cd4-8e77-ade4c250aa4b', 77, 16, N'1', 2, CAST(N'2024-04-15T08:19:02.800' AS DateTime), 2, CAST(N'2024-04-15T08:22:26.267' AS DateTime), N'Hiển thị ngày công bố', 8, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'c63dbad8-355f-403d-83fb-ae2befb48283', 144, 25, N'1', 2, CAST(N'2024-04-19T09:44:07.343' AS DateTime), NULL, NULL, N'Hiển thị ảnh đại diện', 5, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'939271de-7c40-47c6-84e1-afaee168c08a', 7, 12, N'1', 2, CAST(N'2024-04-11T09:32:19.327' AS DateTime), 2, CAST(N'2024-04-17T14:49:27.927' AS DateTime), N'Hiển thị tên chuyên mục', 7, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'a947d82c-7b51-4bf0-99b8-afbe4e90baa1', 111, 8, N'7', 2, CAST(N'2024-04-16T16:59:33.977' AS DateTime), 2, CAST(N'2024-04-16T17:06:50.903' AS DateTime), N'Số lượng', 3, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'ac94c6a3-b664-4ddd-b63c-b02a4c7c3faf', 82, 16, N'1', 2, CAST(N'2024-04-15T08:46:47.467' AS DateTime), 2, CAST(N'2024-04-15T08:50:05.393' AS DateTime), N'Hiển thị ngày công bố', 8, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'8873bf2f-4112-4a1c-8a96-b0ea9326a848', 118, 16, N'1', 2, CAST(N'2024-04-17T10:21:17.153' AS DateTime), NULL, NULL, N'Hiển thị ngày công bố', 3, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'6f6e5473-c2ce-41cd-b441-b10295a09503', 3, 13, N'1', 2, CAST(N'2024-04-11T09:47:38.730' AS DateTime), 2, CAST(N'2024-04-15T07:51:56.717' AS DateTime), N'Hiển thị tóm tắt', 6, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'957ee512-c0fa-4e92-972c-b14c57621655', 102, 2, N'1', 2, CAST(N'2024-04-19T10:06:46.650' AS DateTime), 2, CAST(N'2024-04-19T10:22:14.483' AS DateTime), N'Sử dụng*', 0, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'6028ff1d-e237-4f1d-8f59-b162454bae0c', 81, 26, N'6', 2, CAST(N'2024-04-15T08:37:45.897' AS DateTime), 2, CAST(N'2024-04-17T09:05:32.800' AS DateTime), N'Loại view*', 4, 4)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'b018e5ad-e33e-4fa1-bb29-b169b8df3ef8', 83, 12, N'1', 2, CAST(N'2024-04-15T09:05:16.883' AS DateTime), 2, CAST(N'2024-04-16T17:25:36.343' AS DateTime), N'Hiển thị tên chuyên mục', 4, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'12b42945-3914-4f4c-9f35-b183f71eb293', 103, 20, N'1', 2, CAST(N'2024-07-02T10:41:40.843' AS DateTime), 2, CAST(N'2024-07-02T10:59:25.993' AS DateTime), N'Hiển thị tiêu đề Section', 3, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'23a72ef8-12b7-49a5-b932-b1b21cc5d868', 152, 20, N'1', 2, CAST(N'2024-04-19T09:56:02.707' AS DateTime), 2, CAST(N'2024-04-19T11:04:29.393' AS DateTime), N'Hiển thị tiêu đề section', 5, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'8e850e15-8aa5-42fc-a833-b1b6000737d3', 2, 20, N'1', 2, CAST(N'2024-04-08T15:55:40.783' AS DateTime), 2, CAST(N'2024-04-19T13:43:08.893' AS DateTime), N'Hiển thị tiêu đề section', 5, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'3f51e96b-3fe0-4c87-af24-b2090024b21b', 161, 11, N'0', 2, CAST(N'2024-04-19T13:48:55.903' AS DateTime), 2, CAST(N'2024-06-19T15:20:56.090' AS DateTime), N'Phân trang', 6, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'92201886-56be-46fd-8d93-b232403ea020', 2, 2, N'1', 2, CAST(N'2024-04-02T18:51:40.907' AS DateTime), 2, CAST(N'2024-04-19T13:43:08.893' AS DateTime), N'Sử dụng*', 0, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'69d65da8-7861-42bc-b10b-b2e3042f222c', 85, 1, N'Tuyển dụng', 2, CAST(N'2024-04-15T09:20:07.987' AS DateTime), 2, CAST(N'2024-04-15T09:23:31.870' AS DateTime), N'Tiêu đề section', 1, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'76e26400-f78b-462c-b597-b38def521e7a', 152, 26, N'8', 2, CAST(N'2024-04-19T09:56:02.703' AS DateTime), 2, CAST(N'2024-04-19T11:04:29.357' AS DateTime), N'Loại view*', 4, 4)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'56e846bf-f7ee-4518-b4a5-b47caf4e1295', 111, 11, N'1', 2, CAST(N'2024-04-16T16:59:33.987' AS DateTime), 2, CAST(N'2024-04-16T17:06:50.957' AS DateTime), N'Phân trang', 6, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'dc985b15-dda4-4252-afe5-b4b373ec546e', 86, 2, N'1', 2, CAST(N'2024-04-15T09:24:18.763' AS DateTime), 2, CAST(N'2024-04-15T09:29:25.260' AS DateTime), N'Sử dụng', 0, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'90298667-58f8-4f69-aa1a-b4b37eed0429', 92, 31, N'1', 2, CAST(N'2024-04-16T14:44:10.750' AS DateTime), 2, CAST(N'2024-04-16T16:09:25.563' AS DateTime), N'Hiển thị nguồn tin', 8, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'55c2982d-3df9-4132-8459-b57cdafc3645', 3, 2, N'1', 2, CAST(N'2024-04-02T15:50:44.313' AS DateTime), 2, CAST(N'2024-04-15T07:51:56.687' AS DateTime), N'Sử dụng', 0, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'f3e76620-a435-4097-bf27-b5fefa585d65', 121, 12, N'1', 2, CAST(N'2024-04-17T10:47:39.610' AS DateTime), NULL, NULL, N'Hiển thị tên chuyên mục', 1, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'55110b41-03fa-482f-a85b-b637550e1544', 161, 26, N'7', 2, CAST(N'2024-04-19T13:48:55.893' AS DateTime), 2, CAST(N'2024-06-19T15:20:56.060' AS DateTime), N'Loại view*', 4, 4)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'e6bb2814-08f7-4c5f-acff-b63780b50d26', 135, 3, N'/Upload\Theme\2024\BannerOpenData_1719971818.jpg', 2, CAST(N'2024-04-19T09:04:32.373' AS DateTime), 2, CAST(N'2024-07-03T08:58:19.730' AS DateTime), N'Hỉnh ảnh 2', 4, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'56677fda-65b7-4791-90d0-b63d4e7ec632', 160, 32, N'0', 2, CAST(N'2024-04-19T13:48:55.847' AS DateTime), 2, CAST(N'2024-06-20T15:05:40.440' AS DateTime), N'Hiển thị tác quyền', 9, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'8c1f3ae6-9557-4750-88b9-b63e40a8c6c1', 111, 12, N'1', 2, CAST(N'2024-04-16T16:59:33.983' AS DateTime), 2, CAST(N'2024-04-16T17:06:50.907' AS DateTime), N'Hiển thị tên chuyên mục', 4, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'e594cee0-4c5e-48da-be44-b68286f774f2', 152, 12, N'0', 2, CAST(N'2024-04-19T09:56:02.703' AS DateTime), 2, CAST(N'2024-04-19T11:04:29.357' AS DateTime), N'Hiển thị tên chuyên mục', 4, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'2c08be66-b799-4326-bfea-b77f47f4038f', 91, 15, N'1', 2, CAST(N'2024-04-15T14:15:06.830' AS DateTime), 2, CAST(N'2024-04-15T14:23:50.350' AS DateTime), N'Hiển thị thumbnail', 6, NULL)
GO
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'1f402689-1d23-4884-bc3d-b7925af9c74f', 79, 14, N'1', 2, CAST(N'2024-04-15T08:28:48.540' AS DateTime), 2, CAST(N'2024-04-17T08:47:32.523' AS DateTime), N'Hiển thị tên bài viết', 7, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'7f97ef22-1cc2-46cf-8887-b8b7e2c4c2f8', 115, 14, N'1', 2, CAST(N'2024-04-16T17:34:34.123' AS DateTime), 2, CAST(N'2024-04-16T17:38:33.937' AS DateTime), N'Hiển thị tên bài viết', 7, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'2debd4c6-8359-4045-9fa9-b900365275b9', 126, 13, N'1', 2, CAST(N'2024-04-17T16:25:44.003' AS DateTime), NULL, NULL, N'Hiển thị tóm tắt', 10, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'a02235ff-47f2-4ec8-ab87-b9410b90fce2', 120, 31, N'1', 2, CAST(N'2024-04-17T10:47:22.040' AS DateTime), NULL, NULL, N'Hiển thị nguồn tin', 8, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'1db03a61-6df3-461c-92a3-b999a110c5cd', 83, 8, N'3', 2, CAST(N'2024-04-15T09:05:16.860' AS DateTime), 2, CAST(N'2024-04-16T17:25:36.343' AS DateTime), N'Số lượng', 3, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'c8151a0c-9e77-4494-9f4f-b9af3d2a2d32', 2, 0, N'Tin tức', 2, CAST(N'2024-04-02T15:49:20.423' AS DateTime), 2, CAST(N'2024-04-02T16:19:34.810' AS DateTime), N'Tiêu đề', 1, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'b8588676-c7a3-4375-9a73-ba387dc278e2', 161, 20, N'1', 2, CAST(N'2024-04-19T13:48:55.900' AS DateTime), 2, CAST(N'2024-06-19T15:20:56.080' AS DateTime), N'Hiển thị tiêu đề section', 5, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'8cc6bde0-cdcf-4022-ac72-ba4ad05406bb', 84, 26, N'12', 2, CAST(N'2024-04-15T09:07:55.553' AS DateTime), 2, CAST(N'2024-04-17T09:06:13.530' AS DateTime), N'Loại view*', 4, 4)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'cdc85016-019e-4268-9646-bac0ad96cc88', 120, 33, N'1', 2, CAST(N'2024-04-17T10:47:22.047' AS DateTime), NULL, NULL, N'Hiển thị từ khóa', 11, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'083d06e7-6ce9-4fb3-a1bb-bb02d4ebdb5a', 99, 16, N'1', 2, CAST(N'2024-04-16T15:30:34.470' AS DateTime), NULL, NULL, N'Hiển thị ngày công bố', 3, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'b694220b-2dfc-4476-9c55-bb6d5904a56a', 84, 14, N'1', 2, CAST(N'2024-04-15T09:07:55.577' AS DateTime), 2, CAST(N'2024-04-17T09:02:43.897' AS DateTime), N'Hiển thị tên bài viết', 7, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'e6f443d3-056f-4583-9e08-bbc6a0d7a226', 117, 20, N'1', 2, CAST(N'2024-04-16T17:36:00.570' AS DateTime), 2, CAST(N'2024-04-16T17:39:08.937' AS DateTime), N'Hiển thị tiêu đề section', 5, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'ddd736c8-26ee-4a2f-be67-bc856f6a6dba', 126, 11, N'0', 2, CAST(N'2024-04-17T16:25:43.997' AS DateTime), NULL, NULL, N'Phân trang', 6, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'1ef2219c-7175-4217-8b72-bcb080346abb', 99, 25, N'1', 2, CAST(N'2024-04-16T15:30:34.477' AS DateTime), NULL, NULL, N'Hiển thị ảnh đại diện', 5, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'5c538dd8-3555-454a-8de6-bcd853aeb19e', 88, 12, N'1', 2, CAST(N'2024-04-15T13:45:48.450' AS DateTime), 2, CAST(N'2024-04-16T09:16:57.060' AS DateTime), N'Hiển thị tên chuyên mục', 4, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'25046255-52ee-4179-b62c-bd0815c8f623', 91, 8, N'4', 2, CAST(N'2024-04-15T14:15:06.817' AS DateTime), 2, CAST(N'2024-04-15T14:23:50.313' AS DateTime), N'Số lượng', 3, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'2236b4dc-0cc3-4a70-8cf8-be8bad6c93af', 82, 5, N'3a146610-64c3-4cbf-8129-127311b595e0,f1ac63bb-7eba-4041-8c70-2c70d8e64133,086a67b0-0e82-4896-843a-a06bedafe258,41341896-06bf-40c9-b3bd-a3032c885e18,bfecce3d-4dbb-4891-b759-b0a07bcdb547,2f167597-9f57-4a03-9feb-3013eabedf53', 2, CAST(N'2024-04-15T08:46:47.443' AS DateTime), 2, CAST(N'2024-04-15T08:50:05.343' AS DateTime), N'Chuyên mục', 2, 1)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'f624c217-8ee9-412c-b4d6-befac8087659', 117, 26, N'13', 2, CAST(N'2024-04-16T17:36:00.567' AS DateTime), 2, CAST(N'2024-04-17T09:10:31.680' AS DateTime), N'Loại view*', 4, 4)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'c4ec9211-e60c-42da-b990-bfaf5844c6c5', 108, 29, N'1', 2, CAST(N'2024-04-16T16:57:04.947' AS DateTime), NULL, NULL, N'Hiển thị thông tin liên hệ', 10, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'1891488a-d03b-444b-92bc-bfca4d33fd5e', 150, 25, N'1', 2, CAST(N'2024-04-19T09:56:02.610' AS DateTime), 2, CAST(N'2024-04-19T11:02:55.530' AS DateTime), N'Hiển thị ảnh đại diện', 6, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'b920eb81-1719-4222-bdbe-bfd8f71c9dae', 79, 27, N'Bài viết', 2, CAST(N'2024-04-15T08:28:48.513' AS DateTime), 2, CAST(N'2024-04-15T08:32:08.180' AS DateTime), N'Nội dung hiển thị', 2, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'87765c37-addc-4712-92b1-c049899bc323', 108, 2, N'1', 2, CAST(N'2024-04-16T16:57:04.903' AS DateTime), NULL, NULL, N'Sử dụng', 0, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'c8f8ef81-6144-44ba-accc-c062e1f17433', 90, 8, N'7', 2, CAST(N'2024-04-15T14:13:39.537' AS DateTime), 2, CAST(N'2024-04-15T14:30:26.817' AS DateTime), N'Số lượng', 3, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'd476ae61-99c6-4053-b95e-c0ccfb998285', 87, 27, N'Bài viết', 2, CAST(N'2024-04-15T09:31:00.893' AS DateTime), 2, CAST(N'2024-04-15T09:31:31.450' AS DateTime), N'Nội dung hiển thị', 2, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'a5fc304c-da6a-436c-b655-c0f1f5a382c4', 88, 27, N'Bài viết', 2, CAST(N'2024-04-15T13:45:48.443' AS DateTime), 2, CAST(N'2024-04-15T14:21:11.680' AS DateTime), N'Nội dung hiển thị', 2, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'6d37f016-e12c-4678-a223-c2d122d8154f', 152, 13, N'1', 2, CAST(N'2024-04-19T09:56:02.720' AS DateTime), 2, CAST(N'2024-04-19T11:04:29.470' AS DateTime), N'Hiển thị tóm tắt', 10, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'4cfe076c-9862-4482-8ed3-c2f3d27aebfb', 80, 20, N'1', 2, CAST(N'2024-04-15T08:35:26.647' AS DateTime), 2, CAST(N'2024-04-17T08:47:47.110' AS DateTime), N'Hiển thị tiêu đề section', 5, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'24a33192-2485-4716-8db3-c30eec26ce17', 3, 26, N'10', 2, CAST(N'2024-04-11T18:26:45.480' AS DateTime), 2, CAST(N'2024-04-16T16:27:13.443' AS DateTime), N'Loại view*', 2, 4)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'1367e345-9aa0-42b4-9770-c3242ecb3e08', 160, 2, N'1', 2, CAST(N'2024-04-19T13:48:55.723' AS DateTime), 2, CAST(N'2024-06-20T15:05:40.393' AS DateTime), N'Sử dụng', 0, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'92e86d99-eab0-4cc9-8796-c339a6584e4b', 87, 12, N'1', 2, CAST(N'2024-04-15T09:31:00.903' AS DateTime), 2, CAST(N'2024-04-15T09:31:31.470' AS DateTime), N'Hiển thị tên chuyên mục', 4, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'ced9bd41-1a8d-4650-9b29-c38592fd80f3', 102, 8, N'1', 2, CAST(N'2024-07-02T13:57:32.820' AS DateTime), NULL, NULL, N'Số lượng', 5, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'4baaa0b7-8f1a-43c2-bb0f-c400731ede4c', 111, 1, N'Bài viết khác', 2, CAST(N'2024-04-16T16:59:33.967' AS DateTime), 2, CAST(N'2024-04-16T17:06:50.903' AS DateTime), N'Tiêu đề section', 1, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'55319a1f-e0c3-42ae-bffc-c41914e00e8a', 165, 2, N'1', 2, CAST(N'2024-06-26T16:36:38.327' AS DateTime), 2, CAST(N'2024-07-02T15:27:39.653' AS DateTime), N'Sử dụng', 0, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'10450b0f-c4b3-4ca8-82a1-c46557b641aa', 83, 5, N'3a146610-64c3-4cbf-8129-127311b595e0,086a67b0-0e82-4896-843a-a06bedafe258,41341896-06bf-40c9-b3bd-a3032c885e18,bfecce3d-4dbb-4891-b759-b0a07bcdb547,2f167597-9f57-4a03-9feb-3013eabedf53', 2, CAST(N'2024-04-15T09:05:16.857' AS DateTime), 2, CAST(N'2024-04-16T17:25:36.343' AS DateTime), N'Chuyên mục', 2, 1)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'9473a4b4-86b9-49b9-a8c0-c46de6031aeb', 109, 5, N'3a146610-64c3-4cbf-8129-127311b595e0,086a67b0-0e82-4896-843a-a06bedafe258,41341896-06bf-40c9-b3bd-a3032c885e18,bfecce3d-4dbb-4891-b759-b0a07bcdb547,8a10d607-10f1-47c2-ba82-ec243c8e9145', 2, CAST(N'2024-04-16T16:57:49.870' AS DateTime), 2, CAST(N'2024-04-16T17:01:28.010' AS DateTime), N'Chuyên mục', 2, 1)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'071f18a1-e62c-43ee-be3f-c4aa318c3edb', 84, 16, N'1', 2, CAST(N'2024-04-15T09:07:55.583' AS DateTime), 2, CAST(N'2024-04-17T09:02:43.903' AS DateTime), N'Hiển thị ngày công bố', 8, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'a41030a9-97d8-4822-bae4-c4c052931c2e', 85, 26, N'6', 2, CAST(N'2024-04-15T09:20:07.997' AS DateTime), 2, CAST(N'2024-04-17T09:06:26.360' AS DateTime), N'Loại view*', 4, 4)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'c467401b-72a6-48a2-935e-c4df399b397d', 153, 26, N'5', 2, CAST(N'2024-04-19T10:59:21.040' AS DateTime), NULL, NULL, N'Loại view*', 3, 4)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'a3be0baa-b7d6-4f75-afc4-c50c2fb3473e', 106, 17, N'1', 2, CAST(N'2024-04-16T16:31:05.223' AS DateTime), NULL, NULL, N'Hiển thị nội dung', 6, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'75ea01b9-9ce8-4ed9-90ac-c51d4a6be2ea', 79, 11, N'0', 2, CAST(N'2024-04-15T08:28:48.533' AS DateTime), 2, CAST(N'2024-04-17T08:47:32.493' AS DateTime), N'Phân trang', 6, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'61e0a0a7-a4a3-44ca-aa9b-c5377681efd8', 148, 17, N'1', 2, CAST(N'2024-04-19T09:54:08.270' AS DateTime), NULL, NULL, N'Hiển thị nội dung', 6, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'a9d0dbec-79fe-458f-88b8-c5eb1aa7f6c2', 86, 25, N'1', 2, CAST(N'2024-04-15T09:24:18.787' AS DateTime), 2, CAST(N'2024-04-15T09:29:25.320' AS DateTime), N'Hiển thị ảnh đại diện', 6, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'1a35857d-a102-4a4b-b603-c67f1d8d717e', 150, 14, N'1', 2, CAST(N'2024-04-19T09:56:02.617' AS DateTime), 2, CAST(N'2024-04-19T11:02:55.540' AS DateTime), N'Hiển thị tên bài viết', 7, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'9e5b3941-2d85-4641-826d-c723f28f5d03', 123, 2, N'1', 2, CAST(N'2024-04-17T16:25:43.730' AS DateTime), NULL, NULL, N'Sử dụng', 4, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'fb709fe3-726b-47d3-9f61-c72e39af453f', 143, 14, N'1', 2, CAST(N'2024-04-19T09:44:07.300' AS DateTime), NULL, NULL, N'Hiển thị tên bài viết', 7, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'0ba288fb-f934-44be-8fdc-c7bd02e91456', 85, 5, N'39f89a2a-aff0-4de8-abe5-c6f114621c5b', 2, CAST(N'2024-04-15T09:20:07.990' AS DateTime), 2, CAST(N'2024-04-15T09:23:31.897' AS DateTime), N'Chuyên mục', 2, 1)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'eac6d7ab-dba5-4e03-ba0a-c85598e64e50', 99, 31, N'1', 2, CAST(N'2024-04-16T15:30:34.483' AS DateTime), NULL, NULL, N'Hiển thị nguồn tin', 8, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'17e57712-90c2-4717-87b6-c87e1f116dc8', 9, 8, N'9', 2, CAST(N'2024-04-03T13:55:11.340' AS DateTime), 2, CAST(N'2024-04-17T15:51:58.647' AS DateTime), N'Số lượng', 2, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'706ee944-4fc5-4932-93e8-c8ca6148bf94', 90, 5, N'f1ac63bb-7eba-4041-8c70-2c70d8e64133,92729d2a-9c36-4d7b-82e4-fb7ffa8c6a59,94f2b4ce-4e63-40e5-bab6-02c662db6978', 2, CAST(N'2024-04-15T14:13:39.533' AS DateTime), 2, CAST(N'2024-04-15T14:30:26.817' AS DateTime), N'Chuyên mục', 2, 1)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'ec1cbe4d-74ed-4c0c-a5d3-c9e03fbac6cc', 7, 16, N'0', 2, CAST(N'2024-04-11T09:35:17.143' AS DateTime), 2, CAST(N'2024-04-17T14:49:27.927' AS DateTime), N'Hiển thị ngày công bố', 8, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'34f5663c-6fcf-4cd4-b746-ca121db93e89', 161, 13, N'1', 2, CAST(N'2024-04-19T13:48:55.913' AS DateTime), 2, CAST(N'2024-06-19T15:20:56.120' AS DateTime), N'Hiển thị tóm tắt', 10, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'212c79ff-a253-4685-ae15-ca7498844ca9', 143, 13, N'1', 2, CAST(N'2024-04-19T09:44:07.320' AS DateTime), NULL, NULL, N'Hiển thị tóm tắt', 10, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'95f13ca0-b4ca-4057-9cdf-caa572e31663', 116, 12, N'0', 2, CAST(N'2024-04-16T17:35:50.170' AS DateTime), 2, CAST(N'2024-04-16T17:38:54.977' AS DateTime), N'Hiển thị tên chuyên mục', 4, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'8f8d80f9-c558-4155-88ca-cba5ee2c4a25', 124, 1, N'Danh sách hỏi đáp', 2, CAST(N'2024-04-17T16:25:43.837' AS DateTime), 2, CAST(N'2024-06-17T09:12:06.023' AS DateTime), N'Tiêu đề section', 1, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'c4ef018a-c218-4e16-abd6-cbf3902530df', 77, 8, N'10', 2, CAST(N'2024-04-15T08:19:02.720' AS DateTime), 2, CAST(N'2024-04-15T08:22:26.183' AS DateTime), N'Số lượng', 3, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'7fe0b288-234e-4501-8ea4-cc82e5a86556', 161, 2, N'1', 2, CAST(N'2024-04-19T13:48:55.880' AS DateTime), 2, CAST(N'2024-06-19T15:20:56.037' AS DateTime), N'Sử dụng', 0, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'5f3435cf-bd31-4e4e-a9d6-cc9c17e1aab0', 121, 32, N'1', 2, CAST(N'2024-04-17T10:47:39.663' AS DateTime), NULL, NULL, N'Hiển thị tác quyền', 9, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'd4bcdb1e-6924-4eb9-9591-cc9d2a501464', 160, 14, N'1', 2, CAST(N'2024-04-19T13:48:55.757' AS DateTime), 2, CAST(N'2024-06-20T15:05:40.393' AS DateTime), N'Hiển thị tên bài viết', 2, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'8cb6a513-413b-4dde-a4c6-cd22e580f5e4', 109, 11, N'0', 2, CAST(N'2024-04-16T16:57:49.883' AS DateTime), 2, CAST(N'2024-04-16T17:01:28.020' AS DateTime), N'Phân trang', 6, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'f186640d-f8d3-46c0-aec2-cd4be7907319', 86, 11, N'0', 2, CAST(N'2024-04-15T09:24:18.783' AS DateTime), 2, CAST(N'2024-04-15T09:29:25.327' AS DateTime), N'Phân trang', 6, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'ab6c5d2b-e7b3-4880-850c-cd6b6ede3fa5', 109, 2, N'1', 2, CAST(N'2024-04-16T16:57:49.847' AS DateTime), 2, CAST(N'2024-04-16T17:01:28.013' AS DateTime), N'Sử dụng', 0, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'36af9f8d-c913-4e2a-9ea2-cd99e8d51440', 153, 12, N'1', 2, CAST(N'2024-04-19T09:56:02.730' AS DateTime), NULL, NULL, N'Hiển thị tên chuyên mục', 1, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'46130a74-ad44-493f-beac-cdb8767e15ba', 65, 5, N'3a146610-64c3-4cbf-8129-127311b595e0,086a67b0-0e82-4896-843a-a06bedafe258,41341896-06bf-40c9-b3bd-a3032c885e18,bfecce3d-4dbb-4891-b759-b0a07bcdb547,2f167597-9f57-4a03-9feb-3013eabedf53', 2, CAST(N'2024-04-17T09:32:41.973' AS DateTime), 2, CAST(N'2024-04-17T14:58:53.440' AS DateTime), N'Danh mục', 2, 1)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'8dd39bef-6617-4ffe-9aff-cdcf21e927ce', 115, 8, N'5', 2, CAST(N'2024-04-16T17:34:34.073' AS DateTime), 2, CAST(N'2024-04-16T17:38:33.893' AS DateTime), N'Số lượng', 3, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'd08b5550-b8cc-46a8-87bb-cdf1ebc420ee', 115, 16, N'0', 2, CAST(N'2024-04-16T17:34:34.127' AS DateTime), 2, CAST(N'2024-04-16T17:38:33.937' AS DateTime), N'Hiển thị ngày công bố', 8, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'330d1cb6-883c-4efc-87ee-cdf560e115fa', 2, 25, N'1', 2, CAST(N'2024-04-12T13:37:29.293' AS DateTime), 2, CAST(N'2024-04-19T13:43:08.897' AS DateTime), N'Hiển thị ảnh đại diện', 6, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'384ea84b-87b4-409e-8272-ceb53967ad16', 151, 2, N'0', 2, CAST(N'2024-04-19T09:56:02.647' AS DateTime), 2, CAST(N'2024-04-19T11:03:21.223' AS DateTime), N'Sử dụng', 0, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'5a3d324a-538a-4cec-9992-ceb8b48164b7', 148, 16, N'1', 2, CAST(N'2024-04-19T09:54:08.263' AS DateTime), NULL, NULL, N'Hiển thị ngày công bố', 3, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'1ae2121b-b07c-4a0b-aab7-cf1232a6916c', 116, 25, N'1', 2, CAST(N'2024-04-16T17:35:50.180' AS DateTime), 2, CAST(N'2024-04-16T17:38:54.993' AS DateTime), N'Hiển thị ảnh đại diện', 6, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'695405ed-254b-4ef4-bc5a-cf8385a00383', 121, 17, N'1', 2, CAST(N'2024-04-17T10:47:39.657' AS DateTime), NULL, NULL, N'Hiển thị nội dung', 6, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'b8c1091a-802e-48a0-a812-d017c6e34a9e', 110, 5, N'3a146610-64c3-4cbf-8129-127311b595e0,086a67b0-0e82-4896-843a-a06bedafe258,41341896-06bf-40c9-b3bd-a3032c885e18,bfecce3d-4dbb-4891-b759-b0a07bcdb547,2f167597-9f57-4a03-9feb-3013eabedf53', 2, CAST(N'2024-04-16T16:58:10.673' AS DateTime), 2, CAST(N'2024-04-16T17:26:33.663' AS DateTime), N'Chuyên mục', 2, 1)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'65bafc8e-9596-4658-82d0-d16e888271bc', 0, 0, N'1', NULL, CAST(N'2024-03-26T18:50:58.357' AS DateTime), 2, CAST(N'2024-04-02T14:15:30.640' AS DateTime), NULL, 0, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'5620afbf-1e67-4902-b6a8-d1c9a8e24a49', 151, 20, N'1', 2, CAST(N'2024-04-19T09:56:02.660' AS DateTime), 2, CAST(N'2024-04-19T11:03:21.247' AS DateTime), N'Hiển thị tiêu đề section', 5, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'7cf51b8d-c387-4bc6-8071-d1dcad025ac8', 80, 26, N'5', 2, CAST(N'2024-04-15T08:35:26.643' AS DateTime), 2, CAST(N'2024-04-17T09:05:21.653' AS DateTime), N'Loại view*', 4, 4)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'b4f45eed-1bab-4f7a-a802-d2376a67dc49', 108, 14, N'1', 2, CAST(N'2024-04-16T16:57:04.930' AS DateTime), NULL, NULL, N'Hiển thị tên bài viết', 2, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'b5ef0c15-402a-4783-b2b4-d27b14e40438', 116, 16, N'0', 2, CAST(N'2024-04-16T17:35:50.187' AS DateTime), 2, CAST(N'2024-04-16T17:38:55.017' AS DateTime), N'Hiển thị ngày công bố', 8, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'35cc7256-a0d4-4d85-90ab-d29521303f72', 2, 27, N'Bài viết', 2, CAST(N'2024-04-11T18:22:57.457' AS DateTime), 2, CAST(N'2024-04-15T08:00:21.370' AS DateTime), N'Nội dung hiển thị', 2, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'c687e3f7-63bf-48bd-92d2-d3ca19daacde', 94, 14, N'1', 2, CAST(N'2024-04-15T16:33:37.543' AS DateTime), 2, CAST(N'2024-04-15T17:42:54.727' AS DateTime), N'Hiển thị tên bài viết', 7, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'618f68fe-d235-44df-99c8-d3ece3da15a8', 85, 11, N'0', 2, CAST(N'2024-04-15T09:20:08.003' AS DateTime), 2, CAST(N'2024-04-15T09:23:31.977' AS DateTime), N'Phân trang', 6, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'2badcae8-fcc1-4ead-97e4-d60e9cafdc02', 114, 13, N'1', 2, CAST(N'2024-04-16T17:34:17.190' AS DateTime), NULL, NULL, N'Hiển thị tóm tắt', 4, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'62791f54-2cbb-431a-8dbd-d64016d54c7c', 81, 11, N'0', 2, CAST(N'2024-04-15T08:37:45.990' AS DateTime), 2, CAST(N'2024-04-15T08:45:43.700' AS DateTime), N'Phân trang', 6, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'c3a8d79d-5d85-4365-8399-d6f2f1e5ec54', 9, 27, N'Bài viết', 2, CAST(N'2024-04-11T18:32:29.493' AS DateTime), 2, CAST(N'2024-04-12T16:54:20.050' AS DateTime), N'Nội dung hiển thị', 3, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'71d9b000-6975-4b26-a98e-d70454f24a96', 116, 5, N'0c176d07-3354-448f-bcbf-1a2d299c8ec5,c01e27f2-0c42-47f6-9e29-833ec719ba91,cf7cabdc-25ea-49a4-a050-bf698052c312,39f89a2a-aff0-4de8-abe5-c6f114621c5b', 2, CAST(N'2024-04-16T17:35:50.140' AS DateTime), 2, CAST(N'2024-04-16T17:38:54.977' AS DateTime), N'Chuyên mục', 2, 1)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'370fe1e5-5619-4bc6-8f96-d7f4c8c3f29f', 3, 0, N'b51f7635-9fb5-4494-95a3-10b57d0b5cf4', 2, CAST(N'2024-04-01T09:50:42.473' AS DateTime), 2, CAST(N'2024-04-02T15:48:16.200' AS DateTime), N'Danh sách bài viết(Dich vụ)', 8, 1)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'8767295e-14fa-42e3-96ac-d824a66ba60e', 109, 25, N'1', 2, CAST(N'2024-04-16T16:57:49.880' AS DateTime), 2, CAST(N'2024-04-16T17:01:28.027' AS DateTime), N'Hiển thị ảnh đại diện', 6, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'82b6fc41-8d17-4bfd-a70d-d92982ebcb06', 103, 1, N'Ý kiến khách hàng', 2, CAST(N'2024-07-02T10:42:11.573' AS DateTime), 2, CAST(N'2024-07-02T10:59:25.993' AS DateTime), N'Tiêu đề section', 4, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'd467c885-eaa1-48bb-a0c1-d9c3ce83795e', 116, 26, N'8', 2, CAST(N'2024-04-16T17:35:50.170' AS DateTime), 2, CAST(N'2024-04-17T09:10:15.550' AS DateTime), N'Loại view*', 4, 4)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'1d0dc227-3e2a-4d54-8f4d-da9c0dc2311a', 2, 26, N'2', 2, CAST(N'2024-04-11T18:24:34.407' AS DateTime), 2, CAST(N'2024-04-19T13:43:08.893' AS DateTime), N'Loại view*', 4, 4)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'0e7d5e65-9fa3-4bb6-ae62-dac1721421b3', 110, 8, N'4', 2, CAST(N'2024-04-16T16:58:10.677' AS DateTime), 2, CAST(N'2024-04-16T17:26:33.663' AS DateTime), N'Số lượng', 3, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'bc903d20-7eaf-466f-bf0f-dacd4beb354e', 163, 14, N'1', 2, CAST(N'2024-04-19T13:48:56.023' AS DateTime), 2, CAST(N'2024-06-17T14:18:34.400' AS DateTime), N'Hiển thị tên bài viết', 7, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'6b632dea-c674-4c18-a79a-db070a36efac', 90, 20, N'1', 2, CAST(N'2024-04-15T14:13:39.543' AS DateTime), 2, CAST(N'2024-04-15T14:30:26.833' AS DateTime), N'Hiển thị tiêu đề section', 5, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'8aa3b42e-ec1d-474c-88af-db2333f158be', 110, 13, N'1', 2, CAST(N'2024-04-16T16:58:10.693' AS DateTime), 2, CAST(N'2024-04-16T17:26:33.690' AS DateTime), N'Hiển thị tóm tắt', 10, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'cdd67896-11bb-4a21-89bc-dbaa2fb75e2b', 144, 2, N'1', 2, CAST(N'2024-04-19T09:44:07.330' AS DateTime), NULL, NULL, N'Sử dụng', 0, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'6d29392c-7fdb-4502-ad5e-dbdbbc7a74d8', 79, 20, N'1', 2, CAST(N'2024-04-15T08:28:48.530' AS DateTime), 2, CAST(N'2024-04-17T08:47:32.493' AS DateTime), N'Hiển thị tiêu đề section', 5, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'0b8b0c85-36fe-4fbd-bc31-dbf780690d87', 152, 8, N'4', 2, CAST(N'2024-04-19T09:56:02.700' AS DateTime), 2, CAST(N'2024-04-19T11:04:29.357' AS DateTime), N'Số lượng', 3, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'b6138ac5-6641-4cbe-9088-dc1081bda940', 124, 13, N'1', 2, CAST(N'2024-04-17T16:25:43.893' AS DateTime), 2, CAST(N'2024-06-17T09:12:06.127' AS DateTime), N'Hiển thị tóm tắt', 10, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'bf60a106-f890-401b-894f-dc2da8b5b95f', 119, 14, N'1', 2, CAST(N'2024-04-17T10:46:07.387' AS DateTime), NULL, NULL, N'Hiển thị tên bài viết', 2, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'849e5ba0-ba6f-4cf0-a81c-dd015ef72e99', 84, 25, N'1', 2, CAST(N'2024-04-15T09:07:55.563' AS DateTime), 2, CAST(N'2024-04-17T09:02:43.897' AS DateTime), N'Hiển thị ảnh đại diện', 6, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'909e2ebe-b878-45e4-9f58-dd86fcad7778', 118, 30, N'1', 2, CAST(N'2024-04-17T10:21:17.220' AS DateTime), NULL, NULL, N'Hiển thị tác giả', 7, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'eb48b1d6-42d4-4792-88d7-dda99069fca1', 99, 12, N'1', 2, CAST(N'2024-04-16T15:30:34.460' AS DateTime), NULL, NULL, N'Hiển thị tên chuyên mục', 1, NULL)
GO
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'dc95bed2-0edb-4594-818d-ddcb354ac6f8', 103, 2, N'1', 2, CAST(N'2024-04-16T15:39:32.727' AS DateTime), 2, CAST(N'2024-07-02T10:59:25.993' AS DateTime), N'Sử dụng*', 0, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'00f9b34d-6ca3-4c1d-a8e1-ddfcaa191296', 163, 35, N'1', 2, CAST(N'2024-06-17T14:17:56.780' AS DateTime), 2, CAST(N'2024-06-17T14:18:34.430' AS DateTime), N'Là câu hỏi', 14, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'417d4610-92fd-4551-87e7-de5109b8b676', 116, 20, N'1', 2, CAST(N'2024-04-16T17:35:50.173' AS DateTime), 2, CAST(N'2024-04-16T17:38:54.990' AS DateTime), N'Hiển thị tiêu đề section', 5, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'3968c849-0c73-44ae-bc7d-de76857a8939', 144, 12, N'1', 2, CAST(N'2024-04-19T09:44:07.333' AS DateTime), NULL, NULL, N'Hiển thị tên chuyên mục', 1, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'e164e1c1-ba27-4e6c-a42b-dec2bb2a6457', 163, 13, N'1', 2, CAST(N'2024-04-19T13:48:56.030' AS DateTime), 2, CAST(N'2024-06-17T14:18:34.427' AS DateTime), N'Hiển thị tóm tắt', 10, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'0dee546f-2035-401d-abd8-df4a7d7f3a1d', 94, 16, N'1', 2, CAST(N'2024-04-15T16:33:37.547' AS DateTime), 2, CAST(N'2024-04-15T17:42:54.730' AS DateTime), N'Hiển thị ngày công bố', 8, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'6823984b-2d82-4e44-a839-dfa6b451598e', 81, 13, N'1', 2, CAST(N'2024-04-15T08:37:45.997' AS DateTime), 2, CAST(N'2024-04-15T08:45:43.707' AS DateTime), N'Hiển thị tóm tắt', 10, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'd2de6e7a-7bb6-481d-9493-dfdd30067456', 9, 14, N'1', 2, CAST(N'2024-04-11T09:20:00.090' AS DateTime), 2, CAST(N'2024-04-17T15:51:58.647' AS DateTime), N'Hiển thị tiêu đề', 5, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'8cc5fe04-0839-4b07-8a1f-e04bb62e63e2', 92, 16, N'1', 2, CAST(N'2024-04-15T14:57:31.557' AS DateTime), 2, CAST(N'2024-04-16T16:09:25.410' AS DateTime), N'Hiển thị ngày công bố', 3, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'd1136fcd-35ec-4679-a340-e09e70f2ab2b', 120, 13, N'1', 2, CAST(N'2024-04-17T10:47:22.030' AS DateTime), NULL, NULL, N'Hiển thị tóm tắt', 4, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'c0c773ce-7e1c-49a4-ae5c-e0ea8de21c4a', 86, 5, N'0c176d07-3354-448f-bcbf-1a2d299c8ec5,c01e27f2-0c42-47f6-9e29-833ec719ba91,cf7cabdc-25ea-49a4-a050-bf698052c312,39f89a2a-aff0-4de8-abe5-c6f114621c5b', 2, CAST(N'2024-04-15T09:24:18.770' AS DateTime), 2, CAST(N'2024-04-15T09:29:25.260' AS DateTime), N'Chuyên mục', 2, 1)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'1c50bde7-d5d7-4cea-9e3b-e10aea9c4b11', 119, 13, N'1', 2, CAST(N'2024-04-17T10:46:07.390' AS DateTime), NULL, NULL, N'Hiển thị tóm tắt', 4, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'8a0422fc-b336-4de2-b431-e166fe1ac13d', 110, 14, N'1', 2, CAST(N'2024-04-16T16:58:10.690' AS DateTime), 2, CAST(N'2024-04-16T17:26:33.673' AS DateTime), N'Hiển thị tên bài viết', 7, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'eb35049e-6a51-48e1-838f-e1f31ede7f43', 144, 31, N'1', 2, CAST(N'2024-04-19T09:44:07.350' AS DateTime), NULL, NULL, N'Hiển thị nguồn tin', 8, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'726110c2-f597-4deb-a4c9-e255b7f23756', 92, 12, N'1', 2, CAST(N'2024-04-15T14:57:31.543' AS DateTime), 2, CAST(N'2024-04-16T16:09:25.410' AS DateTime), N'Hiển thị tên chuyên mục', 1, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'719dc63c-29aa-44d4-a7de-e264f5bb03f0', 127, 12, N'1', 2, CAST(N'2024-04-17T16:25:44.057' AS DateTime), NULL, NULL, N'Hiển thị tên chuyên mục', 4, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'c8ea46c7-2918-4974-a67b-e2e05b184280', 77, 27, N'Bài viết', 2, CAST(N'2024-04-15T08:19:02.717' AS DateTime), 2, CAST(N'2024-04-15T08:22:26.183' AS DateTime), N'Nội dung hiển thị', 2, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'7f90f513-48fe-431b-bffa-e2faf0a9acb2', 81, 12, N'1', 2, CAST(N'2024-04-15T08:37:45.837' AS DateTime), 2, CAST(N'2024-04-15T08:45:43.680' AS DateTime), N'Hiển thị tên chuyên mục', 4, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'4dd6aaa4-e2c9-4c7f-9abb-e30d264f809f', 152, 25, N'1', 2, CAST(N'2024-04-19T09:56:02.710' AS DateTime), 2, CAST(N'2024-04-19T11:04:29.457' AS DateTime), N'Hiển thị ảnh đại diện', 6, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'70318a55-c59d-46dc-8e1d-e31c396dc0f4', 84, 11, N'0', 2, CAST(N'2024-04-15T09:07:55.567' AS DateTime), 2, CAST(N'2024-04-17T09:02:43.897' AS DateTime), N'Phân trang', 6, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'dcc40817-c46b-4d78-b897-e342da034bf2', 120, 1, N'Khách hàng đối tác', 2, CAST(N'2024-04-17T10:47:22.023' AS DateTime), NULL, NULL, N'Tiêu đề section', 3, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'e0f32299-3254-42de-b204-e36054110cd0', 135, 3, N'/Upload\Theme\2024\HueCIT_Banner1_1713492233.jpg', 2, CAST(N'2024-04-19T09:03:54.453' AS DateTime), 2, CAST(N'2024-07-03T08:57:09.317' AS DateTime), N'Hỉnh ảnh 1', 3, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'2a506492-2c5c-4719-aa5b-e3e58fe2406e', 94, 27, N'Bài viết', 2, CAST(N'2024-04-15T16:33:37.523' AS DateTime), 2, CAST(N'2024-04-15T17:40:55.867' AS DateTime), N'Nội dung hiển thị', 2, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'6a69bd92-c346-4e5d-8fec-e3ea6dae1e3f', 125, 20, N'1', 2, CAST(N'2024-04-17T16:25:43.930' AS DateTime), 2, CAST(N'2024-06-19T11:33:22.107' AS DateTime), N'Hiển thị tiêu đề Section', 6, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'968cf9d4-3e75-4149-808b-e48f28df6623', 78, 14, N'1', 2, CAST(N'2024-04-15T08:25:09.067' AS DateTime), 2, CAST(N'2024-04-17T14:59:54.830' AS DateTime), N'Hiển thị tên bài viết', 7, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'66775270-9500-4392-9da1-e509a2a12f78', 120, 29, N'1', 2, CAST(N'2024-04-17T10:47:22.043' AS DateTime), NULL, NULL, N'Hiển thị thông tin liên hệ', 10, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'79a2776c-7a6a-439e-988a-e51236dac9a4', 81, 15, N'1', 2, CAST(N'2024-04-15T08:37:45.990' AS DateTime), 2, CAST(N'2024-04-15T08:45:43.700' AS DateTime), N'Hiển thị thumbnail', 6, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'25c4535d-199a-4e48-b66b-e5298f6a4172', 127, 25, N'1', 2, CAST(N'2024-04-17T16:25:44.060' AS DateTime), NULL, NULL, N'Hiển thị ảnh đại diện', 6, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'be6c2064-136e-45e4-b35b-e56b556fa0d5', 163, 1, N'Câu hỏi khác', 2, CAST(N'2024-04-19T13:48:56.000' AS DateTime), 2, CAST(N'2024-06-17T14:18:34.360' AS DateTime), N'Tiêu đề section', 1, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'533070a8-a199-4dad-b428-e5c297889395', 118, 1, N'Tổng quan', 2, CAST(N'2024-04-17T10:46:32.170' AS DateTime), NULL, NULL, N'Tiêu đề section', 3, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'735a6b41-3db7-4a95-b91f-e60604c1e25e', 83, 20, N'1', 2, CAST(N'2024-04-15T09:05:16.900' AS DateTime), 2, CAST(N'2024-04-16T17:25:36.350' AS DateTime), N'Hiển thị tiêu đề section', 5, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'd5dac53e-dd19-4195-b24e-e62251e576f0', 125, 8, N'10', 2, CAST(N'2024-04-17T16:25:43.923' AS DateTime), 2, CAST(N'2024-06-19T11:33:22.107' AS DateTime), N'Số lượng', 3, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'96c31359-8ed6-4164-abf0-e63e0df79e87', 143, 16, N'1', 2, CAST(N'2024-04-19T09:44:07.320' AS DateTime), NULL, NULL, N'Hiển thị ngày công bố', 8, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'88f01ca2-422c-4021-a3dd-e63e364fc046', 102, 13, N'1', 2, CAST(N'2024-07-02T14:14:57.647' AS DateTime), NULL, NULL, N'Hiển thị tóm tắt', 6, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'5d4902f6-1602-4ece-a629-e6855e161c65', 152, 5, N'f1ac63bb-7eba-4041-8c70-2c70d8e64133,8a10d607-10f1-47c2-ba82-ec243c8e9145,92729d2a-9c36-4d7b-82e4-fb7ffa8c6a59', 2, CAST(N'2024-04-19T09:56:02.697' AS DateTime), 2, CAST(N'2024-04-19T11:04:29.357' AS DateTime), N'Chuyên mục', 2, 1)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'9542193d-54f2-4ff8-b762-e70f92967f55', 83, 15, N'1', 2, CAST(N'2024-04-15T09:05:16.920' AS DateTime), 2, CAST(N'2024-04-16T17:25:36.350' AS DateTime), N'Hiển thị thumbnail', 6, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'6b5b0355-66a9-42cf-b3ad-e7584e212da0', 87, 15, N'1', 2, CAST(N'2024-04-15T09:31:00.907' AS DateTime), 2, CAST(N'2024-04-15T09:31:31.477' AS DateTime), N'Hiển thị thumbnail', 6, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'd09eeae5-271f-4b26-93b6-e792f77909fc', 91, 14, N'1', 2, CAST(N'2024-04-15T14:15:06.833' AS DateTime), 2, CAST(N'2024-04-15T14:23:50.360' AS DateTime), N'Hiển thị tên bài viết', 7, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'4daba035-fee6-44bf-b225-e7e3830e2351', 163, 8, N'7', 2, CAST(N'2024-04-19T13:48:56.007' AS DateTime), 2, CAST(N'2024-06-17T14:18:34.367' AS DateTime), N'Số lượng', 3, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'133d4c2d-42e4-4f6a-807a-e80252d358f7', 117, 13, N'1', 2, CAST(N'2024-04-16T17:36:00.593' AS DateTime), 2, CAST(N'2024-04-16T17:39:08.980' AS DateTime), N'Hiển thị tóm tắt', 10, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'e99d05bd-f588-4455-aea7-e8629081f8b0', 104, 2, N'1', 2, CAST(N'2024-04-16T15:39:59.573' AS DateTime), 2, CAST(N'2024-04-17T18:08:57.850' AS DateTime), N'Sử dụng*', 0, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'222e475c-78c0-4e70-9332-e8ee8bf50873', 88, 20, N'1', 2, CAST(N'2024-04-15T13:45:48.450' AS DateTime), 2, CAST(N'2024-04-16T09:16:57.087' AS DateTime), N'Hiển thị tiêu đề section', 5, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'6e1225c6-0932-493f-aa10-e91c457bd27d', 88, 25, N'1', 2, CAST(N'2024-04-15T13:45:48.457' AS DateTime), 2, CAST(N'2024-04-16T09:16:57.083' AS DateTime), N'Hiển thị ảnh đại diện', 6, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'db67c466-3ca6-4245-8f0c-e94bf29f33bd', 106, 12, N'1', 2, CAST(N'2024-04-16T16:31:05.210' AS DateTime), NULL, NULL, N'Hiển thị tên chuyên mục', 1, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'0fe4d264-518e-4748-93f5-e94daac66bd5', 151, 26, N'13', 2, CAST(N'2024-04-19T09:56:02.653' AS DateTime), 2, CAST(N'2024-04-19T11:03:21.240' AS DateTime), N'Loại view*', 4, 4)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'7fa38286-4241-44f0-8d39-e9bfb9f0147a', 165, 3, N'/Upload\Theme\2024\Banner_HueCIT_HeThongQuanLyThanhTraKiemTra_1719908819.png', 2, CAST(N'2024-06-26T16:36:38.343' AS DateTime), 2, CAST(N'2024-07-03T09:01:49.790' AS DateTime), N'Hỉnh ảnh 2', 5, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'e600128b-e185-42b9-8b91-e9fbd2c8fcf0', 109, 12, N'1', 2, CAST(N'2024-04-16T16:57:49.873' AS DateTime), 2, CAST(N'2024-04-16T17:01:28.010' AS DateTime), N'Hiển thị tên chuyên mục', 4, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'f7846093-b727-477e-9123-ea3da45f3e1e', 165, 26, N'19', 2, CAST(N'2024-06-26T16:36:38.347' AS DateTime), 2, CAST(N'2024-07-02T15:27:39.660' AS DateTime), N'Loại view*', 2, 4)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'4e266080-963f-44f3-bdf8-ea895ba568b5', 94, 12, N'1', 2, CAST(N'2024-04-15T16:33:37.533' AS DateTime), 2, CAST(N'2024-04-15T17:42:54.677' AS DateTime), N'Hiển thị tên chuyên mục', 4, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'e7765d85-764d-4806-9271-eaa6b8cf3d4d', 78, 25, N'1', 2, CAST(N'2024-04-15T08:25:09.063' AS DateTime), 2, CAST(N'2024-04-17T14:59:54.823' AS DateTime), N'Hiển thị ảnh đại diện', 6, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'ce151bdf-eb6b-4fea-bada-eb87d611e7d0', 108, 25, N'1', 2, CAST(N'2024-04-16T16:57:04.937' AS DateTime), NULL, NULL, N'Hiển thị ảnh đại diện', 5, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'621f22be-56ee-4b12-bd14-ebebe67f319a', 125, 35, N'1', 2, CAST(N'2024-06-19T11:31:21.813' AS DateTime), 2, CAST(N'2024-06-19T11:33:22.133' AS DateTime), N'Là câu hỏi', 7, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'0ae61313-85d2-4c3a-9881-ec180e3e3472', 143, 5, N'fee4c680-5952-4b0a-ab24-5eefd52baee7', 2, CAST(N'2024-04-19T09:44:07.287' AS DateTime), NULL, NULL, N'Chuyên mục', 2, 1)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'b62c694e-5bb0-4519-9f08-ec1846c88ceb', 2, 0, N'06de3702-a8ed-4d10-8729-8ae10314aaba,94f2b4ce-4e63-40e5-bab6-02c662db6978', 2, CAST(N'2024-04-02T17:12:46.887' AS DateTime), 2, CAST(N'2024-04-02T18:09:21.240' AS DateTime), N'Danh sách bài viết của', 2, 1)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'9387ee33-1a45-41f5-8178-ec39bcea3a80', 148, 31, N'1', 2, CAST(N'2024-04-19T09:54:08.277' AS DateTime), NULL, NULL, N'Hiển thị nguồn tin', 8, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'4d734486-572c-43e9-b239-ec82dfa2b823', 144, 32, N'1', 2, CAST(N'2024-04-19T09:44:07.350' AS DateTime), NULL, NULL, N'Hiển thị tác quyền', 9, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'e131e19a-9183-4553-8f92-ed28c989897a', 118, 29, N'1', 2, CAST(N'2024-04-17T10:21:17.227' AS DateTime), NULL, NULL, N'Hiển thị thông tin liên hệ', 10, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'15709d06-c2aa-4504-b568-edd2b775276f', 108, 17, N'1', 2, CAST(N'2024-04-16T16:57:04.940' AS DateTime), NULL, NULL, N'Hiển thị nội dung', 6, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'ccd38425-a5ef-4580-839e-ee02f35f5fb3', 106, 30, N'1', 2, CAST(N'2024-04-16T16:31:05.223' AS DateTime), NULL, NULL, N'Hiển thị tác giả', 7, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'81720b54-84f5-4097-a4bb-ee219530a6be', 86, 13, N'1', 2, CAST(N'2024-04-15T09:24:18.790' AS DateTime), 2, CAST(N'2024-04-15T09:29:25.353' AS DateTime), N'Hiển thị tóm tắt', 10, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'3c4ecfed-28b7-42b9-a12a-ee858d47893c', 118, 14, N'1', 2, CAST(N'2024-04-17T10:21:17.103' AS DateTime), NULL, NULL, N'Hiển thị tên bài viết', 2, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'bfd854d6-cfb3-4a6f-8eb4-eeca5307774d', 2, 1, N'Tin tức', 2, CAST(N'2024-04-02T18:51:52.983' AS DateTime), 2, CAST(N'2024-04-19T13:43:08.900' AS DateTime), N'Tiêu đề section', 1, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'fbb92ff5-da3c-4f8d-b520-eed83db75e69', 92, 33, N'1', 2, CAST(N'2024-04-16T15:50:51.707' AS DateTime), 2, CAST(N'2024-04-16T16:09:25.563' AS DateTime), N'Hiển thị từ khóa', 11, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'89312210-03a2-4d85-88a1-eeec077007c2', 127, 20, N'1', 2, CAST(N'2024-04-17T16:25:44.057' AS DateTime), NULL, NULL, N'Hiển thị tiêu đề section', 5, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'80f08ace-7a12-4e85-b9ed-ef5957818c3e', 81, 16, N'1', 2, CAST(N'2024-04-15T08:37:45.997' AS DateTime), 2, CAST(N'2024-04-15T08:45:43.700' AS DateTime), N'Hiển thị ngày công bố', 8, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'904f3664-2c14-4fa8-964e-efc3cf2426f7', 79, 16, N'1', 2, CAST(N'2024-04-15T08:28:48.540' AS DateTime), 2, CAST(N'2024-04-17T08:47:32.527' AS DateTime), N'Hiển thị ngày công bố', 8, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'bf0dcfb3-f9d3-4a0d-a150-f1c33ad1a0e6', 151, 1, N'Bài viết khác', 2, CAST(N'2024-04-19T09:56:02.647' AS DateTime), 2, CAST(N'2024-04-19T11:03:21.230' AS DateTime), N'Tiêu đề section', 1, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'5a9c9b51-e3d8-4634-93ce-f1dd32356ca1', 65, 12, N'1', 2, CAST(N'2024-04-09T16:35:43.733' AS DateTime), 2, CAST(N'2024-06-25T17:22:42.203' AS DateTime), N'Hiển thị tên chuyên mục', 5, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'4d357e17-d581-4211-8073-f2886fc63f50', 114, 12, N'1', 2, CAST(N'2024-04-16T17:34:17.183' AS DateTime), NULL, NULL, N'Hiển thị tên chuyên mục', 1, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'78c954c7-e41d-45b1-bfc1-f2b573fd8fb1', 120, 25, N'1', 2, CAST(N'2024-04-17T10:47:22.033' AS DateTime), NULL, NULL, N'Hiển thị ảnh đại diện', 5, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'71181d1a-987b-45c2-acc2-f2cb9f7e5f48', 3, 6, N'b51f7635-9fb5-4494-95a3-10b57d0b5cf4', 2, CAST(N'2024-04-03T11:11:03.163' AS DateTime), 2, CAST(N'2024-04-03T11:29:24.477' AS DateTime), N'Chuyên mục', 5, 1)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'e3ba6b86-88fd-46fb-b7b4-f33d6be57d50', 160, 30, N'1', 2, CAST(N'2024-04-19T13:48:55.770' AS DateTime), 2, CAST(N'2024-06-20T15:05:40.430' AS DateTime), N'Hiển thị tác giả', 7, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'b41abeac-239b-4198-9a2a-f37c89892cde', 143, 15, N'1', 2, CAST(N'2024-04-19T09:44:07.297' AS DateTime), NULL, NULL, N'Hiển thị thumbnail', 6, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'bf1100ce-31e4-4935-bc1f-f3a62627056c', 78, 15, N'1', 2, CAST(N'2024-04-15T08:25:09.063' AS DateTime), 2, CAST(N'2024-04-17T14:59:54.827' AS DateTime), N'Hiển thị thumbnail', 6, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'1add3649-f8b3-4df9-91e9-f3c72c841ba9', 83, 2, N'1', 2, CAST(N'2024-04-15T09:05:16.820' AS DateTime), 2, CAST(N'2024-04-16T17:25:36.340' AS DateTime), N'Sử dụng', 0, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'c92bd54f-a7d5-4b1d-b658-f46a77d03649', 126, 16, N'1', 2, CAST(N'2024-04-17T16:25:44.000' AS DateTime), NULL, NULL, N'Hiển thị ngày công bố', 8, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'57653eea-4c40-4f25-abee-f4803f610bd4', 65, 16, N'1', 2, CAST(N'2024-04-09T16:35:43.740' AS DateTime), 2, CAST(N'2024-04-17T14:58:53.457' AS DateTime), N'Hiển thị ngày công bố', 8, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'fddeca7b-2129-40f6-a7b6-f48ffc682c9a', 91, 20, N'1', 2, CAST(N'2024-04-15T14:15:06.823' AS DateTime), 2, CAST(N'2024-04-15T14:23:50.340' AS DateTime), N'Hiển thị tiêu đề section', 5, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'047034f9-6af0-42d8-9d79-f4a434f3be32', 79, 13, N'1', 2, CAST(N'2024-04-15T08:28:48.543' AS DateTime), 2, CAST(N'2024-04-17T08:47:32.557' AS DateTime), N'Hiển thị tóm tắt', 10, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'ea17c7e4-df58-4687-b47d-f4a552724111', 81, 25, N'1', 2, CAST(N'2024-04-15T08:37:45.983' AS DateTime), 2, CAST(N'2024-04-15T08:45:43.700' AS DateTime), N'Hiển thị ảnh đại diện', 6, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'be460ea5-a47a-4551-9faf-f4bde8ef4a6f', 0, 26, N'15', 2, CAST(N'2024-04-16T15:39:59.577' AS DateTime), 2, CAST(N'2024-04-19T09:15:15.343' AS DateTime), N'Loại view*', 2, 4)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'20558246-ecc0-48f4-a28a-f5a3684c62bd', 7, 27, N'Bài viết', 2, CAST(N'2024-04-11T18:28:21.540' AS DateTime), 2, CAST(N'2024-04-12T16:53:34.423' AS DateTime), N'Nội dung hiển thị', 3, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'f0dcf181-790f-40d6-a7ec-f5aebbb35102', 9, 2, N'1', 2, CAST(N'2024-04-03T14:00:19.320' AS DateTime), 2, CAST(N'2024-04-17T15:51:58.647' AS DateTime), N'Sử dụng', 0, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'2c914f17-963e-4e56-8f20-f5bf97687bbf', 161, 35, N'1', 2, CAST(N'2024-06-19T15:20:33.200' AS DateTime), 2, CAST(N'2024-06-19T15:20:56.123' AS DateTime), N'Là câu hỏi', 20, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'ab950de7-7e5b-496a-8eb4-f5f68c5a6e26', 7, 1, N'Đào tạo', 2, CAST(N'2024-04-03T14:28:33.700' AS DateTime), 2, CAST(N'2024-04-17T14:49:27.927' AS DateTime), N'Tiêu đề', 1, 1)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'179021f9-c01a-4187-a677-f6024531f7f8', 102, 5, N'b482ca4e-6668-4521-b0e7-99f91a9e04e4', 2, CAST(N'2024-07-02T13:56:55.693' AS DateTime), NULL, NULL, N'Danh mục', 4, 1)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'69634108-e43c-473d-bd1f-f650db43ed3f', 77, 20, N'1', 2, CAST(N'2024-04-15T08:19:02.760' AS DateTime), 2, CAST(N'2024-04-15T08:22:26.207' AS DateTime), N'Hiển thị tiêu đề section', 5, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'5969d30d-d4a8-42e1-9aed-f65223ccde92', 77, 13, N'0', 2, CAST(N'2024-04-15T08:19:02.800' AS DateTime), 2, CAST(N'2024-04-15T08:22:26.267' AS DateTime), N'Hiển thị tóm tắt', 10, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'48d8cfbb-cb8e-4680-b555-f6a8ee1fdb01', 108, 30, N'1', 2, CAST(N'2024-04-16T16:57:04.940' AS DateTime), NULL, NULL, N'Hiển thị tác giả', 7, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'7b7a3e53-cbe7-4a1d-8eb9-f70c1f8d4903', 150, 1, N'Chuyên mục khác', 2, CAST(N'2024-04-19T09:56:02.590' AS DateTime), 2, CAST(N'2024-04-19T11:02:55.490' AS DateTime), N'Tiêu đề section', 1, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'e8ced675-4c62-4152-af63-f741587c195d', 126, 1, N'Đọc nhiều nhất', 2, CAST(N'2024-04-17T16:25:43.977' AS DateTime), NULL, NULL, N'Tiêu đề section', 1, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'37840f98-8bd3-4413-b498-f7ac244ed9a1', 115, 12, N'1', 2, CAST(N'2024-04-16T17:34:34.100' AS DateTime), 2, CAST(N'2024-04-16T17:38:33.897' AS DateTime), N'Hiển thị tên chuyên mục', 4, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'7ff5a48e-bcee-4853-b1cb-f7b6716a7225', 109, 13, N'1', 2, CAST(N'2024-04-16T16:57:49.890' AS DateTime), 2, CAST(N'2024-04-16T17:01:28.037' AS DateTime), N'Hiển thị tóm tắt', 10, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'c25d2a1b-79a9-49ba-b730-f84af5bf1dd1', 84, 13, N'1', 2, CAST(N'2024-04-15T09:07:55.600' AS DateTime), 2, CAST(N'2024-04-17T09:02:43.903' AS DateTime), N'Hiển thị tóm tắt', 10, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'15fb8da2-9dd6-42ff-b793-f84e486850b6', 102, 26, N'14', 2, CAST(N'2024-04-19T10:23:11.030' AS DateTime), NULL, NULL, N'Loại view*', 3, 4)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'b3c089fd-33ca-489b-b2fa-f89ba38602b0', 143, 11, N'1', 2, CAST(N'2024-04-19T09:44:07.293' AS DateTime), NULL, NULL, N'Phân trang', 6, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'7adbd941-02bd-40a2-9f7c-f936121c23b7', 80, 27, N'Bài viết', 2, CAST(N'2024-04-15T08:35:26.637' AS DateTime), 2, CAST(N'2024-04-15T08:36:05.380' AS DateTime), N'Nội dung hiển thị', 2, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'2f1079fe-6105-40d6-8b1f-f964f5d64c16', 160, 29, N'0', 2, CAST(N'2024-04-19T13:48:55.860' AS DateTime), 2, CAST(N'2024-06-20T15:05:40.440' AS DateTime), N'Hiển thị thông tin liên hệ', 10, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'6fb1b3c7-b928-4a6c-9b99-f9f9f11a4d10', 82, 20, N'1', 2, CAST(N'2024-04-15T08:46:47.453' AS DateTime), 2, CAST(N'2024-04-15T08:50:05.390' AS DateTime), N'Hiển thị tiêu đề section', 5, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'a27b65d2-c820-4294-9e48-fa70dc989439', 116, 13, N'1', 2, CAST(N'2024-04-16T17:35:50.187' AS DateTime), 2, CAST(N'2024-04-16T17:38:55.030' AS DateTime), N'Hiển thị tóm tắt', 10, NULL)
GO
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'b9244ef5-4b05-46d1-9b06-fa731e1e6af2', 153, 14, N'1', 2, CAST(N'2024-04-19T09:56:02.733' AS DateTime), NULL, NULL, N'Hiển thị tên bài viết', 2, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'84821f22-20e4-41ae-8d41-fb778ef60d4e', 151, 12, N'1', 2, CAST(N'2024-04-19T09:56:02.657' AS DateTime), 2, CAST(N'2024-04-19T11:03:21.240' AS DateTime), N'Hiển thị tên chuyên mục', 4, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'352c931f-c53a-47a7-94c4-fbe786abd99f', 108, 12, N'1', 2, CAST(N'2024-04-16T16:57:04.923' AS DateTime), NULL, NULL, N'Hiển thị tên chuyên mục', 1, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'467ab8ab-c433-4ee3-a85d-fc62e4c2e066', 126, 8, N'3', 2, CAST(N'2024-04-17T16:25:43.983' AS DateTime), NULL, NULL, N'Số lượng', 3, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'70829a38-0610-4882-953e-fcafab40e088', 65, 20, N'1', 2, CAST(N'2024-04-09T16:35:43.730' AS DateTime), 2, CAST(N'2024-04-17T14:58:53.450' AS DateTime), N'Hiển thị tiêu đề section', 5, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'52f98f7d-e45b-4514-aed6-fd10d77097f8', 91, 12, N'0', 2, CAST(N'2024-04-15T14:15:06.820' AS DateTime), 2, CAST(N'2024-04-15T14:23:50.317' AS DateTime), N'Hiển thị tên chuyên mục', 4, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'd4393495-2088-4879-80b9-fea788dcff99', 152, 14, N'1', 2, CAST(N'2024-04-19T09:56:02.717' AS DateTime), 2, CAST(N'2024-04-19T11:04:29.460' AS DateTime), N'Hiển thị tên bài viết', 7, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'f3ea1a68-f87f-49c0-8bb4-febe6e898b52', 82, 15, N'1', 2, CAST(N'2024-04-15T08:46:47.460' AS DateTime), 2, CAST(N'2024-04-15T08:50:05.390' AS DateTime), N'Hiển thị thumbnail', 6, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'7afa8cd1-97cd-445a-9742-fec7e8be6f91', 118, 2, N'1', 2, CAST(N'2024-04-17T10:21:17.023' AS DateTime), NULL, NULL, N'Sử dụng', 0, NULL)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'1ee968fb-7116-4fe3-b63f-ff90686e6896', 69, 5, N'6eee995f-d0f9-4951-8882-706cf843c0be,6bff8d31-6863-4c27-90b5-d604f8a51f73,11930bab-964d-49eb-a089-2822e94845d9,adc34db6-5f56-464b-b95d-898eb1471eaf,21486b22-5f0f-4b6d-b385-d061ff4137fa', 2, CAST(N'2024-04-10T11:12:11.697' AS DateTime), 2, CAST(N'2024-04-17T14:41:29.407' AS DateTime), N'Danh mục', 1, 1)
INSERT [dbo].[TB_ThongSoCauHinh] ([ID], [MaView], [MaTieuChi], [GiaTriThietLap], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat], [TenThongSo], [ThuTuHienThi], [DuLieuLienKet]) VALUES (N'6dfa324f-f06c-498c-8009-ffccf4bfdb66', 144, 16, N'1', 2, CAST(N'2024-04-19T09:44:07.337' AS DateTime), NULL, NULL, N'Hiển thị ngày công bố', 3, NULL)
GO
SET IDENTITY_INSERT [dbo].[TB_TinLienQuan] ON 

INSERT [dbo].[TB_TinLienQuan] ([ID], [BaiVietID], [BaiVietLienQuanID]) VALUES (11, N'dce067ec-f1e9-47a2-bc99-a786d75b0234', N'b5087ebe-ec2d-41d7-a2a2-2317ec4d6a7d')
INSERT [dbo].[TB_TinLienQuan] ([ID], [BaiVietID], [BaiVietLienQuanID]) VALUES (12, N'29fcb3d4-01b8-470a-a18c-a7bada201bf1', N'dce067ec-f1e9-47a2-bc99-a786d75b0234')
INSERT [dbo].[TB_TinLienQuan] ([ID], [BaiVietID], [BaiVietLienQuanID]) VALUES (13, N'a58d2e41-4389-4df8-b9f3-c8651f06db71', N'29fcb3d4-01b8-470a-a18c-a7bada201bf1')
INSERT [dbo].[TB_TinLienQuan] ([ID], [BaiVietID], [BaiVietLienQuanID]) VALUES (15, N'7973cf4a-3e57-422f-aee8-4bf0625d3652', N'c407f646-52cd-46dd-a4a3-5c34af6b12ef')
INSERT [dbo].[TB_TinLienQuan] ([ID], [BaiVietID], [BaiVietLienQuanID]) VALUES (16, N'7973cf4a-3e57-422f-aee8-4bf0625d3652', N'4c4859c5-6906-4c62-bd6f-05ae67def651')
INSERT [dbo].[TB_TinLienQuan] ([ID], [BaiVietID], [BaiVietLienQuanID]) VALUES (17, N'fb671df3-ee01-4ec5-aff6-02f37b20a87b', N'c407f646-52cd-46dd-a4a3-5c34af6b12ef')
INSERT [dbo].[TB_TinLienQuan] ([ID], [BaiVietID], [BaiVietLienQuanID]) VALUES (18, N'f3b1bfd7-5d23-4259-9f9d-392e130341cd', N'fb671df3-ee01-4ec5-aff6-02f37b20a87b')
SET IDENTITY_INSERT [dbo].[TB_TinLienQuan] OFF
GO
SET IDENTITY_INSERT [dbo].[TB_View] ON 

INSERT [dbo].[TB_View] ([ID], [TenView], [MoTa], [DuongDan], [Area], [Controller], [Action], [ViewCapChaID], [SuDung], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat]) VALUES (1, N'Layout_1', N'Trang chủ', N'~/Views/Home/Index.cshtml', N'', N'Home', N'Index', NULL, 1, 2, CAST(N'2024-03-26T08:16:33.443' AS DateTime), 2, CAST(N'2024-04-16T10:01:28.830' AS DateTime))
INSERT [dbo].[TB_View] ([ID], [TenView], [MoTa], [DuongDan], [Area], [Controller], [Action], [ViewCapChaID], [SuDung], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat]) VALUES (2, N'_section_row_1', N'Section tin tức', N'~/Views/Shared/_PartialView/_ViewContent/_DanhSach.cshtml', N'', N'', N'', 1, 1, 2, CAST(N'2024-03-26T08:16:50.193' AS DateTime), 2, CAST(N'2024-04-17T14:37:40.620' AS DateTime))
INSERT [dbo].[TB_View] ([ID], [TenView], [MoTa], [DuongDan], [Area], [Controller], [Action], [ViewCapChaID], [SuDung], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat]) VALUES (3, N'_section_row_2', N'Section dịch vụ', N'~/Views/Shared/_PartialView/_ViewContent/_DanhSach.cshtml', N'', N'', N'', 1, 1, 2, CAST(N'2024-04-01T09:38:04.933' AS DateTime), 2, CAST(N'2024-04-16T09:27:04.193' AS DateTime))
INSERT [dbo].[TB_View] ([ID], [TenView], [MoTa], [DuongDan], [Area], [Controller], [Action], [ViewCapChaID], [SuDung], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat]) VALUES (5, N'Layout_2', N'Trang chủ sản phẩm', N'~/Views/BaiViet/SanPham/SanPham.cshtml', N'', N'BaiViet', N'DanhSachBaiViet', NULL, 1, 2, CAST(N'2024-04-03T09:08:00.593' AS DateTime), 2, CAST(N'2024-04-18T11:07:21.817' AS DateTime))
INSERT [dbo].[TB_View] ([ID], [TenView], [MoTa], [DuongDan], [Area], [Controller], [Action], [ViewCapChaID], [SuDung], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat]) VALUES (6, N'_section_main_contents', N'Section danh sách sản phẩm', N'~/Views/Shared/_PartialView/_ViewContent/_DanhSach.cshtml', N'', N'', N'', 5, 1, 2, CAST(N'2024-04-03T09:08:27.850' AS DateTime), 2, CAST(N'2024-04-16T09:40:42.203' AS DateTime))
INSERT [dbo].[TB_View] ([ID], [TenView], [MoTa], [DuongDan], [Area], [Controller], [Action], [ViewCapChaID], [SuDung], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat]) VALUES (7, N'_section_row_3', N'Section đào tạo', N'~/Views/Shared/_PartialView/_ViewContent/_DanhSach.cshtml', N'', N'', N'', 1, 1, 2, CAST(N'2024-04-03T09:08:57.970' AS DateTime), 2, CAST(N'2024-04-17T14:47:40.723' AS DateTime))
INSERT [dbo].[TB_View] ([ID], [TenView], [MoTa], [DuongDan], [Area], [Controller], [Action], [ViewCapChaID], [SuDung], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat]) VALUES (9, N'_section_row_4', N'Section sản phẩm', N'~/Views/Shared/_PartialView/_ViewContent/_DanhSach.cshtml', N'', N'', N'', 1, 1, 2, CAST(N'2024-04-03T13:54:23.313' AS DateTime), 2, CAST(N'2024-04-17T14:47:27.233' AS DateTime))
INSERT [dbo].[TB_View] ([ID], [TenView], [MoTa], [DuongDan], [Area], [Controller], [Action], [ViewCapChaID], [SuDung], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat]) VALUES (10, N'Layout_3', N'Trang dịch vụ', N'~/Views/BaiViet/DichVu/DichVu.cshtml', N'', N'BaiViet', N'DanhSachBaiViet', NULL, 1, 2, CAST(N'2024-04-03T17:02:45.120' AS DateTime), 2, CAST(N'2024-04-16T10:02:12.617' AS DateTime))
INSERT [dbo].[TB_View] ([ID], [TenView], [MoTa], [DuongDan], [Area], [Controller], [Action], [ViewCapChaID], [SuDung], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat]) VALUES (12, N'Layout_4', N'Trang tin tức', N'~/Views/BaiViet/TinTuc/TinTuc.cshtml', N'', N'BaiViet', N'DanhSachBaiViet', NULL, 1, 2, CAST(N'2024-04-04T09:58:37.190' AS DateTime), 2, CAST(N'2024-04-16T10:20:56.323' AS DateTime))
INSERT [dbo].[TB_View] ([ID], [TenView], [MoTa], [DuongDan], [Area], [Controller], [Action], [ViewCapChaID], [SuDung], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat]) VALUES (53, N'Layout_5', N'Trang blog', N'~/Views/BaiViet/Blog/Blog.cshtml', N'', N'BaiViet', N'DanhSachBaiViet', NULL, 1, 2, CAST(N'2024-04-09T16:03:22.970' AS DateTime), 2, CAST(N'2024-04-16T10:32:26.280' AS DateTime))
INSERT [dbo].[TB_View] ([ID], [TenView], [MoTa], [DuongDan], [Area], [Controller], [Action], [ViewCapChaID], [SuDung], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat]) VALUES (55, N'Layout_6', N'Trang giới thiệu', N'~/Views/BaiViet/GioiThieu/GioiThieu.cshtml', N'', N'BaiViet', N'DanhSachBaiViet', NULL, 1, 2, CAST(N'2024-04-09T16:04:50.833' AS DateTime), 2, CAST(N'2024-04-16T10:32:44.260' AS DateTime))
INSERT [dbo].[TB_View] ([ID], [TenView], [MoTa], [DuongDan], [Area], [Controller], [Action], [ViewCapChaID], [SuDung], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat]) VALUES (60, N'Layout_7', N'Trang tuyển dụng', N'~/Views/BaiViet/TuyenDung/TuyenDung.cshtml', N'', N'BaiViet', N'DanhSachBaiViet', NULL, 1, 2, CAST(N'2024-04-09T16:18:47.330' AS DateTime), 2, CAST(N'2024-04-16T10:32:58.007' AS DateTime))
INSERT [dbo].[TB_View] ([ID], [TenView], [MoTa], [DuongDan], [Area], [Controller], [Action], [ViewCapChaID], [SuDung], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat]) VALUES (65, N'_section_sidebar_3', N'Section phóng sự ảnh', N'~/Views/Shared/_PartialView/_ViewContent/_DanhSach.cshtml', N'', N'', N'', 53, 1, 2, CAST(N'2024-04-09T16:35:43.697' AS DateTime), 2, CAST(N'2024-04-17T09:52:31.683' AS DateTime))
INSERT [dbo].[TB_View] ([ID], [TenView], [MoTa], [DuongDan], [Area], [Controller], [Action], [ViewCapChaID], [SuDung], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat]) VALUES (69, N'_DanhSachSanPham_Slide', N'Section danh sách sản phẩm', N'~/Views/Shared/_PartialView/_BaiViet/_DanhSachSanPham.cshtml', N'', N'', N'', 5, 0, 2, CAST(N'2024-04-10T11:12:11.663' AS DateTime), 2, CAST(N'2024-04-15T08:17:32.793' AS DateTime))
INSERT [dbo].[TB_View] ([ID], [TenView], [MoTa], [DuongDan], [Area], [Controller], [Action], [ViewCapChaID], [SuDung], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat]) VALUES (70, N'Homepage2', N'', N'', N'', N'', N'', 69, 1, 2, CAST(N'2024-04-10T11:13:26.553' AS DateTime), NULL, NULL)
INSERT [dbo].[TB_View] ([ID], [TenView], [MoTa], [DuongDan], [Area], [Controller], [Action], [ViewCapChaID], [SuDung], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat]) VALUES (77, N'_section_main_contents', N'Section danh sách dịch vụ', N'~/Views/Shared/_PartialView/_ViewContent/_DanhSach.cshtml', N'', N'', N'', 10, 1, 2, CAST(N'2024-04-15T08:19:02.633' AS DateTime), 2, CAST(N'2024-04-18T11:07:43.180' AS DateTime))
INSERT [dbo].[TB_View] ([ID], [TenView], [MoTa], [DuongDan], [Area], [Controller], [Action], [ViewCapChaID], [SuDung], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat]) VALUES (78, N'_section_row_1', N'Section tin tức sự kiện', N'~/Views/Shared/_PartialView/_ViewContent/_DanhSach.cshtml', N'', N'', N'', 12, 1, 2, CAST(N'2024-04-15T08:25:08.903' AS DateTime), 2, CAST(N'2024-04-16T10:09:56.440' AS DateTime))
INSERT [dbo].[TB_View] ([ID], [TenView], [MoTa], [DuongDan], [Area], [Controller], [Action], [ViewCapChaID], [SuDung], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat]) VALUES (79, N'_section_row_2', N'Section tin hoạt động', N'~/Views/Shared/_PartialView/_ViewContent/_DanhSach.cshtml', N'', N'', N'', 12, 1, 2, CAST(N'2024-04-15T08:28:48.437' AS DateTime), 2, CAST(N'2024-04-16T10:12:15.220' AS DateTime))
INSERT [dbo].[TB_View] ([ID], [TenView], [MoTa], [DuongDan], [Area], [Controller], [Action], [ViewCapChaID], [SuDung], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat]) VALUES (80, N'_section_row_3', N'Section tin chuyên ngành', N'~/Views/Shared/_PartialView/_ViewContent/_DanhSach.cshtml', N'', N'', N'', 12, 1, 2, CAST(N'2024-04-15T08:35:26.603' AS DateTime), 2, CAST(N'2024-04-16T10:13:01.847' AS DateTime))
INSERT [dbo].[TB_View] ([ID], [TenView], [MoTa], [DuongDan], [Area], [Controller], [Action], [ViewCapChaID], [SuDung], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat]) VALUES (81, N'_section_main_contents', N'Section danh sách blog', N'~/Views/Shared/_PartialView/_ViewContent/_DanhSach.cshtml', N'', N'', N'', 53, 1, 2, CAST(N'2024-04-15T08:37:45.633' AS DateTime), 2, CAST(N'2024-04-16T10:30:32.833' AS DateTime))
INSERT [dbo].[TB_View] ([ID], [TenView], [MoTa], [DuongDan], [Area], [Controller], [Action], [ViewCapChaID], [SuDung], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat]) VALUES (82, N'_section_row_1', N'Section danh sách chuyên mục', N'~/Views/Shared/_PartialView/_ViewContent/_DanhSach.cshtml', N'', N'', N'', 53, 1, 2, CAST(N'2024-04-15T08:46:47.373' AS DateTime), 2, CAST(N'2024-04-16T10:30:46.613' AS DateTime))
INSERT [dbo].[TB_View] ([ID], [TenView], [MoTa], [DuongDan], [Area], [Controller], [Action], [ViewCapChaID], [SuDung], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat]) VALUES (83, N'_section_row_2', N'Section đọc nhiều nhất', N'~/Views/Shared/_PartialView/_ViewContent/_DanhSach.cshtml', N'', N'', N'', 53, 1, 2, CAST(N'2024-04-15T09:05:16.780' AS DateTime), 2, CAST(N'2024-04-16T10:31:04.253' AS DateTime))
INSERT [dbo].[TB_View] ([ID], [TenView], [MoTa], [DuongDan], [Area], [Controller], [Action], [ViewCapChaID], [SuDung], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat]) VALUES (84, N'_section_bottom', N'Section bài viết khác', N'~/Views/Shared/_PartialView/_ViewContent/_DanhSach.cshtml', N'', N'', N'', 53, 1, 2, CAST(N'2024-04-15T09:07:55.403' AS DateTime), 2, CAST(N'2024-04-16T10:31:19.540' AS DateTime))
INSERT [dbo].[TB_View] ([ID], [TenView], [MoTa], [DuongDan], [Area], [Controller], [Action], [ViewCapChaID], [SuDung], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat]) VALUES (85, N'_section_main_contents', N'Section danh sách blog', N'~/Views/Shared/_PartialView/_ViewContent/_DanhSach.cshtml', N'', N'', N'', 60, 1, 2, CAST(N'2024-04-15T09:20:07.923' AS DateTime), 2, CAST(N'2024-04-16T10:31:51.287' AS DateTime))
INSERT [dbo].[TB_View] ([ID], [TenView], [MoTa], [DuongDan], [Area], [Controller], [Action], [ViewCapChaID], [SuDung], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat]) VALUES (86, N'_section_row_1', N'Section danh sách chuyên mục', N'~/Views/Shared/_PartialView/_ViewContent/_DanhSach.cshtml', N'', N'', N'', 60, 1, 2, CAST(N'2024-04-15T09:24:18.720' AS DateTime), 2, CAST(N'2024-04-16T10:32:01.727' AS DateTime))
INSERT [dbo].[TB_View] ([ID], [TenView], [MoTa], [DuongDan], [Area], [Controller], [Action], [ViewCapChaID], [SuDung], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat]) VALUES (87, N'_section_row_2', N'Section tin hoạt động tuyển dụng', N'~/Views/Shared/_PartialView/_ViewContent/_DanhSach.cshtml', N'', N'', N'', 60, 1, 2, CAST(N'2024-04-15T09:31:00.760' AS DateTime), 2, CAST(N'2024-04-16T10:32:12.960' AS DateTime))
INSERT [dbo].[TB_View] ([ID], [TenView], [MoTa], [DuongDan], [Area], [Controller], [Action], [ViewCapChaID], [SuDung], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat]) VALUES (88, N'_section_sidebar_1', N'Section hoạt động đoàn thể', N'~/Views/Shared/_PartialView/_ViewContent/_DanhSach.cshtml', N'', N'', N'', 89, 1, 2, CAST(N'2024-04-15T13:45:48.363' AS DateTime), 2, CAST(N'2024-04-16T10:15:39.280' AS DateTime))
INSERT [dbo].[TB_View] ([ID], [TenView], [MoTa], [DuongDan], [Area], [Controller], [Action], [ViewCapChaID], [SuDung], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat]) VALUES (89, N'Layout_Detail', N'Trang chi tiết tin tức', N'~/Views/BaiViet/TinTuc/ChiTiet.cshtml', N'', N'BaiViet', N'ChiTietBaiViet', 12, 1, 2, CAST(N'2024-04-15T13:48:02.387' AS DateTime), 2, CAST(N'2024-04-16T16:46:55.367' AS DateTime))
INSERT [dbo].[TB_View] ([ID], [TenView], [MoTa], [DuongDan], [Area], [Controller], [Action], [ViewCapChaID], [SuDung], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat]) VALUES (90, N'_section_bottom', N'Section bài viết khác thuộc tin tức', N'~/Views/Shared/_PartialView/_ViewContent/_DanhSach.cshtml', N'', N'', N'', 89, 1, 2, CAST(N'2024-04-15T14:13:39.463' AS DateTime), 2, CAST(N'2024-04-16T10:15:59.347' AS DateTime))
INSERT [dbo].[TB_View] ([ID], [TenView], [MoTa], [DuongDan], [Area], [Controller], [Action], [ViewCapChaID], [SuDung], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat]) VALUES (91, N'_section_sidebar_2', N'Section tin chuyên ngành thuộc chi tiết', N'~/Views/Shared/_PartialView/_ViewContent/_DanhSach.cshtml', N'', N'', N'', 89, 1, 2, CAST(N'2024-04-15T14:15:06.787' AS DateTime), 2, CAST(N'2024-04-16T10:16:21.970' AS DateTime))
INSERT [dbo].[TB_View] ([ID], [TenView], [MoTa], [DuongDan], [Area], [Controller], [Action], [ViewCapChaID], [SuDung], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat]) VALUES (92, N'_section_main_detail_content', N'Section chi tiết bài viết tin tức', N'~/Views/Shared/_PartialView/_ViewContent/_ChiTiet.cshtml', N'', N'', N'', 89, 1, 2, CAST(N'2024-04-15T14:57:31.297' AS DateTime), 2, CAST(N'2024-04-16T16:47:31.007' AS DateTime))
INSERT [dbo].[TB_View] ([ID], [TenView], [MoTa], [DuongDan], [Area], [Controller], [Action], [ViewCapChaID], [SuDung], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat]) VALUES (93, N'Layout_Detail', N'Trang chi tiết sản phẩm', N'~/Views/BaiViet/SanPham/ChiTiet.cshtml', N'', N'BaiViet', N'ChiTietBaiViet', 5, 1, 2, CAST(N'2024-04-15T16:28:12.953' AS DateTime), 2, CAST(N'2024-04-16T16:46:32.690' AS DateTime))
INSERT [dbo].[TB_View] ([ID], [TenView], [MoTa], [DuongDan], [Area], [Controller], [Action], [ViewCapChaID], [SuDung], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat]) VALUES (94, N'_section_bottom', N'Section sản phẩm khác', N'~/Views/Shared/_PartialView/_ViewContent/_DanhSach.cshtml', N'', N'', N'', 93, 1, 2, CAST(N'2024-04-15T16:33:37.467' AS DateTime), 2, CAST(N'2024-04-16T09:43:05.163' AS DateTime))
INSERT [dbo].[TB_View] ([ID], [TenView], [MoTa], [DuongDan], [Area], [Controller], [Action], [ViewCapChaID], [SuDung], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat]) VALUES (99, N'_section_main_detail_content', N'Section chi tiết bài viết sản phẩm', N'~/Views/Shared/_PartialView/_ViewContent/_ChiTiet.cshtml', N'', N'', N'', 93, 1, 2, CAST(N'2024-04-16T15:30:34.400' AS DateTime), 2, CAST(N'2024-04-16T15:31:38.770' AS DateTime))
INSERT [dbo].[TB_View] ([ID], [TenView], [MoTa], [DuongDan], [Area], [Controller], [Action], [ViewCapChaID], [SuDung], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat]) VALUES (101, N'_section_sidebar', N'Thư mời, ý kiến khách hàng, liên hệ chúng tôi', N'~/Views/Shared/_PartialView/_ViewContent/_DanhSach.cshtml', N'', N'', N'', 10, 1, 2, CAST(N'2024-04-16T15:38:23.420' AS DateTime), 2, CAST(N'2024-07-02T09:42:24.853' AS DateTime))
INSERT [dbo].[TB_View] ([ID], [TenView], [MoTa], [DuongDan], [Area], [Controller], [Action], [ViewCapChaID], [SuDung], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat]) VALUES (102, N'_section_open_letter', N'Thư mời', N'~/Views/Shared/_PartialView/_ViewContent/_DanhSach.cshtml', N'', N'', N'', 101, 1, 2, CAST(N'2024-04-16T15:38:47.463' AS DateTime), 2, CAST(N'2024-04-19T09:08:59.370' AS DateTime))
INSERT [dbo].[TB_View] ([ID], [TenView], [MoTa], [DuongDan], [Area], [Controller], [Action], [ViewCapChaID], [SuDung], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat]) VALUES (103, N'_section_list_feedback', N'Ý kiến khách hàng', N'~/Views/Shared/_PartialView/_ViewContent/_DanhSach.cshtml', N'', N'', N'', 101, 1, 2, CAST(N'2024-04-16T15:39:32.703' AS DateTime), 2, CAST(N'2024-04-19T09:08:54.233' AS DateTime))
INSERT [dbo].[TB_View] ([ID], [TenView], [MoTa], [DuongDan], [Area], [Controller], [Action], [ViewCapChaID], [SuDung], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat]) VALUES (104, N'_section_feedback', N'Liên hệ chúng tôi', N'~/Views/Shared/_PartialView/_ViewContent/_DanhSach.cshtml', N'', N'', N'', 101, 1, 2, CAST(N'2024-04-16T15:39:59.570' AS DateTime), 2, CAST(N'2024-04-19T09:08:48.967' AS DateTime))
INSERT [dbo].[TB_View] ([ID], [TenView], [MoTa], [DuongDan], [Area], [Controller], [Action], [ViewCapChaID], [SuDung], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat]) VALUES (105, N'Layout_Detail', N'Trang chi tiết dịch vụ', N'~/Views/BaiViet/DichVu/ChiTiet.cshtml', N'', N'BaiViet', N'ChiTietBaiViet', 10, 1, 2, CAST(N'2024-04-16T16:30:04.540' AS DateTime), 2, CAST(N'2024-04-16T16:30:22.377' AS DateTime))
INSERT [dbo].[TB_View] ([ID], [TenView], [MoTa], [DuongDan], [Area], [Controller], [Action], [ViewCapChaID], [SuDung], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat]) VALUES (106, N'_section_main_detail_content', N'Section chi tiết bài viết dịch vụ', N'~/Views/Shared/_PartialView/_ViewContent/_ChiTiet.cshtml', N'', N'', N'', 105, 1, 2, CAST(N'2024-04-16T16:31:05.180' AS DateTime), 2, CAST(N'2024-04-16T16:31:21.733' AS DateTime))
INSERT [dbo].[TB_View] ([ID], [TenView], [MoTa], [DuongDan], [Area], [Controller], [Action], [ViewCapChaID], [SuDung], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat]) VALUES (107, N'Layout_Detail', N'Trang chi tiết blog', N'~/Views/BaiViet/Blog/ChiTiet.cshtml', N'', N'BaiViet', N'ChiTietBaiViet', 53, 1, 2, CAST(N'2024-04-16T16:56:18.500' AS DateTime), 2, CAST(N'2024-04-16T17:37:31.593' AS DateTime))
INSERT [dbo].[TB_View] ([ID], [TenView], [MoTa], [DuongDan], [Area], [Controller], [Action], [ViewCapChaID], [SuDung], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat]) VALUES (108, N'_section_main_detail_content', N'Section chi tiết hỏi đáp', N'~/Views/Shared/_PartialView/_ViewContent/_ChiTiet.cshtml', N'', N'', N'', 107, 1, 2, CAST(N'2024-04-16T16:57:04.863' AS DateTime), 2, CAST(N'2024-04-17T17:11:14.400' AS DateTime))
INSERT [dbo].[TB_View] ([ID], [TenView], [MoTa], [DuongDan], [Area], [Controller], [Action], [ViewCapChaID], [SuDung], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat]) VALUES (109, N'_section_sidebar_1', N'Section chuyên mục', N'~/Views/Shared/_PartialView/_ViewContent/_DanhSach.cshtml', N'', N'', N'', 107, 1, 2, CAST(N'2024-04-16T16:57:49.753' AS DateTime), 2, CAST(N'2024-04-16T16:59:59.903' AS DateTime))
INSERT [dbo].[TB_View] ([ID], [TenView], [MoTa], [DuongDan], [Area], [Controller], [Action], [ViewCapChaID], [SuDung], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat]) VALUES (110, N'_section_sidebar_2', N'Section bài đọc nhiều nhất', N'~/Views/Shared/_PartialView/_ViewContent/_DanhSach.cshtml', N'', N'', N'', 107, 1, 2, CAST(N'2024-04-16T16:58:10.657' AS DateTime), 2, CAST(N'2024-04-16T17:00:10.147' AS DateTime))
INSERT [dbo].[TB_View] ([ID], [TenView], [MoTa], [DuongDan], [Area], [Controller], [Action], [ViewCapChaID], [SuDung], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat]) VALUES (111, N'_section_bottom', N'Section bài viết khác thuộc blog', N'~/Views/Shared/_PartialView/_ViewContent/_DanhSach.cshtml', N'', N'', N'', 107, 1, 2, CAST(N'2024-04-16T16:59:33.920' AS DateTime), 2, CAST(N'2024-04-16T17:00:23.600' AS DateTime))
INSERT [dbo].[TB_View] ([ID], [TenView], [MoTa], [DuongDan], [Area], [Controller], [Action], [ViewCapChaID], [SuDung], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat]) VALUES (112, N'Layout_Detail', N'Trang chi tiết tuyển dụng', N'~/Views/BaiViet/TuyenDung/ChiTiet.cshtml', N'', N'BaiViet', N'ChiTietBaiViet', 60, 1, 2, CAST(N'2024-04-16T17:33:05.180' AS DateTime), 2, CAST(N'2024-04-16T17:33:19.080' AS DateTime))
INSERT [dbo].[TB_View] ([ID], [TenView], [MoTa], [DuongDan], [Area], [Controller], [Action], [ViewCapChaID], [SuDung], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat]) VALUES (114, N'_section_main_detail_content', N'Section chi tiết bài viết tuyển dụng', N'~/Views/Shared/_PartialView/_ViewContent/_ChiTiet.cshtml', N'', N'', N'', 112, 1, 2, CAST(N'2024-04-16T17:34:17.150' AS DateTime), 2, CAST(N'2024-04-16T17:36:13.670' AS DateTime))
INSERT [dbo].[TB_View] ([ID], [TenView], [MoTa], [DuongDan], [Area], [Controller], [Action], [ViewCapChaID], [SuDung], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat]) VALUES (115, N'_section_sidebar_1', N'Section chuyên mục', N'~/Views/Shared/_PartialView/_ViewContent/_DanhSach.cshtml', N'', N'', N'', 112, 1, 2, CAST(N'2024-04-16T17:34:33.977' AS DateTime), 2, CAST(N'2024-04-16T17:36:23.520' AS DateTime))
INSERT [dbo].[TB_View] ([ID], [TenView], [MoTa], [DuongDan], [Area], [Controller], [Action], [ViewCapChaID], [SuDung], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat]) VALUES (116, N'_section_sidebar_2', N'Section bài đọc nhiều nhất', N'~/Views/Shared/_PartialView/_ViewContent/_DanhSach.cshtml', N'', N'', N'', 112, 1, 2, CAST(N'2024-04-16T17:35:50.050' AS DateTime), 2, CAST(N'2024-04-16T17:36:36.103' AS DateTime))
INSERT [dbo].[TB_View] ([ID], [TenView], [MoTa], [DuongDan], [Area], [Controller], [Action], [ViewCapChaID], [SuDung], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat]) VALUES (117, N'_section_bottom', N'Section bài viết khác thuộc tuyển dụng', N'~/Views/Shared/_PartialView/_ViewContent/_DanhSach.cshtml', N'', N'', N'', 112, 1, 2, CAST(N'2024-04-16T17:36:00.537' AS DateTime), 2, CAST(N'2024-04-16T17:36:51.420' AS DateTime))
INSERT [dbo].[TB_View] ([ID], [TenView], [MoTa], [DuongDan], [Area], [Controller], [Action], [ViewCapChaID], [SuDung], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat]) VALUES (118, N'_section_content_tab_1', N'Section tổng quan', N'~/Views/Shared/_PartialView/_ViewContent/_ChiTiet.cshtml', N'', N'', N'', 55, 1, 2, CAST(N'2024-04-17T10:21:16.970' AS DateTime), NULL, NULL)
INSERT [dbo].[TB_View] ([ID], [TenView], [MoTa], [DuongDan], [Area], [Controller], [Action], [ViewCapChaID], [SuDung], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat]) VALUES (119, N'_section_content_tab_2', N'Section khách hàng đối tác', N'~/Views/Shared/_PartialView/_ViewContent/_ChiTiet.cshtml', N'', N'', N'', 55, 1, 2, CAST(N'2024-04-17T10:46:07.350' AS DateTime), NULL, NULL)
INSERT [dbo].[TB_View] ([ID], [TenView], [MoTa], [DuongDan], [Area], [Controller], [Action], [ViewCapChaID], [SuDung], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat]) VALUES (120, N'_section_content_tab_3', N'Section giải thưởng', N'~/Views/Shared/_PartialView/_ViewContent/_ChiTiet.cshtml', N'', N'', N'', 55, 1, 2, CAST(N'2024-04-17T10:47:22.003' AS DateTime), NULL, NULL)
INSERT [dbo].[TB_View] ([ID], [TenView], [MoTa], [DuongDan], [Area], [Controller], [Action], [ViewCapChaID], [SuDung], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat]) VALUES (121, N'_section_content_tab_4', N'Section dự án tiêu biểu', N'~/Views/Shared/_PartialView/_ViewContent/_ChiTiet.cshtml', N'', N'', N'', 55, 1, 2, CAST(N'2024-04-17T10:47:39.593' AS DateTime), NULL, NULL)
INSERT [dbo].[TB_View] ([ID], [TenView], [MoTa], [DuongDan], [Area], [Controller], [Action], [ViewCapChaID], [SuDung], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat]) VALUES (122, N'Layout_8', N'Trang hỏi đáp', N'~/Views/BaiViet/Blog/Blog.cshtml', N'', N'BaiViet', N'DanhSachBaiViet', NULL, 1, 2, CAST(N'2024-04-17T16:25:43.500' AS DateTime), NULL, NULL)
INSERT [dbo].[TB_View] ([ID], [TenView], [MoTa], [DuongDan], [Area], [Controller], [Action], [ViewCapChaID], [SuDung], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat]) VALUES (123, N'_section_sidebar_3', N'Hỏi đáp', N'~/Views/Shared/_PartialView/_ViewContent/_DanhSach.cshtml', N'', N'', N'', 122, 1, 2, CAST(N'2024-04-17T16:25:43.613' AS DateTime), 2, CAST(N'2024-04-19T07:55:54.627' AS DateTime))
INSERT [dbo].[TB_View] ([ID], [TenView], [MoTa], [DuongDan], [Area], [Controller], [Action], [ViewCapChaID], [SuDung], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat]) VALUES (124, N'_section_main_contents', N'Section danh sách hỏi đáp', N'~/Views/Shared/_PartialView/_ViewContent/_DanhSach.cshtml', N'', N'', N'', 122, 1, 2, CAST(N'2024-04-17T16:25:43.760' AS DateTime), 2, CAST(N'2024-04-17T17:11:00.230' AS DateTime))
INSERT [dbo].[TB_View] ([ID], [TenView], [MoTa], [DuongDan], [Area], [Controller], [Action], [ViewCapChaID], [SuDung], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat]) VALUES (125, N'_section_row_1', N'Section danh sách chuyên mục', N'~/Views/Shared/_PartialView/_ViewContent/_DanhSach.cshtml', N'', N'', N'', 122, 1, 2, CAST(N'2024-04-17T16:25:43.897' AS DateTime), 2, CAST(N'2024-04-19T13:59:25.737' AS DateTime))
INSERT [dbo].[TB_View] ([ID], [TenView], [MoTa], [DuongDan], [Area], [Controller], [Action], [ViewCapChaID], [SuDung], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat]) VALUES (126, N'_section_row_2', N'Section đọc nhiều nhất', N'~/Views/Shared/_PartialView/_ViewContent/_DanhSach.cshtml', N'', N'', N'', 122, 0, 2, CAST(N'2024-04-17T16:25:43.957' AS DateTime), 2, CAST(N'2024-04-19T13:36:09.070' AS DateTime))
INSERT [dbo].[TB_View] ([ID], [TenView], [MoTa], [DuongDan], [Area], [Controller], [Action], [ViewCapChaID], [SuDung], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat]) VALUES (127, N'_section_bottom', N'Section bài viết khác', N'~/Views/Shared/_PartialView/_ViewContent/_DanhSach.cshtml', N'', N'', N'', 122, 0, 2, CAST(N'2024-04-17T16:25:44.007' AS DateTime), 2, CAST(N'2024-04-19T13:36:20.770' AS DateTime))
INSERT [dbo].[TB_View] ([ID], [TenView], [MoTa], [DuongDan], [Area], [Controller], [Action], [ViewCapChaID], [SuDung], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat]) VALUES (135, N'_section_banner', N'Section banner trang chủ', N'~/Views/Shared/_PartialView/_ViewContent/_DanhSach.cshtml', N'', N'', N'', 1, 1, 2, CAST(N'2024-04-19T08:41:32.693' AS DateTime), NULL, NULL)
INSERT [dbo].[TB_View] ([ID], [TenView], [MoTa], [DuongDan], [Area], [Controller], [Action], [ViewCapChaID], [SuDung], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat]) VALUES (149, N'Layout_List', N'Trang danh sách chuyên mục', N'~/Views/BaiViet/TinTuc/DanhSach.cshtml', N'', N'BaiViet', N'DanhSachBaiViet', 12, 1, 2, CAST(N'2024-04-19T09:56:02.407' AS DateTime), 2, CAST(N'2024-08-02T10:34:03.643' AS DateTime))
INSERT [dbo].[TB_View] ([ID], [TenView], [MoTa], [DuongDan], [Area], [Controller], [Action], [ViewCapChaID], [SuDung], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat]) VALUES (150, N'_section_sidebar_1', N'Section chuyên mục khác', N'~/Views/Shared/_PartialView/_ViewContent/_DanhSach.cshtml', N'', N'', N'', 149, 1, 2, CAST(N'2024-04-19T09:56:02.480' AS DateTime), 2, CAST(N'2024-04-19T11:03:11.043' AS DateTime))
INSERT [dbo].[TB_View] ([ID], [TenView], [MoTa], [DuongDan], [Area], [Controller], [Action], [ViewCapChaID], [SuDung], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat]) VALUES (151, N'_section_bottom', N'Section bài viết khác thuộc tin tức', N'~/Views/Shared/_PartialView/_ViewContent/_DanhSach.cshtml', N'', N'', N'', 149, 0, 2, CAST(N'2024-04-19T09:56:02.623' AS DateTime), 2, CAST(N'2024-04-19T11:03:38.693' AS DateTime))
INSERT [dbo].[TB_View] ([ID], [TenView], [MoTa], [DuongDan], [Area], [Controller], [Action], [ViewCapChaID], [SuDung], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat]) VALUES (152, N'_section_sidebar_2', N'Section bài đọc nổi bật', N'~/Views/Shared/_PartialView/_ViewContent/_DanhSach.cshtml', N'', N'', N'', 149, 1, 2, CAST(N'2024-04-19T09:56:02.677' AS DateTime), 2, CAST(N'2024-04-19T11:04:05.907' AS DateTime))
INSERT [dbo].[TB_View] ([ID], [TenView], [MoTa], [DuongDan], [Area], [Controller], [Action], [ViewCapChaID], [SuDung], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat]) VALUES (153, N'_section_list_content', N'Section danh sách bài viết thuộc chuyên mục', N'~/Views/Shared/_PartialView/_ViewContent/_DanhSach.cshtml', N'', N'', N'', 149, 1, 2, CAST(N'2024-04-19T09:56:02.720' AS DateTime), 2, CAST(N'2024-04-19T09:58:29.460' AS DateTime))
INSERT [dbo].[TB_View] ([ID], [TenView], [MoTa], [DuongDan], [Area], [Controller], [Action], [ViewCapChaID], [SuDung], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat]) VALUES (159, N'Layout_Detail', N'Trang chi tiết hỏi đáp', N'~/Views/BaiViet/Blog/ChiTiet.cshtml', N'', N'BaiViet', N'ChiTietBaiViet', 122, 1, 2, CAST(N'2024-04-19T13:48:55.593' AS DateTime), 2, CAST(N'2024-06-20T09:17:07.870' AS DateTime))
INSERT [dbo].[TB_View] ([ID], [TenView], [MoTa], [DuongDan], [Area], [Controller], [Action], [ViewCapChaID], [SuDung], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat]) VALUES (160, N'_section_main_detail_content', N'Section chi tiết hỏi đáp', N'~/Views/Shared/_PartialView/_ViewContent/_ChiTiet.cshtml', N'', N'', N'', 159, 1, 2, CAST(N'2024-04-19T13:48:55.707' AS DateTime), 2, CAST(N'2024-04-19T13:49:26.260' AS DateTime))
INSERT [dbo].[TB_View] ([ID], [TenView], [MoTa], [DuongDan], [Area], [Controller], [Action], [ViewCapChaID], [SuDung], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat]) VALUES (161, N'_section_sidebar_1', N'Section chuyên mục', N'~/Views/Shared/_PartialView/_ViewContent/_DanhSach.cshtml', N'', N'', N'', 159, 1, 2, CAST(N'2024-04-19T13:48:55.867' AS DateTime), NULL, NULL)
INSERT [dbo].[TB_View] ([ID], [TenView], [MoTa], [DuongDan], [Area], [Controller], [Action], [ViewCapChaID], [SuDung], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat]) VALUES (163, N'_section_bottom', N'Section bài viết khác thuộc tuyển dụng', N'~/Views/Shared/_PartialView/_ViewContent/_DanhSach.cshtml', N'', N'', N'', 159, 1, 2, CAST(N'2024-04-19T13:48:55.980' AS DateTime), NULL, NULL)
INSERT [dbo].[TB_View] ([ID], [TenView], [MoTa], [DuongDan], [Area], [Controller], [Action], [ViewCapChaID], [SuDung], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat]) VALUES (165, N'_section_banner', N'Section banner sản phẩm', N'~/Views/Shared/_PartialView/_ViewContent/_DanhSach.cshtml', N'', N'', N'', 5, 1, 2, CAST(N'2024-06-26T16:36:38.303' AS DateTime), 2, CAST(N'2024-06-26T17:04:11.860' AS DateTime))
SET IDENTITY_INSERT [dbo].[TB_View] OFF
GO
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (1, 1)
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (1, 2)
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (1, 5)
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (2, 1)
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (2, 2)
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (10023, 4)
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (10025, 3)
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([Id], [DisplayName], [Bio], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [OrgUniqueCode]) VALUES (1, N'kdc', NULL, N'kdc', N'KDC', N'kdc@email.com44', N'KDC@EMAIL.COM44', 0, N'AQAAAAIAAYagAAAAELCkQZskTi6+Uf2ukCzgRSlbfUQLtrUz9jmKfJHDZibt9NgFoJIv17IM/kZwRljZ7g==', N'3DLEXHTUKVKLPZ3OYMMS5L4DVM4THEP5', N'451bdd81-0efc-483e-92dd-1ebc26d0b09d', NULL, 0, 0, CAST(N'9999-12-31T00:00:00.0000000+00:00' AS DateTimeOffset), 0, 0, N'000.00.59.H57')
INSERT [dbo].[Users] ([Id], [DisplayName], [Bio], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [OrgUniqueCode]) VALUES (2, N'host', NULL, N'host', N'HOST', N'host@email.com', N'HOST@EMAIL.COM', 0, N'AQAAAAIAAYagAAAAELRqzeb6Fmxb/wI+rDbNsc+D0hntWNfCSXmkrCuwXk0UiKvGp5jSZnHelukhIekFUg==', N'CG5KART5KQGZLXFIXIPOT3VSGNY5G6WH', N'228606d3-8905-4ed8-b64e-be0dbbc52bd7', NULL, 0, 0, CAST(N'9999-12-31T00:00:00.0000000+00:00' AS DateTimeOffset), 0, 0, NULL)
INSERT [dbo].[Users] ([Id], [DisplayName], [Bio], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [OrgUniqueCode]) VALUES (10023, N'Biên tập viên', NULL, N'Editor', N'EDITOR', N'editor@gmail.com', N'EDITOR@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEOk0eWBolCrR0epHZhRX2rF+3yl5R53/3gLSqnvHrMDNJ63L8NqyqFwwu3FkTZb2mQ==', N'KBGTMHKLB3WXZXBCYOUV5THGQ3SY4T3O', N'd67e6f35-11ed-47b6-8e91-95061c5a51a8', NULL, 0, 0, CAST(N'9999-12-31T00:00:00.0000000+07:00' AS DateTimeOffset), 0, 0, NULL)
INSERT [dbo].[Users] ([Id], [DisplayName], [Bio], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [OrgUniqueCode]) VALUES (10025, N'Quản trị viên', NULL, N'Admin', N'ADMIN', N'admin@gmail.com', N'ADMIN@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEAf1aGXTsyqbqU0lmfYuVsFvGGKGW+O8ILV6aYJb0zjiUG9Rp2pzlTdM9PBjaHQ5TQ==', N'ZGVUCTJCLJ2XHHF5W2L3JGYB6CC3VIJJ', N'd6ef157d-a633-4e68-bbd2-fefbd772c112', NULL, 0, 0, CAST(N'9999-12-31T00:00:00.0000000+07:00' AS DateTimeOffset), 0, 0, NULL)
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
ALTER TABLE [dbo].[TB_BaiViet] ADD  CONSTRAINT [DF_QLTT_TinBai_ID]  DEFAULT (newid()) FOR [ID]
GO
ALTER TABLE [dbo].[TB_ChuyenMuc] ADD  CONSTRAINT [DF_QLTT_ChuyenMuc_ID]  DEFAULT (newid()) FOR [ID]
GO
ALTER TABLE [dbo].[Permission_Category]  WITH CHECK ADD  CONSTRAINT [FK_Permission_Category_QLTT_ChuyenMuc] FOREIGN KEY([ChuyenMucID])
REFERENCES [dbo].[TB_ChuyenMuc] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Permission_Category] CHECK CONSTRAINT [FK_Permission_Category_QLTT_ChuyenMuc]
GO
ALTER TABLE [dbo].[Permission_Category]  WITH CHECK ADD  CONSTRAINT [FK_Permission_Category_Users] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Permission_Category] CHECK CONSTRAINT [FK_Permission_Category_Users]
GO
ALTER TABLE [dbo].[Permission_Menu]  WITH CHECK ADD  CONSTRAINT [FK_Permission_AdminMenu] FOREIGN KEY([MenuID])
REFERENCES [dbo].[TB_AdminMenu] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Permission_Menu] CHECK CONSTRAINT [FK_Permission_AdminMenu]
GO
ALTER TABLE [dbo].[RoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_RoleClaims_Roles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Roles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[RoleClaims] CHECK CONSTRAINT [FK_RoleClaims_Roles_RoleId]
GO
ALTER TABLE [dbo].[TB_BaiViet]  WITH CHECK ADD  CONSTRAINT [FK_QLTT_TinBai_QLTT_ChuyenMuc] FOREIGN KEY([ChuyenMucID])
REFERENCES [dbo].[TB_ChuyenMuc] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TB_BaiViet] CHECK CONSTRAINT [FK_QLTT_TinBai_QLTT_ChuyenMuc]
GO
ALTER TABLE [dbo].[TB_Media]  WITH CHECK ADD  CONSTRAINT [FK_QLTT_Media_QLTT_TinBai] FOREIGN KEY([BaiVietID])
REFERENCES [dbo].[TB_BaiViet] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TB_Media] CHECK CONSTRAINT [FK_QLTT_Media_QLTT_TinBai]
GO
ALTER TABLE [dbo].[TB_TinLienQuan]  WITH CHECK ADD  CONSTRAINT [FK_TB_TinLienQuan_TB_BaiViet] FOREIGN KEY([BaiVietID])
REFERENCES [dbo].[TB_BaiViet] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TB_TinLienQuan] CHECK CONSTRAINT [FK_TB_TinLienQuan_TB_BaiViet]
GO
ALTER TABLE [dbo].[UserClaims]  WITH CHECK ADD  CONSTRAINT [FK_UserClaims_Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserClaims] CHECK CONSTRAINT [FK_UserClaims_Users_UserId]
GO
ALTER TABLE [dbo].[UserLogins]  WITH CHECK ADD  CONSTRAINT [FK_UserLogins_Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserLogins] CHECK CONSTRAINT [FK_UserLogins_Users_UserId]
GO
ALTER TABLE [dbo].[UserRoles]  WITH CHECK ADD  CONSTRAINT [FK_UserRoles_Roles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Roles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserRoles] CHECK CONSTRAINT [FK_UserRoles_Roles_RoleId]
GO
ALTER TABLE [dbo].[UserRoles]  WITH CHECK ADD  CONSTRAINT [FK_UserRoles_Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserRoles] CHECK CONSTRAINT [FK_UserRoles_Users_UserId]
GO
ALTER TABLE [dbo].[UserTokens]  WITH CHECK ADD  CONSTRAINT [FK_UserTokens_Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserTokens] CHECK CONSTRAINT [FK_UserTokens_Users_UserId]
GO
/****** Object:  StoredProcedure [dbo].[spu_ChuyenMuc_GetChuyenMucChild]    Script Date: 5/7/2025 7:30:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spu_ChuyenMuc_GetChuyenMucChild]  --'94F2B4CE-4E63-40E5-BAB6-02C662DB6978'
	@parentID uniqueidentifier,
	@flag int = 1
AS
BEGIN
	IF(@flag = 0)
		BEGIN
			WITH TreeCategoryById(ID, TenChuyenMuc, Cap, ChuyenMucCapChaID, URLChuyenMuc, ThuTuHienThi, isMenu, LoaiLienKet, DiaChiLienKet, MoLienKetOCuaSoMoi)
			as (
					Select ID, TenChuyenMuc, 0 as aLevel, ChuyenMucCapChaID, URLChuyenMuc, ThuTuHienThi, IsMenu, LoaiLienKet, DiaChiLienKet, MoLienKetOCuaSoMoi
					From TB_ChuyenMuc
					Where ChuyenMucCapChaID is null And SuDung = 1
					Union All
					Select b.ID, b.TenChuyenMuc, a.Cap+1, b.ChuyenMucCapChaID, b.URLChuyenMuc, b.ThuTuHienThi, b.IsMenu, b.LoaiLienKet, b.DiaChiLienKet, b.MoLienKetOCuaSoMoi
					From TB_ChuyenMuc as b JOIN TreeCategoryById as a ON b.ChuyenMucCapChaID = a.ID
					Where a.ID = b.ChuyenMucCapChaID
			)
			Select *
			From TreeCategoryById
			Order by ThuTuHienThi
		END
	ELSE
		BEGIN
			WITH TreeCategoryById(ID, TenChuyenMuc, Cap, ChuyenMucCapChaID, URLChuyenMuc)
			as (
					Select ID, TenChuyenMuc, 0 as aLevel, ChuyenMucCapChaID, URLChuyenMuc
					From TB_ChuyenMuc
					Where ID = @parentID And SuDung = 1
					Union All
					Select b.ID, b.TenChuyenMuc, a.Cap+1, b.ChuyenMucCapChaID, b.URLChuyenMuc
					From TB_ChuyenMuc as b JOIN TreeCategoryById as a ON b.ChuyenMucCapChaID = a.ID
					Where a.ID = b.ChuyenMucCapChaID
			)
			Select *
			From TreeCategoryById
		END
	
END

GO
/****** Object:  StoredProcedure [dbo].[spu_FAQ_YKien_Add]    Script Date: 5/7/2025 7:30:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spu_FAQ_YKien_Add]
    @ChuyenMucID uniqueidentifier = null
	,@BaiVietID uniqueidentifier = null
    ,@NguoiGui nvarchar(250) = null
	,@DienThoai varchar(100) = null
	,@Email varchar(100) = null
	,@NoiDung nvarchar(4000) = null
    ,@NguoiTaoLapId bigint = null
    ,@DanhDau varchar(50) = null
	,@TepDinhKem nvarchar(1000) = null
	,@Loai tinyint = null ---0: feedback, 1: FAQ
AS
BEGIN
	SET NOCOUNT ON;

    INSERT INTO [dbo].[FAQ_YKien]
           ([ID]
		   ,[ChuyenMucID]
		   ,[BaiVietID]
		   ,[NguoiGui]
		   ,[DienThoai]
		   ,[Email]
		   ,[NoiDung]
		   ,[TrangThai]
		   ,[NguoiTaoLapId]
		   ,[NgayTaoLap]
		   ,[DanhDau]
		   ,[TepDinhKem]
		   ,[Loai])
	 OUTPUT inserted.*
     VALUES
           (NEWID()
		   ,CAST(@ChuyenMucID AS uniqueidentifier)
		   ,@BaiVietID
		   ,@NguoiGui
		   ,@DienThoai
           ,@Email
           ,@NoiDung
		   ,0
		   ,@NguoiTaoLapId
		   ,GETDATE()
           ,@DanhDau
		   ,@TepDinhKem
		   ,@Loai)
END
GO
/****** Object:  StoredProcedure [dbo].[spu_FAQ_YKien_Delete]    Script Date: 5/7/2025 7:30:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[spu_FAQ_YKien_Delete]
	@ID uniqueidentifier = null
AS
BEGIN
	SET NOCOUNT ON;

	IF EXISTS(SELECT * FROM [dbo].[FAQ_YKien] WHERE [ID] = @ID)
	BEGIN
		DELETE FROM [dbo].[FAQ_YKien] WHERE ID = @ID
	END
END
GO
/****** Object:  StoredProcedure [dbo].[spu_FAQ_YKien_Edit]    Script Date: 5/7/2025 7:30:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[spu_FAQ_YKien_Edit]
	@ID uniqueidentifier = null
	,@NoiDungTraLoi nvarchar(4000) = null
	,@TrangThai int = -1 ---0: đã tiếp nhận, 1: đã phản hồi/đã trả lời, 2: công bố, 3: hủy công bố
    ,@NguoiChinhSuaId bigint = null
	,@DanhDau varchar(50) = null
	,@NgayTraLoi datetime = null
	,@CoQuanTraLoi nvarchar(250) = null
	,@Loai tinyint = null ---0: feedback, 1: FAQ
AS
BEGIN
	SET NOCOUNT ON;

    UPDATE [dbo].[FAQ_YKien]
    SET [NoiDungTraLoi] = @NoiDungTraLoi
		,[TrangThai] = @TrangThai
		,[NguoiChinhSuaId] = @NguoiChinhSuaId
		,[NgayChinhSua] = GETDATE()
		,[DanhDau] = @DanhDau
		,[NgayTraLoi] = @NgayTraLoi
		,[CoQuanTraLoi] = @CoQuanTraLoi
		,[Loai] = @Loai
	WHERE [ID] = @ID
END
GO
/****** Object:  StoredProcedure [dbo].[spu_FAQ_YKien_Gets]    Script Date: 5/7/2025 7:30:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spu_FAQ_YKien_Gets]
	@Loai tinyint = 0, ---0: feedback, 1: FAQ
	@SoLuong int = 0,
	@TuKhoa nvarchar(1000) = NULL,
	@TrangThai INT = NULL,
	@BatDau VARCHAR(10) = NULL,
	@KetThuc VARCHAR(10) = NULL
AS
BEGIN
	SET NOCOUNT ON;

	IF(@SoLuong > 0)
	BEGIN
		SELECT TOP(@SoLuong) f.*,  (SELECT TenChuyenMuc FROM [dbo].[TB_ChuyenMucHoiDap] WHERE ID = f.ChuyenMucID) as TenChuyenMuc,
		(SELECT URLChuyenMuc FROM [dbo].[TB_ChuyenMucHoiDap] WHERE ID = f.ChuyenMucID) as URLChuyenMuc,
		(SELECT TieuDe FROM [dbo].[TB_BaiViet] WHERE ID = f.BaiVietID) as TenBaiViet,
		(SELECT URLBaiViet FROM [dbo].[TB_BaiViet] WHERE ID = f.BaiVietID) as URLBaiViet
		FROM [dbo].[FAQ_YKien] f
		WHERE (@TuKhoa IS NULL OR (f.[NguoiGui] LIKE '%' + @TuKhoa + '%' OR f.[DienThoai] LIKE '%' + @TuKhoa + '%' 
				OR f.[Email] LIKE '%' + @TuKhoa + '%' OR f.[NoiDung] LIKE '%' + @TuKhoa + '%'))
		AND f.[Loai] = @Loai
		AND (@TrangThai IS NULL OR @TrangThai = -1 OR f.[TrangThai] = @TrangThai)
		AND ((ISNULL(@BatDau, '')='' OR @BatDau <= CONVERT(VARCHAR(10), f.[NgayTaoLap], 23)) 
			AND (ISNULL(@KetThuc, '')='' OR @KetThuc >= CONVERT(VARCHAR(10), f.[NgayTaoLap], 23)))
		ORDER BY f.[NgayTaoLap] DESC
	END
	ELSE
	BEGIN
		SELECT f.*,  (SELECT TenChuyenMuc FROM [dbo].[TB_ChuyenMucHoiDap] WHERE ID = f.ChuyenMucID) as TenChuyenMuc,
		(SELECT URLChuyenMuc FROM [dbo].[TB_ChuyenMucHoiDap] WHERE ID = f.ChuyenMucID) as URLChuyenMuc,
		(SELECT TieuDe FROM [dbo].[TB_BaiViet] WHERE ID = f.BaiVietID) as TenBaiViet,
		(SELECT URLBaiViet FROM [dbo].[TB_BaiViet] WHERE ID = f.BaiVietID) as URLBaiViet
		FROM [dbo].[FAQ_YKien] f
		WHERE (@TuKhoa IS NULL OR (f.[NguoiGui] LIKE '%' + @TuKhoa + '%' OR f.[DienThoai] LIKE '%' + @TuKhoa + '%' 
				OR f.[Email] LIKE '%' + @TuKhoa + '%' OR f.[NoiDung] LIKE '%' + @TuKhoa + '%'))
		AND f.[Loai] = @Loai
		AND (@TrangThai IS NULL OR @TrangThai = -1 OR f.[TrangThai] = @TrangThai)
		AND ((ISNULL(@BatDau, '')='' OR @BatDau <= CONVERT(VARCHAR(10), f.[NgayTaoLap], 23)) 
			AND (ISNULL(@KetThuc, '')='' OR @KetThuc >= CONVERT(VARCHAR(10), f.[NgayTaoLap], 23)))
		ORDER BY f.[NgayTaoLap] DESC
	END
END
---exec spu_FAQ_YKien_Gets 1,0,null,-1
GO
/****** Object:  StoredProcedure [dbo].[spu_FAQ_YKien_Gets_Paging]    Script Date: 5/7/2025 7:30:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spu_FAQ_YKien_Gets_Paging]
	@Loai tinyint = 0, ---0: feedback, 1: FAQ
	@TrangThai int = -1, ---0: đã tiếp nhận, 1: đã phản hôi/đã trả lời, 2: công bố, 3: hủy công bố
	@BatDau VARCHAR(10) = NULL,
	@KetThuc VARCHAR(10) = NULL,
	@PageIndex int = 1,
	@PageSize int = 10
AS
BEGIN
	SET NOCOUNT ON;

	WITH Data_CTE 
			AS
			(
				SELECT f.*,  (SELECT TenChuyenMuc FROM [dbo].[TB_ChuyenMucHoiDap] WHERE ID = f.ChuyenMucID) as TenChuyenMuc,
				(SELECT TieuDe FROM [dbo].[TB_BaiViet] WHERE ID = f.BaiVietID) as TenBaiViet
				FROM [dbo].[FAQ_YKien] f
				WHERE f.[Loai] = @Loai
				AND (@TrangThai IS NULL OR @TrangThai = -1 OR f.[TrangThai] = @TrangThai)
				AND ((ISNULL(@BatDau, '')='' OR @BatDau <= CONVERT(VARCHAR(10), f.[NgayTaoLap], 23)) 
					AND (ISNULL(@KetThuc, '')='' OR @KetThuc >= CONVERT(VARCHAR(10), f.[NgayTaoLap], 23)))
			), 
			Count_CTE 
			AS 
			(
				SELECT COUNT(*) AS TotalRows FROM Data_CTE
			)

		SELECT * FROM Data_CTE
		CROSS JOIN Count_CTE
		ORDER BY [NgayTaoLap] DESC
		OFFSET (@PageIndex - 1) * @PageSize ROWS
		FETCH NEXT @PageSize ROWS ONLY
	
END
---exec spu_FAQ_Feedback_Gets_Paging 0
GO
/****** Object:  StoredProcedure [dbo].[spu_GetPermission_Category]    Script Date: 5/7/2025 7:30:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spu_GetPermission_Category] 
	@UserId bigint
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	SELECT * FROM Permission_Category WHERE UserID = @UserId
END
GO
/****** Object:  StoredProcedure [dbo].[spu_GetPermission_Menu]    Script Date: 5/7/2025 7:30:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spu_GetPermission_Menu] 
	-- Add the parameters for the stored procedure here
	@pAreaName varchar(50)='AdminTool',
	@pControllerName varchar(50)='BaiViet',
	@pActionName varchar(50)='Index',
	@pRoles varchar(100)='Host'
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select * from (
		select t1.*, t2.[value] as [Role] from TB_AdminMenu t1, STRING_SPLIT(@pRoles,',') t2
		where t1.AreaName=@pAreaName and t1.ControllerName=@pControllerName and t1.ActionName=@pActionName
	)mn
	left join Permission_Menu per
	on (per.MenuId=mn.Id and per.Rolename=mn.[Role])
	order by PermittedEdit desc
END
GO
/****** Object:  StoredProcedure [dbo].[spu_Permission_Category_Add]    Script Date: 5/7/2025 7:30:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spu_Permission_Category_Add]
	@UserId bigint,
	@ChuyenMucID uniqueidentifier,
	@Loai int,
	@ApDungChoCapCon bit
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO Permission_Category(UserID, ChuyenMucID, Loai, ApDungChoCapCon)
	OUTPUT inserted.*
	VALUES(@UserId, @ChuyenMucID, @Loai, @ApDungChoCapCon)
END
GO
/****** Object:  StoredProcedure [dbo].[spu_Permission_Category_Delete]    Script Date: 5/7/2025 7:30:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spu_Permission_Category_Delete]
	@ChuyenMucID uniqueidentifier
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    DELETE
	FROM Permission_Category
	WHERE ChuyenMucID = @ChuyenMucID
	
END
GO
/****** Object:  StoredProcedure [dbo].[spu_Permission_Category_GetByChuyenMucID]    Script Date: 5/7/2025 7:30:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spu_Permission_Category_GetByChuyenMucID]-- '350d9744-c21a-4259-8b04-56520aa4fa97'
	@ChuyenMucID uniqueidentifier
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    DECLARE @user1 nvarchar(max) = (SELECT STRING_AGG (UserID, ',') FROM Permission_Category WHERE ChuyenMucID = @ChuyenMucID AND Loai = 1)

	DECLARE @user2 nvarchar(max) = (SELECT STRING_AGG (UserID, ',') FROM Permission_Category WHERE ChuyenMucID = @ChuyenMucID AND Loai = 2)

	DECLARE @user3 nvarchar(max) = (SELECT STRING_AGG (UserID, ',') FROM Permission_Category WHERE ChuyenMucID = @ChuyenMucID AND Loai = 3)

	DECLARE @apDung bit = (SELECT ApDungChoCapCon FROM Permission_Category WHERE ChuyenMucID = @ChuyenMucID AND Loai IN (1,2,3) AND ApDungChoCapCon is not null GROUP BY ApDungChoCapCon)
	SELECT @user1 as User1, @user2 as User2, @user3 as User3, @apDung as ApDungChoCapCon
	
END
GO
/****** Object:  StoredProcedure [dbo].[spu_Permission_Menu_Add]    Script Date: 5/7/2025 7:30:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spu_Permission_Menu_Add] -- 'Editor', 24, 1,1,1,1
	@RoleName nvarchar(200),
	@MenuID tinyint,
	@PermittedEdit bit,
	@PermittedDelete bit,
	@PermittedApprove bit,
	@PermittedCreate bit
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    INSERT INTO Permission_Menu(RoleName, MenuID, PermittedEdit, PermittedDelete, PermittedApprove, PermittedCreate)
	OUTPUT inserted.*
	VALUES (@RoleName, @MenuID, @PermittedEdit, @PermittedDelete, @PermittedApprove, @PermittedCreate)

END

GO
/****** Object:  StoredProcedure [dbo].[spu_Permission_Menu_BatchUpdate]    Script Date: 5/7/2025 7:30:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>

CREATE PROCEDURE [dbo].[spu_Permission_Menu_BatchUpdate] 
	-- Add the parameters for the stored procedure here
	@pUpdateList varchar(2000)='53|1|0|1|0,121|1|1|1|0'
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	merge into Permission_Menu D
	using (
		select  case when isnull([1],'') = '' then '0' else [1] end as Permission_Menu
				, case when isnull([2],'') = '' then '0' else [2] end as PermittEdit
				, case when isnull([3],'') = '' then '0' else [3] end as PermittDelete
				, case when isnull([4],'') = '' then '0' else [4] end as PermittApprove
				, case when isnull([5],'') = '' then '0' else [5] end as PermittCreate
		from (
			select y.*, x.value as parentId
			from STRING_SPLIT(@pUpdateList, ',') as x
			cross apply
				 STRING_SPLIT(x.value, '|') y
			where y.value <> '' and x.value <> ''
		) t
		pivot (
			max(value) for value in ([1],[2],[3],[4],[5])
		) as pvtable
		where [1] is not null
	) S
	on D.Id=S.Permission_Menu
	when matched then update set D.PermittedEdit=S.PermittEdit,D.PermittedDelete=S.PermittDelete,D.PermittedApprove=S.PermittApprove,D.PermittedCreate=S.PermittCreate;

	select @@ROWCOUNT;
END
GO
/****** Object:  StoredProcedure [dbo].[spu_Permission_Menu_Delete]    Script Date: 5/7/2025 7:30:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spu_Permission_Menu_Delete]
	@pMenuId int,
	@pRoleName varchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	declare @vIsLeaf bit = 0;

	select @vIsLeaf=IsLeaf from TB_AdminMenu where Id=@pMenuId;
	if (@vIsLeaf=1)
	begin
		delete from Permission_Menu where MenuId=@pMenuId and Rolename=@pRoleName;
	end
	else
	begin
		delete from Permission_Menu where MenuId in (
			select Id from TB_AdminMenu where ParentId=@pMenuId
		)
		and Rolename=@pRoleName;
	end

	select @@ROWCOUNT;
END
GO
/****** Object:  StoredProcedure [dbo].[spu_TB_AdminMenu_Add]    Script Date: 5/7/2025 7:30:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spu_TB_AdminMenu_Add]
	@ParentId int,
	@AreaName varchar(50),
	@ControllerName varchar(50),
	@ActionName varchar(50),
	@Title nvarchar(50),
	@IsLeaf bit,
	@Icon varchar(100),
	@DisplayOrder int,
	@IsShow bit
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    INSERT INTO TB_AdminMenu (ParentID, AreaName, ControllerName, ActionName, Title, IsLeaf, IsShow, Icon, DisplayOrder)
	OUTPUT inserted.*
	VALUES(@ParentId, @AreaName, @ControllerName, @ActionName, @Title, @IsLeaf, @IsShow, @Icon, @DisplayOrder)	
END
GO
/****** Object:  StoredProcedure [dbo].[spu_TB_AdminMenu_Delete]    Script Date: 5/7/2025 7:30:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spu_TB_AdminMenu_Delete]
	@Id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    DELETE 
	FROM TB_AdminMenu
	WHERE ID = @Id
END
GO
/****** Object:  StoredProcedure [dbo].[spu_TB_AdminMenu_Edit]    Script Date: 5/7/2025 7:30:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spu_TB_AdminMenu_Edit]
	@ID int,
	@ParentId int,
	@AreaName varchar(50),
	@ControllerName varchar(50),
	@ActionName varchar(50),
	@Title nvarchar(50),
	@IsLeaf bit,
	@Icon varchar(100),
	@DisplayOrder int,
	@IsShow bit
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    UPDATE TB_AdminMenu 
	SET 
		ParentID = @ParentId,
		AreaName = @AreaName,
		ControllerName = @ControllerName,
		ActionName = @ActionName,
		Title = @Title,
		IsLeaf = @IsLeaf,
		IsShow = @IsShow,
		Icon = @Icon,
		DisplayOrder = @DisplayOrder
	OUTPUT inserted.*
	WHERE ID = @ID
	
END
GO
/****** Object:  StoredProcedure [dbo].[spu_TB_AdminMenu_GetByRole]    Script Date: 5/7/2025 7:30:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spu_TB_AdminMenu_GetByRole] 
	-- Add the parameters for the stored procedure here
	@pRole nvarchar(50)='Register'
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	declare @t_temp as table (
		Id int,
		ParentId int,
		Title nvarchar(50),
		IsLeaf bit,
		PermitedCreate bit,
		PermitedEdit bit,
		PermitedDelete bit,
		PermitedApprove bit,
		PermissionId int
	)

	insert into @t_temp
	select mn.Id, mn.ParentId, mn.Title, mn.IsLeaf, PermittedCreate, PermittedEdit, PermittedDelete, PermittedApprove, per.Id as PermissionId  from TB_AdminMenu mn
	inner join Permission_Menu per
	on (mn.Id=per.MenuId and per.Rolename=@pRole)

	select * from @t_temp
	union
	select Id, ParentId, Title, IsLeaf, null, null, null, null, null from TB_AdminMenu
	where Id in (
		select distinct ParentId from @t_temp
	)
END
GO
/****** Object:  StoredProcedure [dbo].[spu_TB_AdminMenu_GetMenuChild]    Script Date: 5/7/2025 7:30:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spu_TB_AdminMenu_GetMenuChild]
	@ParentId int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    SELECT * FROM TB_AdminMenu WHERE ParentID = @ParentId
END
GO
/****** Object:  StoredProcedure [dbo].[spu_TB_AdminMenu_GetPermissionMenuChild]    Script Date: 5/7/2025 7:30:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spu_TB_AdminMenu_GetPermissionMenuChild]
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here

	select STRING_AGG(p.MenuID, ',') as ListMenuID, p.RoleName 
	from TB_AdminMenu m join Permission_Menu p on m.ID = p.MenuID 
	where m.ParentID is not null AND m.ControllerName is not null AND m.ActionName is not null AND m.AreaName is not null 
	group by p.RoleName
END
GO
/****** Object:  StoredProcedure [dbo].[spu_TB_AdminMenu_Gets]    Script Date: 5/7/2025 7:30:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spu_TB_AdminMenu_Gets]
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * FROM TB_AdminMenu
END
GO
/****** Object:  StoredProcedure [dbo].[spu_TB_BaiViet_Add]    Script Date: 5/7/2025 7:30:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spu_TB_BaiViet_Add]
	@TieuDe nvarchar(250),
	@ChuyenMucID uniqueidentifier,
	@ChuyenMucKhacID varchar(500),
	@AnhDaiDien nvarchar(200),
	@Thumbnail nvarchar(250),
	@MoTaAnhDaiDien nvarchar(200),
	@TomTat nvarchar(500),
	@NoiDung ntext,
	@TieuDiem bit,
	@URLBaiViet	varchar(250),
	@NgayCongBo datetime,
	@HetHanCongBo datetime,
	@NguonTin nvarchar(250),
	@TacGia nvarchar(250),
	@TacQuyen nvarchar(250),
	@NgonNgu nvarchar(50),
	@TuKhoa nvarchar(250),
	@TrangThai int,
	@CreatedByUserID bigint,
	@DienThoai varchar(20),
	@Email varchar(100),
	@GioMoCua time(7),
	@GioDongCua time(7),
	@DiaChi nvarchar(200),
	@Website varchar(200),
	@ToaDoX float,
	@ToaDoY float

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT TB_BaiViet
		(TieuDe, 
		ChuyenMucID, 
		ChuyenMucKhacID, 
		AnhDaiDien, 
		Thumbnail,
		MoTaAnhDaiDien, 
		TomTat, 
		NoiDung, 
		TieuDiem,
		URLBaiViet,
		NgayCongBo,
		HetHanCongBo, 
		NguonTin, 
		TacGia, 
		TacQuyen,
		NgonNgu,
		LuotXem,
		TuKhoa,
		TrangThai, 
		CreatedOnDate, 
		CreatedByUserID,
		DienThoai,
		Email,
		GioMoCua,
		GioDongCua,
		DiaChi,
		Website,
		ToaDoX,
		ToaDoY)
	OUTPUT inserted.*
	VALUES(
		@TieuDe,
		@ChuyenMucID,
		@ChuyenMucKhacID,
		@AnhDaiDien,
		@Thumbnail,
		@MoTaAnhDaiDien,
		@TomTat,
		@NoiDung,
		@TieuDiem,
		@URLBaiViet,
		@NgayCongBo,
		@HetHanCongBo,
		@NguonTin,
		@TacGia,
		@TacQuyen,
		@NgonNgu,
		0,
		@TuKhoa,
		@TrangThai,
		GETDATE(),
		@CreatedByUserID,
		@DienThoai,
		@Email,
		@GioMoCua,
		@GioDongCua,
		@DiaChi,
		@Website,
		@ToaDoX,
		@ToaDoY)
END
GO
/****** Object:  StoredProcedure [dbo].[spu_TB_BaiViet_Delete]    Script Date: 5/7/2025 7:30:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spu_TB_BaiViet_Delete]
	@ID uniqueidentifier
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	DELETE FROM TB_BaiViet WHERE ID = @ID
END
GO
/****** Object:  StoredProcedure [dbo].[spu_TB_BaiViet_Delete_Img]    Script Date: 5/7/2025 7:30:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spu_TB_BaiViet_Delete_Img]
	  @ID varchar(40)
	 ,@Type int
AS
BEGIN
	SET NOCOUNT ON;
	 IF(@Type = 0)
	 BEGIN
		UPDATE [dbo].[TB_BaiViet]
		SET AnhDaiDien = NULL
		OUTPUT inserted.*
		WHERE ID = @ID
	 END
	 ELSE
	 BEGIN
		UPDATE [dbo].[TB_BaiViet]
		SET Thumbnail = NULL
		OUTPUT inserted.*
		WHERE ID = @ID
	 END
END

GO
/****** Object:  StoredProcedure [dbo].[spu_TB_BaiViet_Edit]    Script Date: 5/7/2025 7:30:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spu_TB_BaiViet_Edit]
	@ID uniqueidentifier,
	@TieuDe nvarchar(250),
	@ChuyenMucID uniqueidentifier,
	@ChuyenMucKhacID varchar(500),
	@AnhDaiDien nvarchar(200),
	@Thumbnail nvarchar(250),
	@MoTaAnhDaiDien nvarchar(200),
	@TomTat nvarchar(500),
	@NoiDung ntext,
	@TieuDiem bit,
	@URLBaiViet	varchar(250),
	@NgayCongBo datetime,
	@HetHanCongBo datetime,
	@NguonTin nvarchar(250),
	@TacGia nvarchar(250),
	@TacQuyen nvarchar(250),
	@TuKhoa nvarchar(200),
	@NgonNgu nvarchar(50),
	@TrangThai int,
	@LastModifiedByUserID bigint,
	@DienThoai varchar(20),
	@Email varchar(100),
	@GioMoCua time(7),
	@GioDongCua time(7),
	@DiaChi nvarchar(200),
	@Website varchar(200),
	@ToaDoX float,
	@ToaDoY float

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	UPDATE TB_BaiViet
	SET 
		TieuDe = @TieuDe, 
		ChuyenMucID = @ChuyenMucID, 
		ChuyenMucKhacID = @ChuyenMucKhacID, 
		AnhDaiDien = @AnhDaiDien, 
		Thumbnail = @Thumbnail,
		MoTaAnhDaiDien = @MoTaAnhDaiDien, 
		TomTat = @TomTat, 
		NoiDung = @NoiDung, 
		TieuDiem = @TieuDiem,
		URLBaiViet = @URLBaiViet,
		NgayCongBo = @NgayCongBo,
		HetHanCongBo = @HetHanCongBo, 
		NguonTin = @NguonTin, 
		TacGia = @TacGia, 
		TacQuyen = @TacQuyen,
		TuKhoa = @TuKhoa,
		NgonNgu = @NgonNgu, 
		TrangThai = @TrangThai, 
		LastModifiedOnDate = GETDATE(), 
		LastModifiedByUserID = @LastModifiedByUserID,
		DienThoai = @DienThoai,
		Email = @Email,
		GioMoCua = @GioMoCua,
		GioDongCua = @GioDongCua,
		DiaChi = @DiaChi,
		Website = @Website,
		ToaDoX = @ToaDoX,
		ToaDoY = @ToaDoY
	OUTPUT inserted.*
	WHERE ID = @ID
END
GO
/****** Object:  StoredProcedure [dbo].[spu_TB_BaiViet_GanDay]    Script Date: 5/7/2025 7:30:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<HanhND>
-- Create date: <Create Date,,>
-- Description:	<Thống kê bộ dữ liệu theo tổ chức (cms)>
-- =============================================
CREATE PROCEDURE [dbo].[spu_TB_BaiViet_GanDay]  --null, '000.00.59.H57'
	@SoLuong tinyint = null,
	@UniqueCode nvarchar(20) = null 
AS
BEGIN
	SET NOCOUNT ON;

	IF(@SoLuong > 0)
	BEGIN
		SELECT TOP(@SoLuong) bv.*, 
		CASE WHEN DATEDIFF(D, bv.LastModifiedOnDate, bv.NgayCapNhatMedia) >= 0 THEN bv.NgayCapNhatMedia
		WHEN DATEDIFF(D, bv.LastModifiedOnDate, bv.NgayCapNhatMedia) < 0 
			AND DATEDIFF(D, bv.LastModifiedOnDate, bv.CreatedOnDate) >= 0 THEN bv.LastModifiedOnDate
		ELSE bv.CreatedOnDate END as NgayCapNhat
		FROM [dbo].[Users] users
		INNER JOIN (
			SELECT bv1.ID, bv1.TieuDe, bv1.ChuyenMucID, bv1.CreatedByUserID, bv1.CreatedOnDate, bv1.LastModifiedOnDate, bv1.TrangThai,
			(SELECT TenChuyenMuc FROM [dbo].[TB_ChuyenMuc] WHERE ID = bv1.ChuyenMucID) AS TenChuyenMuc,
			(SELECT COUNT(ID) FROM [dbo].[TB_Media] WHERE BaiVietID = bv1.ID) as TongSoMedia,
			(SELECT CASE WHEN MAX(LastModifiedOnDate) > MAX(CreatedOnDate) THEN MAX(LastModifiedOnDate)
			ELSE MAX(CreatedOnDate) END FROM [dbo].[TB_Media] WHERE BaiVietID = bv1.ID) as NgayCapNhatMedia
			FROM [dbo].[TB_BaiViet] bv1
			GROUP BY bv1.ID, bv1.TieuDe, bv1.ChuyenMucID, bv1.CreatedByUserID, bv1.CreatedOnDate, bv1.LastModifiedOnDate, bv1.TrangThai
		) as bv on bv.CreatedByUserID = users.Id
		WHERE (ISNULL(@UniqueCode, '') = '' OR users.OrgUniqueCode = @UniqueCode)
		ORDER BY BV.NgayCapNhatMedia, bv.LastModifiedOnDate, bv.CreatedOnDate DESC
	END
	ELSE
	BEGIN
		SELECT bv.*, 
		CASE WHEN DATEDIFF(D, bv.LastModifiedOnDate, bv.NgayCapNhatMedia) >= 0 THEN bv.NgayCapNhatMedia
		WHEN DATEDIFF(D, bv.LastModifiedOnDate, bv.NgayCapNhatMedia) < 0 
			AND DATEDIFF(D, bv.LastModifiedOnDate, bv.CreatedOnDate) >= 0 THEN bv.LastModifiedOnDate
		ELSE bv.CreatedOnDate END as NgayCapNhat
		FROM [dbo].[Users] users
		INNER JOIN (
			SELECT bv1.ID, bv1.TieuDe, bv1.ChuyenMucID, bv1.CreatedByUserID, bv1.CreatedOnDate, bv1.LastModifiedOnDate, bv1.TrangThai,
			(SELECT TenChuyenMuc FROM [dbo].[TB_ChuyenMuc] WHERE ID = bv1.ChuyenMucID) AS TenChuyenMuc,
			(SELECT COUNT(ID) FROM [dbo].[TB_Media] WHERE BaiVietID = bv1.ID) as TongSoMedia,
			(SELECT CASE WHEN MAX(LastModifiedOnDate) > MAX(CreatedOnDate) THEN MAX(LastModifiedOnDate)
			ELSE MAX(CreatedOnDate) END FROM [dbo].[TB_Media] WHERE BaiVietID = bv1.ID) as NgayCapNhatMedia
			FROM [dbo].[TB_BaiViet] bv1
			GROUP BY bv1.ID, bv1.TieuDe, bv1.ChuyenMucID, bv1.CreatedByUserID, bv1.CreatedOnDate, bv1.LastModifiedOnDate, bv1.TrangThai
		) as bv on bv.CreatedByUserID = users.Id
		WHERE (ISNULL(@UniqueCode, '') = '' OR users.OrgUniqueCode = @UniqueCode)
		ORDER BY BV.NgayCapNhatMedia, bv.LastModifiedOnDate, bv.CreatedOnDate DESC
	END
END
--exec spu_TB_BaiViet_GanDay null, ''
GO
/****** Object:  StoredProcedure [dbo].[spu_TB_BaiViet_GetByChuyenMuc]    Script Date: 5/7/2025 7:30:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<HanhND>
-- Create date: <Create Date,,>
-- Description:	<Lấy @SoLuong bài viết theo ngày công bố mới nhất>
-- =============================================
CREATE PROCEDURE [dbo].[spu_TB_BaiViet_GetByChuyenMuc] --'f1ac63bb-7eba-4041-8c70-2c70d8e64133,92729d2a-9c36-4d7b-82e4-fb7ffa8c6a59,94f2b4ce-4e63-40e5-bab6-02c662db6978' ,4, 1
	@ChuyenMucID varchar(max) = NULL,
	@SoLuong int = 0,
	@IsTieuDiem bit = 0
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
    IF(@IsTieuDiem = 1)
	BEGIN
		IF(@SoLuong > 0)
		BEGIN
			SELECT TOP(@SoLuong) bv.*, cm.TenChuyenMuc, cm.URLChuyenMuc
			FROM TB_BaiViet bv 
			INNER JOIN TB_ChuyenMuc cm ON bv.ChuyenMucID = cm.ID OR CHARINDEX(CONVERT(VARCHAR(40),cm.ID),bv.ChuyenMucKhacID) > 0
			WHERE cm.ID IN (SELECT * FROM string_split(@ChuyenMucID, ',')) 
			AND bv.TieuDiem = 1 
		END
		ELSE
		BEGIN
			SELECT TOP(@SoLuong) bv.*, cm.TenChuyenMuc, cm.URLChuyenMuc
			FROM TB_BaiViet bv 
			INNER JOIN TB_ChuyenMuc cm ON bv.ChuyenMucID = cm.ID OR CHARINDEX(CONVERT(VARCHAR(40),cm.ID),bv.ChuyenMucKhacID) > 0
			WHERE cm.ID IN (SELECT * FROM string_split(@ChuyenMucID, ',')) 
			AND bv.TieuDiem = 1 
		END
	END
	ELSE
	BEGIN
		IF(@SoLuong > 0)
		BEGIN
			SELECT TOP(@SoLuong) bv.*, cm.TenChuyenMuc, cm.URLChuyenMuc
			FROM TB_BaiViet bv 
			INNER JOIN TB_ChuyenMuc cm ON bv.ChuyenMucID = cm.ID OR CHARINDEX(CONVERT(VARCHAR(40),cm.ID),bv.ChuyenMucKhacID) > 0
			WHERE cm.ID IN (SELECT * FROM string_split(@ChuyenMucID, ','))
		END
		ELSE
		BEGIN
			SELECT TOP(@SoLuong) bv.*, cm.TenChuyenMuc, cm.URLChuyenMuc
			FROM TB_BaiViet bv 
			INNER JOIN TB_ChuyenMuc cm ON bv.ChuyenMucID = cm.ID OR CHARINDEX(CONVERT(VARCHAR(40),cm.ID),bv.ChuyenMucKhacID) > 0
			WHERE cm.ID IN (SELECT * FROM string_split(@ChuyenMucID, ',')) 
		END
	END
	
END
GO
/****** Object:  StoredProcedure [dbo].[spu_TB_BaiViet_GetByChuyenMuc_Paging]    Script Date: 5/7/2025 7:30:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spu_TB_BaiViet_GetByChuyenMuc_Paging] --'94F2B4CE-4E63-40E5-BAB6-02C662DB6978,B51F7635-9FB5-4494-95A3-10B57D0B5CF4', 1, 20
	@ChuyenMucID varchar(max) = NULL,
	@PageIndex int = 1,
	@PageSize int = 10,
	@TieuDiem bit = 0
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	WITH Data_CTE 
	AS
	( 
		--SELECT bv.*, cm.URLChuyenMuc, cm.TenChuyenMuc
		--FROM TB_BaiViet bv 
		--JOIN TB_ChuyenMuc cm ON (bv.ChuyenMucID = cm.ID OR CHARINDEX(CONVERT(VARCHAR(40),cm.ID),bv.ChuyenMucKhacID) > 0)
		--WHERE (ISNULL(@ChuyenMucID,'') = '' OR cm.ID IN (SELECT * FROM string_split(@ChuyenMucID, ',')))
		--	  AND cm.SuDung = 1 AND (DATEADD(day, 1, bv.HetHanCongBo) > GetDate() OR bv.HetHanCongBo is null)
		--AND (@TieuDiem = 0 OR (@TieuDiem = 1 AND bv.TieuDiem = @TieuDiem))
		SELECT bv.*, cm.URLChuyenMuc, cm.TenChuyenMuc
		FROM TB_BaiViet bv 
		JOIN TB_ChuyenMuc cm ON (bv.ChuyenMucID = cm.ID OR CHARINDEX(CONVERT(VARCHAR(40),cm.ID),bv.ChuyenMucKhacID) > 0)
		WHERE (ISNULL(@ChuyenMucID,'') = '' OR cm.ID IN (SELECT * FROM string_split(@ChuyenMucID, ',')))
		AND cm.SuDung = 1 
		AND (bv.HetHanCongBo IS NULL OR DATEDIFF(d,GETDATE(),DATEADD(day, 1, bv.HetHanCongBo)) >= 0)
		AND (@TieuDiem = 0 OR (@TieuDiem = 1 AND bv.TieuDiem = @TieuDiem))	 
	), 
	Count_CTE 
	AS 
	(
		SELECT COUNT(*) AS TotalRows FROM Data_CTE
	)

	SELECT * FROM Data_CTE
	CROSS JOIN Count_CTE
	ORDER BY NgayCongBo DESC
	OFFSET (@PageIndex - 1) * @PageSize ROWS
	FETCH NEXT @PageSize ROWS ONLY
END
--exec [dbo].[spu_TB_BaiViet_GetByChuyenMuc_Paging] '206A963F-13EB-4CF4-B366-16943C1E93FD', 1, 10

GO
/****** Object:  StoredProcedure [dbo].[spu_TB_BaiViet_GetById]    Script Date: 5/7/2025 7:30:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spu_TB_BaiViet_GetById]
	@ID uniqueidentifier
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * FROM TB_BaiViet WHERE ID = @ID
END
GO
/****** Object:  StoredProcedure [dbo].[spu_TB_BaiViet_GetQuantityByChuyenMuc]    Script Date: 5/7/2025 7:30:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spu_TB_BaiViet_GetQuantityByChuyenMuc] 
	@URLChuyenMuc varchar(max)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    DECLARE @id nvarchar(max) = (SELECT ID FROM TB_ChuyenMuc cm WHERE cm.URLChuyenMuc = @URLChuyenMuc)
	DECLARE @tencm nvarchar(max) = (SELECT TenChuyenMuc FROM TB_ChuyenMuc cm WHERE cm.URLChuyenMuc = @URLChuyenMuc)

	SELECT count(*) as TotalRows, @tencm as TenChuyenMuc FROM TB_BaiViet WHERE ChuyenMucID = @ID OR ChuyenMucKhacID = @ID
END
GO
/****** Object:  StoredProcedure [dbo].[spu_Tb_BaiViet_Gets]    Script Date: 5/7/2025 7:30:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spu_Tb_BaiViet_Gets] --null, null, null, null, 1321
	 @TuKhoa nvarchar(1000) = NULL
	,@ChuyenMuc varchar(40) = NULL
	,@BatDau VARCHAR(10) = NULL
	,@KetThuc VARCHAR(10) = NULL
	,@UserID bigint = -1 -- host: lấy hết
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @access nvarchar(max) = (select STRING_AGG(CAST(ID as nvarchar(36)), ',') from TB_ChuyenMuc cm join Permission_Category pc on cm.ID = pc.ChuyenMucID where pc.UserID = @UserID)
	
	SELECT bv.*, cm.TenChuyenMuc
	FROM TB_BaiViet bv JOIN TB_ChuyenMuc cm ON bv.ChuyenMucID = cm.ID  
	WHERE
		(@TuKhoa IS NULL OR (bv.TieuDe LIKE '%' + @TuKhoa + '%'))
		AND
		(@ChuyenMuc IS NULL OR bv.ChuyenMucID = @ChuyenMuc)
		AND
		(ISNULL(@BatDau, '')='' OR @BatDau <= CONVERT(VARCHAR(10), bv.NgayCongBo, 23)) 
		AND
		(ISNULL(@KetThuc, '')='' OR @KetThuc >= CONVERT(VARCHAR(10), bv.NgayCongBo, 23))
		AND
		(@UserID = -1 OR bv.ChuyenMucID IN (select * from string_split(@access, ',')))
	ORDER BY bv.CreatedOnDate DESC
END
GO
/****** Object:  StoredProcedure [dbo].[spu_TB_BaiViet_ThongKe]    Script Date: 5/7/2025 7:30:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<HanhND>
-- Create date: <Create Date,,>
-- Description:	<Thống kê bộ dữ liệu theo tổ chức (cms)>
-- =============================================
CREATE PROCEDURE [dbo].[spu_TB_BaiViet_ThongKe]  --null, null, '000.00.59.H57'
	@TuNgay varchar(10) = null,
	@DenNgay varchar(10) = null,
	@UniqueCode nvarchar(20) = null 
AS
BEGIN
	SET NOCOUNT ON;

	SELECT COUNT(DISTINCT cm.ID) as TongSoChuyenMuc, COUNT(DISTINCT CASE WHEN cm.SuDung = 1 THEN cm.ID END) as TongSoChuyenMucSuDung,
	COUNT(DISTINCT bv.ID) as TongSoBaiViet, COUNT(DISTINCT CASE WHEN bv.TrangThai = 1 THEN bv.ID END) as TongSoBaiVietCongBo,
	SUM(bv.LuotXem) as TongSoLuotXem, SUM(bv.TongLuotTai) as TongSoLuotTai
	FROM (SELECT Id FROM [dbo].[Users] WHERE ISNULL(@UniqueCode, '') = '' OR [OrgUniqueCode] = @UniqueCode) users
	INNER JOIN (
		SELECT ID, CreatedByUserID, LastModifiedByUserID, SuDung
		FROM [dbo].[TB_ChuyenMuc]
	) cm on cm.CreatedByUserID = users.Id
	INNER JOIN (
		SELECT bv1.ID, bv1.CreatedByUserID, bv1.LastModifiedByUserID, bv1.LuotXem, 
		bv1.NgayCongBo, bv1.TrangThai, bv1.ChuyenMucID, bv1.ChuyenMucKhacID,
		(SELECT SUM(LuotTai) FROM [dbo].[TB_Media] WHERE BaiVietID = bv1.ID) as TongLuotTai
		FROM [dbo].[TB_BaiViet] bv1
	) bv on bv.ChuyenMucID = cm.ID OR bv.ChuyenMucKhacID = CONVERT(VARCHAR(40),cm.ID) OR bv.CreatedByUserID = users.Id
	WHERE ((@TuNgay IS NULL OR DATEDIFF(D, @TuNgay, bv.NgayCongBo) >= 0)
	AND (@DenNgay IS NULL OR DATEDIFF(D, bv.NgayCongBo, @DenNgay) >= 0))
END
--exec spu_TB_BaiViet_ThongKe null, null, ''

GO
/****** Object:  StoredProcedure [dbo].[spu_TB_BaiViet_ThongKeTheoNgay]    Script Date: 5/7/2025 7:30:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<HanhND>
-- Create date: <Create Date,,>
-- Description:	<Thống kê bộ dữ liệu theo tổ chức (cms)>
-- =============================================
CREATE PROCEDURE [dbo].[spu_TB_BaiViet_ThongKeTheoNgay]  --null, null, '000.00.59.H57'
	@TuNgay varchar(10) = null,
	@DenNgay varchar(10) = null,
	@UniqueCode nvarchar(20) = null 
AS
BEGIN
	SET NOCOUNT ON;

	SELECT bv.NgayCongBo, COUNT(DISTINCT bv.ID) as TongSoBaiViet, SUM(bv.LuotXem) as TongSoLuotXem, SUM(bv.TongLuotTai) as TongSoLuotTai
	FROM (SELECT Id FROM [dbo].[Users] WHERE ISNULL(@UniqueCode, '') = '' OR [OrgUniqueCode] = @UniqueCode) users
	INNER JOIN (
		SELECT bv1.ID, bv1.CreatedByUserID, bv1.LastModifiedByUserID, bv1.LuotXem, 
		bv1.NgayCongBo, bv1.TrangThai, bv1.ChuyenMucID, bv1.ChuyenMucKhacID,
		(SELECT SUM(LuotTai) FROM [dbo].[TB_Media] WHERE BaiVietID = bv1.ID) as TongLuotTai
		FROM [dbo].[TB_BaiViet] bv1 WHERE bv1.TrangThai = 1
	) bv on bv.CreatedByUserID = users.Id
	WHERE ((@TuNgay IS NULL OR DATEDIFF(D, @TuNgay, bv.NgayCongBo) >= 0)
	AND (@DenNgay IS NULL OR DATEDIFF(D, bv.NgayCongBo, @DenNgay) >= 0))
	GROUP BY bv.NgayCongBo
	ORDER BY bv.NgayCongBo
END
--exec spu_TB_BaiViet_ThongKeTheoNgay null, null, ''

GO
/****** Object:  StoredProcedure [dbo].[spu_TB_ChuyenMuc_Add]    Script Date: 5/7/2025 7:30:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spu_TB_ChuyenMuc_Add]
	 @ChuyenMucCapChaID uniqueidentifier = null
    ,@TenChuyenMuc nvarchar(100)
	,@MaChuyenMuc varchar(10)
    ,@BieuTuong nvarchar(200) = null
    ,@AnhDaiDien nvarchar(200) = null
    ,@MoTaAnhDaiDien nvarchar(100) = null
    ,@MoTa nvarchar(500) = null
    ,@NoiDung nvarchar(1000) = null
    ,@SuDung bit = null
    ,@ThuTuHienThi int = null
	,@URLChuyenMuc nvarchar(100) = null
	,@MoLienKetOCuaSoMoi bit = null
	,@LoaiLienKet tinyint = null
	,@DiaChiLienKet nvarchar(500) = null
	,@NgonNgu nvarchar(50) = null
	,@CreatedByUserID bigint = null
	,@IsMenu bit = 1
	,@IsActive bit = 1
AS
BEGIN
	SET NOCOUNT ON;
	
	-- kiểm tra url đã tồn tại
	DECLARE @isExistURL int =  ( SELECT TOP(1) COUNT(*) URLChuyenMuc FROM TB_ChuyenMuc WHERE URLChuyenMuc = @URLChuyenMuc) 
	
	-- thêm vào count(ID) sau chuyên mục nếu trùng
	IF(@isExistURL > 0)
		BEGIN
			DECLARE @ms int = (SELECT DATEPART(ms, GETDATE()))
			SET @URLChuyenMuc = CONCAT(@URLChuyenMuc, '-', @ms)
		END
	

    INSERT INTO [dbo].[TB_ChuyenMuc]
           ([ChuyenMucCapChaID]
           ,[TenChuyenMuc]
		   ,[MaChuyenMuc]
		   ,[BieuTuong]
           ,[AnhDaiDien]
           ,[MoTaAnhDaiDien]
           ,[MoTa]
           ,[NoiDung]
		   ,[SuDung]
           ,[ThuTuHienThi]
           ,[URLChuyenMuc]
           ,[MoLienKetOCuaSoMoi]
           ,[LoaiLienKet]
           ,[DiaChiLienKet]
           ,[NgonNgu]
           ,[CreatedByUserID]
		   ,[CreatedOnDate]
		   ,[IsMenu]
		   ,[IsActive])
	 OUTPUT inserted.*
     VALUES
           (@ChuyenMucCapChaID
           ,@TenChuyenMuc
		   ,@MaChuyenMuc
		   ,@BieuTuong
           ,@AnhDaiDien
           ,@MoTaAnhDaiDien
           ,@MoTa
           ,@NoiDung
           ,@SuDung
           ,@ThuTuHienThi
           ,@URLChuyenMuc
           ,@MoLienKetOCuaSoMoi
           ,@LoaiLienKet
		   ,@DiaChiLienKet
		   ,@NgonNgu
		   ,@CreatedByUserID
		   ,GETDATE()
		   ,@IsMenu
		   ,@IsActive)
END


--select ID, URLChuyenMuc from TB_ChuyenMuc where ChuyenMucCapChaID is null
GO
/****** Object:  StoredProcedure [dbo].[spu_TB_ChuyenMuc_Delete]    Script Date: 5/7/2025 7:30:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spu_TB_ChuyenMuc_Delete]
	 @ID varchar(40)
AS
BEGIN
	SET NOCOUNT ON;

    DELETE FROM [dbo].[TB_ChuyenMuc]
	WHERE ID = @ID
END
GO
/****** Object:  StoredProcedure [dbo].[spu_TB_ChuyenMuc_Delete_Img]    Script Date: 5/7/2025 7:30:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spu_TB_ChuyenMuc_Delete_Img]
	  @ID varchar(40)
	 ,@Type int
AS
BEGIN
	SET NOCOUNT ON;
	 IF(@Type = 0)
	 BEGIN
		UPDATE [dbo].[TB_ChuyenMuc]
		SET AnhDaiDien = NULL
		OUTPUT inserted.*
		WHERE ID = @ID
	 END
	 ELSE
	 BEGIN
		UPDATE [dbo].[TB_ChuyenMuc]
		SET BieuTuong = NULL
		OUTPUT inserted.*
		WHERE ID = @ID
	 END
END

GO
/****** Object:  StoredProcedure [dbo].[spu_TB_ChuyenMuc_Edit]    Script Date: 5/7/2025 7:30:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spu_TB_ChuyenMuc_Edit]
	@ID uniqueidentifier
	,@ChuyenMucCapChaID uniqueidentifier = null
    ,@TenChuyenMuc nvarchar(100)
	,@MaChuyenMuc varchar(10)
    ,@BieuTuong nvarchar(200) = null
    ,@AnhDaiDien nvarchar(200) = null
    ,@MoTaAnhDaiDien nvarchar(100) = null
    ,@MoTa nvarchar(500) = null
    ,@NoiDung nvarchar(1000) = null
    ,@SuDung bit = null
    ,@ThuTuHienThi int = null
	,@URLChuyenMuc nvarchar(100) = null
	,@MoLienKetOCuaSoMoi bit = null
	,@LoaiLienKet tinyint = null
	,@DiaChiLienKet nvarchar(500) = null
	,@NgonNgu nvarchar(50) = null
	,@LastModifiedByUserID bigint = null
	,@IsMenu bit = 1
	,@IsActive bit = 1
AS
BEGIN
	SET NOCOUNT ON;

	-- kiểm tra url đã tồn tại
	DECLARE @isExistURL int =  ( SELECT TOP(1) COUNT(*) URLChuyenMuc FROM TB_ChuyenMuc WHERE URLChuyenMuc = @URLChuyenMuc AND ChuyenMucCapChaID IS NULL AND ID != @ID) 
	
	-- thêm vào count(ID) sau chuyên mục nếu trùng
	IF(@isExistURL > 0)
		BEGIN
			DECLARE @countRow int = (SELECT COUNT(*) FROM TB_ChuyenMuc)
			SET @URLChuyenMuc = CONCAT(@URLChuyenMuc, '-', @countRow)
		END

    UPDATE [dbo].[TB_ChuyenMuc]
	SET ChuyenMucCapChaID = @ChuyenMucCapChaID,
		TenChuyenMuc = @TenChuyenMuc,
		MaChuyenMuc = @MaChuyenMuc,
		BieuTuong = @BieuTuong,
		AnhDaiDien = @AnhDaiDien,
		MoTaAnhDaiDien = @MoTaAnhDaiDien,
		MoTa = @MoTa,
		NoiDung = @NoiDung,
		SuDung = @SuDung,
		ThuTuHienThi = @ThuTuHienThi,
		URLChuyenMuc = @URLChuyenMuc,
		MoLienKetOCuaSoMoi = @MoLienKetOCuaSoMoi,
		LoaiLienKet = @LoaiLienKet,
		DiaChiLienKet = @DiaChiLienKet,
		NgonNgu = @NgonNgu,
		LastModifiedOnDate = GETDATE(),
		LastModifiedByUserID = @LastModifiedByUserID,
		IsMenu = @IsMenu,
		IsActive = @IsActive
	OUTPUT inserted.*
	WHERE ID = @ID
END
GO
/****** Object:  StoredProcedure [dbo].[spu_TB_ChuyenMuc_GetById]    Script Date: 5/7/2025 7:30:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spu_TB_ChuyenMuc_GetById] 
	@ID uniqueidentifier
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * FROM TB_ChuyenMuc WHERE ID = @ID
END
GO
/****** Object:  StoredProcedure [dbo].[spu_TB_ChuyenMuc_Gets]    Script Date: 5/7/2025 7:30:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spu_TB_ChuyenMuc_Gets]
	@TuKhoa nvarchar(1000) = NULL
AS
BEGIN
	SET NOCOUNT ON;
	SELECT tb1.*, tb2.TenChuyenMuc as TenChuyenMucCapCha, v.MoTa as TrangLienKet
	FROM [dbo].[TB_ChuyenMuc] tb1 
			LEFT JOIN TB_ChuyenMuc as tb2 on tb1.ChuyenMucCapChaID = tb2.ID
			LEFT JOIN TB_View v on (tb1.DiaChiLienKet = CONVERT(VARCHAR(40), v.ID))  --AND v.DuongDan is not null AND v.DuongDan != '')
	WHERE
		(@TuKhoa IS NULL OR (tb1.TenChuyenMuc LIKE '%' + @TuKhoa + '%' OR tb1.MoTa LIKE '%' + @TuKhoa + '%'))
	ORDER BY tb1.ThuTuHienThi ASC
	
END
GO
/****** Object:  StoredProcedure [dbo].[spu_TB_ChuyenMuc_GetsSelect]    Script Date: 5/7/2025 7:30:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spu_TB_ChuyenMuc_GetsSelect]  --0, 10023
	@Flag int = 0,
	@UserID bigint = -1
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @access nvarchar(max) = (select STRING_AGG(CAST(t.ID as nvarchar(36)), ',') 
									 from (select cm.ID 
										   from TB_ChuyenMuc cm join Permission_Category pc on cm.ID = pc.ChuyenMucID				
										   where pc.UserID = @UserID and pc.Loai in (1, 2, 3)
										   group by cm.ID) as t)

	--Trường hợp lấy hết chuyên mục -> Select chuyên mục
	IF(@Flag = 0)
	BEGIN
		SELECT *, CASE WHEN ChuyenMucCapChaID IS NULL THEN 0 ELSE 1 END AS Cap 
		FROM [dbo].[TB_ChuyenMuc]
		WHERE @UserID = -1 OR ID IN (select * from string_split(@access, ','))
	END
	--Trường hợp lấy chuyên mục không có cấp cha -> Select chuyên mục cấp cha
	ELSE IF(@Flag = 1)
	BEGIN
		SELECT * FROM [dbo].[TB_ChuyenMuc]
		WHERE ChuyenMucCapChaID IS NULL 
			AND (@UserID = -1 OR ID IN (select * from string_split(@access, ',')))
	END
	
END
GO
/****** Object:  StoredProcedure [dbo].[spu_TB_ChuyenMuc_TopChuyenMuc]    Script Date: 5/7/2025 7:30:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<HanhND>
-- Create date: <Create Date,,>
-- Description:	<Thống kê bộ dữ liệu theo tổ chức (cms)>
-- =============================================
CREATE PROCEDURE [dbo].[spu_TB_ChuyenMuc_TopChuyenMuc]  --null, '000.00.59.H57'
	@SoLuong tinyint = 0,
	@UniqueCode nvarchar(20) = null 
AS
BEGIN
	SET NOCOUNT ON;

	IF(@SoLuong > 0)
	BEGIN
		SELECT TOP(@SoLuong) cm.ID, cm.TenChuyenMuc, cm.CreatedOnDate, COUNT(DISTINCT bv.ID) as TongSoBaiViet
		FROM [dbo].[TB_ChuyenMuc] cm
		LEFT JOIN (
			SELECT ID, ChuyenMucID, ChuyenMucKhacID FROM [dbo].[TB_BaiViet] WHERE TrangThai = 1
		) bv on bv.ChuyenMucID = cm.ID OR bv.ChuyenMucKhacID = CONVERT(VARCHAR(40), cm.ID)
		INNER JOIN [dbo].[Users] users on users.Id = cm.CreatedByUserID
		WHERE cm.SuDung = 1
		AND (ISNULL(@UniqueCode, '') = '' OR users.OrgUniqueCode = @UniqueCode)
		GROUP BY cm.ID, cm.TenChuyenMuc, cm.CreatedOnDate
		ORDER BY cm.CreatedOnDate DESC
	END
	ELSE
	BEGIN
		SELECT cm.ID, cm.TenChuyenMuc, cm.CreatedOnDate, COUNT(DISTINCT bv.ID) as TongSoBaiViet
		FROM [dbo].[TB_ChuyenMuc] cm
		LEFT JOIN (
			SELECT ID, ChuyenMucID, ChuyenMucKhacID FROM [dbo].[TB_BaiViet] WHERE TrangThai = 1
		) bv on bv.ChuyenMucID = cm.ID OR bv.ChuyenMucKhacID = CONVERT(VARCHAR(40), cm.ID)
		INNER JOIN [dbo].[Users] users on users.Id = cm.CreatedByUserID
		WHERE cm.SuDung = 1
		AND (ISNULL(@UniqueCode, '') = '' OR users.OrgUniqueCode = @UniqueCode)
		GROUP BY cm.ID, cm.TenChuyenMuc, cm.CreatedOnDate
		ORDER BY cm.CreatedOnDate DESC
	END
END
--exec spu_TB_BaiViet_TopChuyenMuc null, ''

GO
/****** Object:  StoredProcedure [dbo].[spu_TB_ChuyenMucHoiDap_Add]    Script Date: 5/7/2025 7:30:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spu_TB_ChuyenMucHoiDap_Add]
      @TenChuyenMuc nvarchar(1000)
      ,@TenVietTat nvarchar(100)
      ,@MoTa nvarchar(4000)
      ,@SuDung bit
      ,@ThuTuHienThi int
	  ,@NgonNgu nvarchar(50)
	  ,@URLChuyenMuc varchar(100)
	  ,@ViewID smallint
      ,@NguoiTao bigint
AS
BEGIN
	SET NOCOUNT ON;

    INSERT INTO [dbo].[TB_ChuyenMucHoiDap]
           ([ID]
		  ,[TenChuyenMuc]
		  ,[TenVietTat]
		  ,[MoTa]
		  ,[SuDung]
		  ,[ThuTuHienThi]
		  ,[NgonNgu]
		  ,[URLChuyenMuc]
		  ,[ViewID]
		  ,[NguoiTao]
		  ,[NgayTao])
	 OUTPUT inserted.*
     VALUES
           (NEWID()
           ,@TenChuyenMuc
		   ,@TenVietTat
		   ,@MoTa
           ,@SuDung
           ,@ThuTuHienThi
		   ,@NgonNgu
		   ,@URLChuyenMuc
		   ,@ViewID
           ,@NguoiTao
		   ,GETDATE())
END
GO
/****** Object:  StoredProcedure [dbo].[spu_TB_ChuyenMucHoiDap_Delete]    Script Date: 5/7/2025 7:30:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spu_TB_ChuyenMucHoiDap_Delete]
      @ID uniqueidentifier
AS
BEGIN
	SET NOCOUNT ON;

	DELETE FROM [dbo].[TB_ChuyenMucHoiDap] WHERE [ID] = @ID AND SuDung = 0
END
GO
/****** Object:  StoredProcedure [dbo].[spu_TB_ChuyenMucHoiDap_Edit]    Script Date: 5/7/2025 7:30:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spu_TB_ChuyenMucHoiDap_Edit]
      @ID uniqueidentifier
	  ,@TenChuyenMuc nvarchar(1000)
      ,@TenVietTat nvarchar(100)
      ,@MoTa nvarchar(4000)
      ,@SuDung bit
      ,@ThuTuHienThi int
	  ,@NgonNgu nvarchar(50)
	  ,@ViewID smallint
      ,@NguoiCapNhat bigint
AS
BEGIN
	SET NOCOUNT ON;

    UPDATE [dbo].[TB_ChuyenMucHoiDap]
    SET [TenChuyenMuc] = @TenChuyenMuc
		,[TenVietTat] = @TenVietTat
		,[MoTa] = @MoTa
		,[SuDung] = @SuDung
		,[ThuTuHienThi] = @ThuTuHienThi
		,[NgonNgu] = @NgonNgu
		,[ViewID] = @ViewID
		,[NguoiCapNhat] = @NguoiCapNhat
		,[NgayCapNhat] = GETDATE()
	WHERE [ID] = @ID
END
GO
/****** Object:  StoredProcedure [dbo].[spu_TB_ChuyenMucHoiDap_Gets]    Script Date: 5/7/2025 7:30:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spu_TB_ChuyenMucHoiDap_Gets]
      @TuKhoa nvarchar(1000) = null
	  ,@ID uniqueidentifier = null
	  ,@TenChuyenMuc nvarchar(1000) = null
      ,@TenVietTat nvarchar(100) = null
      ,@SuDung bit = null
AS
BEGIN
	SET NOCOUNT ON;

    SELECT * FROM [dbo].[TB_ChuyenMucHoiDap]
	WHERE (@ID IS NULL OR ID = @ID)
	AND (ISNULL(@TenChuyenMuc,'') = '' OR TenChuyenMuc = @TenChuyenMuc)
	AND (ISNULL(@TenVietTat,'') = '' OR TenVietTat = @TenVietTat)
	AND (@SuDung IS NULL OR SuDung = @SuDung)
	AND (ISNULL(@TuKhoa,'') = '' OR (TenChuyenMuc LIKE '%' + @TuKhoa + '%') OR (TenVietTat LIKE '%' + @TuKhoa + '%')
		OR (MoTa LIKE '%' + @TuKhoa + '%'))
	ORDER BY ThuTuHienThi
END
---spu_TB_ChuyenMucHoiDap_Gets 'sp'
GO
/****** Object:  StoredProcedure [dbo].[spu_TB_Media_Add]    Script Date: 5/7/2025 7:30:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[spu_TB_Media_Add] 
	@TieuDe nvarchar(250),
	@MoTa nvarchar(200),
	@TenFileMedia nvarchar(200),
	@DuongDan nvarchar(200),
	@LoaiFileMedia int,
	@BaiVietID uniqueidentifier,
	@ThuTuHienThi int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO TB_Media
		(TieuDe,
		MoTa,
		TenFileMedia,
		DuongDan,
		LoaiFileMedia,
		BaiVietID,
		LuotTai,
		ThuTuHienThi,
		CreatedOnDate
		)
	OUTPUT inserted.*
	VALUES
		(@TieuDe,
		@MoTa,
		@TenFileMedia,
		@DuongDan,
		@LoaiFileMedia,
		@BaiVietID,
		0,
		@ThuTuHienThi,
		GETDATE())
END
GO
/****** Object:  StoredProcedure [dbo].[spu_TB_Media_Delete]    Script Date: 5/7/2025 7:30:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spu_TB_Media_Delete]
	@ID varchar(200)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	DELETE 
	FROM TB_Media
	WHERE ID IN (select * from string_split(@ID, ','))
END
GO
/****** Object:  StoredProcedure [dbo].[spu_TB_Media_Edit]    Script Date: 5/7/2025 7:30:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[spu_TB_Media_Edit]
	@ID int,
	@TieuDe nvarchar(250),
	@MoTa nvarchar(200),
	@TenFileMedia nvarchar(200),
	@DuongDan nvarchar(200),
	@LoaiFileMedia int,
	@BaiVietID uniqueidentifier,
	@ThuTuHienThi int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	UPDATE TB_Media
	SET
		TieuDe = @TieuDe,
		MoTa = @MoTa,
		TenFileMedia = @TenFileMedia,
		DuongDan = @DuongDan,
		LoaiFileMedia = @LoaiFileMedia,
		BaiVietID = @BaiVietID,
		ThuTuHienThi = @ThuTuHienThi,
		LastModifiedOnDate = GETDATE() 
	OUTPUT inserted.*
	WHERE ID = @ID and BaiVietID = @BaiVietID
END
GO
/****** Object:  StoredProcedure [dbo].[spu_TB_Media_GetByBaiViet]    Script Date: 5/7/2025 7:30:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[spu_TB_Media_GetByBaiViet]
	--@BaiVietID uniqueidentifier = null,
	@BaiVietID varchar(max) = NULL,
	@SoLuong int = 0
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	--SELECT * FROM TB_Media
	--WHERE BaiVietID = @BaiVietID

	IF(@SoLuong > 0)
	BEGIN
		SELECT TOP(@SoLuong) * FROM TB_Media
		WHERE (ISNULL(@BaiVietID,'') = '' OR BaiVietID IN (SELECT * FROM string_split(@BaiVietID, ',')))
	END
	ELSE
	BEGIN
		SELECT * FROM TB_Media
		WHERE (ISNULL(@BaiVietID,'') = '' OR BaiVietID IN (SELECT * FROM string_split(@BaiVietID, ',')))
	END
END
GO
/****** Object:  StoredProcedure [dbo].[spu_TB_Media_GetByChuyenMuc]    Script Date: 5/7/2025 7:30:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
	CREATE PROCEDURE [dbo].[spu_TB_Media_GetByChuyenMuc] --N'3a146610-64c3-4cbf-8129-127311b595e0,086a67b0-0e82-4896-843a-a06bedafe258,41341896-06bf-40c9-b3bd-
		@ChuyenMucID varchar(max) = NULL,
		@SoLuong int = 0,
		@Loai int = 0
	AS
	BEGIN
		-- SET NOCOUNT ON added to prevent extra result sets from
		-- interfering with SELECT statements.
		SET NOCOUNT ON;

		-- Insert statements for procedure here
		--SELECT * FROM TB_Media
		--WHERE BaiVietID = @BaiVietID
		SELECT *
			FROM (
			SELECT  distinct TOP(@SoLuong) m.BaiVietID, m.DuongDan, m.LoaiFileMedia, m.TieuDe, m.TenFileMedia, bv.CreatedOnDate
			FROM TB_Media m JOIN TB_BaiViet bv ON m.BaiVietID = bv.ID JOIN TB_ChuyenMuc cm ON (cm.ID = bv.ChuyenMucID OR CHARINDEX(CONVERT(VARCHAR(40),cm.ID),bv.ChuyenMucKhacID) > 0)
			WHERE cm.ID IN (SELECT * FROM string_split(@ChuyenMucID, ',')) AND (@Loai = 0 OR (m.LoaiFileMedia = @Loai))
			) as t
		ORDER BY t.CreatedOnDate DESC
	END

GO
/****** Object:  StoredProcedure [dbo].[spu_TB_Media_GetById]    Script Date: 5/7/2025 7:30:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spu_TB_Media_GetById]
	@ID int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    SELECT * FROM TB_Media WHERE ID = @ID
END
GO
/****** Object:  StoredProcedure [dbo].[spu_TB_Role_Delete]    Script Date: 5/7/2025 7:30:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spu_TB_Role_Delete]
	@Id bigint
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

  DELETE 
  FROM Roles 
  OUTPUT deleted.*  
  WHERE Id = @Id 
	
END
GO
/****** Object:  StoredProcedure [dbo].[spu_TB_Role_Edit]    Script Date: 5/7/2025 7:30:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spu_TB_Role_Edit] 
	@Id bigint,
	@Name nvarchar(256),
	@NormalizedName nvarchar(256),
	@RoleDescription nvarchar(100)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

   UPDATE Roles
   SET
		Name = @Name,
		NormalizedName = @NormalizedName,
		RoleDescription = @RoleDescription
	OUTPUT inserted.*
	WHERE Id = @Id
	
END
GO
/****** Object:  StoredProcedure [dbo].[spu_TB_TaiKhoan_Gets]    Script Date: 5/7/2025 7:30:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spu_TB_TaiKhoan_Gets]
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * FROM Users
END
GO
/****** Object:  StoredProcedure [dbo].[spu_TB_ThietLapCauHinh_Add]    Script Date: 5/7/2025 7:30:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spu_TB_ThietLapCauHinh_Add]
    @TenTieuChi varchar(250)
	,@Loai tinyint = null
	,@TenLoai varchar(250) = null
	,@SuDung bit = null
	,@MoTa nvarchar(1000) = null
AS
BEGIN
	SET NOCOUNT ON;

    INSERT INTO [dbo].[TB_ThietLapCauHinh]
           ([TenTieuChi]
           ,[Loai]
		   ,[TenLoai]
           ,[SuDung]
		   ,[MoTa])
	 OUTPUT inserted.*
     VALUES
           (@TenTieuChi
		   ,@Loai
		   ,@TenLoai
		   ,@SuDung
		   ,@MoTa)
END
GO
/****** Object:  StoredProcedure [dbo].[spu_TB_ThietLapCauHinh_Delete]    Script Date: 5/7/2025 7:30:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spu_TB_ThietLapCauHinh_Delete]
	@ID tinyint
AS
BEGIN
	SET NOCOUNT ON;

	IF EXISTS(SELECT 1 FROM [dbo].[TB_ThietLapCauHinh] WHERE ID = @ID)
	BEGIN
		DELETE FROM [dbo].[TB_ThietLapCauHinh] WHERE [ID] = @ID AND [SuDung] = 0
	END
END
GO
/****** Object:  StoredProcedure [dbo].[spu_TB_ThietLapCauHinh_Edit]    Script Date: 5/7/2025 7:30:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spu_TB_ThietLapCauHinh_Edit]
	@ID tinyint
    ,@TenTieuChi varchar(250)
	,@MoTa nvarchar(4000) = null
    ,@Loai tinyint = null
	,@TenLoai varchar(250) = null
    ,@SuDung bit = null
AS
BEGIN
	SET NOCOUNT ON;

	IF EXISTS(SELECT 1 FROM [dbo].[TB_ThietLapCauHinh] WHERE ID = @ID)
	BEGIN
		UPDATE [dbo].[TB_ThietLapCauHinh]
		SET [TenTieuChi] = @TenTieuChi
           ,[MoTa] = @MoTa
           ,[Loai] = @Loai
		   ,[TenLoai] = @TenLoai
		   ,[SuDung] = @SuDung
		WHERE ID = @ID
	END
END
GO
/****** Object:  StoredProcedure [dbo].[spu_TB_ThietLapCauHinh_GetById]    Script Date: 5/7/2025 7:30:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[spu_TB_ThietLapCauHinh_GetById]
	@ID tinyint = NULL
AS
BEGIN
	SET NOCOUNT ON;

	SELECT * FROM [dbo].[TB_ThietLapCauHinh] WHERE ID = @ID
END
GO
/****** Object:  StoredProcedure [dbo].[spu_TB_ThietLapCauHinh_Gets]    Script Date: 5/7/2025 7:30:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spu_TB_ThietLapCauHinh_Gets]
	@TuKhoa nvarchar(1000) = NULL,
	@SoLuong int = 0
AS
BEGIN
	SET NOCOUNT ON;

	IF(@SoLuong > 0)
	BEGIN
		SELECT TOP(@SoLuong) * FROM [dbo].[TB_ThietLapCauHinh]
		WHERE (@TuKhoa IS NULL OR ([TenTieuChi] LIKE '%' + @TuKhoa + '%' OR [MoTa] LIKE '%' + @TuKhoa + '%'))
		ORDER BY [ID] ASC
	END
	IF(@SoLuong IS NULL OR @SoLuong = 0)
	BEGIN
		SELECT * FROM [dbo].[TB_ThietLapCauHinh]
		WHERE (@TuKhoa IS NULL OR ([TenTieuChi] LIKE '%' + @TuKhoa + '%' OR [MoTa] LIKE '%' + @TuKhoa + '%'))
		ORDER BY [ID] ASC
	END
END
GO
/****** Object:  StoredProcedure [dbo].[spu_TB_ThongKe_BaiViet]    Script Date: 5/7/2025 7:30:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<HanhND>
-- Create date: <Create Date,,>
-- Description:	<Thống kê bộ dữ liệu theo tổ chức (cms)>
-- =============================================
CREATE PROCEDURE [dbo].[spu_TB_ThongKe_BaiViet]
	@TuKhoa nvarchar(1000) = NULL,
	@ChuyenMucID varchar(max) = NULL,
	@NgonNgu nvarchar(1000) = NULL,
	@ChuyenMucKhac bit = NULL,
	@TuNgay varchar(10) = NULL,
	@DenNgay varchar(10) = NULL,
	@NguoiCapNhat bigint = NULL ,
	@TrangThai int = NULL,
	@UniqueCode varchar(20) = NULL
AS
BEGIN
	SET NOCOUNT ON;

	WITH Data_CTE 
			AS
			( 
				SELECT bv.*, 
				(SELECT STRING_AGG(TenChuyenMuc,'; ') FROM [dbo].[TB_ChuyenMuc] WHERE (CONVERT(VARCHAR(40),ID) IN (SELECT * FROM string_split(bv.ChuyenMuc,',')))) as TenChuyenMuc, users.DisplayName as TenNguoiCapNhat,
				CASE WHEN bv.LastModifiedOnDate IS NOT NULL AND DATEDIFF(D, bv.CreatedOnDate, bv.LastModifiedOnDate) >= 0 THEN bv.LastModifiedOnDate
				ELSE bv.CreatedOnDate END as NgayCapNhat
				FROM (SELECT Id, DisplayName FROM [dbo].[Users] WHERE ISNULL(@UniqueCode, '') = '' OR [OrgUniqueCode] = @UniqueCode) users
				INNER JOIN (
					SELECT *, CASE WHEN @ChuyenMucKhac = 1 AND ISNULL(ChuyenMucKhacID,'') <> '' THEN CONCAT(ChuyenMucID,',',ChuyenMucKhacID)
					ELSE CONVERT(VARCHAR(40),ChuyenMucID) END as ChuyenMuc
					--SELECT *, CASE WHEN @ChuyenMucKhac = 1 AND ISNULL(ChuyenMucKhacID,'') <> '' AND CHARINDEX(CONVERT(VARCHAR(40),ChuyenMucID), @ChuyenMucID) < 0 THEN ChuyenMucKhacID
					--ELSE CONVERT(VARCHAR(40),ChuyenMucID) END as ChuyenMuc
					FROM [dbo].[TB_BaiViet]
				) bv on bv.CreatedByUserID = users.Id
				WHERE (ISNULL(@TuKhoa, '') = '' OR (bv.TieuDe LIKE '%' + @TuKhoa + '%'))
				AND (ISNULL(@NgonNgu, '') = '' OR (bv.NgonNgu LIKE '%' + @NgonNgu + '%'))
				AND (((ISNULL(@ChuyenMucID,'') = '' OR CHARINDEX(CONVERT(VARCHAR(40),ChuyenMucID), @ChuyenMucID) > 0) OR (@ChuyenMucKhac = 1 AND ISNULL(ChuyenMucKhacID,'') <> ''))
					OR ((ISNULL(@ChuyenMucID,'') = '' OR (CHARINDEX(CONVERT(VARCHAR(40),ChuyenMucID), @ChuyenMucID) > 0 AND ISNULL(bv.ChuyenMucKhacID,'') = ''))))
				AND ((ISNULL(@TuNgay, '') = '' OR DATEDIFF(D, @TuNgay, bv.CreatedOnDate) >= 0)
				AND (ISNULL(@DenNgay, '') = '' OR DATEDIFF(D, bv.CreatedOnDate, @DenNgay) >= 0))
				AND (@NguoiCapNhat IS NULL OR @NguoiCapNhat = -1 OR BV.CreatedByUserID = @NguoiCapNhat)
				AND (@TrangThai IS NULL OR @TrangThai = -1 OR bv.TrangThai = @TrangThai)
			), 
			Count_CTE 
			AS 
			(
				SELECT COUNT(*) AS TotalRows FROM Data_CTE
			)

		SELECT * FROM Data_CTE
		CROSS JOIN Count_CTE
		ORDER BY NgayCongBo DESC, NgayCapNhat DESC, ChuyenMucID, TieuDe
END
--exec spu_TB_ThongKe_BaiViet NULL, NULL, NULL, null, NULL, NULL, 2, null, NULL


GO
/****** Object:  StoredProcedure [dbo].[spu_TB_ThongSoCauHinh_Add]    Script Date: 5/7/2025 7:30:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spu_TB_ThongSoCauHinh_Add]
    @TenThongSo nvarchar(1000)
	,@MaView smallint = null
    ,@MaTieuChi tinyint = null
	,@GiaTriThietLap nvarchar(4000) = null
	,@ThuTuHienThi int = 0
	,@NguoiTao bigint = null
	,@DuLieuLienKet tinyint = null
AS
BEGIN
	SET NOCOUNT ON;

    INSERT INTO [dbo].[TB_ThongSoCauHinh]
           ([ID]
		   ,[TenThongSo]
           ,[MaView]
           ,[MaTieuChi]
		   ,[GiaTriThietLap]
		   ,[ThuTuHienThi]
		   ,[NguoiTao]
		   ,[NgayTao]
		   ,[DuLieuLienKet])
	 OUTPUT inserted.*
     VALUES
           (NEWID()
		   ,@TenThongSo
		   ,@MaView
		   ,@MaTieuChi
           ,@GiaTriThietLap
		   ,@ThuTuHienThi
           ,@NguoiTao
		   ,GETDATE()
		   ,@DuLieuLienKet)
END
GO
/****** Object:  StoredProcedure [dbo].[spu_TB_ThongSoCauHinh_Delete]    Script Date: 5/7/2025 7:30:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spu_TB_ThongSoCauHinh_Delete]
	@ID uniqueidentifier
AS
BEGIN
	SET NOCOUNT ON;

	IF EXISTS(SELECT 1 FROM [dbo].[TB_ThongSoCauHinh] WHERE ID = @ID)
	BEGIN
		DELETE FROM [dbo].[TB_ThongSoCauHinh] WHERE [ID] = @ID
	END
    
END
GO
/****** Object:  StoredProcedure [dbo].[spu_TB_ThongSoCauHinh_Edit]    Script Date: 5/7/2025 7:30:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spu_TB_ThongSoCauHinh_Edit]
	@ID uniqueidentifier
    ,@TenThongSo nvarchar(1000)
	,@MaView smallint = null
    ,@MaTieuChi tinyint = null
	,@GiaTriThietLap nvarchar(4000) = null
	,@ThuTuHienThi int = 0
	,@NguoiCapNhat bigint = null
	,@DuLieuLienKet tinyint = null
AS
BEGIN
	SET NOCOUNT ON;

	IF EXISTS(SELECT 1 FROM [dbo].[TB_ThongSoCauHinh] WHERE ID = @ID)
	BEGIN
		UPDATE [dbo].[TB_ThongSoCauHinh]
        SET [TenThongSo] = @TenThongSo
           ,[MaView] = @MaView
           ,[MaTieuChi] = @MaTieuChi
		   ,[GiaTriThietLap] = @GiaTriThietLap
		   ,[ThuTuHienThi] = @ThuTuHienThi
		   ,[NguoiCapNhat] = @NguoiCapNhat
		   ,[NgayCapNhat] = GETDATE()
		   ,[DuLieuLienKet] = @DuLieuLienKet
		WHERE [ID] = @ID
	END
    
END
GO
/****** Object:  StoredProcedure [dbo].[spu_TB_ThongSoCauHinh_GetByView]    Script Date: 5/7/2025 7:30:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spu_TB_ThongSoCauHinh_GetByView]
	@MaView smallint
AS
BEGIN
	SET NOCOUNT ON;

	SELECT ts.ID, ts.TenThongSo, ts.MaView, v.TenView, ts.MaTieuChi,tl.TenTieuChi, tl.Loai, tl.TenLoai,
	ts.GiaTriThietLap, tl.SuDung, ts.ThuTuHienThi, ts.DuLieuLienKet, v.DuongDan
	FROM [dbo].[TB_ThietLapCauHinh] tl
	INNER JOIN [dbo].[TB_ThongSoCauHinh] ts on ts.MaTieuChi = tl.ID
	LEFT JOIN [dbo].[TB_View] v on ts.MaView = v.ID
	WHERE ts.MaView = @MaView
	ORDER BY v.TenView,ts.[ThuTuHienThi] ASC
END

--exec spu_TB_ThongSoCauHinh_GetByView 2
GO
/****** Object:  StoredProcedure [dbo].[spu_TB_ThongSoCauHinh_Gets]    Script Date: 5/7/2025 7:30:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spu_TB_ThongSoCauHinh_Gets]
	@TuKhoa nvarchar(1000) = NULL,
	@SoLuong int = 0
AS
BEGIN
	SET NOCOUNT ON;

	WITH Data_Temp
	AS
	(
		SELECT DISTINCT v.ID, v.TenView, v.ViewCapChaID,
		(SELECT TenView FROM [dbo].[TB_View] WHERE ID = v.ViewCapChaID) as TenViewCapCha,
		CASE WHEN v.ViewCapChaID IS NOT NULL THEN CONCAT(v.[TenView], ' (',(SELECT TenView FROM [dbo].[TB_View] WHERE ID = v.ViewCapChaID),')') END as TenViewSearch,
		v.MoTa, v.NgayTao
		FROM [dbo].[TB_View] v
		WHERE v.ID IN (SELECT MaView FROM [dbo].[TB_ThongSoCauHinh])
	),
	Data_CTE
	AS
	(
		SELECT DISTINCT ts.ID, ts.TenThongSo, ts.MaView, v.TenView, ts.MaTieuChi,tl.TenTieuChi, tl.Loai, tl.TenLoai,
		ts.GiaTriThietLap, tl.SuDung, ts.ThuTuHienThi, ts.DuLieuLienKet, v.TenViewCapCha, v.ViewCapChaID, v.[TenViewSearch],
		(SELECT CASE WHEN ViewCapChaID IS NULL THEN ID ELSE ViewCapChaID END FROM TB_View WHERE ID = v.ViewCapChaID) as TenViewCapCha2
		FROM [dbo].[TB_ThietLapCauHinh] tl
		INNER JOIN [dbo].[TB_ThongSoCauHinh] ts on ts.MaTieuChi = tl.ID
		INNER JOIN Data_Temp v on ts.MaView = v.ID
		WHERE (@TuKhoa IS NULL OR (tl.[TenTieuChi] LIKE '%' + @TuKhoa + '%'
			OR ts.[TenThongSo] LIKE '%' + @TuKhoa + '%'
			OR v.[TenView] LIKE '%' + @TuKhoa + '%'
			OR v.[MoTa] LIKE '%' + @TuKhoa + '%'
			OR v.TenViewCapCha LIKE '%' + @TuKhoa + '%')
			OR REPLACE(v.[TenViewSearch],' ','') LIKE '%' + REPLACE(@TuKhoa,' ','') + '%')
	)
	SELECT * FROM Data_CTE ORDER BY TenViewCapCha2 ASC, ViewCapChaID ASC, TenView ASC, [ThuTuHienThi] ASC
END

---exec spu_TB_ThongSoCauHinh_Gets '_section_row_4 (layout_1)'
GO
/****** Object:  StoredProcedure [dbo].[spu_TB_ThongSoCauHinh_GetsSelect]    Script Date: 5/7/2025 7:30:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spu_TB_ThongSoCauHinh_GetsSelect]
	@DuLieuLienKet tinyint,
	@ListID varchar(max) = null
AS
BEGIN
	SET NOCOUNT ON;

	IF(@DuLieuLienKet = 1)
	BEGIN
		SELECT * FROM TB_ChuyenMuc 
		WHERE SuDung = 1 
		AND (ISNULL(@ListID,'') = '' OR CONVERT(VARCHAR(40),ID) IN (SELECT * FROM string_split(@ListID, ',')))
		ORDER BY ThuTuHienThi ASC
	END
	ELSE IF(@DuLieuLienKet = 2)
	BEGIN
		SELECT bv.*, (SELECT TenChuyenMuc FROM TB_ChuyenMuc WHERE ID = bv.ChuyenMucID) as TenChuyenMuc
		FROM TB_BaiViet bv 
		WHERE bv.TrangThai = 1 
		AND (ISNULL(@ListID,'') = '' OR CONVERT(VARCHAR(40),bv.ID) IN (SELECT * FROM string_split(@ListID, ',')))
		ORDER BY bv.ThuTuHienThi ASC
	END
	ELSE IF(@DuLieuLienKet = 3)
	BEGIN
		SELECT * FROM TB_Media media 
		WHERE (ISNULL(@ListID,'') = '' OR CONVERT(VARCHAR(40),media.ID) IN (SELECT * FROM string_split(@ListID, ',')))
		ORDER BY ThuTuHienThi ASC
	END
END
--exec spu_TB_ThongSoCauHinh_GetsSelect 1, '94647DAC-FCBB-458B-A968-00BFA014FDAA,34959883-FCB4-4B60-B14F-02C38A3F8033'
GO
/****** Object:  StoredProcedure [dbo].[spu_TB_TinLienQuan_Add]    Script Date: 5/7/2025 7:30:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spu_TB_TinLienQuan_Add]
	@BaiVietID uniqueidentifier,
	@BaiVietLienQuanID uniqueidentifier
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO TB_TinLienQuan(BaiVietID, BaiVietLienQuanID)
	OUTPUT inserted.*
	VALUES(@BaiVietID, @BaiVietLienQuanID)
END
GO
/****** Object:  StoredProcedure [dbo].[spu_TB_TinLienQuan_Delete]    Script Date: 5/7/2025 7:30:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spu_TB_TinLienQuan_Delete]
	@ID varchar(200)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	DELETE 
	FROM TB_TinLienQuan
	WHERE ID IN (select * from string_split(@ID, ','))
END
GO
/****** Object:  StoredProcedure [dbo].[spu_TB_TinLienQuan_Edit]    Script Date: 5/7/2025 7:30:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spu_TB_TinLienQuan_Edit]
	@ID int,
	@BaiVietID uniqueidentifier,
	@BaiVietLienQuanID uniqueidentifier
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	UPDATE TB_TinLienQuan
	SET BaiVietID = @BaiVietID,
		BaiVietLienQuanID = @BaiVietLienQuanID
	OUTPUT inserted.*
	WHERE BaiVietID = @BaiVietID AND ID = @ID
END
GO
/****** Object:  StoredProcedure [dbo].[spu_TB_TinLienQuan_GetByBaiViet]    Script Date: 5/7/2025 7:30:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spu_TB_TinLienQuan_GetByBaiViet] --'C28E361B-0515-4AF5-AF07-CA87867E5A9B'
	@BaiVietID uniqueidentifier
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT t.*, bv.TieuDe, bv.TacGia, bv.TrangThai, cm.TenChuyenMuc	 
	FROM TB_TinLienQuan t JOIN TB_BaiViet bv ON t.BaiVietLienQuanID = bv.ID 
			JOIN TB_ChuyenMuc cm ON bv.ChuyenMucID = cm.ID
	WHERE BaiVietID = @BaiVietID
END
GO
/****** Object:  StoredProcedure [dbo].[spu_TB_Users_GetById]    Script Date: 5/7/2025 7:30:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
CREATE PROCEDURE [dbo].[spu_TB_Users_GetById]
	@UserId int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	DECLARE @lstRoleId varchar(100) = (SELECT STRING_AGG(ur.RoleId, ',') FROM Users u JOIN UserRoles ur ON u.ID = ur.UserId WHERE ur.UserId = @UserId)
	
	SELECT u.*, @lstRoleId as RoleId
	FROM Users u 
	WHERE ID = @UserId
END
GO
/****** Object:  StoredProcedure [dbo].[spu_TB_View_Add]    Script Date: 5/7/2025 7:30:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spu_TB_View_Add]
    @TenView varchar(250)
	,@MoTa nvarchar(4000) = null
    ,@DuongDan varchar(250) = null
	,@Area varchar(250) = null
	,@Controller varchar(250) = null
	,@Action varchar(250) = null
    ,@ViewCapChaID smallint = null
    ,@SuDung bit = null
	,@NguoiTao bigint = null
AS
BEGIN
	SET NOCOUNT ON;

    INSERT INTO [dbo].[TB_View]
           ([TenView]
           ,[MoTa]
           ,[DuongDan]
		   ,[Area]
		   ,[Controller]
		   ,[Action]
           ,[ViewCapChaID]
		   ,[SuDung]
		   ,[NguoiTao]
		   ,[NgayTao])
	 OUTPUT inserted.*
     VALUES
           (@TenView
		   ,@MoTa
		   ,@DuongDan
		   ,@Area
           ,@Controller
           ,@Action
		   ,@ViewCapChaID
		   ,@SuDung
           ,@NguoiTao
		   ,GETDATE())
END
GO
/****** Object:  StoredProcedure [dbo].[spu_TB_View_Delete]    Script Date: 5/7/2025 7:30:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spu_TB_View_Delete]
	@ID smallint
AS
BEGIN
	SET NOCOUNT ON;

	IF EXISTS(SELECT 1 FROM [dbo].[TB_View] WHERE ID = @ID)
	BEGIN
		DELETE FROM [dbo].[TB_View] WHERE [ID] = @ID AND [SuDung] = 0

		DELETE FROM [dbo].[TB_ThongSoCauHinh] WHERE [MaView] = @ID
	END
END
GO
/****** Object:  StoredProcedure [dbo].[spu_TB_View_Edit]    Script Date: 5/7/2025 7:30:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spu_TB_View_Edit]
	@ID smallint
    ,@TenView varchar(250)
	,@MoTa nvarchar(4000) = null
    ,@DuongDan varchar(250) = null
	,@Area varchar(250) = null
	,@Controller varchar(250) = null
	,@Action varchar(250) = null
    ,@ViewCapChaID smallint = null
    ,@SuDung bit = null
	,@NguoiCapNhat bigint = null
AS
BEGIN
	SET NOCOUNT ON;

	IF EXISTS(SELECT 1 FROM [dbo].[TB_View] WHERE ID = @ID)
	BEGIN
		UPDATE [dbo].[TB_View]
		SET [TenView] = @TenView
           ,[MoTa] = @MoTa
           ,[DuongDan] = @DuongDan
		   ,[Area] = @Area
		   ,[Controller] = @Controller
		   ,[Action] = @Action
           ,[ViewCapChaID] = @ViewCapChaID
		   ,[SuDung] = @SuDung
		   ,[NguoiCapNhat] = @NguoiCapNhat
		   ,[NgayCapNhat] = GETDATE()
		WHERE ID = @ID
	END
END
GO
/****** Object:  StoredProcedure [dbo].[spu_TB_View_GetById]    Script Date: 5/7/2025 7:30:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[spu_TB_View_GetById]
	@ID smallint = NULL
AS
BEGIN
	SET NOCOUNT ON;

	SELECT * FROM [dbo].[TB_View] 
	WHERE ID = @ID AND SuDung = 1
END
GO
/****** Object:  StoredProcedure [dbo].[spu_TB_View_Gets]    Script Date: 5/7/2025 7:30:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spu_TB_View_Gets]
	@ParentID smallint = NULL,
	@TuKhoa nvarchar(1000) = NULL,
	@SoLuong int = 0
AS
BEGIN
	SET NOCOUNT ON;

	IF(@SoLuong > 0)
	BEGIN
		SELECT TOP(@SoLuong) v.*,  (SELECT TenView FROM [dbo].[TB_View] WHERE ID = v.ViewCapChaID) as TenViewCapCha
		FROM [dbo].[TB_View] v
		WHERE (@ParentID IS NULL OR v.ViewCapChaID = @ParentID)
		AND (@TuKhoa IS NULL OR (v.[TenView] LIKE '%' + @TuKhoa + '%' OR v.[MoTa] LIKE '%' + @TuKhoa + '%'))
		ORDER BY v.[NgayTao] ASC
	END
	ELSE
	BEGIN
		SELECT v.*, (SELECT TenView FROM [dbo].[TB_View] WHERE ID = v.ViewCapChaID) as TenViewCapCha
		FROM [dbo].[TB_View] v
		WHERE (@ParentID IS NULL OR v.ViewCapChaID = @ParentID)
		AND (@TuKhoa IS NULL OR (v.[TenView] LIKE '%' + @TuKhoa + '%' OR v.[MoTa] LIKE '%' + @TuKhoa + '%'))
		ORDER BY v.[NgayTao] ASC
	END
END
GO
/****** Object:  StoredProcedure [dbo].[spu_TB_View_GetSelect]    Script Date: 5/7/2025 7:30:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
create PROCEDURE [dbo].[spu_TB_View_GetSelect]
	@Flag int = 0
AS
BEGIN
	SET NOCOUNT ON;
	--Trường hợp lấy hết giao diện -> Select giao diện
	IF(@Flag = 0)
	BEGIN
		SELECT *, CASE WHEN [ViewCapChaID] IS NULL THEN 0 ELSE 1 END AS Cap 
		FROM [dbo].[TB_View]
	END
	--Trường hợp lấy giao diện không có cấp cha -> Select giao diện cấp cha
	ELSE IF(@Flag = 1)
	BEGIN
		SELECT * FROM [dbo].[TB_View]
		WHERE [ViewCapChaID] IS NULL
	END
	
END

---exec spu_TB_View_GetSelect 1
GO
