USE [master]
GO
/****** Object:  Database [TestDevBackExamen]    Script Date: 09/05/2024 01:48:00 p. m. ******/
CREATE DATABASE [TestDevBackExamen]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TestDevBackExamen', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\TestDevBackExamen.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'TestDevBackExamen_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\TestDevBackExamen_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [TestDevBackExamen] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TestDevBackExamen].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TestDevBackExamen] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TestDevBackExamen] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TestDevBackExamen] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TestDevBackExamen] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TestDevBackExamen] SET ARITHABORT OFF 
GO
ALTER DATABASE [TestDevBackExamen] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [TestDevBackExamen] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TestDevBackExamen] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TestDevBackExamen] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TestDevBackExamen] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TestDevBackExamen] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TestDevBackExamen] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TestDevBackExamen] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TestDevBackExamen] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TestDevBackExamen] SET  DISABLE_BROKER 
GO
ALTER DATABASE [TestDevBackExamen] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TestDevBackExamen] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TestDevBackExamen] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TestDevBackExamen] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TestDevBackExamen] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TestDevBackExamen] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [TestDevBackExamen] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TestDevBackExamen] SET RECOVERY FULL 
GO
ALTER DATABASE [TestDevBackExamen] SET  MULTI_USER 
GO
ALTER DATABASE [TestDevBackExamen] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TestDevBackExamen] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TestDevBackExamen] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TestDevBackExamen] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [TestDevBackExamen] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [TestDevBackExamen] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'TestDevBackExamen', N'ON'
GO
ALTER DATABASE [TestDevBackExamen] SET QUERY_STORE = ON
GO
ALTER DATABASE [TestDevBackExamen] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [TestDevBackExamen]
GO
/****** Object:  Table [dbo].[empleados]    Script Date: 09/05/2024 01:48:00 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[empleados](
	[empleadosId] [int] IDENTITY(1,1) NOT NULL,
	[userId] [int] NULL,
	[Sueldo] [float] NULL,
	[FechaIngreso] [date] NULL,
 CONSTRAINT [PK_empleados] PRIMARY KEY CLUSTERED 
(
	[empleadosId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[usuarios]    Script Date: 09/05/2024 01:48:00 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[usuarios](
	[userId] [int] IDENTITY(1,1) NOT NULL,
	[Login] [varchar](100) NULL,
	[Nombre] [varchar](100) NULL,
	[Paterno] [varchar](100) NULL,
	[Materno] [varchar](100) NULL,
 CONSTRAINT [PK_usuarios] PRIMARY KEY CLUSTERED 
(
	[userId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[empleados] ON 

INSERT [dbo].[empleados] ([empleadosId], [userId], [Sueldo], [FechaIngreso]) VALUES (1, 1, 8837, CAST(N'2000-01-11' AS Date))
INSERT [dbo].[empleados] ([empleadosId], [userId], [Sueldo], [FechaIngreso]) VALUES (2, 2, 8837, CAST(N'2000-01-11' AS Date))
INSERT [dbo].[empleados] ([empleadosId], [userId], [Sueldo], [FechaIngreso]) VALUES (3, 3, 15000, CAST(N'2000-01-11' AS Date))
INSERT [dbo].[empleados] ([empleadosId], [userId], [Sueldo], [FechaIngreso]) VALUES (4, 4, 15000, CAST(N'2000-01-11' AS Date))
INSERT [dbo].[empleados] ([empleadosId], [userId], [Sueldo], [FechaIngreso]) VALUES (5, 5, 7812, CAST(N'2000-01-18' AS Date))
INSERT [dbo].[empleados] ([empleadosId], [userId], [Sueldo], [FechaIngreso]) VALUES (6, 6, 7812, CAST(N'2000-01-18' AS Date))
INSERT [dbo].[empleados] ([empleadosId], [userId], [Sueldo], [FechaIngreso]) VALUES (7, 7, 10200, CAST(N'2000-01-18' AS Date))
INSERT [dbo].[empleados] ([empleadosId], [userId], [Sueldo], [FechaIngreso]) VALUES (8, 8, 10200, CAST(N'2000-01-18' AS Date))
INSERT [dbo].[empleados] ([empleadosId], [userId], [Sueldo], [FechaIngreso]) VALUES (9, 9, 13800, CAST(N'2001-05-20' AS Date))
INSERT [dbo].[empleados] ([empleadosId], [userId], [Sueldo], [FechaIngreso]) VALUES (10, 10, 13800, CAST(N'2001-05-20' AS Date))
INSERT [dbo].[empleados] ([empleadosId], [userId], [Sueldo], [FechaIngreso]) VALUES (11, 11, 18880, CAST(N'2001-05-20' AS Date))
INSERT [dbo].[empleados] ([empleadosId], [userId], [Sueldo], [FechaIngreso]) VALUES (12, 12, 18880, CAST(N'2001-05-20' AS Date))
INSERT [dbo].[empleados] ([empleadosId], [userId], [Sueldo], [FechaIngreso]) VALUES (13, 13, 8000, CAST(N'2001-07-13' AS Date))
INSERT [dbo].[empleados] ([empleadosId], [userId], [Sueldo], [FechaIngreso]) VALUES (14, 14, 8000, CAST(N'2001-07-13' AS Date))
INSERT [dbo].[empleados] ([empleadosId], [userId], [Sueldo], [FechaIngreso]) VALUES (15, 15, 6000, CAST(N'2001-07-13' AS Date))
INSERT [dbo].[empleados] ([empleadosId], [userId], [Sueldo], [FechaIngreso]) VALUES (16, 16, 19470, CAST(N'2001-07-13' AS Date))
INSERT [dbo].[empleados] ([empleadosId], [userId], [Sueldo], [FechaIngreso]) VALUES (17, 17, 19470, CAST(N'2001-07-13' AS Date))
INSERT [dbo].[empleados] ([empleadosId], [userId], [Sueldo], [FechaIngreso]) VALUES (18, 18, 10200, CAST(N'2001-07-16' AS Date))
INSERT [dbo].[empleados] ([empleadosId], [userId], [Sueldo], [FechaIngreso]) VALUES (19, 19, 10200, CAST(N'2001-07-16' AS Date))
INSERT [dbo].[empleados] ([empleadosId], [userId], [Sueldo], [FechaIngreso]) VALUES (20, 20, 25000, CAST(N'2001-07-16' AS Date))
INSERT [dbo].[empleados] ([empleadosId], [userId], [Sueldo], [FechaIngreso]) VALUES (21, 21, 7812, CAST(N'2001-07-16' AS Date))
INSERT [dbo].[empleados] ([empleadosId], [userId], [Sueldo], [FechaIngreso]) VALUES (22, 22, 7812, CAST(N'2001-07-16' AS Date))
INSERT [dbo].[empleados] ([empleadosId], [userId], [Sueldo], [FechaIngreso]) VALUES (23, 23, 12210, CAST(N'2001-11-24' AS Date))
INSERT [dbo].[empleados] ([empleadosId], [userId], [Sueldo], [FechaIngreso]) VALUES (24, 24, 12210, CAST(N'2001-11-24' AS Date))
INSERT [dbo].[empleados] ([empleadosId], [userId], [Sueldo], [FechaIngreso]) VALUES (25, 25, 7500, CAST(N'2001-11-24' AS Date))
INSERT [dbo].[empleados] ([empleadosId], [userId], [Sueldo], [FechaIngreso]) VALUES (26, 26, 15020, CAST(N'2001-11-24' AS Date))
INSERT [dbo].[empleados] ([empleadosId], [userId], [Sueldo], [FechaIngreso]) VALUES (27, 27, 15020, CAST(N'2001-11-24' AS Date))
INSERT [dbo].[empleados] ([empleadosId], [userId], [Sueldo], [FechaIngreso]) VALUES (28, 28, 25000, CAST(N'2001-11-24' AS Date))
INSERT [dbo].[empleados] ([empleadosId], [userId], [Sueldo], [FechaIngreso]) VALUES (29, 29, 7812, CAST(N'2001-11-24' AS Date))
INSERT [dbo].[empleados] ([empleadosId], [userId], [Sueldo], [FechaIngreso]) VALUES (30, 30, 15020, CAST(N'2001-12-12' AS Date))
INSERT [dbo].[empleados] ([empleadosId], [userId], [Sueldo], [FechaIngreso]) VALUES (31, 31, 15020, CAST(N'2001-12-12' AS Date))
INSERT [dbo].[empleados] ([empleadosId], [userId], [Sueldo], [FechaIngreso]) VALUES (32, 32, 12210, CAST(N'2001-12-12' AS Date))
INSERT [dbo].[empleados] ([empleadosId], [userId], [Sueldo], [FechaIngreso]) VALUES (33, 33, 12210, CAST(N'2001-12-12' AS Date))
INSERT [dbo].[empleados] ([empleadosId], [userId], [Sueldo], [FechaIngreso]) VALUES (34, 34, 19470, CAST(N'2008-08-17' AS Date))
INSERT [dbo].[empleados] ([empleadosId], [userId], [Sueldo], [FechaIngreso]) VALUES (35, 35, 19470, CAST(N'2008-08-17' AS Date))
INSERT [dbo].[empleados] ([empleadosId], [userId], [Sueldo], [FechaIngreso]) VALUES (36, 36, 8000, CAST(N'2008-08-17' AS Date))
INSERT [dbo].[empleados] ([empleadosId], [userId], [Sueldo], [FechaIngreso]) VALUES (37, 37, 8000, CAST(N'2008-08-17' AS Date))
INSERT [dbo].[empleados] ([empleadosId], [userId], [Sueldo], [FechaIngreso]) VALUES (38, 38, 18880, CAST(N'2009-06-11' AS Date))
INSERT [dbo].[empleados] ([empleadosId], [userId], [Sueldo], [FechaIngreso]) VALUES (39, 39, 18880, CAST(N'2009-06-11' AS Date))
INSERT [dbo].[empleados] ([empleadosId], [userId], [Sueldo], [FechaIngreso]) VALUES (40, 40, 14000, CAST(N'2009-06-11' AS Date))
INSERT [dbo].[empleados] ([empleadosId], [userId], [Sueldo], [FechaIngreso]) VALUES (41, 41, 13800, CAST(N'2009-06-11' AS Date))
INSERT [dbo].[empleados] ([empleadosId], [userId], [Sueldo], [FechaIngreso]) VALUES (42, 42, 13800, CAST(N'2009-06-11' AS Date))
INSERT [dbo].[empleados] ([empleadosId], [userId], [Sueldo], [FechaIngreso]) VALUES (43, 43, 15000, CAST(N'2009-10-06' AS Date))
INSERT [dbo].[empleados] ([empleadosId], [userId], [Sueldo], [FechaIngreso]) VALUES (44, 44, 15000, CAST(N'2009-10-06' AS Date))
INSERT [dbo].[empleados] ([empleadosId], [userId], [Sueldo], [FechaIngreso]) VALUES (45, 45, 13000, CAST(N'2009-10-06' AS Date))
INSERT [dbo].[empleados] ([empleadosId], [userId], [Sueldo], [FechaIngreso]) VALUES (46, 46, 8837, CAST(N'2009-10-06' AS Date))
INSERT [dbo].[empleados] ([empleadosId], [userId], [Sueldo], [FechaIngreso]) VALUES (52, 52, 1500, CAST(N'2024-05-09' AS Date))
SET IDENTITY_INSERT [dbo].[empleados] OFF
GO
SET IDENTITY_INSERT [dbo].[usuarios] ON 

INSERT [dbo].[usuarios] ([userId], [Login], [Nombre], [Paterno], [Materno]) VALUES (1, N'user01', N'BERE', N'NARANJO', N'GONZALEZ')
INSERT [dbo].[usuarios] ([userId], [Login], [Nombre], [Paterno], [Materno]) VALUES (2, N'user02', N'ALEXIS', N'CAMPOS', N'NARANJO')
INSERT [dbo].[usuarios] ([userId], [Login], [Nombre], [Paterno], [Materno]) VALUES (3, N'user03', N'SERGIO ALEJANDRO', N'CAMPOS', N'HERNANDEZ')
INSERT [dbo].[usuarios] ([userId], [Login], [Nombre], [Paterno], [Materno]) VALUES (4, N'user04', N'DIEGO ISMAEL', N'BERUMEN', N'CEDILLO')
INSERT [dbo].[usuarios] ([userId], [Login], [Nombre], [Paterno], [Materno]) VALUES (5, N'user05', N'AURORA', N'ESCALANTE', N'CEDILLO')
INSERT [dbo].[usuarios] ([userId], [Login], [Nombre], [Paterno], [Materno]) VALUES (6, N'user06', N'JOYCELENE FABIOLA', N'ESTRADA', N'BARBA')
INSERT [dbo].[usuarios] ([userId], [Login], [Nombre], [Paterno], [Materno]) VALUES (7, N'user07', N'FRANCISCO', N'ESTRADA', N'GOMEZ')
INSERT [dbo].[usuarios] ([userId], [Login], [Nombre], [Paterno], [Materno]) VALUES (8, N'user08', N'LEONARDO DANIEL', N'FARIAS', N'ROSAS')
INSERT [dbo].[usuarios] ([userId], [Login], [Nombre], [Paterno], [Materno]) VALUES (9, N'user09', N'RAMON ANDRES', N'FIERROS', N'ROBLES')
INSERT [dbo].[usuarios] ([userId], [Login], [Nombre], [Paterno], [Materno]) VALUES (10, N'user10', N'EDGAR ANDRES', N'FLORES', N'OLIVARES')
INSERT [dbo].[usuarios] ([userId], [Login], [Nombre], [Paterno], [Materno]) VALUES (11, N'user11', N'MARIA FERNANDA', N'FRANCO', N'ESQUIVEL')
INSERT [dbo].[usuarios] ([userId], [Login], [Nombre], [Paterno], [Materno]) VALUES (12, N'user12', N'ALEJANDRO', N'GALVAN', N'MUÑIZ')
INSERT [dbo].[usuarios] ([userId], [Login], [Nombre], [Paterno], [Materno]) VALUES (13, N'user13', N'MARTHA ALICIA', N'GUTIERREZ', N'ORTIZ')
INSERT [dbo].[usuarios] ([userId], [Login], [Nombre], [Paterno], [Materno]) VALUES (14, N'user14', N'JOSAFAT GERARDO', N'HERNANDEZ', N'SAUCEDO')
INSERT [dbo].[usuarios] ([userId], [Login], [Nombre], [Paterno], [Materno]) VALUES (15, N'user15', N'ROSALIA', N'JIMENEZ', N'GONZALEZ')
INSERT [dbo].[usuarios] ([userId], [Login], [Nombre], [Paterno], [Materno]) VALUES (16, N'user16', N'LAURA CELENE', N'JIMENEZ', N'RIOS')
INSERT [dbo].[usuarios] ([userId], [Login], [Nombre], [Paterno], [Materno]) VALUES (17, N'user17', N'ANGELICA', N'LOPEZ', N'CORTES')
INSERT [dbo].[usuarios] ([userId], [Login], [Nombre], [Paterno], [Materno]) VALUES (18, N'user18', N'CRISTIAN IVAN', N'LOPEZ', N'GOMEZ')
INSERT [dbo].[usuarios] ([userId], [Login], [Nombre], [Paterno], [Materno]) VALUES (19, N'user19', N'MARLENE GABRIELA', N'LOPEZ', N'MEZA')
INSERT [dbo].[usuarios] ([userId], [Login], [Nombre], [Paterno], [Materno]) VALUES (20, N'user20', N'ALEJANDRA', N'MEDINA', N'IBARRA')
INSERT [dbo].[usuarios] ([userId], [Login], [Nombre], [Paterno], [Materno]) VALUES (21, N'user21', N'CONSUELO YURIDIANA THALIA', N'MEJIA', N'ALVAREZ')
INSERT [dbo].[usuarios] ([userId], [Login], [Nombre], [Paterno], [Materno]) VALUES (22, N'user22', N'JAVIER ADRIAN', N'MEJIA', N'ALVAREZ')
INSERT [dbo].[usuarios] ([userId], [Login], [Nombre], [Paterno], [Materno]) VALUES (23, N'user23', N'JUAN CARLOS EVARISTO', N'PEÑA', N'GUTIERREZ')
INSERT [dbo].[usuarios] ([userId], [Login], [Nombre], [Paterno], [Materno]) VALUES (24, N'user24', N'JAZMIN ALEJANDRA', N'PEREZ', N'VELEZ')
INSERT [dbo].[usuarios] ([userId], [Login], [Nombre], [Paterno], [Materno]) VALUES (25, N'user25', N'GUSTAVO', N'RAMIREZ', N'RIVERA')
INSERT [dbo].[usuarios] ([userId], [Login], [Nombre], [Paterno], [Materno]) VALUES (26, N'user26', N'CARLOS NIVARDO', N'RODRIGUEZ', N'ASCENCIO')
INSERT [dbo].[usuarios] ([userId], [Login], [Nombre], [Paterno], [Materno]) VALUES (27, N'user27', N'KARLA JOHANA', N'ROMERO', N'LUEVANOS')
INSERT [dbo].[usuarios] ([userId], [Login], [Nombre], [Paterno], [Materno]) VALUES (28, N'user28', N'YESSICA YOSELINNE', N'RUIZ', N'HERNANDEZ')
INSERT [dbo].[usuarios] ([userId], [Login], [Nombre], [Paterno], [Materno]) VALUES (29, N'user29', N'CHRISTIAN EDUARDO', N'SALAS', N'SANCHEZ')
INSERT [dbo].[usuarios] ([userId], [Login], [Nombre], [Paterno], [Materno]) VALUES (30, N'user30', N'LUIS ROBERTO', N'SALDAÑA', N'ESPINOZA')
INSERT [dbo].[usuarios] ([userId], [Login], [Nombre], [Paterno], [Materno]) VALUES (31, N'user31', N'ADRIAN', N'SANCHEZ', N'ORTIZ')
INSERT [dbo].[usuarios] ([userId], [Login], [Nombre], [Paterno], [Materno]) VALUES (32, N'user32', N'EDUARDO YAIR', N'SUAREZ', N'HERNANDEZ')
INSERT [dbo].[usuarios] ([userId], [Login], [Nombre], [Paterno], [Materno]) VALUES (33, N'user33', N'JUAN FRANCISCO', N'TABAREZ', N'GARCIA')
INSERT [dbo].[usuarios] ([userId], [Login], [Nombre], [Paterno], [Materno]) VALUES (34, N'user34', N'ZULEICA ELIZABETH', N'TERAN', N'TORRES')
INSERT [dbo].[usuarios] ([userId], [Login], [Nombre], [Paterno], [Materno]) VALUES (35, N'user35', N'ADRIANA YUNUHEN', N'VARGAS', N'AYALA')
INSERT [dbo].[usuarios] ([userId], [Login], [Nombre], [Paterno], [Materno]) VALUES (36, N'user36', N'OSCAR URIEL', N'VELAZQUEZ', N'ALVAREZ')
INSERT [dbo].[usuarios] ([userId], [Login], [Nombre], [Paterno], [Materno]) VALUES (37, N'user37', N'ERICK DE JESUS', N'CORONA', N'DIAZ')
INSERT [dbo].[usuarios] ([userId], [Login], [Nombre], [Paterno], [Materno]) VALUES (38, N'user38', N'MARIA GUADALUPE', N'RAMOS', N'HERNANDEZ')
INSERT [dbo].[usuarios] ([userId], [Login], [Nombre], [Paterno], [Materno]) VALUES (39, N'user39', N'JESSICA NOEMI', N'JIMENEZ', N'VENTURA')
INSERT [dbo].[usuarios] ([userId], [Login], [Nombre], [Paterno], [Materno]) VALUES (40, N'user40', N'FLOR MARGARITA', N'ROJAS', N'HERNANDEZ')
INSERT [dbo].[usuarios] ([userId], [Login], [Nombre], [Paterno], [Materno]) VALUES (41, N'user41', N'LUIS ANTONIO', N'ALVARADO', N'VALENCIA')
INSERT [dbo].[usuarios] ([userId], [Login], [Nombre], [Paterno], [Materno]) VALUES (42, N'user42', N'EDGAR IVAN', N'AGUILAR', N'PADILLA')
INSERT [dbo].[usuarios] ([userId], [Login], [Nombre], [Paterno], [Materno]) VALUES (43, N'user43', N'LUIS ALFONSO', N'MICHEL', N'SANCHEZ')
INSERT [dbo].[usuarios] ([userId], [Login], [Nombre], [Paterno], [Materno]) VALUES (44, N'user44', N'JOSE CARLOS', N'SILVA', N'ROCHA')
INSERT [dbo].[usuarios] ([userId], [Login], [Nombre], [Paterno], [Materno]) VALUES (45, N'user45', N'JUDITH', N'RODRIGUEZ', N'REYES')
INSERT [dbo].[usuarios] ([userId], [Login], [Nombre], [Paterno], [Materno]) VALUES (46, N'user46', N'BRENDA SORAYA', N'CHAVEZ', N'GARCIA')
INSERT [dbo].[usuarios] ([userId], [Login], [Nombre], [Paterno], [Materno]) VALUES (48, N'User100', N'Christian', N'Gomez', N'Herrera')
INSERT [dbo].[usuarios] ([userId], [Login], [Nombre], [Paterno], [Materno]) VALUES (49, N'ERG', N'FG', N'GERG', N'DFDFDF')
INSERT [dbo].[usuarios] ([userId], [Login], [Nombre], [Paterno], [Materno]) VALUES (50, N'544', N'TGR', N'TGRT', N'TGRT')
INSERT [dbo].[usuarios] ([userId], [Login], [Nombre], [Paterno], [Materno]) VALUES (52, N'User100', N'Christian', N'Gomez', N'Herrera')
SET IDENTITY_INSERT [dbo].[usuarios] OFF
GO
ALTER TABLE [dbo].[empleados]  WITH CHECK ADD  CONSTRAINT [FK_empleados_usuarios] FOREIGN KEY([userId])
REFERENCES [dbo].[usuarios] ([userId])
GO
ALTER TABLE [dbo].[empleados] CHECK CONSTRAINT [FK_empleados_usuarios]
GO
USE [master]
GO
ALTER DATABASE [TestDevBackExamen] SET  READ_WRITE 
GO
