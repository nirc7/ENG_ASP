USE [master]
GO
/****** Object:  Database [VIDEOLIBPROJECTV01]    Script Date: 05/13/2017 15:15:51 ******/
CREATE DATABASE [VIDEOLIBPROJECTV01] ON  PRIMARY 
( NAME = N'VideoLibProject_AfterFix', FILENAME = N'C:\Video DB_ORG\VideoLibProjectV01.mdf' , SIZE = 10496KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'VideoLibProject_AfterFix_log', FILENAME = N'C:\Video DB_ORG\VideoLibProjectV01_log.ldf' , SIZE = 768KB , MAXSIZE = UNLIMITED, FILEGROWTH = 10%)
GO
ALTER DATABASE [VIDEOLIBPROJECTV01] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [VIDEOLIBPROJECTV01].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [VIDEOLIBPROJECTV01] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [VIDEOLIBPROJECTV01] SET ANSI_NULLS OFF
GO
ALTER DATABASE [VIDEOLIBPROJECTV01] SET ANSI_PADDING OFF
GO
ALTER DATABASE [VIDEOLIBPROJECTV01] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [VIDEOLIBPROJECTV01] SET ARITHABORT OFF
GO
ALTER DATABASE [VIDEOLIBPROJECTV01] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [VIDEOLIBPROJECTV01] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [VIDEOLIBPROJECTV01] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [VIDEOLIBPROJECTV01] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [VIDEOLIBPROJECTV01] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [VIDEOLIBPROJECTV01] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [VIDEOLIBPROJECTV01] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [VIDEOLIBPROJECTV01] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [VIDEOLIBPROJECTV01] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [VIDEOLIBPROJECTV01] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [VIDEOLIBPROJECTV01] SET  DISABLE_BROKER
GO
ALTER DATABASE [VIDEOLIBPROJECTV01] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [VIDEOLIBPROJECTV01] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [VIDEOLIBPROJECTV01] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [VIDEOLIBPROJECTV01] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [VIDEOLIBPROJECTV01] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [VIDEOLIBPROJECTV01] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [VIDEOLIBPROJECTV01] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [VIDEOLIBPROJECTV01] SET  READ_WRITE
GO
ALTER DATABASE [VIDEOLIBPROJECTV01] SET RECOVERY SIMPLE
GO
ALTER DATABASE [VIDEOLIBPROJECTV01] SET  MULTI_USER
GO
ALTER DATABASE [VIDEOLIBPROJECTV01] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [VIDEOLIBPROJECTV01] SET DB_CHAINING OFF
GO
EXEC sys.sp_db_vardecimal_storage_format N'VIDEOLIBPROJECTV01', N'ON'
GO
USE [VIDEOLIBPROJECTV01]
GO
/****** Object:  Table [dbo].[Member]    Script Date: 05/13/2017 15:15:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Member](
	[MemberID] [int] NOT NULL,
	[MemberLevel] [tinyint] NOT NULL,
	[FirstName] [nchar](30) NOT NULL,
	[LastName] [nchar](30) NOT NULL,
	[ID] [int] NOT NULL,
	[BirthDate] [date] NULL,
	[Street] [nvarchar](50) NULL,
	[City] [nchar](30) NULL,
	[HouseNumber] [smallint] NULL,
	[HomePhone] [int] NULL,
	[MobilePhone] [int] NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Password] [nchar](20) NOT NULL,
	[DaysBalance] [smallint] NOT NULL,
	[MemberSince] [date] NOT NULL,
 CONSTRAINT [PK_Member] PRIMARY KEY CLUSTERED 
(
	[MemberID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Member] ([MemberID], [MemberLevel], [FirstName], [LastName], [ID], [BirthDate], [Street], [City], [HouseNumber], [HomePhone], [MobilePhone], [Email], [Password], [DaysBalance], [MemberSince]) VALUES (1, 1, N'Or                            ', N'Assayag                       ', 36674059, CAST(0x7A0E0B00 AS Date), N'Dov Hoz st', N'Kefar-Saba                    ', 17, 7413880, 2512280, N'diasblo190@walla.co.il', N'diablo190           ', 0, CAST(0xCC310B00 AS Date))
INSERT [dbo].[Member] ([MemberID], [MemberLevel], [FirstName], [LastName], [ID], [BirthDate], [Street], [City], [HouseNumber], [HomePhone], [MobilePhone], [Email], [Password], [DaysBalance], [MemberSince]) VALUES (2, 1, N'Niv                           ', N'Moran Rabin                   ', 34840926, CAST(0xF20F0B00 AS Date), N'Truman Av st', N'Hod-Hasharon                  ', 28, 4533451, 5567834, N'Nivmorabin@gmail.com', N'carboncarbon        ', 0, CAST(0xCC310B00 AS Date))
INSERT [dbo].[Member] ([MemberID], [MemberLevel], [FirstName], [LastName], [ID], [BirthDate], [Street], [City], [HouseNumber], [HomePhone], [MobilePhone], [Email], [Password], [DaysBalance], [MemberSince]) VALUES (3, 1, N'Shahar                        ', N'Arad                          ', 925596611, CAST(0x1F030B00 AS Date), N'Sheshet Ha''Yamim st', N'Rehovot                       ', 102, 3778899, 4578253, N'aradshahar@gmail.com', N'magaser             ', 0, CAST(0xCC310B00 AS Date))
INSERT [dbo].[Member] ([MemberID], [MemberLevel], [FirstName], [LastName], [ID], [BirthDate], [Street], [City], [HouseNumber], [HomePhone], [MobilePhone], [Email], [Password], [DaysBalance], [MemberSince]) VALUES (4, 1, N'Ayelet                        ', N'Yeari                         ', 49809478, CAST(0x54FF0A00 AS Date), N'Hayarden st', N'Sdot-Yam                      ', 34, 4578394, 7766894, N'Niff74@gmail.com', N'nifanifa            ', 0, CAST(0xCC310B00 AS Date))
INSERT [dbo].[Member] ([MemberID], [MemberLevel], [FirstName], [LastName], [ID], [BirthDate], [Street], [City], [HouseNumber], [HomePhone], [MobilePhone], [Email], [Password], [DaysBalance], [MemberSince]) VALUES (5, 2, N'Atzmon                        ', N'Gilahi                        ', 40371163, CAST(0x86240B00 AS Date), N'Hasharon st', N'Hulon                         ', 16, 4458896, 4456787, N'atzmon_ghilai@yahoo.com', N'bishvilAhevre       ', 0, CAST(0xCC310B00 AS Date))
INSERT [dbo].[Member] ([MemberID], [MemberLevel], [FirstName], [LastName], [ID], [BirthDate], [Street], [City], [HouseNumber], [HomePhone], [MobilePhone], [Email], [Password], [DaysBalance], [MemberSince]) VALUES (6, 1, N'Mustafa                       ', N'Masry                         ', 40635518, CAST(0x14050B00 AS Date), N'Hagolan st', N'Yavne                         ', 18, 4456674, 3445323, N'mostafa.masry12@gmail.com', N'mustafa             ', 0, CAST(0xCC310B00 AS Date))
INSERT [dbo].[Member] ([MemberID], [MemberLevel], [FirstName], [LastName], [ID], [BirthDate], [Street], [City], [HouseNumber], [HomePhone], [MobilePhone], [Email], [Password], [DaysBalance], [MemberSince]) VALUES (7, 1, N'Slava                         ', N'Berger                        ', 34410456, CAST(0xD4140B00 AS Date), N'HaGalil st', N'Rannana                       ', 65, 4412334, 9987745, N'yaroslava.berger@gmail.com', N'yaroslava           ', 0, CAST(0xCC310B00 AS Date))
INSERT [dbo].[Member] ([MemberID], [MemberLevel], [FirstName], [LastName], [ID], [BirthDate], [Street], [City], [HouseNumber], [HomePhone], [MobilePhone], [Email], [Password], [DaysBalance], [MemberSince]) VALUES (8, 1, N'Chen                          ', N'Biran                         ', 313090771, CAST(0x00E60A00 AS Date), N'Dgania st', N'Jerusalem                     ', 57, 5778849, 3445667, N'solgar@emailcampaign.co.il', N'biranbiran          ', 0, CAST(0xCC310B00 AS Date))
INSERT [dbo].[Member] ([MemberID], [MemberLevel], [FirstName], [LastName], [ID], [BirthDate], [Street], [City], [HouseNumber], [HomePhone], [MobilePhone], [Email], [Password], [DaysBalance], [MemberSince]) VALUES (9, 1, N'Ben                           ', N'Mor                           ', 313090771, CAST(0xBA040B00 AS Date), N'Hanatsiv st', N'Rishon-Lezion                 ', 8, 4467764, 7789904, N'110mb.server@gmail.com', N'benbenmor           ', 0, CAST(0xCC310B00 AS Date))
INSERT [dbo].[Member] ([MemberID], [MemberLevel], [FirstName], [LastName], [ID], [BirthDate], [Street], [City], [HouseNumber], [HomePhone], [MobilePhone], [Email], [Password], [DaysBalance], [MemberSince]) VALUES (10, 1, N'Shiri                         ', N'Laron                         ', 35931948, CAST(0x9A110B00 AS Date), N'Hahita st', N'Rannana                       ', 78, 3784990, 3443785, N'shirilaron@gmail.com', N'laronshiri          ', 0, CAST(0xCC310B00 AS Date))
INSERT [dbo].[Member] ([MemberID], [MemberLevel], [FirstName], [LastName], [ID], [BirthDate], [Street], [City], [HouseNumber], [HomePhone], [MobilePhone], [Email], [Password], [DaysBalance], [MemberSince]) VALUES (11, 1, N'Gilad                         ', N'Brazily                       ', 53019618, CAST(0x92140B00 AS Date), N'Hamasger', N'Kiryat-Shmona                 ', 13, 6679593, 4789504, N'gilbar11@gmail.com', N'giladbrazilay       ', 0, CAST(0xCC310B00 AS Date))
INSERT [dbo].[Member] ([MemberID], [MemberLevel], [FirstName], [LastName], [ID], [BirthDate], [Street], [City], [HouseNumber], [HomePhone], [MobilePhone], [Email], [Password], [DaysBalance], [MemberSince]) VALUES (12, 1, N'Veronica                      ', N'Loro                          ', 36332591, CAST(0x1F160B00 AS Date), N'Hashayara st', N'Rosh-Pina                     ', 77, 4456678, 4565677, N'beluginav@gmail.com', N'veronica            ', 0, CAST(0xCC310B00 AS Date))
INSERT [dbo].[Member] ([MemberID], [MemberLevel], [FirstName], [LastName], [ID], [BirthDate], [Street], [City], [HouseNumber], [HomePhone], [MobilePhone], [Email], [Password], [DaysBalance], [MemberSince]) VALUES (13, 1, N'Hagai                         ', N'Staif                         ', 31377179, CAST(0x01050B00 AS Date), N'Ahi Eilat st', N'Modiein                       ', 123, 3345567, 3998776, N'hagaystaif@gmail.com', N'kadurim             ', 0, CAST(0xCC310B00 AS Date))
INSERT [dbo].[Member] ([MemberID], [MemberLevel], [FirstName], [LastName], [ID], [BirthDate], [Street], [City], [HouseNumber], [HomePhone], [MobilePhone], [Email], [Password], [DaysBalance], [MemberSince]) VALUES (14, 1, N'Aviv                          ', N'Yarden                        ', 31431075, CAST(0xB3F20A00 AS Date), N'Hahaklaim st', N'Bat-Yam                       ', 10, 6671123, 5567777, N'spring2k@smile.net.il', N'springspring        ', 0, CAST(0xCC310B00 AS Date))
INSERT [dbo].[Member] ([MemberID], [MemberLevel], [FirstName], [LastName], [ID], [BirthDate], [Street], [City], [HouseNumber], [HomePhone], [MobilePhone], [Email], [Password], [DaysBalance], [MemberSince]) VALUES (15, 1, N'Moran                         ', N'Hagby                         ', 323723270, CAST(0xB0010B00 AS Date), N'Hamapoah st', N'Jerusalem                     ', 45, 5768794, 3478757, N'newsletter@havhav.co.il', N'moranran            ', 0, CAST(0xCC310B00 AS Date))
INSERT [dbo].[Member] ([MemberID], [MemberLevel], [FirstName], [LastName], [ID], [BirthDate], [Street], [City], [HouseNumber], [HomePhone], [MobilePhone], [Email], [Password], [DaysBalance], [MemberSince]) VALUES (16, 1, N'Gilat                         ', N'Falah                         ', 40686123, CAST(0x85070B00 AS Date), N'Ha''amelim st', N'Tel-Aviv                      ', 56, 6847384, 4567675, N'gilatf@gmail.com', N'gilaty              ', 0, CAST(0xCC310B00 AS Date))
INSERT [dbo].[Member] ([MemberID], [MemberLevel], [FirstName], [LastName], [ID], [BirthDate], [Street], [City], [HouseNumber], [HomePhone], [MobilePhone], [Email], [Password], [DaysBalance], [MemberSince]) VALUES (17, 1, N'Avi                           ', N'Sheffer                       ', 69012946, CAST(0x2C130B00 AS Date), N'Cabri st', N'Ashkelon                      ', 23, 5768794, 3456785, N'boomerx6@gmail.com', N'cloneable           ', 0, CAST(0xCC310B00 AS Date))
INSERT [dbo].[Member] ([MemberID], [MemberLevel], [FirstName], [LastName], [ID], [BirthDate], [Street], [City], [HouseNumber], [HomePhone], [MobilePhone], [Email], [Password], [DaysBalance], [MemberSince]) VALUES (18, 1, N'David                         ', N'Steinberg                     ', 47560156, CAST(0x00080B00 AS Date), N'Vaizman st', N'Emek-Hefer                    ', 43, 4573984, 3467845, N'devikgol@gmail.com', N'davidi              ', 0, CAST(0xCC310B00 AS Date))
INSERT [dbo].[Member] ([MemberID], [MemberLevel], [FirstName], [LastName], [ID], [BirthDate], [Street], [City], [HouseNumber], [HomePhone], [MobilePhone], [Email], [Password], [DaysBalance], [MemberSince]) VALUES (19, 1, N'Ronen                         ', N'Avramovich                    ', 13939111, CAST(0x5D080B00 AS Date), N'Itshak Ytsiv st', N'Pardes-Hana                   ', 11, 4738563, 4599785, N'1980vk@gmail.com', N'ronakeynan          ', 0, CAST(0xCC310B00 AS Date))
INSERT [dbo].[Member] ([MemberID], [MemberLevel], [FirstName], [LastName], [ID], [BirthDate], [Street], [City], [HouseNumber], [HomePhone], [MobilePhone], [Email], [Password], [DaysBalance], [MemberSince]) VALUES (20, 1, N'Boris                         ', N'Selitin                       ', 16566184, CAST(0x87D40A00 AS Date), N'Josef Levi st', N'Ashkelon                      ', 89, 4578263, 2235534, N'btseitin@hotmail.com', N'borisboris          ', 0, CAST(0xCC310B00 AS Date))
INSERT [dbo].[Member] ([MemberID], [MemberLevel], [FirstName], [LastName], [ID], [BirthDate], [Street], [City], [HouseNumber], [HomePhone], [MobilePhone], [Email], [Password], [DaysBalance], [MemberSince]) VALUES (21, 1, N'Vlad                          ', N'Validovich                    ', 29246899, CAST(0xB0FF0A00 AS Date), N'Henrietah Sold st', N'Bat-Yam                       ', 99, 4576634, 3467674, N'Support@Brinkster.com', N'nofacebook          ', 0, CAST(0xCC310B00 AS Date))
INSERT [dbo].[Member] ([MemberID], [MemberLevel], [FirstName], [LastName], [ID], [BirthDate], [Street], [City], [HouseNumber], [HomePhone], [MobilePhone], [Email], [Password], [DaysBalance], [MemberSince]) VALUES (22, 1, N'Carolina                      ', N'bulansky                      ', 25666306, CAST(0xC3160B00 AS Date), N'Itshak Ben Zvi st', N'Hertzelia                     ', 12, 5867463, 3489577, N'carobulansky@hotmail.com', N'carolina            ', 0, CAST(0xCC310B00 AS Date))
INSERT [dbo].[Member] ([MemberID], [MemberLevel], [FirstName], [LastName], [ID], [BirthDate], [Street], [City], [HouseNumber], [HomePhone], [MobilePhone], [Email], [Password], [DaysBalance], [MemberSince]) VALUES (23, 1, N'Sagi                          ', N'Hazut                         ', 50011071, CAST(0x69C80A00 AS Date), N'HaKongres st', N'Dimona                        ', 67, 3478364, 3968744, N'admin@microsoft.com', N'taseetmashenahon    ', 0, CAST(0xCC310B00 AS Date))
INSERT [dbo].[Member] ([MemberID], [MemberLevel], [FirstName], [LastName], [ID], [BirthDate], [Street], [City], [HouseNumber], [HomePhone], [MobilePhone], [Email], [Password], [DaysBalance], [MemberSince]) VALUES (24, 1, N'Hilik                         ', N'Mizrahi                       ', 59850933, CAST(0x432F0B00 AS Date), N'Rokah st', N'Tel-Aviv                      ', 78, 2735545, 8965774, N'accounts-noreply@google.com', N'mizrahifriends      ', 0, CAST(0xCC310B00 AS Date))
INSERT [dbo].[Member] ([MemberID], [MemberLevel], [FirstName], [LastName], [ID], [BirthDate], [Street], [City], [HouseNumber], [HomePhone], [MobilePhone], [Email], [Password], [DaysBalance], [MemberSince]) VALUES (25, 1, N'Yonatan                       ', N'Geffen                        ', 25666306, CAST(0x8E180B00 AS Date), N'Moshe Sharet st', N'Petah-Tikva                   ', 34, 5756634, 5687463, N'bigger1@zahav.net.il', N'yoni1965            ', 0, CAST(0xCC310B00 AS Date))
INSERT [dbo].[Member] ([MemberID], [MemberLevel], [FirstName], [LastName], [ID], [BirthDate], [Street], [City], [HouseNumber], [HomePhone], [MobilePhone], [Email], [Password], [DaysBalance], [MemberSince]) VALUES (26, 1, N'Nataly                        ', N'Malul                         ', 51685618, CAST(0x61EB0A00 AS Date), N'Ha''Gdud Ha''Ivry st', N'Natanya                       ', 89, 4577466, 3463749, N'nataliep@hi-tech.co.il', N'natalyn             ', 0, CAST(0xCC310B00 AS Date))
INSERT [dbo].[Member] ([MemberID], [MemberLevel], [FirstName], [LastName], [ID], [BirthDate], [Street], [City], [HouseNumber], [HomePhone], [MobilePhone], [Email], [Password], [DaysBalance], [MemberSince]) VALUES (27, 1, N'Nufar                         ', N'Shokler                       ', 53599635, CAST(0x71E50A00 AS Date), N'Ha''Rav Kook st', N'Rishon-Lezion                 ', 8, 3264576, 5489773, N'accounts-noreply@google.com', N'nufarar             ', 0, CAST(0xCC310B00 AS Date))
INSERT [dbo].[Member] ([MemberID], [MemberLevel], [FirstName], [LastName], [ID], [BirthDate], [Street], [City], [HouseNumber], [HomePhone], [MobilePhone], [Email], [Password], [DaysBalance], [MemberSince]) VALUES (28, 1, N'Dana                          ', N'Rozensal                      ', 54528997, CAST(0xFF080B00 AS Date), N'Goshen Av st', N'Sderot                        ', 9, 7689948, 5877663, N'no-reply@mekusharim.co.il', N'snirrozensal        ', 0, CAST(0xCC310B00 AS Date))
INSERT [dbo].[Member] ([MemberID], [MemberLevel], [FirstName], [LastName], [ID], [BirthDate], [Street], [City], [HouseNumber], [HomePhone], [MobilePhone], [Email], [Password], [DaysBalance], [MemberSince]) VALUES (29, 1, N'Jack                          ', N'Brown                         ', 15551641, CAST(0xC3F20A00 AS Date), N'Ha''Agama st', N'Metula                        ', 95, 2373646, 4732766, N'fedex@datator.com', N'dfgdf               ', 0, CAST(0xCC310B00 AS Date))
INSERT [dbo].[Member] ([MemberID], [MemberLevel], [FirstName], [LastName], [ID], [BirthDate], [Street], [City], [HouseNumber], [HomePhone], [MobilePhone], [Email], [Password], [DaysBalance], [MemberSince]) VALUES (30, 1, N'Tom                           ', N'White                         ', 50477850, CAST(0x76130B00 AS Date), N'Ahavat Zion st', N'Ofakim                        ', 37, 4589773, 4397734, N'webmaster@realforum.co.il', N'fcvdegr             ', 0, CAST(0xCC310B00 AS Date))
INSERT [dbo].[Member] ([MemberID], [MemberLevel], [FirstName], [LastName], [ID], [BirthDate], [Street], [City], [HouseNumber], [HomePhone], [MobilePhone], [Email], [Password], [DaysBalance], [MemberSince]) VALUES (31, 1, N'Michael                       ', N'Green                         ', 39208269, CAST(0xA3230B00 AS Date), N'Haim Arlozerov st', N'Bear-Sheva                    ', 76, 4573865, 5837374, N'news@adrenalin.co.il', N'vfgrd               ', 0, CAST(0xCC310B00 AS Date))
INSERT [dbo].[Member] ([MemberID], [MemberLevel], [FirstName], [LastName], [ID], [BirthDate], [Street], [City], [HouseNumber], [HomePhone], [MobilePhone], [Email], [Password], [DaysBalance], [MemberSince]) VALUES (32, 1, N'George                        ', N'Gold                          ', 39774278, CAST(0xF9210B00 AS Date), N'Yavne st', N'Hulon                         ', 46, 4578636, 3487624, N'contact@Jobby.co.il', N'jyuyujy             ', 0, CAST(0xCC310B00 AS Date))
INSERT [dbo].[Member] ([MemberID], [MemberLevel], [FirstName], [LastName], [ID], [BirthDate], [Street], [City], [HouseNumber], [HomePhone], [MobilePhone], [Email], [Password], [DaysBalance], [MemberSince]) VALUES (33, 1, N'Johnnie                       ', N'Brown                         ', 73664849, CAST(0x50200B00 AS Date), N'Haim N Bialik st', N'Lud                           ', 78, 7836647, 2378574, N'localsale@local.co.il', N'asfdsf              ', 0, CAST(0xCC310B00 AS Date))
INSERT [dbo].[Member] ([MemberID], [MemberLevel], [FirstName], [LastName], [ID], [BirthDate], [Street], [City], [HouseNumber], [HomePhone], [MobilePhone], [Email], [Password], [DaysBalance], [MemberSince]) VALUES (34, 1, N'Andy                          ', N'Silverstein                   ', 73664849, CAST(0x031F0B00 AS Date), N'Golda Meir st', N'Yahud                         ', 94, 4784566, 3489573, N'my-login-request@yahoo-inc.com', N'jkuicv              ', 0, CAST(0xCC310B00 AS Date))
INSERT [dbo].[Member] ([MemberID], [MemberLevel], [FirstName], [LastName], [ID], [BirthDate], [Street], [City], [HouseNumber], [HomePhone], [MobilePhone], [Email], [Password], [DaysBalance], [MemberSince]) VALUES (35, 1, N'Mandy                         ', N'Smith                         ', 54630215, CAST(0xD31D0B00 AS Date), N'Hakibutzim st', N'Kibutz Givat Brener           ', 16, 5698604, 5489743, N'YourMatches@cupid.co.il', N'vsdfs               ', 0, CAST(0xCC310B00 AS Date))
INSERT [dbo].[Member] ([MemberID], [MemberLevel], [FirstName], [LastName], [ID], [BirthDate], [Street], [City], [HouseNumber], [HomePhone], [MobilePhone], [Email], [Password], [DaysBalance], [MemberSince]) VALUES (36, 1, N'Irene                         ', N'Johnson                       ', 55685507, CAST(0x861C0B00 AS Date), N'Igal Yadin st', N'Yeruham                       ', 24, 3492384, 2377456, N'shaaon23@gmail.com', N'awefrg              ', 0, CAST(0xCC310B00 AS Date))
INSERT [dbo].[Member] ([MemberID], [MemberLevel], [FirstName], [LastName], [ID], [BirthDate], [Street], [City], [HouseNumber], [HomePhone], [MobilePhone], [Email], [Password], [DaysBalance], [MemberSince]) VALUES (37, 1, N'Mickey                        ', N'Jackson                       ', 56641053, CAST(0x1A1B0B00 AS Date), N'Varod Eimo st', N'Kefar-Saba                    ', 55, 3786574, 5832787, N'fedex@weingarten.com', N'ghnjbhdf            ', 0, CAST(0xCC310B00 AS Date))
INSERT [dbo].[Member] ([MemberID], [MemberLevel], [FirstName], [LastName], [ID], [BirthDate], [Street], [City], [HouseNumber], [HomePhone], [MobilePhone], [Email], [Password], [DaysBalance], [MemberSince]) VALUES (38, 1, N'Jermey                        ', N'Black                         ', 57372864, CAST(0xAF190B00 AS Date), N'Tisling st', N'Hod-Hasharon                  ', 67, 2894765, 3489348, N'news@adrenalin.co.il', N'dfver               ', 0, CAST(0xCC310B00 AS Date))
INSERT [dbo].[Member] ([MemberID], [MemberLevel], [FirstName], [LastName], [ID], [BirthDate], [Street], [City], [HouseNumber], [HomePhone], [MobilePhone], [Email], [Password], [DaysBalance], [MemberSince]) VALUES (39, 1, N'Monica                        ', N'Bloom                         ', 58224452, CAST(0x61180B00 AS Date), N'Ana Frank st', N'Ramat-Gan                     ', 33, 4578457, 5984437, N'newsletter@nomind.co.il', N'ikufb               ', 0, CAST(0xCC310B00 AS Date))
INSERT [dbo].[Member] ([MemberID], [MemberLevel], [FirstName], [LastName], [ID], [BirthDate], [Street], [City], [HouseNumber], [HomePhone], [MobilePhone], [Email], [Password], [DaysBalance], [MemberSince]) VALUES (40, 1, N'Dominic                       ', N'Howard                        ', 59035394, CAST(0x13170B00 AS Date), N'Hashaish st', N'Afula                         ', 102, 3473665, 3278745, N'mailer@midgam.com', N'vrsfer              ', 0, CAST(0xCC310B00 AS Date))
INSERT [dbo].[Member] ([MemberID], [MemberLevel], [FirstName], [LastName], [ID], [BirthDate], [Street], [City], [HouseNumber], [HomePhone], [MobilePhone], [Email], [Password], [DaysBalance], [MemberSince]) VALUES (41, 1, N'Mattew                        ', N'Bellamy                       ', 61208815, CAST(0x59140B00 AS Date), N'Hasnunit st', N'Beit-Shean                    ', 68, 7764556, 3487478, N'sevice@newloto.com', N'thtryhjut           ', 0, CAST(0xCC310B00 AS Date))
INSERT [dbo].[Member] ([MemberID], [MemberLevel], [FirstName], [LastName], [ID], [BirthDate], [Street], [City], [HouseNumber], [HomePhone], [MobilePhone], [Email], [Password], [DaysBalance], [MemberSince]) VALUES (42, 1, N'Chris                         ', N'Wholstenholm                  ', 36176899, CAST(0x0B130B00 AS Date), N'H. Livik st', N'Ramat-Efal                    ', 31, 3478797, 4347826, N'clalit.online@clalit.org.il', N'swe4dfg             ', 0, CAST(0xCC310B00 AS Date))
INSERT [dbo].[Member] ([MemberID], [MemberLevel], [FirstName], [LastName], [ID], [BirthDate], [Street], [City], [HouseNumber], [HomePhone], [MobilePhone], [Email], [Password], [DaysBalance], [MemberSince]) VALUES (43, 1, N'Brithey                       ', N'Spears                        ', 851611053, CAST(0xBB110B00 AS Date), N'Ha''arazim st', N'Bney-Brak                     ', 79, 4578687, 2748569, N'bidurit.com@gmail.com', N'geru76              ', 0, CAST(0xCC310B00 AS Date))
INSERT [dbo].[Member] ([MemberID], [MemberLevel], [FirstName], [LastName], [ID], [BirthDate], [Street], [City], [HouseNumber], [HomePhone], [MobilePhone], [Email], [Password], [DaysBalance], [MemberSince]) VALUES (44, 1, N'Christina                     ', N'Aguilera                      ', 40153306, CAST(0x6E100B00 AS Date), N'Herbert Samuel st', N'Zihron-Yakov                  ', 44, 3487576, 5267465, N'all4spy@gmail.com', N'sdrger7             ', 0, CAST(0xCC310B00 AS Date))
INSERT [dbo].[Member] ([MemberID], [MemberLevel], [FirstName], [LastName], [ID], [BirthDate], [Street], [City], [HouseNumber], [HomePhone], [MobilePhone], [Email], [Password], [DaysBalance], [MemberSince]) VALUES (45, 1, N'Magen                         ', N'Fox                           ', 40814246, CAST(0x200F0B00 AS Date), N'Sde Boker st', N'Savion                        ', 11, 3487967, 2378366, N'nomind2-help@nomind-list.secured.co.il', N'sdfer1988           ', 0, CAST(0xCC310B00 AS Date))
INSERT [dbo].[Member] ([MemberID], [MemberLevel], [FirstName], [LastName], [ID], [BirthDate], [Street], [City], [HouseNumber], [HomePhone], [MobilePhone], [Email], [Password], [DaysBalance], [MemberSince]) VALUES (46, 1, N'Jimmie                        ', N'King                          ', 66097676, CAST(0xB40D0B00 AS Date), N'Barzilay st', N'Reout                         ', 89, 2378645, 2387578, N'admin@viagra.com', N'jygfhf889           ', 0, CAST(0xCC310B00 AS Date))
INSERT [dbo].[Member] ([MemberID], [MemberLevel], [FirstName], [LastName], [ID], [BirthDate], [Street], [City], [HouseNumber], [HomePhone], [MobilePhone], [Email], [Password], [DaysBalance], [MemberSince]) VALUES (47, 1, N'Moe                           ', N'Lester                        ', 40480170, CAST(0x660C0B00 AS Date), N'Joseph Batzri st', N'Maale Adumim                  ', 29, 8283745, 5895347, N'info@flix.co.il', N'grtghftr78          ', 0, CAST(0xCC310B00 AS Date))
INSERT [dbo].[Member] ([MemberID], [MemberLevel], [FirstName], [LastName], [ID], [BirthDate], [Street], [City], [HouseNumber], [HomePhone], [MobilePhone], [Email], [Password], [DaysBalance], [MemberSince]) VALUES (48, 1, N'Moe                           ', N'Rocca                         ', 60684412, CAST(0x180B0B00 AS Date), N'Ha''eshel st', N'Tzfat                         ', 92, 1765776, 2634759, N'roni@letlive.org.il', N'sdfsdvddd67         ', 0, CAST(0xCC310B00 AS Date))
INSERT [dbo].[Member] ([MemberID], [MemberLevel], [FirstName], [LastName], [ID], [BirthDate], [Street], [City], [HouseNumber], [HomePhone], [MobilePhone], [Email], [Password], [DaysBalance], [MemberSince]) VALUES (49, 1, N'Mr                            ', N'Bates                         ', 306430851, CAST(0xCB090B00 AS Date), N'Hakitor st', N'Ramat Gan                     ', 7, 3475788, 2764785, N'confirm@avg.com', N'dsgfdrge            ', 0, CAST(0xCC310B00 AS Date))
INSERT [dbo].[Member] ([MemberID], [MemberLevel], [FirstName], [LastName], [ID], [BirthDate], [Street], [City], [HouseNumber], [HomePhone], [MobilePhone], [Email], [Password], [DaysBalance], [MemberSince]) VALUES (50, 1, N'Natalie                       ', N'Drest                         ', 307518852, CAST(0x7E080B00 AS Date), N'Jacob Katz st', N'Petah Tikva                   ', 187, 9805885, 6569489, N'admin@newloto.com', N'dfgdfgd1985         ', 0, CAST(0xCC310B00 AS Date))
INSERT [dbo].[Member] ([MemberID], [MemberLevel], [FirstName], [LastName], [ID], [BirthDate], [Street], [City], [HouseNumber], [HomePhone], [MobilePhone], [Email], [Password], [DaysBalance], [MemberSince]) VALUES (51, 1, N'Howie                         ', N'Diddot                        ', 39033345, CAST(0x2F070B00 AS Date), N'Torah Ve''Avodah st', N'Ashdod                        ', 47, 4568994, 3278595, N'support@symantec.com', N'dfgdghd1966         ', 0, CAST(0xCC310B00 AS Date))
INSERT [dbo].[Member] ([MemberID], [MemberLevel], [FirstName], [LastName], [ID], [BirthDate], [Street], [City], [HouseNumber], [HomePhone], [MobilePhone], [Email], [Password], [DaysBalance], [MemberSince]) VALUES (52, 1, N'Hugh                          ', N'DeMann                        ', 37706835, CAST(0xE2050B00 AS Date), N'Yehiam st', N'Rehovot                       ', 83, 4375867, 2387586, N'joblist@012.net.il', N'dfgdfggggggggg      ', 0, CAST(0xCC310B00 AS Date))
INSERT [dbo].[Member] ([MemberID], [MemberLevel], [FirstName], [LastName], [ID], [BirthDate], [Street], [City], [HouseNumber], [HomePhone], [MobilePhone], [Email], [Password], [DaysBalance], [MemberSince]) VALUES (53, 1, N'Hugh                          ', N'Flung Poo                     ', 66034042, CAST(0x94040B00 AS Date), N'HaPlugot st', N'Tel-Aviv                      ', 61, 3478886, 4568954, N'rashedboa@libero.it', N'ffttghgf1955        ', 0, CAST(0xCC310B00 AS Date))
INSERT [dbo].[Member] ([MemberID], [MemberLevel], [FirstName], [LastName], [ID], [BirthDate], [Street], [City], [HouseNumber], [HomePhone], [MobilePhone], [Email], [Password], [DaysBalance], [MemberSince]) VALUES (54, 1, N'Hugh                          ', N'G. Rection                    ', 911065944, CAST(0xD9010B00 AS Date), N'Homa Vemigdal st', N'Oranim                        ', 12, 9984577, 2378586, N'IsraGateIsraG@gmail.com', N'ffggg455            ', 0, CAST(0xCC310B00 AS Date))
INSERT [dbo].[Member] ([MemberID], [MemberLevel], [FirstName], [LastName], [ID], [BirthDate], [Street], [City], [HouseNumber], [HomePhone], [MobilePhone], [Email], [Password], [DaysBalance], [MemberSince]) VALUES (55, 1, N'Jim                           ', N'Shoe                          ', 60640794, CAST(0x8C000B00 AS Date), N'Dov Frumer st', N'Beit-Shean                    ', 78, 3667485, 6534785, N'orassyag@walla.co.il', N'ret44ddd            ', 0, CAST(0xCC310B00 AS Date))
INSERT [dbo].[Member] ([MemberID], [MemberLevel], [FirstName], [LastName], [ID], [BirthDate], [Street], [City], [HouseNumber], [HomePhone], [MobilePhone], [Email], [Password], [DaysBalance], [MemberSince]) VALUES (56, 1, N'Jim                           ', N'Nasium                        ', 39120068, CAST(0x3CFF0A00 AS Date), N'Eliseva Kaplan st', N'Tverya                        ', 98, 5893476, 2387586, N'hahaha@intermail.co.il', N'tghrth555           ', 0, CAST(0xCC310B00 AS Date))
INSERT [dbo].[Member] ([MemberID], [MemberLevel], [FirstName], [LastName], [ID], [BirthDate], [Street], [City], [HouseNumber], [HomePhone], [MobilePhone], [Email], [Password], [DaysBalance], [MemberSince]) VALUES (57, 1, N'Keisha                        ', N'Mei Ash                       ', 38770871, CAST(0xEFFD0A00 AS Date), N'Bar Ilan st', N'Eilat                         ', 56, 6589743, 2367465, N'natalieb1986@walla.com', N'hjkuikui778         ', 0, CAST(0xCC310B00 AS Date))
INSERT [dbo].[Member] ([MemberID], [MemberLevel], [FirstName], [LastName], [ID], [BirthDate], [Street], [City], [HouseNumber], [HomePhone], [MobilePhone], [Email], [Password], [DaysBalance], [MemberSince]) VALUES (58, 1, N'Dwayne                        ', N'Pipe                          ', 39349238, CAST(0xB8F80A00 AS Date), N'Josef Busell st', N'Rannana                       ', 79, 4378663, 2358688, N'danisolutions@haper.com', N'xdeee1990           ', 0, CAST(0xCC310B00 AS Date))
INSERT [dbo].[Member] ([MemberID], [MemberLevel], [FirstName], [LastName], [ID], [BirthDate], [Street], [City], [HouseNumber], [HomePhone], [MobilePhone], [Email], [Password], [DaysBalance], [MemberSince]) VALUES (59, 1, N'Denise                        ', N'R. Nockin                     ', 37706835, CAST(0x6BF70A00 AS Date), N'Shar Yeshuv st', N'Rishon-Lezion                 ', 36, 4763234, 3489569, N'editor@tapuz.co.il', N'fgtrttt234          ', 0, CAST(0xCC310B00 AS Date))
INSERT [dbo].[Member] ([MemberID], [MemberLevel], [FirstName], [LastName], [ID], [BirthDate], [Street], [City], [HouseNumber], [HomePhone], [MobilePhone], [Email], [Password], [DaysBalance], [MemberSince]) VALUES (60, 1, N'Dennis                        ', N'Toffice                       ', 39609631, CAST(0x1CF60A00 AS Date), N'Haluzey HaTa''asiyah st', N'Natanya                       ', 34, 4783663, 3495723, N'michalg10@yahoo.com', N'fddsdaaw12333       ', 0, CAST(0xCC310B00 AS Date))
INSERT [dbo].[Member] ([MemberID], [MemberLevel], [FirstName], [LastName], [ID], [BirthDate], [Street], [City], [HouseNumber], [HomePhone], [MobilePhone], [Email], [Password], [DaysBalance], [MemberSince]) VALUES (61, 1, N'Chris                         ', N'Biddick                       ', 40153306, CAST(0xCFF40A00 AS Date), N'Herev Le''et st', N'Kiryat-Gat                    ', 15, 3487898, 3494583, N'news-help@oshovilina.com', N'vccvdff6778         ', 0, CAST(0xCC310B00 AS Date))
INSERT [dbo].[Member] ([MemberID], [MemberLevel], [FirstName], [LastName], [ID], [BirthDate], [Street], [City], [HouseNumber], [HomePhone], [MobilePhone], [Email], [Password], [DaysBalance], [MemberSince]) VALUES (62, 1, N'Dixie                         ', N'Normous                       ', 200155158, CAST(0x81F30A00 AS Date), N'Shitat Ashakshuka st', N'Yokneam                       ', 69, 3476623, 3484543, N'jobslist@barak.net.il', N'sseettt9883         ', 0, CAST(0xCC310B00 AS Date))
INSERT [dbo].[Member] ([MemberID], [MemberLevel], [FirstName], [LastName], [ID], [BirthDate], [Street], [City], [HouseNumber], [HomePhone], [MobilePhone], [Email], [Password], [DaysBalance], [MemberSince]) VALUES (63, 1, N'Eileen                        ', N'Left                          ', 64979768, CAST(0xC6F00A00 AS Date), N'Varurg Av st', N'Carmiel                       ', 57, 8857734, 4587494, N'cvjob@012.net.il', N'fggf5667            ', 0, CAST(0xCC310B00 AS Date))
INSERT [dbo].[Member] ([MemberID], [MemberLevel], [FirstName], [LastName], [ID], [BirthDate], [Street], [City], [HouseNumber], [HomePhone], [MobilePhone], [Email], [Password], [DaysBalance], [MemberSince]) VALUES (64, 1, N'Eileen                        ', N'Uhlik                         ', 39409040, CAST(0x5CEF0A00 AS Date), N'Zalman Aran st', N'Shoam                         ', 36, 4635527, 3473478, N'seker@tapuz.co.il', N'cvvjuju             ', 0, CAST(0xCC310B00 AS Date))
INSERT [dbo].[Member] ([MemberID], [MemberLevel], [FirstName], [LastName], [ID], [BirthDate], [Street], [City], [HouseNumber], [HomePhone], [MobilePhone], [Email], [Password], [DaysBalance], [MemberSince]) VALUES (65, 1, N'Eileen                        ', N'Dover                         ', 60640794, CAST(0x0CEE0A00 AS Date), N'Habniya st', N'Hadera                        ', 80, 3499885, 1266345, N'freshma@bezeqint.net', N'hjjgjyuk            ', 0, CAST(0xCC310B00 AS Date))
INSERT [dbo].[Member] ([MemberID], [MemberLevel], [FirstName], [LastName], [ID], [BirthDate], [Street], [City], [HouseNumber], [HomePhone], [MobilePhone], [Email], [Password], [DaysBalance], [MemberSince]) VALUES (66, 1, N'Jack                          ', N'Mehoff                        ', 200475846, CAST(0xBFEC0A00 AS Date), N'Hayetszira st', N'Haifa                         ', 35, 3777885, 3476945, N'info@nitzanpharm.com', N'dfbverdg66777888    ', 0, CAST(0xCC310B00 AS Date))
INSERT [dbo].[Member] ([MemberID], [MemberLevel], [FirstName], [LastName], [ID], [BirthDate], [Street], [City], [HouseNumber], [HomePhone], [MobilePhone], [Email], [Password], [DaysBalance], [MemberSince]) VALUES (67, 1, N'May                           ', N'Flowers                       ', 66370016, CAST(0x71EB0A00 AS Date), N'HaHermon st', N'Haifa                         ', 38, 9297878, 5465745, N'info@adrenalin.co.il', N'dfgdfgdsdtr555      ', 0, CAST(0xCC310B00 AS Date))
INSERT [dbo].[Member] ([MemberID], [MemberLevel], [FirstName], [LastName], [ID], [BirthDate], [Street], [City], [HouseNumber], [HomePhone], [MobilePhone], [Email], [Password], [DaysBalance], [MemberSince]) VALUES (100, 1, N'Atzmon                        ', N'Ghilai                        ', 54197157, CAST(0x89240B00 AS Date), N'Sireni', N'Holon                         ', 28, 777025500, 522025500, N'atzmon_ghilai@yahoo.com', N'kuku                ', -178, CAST(0xCC310B00 AS Date))
INSERT [dbo].[Member] ([MemberID], [MemberLevel], [FirstName], [LastName], [ID], [BirthDate], [Street], [City], [HouseNumber], [HomePhone], [MobilePhone], [Email], [Password], [DaysBalance], [MemberSince]) VALUES (101, 1, N'Israel                        ', N'Israeli                       ', 54197157, NULL, N'', N'                              ', NULL, NULL, 502025500, N'', N'kuku                ', 0, CAST(0xD0310B00 AS Date))
INSERT [dbo].[Member] ([MemberID], [MemberLevel], [FirstName], [LastName], [ID], [BirthDate], [Street], [City], [HouseNumber], [HomePhone], [MobilePhone], [Email], [Password], [DaysBalance], [MemberSince]) VALUES (102, 1, N'Israel                        ', N'Israeli                       ', 54197157, NULL, N'', N'                              ', NULL, NULL, 502025500, N'', N'kuku                ', 0, CAST(0xD0310B00 AS Date))
INSERT [dbo].[Member] ([MemberID], [MemberLevel], [FirstName], [LastName], [ID], [BirthDate], [Street], [City], [HouseNumber], [HomePhone], [MobilePhone], [Email], [Password], [DaysBalance], [MemberSince]) VALUES (234, 1, N'jhg                           ', N'asd                           ', 234456456, CAST(0x42250B00 AS Date), N'xdf', N'e                             ', 1, 35515252, 505515252, N'sdf@sdf.com', N'345                 ', 0, CAST(0x19320B00 AS Date))
/****** Object:  Table [dbo].[Country]    Script Date: 05/13/2017 15:15:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Country](
	[CountryID] [smallint] NOT NULL,
	[CountryName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Country] PRIMARY KEY CLUSTERED 
(
	[CountryID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (1, N'Afghanistan')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (2, N'Aland (Aland) Islands')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (3, N'Albania')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (4, N'Algeria')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (5, N'American Samoa')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (6, N'Andorra')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (7, N'Angola')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (8, N'Anguilla')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (9, N'Antigua and Barbuda')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (10, N'Argentina')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (11, N'Armenia')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (12, N'Aruba')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (13, N'Australia')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (14, N'Austria')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (15, N'Azerbaijan')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (16, N'Bahamas')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (17, N'Bahrain')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (18, N'Bangladesh')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (19, N'Barbados')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (20, N'Belarus')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (21, N'Belgium')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (22, N'Belize')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (23, N'Benin')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (24, N'Bermuda')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (25, N'Bhutan')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (26, N'Bolivia')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (27, N'Bosnia and Herzegovina')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (28, N'Botswana')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (29, N'Bouvet Island (sub-Antarctic)')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (30, N'Brazil')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (31, N'British Indian Ocean Territory (BIOT)')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (32, N'British Virgin Islands')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (33, N'Brunei Darussalam')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (34, N'Bulgaria')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (35, N'Burkina Faso')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (36, N'Burundi')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (37, N'Cambodia')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (38, N'Cameroon')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (39, N'Canada')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (40, N'Cape Verde')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (41, N'Cayman Islands')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (42, N'Central African Republic')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (43, N'Chad')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (44, N'Chile')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (45, N'China')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (46, N'Christmas Island (Indian Ocean)')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (47, N'Cocos (Keeling) Islands')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (48, N'Colombia')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (49, N'Comoros')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (50, N'Congo')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (51, N'Congo')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (52, N'Cook Islands')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (53, N'Costa Rica')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (54, N'Cote d`Ivoire (Ivory Coast)')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (55, N'Croatia')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (56, N'Cuba')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (57, N'Cyprus')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (58, N'Czech Republic')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (59, N'Denmark')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (60, N'Djibouti')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (61, N'Dominica')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (62, N'Dominican Republic')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (63, N'Ecuador')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (64, N'Egypt')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (65, N'El Salvador')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (66, N'Equatorial Guinea')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (67, N'Eritrea')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (68, N'Estonia')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (69, N'Ethiopia')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (70, N'Falkland Islands (Malvinas) (sub-Antarctic)')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (71, N'Faroe Islands')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (72, N'Fiji')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (73, N'Finland')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (74, N'France')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (75, N'French Guiana')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (76, N'French Polynesia (Polyn?sie Fran?aise)')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (77, N'French Southern Territories')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (78, N'Gabon')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (79, N'Gambia')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (80, N'Georgia')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (81, N'Germany')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (82, N'Ghana')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (83, N'Gibraltar')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (84, N'Greece')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (85, N'Greenland')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (86, N'Grenada')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (87, N'Guadeloupe')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (88, N'Guam')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (89, N'Guatemala')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (90, N'Guernsey')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (91, N'Guinea')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (92, N'Guinea-Bissau')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (93, N'Guyana')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (94, N'Haiti')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (95, N'Heard Island and McDonald Islands (sub-Antarctic)')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (96, N'Holy See (Vatican City State)')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (97, N'Honduras')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (98, N'Hong Kong')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (99, N'Hungary')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (100, N'Iceland')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (101, N'India')
GO
print 'Processed 100 total records'
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (102, N'Indonesia')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (103, N'Iran')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (104, N'Iraq')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (105, N'Ireland')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (106, N'Isle of Man')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (107, N'Israel')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (108, N'Italy')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (109, N'Jamaica')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (110, N'Japan')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (111, N'Jersey')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (112, N'Jordan')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (113, N'Kazakhstan')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (114, N'Kenya')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (115, N'Kiribati')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (116, N'Korea')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (117, N'Korea')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (118, N'Kuwait')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (119, N'Kyrgyzstan')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (120, N'Lao People`s Democratic Republic')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (121, N'Latvia')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (122, N'Lebanon')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (123, N'Lesotho')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (124, N'Liberia')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (125, N'Libyan Arab Jamahiriya')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (126, N'Liechtenstein')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (127, N'Lithuania')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (128, N'Luxembourg')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (129, N'Macao (Macau)')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (130, N'Macedonia')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (131, N'Madagascar')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (132, N'Malawi')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (133, N'Malaysia')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (134, N'Maldives')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (135, N'Mali')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (136, N'Malta')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (137, N'Marshall Islands')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (138, N'Martinique')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (139, N'Mauritania')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (140, N'Mauritius')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (141, N'Mayotte')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (142, N'Mexico')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (143, N'Micronesia')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (144, N'Moldova')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (145, N'Monaco')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (146, N'Mongolia')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (147, N'Montenegro')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (148, N'Montserrat')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (149, N'Morocco')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (150, N'Mozambique')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (151, N'Myanmar (Burma)')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (152, N'Namibia')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (153, N'Nauru')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (154, N'Nepal')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (155, N'Netherlands')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (156, N'Netherlands Antilles')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (157, N'New Caledonia (Nouvelle Cal?donie)')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (158, N'New Zealand')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (159, N'Nicaragua')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (160, N'Niger')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (161, N'Nigeria')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (162, N'Niue')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (163, N'Norfolk Island')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (164, N'Northern Mariana Islands')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (165, N'Norway')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (166, N'Oman')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (167, N'Pakistan')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (168, N'Palau')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (169, N'Palestinian Territory')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (170, N'Panama')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (171, N'Papua New Guinea')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (172, N'Paraguay')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (173, N'Peru')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (174, N'Philippines')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (175, N'Pitcairn')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (176, N'Poland')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (177, N'Portugal')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (178, N'Puerto Rico')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (179, N'Qatar')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (180, N'Reunion (La R?union)')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (181, N'Romania')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (182, N'Russian Federation')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (183, N'Rwanda')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (184, N'Saint Barthelemy (Saint Barth?lemy)')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (185, N'Saint Helena')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (186, N'Saint Kitts and Nevis')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (187, N'Saint Lucia')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (188, N'Saint Martin (France)')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (189, N'Saint Pierre and Miquelon')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (190, N'Saint Vincent and the Grenadines')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (191, N'Samoa')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (192, N'San Marino')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (193, N'Sao Tome and Principe')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (194, N'Saudi Arabia')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (195, N'Senegal')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (196, N'Serbia')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (197, N'Seychelles')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (198, N'Sierra Leone')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (199, N'Singapore')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (200, N'Slovakia')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (201, N'Slovenia')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (202, N'Solomon Islands')
GO
print 'Processed 200 total records'
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (203, N'Somalia')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (204, N'South Africa')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (205, N'Spain')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (206, N'Sri Lanka')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (207, N'Sth. Georgia and Sth. Sandwich Iss (sub-Antarctic)')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (208, N'Sudan')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (209, N'Suriname')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (210, N'Svalbard and Jan Mayen')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (211, N'Swaziland')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (212, N'Sweden')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (213, N'Switzerland')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (214, N'Syrian Arab Republic')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (215, N'Taiwan')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (216, N'Tajikistan')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (217, N'Tanzania')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (218, N'Thailand')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (219, N'Timor-Leste (East Timor)')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (220, N'Togo')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (221, N'Tokelau')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (222, N'Tonga')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (223, N'Trinidad and Tobago')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (224, N'Tunisia')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (225, N'Turkey')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (226, N'Turkmenistan')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (227, N'Turks and Caicos Islands')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (228, N'Tuvalu')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (229, N'Uganda')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (230, N'Ukraine')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (231, N'United Arab Emirates')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (232, N'United Kingdom (UK)')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (233, N'United States (USA)')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (234, N'United States Minor Outlying Islands')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (235, N'Uruguay')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (236, N'Uzbekistan')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (237, N'Vanuatu')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (238, N'Venezuela')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (239, N'Viet Nam (Vietnam)')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (240, N'Virgin Islands')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (241, N'Wallis and Futuna')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (242, N'Western Sahara')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (243, N'Yemen')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (244, N'Zambia')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (245, N'Zimbabwe')
/****** Object:  Table [dbo].[popular]    Script Date: 05/13/2017 15:15:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[popular](
	[MovieID] [nchar](10) NOT NULL,
	[movieCount] [int] NULL
) ON [PRIMARY]
GO
INSERT [dbo].[popular] ([MovieID], [movieCount]) VALUES (N'R100      ', 12)
INSERT [dbo].[popular] ([MovieID], [movieCount]) VALUES (N'A123      ', 11)
INSERT [dbo].[popular] ([MovieID], [movieCount]) VALUES (N'H148      ', 11)
INSERT [dbo].[popular] ([MovieID], [movieCount]) VALUES (N'A117      ', 10)
INSERT [dbo].[popular] ([MovieID], [movieCount]) VALUES (N'C101      ', 10)
INSERT [dbo].[popular] ([MovieID], [movieCount]) VALUES (N'H153      ', 9)
INSERT [dbo].[popular] ([MovieID], [movieCount]) VALUES (N'A131      ', 7)
INSERT [dbo].[popular] ([MovieID], [movieCount]) VALUES (N'A130      ', 6)
INSERT [dbo].[popular] ([MovieID], [movieCount]) VALUES (N'C138      ', 6)
INSERT [dbo].[popular] ([MovieID], [movieCount]) VALUES (N'C136      ', 5)
/****** Object:  Table [dbo].[MovieType]    Script Date: 05/13/2017 15:15:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MovieType](
	[MovieTypeID] [smallint] NOT NULL,
	[MovieTypeName] [nchar](20) NOT NULL,
 CONSTRAINT [PK_MovieType] PRIMARY KEY CLUSTERED 
(
	[MovieTypeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[MovieType] ([MovieTypeID], [MovieTypeName]) VALUES (1, N'Romance             ')
INSERT [dbo].[MovieType] ([MovieTypeID], [MovieTypeName]) VALUES (2, N'Action              ')
INSERT [dbo].[MovieType] ([MovieTypeID], [MovieTypeName]) VALUES (3, N'Horror              ')
INSERT [dbo].[MovieType] ([MovieTypeID], [MovieTypeName]) VALUES (4, N'Drama               ')
INSERT [dbo].[MovieType] ([MovieTypeID], [MovieTypeName]) VALUES (5, N'Biografy            ')
INSERT [dbo].[MovieType] ([MovieTypeID], [MovieTypeName]) VALUES (6, N'Fantasy             ')
INSERT [dbo].[MovieType] ([MovieTypeID], [MovieTypeName]) VALUES (7, N'Adventure           ')
INSERT [dbo].[MovieType] ([MovieTypeID], [MovieTypeName]) VALUES (8, N'Crime               ')
INSERT [dbo].[MovieType] ([MovieTypeID], [MovieTypeName]) VALUES (9, N'Comedy              ')
INSERT [dbo].[MovieType] ([MovieTypeID], [MovieTypeName]) VALUES (10, N'Mystery             ')
/****** Object:  Table [dbo].[Movie]    Script Date: 05/13/2017 15:15:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Movie](
	[MovieID] [nchar](10) NOT NULL,
	[MovieName] [nvarchar](50) NOT NULL,
	[MovieTypeID] [smallint] NOT NULL,
	[Copies] [smallint] NOT NULL,
	[Summary] [nvarchar](max) NOT NULL,
	[Year] [smallint] NOT NULL,
	[Lenght] [smallint] NOT NULL,
	[CountryID] [smallint] NOT NULL,
	[MoviePicUrl] [nvarchar](max) NOT NULL,
	[TrailerUrl] [nvarchar](max) NOT NULL,
	[Active] [tinyint] NOT NULL,
	[DateAdded] [date] NOT NULL,
 CONSTRAINT [PK_Movie] PRIMARY KEY CLUSTERED 
(
	[MovieID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Movie] ([MovieID], [MovieName], [MovieTypeID], [Copies], [Summary], [Year], [Lenght], [CountryID], [MoviePicUrl], [TrailerUrl], [Active], [DateAdded]) VALUES (N'A103      ', N'Il buono il brutto il cattivo', 2, 1, N'Blondie (The Good) is a professional gunslinger who is out trying to earn a few dollars. Angel Eyes (The Bad) is a hit man who always commits to a task and sees it through as long as he is payed to do so. And Tuco (The Ugly) is a wanted outlaw trying to take care of his own hide. Tuco and Blondie share a partnership together making money off Tuco''s bounty but when Blondie unties the partnership Tuco tries to hunt down Blondie. When Blondie and Tuco comes across a horse carriage loaded with dead bodies they soon learn from the only survivor (Bill Carson) that he and a few other men have buried a stash of gold in a cemetery. Unfortunately Carson dies and Tuco only finds out the name of the cemetery while Blondie finds out the name on the grave. Now the two must keep each other alive in order to find the gold. Angel Eyes (who had been looking for Bill Carson) discovers that Tuco and Blondie meet with Carson and knows they know the location of the gold. All he needs is for the two to lead him to it. Now The Good The Bad and The Ugly must all battle it out to get their hands on $200000 worth of gold', 1967, 177, 233, N'C:\1205home\160809\moviePic\Il buono il brutto il cattivo.jpg', N'http://www.youtube.com/watch?v=E-eEUm3nRQY', 1, CAST(0xCC310B00 AS Date))
INSERT [dbo].[Movie] ([MovieID], [MovieName], [MovieTypeID], [Copies], [Summary], [Year], [Lenght], [CountryID], [MoviePicUrl], [TrailerUrl], [Active], [DateAdded]) VALUES (N'A107      ', N'Star Wars', 2, 1, N'Luke Skywalker stays with his foster aunt and uncle on a farm on Tatooine. He is desperate to get off this planet and get to the Academy like his friends but his uncle needs him for the next harvest. Meanwhile an evil emperor has taken over the galaxy and has constructed a formidable "Death Star" capable of destroying whole planets. Princess Leia a leader in the resistance movement acquires plans of the Death Star places them in R2D2 a droid and sends him off to find Obi-Wan Kenobi. Before he finds him R2D2 ends up on Skywalkers'' farm with his friend C3PO. R2 then wanders into the desert and when Luke follows they eventually come across Obi-Wan. Will Luke Obi-Wan and the two droids be able to destroy the Death Star or will the Emperor rule forever ?', 1977, 124, 233, N'C:\1205home\160809\moviePic\Star Wars.jpg', N'http://www.youtube.com/watch?v=9gvqpFbRKtQ', 1, CAST(0xCC310B00 AS Date))
INSERT [dbo].[Movie] ([MovieID], [MovieName], [MovieTypeID], [Copies], [Summary], [Year], [Lenght], [CountryID], [MoviePicUrl], [TrailerUrl], [Active], [DateAdded]) VALUES (N'A109      ', N'The Bridge over the River Kwai', 2, 1, N'The film deals with the situation of British prisoners of war during World War II who are ordered to build a bridge to accommodate the Burma-Siam railway. Their instinct is to sabotage the bridge but under the leadership of Colonel Nicholson they are persuaded that the bridge should be constructed as a symbol of British morale spirit and dignity in adverse circumstances. At first the prisoners admire Nicholson when he bravely endures torture rather than compromise his principles for the benefit of the Japanese commandant Saito. He is an honorable but arrogant man who is slowly revealed to be a deluded obsessive. He convinces himself that the bridge is a monument to British character but actually is a monument to himself and his insistence on its construction becomes a subtle form of collaboration with the enemy. Unknown to him the Allies have sent a mission into the jungle led by Warden and an American Shears to blow up the bridge', 1957, 161, 233, N'C:\1205home\160809\moviePic\The Bridge over the River Kwai.jpg', N'http://www.youtube.com/watch?v=0nUG0CryIK8', 1, CAST(0xCC310B00 AS Date))
INSERT [dbo].[Movie] ([MovieID], [MovieName], [MovieTypeID], [Copies], [Summary], [Year], [Lenght], [CountryID], [MoviePicUrl], [TrailerUrl], [Active], [DateAdded]) VALUES (N'A117      ', N'Braveheart', 2, 1, N'William Wallace is a Scottish rebel who leads an uprising against the cruel English ruler Edward the Longshanks who wishes to inherit the crown of Scotland for himself. When he was a young boy William Wallace''s father and brother along with many others lost their lives trying to free Scotland. Once he loses another of his loved ones William Wallace begins his long quest to make Scotland free once and for all along with the assistance of Robert the Bruce', 1995, 175, 233, N'C:\1205home\160809\moviePic\Braveheart.jpg', N'http://www.youtube.com/watch?v=vBXBtORI7pE', 1, CAST(0xCC310B00 AS Date))
INSERT [dbo].[Movie] ([MovieID], [MovieName], [MovieTypeID], [Copies], [Summary], [Year], [Lenght], [CountryID], [MoviePicUrl], [TrailerUrl], [Active], [DateAdded]) VALUES (N'A119      ', N'Ben Hur', 2, 1, N'When Prince Judah Ben-Hur hears that his childhood friend Messala has been named to command the Roman garrison of Jerusalem he is thrilled. He soon finds however that his friend has changed and has become an arrogant conqueror full of the grandeur of Rome. When Judah refuses to divulge the names of Jews who oppose Roman rule Messala decides to make an example of him and sends him off as a galley slave. Through fate and good fortune Judah survives the galleys and manages to return to Jerusalem in the hopes of finding his mother and sister who were also imprisoned and to seek revenge against his one-time friend', 1959, 212, 233, N'C:\1205home\160809\moviePic\Ben Hur.jpg', N'http://www.youtube.com/watch?v=8SOT0ofuscU', 1, CAST(0xCC310B00 AS Date))
INSERT [dbo].[Movie] ([MovieID], [MovieName], [MovieTypeID], [Copies], [Summary], [Year], [Lenght], [CountryID], [MoviePicUrl], [TrailerUrl], [Active], [DateAdded]) VALUES (N'A122      ', N'North by Northwest', 2, 1, N'New York advertising executive Roger Thornhill is kidnapped by a gang of spies led by Philip Vandamm who believe Thornhill is CIA agent George Kaplan. Thornhill escapes but must find Kaplan in order to clear himself of a murder it is believed he committed. Following Kaplan to Chicago as a fugitive from justice Thornhill is helped by beautiful Eve Kendall. In Chicago she delivers a message to Kaplan that almost costs Thornhill his life when he is chased across a cornfield by a crop-dusting plane', 1959, 136, 233, N'C:\1205home\160809\moviePic\North by Northwest.jpg', N'http://www.youtube.com/watch?v=HRfmTpmIUwo', 1, CAST(0xCC310B00 AS Date))
INSERT [dbo].[Movie] ([MovieID], [MovieName], [MovieTypeID], [Copies], [Summary], [Year], [Lenght], [CountryID], [MoviePicUrl], [TrailerUrl], [Active], [DateAdded]) VALUES (N'A123      ', N'Apocalypse Now', 2, 1, N'At the height of the Vietnam war experienced soldier and covert operative Captain Benjamin Willard withdraws from a drunken and disheveled state to accept his most daring and secretive mission yet. His objective is to travel down the Nyung river by boat and assassinate a Green Beret Colonel named Kurtz who has gone insane deep within the Jungle and leads his men and a local tribe as a god on illegal guerrilla missions into enemy territory. As Willard and the crew of a Navy PR boat unaware of his objective embark on their journey from the security of civilization into the untamed depths of the jungle Willard confronts not only the same horrors and hypocrisy that pushed the level headed Colonel Kurtz over the edge into an abyss if insanity but the primal violence of human nature and the darkness of his own heart', 1979, 153, 233, N'Apocalypse Now.jpg', N'http://www.youtube.com/watch?v=Tt0xxAMTp8M', 1, CAST(0xCC310B00 AS Date))
INSERT [dbo].[Movie] ([MovieID], [MovieName], [MovieTypeID], [Copies], [Summary], [Year], [Lenght], [CountryID], [MoviePicUrl], [TrailerUrl], [Active], [DateAdded]) VALUES (N'A125      ', N'Raiders of the Lost Ark', 2, 1, N'The year is 1936. A professor who studies archeology named Inidana Jones is venturing in the jungles in South America searching for a golden statue. Unfortunately he sets off a deadly trap doing so miraculously he escapes. Then Jones hears from a museum curator named Marcus Brody about a biblical artifact called The Ark of the Covenant which can hold the key to humanly existence. Jones has to venture to vast places such as Nepal and Egypt to find this artifact. However he will have to fight his enemy Renee Belloq and a band of Nazis in order to reach it.', 1981, 115, 233, N'C:\1205home\160809\moviePic\Raiders of the Lost Ark.jpg', N'http://www.youtube.com/watch?v=1YXw7BxYGMU', 1, CAST(0xCC310B00 AS Date))
INSERT [dbo].[Movie] ([MovieID], [MovieName], [MovieTypeID], [Copies], [Summary], [Year], [Lenght], [CountryID], [MoviePicUrl], [TrailerUrl], [Active], [DateAdded]) VALUES (N'A126      ', N'Fight Club', 2, 1, N'You''re young. You have an easy well-paid deskjob. You have a condo Swedish furniture artistic coffee tables and a fridge full of condiments. Yet you feel emotionally and spiritually empty. You eventually find comfort in going to support groups for lukemia and cancer victims when there''s nothing wrong with you until they''re hijacked from you by another faker. Then you meet Tyler Durden a man that shows you that not only can you live without material needs but that self-destruction the collapse of society and making dynamite from soap might not be such a bad idea either', 1996, 165, 233, N'C:\1205home\160809\moviePic\Fight Club.jpg', N'http://www.youtube.com/watch?v=2QgFWXLN-ug', 1, CAST(0xCC310B00 AS Date))
INSERT [dbo].[Movie] ([MovieID], [MovieName], [MovieTypeID], [Copies], [Summary], [Year], [Lenght], [CountryID], [MoviePicUrl], [TrailerUrl], [Active], [DateAdded]) VALUES (N'A130      ', N'Cidade de Deus', 2, 1, N'Brazil 1960''s City of God. The Tender Trio robs motels and gas trucks. Younger kids watch and learn well...too well. 1970''s: Li''l Z? has prospered very well and owns the city. He causes violence and fear as he wipes out rival gangs without mercy. His best friend Ben? is the only one to keep him on the good side of sanity. Rocket has watched these two gain power for years and he wants no part of it. Yet he keeps getting swept up in the madness. All he wants to do is take pictures. 1980''s: Things are out of control between the last two remaining gangs...will it ever end? Welcome to the City of God', 2002, 130, 30, N'C:\1205home\160809\moviePic\Cidade de Deus.jpg', N'http://www.youtube.com/watch?v=vUf7vhC_ouI', 1, CAST(0xCC310B00 AS Date))
INSERT [dbo].[Movie] ([MovieID], [MovieName], [MovieTypeID], [Copies], [Summary], [Year], [Lenght], [CountryID], [MoviePicUrl], [TrailerUrl], [Active], [DateAdded]) VALUES (N'A131      ', N'Taxi', 2, 1, N'In Marseilles (France) skilled pizza delivery boy Daniel who drives a scooter finally has his dreams come true. He gets a taxi license. Caught by the police for a huge speed infraction he will help Emilien a loser inspector who can''t drive on the track of German bank robbers so he doesn''t lose his license and his dream job', 1998, 86, 74, N'Taxi.jpg', N'http://www.youtube.com/watchv=3BRlKRkZZAo', 1, CAST(0xCC310B00 AS Date))
INSERT [dbo].[Movie] ([MovieID], [MovieName], [MovieTypeID], [Copies], [Summary], [Year], [Lenght], [CountryID], [MoviePicUrl], [TrailerUrl], [Active], [DateAdded]) VALUES (N'A133      ', N'Leon', 2, 1, N'Leon is a first-class hit man but is also a sensitive guy who loves his potted plants. He is moral: "No women no children" is his professional motto. He is sympathetic to his neighbor Mathilda a typically rebellious twelve-year-old who has trouble with her family. But when her father runs afoul of drug kingpin Norman Stansfield Mathilda turns to Leon for assistance', 1994, 110, 74, N'C:\1205home\160809\moviePic\Leon.jpg', N'http://www.youtube.com/watch?v=Dc1KzpMnuX0', 1, CAST(0xCC310B00 AS Date))
INSERT [dbo].[Movie] ([MovieID], [MovieName], [MovieTypeID], [Copies], [Summary], [Year], [Lenght], [CountryID], [MoviePicUrl], [TrailerUrl], [Active], [DateAdded]) VALUES (N'A137      ', N'Lawrence of Arabia', 2, 1, N'An inordinately complex man who has been labeled everything from hero to charlatan to sadist Thomas Edward Lawrence blazed his way to glory in the Arabian desert then sought anonymity as a common soldier under an assumed name. The story opens with the death of Lawrence in a motorcycle accident in London at the age of 47 then flashbacks to recount his adventures: as a young intelligence officer in Cairo in 1916 he is given leave to investigate the progress of the Arab revolt against the Turks in World War I. In the desert he organizes a guerrilla army and--for two years--leads the Arabs in harassing the Turks with desert raids train-wrecking and camel attacks. Eventually he leads his army northward and helps a British General destroy the power of the Ottoman Empire', 1962, 227, 232, N'C:\1205home\160809\moviePic\Lawrence of Arabia.jpg', N'http://www.youtube.com/watch?v=bSlq1CNQwEc', 1, CAST(0xCC310B00 AS Date))
INSERT [dbo].[Movie] ([MovieID], [MovieName], [MovieTypeID], [Copies], [Summary], [Year], [Lenght], [CountryID], [MoviePicUrl], [TrailerUrl], [Active], [DateAdded]) VALUES (N'A139      ', N'Blade Runner', 2, 1, N'Los Angeles 2019: Rick Deckard of the LAPD''s Blade Runner unit prowls the steel & micro-chip jungle of the 21st century for assumed humanoids known as ''replicants''. Replicants were declared illegal after a bloody mutiny on an Off-World Colony and are to be terminated upon detection. Man''s obsession with creating a being equal to himself has back-fired', 1982, 117, 233, N'C:\1205home\160809\moviePic\Blade Runner.jpg', N'http://www.youtube.com/watch?v=4lW0F1sccqk', 1, CAST(0xCC310B00 AS Date))
INSERT [dbo].[Movie] ([MovieID], [MovieName], [MovieTypeID], [Copies], [Summary], [Year], [Lenght], [CountryID], [MoviePicUrl], [TrailerUrl], [Active], [DateAdded]) VALUES (N'A140      ', N'Kill Bill: Vol. 1', 2, 1, N'Beatrix Kiddo a.k.a The Bride is a female assassin a trained killer who has been betrayed by The Deadly Viper Assassination Squad led by her former boss Bill who gunned her down at her wedding leaving her for dead. The Bride awakes four years later and she sets out to begin her quest for vengeance. With help of one of Bill''s former tutors retired sword maker Hattori Hanzo The Bride sets out to eliminate her first two targets on her list: Vernita Green who has retired from the Deadly Viper Assassin Squad and has a daughter and O-Ren Ishii who is now the kingpin of the Toyko criminal underworld and leader of the "Crazy 88" crime gang. The Bridge engaging in a roaring rampage of revenge will not rest until every member of The Deadly Viper Assassin Squad is dead and she will save Bill for last', 2003, 111, 233, N'C:\1205home\160809\moviePic\Kill Bill Vol. 1.jpg', N'http://www.youtube.com/watch?v=-czwy-aVbbU', 1, CAST(0xCC310B00 AS Date))
INSERT [dbo].[Movie] ([MovieID], [MovieName], [MovieTypeID], [Copies], [Summary], [Year], [Lenght], [CountryID], [MoviePicUrl], [TrailerUrl], [Active], [DateAdded]) VALUES (N'A141      ', N'Star Wars: Episode VI - Return of the Jedi', 7, 1, N'Lightsabers sparkle the Millenium Falcon flashes through hyperspace and creatures from all over the galaxy defy the Imperial Empire in this stunning third chapter of the "Star Wars" saga. As the rebels prepare to attack the Emperor''s awesome new Death Star Han Solo remains imprisoned by the loathsome outlaw Jabba the Hutt who has also captured Princess Leia. Luke Skywalker rescues his friends but he will not be a true Jedi Knight until he defeats Darth Vader who has sworn to win him over to the Dark Side of the Force. With old favorites like Chewbacca Yoda R2-D2 C-3PO and Lando Calrissian plus the small but stalwart Ewoks', 1983, 134, 233, N'C:\1205home\160809\moviePic\Star Wars Episode VI - Return of the Jedi.jpg', N'http://www.youtube.com/watch?v=SKh2MENj7ug', 1, CAST(0xCC310B00 AS Date))
INSERT [dbo].[Movie] ([MovieID], [MovieName], [MovieTypeID], [Copies], [Summary], [Year], [Lenght], [CountryID], [MoviePicUrl], [TrailerUrl], [Active], [DateAdded]) VALUES (N'A151      ', N'Star Wars: Episode V - The Empire Strikes Back', 7, 1, N'After receiving a vision from Obi-Wan Kenobi and fleeing the ice world of Hoth with his friends after an Imperial attack Luke Skywalker travels to the marsh planet of Dagobah where he is instructed in the ways of the Force by the legendary Jedi master Yoda. Meanwhile Han Solo and Princess Leia make their way to planet Bespin where they are greeted by Han''s old friend a shifty gambler named Lando Calrissian. Ambushed by the Empire shortly after their arrival Han and his friends are imprisoned by Darth Vader. Luke leaves Dagobah to rescue his friends and is met by Vader and a startling revelation', 1980, 127, 233, N'C:\1205home\160809\moviePic\Star Wars Episode V - The Empire Strikes Back.jpg', N'http://www.youtube.com/watch?v=64qf6cRijYU', 1, CAST(0xCC310B00 AS Date))
INSERT [dbo].[Movie] ([MovieID], [MovieName], [MovieTypeID], [Copies], [Summary], [Year], [Lenght], [CountryID], [MoviePicUrl], [TrailerUrl], [Active], [DateAdded]) VALUES (N'A152      ', N'Kill Bill: Vol. 2', 2, 1, N'It all began when the nefarious Deadly Viper Assassination Squad moved in and assassinated the Plympton wedding party at the Two Pines Wedding Chapel in El Paso TX. Well all but one: The Bride their real target. All they managed to do to her was put her in a coma. And four years later she woke up and swore revenge on the lot of them. It began with the disposing of O-Ren Ishii/"Cottonmouth" and Vernita Green/"Copperhead". Now the "Black Mamba" has only three left on her Death List: Budd/"Sidewinder" Bill''s brother; Elle Driver/"California Mountain Snake" the deadly one-eyed assassin; and of course Bill/"Snake Charmer" her boss teacher and lover. However Bill does possess one thing that keeps the ball in his court: B.B. the daughter the Bride thought she had lost in her coma. And now at this point the Bride knows only one thing: in the end she will kill Bill', 2004, 136, 233, N'C:\1205home\160809\moviePic\Kill Bill Vol. 2.jpg', N'http://www.youtube.com/watch?v=NSR7xRGBnOE', 1, CAST(0xCC310B00 AS Date))
INSERT [dbo].[Movie] ([MovieID], [MovieName], [MovieTypeID], [Copies], [Summary], [Year], [Lenght], [CountryID], [MoviePicUrl], [TrailerUrl], [Active], [DateAdded]) VALUES (N'A154      ', N'Bonnie and Clyde', 2, 1, N'Clyde Barrow recently out of prison has turned to bank robbery. He meets Bonnie Parker and together the two form the nucleus of a gang of bank robbers who terrorize the southwest in the 1920s. Based on the true story of a pair of notorious bank robbers the film personalizes them while still showing the violence that went along with them', 1967, 111, 233, N'C:\1205home\160809\moviePic\Bonnie and Clyde.jpg', N'http://www.youtube.com/watch?v=BizxiDtFdrI', 1, CAST(0xCC310B00 AS Date))
INSERT [dbo].[Movie] ([MovieID], [MovieName], [MovieTypeID], [Copies], [Summary], [Year], [Lenght], [CountryID], [MoviePicUrl], [TrailerUrl], [Active], [DateAdded]) VALUES (N'B116      ', N'Goodfellas', 5, 1, N'This film views the mob lives of three pivotal figures in the 1960''s and 70''s New York. Henry Hill is a local boy turned gangster in a neighborhood full of the roughest and toughest. Tommy Devito is a pure bred gangster who turns out to be Henry''s best friend. Jimmy Conway puts the two of them together and runs some of the biggest hijacks and burglaries the town has ever seen. After an extended jail sentence Henry must sneak around the back of the local mob boss Paulie Cicero to live the life of luxury he has always dreamed of. In the end the friends end up in a hell of a jam and must do anything they can to save each other and stay alive', 1990, 148, 233, N'C:\1205home\160809\moviePic\Goodfellas.jpg', N'http://www.youtube.com/watch?v=qo5jJpHtI1Y', 1, CAST(0xCC310B00 AS Date))
INSERT [dbo].[Movie] ([MovieID], [MovieName], [MovieTypeID], [Copies], [Summary], [Year], [Lenght], [CountryID], [MoviePicUrl], [TrailerUrl], [Active], [DateAdded]) VALUES (N'B118      ', N'Raging Bull', 5, 1, N'When Jake LaMotta steps into a boxing ring and obliterates his opponent he''s a prizefighter. But when he treats his family and friends the same way he''s a ticking time bomb ready to go off at any moment. Though LaMotta wants his family''s love something always seems to come between them. Perhaps it''s his violent bouts of paranoia and jealousy. This kind of rage helped make him a champ but in real life he winds up in the ring alone', 1980, 129, 233, N'C:\1205home\160809\moviePic\Raging Bull.jpg', N'http://www.youtube.com/watch?v=YiVOwxsa4OM', 1, CAST(0xCC310B00 AS Date))
INSERT [dbo].[Movie] ([MovieID], [MovieName], [MovieTypeID], [Copies], [Summary], [Year], [Lenght], [CountryID], [MoviePicUrl], [TrailerUrl], [Active], [DateAdded]) VALUES (N'B146      ', N'The Pianist', 5, 1, N'A brilliant pianist a Polish Jew witnesses the restrictions Nazis place on Jews in the Polish capital from restricted access to the building of the Warsaw ghetto. As his family is rounded up to be shipped off to the Nazi labor camps he escapes deportation and eludes capture by living in the ruins of Warsaw', 2002, 150, 232, N'C:\1205home\160809\moviePic\The Pianist.jpg', N'http://www.youtube.com/watch?v=itR0-I9idXk', 1, CAST(0xCC310B00 AS Date))
INSERT [dbo].[Movie] ([MovieID], [MovieName], [MovieTypeID], [Copies], [Summary], [Year], [Lenght], [CountryID], [MoviePicUrl], [TrailerUrl], [Active], [DateAdded]) VALUES (N'C101      ', N'The Godfather', 8, 1, N'The story begins as "Don" Vito Corleone the head of a New York Mafia "family" oversees his daughter''s wedding. His beloved son Michael has just come home from the war but does not intend to become part of his father''s business. Through Michael''s life the nature of the family business becomes clear. The business of the family is just like the head of the family kind and benevolent to those who give respect but given to ruthless violence whenever anything stands against the good of the family. Don Vito lives his life in the way of the old country but times are changing and some don''t want to follow the old ways and look out for community and "family". An up and coming rival of the Corleone family wants to start selling drugs in New York and needs the Don''s influence to further his plan. The clash of the Don''s fading old world values and the new ways will demand a terrible price especially from Michael all for the sake of the family. Written by Charlie Ness Vito Corleone is the aging don (head) of the Corleone Mafia Family. His youngest son Michael has returned from WWII just in time to see the wedding of Connie Corleone (Michael''s sister) to Carlo Rizzi. All of Michael''s family is involved with the Mafia but Michael just wants to live a normal life. Drug dealer Virgil Sollozzo is looking for Mafia Families to offer him protection in exchange for a profit of the drug money. He approaches Don Corleone about it but much against the advice of the Don''s lawyer Tom Hagen the Don is morally against the use of drugs and turns down the offer. This does not please Sollozzo who has the Don shot down by some of his hit men. The Don barely survives which leads his son Michael to begin a violent mob war against Sollozzo and tears the Corleone family apart. Written by TheElfstone', 1972, 175, 233, N'The Godfather.jpg', N'http://www.youtube.com/watch?v=bf16Vc3iZjE', 1, CAST(0xCC310B00 AS Date))
INSERT [dbo].[Movie] ([MovieID], [MovieName], [MovieTypeID], [Copies], [Summary], [Year], [Lenght], [CountryID], [MoviePicUrl], [TrailerUrl], [Active], [DateAdded]) VALUES (N'C102      ', N'L.A. Confidential', 8, 1, N'1950''s Los Angeles is the seedy backdrop for this intricate noir-ish tale of police corruption and Hollywood sleaze. Three very different cops are all after the truth each in their own style: Ed Exley the golden boy of the police force willing to do almost anything to get ahead except sell out; Bud White ready to break the rules to seek justice but barely able to keep his raging violence under control; and Jack Vincennes always looking for celebrity and a quick buck until his conscience drives him to join Exley and White down the one-way path to find the truth behind the dark world of L.A. crime. Written by Greg Bole', 1997, 138, 233, N'C:\1205home\160809\moviePic\L.A.Confidential.jpg', N'http://www.youtube.com/watch?v=KT7aFLAS4ZI', 1, CAST(0xCC310B00 AS Date))
INSERT [dbo].[Movie] ([MovieID], [MovieName], [MovieTypeID], [Copies], [Summary], [Year], [Lenght], [CountryID], [MoviePicUrl], [TrailerUrl], [Active], [DateAdded]) VALUES (N'C104      ', N'On the Waterfront', 8, 1, N'The Waterfront Crime Commission is about to hold public hearings on union crime and underworld infiltration. As workers are turned against each other Terry Malloy inadvertently participates in the murder of fellow longshoreman Joey Doyle. Union boss Johnny Friendly orchestrates the murder along with other illegal dockside activities aided by Terry''s brother Charley. Terry begins to feel pangs of conscience. When Joey''s sister Edie sees more in Terry than he sees in himself and Father Barry urges him on Terry reassesses his past and begins to regain responsibility for his actions', 1954, 108, 233, N'C:\1205home\160809\moviePic\On the Waterfront.jpg', N'http://www.youtube.com/watch?v=eeVq1e6JKlw', 1, CAST(0xCC310B00 AS Date))
INSERT [dbo].[Movie] ([MovieID], [MovieName], [MovieTypeID], [Copies], [Summary], [Year], [Lenght], [CountryID], [MoviePicUrl], [TrailerUrl], [Active], [DateAdded]) VALUES (N'C110      ', N'The Godfather: Part II', 8, 1, N'The continuing saga of the Corleone crime family tells the story of a young Vito Corleone growing up in Sicily and in 1910s New York; and follows Michael Corleone in the 1950s as he attempts to expand the family business into Las Vegas Hollywood and Cuba', 1974, 200, 233, N'C:\1205home\160809\moviePic\The Godfather Part II.jpg', N'http://www.youtube.com/watch?v=qJr92K_hKl0', 1, CAST(0xCC310B00 AS Date))
INSERT [dbo].[Movie] ([MovieID], [MovieName], [MovieTypeID], [Copies], [Summary], [Year], [Lenght], [CountryID], [MoviePicUrl], [TrailerUrl], [Active], [DateAdded]) VALUES (N'C124      ', N'Scarface', 8, 1, N'An update of the 1932 film Scarface (1983) follows gangster Tony Montana and his close friend Manny Ray from their trip on the Cuban Boat Lift for refugees to their arrival in Miami. After killing a powerful Cuban figure Montana and company gain the ability to leave their refugee camps and roam around the U.S. After unsuccessfully trying to make it legitamately in the country Montana and Ray resort to selling cocaine to dealers around the world. Tony''s rise is quick but as he becomes more powerful his enemies and his own paranoia begin to plague his empire', 1983, 170, 233, N'C:\1205home\160809\moviePic\Scarface.jpg', N'http://www.youtube.com/watch?v=ciF2CYn36gA', 1, CAST(0xCC310B00 AS Date))
INSERT [dbo].[Movie] ([MovieID], [MovieName], [MovieTypeID], [Copies], [Summary], [Year], [Lenght], [CountryID], [MoviePicUrl], [TrailerUrl], [Active], [DateAdded]) VALUES (N'C136      ', N'Reservoir Dogs', 9, 1, N'They were six strangers assembled to pull off the perfect crime: Mr. White a professional criminal; Mr. Orange a young newcomer; Mr. Blonde a trigger-happy killer; Mr. Pink a paranoid neurotic; Mr. Brown; and Mr. Blue. Hired by mob boss Joe Cabot and given fake names so no one could identify the others they thought there was no way their heist could have failed. But after a police ambush killing Mr. Brown and seriously injuring Mr. Orange the criminals return to their rendezvous point (a warehouse) and realize that one of them had to have been a police informant. But who?', 1992, 98, 233, N'C:\1205home\160809\moviePic\Reservoir Dogs.jpg', N'http://www.youtube.com/watch?v=QvoKT481EmU', 1, CAST(0xCC310B00 AS Date))
INSERT [dbo].[Movie] ([MovieID], [MovieName], [MovieTypeID], [Copies], [Summary], [Year], [Lenght], [CountryID], [MoviePicUrl], [TrailerUrl], [Active], [DateAdded]) VALUES (N'C138      ', N'Forrest Gump', 9, 1, N'The story follows the life of low I.Q. Forrest Gump and his meeting with the love of his life Jenny. The film chronicles his accidental experiences with some of the most important people and events in America from the late 1950''s through the 1970''s including a meeting with Elvis Presley JFK Lyndon Johnson Richard Nixon fighting in Vietnam etc. The problem is he''s too stupid to realize the significance of his actions. Forrest becomes representative of the baby boomer generation having walked through life blindly', 1994, 141, 233, N'C:\1205home\160809\moviePic\Forrest Gump.jpg', N'http://www.youtube.com/watch?v=JdsMqRaz2WY', 1, CAST(0xCC310B00 AS Date))
INSERT [dbo].[Movie] ([MovieID], [MovieName], [MovieTypeID], [Copies], [Summary], [Year], [Lenght], [CountryID], [MoviePicUrl], [TrailerUrl], [Active], [DateAdded]) VALUES (N'C142      ', N'The Big Lebowski', 9, 0, N'Jeffrey "The Dude" Lebowski is the ultimate LA slacker until one day his house is broken into and his rug is peed on by two angry gangsters who have mistaken him for Jeffrey Lebowski the LA millionaire whose wife owes some bad people some big money. The Dude becomes entangled in the plot when he goes to visit the real Lebowski in order to get some retribution for his soiled rug and is recruited to be the liason between Lebowski and the captors of his now "kidnapped" wife', 1998, 118, 233, N'C:\1205home\160809\moviePic\The Big Lebowski.jpg', N'http://www.youtube.com/watch?v=r_GCRFRcWxA', 1, CAST(0xCC310B00 AS Date))
INSERT [dbo].[Movie] ([MovieID], [MovieName], [MovieTypeID], [Copies], [Summary], [Year], [Lenght], [CountryID], [MoviePicUrl], [TrailerUrl], [Active], [DateAdded]) VALUES (N'C143      ', N'Trainspotting', 9, 0, N'A wild freeform Rabelaisian trip through the darkest recesses of Edinburgh low-life focusing on Mark Renton and his attempt to give up his heroin habit and how the latter affects his relationship with family and friends: Sean Connery wannabe Sick Boy dimbulb Spud psycho Begbie 14-year-old girlfriend Diane and clean-cut athlete Tommy who''s never touched drugs but can''t help being curious about them...', 1996, 94, 232, N'C:\1205home\160809\moviePic\Trainspotting.jpg', N'http://www.youtube.com/watch?v=eAHI3bH0rbc', 1, CAST(0xCC310B00 AS Date))
INSERT [dbo].[Movie] ([MovieID], [MovieName], [MovieTypeID], [Copies], [Summary], [Year], [Lenght], [CountryID], [MoviePicUrl], [TrailerUrl], [Active], [DateAdded]) VALUES (N'C144      ', N'Hit', 9, 1, N'A federal agent whose daughter dies of a heroin overdose is determined to destroy the drug ring that supplied her. He recruits various people whose lives have been torn apart by the drug trade and trains them. Then they all leave for France to track down and destroy the ring', 1975, 120, 233, N'C:\1205home\160809\moviePic\Hit.jpg', N'http://www.youtube.com/watch?v=HGWSDEWW-GI', 1, CAST(0xCC310B00 AS Date))
INSERT [dbo].[Movie] ([MovieID], [MovieName], [MovieTypeID], [Copies], [Summary], [Year], [Lenght], [CountryID], [MoviePicUrl], [TrailerUrl], [Active], [DateAdded]) VALUES (N'C145      ', N'American History X', 8, 1, N'Derek Vinyard returns from prison to find his younger brother Danny caught in the same web of racism and hatred that landed him in prison. After Derek''s father is killed in the line of duty by a minority Derek''s view of mankind is altered but while in prison he discovers that there is good and bad in every race. The task before him now is to convince Danny of his newfound enlightenment', 1998, 119, 233, N'C:\1205home\160809\moviePic\American History X.jpg', N'http://www.youtube.com/watch?v=jXaZENPQrsw', 1, CAST(0xCC310B00 AS Date))
INSERT [dbo].[Movie] ([MovieID], [MovieName], [MovieTypeID], [Copies], [Summary], [Year], [Lenght], [CountryID], [MoviePicUrl], [TrailerUrl], [Active], [DateAdded]) VALUES (N'C155      ', N'Mystic River', 8, 1, N'During a summer in 1975 Dave Boyle and two friends Jimmy and Sean are playing on a sidewalk in Boston when Dave is abducted by two men and subjected to sexual abuse over a period of several days. Eventually escaping but haunted into adulthood by his trauma Dave becomes a primary suspect when Jimmy''s daughter Katie is found murdered. Sean assigned to investigate the crime finds himself facing both demons from the past and demons in the present as the circumstances surrounding Katie''s death are uncovered', 2003, 137, 233, N'C:\1205home\160809\moviePic\Mystic River.jpg', N'http://www.youtube.com/watch?v=nmiA24jwlbM', 1, CAST(0xCC310B00 AS Date))
INSERT [dbo].[Movie] ([MovieID], [MovieName], [MovieTypeID], [Copies], [Summary], [Year], [Lenght], [CountryID], [MoviePicUrl], [TrailerUrl], [Active], [DateAdded]) VALUES (N'C156      ', N'Ed Wood', 9, 1, N'You are interested in the unknown. The mysterious. The unexplainable. That is why you are here. And now for the first time we are bringing to you the full story of what happened on that fateful day. We are giving you all the evidence based only on a secret testimony of the miserable souls who survived this terrifying ordeal. The incidents the places. My friend we cannot keep this a secret any longer. Can your heart stand the shocking facts about Edward D. Wood Jr?', 1994, 127, 233, N'C:\1205home\160809\moviePic\EdWood.jpg', N'http://www.youtube.com/watch?v=51U0f4VKXIg', 1, CAST(0xCC310B00 AS Date))
INSERT [dbo].[Movie] ([MovieID], [MovieName], [MovieTypeID], [Copies], [Summary], [Year], [Lenght], [CountryID], [MoviePicUrl], [TrailerUrl], [Active], [DateAdded]) VALUES (N'D105      ', N'The Shawshank Redemption', 4, 1, N'After the murder of his wife hotshot banker Andrew Dufresne is sent to Shawshank Prison where the usual unpleasantness occurs. Over the years he retains hope and eventually gains the respect of his fellow inmates especially longtime convict "Red" Redding a black marketeer and becomes influential within the prison. Eventually Andrew achieves his ends on his own terms', 1994, 142, 233, N'C:\1205home\160809\moviePic\The Shawshank Redemption.jpg', N'http://www.youtube.com/watch?v=Ec4dGY46_1E', 1, CAST(0xCC310B00 AS Date))
INSERT [dbo].[Movie] ([MovieID], [MovieName], [MovieTypeID], [Copies], [Summary], [Year], [Lenght], [CountryID], [MoviePicUrl], [TrailerUrl], [Active], [DateAdded]) VALUES (N'D106      ', N'One Flew Over the Cuckoo''s Nest', 4, 1, N'McMurphy a man with several assault convictions to his name finds himself in jail once again. This time the charge is statutory rape when it turns out that his girlfriend had lied about being eighteen and was in fact fifteen (or as McMurphy puts it "fifteen going on thirty-five"). Rather than spend his time in jail he convinces the guards that he''s crazy enough to need psychiatric care and is sent to a hospital. He fits in frighteningly well and his different point of view actually begins to cause some of the patients to progress. Nurse Ratched becomes his personal cross to bear as his resistance to the hospital routine gets on her nerves', 1975, 133, 233, N'C:\1205home\160809\moviePic\One Flew Over the Cuckoo''s Nest.jpg', N'http://www.youtube.com/watch?v=jReNeEHH2lQ', 1, CAST(0xCC310B00 AS Date))
INSERT [dbo].[Movie] ([MovieID], [MovieName], [MovieTypeID], [Copies], [Summary], [Year], [Lenght], [CountryID], [MoviePicUrl], [TrailerUrl], [Active], [DateAdded]) VALUES (N'D108      ', N'Once Upon A Time In The West - Special Edition', 4, 1, N' The sprawling railways are reaching the far-west and somewhere along its way in a small border town the paths of the four main characters are going to cross and clash: a young woman looking for a fresh start; an outlaw on the run accused of a crime (this time) he didn''t commit; a ruthless killer on the payroll of the railroad tycoon; and a mysterious man with no name who plays a couple of sad chords on a harmonica... and a couple of "Bangs!" on a revolver', 1968, 175, 108, N'Once Upon A Time In The West - Special Edition.jpg', N'http://www.youtube.com/watch?v=49FsaizH9tQ', 1, CAST(0xCC310B00 AS Date))
INSERT [dbo].[Movie] ([MovieID], [MovieName], [MovieTypeID], [Copies], [Summary], [Year], [Lenght], [CountryID], [MoviePicUrl], [TrailerUrl], [Active], [DateAdded]) VALUES (N'D112      ', N'Schindler''s List', 4, 1, N'Oskar Schindler is a vain glorious and greedy German businessman who becomes unlikely humanitarian amid the barbaric Nazi reign when he feels compelled to turn his factory into a refuge for Jews. Based on the true story of Oskar Schindler who managed to save about 1100 Jews from being gassed at the Auschwitz concentration camp. A testament for the good in all of us', 1993, 195, 233, N'C:\1205home\160809\moviePic\Schindler''s List.jpg', N'http://www.youtube.com/watch?v=TAH3RTRlCHY', 1, CAST(0xCC310B00 AS Date))
INSERT [dbo].[Movie] ([MovieID], [MovieName], [MovieTypeID], [Copies], [Summary], [Year], [Lenght], [CountryID], [MoviePicUrl], [TrailerUrl], [Active], [DateAdded]) VALUES (N'D121      ', N'Saving Private Ryan', 4, 1, N'Opening with the Allied invasion of Normandy on 6 June 1944 members of the 2nd Ranger Battalion under Cpt. Miller fight ashore to secure a beachhead. Amidst the fighting two brothers are killed in action. Earlier in New Guinea a third brother is KIA. Their mother Mrs. Ryan is to receive all three of the grave telegrams on the same day. The United States Army Chief of Staff George C. Marshall is given an opportunity to alleviate some of her grief when he learns of a fourth brother Private James Ryan and decides to send out 8 men (Cpt. Miller and select members from 2nd Rangers) to find him and bring him back home to his mother...', 1998, 170, 233, N'C:\1205home\160809\moviePic\Saving Private Ryan.jpg', N'http://www.youtube.com/watch?v=68t6PhbYiSo', 1, CAST(0xCC310B00 AS Date))
INSERT [dbo].[Movie] ([MovieID], [MovieName], [MovieTypeID], [Copies], [Summary], [Year], [Lenght], [CountryID], [MoviePicUrl], [TrailerUrl], [Active], [DateAdded]) VALUES (N'D127      ', N'Donnie Darko', 4, 1, N'A troubled teenager Donnie Darko escapes death when a jet-engine crashes in his bedroom because he follows a giant bunny leading him outside. The bunny called Frank tells him that the world will end in 28 days. As the final date comes closer and closer Donnie is drawn into an alarming series of events that may or may not be a product of growing insanity', 2001, 113, 233, N'C:\1205home\160809\moviePic\Donnie Darko.jpg', N'http://www.youtube.com/watch?v=8wqVHjK2bQs', 1, CAST(0xCC310B00 AS Date))
INSERT [dbo].[Movie] ([MovieID], [MovieName], [MovieTypeID], [Copies], [Summary], [Year], [Lenght], [CountryID], [MoviePicUrl], [TrailerUrl], [Active], [DateAdded]) VALUES (N'D129      ', N'Pulp Fiction', 4, 1, N'Jules Winnfield and Vincent Vega are two hitmen who are out to retrieve a suitcase stolen from their employer mob boss Marsellus Wallace. Wallace has also asked Vincent to take his wife Mia out a few days later when Wallace himself will be out of town. Butch Coolidge is an aging boxer who is paid by Wallace to lose his next fight. The lives of these seemingly unrelated people are woven together comprising of a series of funny bizarre and uncalled-for incidents', 1994, 154, 233, N'C:\1205home\160809\moviePic\PulpFiction.jpg', N'http://www.youtube.com/watch?v=wZBfmBvvotE', 1, CAST(0xCC310B00 AS Date))
INSERT [dbo].[Movie] ([MovieID], [MovieName], [MovieTypeID], [Copies], [Summary], [Year], [Lenght], [CountryID], [MoviePicUrl], [TrailerUrl], [Active], [DateAdded]) VALUES (N'D132      ', N'American Beauty', 4, 1, N'Lester Burnham is suffering a mid-life crisis that affects the lives of his family which is made up of his super bitch of a wife Carolyn and rebelling daughter Jane who hates him. Carolyn is a real estate agent a little too wrapped up in her job who takes on an affair with business rival Buddy Kane. Meanwhile Jane seems to fall in love with Ricky Fitts the strange boy next door who is a drug dealer/documentarian and lives under a roof governed by a very strict marine father and a speechless mother. Lester''s mid-life crisis causes him to drastically change his life around when he quits his job and works at a fast food restaurant. He starts working out to gain the attention of Angela a friend of Jane''s who brags about her sexual exploits every weekend. Lives change and not for the best.', 1999, 122, 233, N'C:\1205home\160809\moviePic\American Beauty.jpg', N'http://www.youtube.com/watch?v=6Q3ltyPJJMQ', 1, CAST(0xCC310B00 AS Date))
INSERT [dbo].[Movie] ([MovieID], [MovieName], [MovieTypeID], [Copies], [Summary], [Year], [Lenght], [CountryID], [MoviePicUrl], [TrailerUrl], [Active], [DateAdded]) VALUES (N'D149      ', N'The Deer Hunter', 4, 1, N'Michael Steven and Nick are young factory workers from Pennsylvania who enlist into the Army to fight in Vietnam. Before they go Steven marries the pregnant Angela and their wedding-party is also the men''s farewell party. After some time and many horrors the three friends fall in the hands of the Vietcong and are brought to a prison camp in which they are forced to play Russian roulette against each other. Michael makes it possible for them to escape but they soon get separated again', 1978, 182, 233, N'C:\1205home\160809\moviePic\The Deer Hunter.jpg', N'http://www.youtube.com/watch?v=vw-Tyr6Rb6I', 1, CAST(0xCC310B00 AS Date))
INSERT [dbo].[Movie] ([MovieID], [MovieName], [MovieTypeID], [Copies], [Summary], [Year], [Lenght], [CountryID], [MoviePicUrl], [TrailerUrl], [Active], [DateAdded]) VALUES (N'F114      ', N'The Lord of the Rings: The Return of the King', 6, 1, N'Gondor is overrun by the orcs of Mordor and Gandalf rides to Minas Tirith to aid the humans in the war that is ahead. Aragorn must realize his true identity and purpose as the King of Men and journey with Gimli and Legolas to summon the Army of the Dead so that the battle against evil can be won. Meanwhile paranoia and suspicion rises between Frodo Sam and Gollum as they continue their increasingly dark and dangerous travel to Mount Doom the one place where The Ring can be destroyed once and for all', 2003, 252, 233, N'C:\1205home\160809\moviePic\The Lord of the Rings The Return of the King.jpg', N'http://www.youtube.com/watch?v=I7YllAOqpF4', 1, CAST(0xCC310B00 AS Date))
INSERT [dbo].[Movie] ([MovieID], [MovieName], [MovieTypeID], [Copies], [Summary], [Year], [Lenght], [CountryID], [MoviePicUrl], [TrailerUrl], [Active], [DateAdded]) VALUES (N'F115      ', N'The Matrix', 6, 1, N'During the year 1999 a man named Thomas Anderson lives an ordinary life. He makes a living illegally mostly by computer hacking. Then one day he meets another man by the man of Morpheus. After their friendship develops Morpheus shows him that world Thomas is living is make-believe. At first Thomas does not believe him but then is shown evidence and also meets with a like-minded woman named Trinity. He is slowly updated from the time the world was disintegrated and wasted devoid of all natural resources. Then in this wasteland came android-like humans machine-made who enslaved the remainder of the humans. In order to create the perfect world a fake world is created to fool the humans into believing that everything is alright in their world. Now Thomas Trinity and Morpheus must lead the humans to freedom but will the android-like beings let them?', 1999, 136, 233, N'The Matrix.jpg', N'http://www.youtube.com/watch?v=UM5yepZ21pI', 1, CAST(0xCC310B00 AS Date))
INSERT [dbo].[Movie] ([MovieID], [MovieName], [MovieTypeID], [Copies], [Summary], [Year], [Lenght], [CountryID], [MoviePicUrl], [TrailerUrl], [Active], [DateAdded]) VALUES (N'F135      ', N'Terminator 2: Judgment Day', 6, 1, N'In the year 2029 a computer called Skynet is fighting against a human resistance after having nearly destroyed the rest of humanity in 1997. Skynet has found a way to send some of it''s warriors called Terminators back in time. This is the story of the Terminator sent to kill the resistance leader in 1995 while he is still a child. The resistance sends a reprogrammed Terminator back to 1995 to protect the young man. The question is can they survive against the new prototype liquid metal Terminator while preventing the creation of Skynet?', 1991, 137, 233, N'C:\1205home\160809\moviePic\Terminator 2 Judgment Day.jpg', N'http://www.youtube.com/watch?v=oL1RE8JXaIw', 1, CAST(0xCC310B00 AS Date))
INSERT [dbo].[Movie] ([MovieID], [MovieName], [MovieTypeID], [Copies], [Summary], [Year], [Lenght], [CountryID], [MoviePicUrl], [TrailerUrl], [Active], [DateAdded]) VALUES (N'F147      ', N'The Butterfly Effect', 6, 1, N'Evan Treborn grows up in a small town with his single working mother and his friends. He suffers from memory blackouts where he suddenly finds himself somewhere else confused. Evan''s friends and mother hardly believe him thinking he makes it up just to get out of trouble. As Evan grows up he has less of these blackouts until he seems to have recovered. Since the age of seven he has written a diary of his blackout moments so he can remember what happens. One day at college he starts to read one of his old diaries and suddenly a flashback hits him like a brick!', 2004, 113, 233, N'C:\1205home\160809\moviePic\The Butterfly Effect.jpg', N'http://www.youtube.com/watch?v=u5dVQfzjDS4', 1, CAST(0xCC310B00 AS Date))
INSERT [dbo].[Movie] ([MovieID], [MovieName], [MovieTypeID], [Copies], [Summary], [Year], [Lenght], [CountryID], [MoviePicUrl], [TrailerUrl], [Active], [DateAdded]) VALUES (N'H111      ', N'The Usual Suspects', 3, 1, N'Following a truck hijack in New York five conmen are arrested and brought together for questioning. As none of them is guilty they plan a revenge operation against the police. The operation goes well but then the influence of a legendary mastermind criminal called Keyser S?ze is felt. It becomes clear that each one of them has wronged S?ze at some point and must pay back now. The payback job leaves 27 men dead in a boat explosion but the real question arises now: Who actually is Keyser Soze?', 1995, 106, 233, N'C:\1205home\160809\moviePic\The Usual Suspects.jpg', N'http://www.youtube.com/watch?v=_VPuXWtDx9g', 1, CAST(0xCC310B00 AS Date))
INSERT [dbo].[Movie] ([MovieID], [MovieName], [MovieTypeID], [Copies], [Summary], [Year], [Lenght], [CountryID], [MoviePicUrl], [TrailerUrl], [Active], [DateAdded]) VALUES (N'H120      ', N'The Shining', 3, 1, N'Jack Torrance gets a job as the custodian of the Overlook Hotel in the mountains of Colorado. The place is closed down during winter Torrance and his family will be the only occupants of the hotel for a long while. When the snow storms block the Torrance family in the hotel Jack''s son Danny who has some clairvoyance and telepathy powers discovers that the hotel is haunted and that the spirits are slowly driving Jack crazy. When Jack meets the ghost of Mr. Grady the former custodian of the hotel who murdered his wife and his two daughters things begin to get really nasty', 1980, 146, 233, N'C:\1205home\160809\moviePic\The Shining.jpg', N'http://www.youtube.com/watch?v=6Chq_92_KXU', 1, CAST(0xCC310B00 AS Date))
INSERT [dbo].[Movie] ([MovieID], [MovieName], [MovieTypeID], [Copies], [Summary], [Year], [Lenght], [CountryID], [MoviePicUrl], [TrailerUrl], [Active], [DateAdded]) VALUES (N'H148      ', N'The Sixth Sense', 3, 0, N'Child psychologist Malcom Crowe is one night visited by an ex-patient named Vincent angry enraged. He wounds Crowe then kills himself. A few months later Crowe is visited by a 9-year old boy named Cole. He sees dead people who do not know they are dead. Because of this he is called a freak in school. Crowe at first thinks he is seeing things but after spending a lot of time with Cole (much to his wife''s dismay) he discovers Cole may be seeing dead people after all', 1999, 110, 233, N'The Sixth Sense.jpg', N'http://www.youtube.com/watch?v=u2sDw-XBuKc', 1, CAST(0xCC310B00 AS Date))
INSERT [dbo].[Movie] ([MovieID], [MovieName], [MovieTypeID], [Copies], [Summary], [Year], [Lenght], [CountryID], [MoviePicUrl], [TrailerUrl], [Active], [DateAdded]) VALUES (N'H153      ', N'Aliens', 3, 1, N'Ellen Ripley the sole survivor of the alien attack on the mining ship Nostromo awakens half a century later when she is found by a salvage ship. The welcome given to her by the "Company" officials is far from warm since they refuse to believe her discovery of alien existence and strip her off her flight officer''s license. Ripley also discovers much to her horror that the planet LV-426 where her crew had encountered an alien species for the first time is now colonized by the company. But when all contact from the planet is lost Ripley is called back into action again as an advisor to a team of tough space marines with lots of firepower. To get rid of her recurrent nightmares about the alien creature Ripley prepares for a final battle with the monsters - and this time there are hundreds of them out there', 1986, 154, 233, N'Aliens.jpg', N'http://www.youtube.com/watch?v=brEzYdLrPws', 1, CAST(0xCC310B00 AS Date))
INSERT [dbo].[Movie] ([MovieID], [MovieName], [MovieTypeID], [Copies], [Summary], [Year], [Lenght], [CountryID], [MoviePicUrl], [TrailerUrl], [Active], [DateAdded]) VALUES (N'M113      ', N'Rear Window', 10, 0, N'Photagrapher L.B. "Jeff" Jeffries is confined to his small apartment with a broken leg.To pass the timehe watches the goings-on of his motley assortment of neighbors--a frustrated yet fun-loving composera middle-aged couple with a small doga dancer who seems to enjoy practicing her routines while scantily clada pair of reclusive newlywedsa lonely woman who seems to live in a fantasy worldand a salesman and his invalid wife.One day the wife inexplicably disappearsand the salesman starts doing things that lead Jeff to suspect that he may have murdered her.Unfortunatelyhe has no proof and no one seems to believe him.Eventuallyhoweverthings start falling together in a way that make it look like Jeff might just be right after all.Finally hehis girlfriend Lisa and his nurse Stella come up with a plan to catch the killer red-handed. But doing so could put all of their lives in danger', 1954, 112, 233, N'C:\1205home\160809\moviePic\Rear Window.jpg', N'http://www.youtube.com/watch?v=-B6rfV_wH4U', 1, CAST(0xCC310B00 AS Date))
INSERT [dbo].[Movie] ([MovieID], [MovieName], [MovieTypeID], [Copies], [Summary], [Year], [Lenght], [CountryID], [MoviePicUrl], [TrailerUrl], [Active], [DateAdded]) VALUES (N'M134      ', N'Vertigo', 10, 1, N'John "Scottie" Ferguson is a retired San Francisco police detective who suffers from acrophobia and Madeleine is the lady who leads him to high places. A wealthy shipbuilder who is an acquaintance from college days approaches Scottie and asks him to follow his beautiful wife Madeleine. He fears she is going insane maybe even contemplating suicide because she believes she is possessed by a dead ancestor. Scottie is skeptical but agrees after he sees the beautiful Madeleine', 1958, 128, 233, N'C:\1205home\160809\moviePic\Vertigo.jpg', N'http://www.youtube.com/watch?v=9p8SpTfVKpc', 1, CAST(0xCC310B00 AS Date))
INSERT [dbo].[Movie] ([MovieID], [MovieName], [MovieTypeID], [Copies], [Summary], [Year], [Lenght], [CountryID], [MoviePicUrl], [TrailerUrl], [Active], [DateAdded]) VALUES (N'R100      ', N'Chinatown', 1, 1, N'JJ ''Jake'' Gittes is a private detective who seems to specialize in matrimonial cases. He is hired by Evelyn Mulwray when she suspects her husband Hollis builder of the city''s water supply system of having an affair. Gittes does what he does best and photographs him with a young girl but in the ensuing scandal it seems he was hired by an impersonator and not the real Mrs. Mulwray. When Mr. Mulwray is found dead Jake is plunged into a complex web of deceit involving murder incest and municipal corruption all related to the city''s water supply. Written by garykmcd Los Angeles detective Jake Gittes is hired by a woman claiming to be a Mrs. Mulwray to spy on her husband. Shortly after Gittes is hired the real Mrs. Mulwray appears in his office threatening to sue if he doesn''t drop the case immediately. Gittes pursues the case anyway slowly uncovering a vast conspiracy centering on water management state and municipal corruption land use and real estate and involving at least one murder. Written by filmfactsman', 1974, 131, 233, N'Chinatown.jpg', N'http://www.youtube.com/watch?v=3aifeXlnoqY', 1, CAST(0xCC310B00 AS Date))
INSERT [dbo].[Movie] ([MovieID], [MovieName], [MovieTypeID], [Copies], [Summary], [Year], [Lenght], [CountryID], [MoviePicUrl], [TrailerUrl], [Active], [DateAdded]) VALUES (N'R128      ', N'Gone With The Wind', 1, 1, N'Scarlett is a woman who can deal with a nation at war Atlanta burning the Union Army carrying off everything from her beloved Tara the carpetbaggers who arrive after the war. Scarlett is beautiful. She has vitality. But Ashley the man she has wanted for so long is going to marry his placid cousin Melanie. Mammy warns Scarlett to behave herself at the party at Twelve Oaks. There is a new man there that day the day the Civil War begins. Rhett Butler. Scarlett does not know he is in the room when she pleads with Ashley to choose her instead of Melanie', 1939, 224, 233, N'C:\1205home\160809\moviePic\Gone With The Wind.jpg', N'http://www.youtube.com/watch?v=8mM8iNarcRc', 1, CAST(0xCC310B00 AS Date))
INSERT [dbo].[Movie] ([MovieID], [MovieName], [MovieTypeID], [Copies], [Summary], [Year], [Lenght], [CountryID], [MoviePicUrl], [TrailerUrl], [Active], [DateAdded]) VALUES (N'R150      ', N'A Walk to Remember', 1, 1, N'In a coastal North Carolinian small town in the mid 1990''s a boy from the popular but troubled undirected group of students gets busted and for punishment you guessed it has to do community service activities which include the high school''s spring play. This throws him in with the minister''s daughter you guessed it the mousy seemingly awkward yet beautiful girl with an angelic heart and she sings too. They grow hesitantly closer than their previous adversarial relationship as old bonds are tested and new awarenesses are inspired. A couple twists occur as the story concludes', 2002, 102, 233, N'C:\1205home\160809\moviePic\A Walk to Remember.jpg', N'http://www.youtube.com/watchv=V96uhfQ0x9A', 1, CAST(0xCC310B00 AS Date))
/****** Object:  Table [dbo].[Actor]    Script Date: 05/13/2017 15:15:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Actor](
	[ActorID] [int] NOT NULL,
	[ActorName] [nvarchar](50) NOT NULL,
	[BirthDate] [date] NOT NULL,
	[CountryID] [smallint] NULL,
 CONSTRAINT [PK_Actor] PRIMARY KEY CLUSTERED 
(
	[ActorID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Actor] ([ActorID], [ActorName], [BirthDate], [CountryID]) VALUES (1, N'Jack Nicholson', CAST(0x94CA0A00 AS Date), 107)
INSERT [dbo].[Actor] ([ActorID], [ActorName], [BirthDate], [CountryID]) VALUES (2, N'Marlon Brando', CAST(0xF5B70A00 AS Date), 85)
INSERT [dbo].[Actor] ([ActorID], [ActorName], [BirthDate], [CountryID]) VALUES (3, N'Robert De Niro', CAST(0x98D30A00 AS Date), 64)
INSERT [dbo].[Actor] ([ActorID], [ActorName], [BirthDate], [CountryID]) VALUES (4, N'Al Pacino', CAST(0xDFCE0A00 AS Date), 17)
INSERT [dbo].[Actor] ([ActorID], [ActorName], [BirthDate], [CountryID]) VALUES (5, N'Kevin Spacey', CAST(0x56EA0A00 AS Date), 22)
INSERT [dbo].[Actor] ([ActorID], [ActorName], [BirthDate], [CountryID]) VALUES (6, N'Tim Robbins', CAST(0x3BE90A00 AS Date), 107)
INSERT [dbo].[Actor] ([ActorID], [ActorName], [BirthDate], [CountryID]) VALUES (7, N'Morgan Freeman', CAST(0xBCCA0A00 AS Date), NULL)
INSERT [dbo].[Actor] ([ActorID], [ActorName], [BirthDate], [CountryID]) VALUES (8, N'Harrison Ford', CAST(0x08D20A00 AS Date), NULL)
INSERT [dbo].[Actor] ([ActorID], [ActorName], [BirthDate], [CountryID]) VALUES (9, N'Robert Duvall', CAST(0x99C10A00 AS Date), NULL)
INSERT [dbo].[Actor] ([ActorID], [ActorName], [BirthDate], [CountryID]) VALUES (10, N'Bryan Singer', CAST(0x1BF30A00 AS Date), NULL)
INSERT [dbo].[Actor] ([ActorID], [ActorName], [BirthDate], [CountryID]) VALUES (11, N'Liam Neeson', CAST(0x29E00A00 AS Date), NULL)
INSERT [dbo].[Actor] ([ActorID], [ActorName], [BirthDate], [CountryID]) VALUES (12, N'Keanu Reeves', CAST(0x9FF10A00 AS Date), NULL)
INSERT [dbo].[Actor] ([ActorID], [ActorName], [BirthDate], [CountryID]) VALUES (13, N'Mel Gibson', CAST(0x42E50A00 AS Date), NULL)
INSERT [dbo].[Actor] ([ActorID], [ActorName], [BirthDate], [CountryID]) VALUES (14, N'Tom Hanks', CAST(0xFEE50A00 AS Date), NULL)
INSERT [dbo].[Actor] ([ActorID], [ActorName], [BirthDate], [CountryID]) VALUES (15, N'Laurence Fishburne', CAST(0x32ED0A00 AS Date), NULL)
INSERT [dbo].[Actor] ([ActorID], [ActorName], [BirthDate], [CountryID]) VALUES (16, N'Edward Norton', CAST(0xB2F80A00 AS Date), NULL)
INSERT [dbo].[Actor] ([ActorID], [ActorName], [BirthDate], [CountryID]) VALUES (17, N'Brad Pitt', CAST(0x9CF00A00 AS Date), NULL)
INSERT [dbo].[Actor] ([ActorID], [ActorName], [BirthDate], [CountryID]) VALUES (18, N'John Travolta', CAST(0x96E20A00 AS Date), NULL)
INSERT [dbo].[Actor] ([ActorID], [ActorName], [BirthDate], [CountryID]) VALUES (19, N'Samuel L. Jackson', CAST(0x39DB0A00 AS Date), NULL)
INSERT [dbo].[Actor] ([ActorID], [ActorName], [BirthDate], [CountryID]) VALUES (20, N'Bruce Willis', CAST(0x20E40A00 AS Date), NULL)
INSERT [dbo].[Actor] ([ActorID], [ActorName], [BirthDate], [CountryID]) VALUES (21, N'Uma Thurman', CAST(0xAFF90A00 AS Date), NULL)
INSERT [dbo].[Actor] ([ActorID], [ActorName], [BirthDate], [CountryID]) VALUES (22, N'James Stewart', CAST(0x50A10A00 AS Date), NULL)
INSERT [dbo].[Actor] ([ActorID], [ActorName], [BirthDate], [CountryID]) VALUES (23, N'Arnold Schwarzenegger', CAST(0x38D90A00 AS Date), NULL)
INSERT [dbo].[Actor] ([ActorID], [ActorName], [BirthDate], [CountryID]) VALUES (24, N'Billy Dee Williams', CAST(0x84CA0A00 AS Date), NULL)
INSERT [dbo].[Actor] ([ActorID], [ActorName], [BirthDate], [CountryID]) VALUES (25, N'Johnny Depp', CAST(0xFAEF0A00 AS Date), NULL)
INSERT [dbo].[Actor] ([ActorID], [ActorName], [BirthDate], [CountryID]) VALUES (26, N'Faye Dunaway', CAST(0xE7CF0A00 AS Date), NULL)
INSERT [dbo].[Actor] ([ActorID], [ActorName], [BirthDate], [CountryID]) VALUES (27, N'James Hong', CAST(0x81BD0A00 AS Date), NULL)
INSERT [dbo].[Actor] ([ActorID], [ActorName], [BirthDate], [CountryID]) VALUES (28, N'Diane Keaton', CAST(0x00D70A00 AS Date), NULL)
INSERT [dbo].[Actor] ([ActorID], [ActorName], [BirthDate], [CountryID]) VALUES (29, N'Talia Shire', CAST(0x6ED70A00 AS Date), NULL)
INSERT [dbo].[Actor] ([ActorID], [ActorName], [BirthDate], [CountryID]) VALUES (30, N'John Cazale', CAST(0x29C80A00 AS Date), NULL)
INSERT [dbo].[Actor] ([ActorID], [ActorName], [BirthDate], [CountryID]) VALUES (31, N'Rudy Bond', CAST(0x8BA70A00 AS Date), NULL)
INSERT [dbo].[Actor] ([ActorID], [ActorName], [BirthDate], [CountryID]) VALUES (32, N'Danny DeVito', CAST(0x62D50A00 AS Date), NULL)
INSERT [dbo].[Actor] ([ActorID], [ActorName], [BirthDate], [CountryID]) VALUES (33, N'Scatman Crothers', CAST(0x2DA40A00 AS Date), NULL)
INSERT [dbo].[Actor] ([ActorID], [ActorName], [BirthDate], [CountryID]) VALUES (34, N'Mark Hamill', CAST(0x29DF0A00 AS Date), NULL)
INSERT [dbo].[Actor] ([ActorID], [ActorName], [BirthDate], [CountryID]) VALUES (35, N'Carrie Fisher', CAST(0x66E60A00 AS Date), NULL)
INSERT [dbo].[Actor] ([ActorID], [ActorName], [BirthDate], [CountryID]) VALUES (36, N'Alec Guinness', CAST(0xAFA90A00 AS Date), NULL)
INSERT [dbo].[Actor] ([ActorID], [ActorName], [BirthDate], [CountryID]) VALUES (37, N'Anthony Daniels', CAST(0x2FD70A00 AS Date), NULL)
INSERT [dbo].[Actor] ([ActorID], [ActorName], [BirthDate], [CountryID]) VALUES (38, N'Kenny Baker', CAST(0x80EB0A00 AS Date), NULL)
INSERT [dbo].[Actor] ([ActorID], [ActorName], [BirthDate], [CountryID]) VALUES (39, N'Peter Mayhew', CAST(0xACD40A00 AS Date), NULL)
INSERT [dbo].[Actor] ([ActorID], [ActorName], [BirthDate], [CountryID]) VALUES (40, N'David Prowse', CAST(0xFFC70A00 AS Date), NULL)
INSERT [dbo].[Actor] ([ActorID], [ActorName], [BirthDate], [CountryID]) VALUES (41, N'James Earl Jones', CAST(0xA5C10A00 AS Date), NULL)
INSERT [dbo].[Actor] ([ActorID], [ActorName], [BirthDate], [CountryID]) VALUES (42, N'Jack Purvis', CAST(0x0BCB0A00 AS Date), NULL)
INSERT [dbo].[Actor] ([ActorID], [ActorName], [BirthDate], [CountryID]) VALUES (43, N'Andre Morell', CAST(0x19A30A00 AS Date), NULL)
INSERT [dbo].[Actor] ([ActorID], [ActorName], [BirthDate], [CountryID]) VALUES (44, N'Jack Hawkins', CAST(0x9FA40A00 AS Date), NULL)
INSERT [dbo].[Actor] ([ActorID], [ActorName], [BirthDate], [CountryID]) VALUES (45, N'G.D. Spradlin', CAST(0xD6B20A00 AS Date), NULL)
INSERT [dbo].[Actor] ([ActorID], [ActorName], [BirthDate], [CountryID]) VALUES (46, N'Frank Sivero', CAST(0x90DF0A00 AS Date), NULL)
INSERT [dbo].[Actor] ([ActorID], [ActorName], [BirthDate], [CountryID]) VALUES (47, N'David Aston', CAST(0x6BF90A00 AS Date), NULL)
INSERT [dbo].[Actor] ([ActorID], [ActorName], [BirthDate], [CountryID]) VALUES (48, N'Joe Pesci', CAST(0xDBD20A00 AS Date), NULL)
INSERT [dbo].[Actor] ([ActorID], [ActorName], [BirthDate], [CountryID]) VALUES (49, N'Mike Starr', CAST(0x81DD0A00 AS Date), NULL)
INSERT [dbo].[Actor] ([ActorID], [ActorName], [BirthDate], [CountryID]) VALUES (50, N'Frank Vincent', CAST(0xD6CD0A00 AS Date), NULL)
INSERT [dbo].[Actor] ([ActorID], [ActorName], [BirthDate], [CountryID]) VALUES (51, N'James Cosmo', CAST(0x27CF0A00 AS Date), NULL)
INSERT [dbo].[Actor] ([ActorID], [ActorName], [BirthDate], [CountryID]) VALUES (52, N'Joe Turkel', CAST(0xA3BC0A00 AS Date), NULL)
INSERT [dbo].[Actor] ([ActorID], [ActorName], [BirthDate], [CountryID]) VALUES (53, N'Martin Landau', CAST(0x3FC20A00 AS Date), NULL)
INSERT [dbo].[Actor] ([ActorID], [ActorName], [BirthDate], [CountryID]) VALUES (54, N'David Andrews', CAST(0x67E00A00 AS Date), NULL)
INSERT [dbo].[Actor] ([ActorID], [ActorName], [BirthDate], [CountryID]) VALUES (55, N'Tim Roth', CAST(0xE8EC0A00 AS Date), NULL)
INSERT [dbo].[Actor] ([ActorID], [ActorName], [BirthDate], [CountryID]) VALUES (56, N'Eric Stoltz', CAST(0x70ED0A00 AS Date), NULL)
INSERT [dbo].[Actor] ([ActorID], [ActorName], [BirthDate], [CountryID]) VALUES (57, N'Edward Furlong', CAST(0x0C040B00 AS Date), NULL)
INSERT [dbo].[Actor] ([ActorID], [ActorName], [BirthDate], [CountryID]) VALUES (58, N'Jenette Goldstein', CAST(0x17EB0A00 AS Date), NULL)
INSERT [dbo].[Actor] ([ActorID], [ActorName], [BirthDate], [CountryID]) VALUES (59, N'Michael Madsen', CAST(0x26E90A00 AS Date), NULL)
INSERT [dbo].[Actor] ([ActorID], [ActorName], [BirthDate], [CountryID]) VALUES (60, N'Steve Buscemi', CAST(0x08E80A00 AS Date), NULL)
INSERT [dbo].[Actor] ([ActorID], [ActorName], [BirthDate], [CountryID]) VALUES (61, N'Lucy Liu', CAST(0xAFF70A00 AS Date), NULL)
INSERT [dbo].[Actor] ([ActorID], [ActorName], [BirthDate], [CountryID]) VALUES (62, N'Vivica A. Fox', CAST(0x7AF10A00 AS Date), NULL)
INSERT [dbo].[Actor] ([ActorID], [ActorName], [BirthDate], [CountryID]) VALUES (63, N'Daryl Hannah', CAST(0x46EC0A00 AS Date), NULL)
INSERT [dbo].[Actor] ([ActorID], [ActorName], [BirthDate], [CountryID]) VALUES (64, N'David Carradine', CAST(0x0DCA0A00 AS Date), NULL)
INSERT [dbo].[Actor] ([ActorID], [ActorName], [BirthDate], [CountryID]) VALUES (65, N'Chia Hui Liu', CAST(0x1DE50A00 AS Date), NULL)
INSERT [dbo].[Actor] ([ActorID], [ActorName], [BirthDate], [CountryID]) VALUES (66, N'Michael Parks', CAST(0xDECE0A00 AS Date), NULL)
INSERT [dbo].[Actor] ([ActorID], [ActorName], [BirthDate], [CountryID]) VALUES (67, N'Bo Svenson', CAST(0x05D00A00 AS Date), NULL)
INSERT [dbo].[Actor] ([ActorID], [ActorName], [BirthDate], [CountryID]) VALUES (68, N'Kevin Spacey', CAST(0x56EA0A00 AS Date), NULL)
INSERT [dbo].[Actor] ([ActorID], [ActorName], [BirthDate], [CountryID]) VALUES (69, N'Annette Bening', CAST(0xAFE80A00 AS Date), NULL)
INSERT [dbo].[Actor] ([ActorID], [ActorName], [BirthDate], [CountryID]) VALUES (70, N'Thora Birch', CAST(0x9E0A0B00 AS Date), NULL)
INSERT [dbo].[Actor] ([ActorID], [ActorName], [BirthDate], [CountryID]) VALUES (71, N'Wes Bentley', CAST(0x9A050B00 AS Date), NULL)
INSERT [dbo].[Actor] ([ActorID], [ActorName], [BirthDate], [CountryID]) VALUES (72, N'Mena Suvari', CAST(0x3C060B00 AS Date), NULL)
INSERT [dbo].[Actor] ([ActorID], [ActorName], [BirthDate], [CountryID]) VALUES (73, N'Chris Cooper', CAST(0xDBDE0A00 AS Date), NULL)
INSERT [dbo].[Actor] ([ActorID], [ActorName], [BirthDate], [CountryID]) VALUES (74, N'Peter Gallagher', CAST(0xB9E40A00 AS Date), NULL)
INSERT [dbo].[Actor] ([ActorID], [ActorName], [BirthDate], [CountryID]) VALUES (75, N'Allison Janney', CAST(0xCAEA0A00 AS Date), NULL)
INSERT [dbo].[Actor] ([ActorID], [ActorName], [BirthDate], [CountryID]) VALUES (76, N'Scott Bakula', CAST(0x7FE30A00 AS Date), NULL)
INSERT [dbo].[Actor] ([ActorID], [ActorName], [BirthDate], [CountryID]) VALUES (77, N'Sam Robards', CAST(0xC0ED0A00 AS Date), NULL)
INSERT [dbo].[Actor] ([ActorID], [ActorName], [BirthDate], [CountryID]) VALUES (78, N'Barry Del Sherman', CAST(0x09EF0A00 AS Date), NULL)
INSERT [dbo].[Actor] ([ActorID], [ActorName], [BirthDate], [CountryID]) VALUES (79, N'Ara Celi', CAST(0x85FF0A00 AS Date), NULL)
INSERT [dbo].[Actor] ([ActorID], [ActorName], [BirthDate], [CountryID]) VALUES (80, N'John Cho', CAST(0xBBFC0A00 AS Date), NULL)
/****** Object:  Table [dbo].[WaitingList]    Script Date: 05/13/2017 15:15:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WaitingList](
	[MemberID] [int] NOT NULL,
	[MovieID] [nchar](10) NOT NULL,
	[WaitDate] [date] NOT NULL,
 CONSTRAINT [PK_WaitingList] PRIMARY KEY CLUSTERED 
(
	[MemberID] ASC,
	[MovieID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[WaitingList] ([MemberID], [MovieID], [WaitDate]) VALUES (1, N'A131      ', CAST(0xD3310B00 AS Date))
INSERT [dbo].[WaitingList] ([MemberID], [MovieID], [WaitDate]) VALUES (100, N'H148      ', CAST(0x3B320B00 AS Date))
/****** Object:  Table [dbo].[Review]    Script Date: 05/13/2017 15:15:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Review](
	[MemberID] [int] NOT NULL,
	[MovieID] [nchar](10) NOT NULL,
	[ReviewText] [nvarchar](max) NOT NULL,
	[Rate] [tinyint] NOT NULL,
	[ReviewDate] [datetime] NULL,
 CONSTRAINT [PK_Review] PRIMARY KEY CLUSTERED 
(
	[MemberID] ASC,
	[MovieID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (1, N'A109      ', N'it was good not great i liked it better? than borat. its basically the same formula as borat tho. just the jokes were funnier. far more obscene than borat. its interesting i''d give it a 4/5 but i wouldnt really watch this movie again', 2, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (1, N'C104      ', N'I personally found it to be a funny over-the-top movie but in the end it? seemed like a long episode of Cohen''s show that Bruno is based on', 3, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (1, N'C136      ', N' Another Horrible Jew made movie to pry some? easy money from the public. Lets see No Script No Plot No Story no paying actors since they use people from a crowd in public. So Bruno probobly cost $3 million to make but you suckers will make this Jew rich. Sasha is the opposite of Johnney Depp who screens his roles carefully and chooses roles not based on the paycheck', 1, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (1, N'H111      ', N'My friends and I couldnt stop laughing From the beginning to the endI cant wait for his next film. Two-Thumbs-Up...', 5, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (1, N'R100      ', N'i saw this film a while ago in a free screening and i thought it was a 10/10', 5, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (2, N'A139      ', N'I can''t say anything about the plot I haven''t seen the film yet also story means the same as plot dumbshit but no actors? You DO realize this is SUPPOSED to seem real and? offensive right?', 3, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (2, N'A141      ', N'if you discriminate people who make crappy movies why? point out the fact that they happen to jewish? being jewish has nothing to do with whether or not they make good/crappy movies. the only reason you don''t give movies made by jews a chance is probably because you have a strong dislike for jews. which is called discriminating movies because they were made by jews', 2, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (2, N'D129      ', N'I''m NOT gay just to let you know but I would like to know what you find wrong? with being gay?? I mean it''s GENETIC. It''s not a CHOICE. It''s like the color of your skin. You really can''t change it! If you actually knew anything about ANYTHING you''d know that it isn''t a CHOICE you are BORN with it', 3, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (2, N'R150      ', N'you have to be reeallly insensitive to like this movie! this movie went too far in too many ways', 4, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (3, N'A119      ', N'was a movie that although very publicized did not quite reach it''s goals; that? is the furthering of gay rights was not achieved mostly due to the grotesque nature of the film', 5, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (3, N'A126      ', N'Funniest movie of 2009. I laughed so hard. 10/10 FO SHO!', 5, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (3, N'M134      ', N'What you''re talking about is called "skipping a generation." I originally had it in there but it went over the character limit. Anyway that still means *EVERY* homosexual comes from a line of homosexuals by your logic. Which isn''t the case; in fact by your logic there are never any first generation homosexuals. For if there were it wouldn''t be genetic. Ah but you miss my point;? if you''re put in the custody of the state then you weren''t kicked out. There''s a big difference', 3, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (3, N'R128      ', N'Borat was better and this is overdone', 1, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (4, N'C104      ', N'I found the movie freaking hilarious but it was nasty at moments... i liked it if you could be offensed by it don''t go in the movie he offenses: queer straight african american muslim jew christian...everyone if there isn''t a ridiculisation world will perish', 4, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (4, N'C110      ', N'WTF? How did ANYONE like this crap?', 1, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (4, N'D121      ', N' the gay thing is not realy a big deal and he was tring to hard', 4, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (4, N'F114      ', N'I really agree with you I saw this movie only for a couple of minutes and I was disgusted by the vulgarity. It''s not funny at all? it''s just disgusting and funny only for a population which is IQ same as the room temperature', 2, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (5, N'A126      ', N' 10/10 funniest? fukin movie ever made', 5, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (5, N'A133      ', N'cheap shots at america...?as opposed to what??its not sacha baron cohens fault if he sticks a camera in front of rednecks and they act in a certain way...thats just AMERICA...the "self proclaimed" greatest country in the world...if you americans don''t like it...then move on..', 2, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (5, N'C136      ', N'I give this movie a 9 out of 10. All in all the humor was vulgar- but you have to be able to take a joke. This man''s a genius at pushing people''s buttons and getting into his roles; both as Borat and now Bruno. Black America gay America all sorts of aspects of this country we live in was a target. As with? most great comedians- they don''t leave anyone out! If you can''t laugh at yourself what can you laugh at', 4, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (5, N'R128      ', N'most of the people who don''t like the movie just can''t handle the over-the-top gay humor', 4, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (6, N'A140      ', N'definantly not as good as borat. While borat joked about america and guns and? jews Bruno was all jokes about gay people and i just didnt find it that funny', 3, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (6, N'C138      ', N'funny thing is i told my? friend that he should watch this movie with his dad. my friend is 14. he didnt want the trailers. and he never saw borat. so he went to the theater with his dad and watched the movie. its so fucking funny! not the movie. the movie sucked. but the reaction of my friend and his dad', 2, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (6, N'C142      ', N'Now im a racist? WTF your a fucking dumbass. Homosexuals are not a race ok? Go to school oh wait they dont allow fags like you in school right? you should go and live by yourself thats the only thing? you can do now. because no one likes fags like you.', 4, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (6, N'H148      ', N'It is discouraging to know that people are getting their movie review? from blonde girls who start their review with the phrase "OMG!"', 3, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (7, N'C104      ', N'i went. and i walked out because it was just? a gay porn', 3, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (7, N'D105      ', N'A very pointless movie', 5, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (7, N'D149      ', N'this movie was hilarious?', 1, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (8, N'A131      ', N'In Borat mostly the whole movie it showed people were clueless in not knowing that Borat was not a real person. This made the movie great! But in? Bruno you can tell people knew that Bruno just a badly disguised character. That took all the fun out of the movie and other stuff', 4, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (8, N'A133      ', N'this movie was a little too? much it had some really funny parts but towards the middelish end it just got really uncomfortable too watch', 5, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (8, N'D106      ', N'Most of the idiots that don''t like Bruno? or Borat are too stupid too realize that it''s real people in the movie giving their real reactions. These movies are great because they show how stupid most people are', 3, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (9, N'A137      ', N'The part with his dick was funny?', 2, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (9, N'C136      ', N'movie was? hilarious', 3, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (9, N'C156      ', N'fuck you if you? seen the movie you know it was very funny', 5, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (9, N'F135      ', N'The reason they? caouldn''t do it in England is that Sacha Baron Cohen had been a massive celebrity there for quite some time has anyone in the U.S. even heard of Ali G? yea i have..."yo check itim here wit my main man"..you know? wht i mean', 4, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (10, N'A103      ', N'why are people wasting their time? fighting about a movie? Gosh you guys are dumb!!! And i never saw bruno but it seems cool! =)', 4, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (10, N'C101      ', N'Michael Moore is a bitch', 3, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (10, N'C102      ', N'Who ever thought the movie was offensive is a? stupid cunt. Bruno is the best movie ever sucked more than that asian boy? toy sucked his (due to the fact that this site is rated TV-PG offensive commentary has been replaced with it''s literal term) Richard', 2, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (10, N'C104      ', N'"Is he the Andy Kaufman of our time"', 3, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (10, N'R100      ', N'i love this movie', 5, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (11, N'A107      ', N'the guy in the white shirt needs to pull that cock out of his ass and not take things so seirious  Laugh a little!?', 3, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (11, N'A109      ', N'That gay guy needs to grow some balls and use them', 5, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (11, N'D105      ', N'I just saw it and some parts are funny some are not. I generally liked the movie', 1, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (11, N'D106      ', N'I liked it think it? was disturbingly hilarious 7/10', 2, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (11, N'D108      ', N'were funny parts but overall i give it a 5 1/2', 4, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (12, N'C110      ', N'People who say this is like a gay porn obviously have never seen a gay porn when he went on howard stern they beat him at his own game where he almost broke character when they got super gay on him anyways I love the movie he should do an ali G movie that is like doc style? not scipted like the other one ALi G is his best character Hmm 8/10', 4, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (12, N'D112      ', N'the movie was great. But people that have complexes of sort will not like it. It was a funny film and because there was a penis you cant? say it wasn�t funny you assholes. IT�S JUST A FILM and btw what did you expect?', 4, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (12, N'H111      ', N'so uve seen gay porn i bet u watch? it all the time dont you', 4, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (12, N'M113      ', N'the moviewas very funny could not stop laughingoved? it 10/10', 5, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (13, N'A117      ', N'I''m NOT gay just to let you know but I would like to know what you find wrong? with being gay?? I mean it''s GENETIC. It''s not a CHOICE. It''s like the color of your skin. You really can''t change it! If you actually knew anything about ANYTHING you''d know that it isn''t a CHOICE you are BORN with it', 5, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (13, N'B116      ', N'it was a funny movie', 4, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (13, N'F114      ', N'i think i am a tad to young to watch bruno But it sounds AWESOME thanks for doin a vid on it', 3, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (13, N'F115      ', N'It just pushes the? boundries more than anymovie ever made', 5, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (14, N'A122      ', N'poor. I saw borat and it had a few funny parts but it got stale. This was similar only I was expecting it to be like that. Cohen''s? funniest moments are on the Ali Gi show not his movies. Much of it is obviously staged and that takes half the humor out of it. hilarious movie but don''t spend your money? on it. sneak in instead. :) somtimes i could see that he was trying to show the stupidity of people? but there where times that just left me like that was dumb', 5, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (14, N'B118      ', N'you are quite possibly the dumbest person in the universe if you think being gay is? genetic. it is OBVIOUSLY a choice seeing as how when mankind was created there was ONE MAN and ONE WOMAN!', 1, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (14, N'D121      ', N'The movie was? great. The reactions were the same maybe better than the ones in Borat. See it.', 3, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (14, N'H120      ', N'HAHAHAHAHAHA 2:48 the black guy talks chopped and? screwed', 2, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (15, N'A123      ', N'Joe want a movie that shows how stupid people are?? just put a camera in a theater showing Bruno and watch a bunch of disappointed people who walk out. So who is Dummber? The idiot that made such a crappy movie or the crowds that pay for his new mercedes?', 4, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (15, N'A131      ', N'It''s rating all depends. I personally found it to be a funny over-the-top movie but in the end it? seemed like a long episode of Cohen''s show that Bruno is based on.', 4, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (15, N'A133      ', N'One word to describe the entire movie: GAY?', 5, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (15, N'C124      ', N'Y THE HATE did? u see the movie?', 3, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (16, N'A137      ', N'Def. Movie was 10/10? for me. ', 5, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (16, N'C136      ', N'in a whole bunch of school movies that are rated pg they say? shit fuck ass whore bitch etc it doesnt matter :o ', 5, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (16, N'F135      ', N'The dude said shit and? this video is rated PG. I am laughing my ass off. ', 5, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (16, N'M134      ', N'the scene where Bruno? has the baby on the moped and nearly hits a car is in my home town of Mesquite Tx I thought Bruno was funny and worth seeing however it was not Borat? funny.', 1, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (17, N'A139      ', N'i dont know if i like? it? ', 2, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (17, N'A140      ', N'I''d say a 10/10. It was really comical and funny and even though it did go', 5, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (17, N'A141      ', N'the guy saying 0? dont know the meaning of comedy!! ', 5, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (17, N'C138      ', N'i hate that british chick. ', 3, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (18, N'C142      ', N'The movie had its funny parts but it was way too short and i felt like? I spent too much money. 4.5 all those  guys from the MTA ', 3, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (18, N'C143      ', N'I live in alabama. I thought it was a pretty good movie. I laughed my ass off at parts. He made fun of rednecks but hell I make fun of them all the time. I hate them. Trailer trash if you ask me. But I''m one of  the rebellious type. ', 2, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (18, N'C144      ', N'gay  movie so many penises ', 4, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (18, N'C145      ', N'I found the movie freaking hilarious but it was nasty at moments... i liked it if you could be offensed by it don''t go in the movie he offenses: queer straight african american muslim jew christian...everyone', 3, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (19, N'A107      ', N'The movie is just total waste of time - so stupid and  disgusting! ', 1, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (19, N'B146      ', N'if there isn''t a ridiculisation world will perish keep up the good work  cohen   ', 5, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (19, N'D149      ', N'In my opinion  the movie was okay but he took it way to far with bruno and borat. ', 3, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (19, N'F147      ', N'Letoyah is a bitch and bcuz of all the news about MJ''s death I''m actually eager 2 c wut he sed th@ was  so terrible. I hope it''s on the DVD with all the other non staged things. I like MJ and I liked sacha. ', 3, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (19, N'H148      ', N'the america question was stupid because he played jokes on the english  his whole career just about up until the borat movie. Do your research. ', 3, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (20, N'A151      ', N'i heard its like a gay porno ', 3, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (20, N'A152      ', N'I thought bruno was way funnier..people just say borat is better because that was his first film and the concept was new..bruno is the same concept but just funnier I think it''s definatley worth  it ', 2, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (20, N'H153      ', N'that old  guy in the white shirt is a bitch ', 3, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (20, N'R150      ', N'10 out  of 10 ', 5, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (21, N'A154      ', N'There are certain images from Bruno that I want burned out of my brain!', 5, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (21, N'C101      ', N'i didnt like  borat cuz it was gross ', 2, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (21, N'C155      ', N'They need to make a lesbian version of bruno then I''ll  see it. ', 3, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (21, N'C156      ', N'me and my friends went and saw it. we thought it would be funny but that was not the case. that movie is a sick movie!!!! it s so many gay things like a  flapping penis!!!!! DONT SEE IT!!!!!! ', 1, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (21, N'R100      ', N'Missed the point of borat.  ', 3, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (22, N'A103      ', N'lol although bruno could be cringingly disgusting/shocking its still a hilarious movie!', 4, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (22, N'C102      ', N' I myself thought it was funny and would recomend it to anybody  who asked i fthey should see it although some people might find it offensive.', 4, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (22, N'C104      ', N'i think pretty much  most of the people who don''t like bruno just can''t handle the over-the-top gay humor. ', 5, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (22, N'D105      ', N'i found it  so funny but it does  u how homofobic america realy is ', 2, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (23, N'A107      ', N'interviewing AMERICAN people about Bruno is stupid...Of-course they are going to HATE IT!!', 1, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (23, N'A109      ', N'Interview European audiences (e.g. UK) and you will see that the majority loved it...', 5, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (23, N'D106      ', N'I thought the movie  sucked ass', 3, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (23, N'D108      ', N'The whole movie parodies America and its homophobic  treatment of gays..', 3, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (24, N'C110      ', N'it was fuuny but i hated the part where it s his  dick on the screen ', 3, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (24, N'D112      ', N'I give this movie a 9 out of 10. All in all the humor was vulgar- but you have to be able to take a joke. This man''s a genius at pushing people''s buttons and getting into his roles; both as Borat and now Bruno. Black America gay America all sorts of aspects of this country we live in was a target. As with  most great comedians- they don''t leave anyone out! If you can''t laugh at yourself what can you laugh at  ', 3, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (24, N'F114      ', N'okay my friends begged me to see this movie. one I couldn''t find anything funny about this. I tried but I felt my IQ drop. When I walked out of the movie I looked up at the sky and thanked God I got out of there alive I tried to watch it just for the  randomness but I can''t it was too boring and just wrong. But my friends both loved it... I think I stick with Melbrooks.  ', 3, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (24, N'H111      ', N'solid 8/10 for me :P ', 4, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (24, N'M113      ', N'Bruno sucked I saw it and wanted to see it I never saw Borat but this was just offensive I left right in the middle... you either love it or hate it and I think america has decided that we hater it I felt like throwing up at the swinger part i  give it a -12 out of ten waste of mu F*** money ', 5, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (25, N'A117      ', N'Dude your a biggot what is next hitguy7878 you going to talk about blacks.  ', 2, NULL)
GO
print 'Processed 100 total records'
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (25, N'A119      ', N'My review is that this film was not that funny and the few chuckles that I had through out the entire film did NOT make up for the fact that most of the raunchiness was not funny but just completely wrong and disgusting. It is said that this film is supposed to poke fun at America  and Homophobia. That message wasnt received. In fact it belittles homosexuals.', 3, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (25, N'B116      ', N'That''s just  ridiculous! ', 5, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (25, N'B118      ', N'You''re both being bigoted and homophobic by using "Gay" and "Fag" as an insult attached to every single comment.  So how about you both just shut the fuck up  ', 3, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (25, N'F115      ', N'funny thing is i told my  friend that he should watch this movie with his dad. my friend is 14. he didnt want the trailers. and he never saw borat. so he went to the theater with his dad and watched the movie. its so fucking funny!', 3, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (26, N'A152      ', N'Sorry I dont watch porn for a living. There was no need to see 2 guys basically getting it on. The movie would have  been way better without it.', 1, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (26, N'D121      ', N'I felt the movie itself was okay and pretty funny but they really could have cut down  on all the gay sexual acts. I felt it was too crude. ', 3, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (26, N'H120      ', N'Overall the raunchiness wasn''t funny. This was the first film that I honestly wish I could forget completely.  I couldn''t have said it better  myself. i couldnt agree with you more.', 2, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (27, N'A122      ', N'im 12 and iv  seen it.....fucking funny zamalchi ...i thought the movie sucked compared to Borat at least from what i managed to watch before turning it off. Unlike Borat this movie seemed really  random and like he was trying hard to be funny in this one. ', 3, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (27, N'A130      ', N'That''s all I was thinking about when I saw this movie! That was so annoying! Bruno didn''t act like this in the Ali G  . Why did they make the character more flamboyant and over-the-top than the original Bruno on the television  ', 4, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (27, N'C104      ', N'I don''t know. They totally ruined his characters personality and it just messed it up. I haven''t seen the  movie myself but the trailers look like enough for me. ', 4, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (27, N'C142      ', N'Bruno is the adult  Fred. ', 4, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (28, N'A123      ', N' A Really funny  movie! Everybody laughed! ', 2, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (28, N'A125      ', N'girl''s speaking style  is different and amazing ', 5, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (28, N'A126      ', N'wow. this bitch  is a fucking idiot. ', 1, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (28, N'C124      ', N'I watched it the first day it came out! LOL  I love bruno! ', 1, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (29, N'A130      ', N'ppl who say all that crazy fucked up shit to someone else and then say "you are  fucking this world up" are hypocrites. ', 2, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (29, N'C136      ', N'I prefered  Andy Kaufman. ', 4, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (29, N'D127      ', N' I just watched  this online - great movie!! ', 5, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (29, N'D129      ', N' what the hell man Bruno was the worts movie in the world not to mention all the gay scenes and im one for all but i  have to say i as really happy to see Bruno but the movie sucked ass go home get your vibrator out and start FUCKING your self ', 3, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (29, N'R128      ', N' Quality pretty good at streaming-movies[dot]tk ', 5, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (30, N'A131      ', N' bruno was okay. check  out my bruno review only 7 secs long ', 1, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (30, N'A133      ', N'man this movie  was fucking awesome!!! i loved it!! much beter than borat! ', 5, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (30, N'C136      ', N'i saw it and it made me feel a  bit gay ', 2, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (30, N'F135      ', N'Good also offensive I loved it.  ', 3, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (30, N'M134      ', N'The movie was  Boratastic ', 4, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (31, N'A137      ', N'personally thought this movie  was a gay porn it was horrid ', 1, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (31, N'A139      ', N'whoever thinks being gay is a choice is a complete fuckhead. I''m gay and I can tell you now I didn''t CHOOSE to like guys. I didn''t CHOOSE for my hormones to go off when I see a dude instead of a chick. I kissed a boy in first grade before I ever knew what gay or sex  WAS so if you wanna tell me I CHOSE to be one of the most hated minorities go ahead. You''re only adding to the number of ignorant people in America. ', 5, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (31, N'A140      ', N' i may not be gay but i know what your saying  ', 3, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (31, N'A141      ', N'fuck gay-haters  but just leave them alone... ', 2, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (31, N'C138      ', N'yesh exactly!! thats what me  and my friends said right after we saw it. ', 2, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (31, N'C142      ', N'I think gay haters don''t really have a problem with gay people. They want to protect a "masculin" image by rejecting gays while they find it 100% fine deep down inside. I''m 200% straight but a virgin at 23 and so is one  of my best friends. The only difference between us is that my friend represents this gay hating image because he fears that people think he might be gay if he were as honest about it as I am. ', 3, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (32, N'B146      ', N'It is how your made up. Your very right though you do "choose" to engage in homosexual activities. You choose you you go out with and you  choose who you fuck. You do not choose who you are attracted to or who you love. And you strsight (I assume) so you could choose to makeout with a guy if you wanted to right  There is nothing stopping you. But would you like it  No! That is genetic. It is in your DNA ', 4, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (32, N'C143      ', N'this movie sucked so horribly- dont negatize this cause this makes sense. kids have seen borat. kids think that bruno is the same as borat. if you have seen the movie the parts where yknow... he swings his penis around in advertantly is a image to never get out of your head unles you saw a horror flick or something... seriously on the ads it tells you he''s gay but they didnt tell us that he has so much  sex with dudes mostly uncensored. by that i mean i think that we were mislead of bruno... ', 2, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (32, N'C144      ', N'firest of all sachabarron cohen is not gay he''s just trying to be funny ok and dumbfucker leave your fucking hate comments to yourself bruno was highlarious i give it a 99999  1/2 and no i am not gay ok ', 1, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (32, N'C145      ', N'Hilarious movie that displays the homophobic America  :-)! ', 5, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (32, N'F147      ', N'If you liked Borat you will like Bruno even more if you  didn''t like Borat you will still like Bruno. ', 5, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (33, N'A151      ', N'Cohen just likes to trash other nations. But he is very  good at it. ', 5, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (33, N'D149      ', N'it was good  but i was disappointed i expected it to be a lot funnier i liked borat better ', 2, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (33, N'H148      ', N'Borat was better and this  is overdone. ', 3, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (33, N'R150      ', N'i thought it was a "jackass" with a storyline! so  was borat... ', 1, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (34, N'A152      ', N'some stuff was funny but seeing a flopping genital  on a movie screen...gross ', 2, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (34, N'A154      ', N'Bruno is the new "Jackass" of  2009.', 4, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (34, N'C155      ', N'That  was a really good example with the animals by the way :) okvideos5 Animals also eat their own poop and kill each other because of instinct. I am man not an animal and I choose not to murder rape steal or stick anything in poop holes.', 2, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (34, N'H153      ', N'agreed- that was  a definitely "Whoaaaa thurrr..." moment ', 1, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (35, N'C101      ', N'Did you really just call me the dumbest person in the universe  1. My IQ is 146 which is technically genius and 2. It has been PROVEN by multiple SCIENTISTS and DOCTORS (I have this weird feeling that you are...neither) that it is genetic. You are born with it. Let  me explain it so that your walnut sized brain will compute: Females have two X chromosomes. Males have one X and one Y. The X chromosomes carries over 2500 traits the Y carries about 15. This is why only males can be color blind. ', 3, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (35, N'C102      ', N'Now imagine that  there are these things called TRAITS that you can inherit from your mother and your father. ', 4, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (35, N'C156      ', N'They choose to be homosexual to feel like  they belong to a group and they are too wussy scared ugly etc.. to mate with a girl. The need for intimacy overrules the negative of being abused and oppressed by society. ', 7, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (35, N'R100      ', N'You can''t choose  to fall in love with your own gender. ', 5, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (36, N'A103      ', N'Also in autopsies of homosexuals the hypothalamus is shaped differently than those in heterosexuals. So by being homophobic and incredibly unintelligent you are also racist sexist ableist sizist and Heterosexist. What are you even watching this for ', 3, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (36, N'A107      ', N'Could they *choose* not to engage in sexual activities  Yes therefore it is a choice.', 1, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (36, N'C104      ', N'WOW...i honestly can''t believe how ignorant and dumb you are...you don''t just come out of the woom when your born and think to your self "I wanna like boys"...a person can''t choose to do something like that..if you honestly think that its a choice then you are mentally ill or have an  EXTREMELY low IQ that is if you know what IQ is....oh and PS i''m not gay just smart ', 4, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (36, N'D105      ', N'you sir  are an ignorant bigot ', 1, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (36, N'D106      ', N'It''s *not* genetic and it *is* a choice.', 2, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (37, N'A109      ', N'also he tryed nudetdy way to much and dinint get the reactions you wouled expect from some body that was in it was more like this is pretty wierd but ok ill get over it not like borat were evry body had something funny to say or a classic reaction but in bruno it was like people were just there and it was more about him ', 1, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (37, N'C110      ', N'in the end his carecter was funny but did not have enogh ram for a  hole movie ', 4, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (37, N'D108      ', N'If it was  genetic then at least one parent of every homosexual is gay themselves or has a gay sibling.', 3, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (37, N'D112      ', N'I agree with  the gay man and the man with the blue shirt it was weird and way to much volgerity ', 5, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (37, N'H111      ', N'I give BRUNO a 10! In the MicroWave that is. JEEP CHEW!  ', 5, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (38, N'B116      ', N'Bruno is the type of movie only enjoyed by  : 1)14 year old boys 2) Adult men that still think like 14 year old boys. 3) Your average Moron 4) People that have limited IQ', 4, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (38, N'F114      ', N'I am defiantly a fan of random bizarre comical humor. I laughed throughout the whole movie. He is genius and fearless in comedy. He takes the greatest risks to entertain his fans. ', 1, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (38, N'F115      ', N'I love  his bizarre random antics. ', 4, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (38, N'M113      ', N'I give Br no a 10 x 10!', 5, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (39, N'A117      ', N'I loved Bruno Sasha made yet another movie that addressed how Americans stereotype people. I also think that he has major guts to be able to put himself in danger like  he often does. I also respect him because no matter how far he pushes it he continues to stay in charator ', 2, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (39, N'A119      ', N' if you discriminate people who make crappy movies why  point out the fact that they happen to jewish  being jewish has nothing to do with whether or not they make good/crappy movies. the only reason you don''t give movies made by jews a chance is probably because you have a strong dislike for jews. which is called discriminating movies because they were made by jews. ', 1, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (39, N'B118      ', N'Fletcher thats Jewish right  Amazing how Jews love Jew movies. Whether they SUCK Deick or not. I see all the Jewish Movie Reveiwers  in Jewish run Media just loved this Bruno film. I bet if Sashas name was Adolph it would get bad reviews for the exact same film. But Bruno has inspired me to film dressing up like a Rabbi and be Cheap cheap cheap.  CameronFletcherFilms Actually Fletcher isn''t my real last name and i don''t discriminate people for being Jews  or whatever they are. ', 1, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (39, N'H120      ', N'Cameron Smart move calling yourself Fletcher in the movie industry You''ll be promoted  for sure under the pretence of being Jewish. I just discriminate people who make crappy films and most just happen to be Jewish. ', 1, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (40, N'A122      ', N'Let it be known that even Jews make great comedians randalp Just saw it last night.  Not as good as i expected. It was really carried away with some of the gay scenes. ', 3, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (40, N'A123      ', N' You definitely have to be openminded have a good sense of humor and not be easily offended for this movie...there were one or two parts that were a little too much but still a hilarious movie ', 3, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (40, N'D121      ', N'Crude and offensive but with ample cultural insights and gut-busting laughs Bruno is another outlandish and entertaining from Sacha Baron Cohen. ', 2, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (41, N'A125      ', N' I thought it was good because it basically took the shock factor to the next level and left the audience thinking "That was  disgusting but it delievered laughs." ', 3, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (41, N'A126      ', N'It was way too short! I felt like most of the funniest parts were  n in the trailer and the rest was just nudity. I didn''t think it was as good as Borat but not bad. :) ', 3, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (41, N'C124      ', N'Woooohhhhooooooooooooooooooooo oooooooooooo.  ', 5, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (41, N'D127      ', N'i think it was kinda  the same (kinda) ', 1, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (42, N'A130      ', N'Overall  I liked it. Was a great movie. ', 5, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (42, N'A131      ', N'I got ID''d going in. The only id I had with me didn''t have a picture. It could have been anyone''s. I could have been 13 getting in! ', 1, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (42, N'D129      ', N'It got a 16''s rating in Ireland. Really should have been  18''s. Fanatico9022 Here in Portugal it''s rated 16 too but me and a couple of friends (aged 14/15) still managed to watch it and...yeah it SHOULD be rated 18 because of some parts...You have to be ready for what''s comming...If it catched you of  guard you''ll be "scared" xD', 1, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (42, N'R128      ', N'that British woman ..."we wouldn''t fall for it  in a million years"....arrogant ignorant fat bitch....I''m British....(and far far FAR more insightful than that dozy middle-class cow)...and I can assure you all....', 1, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (43, N'A133      ', N'i wuz relly funny.  ', 5, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (43, N'B116      ', N'I''ll never be able to look at an exercise machine the same again.  ', 2, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (43, N'D112      ', N'i lost my  friends cause i recommended bruno ', 2, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (43, N'F114      ', N'I liked to movies point of view it intrigued  me and opened my eyes i really loved it. 9.5/10 ', 5, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (43, N'F115      ', N'i liked it i''d give it  a 10 ', 5, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (43, N'M134      ', N'Its okay but disgusting at parts and kind of disaponting but  it was still halarious. ', 4, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (44, N'A107      ', N'The  funniest movie I have seen at the cinema debate envoking genius England should be proud 10/10 ', 5, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (44, N'A109      ', N'shock value is art. it is always a huge form of protest when you offend. i love this movie. this movie was a big fuck you to  all the dumb shits roaming around this country. i think the reason why this mivie is getting even better. because the uproar and controversy and mixed reviews s what kind of a country this really is. damn funny movie. ', 5, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (44, N'C110      ', N'Being offensive isn''t the  problem it isn''t anywhere near as funny as Borat and seemed staged as some bits. I just hope the Ron Paul  skit wasn''t set up. ', 3, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (44, N'D108      ', N'i thought it was so funny! all of it was so outrageous but it was  so uncalled for and funny! ', 2, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (44, N'H111      ', N'this movie kicks ass  ', 5, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (44, N'M113      ', N'all  the funny parts in the entire movie were in the trailer. just watch the trailer and move on. ', 3, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (45, N'C104      ', N' i went  there i''m like 11 i got scarred (for the rest of the night) ', 4, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (45, N'D105      ', N'you have around  102 reviews to look over ', 4, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (45, N'D106      ', N'10/10 funniest  fukin movie ever made ', 5, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (46, N'A103      ', N'I here it''s like a gay porno so I''m not gonna see it.', 3, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (46, N'C101      ', N'the movie was  funny specially when bruno was having his sex fantasies with the invisible man that part made me laugh so hard in the ovie was really funny i give it a 8 out 10 ', 3, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (46, N'C102      ', N'SHITTIEST MOVIE EVER ', 1, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (46, N'C156      ', N'the only thing this movie accomplishes is grossing everyone out and making some people angry. it doesn''t reveal  anything about anyone because like borat the entire thing is staged. ', 4, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (46, N'R100      ', N'it was a hilarious movie but  it went a little overboard with the gay sex scenes ', 5, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (47, N'A152      ', N'That is true. But it was aired on HBO for the 2 seasons it had though so only a  few of Americans knew who he was until Borat. ', 3, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (47, N'A154      ', N'I think it''s hilairious 10/10  ', 5, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (47, N'C155      ', N'it had gay sex  in it 4/10 ', 2, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (47, N'H153      ', N'He only picks on america because  there was a  called ali g in england and it had borat and bruno in it ', 5, NULL)
GO
print 'Processed 200 total records'
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (48, N'A151      ', N'Ok movie "veeery niiice" 7.5/ 10  ', 4, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (48, N'D149      ', N' not a good movie  ', 1, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (48, N'H148      ', N' It was uber  fabulous :D 10/10 ', 5, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (48, N'R150      ', N'I am horrified in  the funniest possible way hard to watch but pushes the envelope up you grandmas ass he has some LARGE balls ', 3, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (49, N'B146      ', N' Wow dude didnt i already tell you to get the fuck off youtube  gay people are not aloud on any sites period. Another thing wen the fck did i say i watched Bruno i never saw it in my life. im only sixteen and the fact that a sixteen year old is insulting and degrading your whole life in front of thousands of people makes  me laugh on how pathetic you are. Do us all a favor and take ur gay buddies and oh wait even they don''t like you. Your own mother sold you sex cuz you cant get shit. Faggot. ', 4, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (49, N'C144      ', N'If you want to see that stuff go buy a porn dvd dont put it in a movie theater please ', 4, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (49, N'C145      ', N' then why are you calling me gay! oh and im 16 too plus why dont you look at the comments everybodies siding with me and they all  thing ur a fag so who is really degrading who  i think ur fucking gay and all you do is sit around and jack it so go fuck ur friends or your dad or that guy you met in the alley last night and come to terms with your queer self u fucking fag! ', 1, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (49, N'F147      ', N' Movie is a Double Vasup!!!  ', 5, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (50, N'A139      ', N'this movie was hilarious', 4, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (50, N'A140      ', N'It is discouraging to know that people are getting their movie review  from blonde girls who start their review with the phrase "OMG!" ', 5, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (50, N'A141      ', N'me 2 im 14 didnt get offended just laughed only ppl who  shud be offended r gay ppl ', 1, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (50, N'C142      ', N'people ge tthe fuck over it its a god damn movie..  who cares..hes not gay in real life anyway and if this movie offended u i got somthin to say.. im 14 and it didnt offend me so grow the fuck up u whiny ass bastards ', 2, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (50, N'C143      ', N'It was really funny  ', 5, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (51, N'A137      ', N'Most of the idiots that don''t like Bruno  or Borat are too stupid too realize that it''s real people in the movie giving their real reactions. These movies are great because they  how stupid most people are. In Borat mostly the whole movie it ed people were clueless in not knowing that Borat was not a real person. This made the movie great! But in  Bruno you can tell people knew that Bruno just a badly disguised character. That took all the fun out of the movie and other stuff. ', 2, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (51, N'C136      ', N'I saw it and it was fucking discusting!  ', 3, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (51, N'C138      ', N'A very pointless movie', 4, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (51, N'D112      ', N'i went. and i walked out because it was just  a gay porn. ', 1, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (51, N'F135      ', N'same story  line wtf  what a retarded woman ', 4, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (52, N'A130      ', N'FUCKING  AMAZING MOVIE! ', 5, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (52, N'A131      ', N'My opinion- This movie was terrible gay porno 80% of the time. I was really looking forward  to seeing it because of the trailer. But it turned out the only funny bits in the movie were in the trailer.', 3, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (52, N'A133      ', N'he picks on  America because he''s done Britain . . ', 2, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (52, N'M134      ', N'the movie  was great sasha cohen is a fucking genious ', 4, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (53, N'A125      ', N'Br no is the ultimate stereotype of gay men as Borat is a stereotype of Middle Eastern people. The movie ed  the extreme homophopia that''s going on in some places. He made them the joke not gay people. ', 5, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (53, N'A126      ', N'o saw the movie worst movie ive ever seen  walked out 30 minutes in It''s a  bit exaggerated. ', 3, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (53, N'D127      ', N' and  it didn''t help gay rights it gave the people getting pranked a completely wrong picture of a gay man. It probably worsened any stereotypes they had... ', 3, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (53, N'D129      ', N'799977 and  a half 09 LMFAO XD ', 4, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (53, N'R128      ', N'I thought the movie sucked.  Boring as fuck :/ ', 1, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (54, N'A119      ', N'Its a comedy!! Cohens not looking for 9/10 on imdb or 10/10 on rotten-tomatoes... He''s just trying to entertain..something which this film does WELL.. ', 5, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (54, N'A122      ', N'8.5 that thing kept me and my  friends laughing days later ', 4, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (54, N'A123      ', N'3:46lol  im gay myself! HAHHAHAHAHHAHAH ', 1, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (54, N'C124      ', N'6 out of 10 it  kinda sucked ', 1, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (54, N'D121      ', N'BEST  MOVIE EVER LMFAO!!! ', 5, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (54, N'H120      ', N'In my opinion the only reason some people hate the movie is probably because they don''t have the kind of sense of humor to laugh at Borat. It was the same with Bruno.', 2, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (55, N'A117      ', N'That''s not true. I didn''t like the movie because he was gay it was because he was being too gay! From this I mean that he is trying too hard to be represented as an overly gay person when in reality  he shouldn''t be. The way he played in the movie was a cheap joke after another: "Oh look at me - how do you think I can get more gay "', 4, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (55, N'B116      ', N'It''s just a boring concept to watch unwatchable really when compiled. No political or social statement - just Bruno unlike the more superior Borat. ', 2, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (55, N'B118      ', N'i liked the movie there were no not funny parts the people crticizing the movie are full of themselves and pussies it just s you''re just massive homophobes and you''re the reason this movie was created. you''re the reason America was mocked in this film. you''re the reason and  no one else. yes the film is nasty and grotesgue but it was funny and to say the most you did was chuckle then i say you''re fucking lying and P.S. it''s funny because we know homosexuals don''t act in that fashion. ', 5, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (55, N'F115      ', N'okay if you have no problem with the movie being "gay as in homosexual. then could you explain what is exactly too gay look man I already said it before the only people who dislike the movie are: people who are full of  themselves people who try to be individualspussies & you (HOMOPHOBES)like i said the movie is funny because people with half a brain know Homosexuals don''t act like Brunoand Bruno was just as staged as Borat remember the first scene of the movie P.S. your still a homophobe ', 5, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (56, N'D112      ', N'HES FUNNY BUt really  gay thats why i hate him ', 3, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (56, N'F114      ', N'I am not a homophobe; I loved movies like Milk Philadelphia and Brokeback Mountain. There  is a difference between these movies and Bruno: Bruno is cheap shoddy movie. I am indifferent to the gay community. This movie just takes the problems of that community mocks It and makes no valid point in its jokes. Bruno is a very stereotypical character like Borat but can''t be controlled correctly. I thought this movie would make a social statement like Borat but apparently it doesn''t! ', 5, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (57, N'C110      ', N'definantly not as good as borat. While borat joked about america and guns and  jews Bruno was all jokes about gay people and i just didnt find it that funny 4/10 ', 2, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (57, N'H111      ', N'i think he is more the comedic version of michael moore but some dumbasses dont get  it!! ', 1, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (57, N'M113      ', N'the guy who gave  it a bad review was a fucking snob wannabe ', 2, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (58, N'A107      ', N' the movie was suck', 1, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (58, N'A109      ', N'cuz ur gay urself and gay people dont deserve to talk on  youtube so shut the fuck up ', 1, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (58, N'D108      ', N'fuck you faggot im not gay ur the gay one because you enjoyed watching gay bruno so go fuck a dildo or something  u queer ', 3, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (59, N'C104      ', N'no but i''ve got  a problem with being called gay when i say a movie making fun of gay people wasnt funny so fuck you ', 2, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (59, N'D105      ', N'The joke and the irony went "ZOOM"! (right over  your head) ', 3, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (59, N'D106      ', N' Great Movie!', 5, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (60, N'A103      ', N'Sasha Baron Cohen DID make US "fall for it" for about 5 years....THAT''S how he got the jobs in America(where he''s now making 100 times the green)....for Christ''s sake! ', 5, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (60, N'C101      ', N'It wasn''t nearly as funny as borat. it was just disgusting. The main people getting pranked by  this movie are audience members who paid 9 dollars to see about 20 minutes worth of penis. ', 3, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (60, N'C102      ', N' ...mind you though...she probably  doesn''t remember him before he became mainstream and her stuck-up friends told her it was OK to laugh at him. ', 2, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (60, N'R100      ', N'"Im  gay myself" WTF  @!!!! ', 1, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (61, N'A154      ', N'you have to be reeallly insensitive to like this movie! this movie went too far in too many  ways ', 3, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (61, N'C155      ', N'He did a Good  job on the movie but there were to many nude + mature scenes. ', 2, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (61, N'C156      ', N'Is it possible to help or hurt gay rights  I think it''s funny that all these gay people are trying to stop someone from doing something they find moraly  incorrect... ', 3, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (62, N'A151      ', N'ITS SACHA!!!!!!!!!!!!  ', 1, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (62, N'A152      ', N' A hysterical  look at controversial subjects in the United States. ', 5, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (62, N'H153      ', N' Wow! I  really think that movie was great. It was hilarious! I mean he is offensive but thats Sasha Baron Cohen. Hes always like that. He did a great job. And i agree that he could''ve choosed more difficult people than the hunters. I would give Bruno a 9. thanks! flannelking  I think Sasha  takes what Americans are the most afraid of people that sound slightly middle eastern (Borat) or homosexuals (Bruno). The only thing I don''t like about his work that the last two films we''re done in that mockumentary style that makes Bruno seem just like a rehash of Borat. ', 5, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (63, N'D149      ', N'it was not that good too GGGGGGGAAAAAAYYYYYYY ', 2, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (63, N'H148      ', N'dude the movie was funny as  fuck you homophobic cunt ', 4, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (63, N'R150      ', N'worst movie iv ever  seen i wanted to gouge out my eyes ', 1, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (64, N'B146      ', N'Do u want to see a movie full of  gay porn and dicks the whole time... ', 4, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (64, N'C145      ', N'Haha my parents walked out half way through they were so offended. Now I will have  to go see it. ', 3, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (64, N'F147      ', N'"Why does he keep picking on America "', 2, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (65, N'A141      ', N'love ure crazy faces (mwhehe I do that toooooo) ', 2, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (65, N'C142      ', N'i love  him! it was a bit perverted but then agin it is a gay movie...i found it better then bruno :) ', 5, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (65, N'C143      ', N'the movie did not measure up  to Borat. It was disjointed had alot of predictable cliche and intellectually shallow sketches. The underlying crassness and stereotyped characters was offensive and sophmoric. ', 3, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (65, N'C144      ', N'it''s nasty  as hell but that what makes it funny ', 5, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (66, N'A139      ', N'well i kinda admire the guy who  plays him but only because he has the courage to do that i liked borat but bruno was just way more funny to me! I give the move a 10/10 i laughed threw the whole  thing ', 4, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (66, N'A140      ', N'that movie was funny it wwas real people some were stage but the reasopn why he doesnt get killed is becuase there is security guards every were and he did go to isral this movie is better than boart and mblasko yes it  is offensive but thats funny this movie was one of the best this year it was funny as sshit i laugh rite now thinking of it it was funny ', 3, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (66, N'C138      ', N'it was funny but too much  buttf*cking 7/10. ', 4, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (67, N'A137      ', N'Borat Is a piece of shit I hope  this one is better ', 3, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (67, N'C136      ', N'ugh that guy with the white shirt is anoyin  ', 3, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (67, N'F135      ', N'Haha I loved it. It was disturbing and  hilarious. :D ', 5, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (100, N'A123      ', N'dsfgdfg df g', 1, CAST(0x00009CA000000000 AS DateTime))
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (100, N'A130      ', N'zevel shel seret', 1, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (100, N'A131      ', N'Well I must say that the movie was absolutely fantastic. I liked every minute of it and I reocmmend for everyone to watch.', 4, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (100, N'C101      ', N'sababa shel seret', 5, CAST(0x00009CA001171881 AS DateTime))
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (100, N'C138      ', N'sababa shel seret', 5, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (100, N'D108      ', N'what a bad movie', 1, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (100, N'F115      ', N'bad movie', 2, CAST(0x00009CE000B986C7 AS DateTime))
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (100, N'H148      ', N'nice movie but not really great.', 4, CAST(0x00009C9400DBA50E AS DateTime))
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (100, N'H153      ', N'Horrible movie!', 1, NULL)
INSERT [dbo].[Review] ([MemberID], [MovieID], [ReviewText], [Rate], [ReviewDate]) VALUES (100, N'R100      ', N'wonderful movie', 5, CAST(0x00009CE000B986C7 AS DateTime))
/****** Object:  Table [dbo].[Rent]    Script Date: 05/13/2017 15:15:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rent](
	[MemberID] [int] NOT NULL,
	[MovieID] [nchar](10) NOT NULL,
	[RentStart] [date] NOT NULL,
	[RentEnd] [date] NULL,
	[RentDays] [int] NULL,
 CONSTRAINT [PK_Rent] PRIMARY KEY CLUSTERED 
(
	[MemberID] ASC,
	[MovieID] ASC,
	[RentStart] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (1, N'A117      ', CAST(0x5A270B00 AS Date), CAST(0x5B270B00 AS Date), NULL)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (1, N'C142      ', CAST(0xD3310B00 AS Date), NULL, 3)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (1, N'C143      ', CAST(0xD3310B00 AS Date), NULL, 4)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (1, N'C156      ', CAST(0x95250B00 AS Date), CAST(0x9D250B00 AS Date), NULL)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (1, N'H148      ', CAST(0x33320B00 AS Date), NULL, 2)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (1, N'M113      ', CAST(0xD3310B00 AS Date), NULL, 5)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (1, N'R128      ', CAST(0xAE280B00 AS Date), NULL, 16)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (1, N'R150      ', CAST(0xFA300B00 AS Date), CAST(0xFF300B00 AS Date), NULL)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (2, N'A123      ', CAST(0xCE280B00 AS Date), CAST(0xD0280B00 AS Date), NULL)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (2, N'A131      ', CAST(0xFB300B00 AS Date), CAST(0xFE300B00 AS Date), NULL)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (2, N'C124      ', CAST(0x5B270B00 AS Date), CAST(0x5C270B00 AS Date), NULL)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (2, N'C155      ', CAST(0xB7250B00 AS Date), CAST(0xB8250B00 AS Date), NULL)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (3, N'A130      ', CAST(0x5D270B00 AS Date), CAST(0x5E270B00 AS Date), NULL)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (3, N'A154      ', CAST(0x99250B00 AS Date), CAST(0xA6250B00 AS Date), NULL)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (3, N'C124      ', CAST(0x42310B00 AS Date), NULL, 14)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (3, N'F135      ', CAST(0xD0280B00 AS Date), CAST(0xD4280B00 AS Date), NULL)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (4, N'A119      ', CAST(0x3C270B00 AS Date), CAST(0x3F270B00 AS Date), NULL)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (4, N'C101      ', CAST(0x42310B00 AS Date), CAST(0x43310B00 AS Date), NULL)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (4, N'D127      ', CAST(0x98280B00 AS Date), CAST(0x9C280B00 AS Date), NULL)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (4, N'H153      ', CAST(0xD2250B00 AS Date), CAST(0xD3250B00 AS Date), NULL)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (5, N'A119      ', CAST(0x20310B00 AS Date), CAST(0x23310B00 AS Date), NULL)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (5, N'C144      ', CAST(0xF3250B00 AS Date), CAST(0xF4250B00 AS Date), NULL)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (6, N'A137      ', CAST(0x19310B00 AS Date), CAST(0x1A310B00 AS Date), NULL)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (6, N'A151      ', CAST(0xCF250B00 AS Date), CAST(0xF1250B00 AS Date), NULL)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (6, N'D129      ', CAST(0x31270B00 AS Date), CAST(0x32270B00 AS Date), NULL)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (6, N'F147      ', CAST(0x4F280B00 AS Date), CAST(0xAB280B00 AS Date), NULL)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (7, N'B118      ', CAST(0xC8280B00 AS Date), NULL, 4)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (7, N'C136      ', CAST(0x5C310B00 AS Date), CAST(0x5D310B00 AS Date), NULL)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (7, N'R150      ', CAST(0xCD250B00 AS Date), CAST(0xCF250B00 AS Date), NULL)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (8, N'C104      ', CAST(0xA9280B00 AS Date), CAST(0xAC280B00 AS Date), NULL)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (8, N'C136      ', CAST(0x4F270B00 AS Date), CAST(0x51270B00 AS Date), NULL)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (8, N'D129      ', CAST(0x3B310B00 AS Date), CAST(0x3D310B00 AS Date), NULL)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (8, N'D149      ', CAST(0xF2250B00 AS Date), CAST(0xF3250B00 AS Date), NULL)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (9, N'A119      ', CAST(0x75250B00 AS Date), CAST(0x94250B00 AS Date), NULL)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (9, N'A126      ', CAST(0x30270B00 AS Date), CAST(0x59270B00 AS Date), NULL)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (9, N'A140      ', CAST(0x9B270B00 AS Date), CAST(0x9C270B00 AS Date), NULL)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (9, N'C144      ', CAST(0xAF280B00 AS Date), CAST(0xB0280B00 AS Date), NULL)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (9, N'D112      ', CAST(0x792B0B00 AS Date), CAST(0x7A2B0B00 AS Date), NULL)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (9, N'F135      ', CAST(0xC4250B00 AS Date), CAST(0xC5250B00 AS Date), NULL)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (9, N'H148      ', CAST(0xC3250B00 AS Date), CAST(0xEC250B00 AS Date), NULL)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (9, N'H153      ', CAST(0x9B280B00 AS Date), CAST(0x9C280B00 AS Date), NULL)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (9, N'M134      ', CAST(0x31270B00 AS Date), CAST(0x32270B00 AS Date), NULL)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (10, N'A103      ', CAST(0x972B0B00 AS Date), NULL, 40)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (10, N'D127      ', CAST(0x83280B00 AS Date), NULL, 20)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (10, N'F147      ', CAST(0xE2250B00 AS Date), CAST(0xE4250B00 AS Date), NULL)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (10, N'H120      ', CAST(0xFD260B00 AS Date), CAST(0x02270B00 AS Date), NULL)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (11, N'A130      ', CAST(0xA82B0B00 AS Date), CAST(0xA92B0B00 AS Date), NULL)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (11, N'A131      ', CAST(0xA82B0B00 AS Date), CAST(0xA92B0B00 AS Date), NULL)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (11, N'B146      ', CAST(0xA9250B00 AS Date), CAST(0xC6250B00 AS Date), NULL)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (11, N'C101      ', CAST(0xBC280B00 AS Date), CAST(0xBE280B00 AS Date), NULL)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (11, N'D112      ', CAST(0x48270B00 AS Date), CAST(0x4F270B00 AS Date), NULL)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (11, N'F114      ', CAST(0x92250B00 AS Date), NULL, 10)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (11, N'M134      ', CAST(0x5F270B00 AS Date), CAST(0x67270B00 AS Date), NULL)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (12, N'A103      ', CAST(0x42270B00 AS Date), CAST(0x43270B00 AS Date), NULL)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (12, N'A125      ', CAST(0xF4250B00 AS Date), NULL, 30)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (12, N'A154      ', CAST(0xB6250B00 AS Date), CAST(0xB9250B00 AS Date), NULL)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (12, N'C101      ', CAST(0x352A0B00 AS Date), CAST(0x372A0B00 AS Date), NULL)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (12, N'C145      ', CAST(0xC4250B00 AS Date), CAST(0xC5250B00 AS Date), NULL)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (12, N'D149      ', CAST(0x352A0B00 AS Date), CAST(0x372A0B00 AS Date), NULL)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (12, N'F135      ', CAST(0x80250B00 AS Date), CAST(0x94250B00 AS Date), NULL)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (12, N'H148      ', CAST(0x9D280B00 AS Date), CAST(0xC6280B00 AS Date), NULL)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (12, N'M113      ', CAST(0x352A0B00 AS Date), CAST(0x362A0B00 AS Date), NULL)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (13, N'C101      ', CAST(0x382A0B00 AS Date), CAST(0x412A0B00 AS Date), NULL)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (13, N'C138      ', CAST(0xD8250B00 AS Date), CAST(0xD9250B00 AS Date), NULL)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (13, N'C144      ', CAST(0xD5250B00 AS Date), CAST(0xD6250B00 AS Date), NULL)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (13, N'F114      ', CAST(0xCC280B00 AS Date), CAST(0xCD280B00 AS Date), NULL)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (13, N'H148      ', CAST(0x382A0B00 AS Date), CAST(0x412A0B00 AS Date), NULL)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (14, N'A123      ', CAST(0x99250B00 AS Date), CAST(0x9B250B00 AS Date), NULL)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (14, N'A130      ', CAST(0xA7280B00 AS Date), CAST(0xA9280B00 AS Date), NULL)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (14, N'C144      ', CAST(0xF2250B00 AS Date), CAST(0xFA250B00 AS Date), NULL)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (14, N'D108      ', CAST(0xF2250B00 AS Date), CAST(0xFA250B00 AS Date), NULL)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (14, N'D112      ', CAST(0x5C310B00 AS Date), CAST(0x64310B00 AS Date), NULL)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (14, N'D129      ', CAST(0x2C290B00 AS Date), CAST(0x2D290B00 AS Date), NULL)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (14, N'M134      ', CAST(0xFC290B00 AS Date), CAST(0xFD290B00 AS Date), NULL)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (14, N'R100      ', CAST(0xFC290B00 AS Date), CAST(0xFD290B00 AS Date), NULL)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (15, N'A117      ', CAST(0x382A0B00 AS Date), CAST(0x392A0B00 AS Date), NULL)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (15, N'A123      ', CAST(0xA9280B00 AS Date), CAST(0xCB280B00 AS Date), NULL)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (15, N'C142      ', CAST(0xF0250B00 AS Date), CAST(0xF1250B00 AS Date), NULL)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (15, N'C145      ', CAST(0x96250B00 AS Date), CAST(0xB4250B00 AS Date), NULL)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (15, N'F147      ', CAST(0x382A0B00 AS Date), CAST(0x392A0B00 AS Date), NULL)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (16, N'A123      ', CAST(0x192A0B00 AS Date), CAST(0x1B2A0B00 AS Date), NULL)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (16, N'A141      ', CAST(0xEE250B00 AS Date), CAST(0xEF250B00 AS Date), NULL)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (16, N'C101      ', CAST(0xB5250B00 AS Date), CAST(0xB6250B00 AS Date), NULL)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (16, N'D149      ', CAST(0xCD280B00 AS Date), CAST(0xCE280B00 AS Date), NULL)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (16, N'R100      ', CAST(0x192A0B00 AS Date), CAST(0x1B2A0B00 AS Date), NULL)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (17, N'A131      ', CAST(0x1F270B00 AS Date), CAST(0x21270B00 AS Date), NULL)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (17, N'A140      ', CAST(0xED250B00 AS Date), CAST(0xEE250B00 AS Date), NULL)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (17, N'H111      ', CAST(0x3E2A0B00 AS Date), NULL, 8)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (18, N'A139      ', CAST(0x75250B00 AS Date), CAST(0xD1250B00 AS Date), NULL)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (18, N'B146      ', CAST(0xED250B00 AS Date), CAST(0xEF250B00 AS Date), NULL)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (18, N'C101      ', CAST(0x1F270B00 AS Date), CAST(0x40270B00 AS Date), NULL)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (18, N'F147      ', CAST(0x352A0B00 AS Date), CAST(0x362A0B00 AS Date), NULL)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (19, N'A119      ', CAST(0x362A0B00 AS Date), CAST(0x372A0B00 AS Date), NULL)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (19, N'A139      ', CAST(0x78280B00 AS Date), CAST(0x79280B00 AS Date), NULL)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (19, N'C138      ', CAST(0x9E250B00 AS Date), CAST(0x9F250B00 AS Date), NULL)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (19, N'C143      ', CAST(0xCF250B00 AS Date), NULL, 14)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (19, N'F147      ', CAST(0xF1250B00 AS Date), CAST(0xF1250B00 AS Date), NULL)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (19, N'H153      ', CAST(0x362A0B00 AS Date), CAST(0x372A0B00 AS Date), NULL)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (19, N'M113      ', CAST(0x16270B00 AS Date), CAST(0x19270B00 AS Date), NULL)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (19, N'R100      ', CAST(0xD8250B00 AS Date), CAST(0xD9250B00 AS Date), NULL)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (19, N'R150      ', CAST(0x21270B00 AS Date), CAST(0x22270B00 AS Date), NULL)
GO
print 'Processed 100 total records'
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (20, N'A137      ', CAST(0x55240B00 AS Date), CAST(0xBF250B00 AS Date), NULL)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (20, N'A140      ', CAST(0x16270B00 AS Date), CAST(0x1D270B00 AS Date), NULL)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (20, N'F114      ', CAST(0x172A0B00 AS Date), CAST(0x192A0B00 AS Date), NULL)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (20, N'H153      ', CAST(0x172A0B00 AS Date), CAST(0x192A0B00 AS Date), NULL)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (21, N'A117      ', CAST(0x65270B00 AS Date), CAST(0x65270B00 AS Date), NULL)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (21, N'C136      ', CAST(0xF6250B00 AS Date), CAST(0xFA250B00 AS Date), NULL)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (21, N'C155      ', CAST(0xB9250B00 AS Date), CAST(0xBE250B00 AS Date), NULL)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (21, N'R100      ', CAST(0x2A2A0B00 AS Date), CAST(0x2C2A0B00 AS Date), NULL)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (22, N'C156      ', CAST(0xD2250B00 AS Date), CAST(0xD8250B00 AS Date), NULL)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (22, N'F135      ', CAST(0xF3250B00 AS Date), CAST(0xF4250B00 AS Date), NULL)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (22, N'M113      ', CAST(0x3A2A0B00 AS Date), CAST(0x3B2A0B00 AS Date), NULL)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (23, N'C138      ', CAST(0xD4250B00 AS Date), CAST(0xD5250B00 AS Date), NULL)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (23, N'H148      ', CAST(0x3B2A0B00 AS Date), NULL, 32)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (23, N'M134      ', CAST(0xD1250B00 AS Date), CAST(0xD3250B00 AS Date), NULL)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (23, N'R100      ', CAST(0x2F270B00 AS Date), CAST(0x30270B00 AS Date), NULL)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (24, N'A133      ', CAST(0xF2250B00 AS Date), NULL, 16)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (24, N'A139      ', CAST(0xE0290B00 AS Date), CAST(0xED290B00 AS Date), NULL)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (24, N'H148      ', CAST(0x60270B00 AS Date), CAST(0x61270B00 AS Date), NULL)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (25, N'A126      ', CAST(0xCF250B00 AS Date), CAST(0xD9250B00 AS Date), NULL)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (25, N'A137      ', CAST(0x63270B00 AS Date), CAST(0x67270B00 AS Date), NULL)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (25, N'C101      ', CAST(0xB2280B00 AS Date), CAST(0xB3280B00 AS Date), NULL)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (25, N'D132      ', CAST(0xC2250B00 AS Date), CAST(0xC3250B00 AS Date), NULL)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (26, N'A117      ', CAST(0xCC280B00 AS Date), CAST(0xD4280B00 AS Date), NULL)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (26, N'A123      ', CAST(0x55240B00 AS Date), CAST(0x2C270B00 AS Date), NULL)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (26, N'A131      ', CAST(0xDF250B00 AS Date), CAST(0xE2250B00 AS Date), NULL)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (26, N'C110      ', CAST(0xF3250B00 AS Date), NULL, 53)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (26, N'D127      ', CAST(0xB2250B00 AS Date), CAST(0xD3250B00 AS Date), NULL)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (27, N'A130      ', CAST(0xDF250B00 AS Date), CAST(0xE2250B00 AS Date), NULL)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (27, N'H153      ', CAST(0x0B270B00 AS Date), CAST(0x0C270B00 AS Date), NULL)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (27, N'R128      ', CAST(0xB4250B00 AS Date), CAST(0xB5250B00 AS Date), NULL)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (27, N'R150      ', CAST(0xCB280B00 AS Date), CAST(0xCB280B00 AS Date), NULL)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (28, N'C104      ', CAST(0xE2260B00 AS Date), CAST(0x3E270B00 AS Date), NULL)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (28, N'C155      ', CAST(0xAC280B00 AS Date), CAST(0xB2280B00 AS Date), NULL)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (29, N'D108      ', CAST(0xC7310B00 AS Date), CAST(0xCF310B00 AS Date), NULL)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (29, N'R100      ', CAST(0x94310B00 AS Date), CAST(0x96310B00 AS Date), NULL)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (30, N'C156      ', CAST(0x96310B00 AS Date), CAST(0x97310B00 AS Date), NULL)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (31, N'C155      ', CAST(0x98310B00 AS Date), CAST(0x9A310B00 AS Date), NULL)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (32, N'D149      ', CAST(0x9B310B00 AS Date), CAST(0x9B310B00 AS Date), NULL)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (32, N'H120      ', CAST(0xCE310B00 AS Date), CAST(0xD4310B00 AS Date), NULL)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (33, N'C145      ', CAST(0x9C310B00 AS Date), NULL, 9)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (34, N'A141      ', CAST(0x9E310B00 AS Date), CAST(0x9F310B00 AS Date), NULL)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (35, N'C138      ', CAST(0xA1310B00 AS Date), CAST(0xA2310B00 AS Date), NULL)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (36, N'C136      ', CAST(0xA3310B00 AS Date), NULL, 60)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (37, N'A130      ', CAST(0xA5310B00 AS Date), CAST(0xA7310B00 AS Date), NULL)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (38, N'A126      ', CAST(0xA8310B00 AS Date), CAST(0xA8310B00 AS Date), NULL)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (38, N'C136      ', CAST(0xC9310B00 AS Date), NULL, 2)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (38, N'D112      ', CAST(0xCC310B00 AS Date), CAST(0xCD310B00 AS Date), NULL)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (39, N'A123      ', CAST(0xA9310B00 AS Date), CAST(0xAA310B00 AS Date), NULL)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (39, N'C143      ', CAST(0xCF310B00 AS Date), CAST(0xD4310B00 AS Date), NULL)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (40, N'H120      ', CAST(0xAB310B00 AS Date), CAST(0xAD310B00 AS Date), NULL)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (41, N'D121      ', CAST(0xAD310B00 AS Date), CAST(0xAE310B00 AS Date), NULL)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (42, N'A117      ', CAST(0xAD310B00 AS Date), CAST(0xAD310B00 AS Date), NULL)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (42, N'H148      ', CAST(0xCA310B00 AS Date), CAST(0xCC310B00 AS Date), NULL)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (43, N'F115      ', CAST(0xAE310B00 AS Date), CAST(0xB0310B00 AS Date), NULL)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (44, N'D112      ', CAST(0xAF310B00 AS Date), CAST(0xB0310B00 AS Date), NULL)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (45, N'A109      ', CAST(0xB1310B00 AS Date), CAST(0xB3310B00 AS Date), NULL)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (46, N'D106      ', CAST(0xB3310B00 AS Date), NULL, 18)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (47, N'F114      ', CAST(0xCB310B00 AS Date), CAST(0xCC310B00 AS Date), NULL)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (47, N'R100      ', CAST(0xB3310B00 AS Date), CAST(0xB4310B00 AS Date), NULL)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (48, N'D105      ', CAST(0xB4310B00 AS Date), CAST(0xB5310B00 AS Date), NULL)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (49, N'C156      ', CAST(0xB5310B00 AS Date), CAST(0xB5310B00 AS Date), NULL)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (50, N'H153      ', CAST(0xB6310B00 AS Date), CAST(0xB7310B00 AS Date), NULL)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (51, N'A152      ', CAST(0xB7310B00 AS Date), CAST(0xB7310B00 AS Date), NULL)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (52, N'D149      ', CAST(0xB8310B00 AS Date), CAST(0xB9310B00 AS Date), NULL)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (53, N'H148      ', CAST(0xB9310B00 AS Date), NULL, 22)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (54, N'A131      ', CAST(0xCD310B00 AS Date), CAST(0xCE310B00 AS Date), NULL)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (54, N'B146      ', CAST(0xBA310B00 AS Date), CAST(0xBA310B00 AS Date), NULL)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (55, N'C144      ', CAST(0xBB310B00 AS Date), CAST(0xBC310B00 AS Date), NULL)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (56, N'A139      ', CAST(0xBB310B00 AS Date), CAST(0xBD310B00 AS Date), NULL)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (56, N'B146      ', CAST(0xCB310B00 AS Date), CAST(0xCD310B00 AS Date), NULL)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (57, N'F135      ', CAST(0xBC310B00 AS Date), CAST(0xBD310B00 AS Date), NULL)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (58, N'A131      ', CAST(0xBE310B00 AS Date), CAST(0xBE310B00 AS Date), NULL)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (59, N'M134      ', CAST(0xCD310B00 AS Date), NULL, 13)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (59, N'R128      ', CAST(0xBE310B00 AS Date), CAST(0xB5310B00 AS Date), NULL)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (60, N'A125      ', CAST(0xBF310B00 AS Date), NULL, 17)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (61, N'A123      ', CAST(0xBF310B00 AS Date), CAST(0xC0310B00 AS Date), NULL)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (61, N'A141      ', CAST(0xCE310B00 AS Date), CAST(0xD2310B00 AS Date), NULL)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (62, N'B118      ', CAST(0xC1310B00 AS Date), CAST(0xC1310B00 AS Date), NULL)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (63, N'C102      ', CAST(0xC2310B00 AS Date), CAST(0xC3310B00 AS Date), NULL)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (64, N'C104      ', CAST(0xC3310B00 AS Date), CAST(0xC4310B00 AS Date), NULL)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (65, N'C110      ', CAST(0xC4310B00 AS Date), CAST(0xC5310B00 AS Date), NULL)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (66, N'A117      ', CAST(0xCC310B00 AS Date), CAST(0xCE310B00 AS Date), NULL)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (66, N'M113      ', CAST(0xC5310B00 AS Date), CAST(0xC6310B00 AS Date), NULL)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (67, N'C124      ', CAST(0xCA310B00 AS Date), CAST(0xCF310B00 AS Date), NULL)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (67, N'F115      ', CAST(0xC6310B00 AS Date), CAST(0xC7310B00 AS Date), NULL)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (100, N'A117      ', CAST(0xD2310B00 AS Date), CAST(0xD8310B00 AS Date), 6)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (100, N'A117      ', CAST(0xDB310B00 AS Date), CAST(0xE9310B00 AS Date), 14)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (100, N'A117      ', CAST(0xEC310B00 AS Date), CAST(0xFB310B00 AS Date), 15)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (100, N'A117      ', CAST(0x12320B00 AS Date), CAST(0x3B320B00 AS Date), 41)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (100, N'A123      ', CAST(0xD4310B00 AS Date), CAST(0xD8310B00 AS Date), 4)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (100, N'A123      ', CAST(0xDB310B00 AS Date), CAST(0xE0310B00 AS Date), 5)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (100, N'A123      ', CAST(0xEC310B00 AS Date), CAST(0xFB310B00 AS Date), 15)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (100, N'A123      ', CAST(0x12320B00 AS Date), CAST(0x3B320B00 AS Date), 41)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (100, N'A130      ', CAST(0xE9310B00 AS Date), CAST(0xE9310B00 AS Date), 0)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (100, N'A131      ', CAST(0xD2310B00 AS Date), CAST(0xE9310B00 AS Date), 23)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (100, N'B118      ', CAST(0xFB310B00 AS Date), CAST(0xFB310B00 AS Date), 0)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (100, N'C101      ', CAST(0xD2310B00 AS Date), CAST(0xDB310B00 AS Date), 9)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (100, N'C101      ', CAST(0xE7310B00 AS Date), CAST(0xE9310B00 AS Date), 2)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (100, N'C101      ', CAST(0xFB310B00 AS Date), CAST(0xFB310B00 AS Date), 0)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (100, N'C102      ', CAST(0xDB310B00 AS Date), CAST(0xE0310B00 AS Date), 5)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (100, N'C138      ', CAST(0xE9310B00 AS Date), CAST(0xE9310B00 AS Date), 0)
GO
print 'Processed 200 total records'
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (100, N'C138      ', CAST(0x12320B00 AS Date), CAST(0x3B320B00 AS Date), 41)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (100, N'C145      ', CAST(0xD4310B00 AS Date), CAST(0xDF310B00 AS Date), 11)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (100, N'H148      ', CAST(0xDB310B00 AS Date), CAST(0xE0310B00 AS Date), 5)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (100, N'H148      ', CAST(0xE7310B00 AS Date), CAST(0xE9310B00 AS Date), 2)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (100, N'H148      ', CAST(0xE9310B00 AS Date), CAST(0xE9310B00 AS Date), 0)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (100, N'H148      ', CAST(0xFB310B00 AS Date), CAST(0xFB310B00 AS Date), 0)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (100, N'H153      ', CAST(0xD2310B00 AS Date), CAST(0xDF310B00 AS Date), 13)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (100, N'H153      ', CAST(0xDB310B00 AS Date), CAST(0xE0310B00 AS Date), 5)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (100, N'H153      ', CAST(0xFB310B00 AS Date), CAST(0xFB310B00 AS Date), 0)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (100, N'R100      ', CAST(0xDB310B00 AS Date), CAST(0xE0310B00 AS Date), 5)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (100, N'R100      ', CAST(0xE9310B00 AS Date), CAST(0xE9310B00 AS Date), 0)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (100, N'R100      ', CAST(0xEC310B00 AS Date), CAST(0xFB310B00 AS Date), 15)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (100, N'R100      ', CAST(0xFB310B00 AS Date), CAST(0xFB310B00 AS Date), 0)
INSERT [dbo].[Rent] ([MemberID], [MovieID], [RentStart], [RentEnd], [RentDays]) VALUES (100, N'R100      ', CAST(0xFE310B00 AS Date), CAST(0x3B320B00 AS Date), 61)
/****** Object:  Table [dbo].[ActorMovie]    Script Date: 05/13/2017 15:15:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ActorMovie](
	[ActorID] [int] NOT NULL,
	[MovieID] [nchar](10) NOT NULL,
 CONSTRAINT [PK_ActorMovie] PRIMARY KEY CLUSTERED 
(
	[ActorID] ASC,
	[MovieID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[ActorMovie] ([ActorID], [MovieID]) VALUES (1, N'D106      ')
INSERT [dbo].[ActorMovie] ([ActorID], [MovieID]) VALUES (1, N'H120      ')
INSERT [dbo].[ActorMovie] ([ActorID], [MovieID]) VALUES (1, N'R100      ')
INSERT [dbo].[ActorMovie] ([ActorID], [MovieID]) VALUES (2, N'A123      ')
INSERT [dbo].[ActorMovie] ([ActorID], [MovieID]) VALUES (2, N'C101      ')
INSERT [dbo].[ActorMovie] ([ActorID], [MovieID]) VALUES (3, N'B116      ')
INSERT [dbo].[ActorMovie] ([ActorID], [MovieID]) VALUES (3, N'B118      ')
INSERT [dbo].[ActorMovie] ([ActorID], [MovieID]) VALUES (3, N'C110      ')
INSERT [dbo].[ActorMovie] ([ActorID], [MovieID]) VALUES (3, N'D149      ')
INSERT [dbo].[ActorMovie] ([ActorID], [MovieID]) VALUES (4, N'C101      ')
INSERT [dbo].[ActorMovie] ([ActorID], [MovieID]) VALUES (4, N'C124      ')
INSERT [dbo].[ActorMovie] ([ActorID], [MovieID]) VALUES (5, N'C102      ')
INSERT [dbo].[ActorMovie] ([ActorID], [MovieID]) VALUES (5, N'D132      ')
INSERT [dbo].[ActorMovie] ([ActorID], [MovieID]) VALUES (6, N'C155      ')
INSERT [dbo].[ActorMovie] ([ActorID], [MovieID]) VALUES (6, N'D105      ')
INSERT [dbo].[ActorMovie] ([ActorID], [MovieID]) VALUES (7, N'D105      ')
INSERT [dbo].[ActorMovie] ([ActorID], [MovieID]) VALUES (8, N'A107      ')
INSERT [dbo].[ActorMovie] ([ActorID], [MovieID]) VALUES (8, N'A125      ')
INSERT [dbo].[ActorMovie] ([ActorID], [MovieID]) VALUES (8, N'A139      ')
INSERT [dbo].[ActorMovie] ([ActorID], [MovieID]) VALUES (8, N'A141      ')
INSERT [dbo].[ActorMovie] ([ActorID], [MovieID]) VALUES (8, N'A151      ')
INSERT [dbo].[ActorMovie] ([ActorID], [MovieID]) VALUES (9, N'A123      ')
INSERT [dbo].[ActorMovie] ([ActorID], [MovieID]) VALUES (9, N'C101      ')
INSERT [dbo].[ActorMovie] ([ActorID], [MovieID]) VALUES (9, N'C110      ')
INSERT [dbo].[ActorMovie] ([ActorID], [MovieID]) VALUES (10, N'H111      ')
INSERT [dbo].[ActorMovie] ([ActorID], [MovieID]) VALUES (11, N'D112      ')
INSERT [dbo].[ActorMovie] ([ActorID], [MovieID]) VALUES (12, N'F115      ')
INSERT [dbo].[ActorMovie] ([ActorID], [MovieID]) VALUES (13, N'A117      ')
INSERT [dbo].[ActorMovie] ([ActorID], [MovieID]) VALUES (14, N'C138      ')
INSERT [dbo].[ActorMovie] ([ActorID], [MovieID]) VALUES (14, N'D121      ')
INSERT [dbo].[ActorMovie] ([ActorID], [MovieID]) VALUES (15, N'A123      ')
INSERT [dbo].[ActorMovie] ([ActorID], [MovieID]) VALUES (15, N'F115      ')
INSERT [dbo].[ActorMovie] ([ActorID], [MovieID]) VALUES (16, N'A126      ')
INSERT [dbo].[ActorMovie] ([ActorID], [MovieID]) VALUES (17, N'A126      ')
INSERT [dbo].[ActorMovie] ([ActorID], [MovieID]) VALUES (18, N'D129      ')
INSERT [dbo].[ActorMovie] ([ActorID], [MovieID]) VALUES (19, N'D129      ')
INSERT [dbo].[ActorMovie] ([ActorID], [MovieID]) VALUES (20, N'D129      ')
INSERT [dbo].[ActorMovie] ([ActorID], [MovieID]) VALUES (20, N'H148      ')
INSERT [dbo].[ActorMovie] ([ActorID], [MovieID]) VALUES (21, N'A140      ')
INSERT [dbo].[ActorMovie] ([ActorID], [MovieID]) VALUES (21, N'A152      ')
INSERT [dbo].[ActorMovie] ([ActorID], [MovieID]) VALUES (21, N'D129      ')
INSERT [dbo].[ActorMovie] ([ActorID], [MovieID]) VALUES (22, N'M113      ')
INSERT [dbo].[ActorMovie] ([ActorID], [MovieID]) VALUES (22, N'M134      ')
INSERT [dbo].[ActorMovie] ([ActorID], [MovieID]) VALUES (23, N'F135      ')
INSERT [dbo].[ActorMovie] ([ActorID], [MovieID]) VALUES (24, N'A141      ')
INSERT [dbo].[ActorMovie] ([ActorID], [MovieID]) VALUES (24, N'A151      ')
INSERT [dbo].[ActorMovie] ([ActorID], [MovieID]) VALUES (24, N'C144      ')
INSERT [dbo].[ActorMovie] ([ActorID], [MovieID]) VALUES (25, N'C156      ')
INSERT [dbo].[ActorMovie] ([ActorID], [MovieID]) VALUES (26, N'A154      ')
INSERT [dbo].[ActorMovie] ([ActorID], [MovieID]) VALUES (26, N'R100      ')
INSERT [dbo].[ActorMovie] ([ActorID], [MovieID]) VALUES (27, N'R100      ')
INSERT [dbo].[ActorMovie] ([ActorID], [MovieID]) VALUES (28, N'A139      ')
INSERT [dbo].[ActorMovie] ([ActorID], [MovieID]) VALUES (28, N'C101      ')
INSERT [dbo].[ActorMovie] ([ActorID], [MovieID]) VALUES (28, N'C110      ')
INSERT [dbo].[ActorMovie] ([ActorID], [MovieID]) VALUES (29, N'C101      ')
INSERT [dbo].[ActorMovie] ([ActorID], [MovieID]) VALUES (29, N'C110      ')
INSERT [dbo].[ActorMovie] ([ActorID], [MovieID]) VALUES (30, N'C101      ')
INSERT [dbo].[ActorMovie] ([ActorID], [MovieID]) VALUES (30, N'C110      ')
INSERT [dbo].[ActorMovie] ([ActorID], [MovieID]) VALUES (30, N'D149      ')
INSERT [dbo].[ActorMovie] ([ActorID], [MovieID]) VALUES (31, N'C101      ')
INSERT [dbo].[ActorMovie] ([ActorID], [MovieID]) VALUES (31, N'C104      ')
INSERT [dbo].[ActorMovie] ([ActorID], [MovieID]) VALUES (32, N'C102      ')
INSERT [dbo].[ActorMovie] ([ActorID], [MovieID]) VALUES (32, N'D106      ')
INSERT [dbo].[ActorMovie] ([ActorID], [MovieID]) VALUES (33, N'D106      ')
INSERT [dbo].[ActorMovie] ([ActorID], [MovieID]) VALUES (33, N'H120      ')
INSERT [dbo].[ActorMovie] ([ActorID], [MovieID]) VALUES (34, N'A107      ')
INSERT [dbo].[ActorMovie] ([ActorID], [MovieID]) VALUES (34, N'A141      ')
INSERT [dbo].[ActorMovie] ([ActorID], [MovieID]) VALUES (34, N'A151      ')
INSERT [dbo].[ActorMovie] ([ActorID], [MovieID]) VALUES (35, N'A107      ')
INSERT [dbo].[ActorMovie] ([ActorID], [MovieID]) VALUES (35, N'A141      ')
INSERT [dbo].[ActorMovie] ([ActorID], [MovieID]) VALUES (35, N'A151      ')
INSERT [dbo].[ActorMovie] ([ActorID], [MovieID]) VALUES (36, N'A107      ')
INSERT [dbo].[ActorMovie] ([ActorID], [MovieID]) VALUES (36, N'A109      ')
INSERT [dbo].[ActorMovie] ([ActorID], [MovieID]) VALUES (36, N'A137      ')
INSERT [dbo].[ActorMovie] ([ActorID], [MovieID]) VALUES (36, N'A141      ')
INSERT [dbo].[ActorMovie] ([ActorID], [MovieID]) VALUES (37, N'A107      ')
INSERT [dbo].[ActorMovie] ([ActorID], [MovieID]) VALUES (37, N'A151      ')
INSERT [dbo].[ActorMovie] ([ActorID], [MovieID]) VALUES (38, N'A107      ')
INSERT [dbo].[ActorMovie] ([ActorID], [MovieID]) VALUES (38, N'A141      ')
INSERT [dbo].[ActorMovie] ([ActorID], [MovieID]) VALUES (38, N'A151      ')
INSERT [dbo].[ActorMovie] ([ActorID], [MovieID]) VALUES (39, N'A107      ')
INSERT [dbo].[ActorMovie] ([ActorID], [MovieID]) VALUES (39, N'A141      ')
INSERT [dbo].[ActorMovie] ([ActorID], [MovieID]) VALUES (39, N'A151      ')
INSERT [dbo].[ActorMovie] ([ActorID], [MovieID]) VALUES (40, N'A107      ')
INSERT [dbo].[ActorMovie] ([ActorID], [MovieID]) VALUES (40, N'A141      ')
INSERT [dbo].[ActorMovie] ([ActorID], [MovieID]) VALUES (40, N'A151      ')
INSERT [dbo].[ActorMovie] ([ActorID], [MovieID]) VALUES (41, N'A107      ')
INSERT [dbo].[ActorMovie] ([ActorID], [MovieID]) VALUES (41, N'A141      ')
INSERT [dbo].[ActorMovie] ([ActorID], [MovieID]) VALUES (42, N'A107      ')
INSERT [dbo].[ActorMovie] ([ActorID], [MovieID]) VALUES (42, N'A151      ')
INSERT [dbo].[ActorMovie] ([ActorID], [MovieID]) VALUES (43, N'A109      ')
INSERT [dbo].[ActorMovie] ([ActorID], [MovieID]) VALUES (43, N'A119      ')
INSERT [dbo].[ActorMovie] ([ActorID], [MovieID]) VALUES (44, N'A109      ')
INSERT [dbo].[ActorMovie] ([ActorID], [MovieID]) VALUES (44, N'A119      ')
INSERT [dbo].[ActorMovie] ([ActorID], [MovieID]) VALUES (44, N'A137      ')
INSERT [dbo].[ActorMovie] ([ActorID], [MovieID]) VALUES (45, N'A123      ')
INSERT [dbo].[ActorMovie] ([ActorID], [MovieID]) VALUES (45, N'C110      ')
INSERT [dbo].[ActorMovie] ([ActorID], [MovieID]) VALUES (45, N'C156      ')
INSERT [dbo].[ActorMovie] ([ActorID], [MovieID]) VALUES (46, N'B116      ')
INSERT [dbo].[ActorMovie] ([ActorID], [MovieID]) VALUES (46, N'C110      ')
INSERT [dbo].[ActorMovie] ([ActorID], [MovieID]) VALUES (47, N'F114      ')
GO
print 'Processed 100 total records'
INSERT [dbo].[ActorMovie] ([ActorID], [MovieID]) VALUES (47, N'F115      ')
INSERT [dbo].[ActorMovie] ([ActorID], [MovieID]) VALUES (48, N'B116      ')
INSERT [dbo].[ActorMovie] ([ActorID], [MovieID]) VALUES (48, N'B118      ')
INSERT [dbo].[ActorMovie] ([ActorID], [MovieID]) VALUES (49, N'B116      ')
INSERT [dbo].[ActorMovie] ([ActorID], [MovieID]) VALUES (49, N'C156      ')
INSERT [dbo].[ActorMovie] ([ActorID], [MovieID]) VALUES (50, N'B116      ')
INSERT [dbo].[ActorMovie] ([ActorID], [MovieID]) VALUES (50, N'B118      ')
INSERT [dbo].[ActorMovie] ([ActorID], [MovieID]) VALUES (51, N'A117      ')
INSERT [dbo].[ActorMovie] ([ActorID], [MovieID]) VALUES (51, N'C143      ')
INSERT [dbo].[ActorMovie] ([ActorID], [MovieID]) VALUES (52, N'A139      ')
INSERT [dbo].[ActorMovie] ([ActorID], [MovieID]) VALUES (52, N'H120      ')
INSERT [dbo].[ActorMovie] ([ActorID], [MovieID]) VALUES (53, N'A122      ')
INSERT [dbo].[ActorMovie] ([ActorID], [MovieID]) VALUES (53, N'C156      ')
INSERT [dbo].[ActorMovie] ([ActorID], [MovieID]) VALUES (54, N'A126      ')
INSERT [dbo].[ActorMovie] ([ActorID], [MovieID]) VALUES (54, N'R150      ')
INSERT [dbo].[ActorMovie] ([ActorID], [MovieID]) VALUES (55, N'C136      ')
INSERT [dbo].[ActorMovie] ([ActorID], [MovieID]) VALUES (55, N'D129      ')
INSERT [dbo].[ActorMovie] ([ActorID], [MovieID]) VALUES (56, N'D129      ')
INSERT [dbo].[ActorMovie] ([ActorID], [MovieID]) VALUES (56, N'F147      ')
INSERT [dbo].[ActorMovie] ([ActorID], [MovieID]) VALUES (57, N'C145      ')
INSERT [dbo].[ActorMovie] ([ActorID], [MovieID]) VALUES (57, N'F135      ')
INSERT [dbo].[ActorMovie] ([ActorID], [MovieID]) VALUES (58, N'F135      ')
INSERT [dbo].[ActorMovie] ([ActorID], [MovieID]) VALUES (58, N'H153      ')
INSERT [dbo].[ActorMovie] ([ActorID], [MovieID]) VALUES (59, N'A140      ')
INSERT [dbo].[ActorMovie] ([ActorID], [MovieID]) VALUES (59, N'A152      ')
INSERT [dbo].[ActorMovie] ([ActorID], [MovieID]) VALUES (59, N'C136      ')
INSERT [dbo].[ActorMovie] ([ActorID], [MovieID]) VALUES (60, N'C136      ')
INSERT [dbo].[ActorMovie] ([ActorID], [MovieID]) VALUES (60, N'C142      ')
INSERT [dbo].[ActorMovie] ([ActorID], [MovieID]) VALUES (61, N'A152      ')
INSERT [dbo].[ActorMovie] ([ActorID], [MovieID]) VALUES (62, N'A140      ')
INSERT [dbo].[ActorMovie] ([ActorID], [MovieID]) VALUES (62, N'A152      ')
INSERT [dbo].[ActorMovie] ([ActorID], [MovieID]) VALUES (63, N'A140      ')
INSERT [dbo].[ActorMovie] ([ActorID], [MovieID]) VALUES (63, N'A152      ')
INSERT [dbo].[ActorMovie] ([ActorID], [MovieID]) VALUES (63, N'R150      ')
INSERT [dbo].[ActorMovie] ([ActorID], [MovieID]) VALUES (64, N'A140      ')
INSERT [dbo].[ActorMovie] ([ActorID], [MovieID]) VALUES (64, N'A152      ')
INSERT [dbo].[ActorMovie] ([ActorID], [MovieID]) VALUES (65, N'A140      ')
INSERT [dbo].[ActorMovie] ([ActorID], [MovieID]) VALUES (65, N'A152      ')
INSERT [dbo].[ActorMovie] ([ActorID], [MovieID]) VALUES (66, N'A140      ')
INSERT [dbo].[ActorMovie] ([ActorID], [MovieID]) VALUES (66, N'A152      ')
INSERT [dbo].[ActorMovie] ([ActorID], [MovieID]) VALUES (67, N'A140      ')
INSERT [dbo].[ActorMovie] ([ActorID], [MovieID]) VALUES (67, N'A152      ')
INSERT [dbo].[ActorMovie] ([ActorID], [MovieID]) VALUES (68, N'D132      ')
INSERT [dbo].[ActorMovie] ([ActorID], [MovieID]) VALUES (69, N'D132      ')
INSERT [dbo].[ActorMovie] ([ActorID], [MovieID]) VALUES (70, N'D132      ')
INSERT [dbo].[ActorMovie] ([ActorID], [MovieID]) VALUES (71, N'D132      ')
INSERT [dbo].[ActorMovie] ([ActorID], [MovieID]) VALUES (72, N'D132      ')
INSERT [dbo].[ActorMovie] ([ActorID], [MovieID]) VALUES (73, N'D132      ')
INSERT [dbo].[ActorMovie] ([ActorID], [MovieID]) VALUES (74, N'D132      ')
INSERT [dbo].[ActorMovie] ([ActorID], [MovieID]) VALUES (75, N'D132      ')
INSERT [dbo].[ActorMovie] ([ActorID], [MovieID]) VALUES (76, N'D132      ')
INSERT [dbo].[ActorMovie] ([ActorID], [MovieID]) VALUES (77, N'D132      ')
INSERT [dbo].[ActorMovie] ([ActorID], [MovieID]) VALUES (78, N'D132      ')
INSERT [dbo].[ActorMovie] ([ActorID], [MovieID]) VALUES (79, N'D132      ')
INSERT [dbo].[ActorMovie] ([ActorID], [MovieID]) VALUES (80, N'D132      ')
/****** Object:  ForeignKey [FK_Movie_Country]    Script Date: 05/13/2017 15:15:53 ******/
ALTER TABLE [dbo].[Movie]  WITH CHECK ADD  CONSTRAINT [FK_Movie_Country] FOREIGN KEY([CountryID])
REFERENCES [dbo].[Country] ([CountryID])
GO
ALTER TABLE [dbo].[Movie] CHECK CONSTRAINT [FK_Movie_Country]
GO
/****** Object:  ForeignKey [FK_Movie_MovieType]    Script Date: 05/13/2017 15:15:53 ******/
ALTER TABLE [dbo].[Movie]  WITH CHECK ADD  CONSTRAINT [FK_Movie_MovieType] FOREIGN KEY([MovieTypeID])
REFERENCES [dbo].[MovieType] ([MovieTypeID])
GO
ALTER TABLE [dbo].[Movie] CHECK CONSTRAINT [FK_Movie_MovieType]
GO
/****** Object:  ForeignKey [FK_Actor_Country]    Script Date: 05/13/2017 15:15:53 ******/
ALTER TABLE [dbo].[Actor]  WITH CHECK ADD  CONSTRAINT [FK_Actor_Country] FOREIGN KEY([CountryID])
REFERENCES [dbo].[Country] ([CountryID])
GO
ALTER TABLE [dbo].[Actor] CHECK CONSTRAINT [FK_Actor_Country]
GO
/****** Object:  ForeignKey [FK_WaitingList_Member]    Script Date: 05/13/2017 15:15:53 ******/
ALTER TABLE [dbo].[WaitingList]  WITH CHECK ADD  CONSTRAINT [FK_WaitingList_Member] FOREIGN KEY([MemberID])
REFERENCES [dbo].[Member] ([MemberID])
GO
ALTER TABLE [dbo].[WaitingList] CHECK CONSTRAINT [FK_WaitingList_Member]
GO
/****** Object:  ForeignKey [FK_WaitingList_Movie]    Script Date: 05/13/2017 15:15:53 ******/
ALTER TABLE [dbo].[WaitingList]  WITH CHECK ADD  CONSTRAINT [FK_WaitingList_Movie] FOREIGN KEY([MovieID])
REFERENCES [dbo].[Movie] ([MovieID])
GO
ALTER TABLE [dbo].[WaitingList] CHECK CONSTRAINT [FK_WaitingList_Movie]
GO
/****** Object:  ForeignKey [FK_Review_Member]    Script Date: 05/13/2017 15:15:53 ******/
ALTER TABLE [dbo].[Review]  WITH CHECK ADD  CONSTRAINT [FK_Review_Member] FOREIGN KEY([MemberID])
REFERENCES [dbo].[Member] ([MemberID])
GO
ALTER TABLE [dbo].[Review] CHECK CONSTRAINT [FK_Review_Member]
GO
/****** Object:  ForeignKey [FK_Review_Movie]    Script Date: 05/13/2017 15:15:53 ******/
ALTER TABLE [dbo].[Review]  WITH CHECK ADD  CONSTRAINT [FK_Review_Movie] FOREIGN KEY([MovieID])
REFERENCES [dbo].[Movie] ([MovieID])
GO
ALTER TABLE [dbo].[Review] CHECK CONSTRAINT [FK_Review_Movie]
GO
/****** Object:  ForeignKey [FK_Rent_Member]    Script Date: 05/13/2017 15:15:53 ******/
ALTER TABLE [dbo].[Rent]  WITH CHECK ADD  CONSTRAINT [FK_Rent_Member] FOREIGN KEY([MemberID])
REFERENCES [dbo].[Member] ([MemberID])
GO
ALTER TABLE [dbo].[Rent] CHECK CONSTRAINT [FK_Rent_Member]
GO
/****** Object:  ForeignKey [FK_Rent_Movie]    Script Date: 05/13/2017 15:15:53 ******/
ALTER TABLE [dbo].[Rent]  WITH CHECK ADD  CONSTRAINT [FK_Rent_Movie] FOREIGN KEY([MovieID])
REFERENCES [dbo].[Movie] ([MovieID])
GO
ALTER TABLE [dbo].[Rent] CHECK CONSTRAINT [FK_Rent_Movie]
GO
/****** Object:  ForeignKey [FK_ActorMovie_Actor]    Script Date: 05/13/2017 15:15:53 ******/
ALTER TABLE [dbo].[ActorMovie]  WITH CHECK ADD  CONSTRAINT [FK_ActorMovie_Actor] FOREIGN KEY([ActorID])
REFERENCES [dbo].[Actor] ([ActorID])
GO
ALTER TABLE [dbo].[ActorMovie] CHECK CONSTRAINT [FK_ActorMovie_Actor]
GO
/****** Object:  ForeignKey [FK_ActorMovie_Movie]    Script Date: 05/13/2017 15:15:53 ******/
ALTER TABLE [dbo].[ActorMovie]  WITH CHECK ADD  CONSTRAINT [FK_ActorMovie_Movie] FOREIGN KEY([MovieID])
REFERENCES [dbo].[Movie] ([MovieID])
GO
ALTER TABLE [dbo].[ActorMovie] CHECK CONSTRAINT [FK_ActorMovie_Movie]
GO
