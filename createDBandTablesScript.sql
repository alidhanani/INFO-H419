USE [master]
GO
/****** Object:  Database [DW_FinalProject]    Script Date: 13/01/2021 17:24:17 ******/
CREATE DATABASE [DW_FinalProject]
GO
ALTER DATABASE [DW_FinalProject] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DW_FinalProject].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DW_FinalProject] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DW_FinalProject] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DW_FinalProject] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DW_FinalProject] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DW_FinalProject] SET ARITHABORT OFF 
GO
ALTER DATABASE [DW_FinalProject] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DW_FinalProject] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DW_FinalProject] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DW_FinalProject] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DW_FinalProject] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DW_FinalProject] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DW_FinalProject] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DW_FinalProject] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DW_FinalProject] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DW_FinalProject] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DW_FinalProject] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DW_FinalProject] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DW_FinalProject] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DW_FinalProject] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DW_FinalProject] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DW_FinalProject] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DW_FinalProject] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DW_FinalProject] SET RECOVERY FULL 
GO
ALTER DATABASE [DW_FinalProject] SET  MULTI_USER 
GO
ALTER DATABASE [DW_FinalProject] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DW_FinalProject] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DW_FinalProject] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DW_FinalProject] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [DW_FinalProject] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'DW_FinalProject', N'ON'
GO
ALTER DATABASE [DW_FinalProject] SET QUERY_STORE = OFF
GO
USE [DW_FinalProject]
GO
/****** Object:  Table [dbo].[Aircraft]    Script Date: 13/01/2021 17:24:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Aircraft](
	[Aircraft_ID] [int] NOT NULL,
	[Aircraft_Group] [int] NULL,
	[Aircraft_Type] [int] NULL,
	[Aircraft_Config] [int] NULL,
 CONSTRAINT [PK_Aircraft] PRIMARY KEY CLUSTERED 
(
	[Aircraft_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Airport]    Script Date: 13/01/2021 17:24:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Airport](
	[Airport_ID] [int] NOT NULL,
	[Geo_ID] [int] NULL,
	[Airport_Seq_ID] [int] NULL,
	[City_Market_ID] [int] NULL,
	[Airport] [varchar](50) NULL,
 CONSTRAINT [PK_Airport] PRIMARY KEY CLUSTERED 
(
	[Airport_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Carrier]    Script Date: 13/01/2021 17:24:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Carrier](
	[Carrier_ID] [int] NOT NULL,
	[Carrier] [varchar](50) NULL,
	[Carrier_Name] [varchar](50) NULL,
	[Carrier_Group] [int] NULL,
	[Carrier_Group_New] [int] NULL,
 CONSTRAINT [PK_Carrier] PRIMARY KEY CLUSTERED 
(
	[Carrier_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cClass]    Script Date: 13/01/2021 17:24:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cClass](
	[Class_ID] [int] NOT NULL,
	[cClass] [varchar](50) NULL,
 CONSTRAINT [PK_cClass] PRIMARY KEY CLUSTERED 
(
	[Class_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cDate]    Script Date: 13/01/2021 17:24:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cDate](
	[Date_ID] [int] NOT NULL,
	[cMonth] [int] NULL,
	[cYear] [int] NULL,
	[Quarter] [int] NULL,
 CONSTRAINT [PK_cDate] PRIMARY KEY CLUSTERED 
(
	[Date_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Distance_Group]    Script Date: 13/01/2021 17:24:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Distance_Group](
	[Distance_Group_ID] [int] NOT NULL,
	[Distance_Group] [int] NULL,
 CONSTRAINT [PK_Distance_Group] PRIMARY KEY CLUSTERED 
(
	[Distance_Group_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[factFlight]    Script Date: 13/01/2021 17:24:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[factFlight](
	[Classe_ID] [int] NULL,
	[Distance_Group_ID] [int] NULL,
	[Airport_ID] [int] NULL,
	[Date_ID] [int] NULL,
	[Destination_ID] [int] NULL,
	[Origin_ID] [int] NULL,
	[Unique_Carrier_ID] [int] NULL,
	[Departures_Scheduled] [int] NULL,
	[Departures_Performed] [int] NULL,
	[Payload] [int] NULL,
	[Seats] [int] NULL,
	[Passengers] [int] NULL,
	[Freight] [int] NULL,
	[Mail] [int] NULL,
	[Distance] [int] NULL,
	[RampTime] [int] NULL,
	[Airtime] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[fFlight]    Script Date: 13/01/2021 17:24:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[fFlight](
	[Class_ID] [int] NULL,
	[Distance_Group_ID] [int] NULL,
	[Airport_ID] [int] NULL,
	[Date_ID] [int] NULL,
	[Destination_ID] [int] NULL,
	[Origin_ID] [int] NULL,
	[Unique_Carrier_ID] [int] NULL,
	[Departures_Scheduled] [int] NULL,
	[Departures_Performed] [int] NULL,
	[Payload] [int] NULL,
	[Seats] [int] NULL,
	[Passengers] [int] NULL,
	[Freight] [int] NULL,
	[Mail] [int] NULL,
	[Distance] [int] NULL,
	[RampTime] [int] NULL,
	[Airtime] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Geography]    Script Date: 13/01/2021 17:24:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Geography](
	[Geo_ID] [int] NOT NULL,
	[City_Name] [varchar](50) NULL,
	[Country] [varchar](50) NULL,
	[Country_Name] [varchar](50) NULL,
	[WAC] [int] NULL,
 CONSTRAINT [PK_Geography] PRIMARY KEY CLUSTERED 
(
	[Geo_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Unique_Carrier]    Script Date: 13/01/2021 17:24:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Unique_Carrier](
	[Unique_Carrier_ID] [int] NOT NULL,
	[Carrier_ID] [int] NULL,
	[Airline_ID] [int] NULL,
	[Unique_Carrier_Name] [varchar](50) NULL,
	[Unique_Carrier_Entity] [int] NULL,
 CONSTRAINT [PK_Unique_Carrier] PRIMARY KEY CLUSTERED 
(
	[Unique_Carrier_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Airport]  WITH CHECK ADD  CONSTRAINT [FK_Airport_Geography] FOREIGN KEY([Geo_ID])
REFERENCES [dbo].[Geography] ([Geo_ID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Airport] CHECK CONSTRAINT [FK_Airport_Geography]
GO
ALTER TABLE [dbo].[Carrier]  WITH CHECK ADD  CONSTRAINT [FK_Carrier_Carrier] FOREIGN KEY([Carrier_ID])
REFERENCES [dbo].[Carrier] ([Carrier_ID])
GO
ALTER TABLE [dbo].[Carrier] CHECK CONSTRAINT [FK_Carrier_Carrier]
GO
ALTER TABLE [dbo].[factFlight]  WITH CHECK ADD  CONSTRAINT [FK_factFlight_Aircraft] FOREIGN KEY([Airport_ID])
REFERENCES [dbo].[Aircraft] ([Aircraft_ID])
GO
ALTER TABLE [dbo].[factFlight] CHECK CONSTRAINT [FK_factFlight_Aircraft]
GO
ALTER TABLE [dbo].[factFlight]  WITH CHECK ADD  CONSTRAINT [FK_factFlight_Airport] FOREIGN KEY([Destination_ID])
REFERENCES [dbo].[Airport] ([Airport_ID])
GO
ALTER TABLE [dbo].[factFlight] CHECK CONSTRAINT [FK_factFlight_Airport]
GO
ALTER TABLE [dbo].[factFlight]  WITH CHECK ADD  CONSTRAINT [FK_factFlight_Airport1] FOREIGN KEY([Origin_ID])
REFERENCES [dbo].[Airport] ([Airport_ID])
GO
ALTER TABLE [dbo].[factFlight] CHECK CONSTRAINT [FK_factFlight_Airport1]
GO
ALTER TABLE [dbo].[factFlight]  WITH CHECK ADD  CONSTRAINT [FK_factFlight_cClass] FOREIGN KEY([Classe_ID])
REFERENCES [dbo].[cClass] ([Class_ID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[factFlight] CHECK CONSTRAINT [FK_factFlight_cClass]
GO
ALTER TABLE [dbo].[factFlight]  WITH CHECK ADD  CONSTRAINT [FK_factFlight_cDate] FOREIGN KEY([Date_ID])
REFERENCES [dbo].[cDate] ([Date_ID])
GO
ALTER TABLE [dbo].[factFlight] CHECK CONSTRAINT [FK_factFlight_cDate]
GO
ALTER TABLE [dbo].[factFlight]  WITH CHECK ADD  CONSTRAINT [FK_factFlight_Distance_Group] FOREIGN KEY([Distance_Group_ID])
REFERENCES [dbo].[Distance_Group] ([Distance_Group_ID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[factFlight] CHECK CONSTRAINT [FK_factFlight_Distance_Group]
GO
ALTER TABLE [dbo].[factFlight]  WITH CHECK ADD  CONSTRAINT [FK_factFlight_Unique_Carrier] FOREIGN KEY([Unique_Carrier_ID])
REFERENCES [dbo].[Unique_Carrier] ([Unique_Carrier_ID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[factFlight] CHECK CONSTRAINT [FK_factFlight_Unique_Carrier]
GO
ALTER TABLE [dbo].[fFlight]  WITH CHECK ADD  CONSTRAINT [FK_fFlight_Aircraft] FOREIGN KEY([Airport_ID])
REFERENCES [dbo].[Aircraft] ([Aircraft_ID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[fFlight] CHECK CONSTRAINT [FK_fFlight_Aircraft]
GO
ALTER TABLE [dbo].[fFlight]  WITH CHECK ADD  CONSTRAINT [FK_fFlight_Airport] FOREIGN KEY([Origin_ID])
REFERENCES [dbo].[Airport] ([Airport_ID])
GO
ALTER TABLE [dbo].[fFlight] CHECK CONSTRAINT [FK_fFlight_Airport]
GO
ALTER TABLE [dbo].[fFlight]  WITH CHECK ADD  CONSTRAINT [FK_fFlight_Airport1] FOREIGN KEY([Destination_ID])
REFERENCES [dbo].[Airport] ([Airport_ID])
GO
ALTER TABLE [dbo].[fFlight] CHECK CONSTRAINT [FK_fFlight_Airport1]
GO
ALTER TABLE [dbo].[fFlight]  WITH CHECK ADD  CONSTRAINT [FK_fFlight_cClass] FOREIGN KEY([Class_ID])
REFERENCES [dbo].[cClass] ([Class_ID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[fFlight] CHECK CONSTRAINT [FK_fFlight_cClass]
GO
ALTER TABLE [dbo].[fFlight]  WITH CHECK ADD  CONSTRAINT [FK_fFlight_cDate] FOREIGN KEY([Date_ID])
REFERENCES [dbo].[cDate] ([Date_ID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[fFlight] CHECK CONSTRAINT [FK_fFlight_cDate]
GO
ALTER TABLE [dbo].[fFlight]  WITH CHECK ADD  CONSTRAINT [FK_fFlight_Distance_Group] FOREIGN KEY([Distance_Group_ID])
REFERENCES [dbo].[Distance_Group] ([Distance_Group_ID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[fFlight] CHECK CONSTRAINT [FK_fFlight_Distance_Group]
GO
ALTER TABLE [dbo].[fFlight]  WITH CHECK ADD  CONSTRAINT [FK_fFlight_Unique_Carrier] FOREIGN KEY([Unique_Carrier_ID])
REFERENCES [dbo].[Unique_Carrier] ([Unique_Carrier_ID])
GO
ALTER TABLE [dbo].[fFlight] CHECK CONSTRAINT [FK_fFlight_Unique_Carrier]
GO
ALTER TABLE [dbo].[Unique_Carrier]  WITH CHECK ADD  CONSTRAINT [FK_Unique_Carrier_Carrier] FOREIGN KEY([Carrier_ID])
REFERENCES [dbo].[Carrier] ([Carrier_ID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Unique_Carrier] CHECK CONSTRAINT [FK_Unique_Carrier_Carrier]
GO
USE [master]
GO
ALTER DATABASE [DW_FinalProject] SET  READ_WRITE 
GO
