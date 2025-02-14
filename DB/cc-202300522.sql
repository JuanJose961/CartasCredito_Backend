USE [GIS_CartasCredito]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 22/05/2023 07:21:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetPermissions]    Script Date: 22/05/2023 07:21:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetPermissions](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Description] [text] NULL,
	[Activo] [bit] NOT NULL,
 CONSTRAINT [PK_AspNetPermissions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRolePermissions]    Script Date: 22/05/2023 07:21:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRolePermissions](
	[RoleId] [nvarchar](max) NOT NULL,
	[PermissionId] [int] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 22/05/2023 07:21:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
	[Description] [text] NULL,
	[Activo] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 22/05/2023 07:21:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserEmpresas]    Script Date: 22/05/2023 07:21:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserEmpresas](
	[UserId] [nvarchar](max) NOT NULL,
	[EmpresaId] [int] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 22/05/2023 07:21:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserProfile]    Script Date: 22/05/2023 07:21:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserProfile](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[LastName] [nvarchar](max) NULL,
	[DisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](max) NOT NULL,
	[Notes] [text] NULL,
 CONSTRAINT [PK_AspNetUserProfile] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 22/05/2023 07:21:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 22/05/2023 07:21:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
	[Activo] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cat_AgentesAduanales]    Script Date: 22/05/2023 07:21:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cat_AgentesAduanales](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](max) NOT NULL,
	[Descripcion] [text] NULL,
	[Activo] [bit] NOT NULL,
	[CreadoPor] [nvarchar](max) NOT NULL,
	[Creado] [datetime] NOT NULL,
	[Actualizado] [datetime] NULL,
	[Eliminado] [datetime] NULL,
 CONSTRAINT [PK_cat_AgentesAduanales] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cat_Bancos]    Script Date: 22/05/2023 07:21:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cat_Bancos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](max) NOT NULL,
	[Descripcion] [text] NULL,
	[TotalLinea] [decimal](18, 2) NULL,
	[Activo] [bit] NOT NULL,
	[CreadoPor] [nvarchar](max) NOT NULL,
	[Creado] [datetime] NOT NULL,
	[Actualizado] [datetime] NULL,
	[Eliminado] [datetime] NULL,
 CONSTRAINT [PK_cat_Bancos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cat_Comisiones]    Script Date: 22/05/2023 07:21:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cat_Comisiones](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[BancoId] [int] NOT NULL,
	[TipoComisionId] [int] NOT NULL,
	[Nombre] [nvarchar](max) NOT NULL,
	[Descripcion] [text] NULL,
	[Costo] [decimal](18, 2) NULL,
	[SwiftApertura] [nvarchar](max) NULL,
	[SwiftOtro] [nvarchar](max) NULL,
	[PorcentajeIVA] [decimal](18, 2) NULL,
	[Activo] [bit] NOT NULL,
	[CreadoPor] [nvarchar](max) NOT NULL,
	[Creado] [datetime] NOT NULL,
	[Actualizado] [datetime] NULL,
	[Eliminado] [datetime] NULL,
 CONSTRAINT [PK_cat_Comisiones] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cat_Compradores]    Script Date: 22/05/2023 07:21:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cat_Compradores](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EmpresaId] [int] NOT NULL,
	[TipoPersonaFiscalId] [int] NOT NULL,
	[Nombre] [nvarchar](max) NOT NULL,
	[Descripcion] [text] NULL,
	[Activo] [bit] NOT NULL,
	[CreadoPor] [nvarchar](max) NOT NULL,
	[Creado] [datetime] NOT NULL,
	[Actualizado] [datetime] NULL,
	[Eliminado] [datetime] NULL,
 CONSTRAINT [PK_cat_Compradores] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cat_Contactos]    Script Date: 22/05/2023 07:21:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cat_Contactos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ModelId] [int] NOT NULL,
	[ModelNombre] [nvarchar](50) NOT NULL,
	[Nombre] [nvarchar](50) NULL,
	[ApellidoPaterno] [nvarchar](50) NULL,
	[ApellidoMaterno] [nvarchar](50) NULL,
	[Telefono] [nvarchar](30) NULL,
	[Celular] [nvarchar](30) NULL,
	[Email] [nvarchar](50) NULL,
	[Fax] [nvarchar](50) NULL,
	[Descripcion] [text] NULL,
	[Activo] [bit] NOT NULL,
 CONSTRAINT [PK_cat_Contactos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cat_Divisiones]    Script Date: 22/05/2023 07:21:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cat_Divisiones](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](max) NOT NULL,
	[Descripcion] [text] NULL,
	[Activo] [bit] NOT NULL,
	[Creado] [datetime] NOT NULL,
	[Actualizado] [datetime] NULL,
	[Eliminado] [datetime] NULL,
	[CreadoPor] [nvarchar](max) NULL,
 CONSTRAINT [PK_cat_Divisiones] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cat_Documentos]    Script Date: 22/05/2023 07:21:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cat_Documentos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](max) NOT NULL,
	[Descripcion] [text] NULL,
	[Activo] [bit] NOT NULL,
	[CreadoPor] [nvarchar](max) NOT NULL,
	[Creado] [datetime] NOT NULL,
	[Actualizado] [datetime] NULL,
	[Eliminado] [datetime] NULL,
 CONSTRAINT [PK_cat_Documentos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cat_Empresas]    Script Date: 22/05/2023 07:21:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cat_Empresas](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DivisionId] [int] NOT NULL,
	[Nombre] [nvarchar](max) NOT NULL,
	[RFC] [nvarchar](50) NULL,
	[Descripcion] [text] NULL,
	[Activo] [bit] NOT NULL,
	[CreadoPor] [nvarchar](max) NULL,
	[Creado] [datetime] NOT NULL,
	[Actualizado] [datetime] NULL,
	[Eliminado] [datetime] NULL,
 CONSTRAINT [PK_cat_Empresas] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cat_LineasCredito]    Script Date: 22/05/2023 07:21:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cat_LineasCredito](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EmpresaId] [int] NOT NULL,
	[BancoId] [int] NOT NULL,
	[Monto] [decimal](18, 2) NOT NULL,
	[Cuenta] [nvarchar](max) NULL,
	[Activo] [bit] NOT NULL,
	[CreadoPor] [nvarchar](max) NOT NULL,
	[Creado] [datetime] NOT NULL,
	[Actualizado] [datetime] NULL,
	[Eliminado] [datetime] NULL,
 CONSTRAINT [PK_cat_LineasCredito] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cat_Monedas]    Script Date: 22/05/2023 07:21:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cat_Monedas](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](max) NOT NULL,
	[Abbr] [nvarchar](10) NULL,
	[Descripcion] [text] NULL,
	[Activo] [bit] NOT NULL,
	[CreadoPor] [nvarchar](max) NOT NULL,
	[Creado] [datetime] NOT NULL,
	[Actualizado] [datetime] NULL,
	[Eliminado] [datetime] NULL,
 CONSTRAINT [PK_cat_Monedas] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cat_Paises]    Script Date: 22/05/2023 07:21:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cat_Paises](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](max) NOT NULL,
	[Alpha2Code] [nchar](2) NULL,
	[Alpha3Code] [nchar](3) NULL,
 CONSTRAINT [PK_cat_Paises] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cat_Proveedores]    Script Date: 22/05/2023 07:21:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cat_Proveedores](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EmpresaId] [int] NOT NULL,
	[PaisId] [int] NOT NULL,
	[Nombre] [nvarchar](max) NULL,
	[Descripcion] [text] NULL,
	[Activo] [bit] NOT NULL,
	[CreadoPor] [nvarchar](max) NOT NULL,
	[Creado] [datetime] NOT NULL,
	[Actualizado] [datetime] NULL,
	[Eliminado] [datetime] NULL,
 CONSTRAINT [PK_cat_Proveedores] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cat_Proyectos]    Script Date: 22/05/2023 07:21:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cat_Proyectos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EmpresaId] [int] NOT NULL,
	[Nombre] [nvarchar](max) NOT NULL,
	[Descripcion] [text] NULL,
	[FechaApertura] [datetime] NULL,
	[FechaCierre] [datetime] NULL,
	[Activo] [bit] NOT NULL,
	[CreadoPor] [nvarchar](max) NOT NULL,
	[Creado] [datetime] NOT NULL,
	[Actualizado] [datetime] NULL,
	[Eliminado] [datetime] NULL,
 CONSTRAINT [PK_cat_Proyectos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cat_TiposActivo]    Script Date: 22/05/2023 07:21:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cat_TiposActivo](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](max) NOT NULL,
	[Responsable] [nvarchar](max) NULL,
	[Descripcion] [text] NULL,
	[Activo] [bit] NOT NULL,
	[CreadoPor] [nvarchar](max) NOT NULL,
	[Creado] [datetime] NOT NULL,
	[Actualizado] [datetime] NULL,
	[Eliminado] [datetime] NULL,
 CONSTRAINT [PK_cat_TiposActivo] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cat_TiposCobertura]    Script Date: 22/05/2023 07:21:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cat_TiposCobertura](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](max) NOT NULL,
	[Descripcion] [text] NULL,
	[Activo] [bit] NOT NULL,
	[CreadoPor] [nvarchar](max) NOT NULL,
	[Creado] [datetime] NOT NULL,
	[Actualizado] [datetime] NULL,
	[Eliminado] [datetime] NULL,
 CONSTRAINT [PK_cat_TiposCobertura] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cat_TiposComision]    Script Date: 22/05/2023 07:21:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cat_TiposComision](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](max) NOT NULL,
	[Descripcion] [text] NULL,
	[Activo] [bit] NOT NULL,
	[CreadoPor] [nvarchar](max) NULL,
	[Creado] [datetime] NOT NULL,
	[Actualizado] [datetime] NULL,
	[Eliminado] [datetime] NULL,
 CONSTRAINT [PK_cat_TiposComision] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cat_TiposPersonaFiscal]    Script Date: 22/05/2023 07:21:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cat_TiposPersonaFiscal](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](max) NOT NULL,
	[Descripcion] [text] NULL,
	[Activo] [bit] NOT NULL,
	[CreadoPor] [nvarchar](max) NOT NULL,
	[Creado] [datetime] NOT NULL,
	[Actualizado] [datetime] NULL,
	[Eliminado] [datetime] NULL,
 CONSTRAINT [PK_cat_TiposPersonaFiscal] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[proc_BitacoraMovimientos]    Script Date: 22/05/2023 07:21:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[proc_BitacoraMovimientos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Titulo] [nvarchar](max) NOT NULL,
	[Descripcion] [text] NULL,
	[CartaCreditoId] [nvarchar](max) NULL,
	[ModeloNombre] [nvarchar](max) NULL,
	[ModeloId] [int] NULL,
	[CreadoPorId] [nvarchar](max) NULL,
	[Creado] [datetime] NULL,
 CONSTRAINT [PK_proc_BitacoraMovimientos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[proc_CartaCreditoComisiones]    Script Date: 22/05/2023 07:21:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[proc_CartaCreditoComisiones](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NumComision] [int] NULL,
	[CartaCreditoId] [nvarchar](max) NOT NULL,
	[ComisionId] [int] NOT NULL,
	[NoComision] [int] NULL,
	[EnmiendaId] [int] NULL,
	[FechaCargo] [datetime] NOT NULL,
	[MonedaId] [int] NOT NULL,
	[Monto] [decimal](18, 2) NOT NULL,
	[Activo] [bit] NULL,
	[CreadoPor] [nvarchar](max) NULL,
	[Estatus] [int] NULL,
	[PagoId] [int] NULL,
	[PagoMonedaId] [int] NULL,
	[Comentarios] [text] NULL,
	[FechaPago] [datetime] NULL,
	[TipoCambio] [decimal](18, 2) NULL,
	[MontoPagado] [decimal](18, 2) NULL,
 CONSTRAINT [PK_proc_CartaCreditoComisiones] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[proc_CartasCredito]    Script Date: 22/05/2023 07:21:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[proc_CartasCredito](
	[Consecutive] [int] IDENTITY(1,1) NOT NULL,
	[Id] [nvarchar](max) NULL,
	[NumCartaCredito] [varchar](max) NULL,
	[TipoCarta] [nvarchar](50) NULL,
	[TipoStandBy] [nvarchar](50) NULL,
	[TipoActivoId] [int] NULL,
	[ProyectoId] [int] NULL,
	[BancoId] [int] NULL,
	[ProveedorId] [int] NULL,
	[EmpresaId] [int] NULL,
	[AgenteAduanalId] [int] NULL,
	[MonedaId] [int] NULL,
	[TipoPago] [nvarchar](50) NULL,
	[Responsable] [nvarchar](50) NULL,
	[CompradorId] [int] NULL,
	[PorcentajeTolerancia] [int] NULL,
	[NumeroOrdenCompra] [nvarchar](50) NULL,
	[CostoApertura] [decimal](18, 2) NULL,
	[MontoOrdenCompra] [decimal](18, 2) NULL,
	[MontoOriginalLC] [decimal](18, 2) NULL,
	[PagosEfectuados] [decimal](18, 2) NULL,
	[PagosProgramados] [decimal](18, 2) NULL,
	[MontoDispuesto] [decimal](18, 2) NULL,
	[SaldoInsoluto] [decimal](18, 2) NULL,
	[FechaApertura] [datetime] NULL,
	[Incoterm] [text] NULL,
	[FechaLimiteEmbarque] [datetime] NULL,
	[FechaVencimiento] [datetime] NULL,
	[EmbarquesParciales] [nvarchar](50) NULL,
	[Transbordos] [nvarchar](50) NULL,
	[PuntoEmbarque] [nvarchar](50) NULL,
	[PuntoDesembarque] [nvarchar](50) NULL,
	[DescripcionMercancia] [text] NULL,
	[DescripcionCartaCredito] [text] NULL,
	[PagoCartaAceptacion] [text] NULL,
	[ConsignacionMercancia] [text] NULL,
	[ConsideracionesReclamacion] [text] NULL,
	[ConsideracionesAdicionales] [text] NULL,
	[InstruccionesEspeciales] [text] NULL,
	[DiasParaPresentarDocumentos] [int] NULL,
	[DiasPlazoProveedor] [int] NULL,
	[CondicionesPago] [nvarchar](50) NULL,
	[NumeroPeriodos] [int] NULL,
	[BancoCorresponsalId] [int] NULL,
	[SeguroPorCuenta] [nvarchar](50) NULL,
	[GastosComisionesCorresponsal] [nvarchar](50) NULL,
	[ConfirmacionBancoNotificador] [nvarchar](50) NULL,
	[TipoEmision] [nvarchar](50) NULL,
	[DocumentoSwift] [nvarchar](max) NULL,
	[CreadoPor] [nvarchar](max) NULL,
	[Estatus] [int] NULL,
	[Activo] [bit] NULL,
	[Creado] [datetime] NULL,
	[Actualizado] [datetime] NULL,
	[Eliminado] [datetime] NULL,
 CONSTRAINT [PK_proc_CartasCredito] PRIMARY KEY CLUSTERED 
(
	[Consecutive] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[proc_Enmiendas]    Script Date: 22/05/2023 07:21:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[proc_Enmiendas](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CartaCreditoId] [nvarchar](max) NULL,
	[DocumentoSwift] [nvarchar](max) NULL,
	[ImporteLC] [decimal](18, 2) NULL,
	[FechaLimiteEmbarque] [datetime] NULL,
	[FechaVencimiento] [datetime] NULL,
	[DescripcionMercancia] [text] NULL,
	[ConsideracionesAdicionales] [text] NULL,
	[InstruccionesEspeciales] [text] NULL,
	[Estatus] [int] NULL,
	[Prev_DocumentoSwift] [nvarchar](max) NULL,
	[Prev_ImporteLC] [nvarchar](max) NULL,
	[Prev_FechaLimiteEmbarque] [datetime] NULL,
	[Prev_FechaVencimiento] [datetime] NULL,
	[Prev_DescripcionMercancia] [text] NULL,
	[Prev_ConsideracionesAdicionales] [text] NULL,
	[Prev_InstruccionesEspeciales] [text] NULL,
	[CreadoPor] [nvarchar](max) NULL,
	[Creado] [datetime] NULL,
	[Actualizado] [datetime] NULL,
	[Eliminado] [datetime] NULL,
	[Activo] [bit] NULL,
 CONSTRAINT [PK_proc_Enmiendas] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[proc_Invitaciones]    Script Date: 22/05/2023 07:21:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[proc_Invitaciones](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Creado] [datetime] NOT NULL,
	[Token] [nvarchar](max) NOT NULL,
	[CreadoPorId] [nvarchar](50) NULL,
 CONSTRAINT [PK_proc_Invitaciones] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[proc_Pagos]    Script Date: 22/05/2023 07:21:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[proc_Pagos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MontoPago] [decimal](18, 2) NULL,
	[MontoPagado] [decimal](18, 2) NULL,
	[FechaVencimiento] [datetime] NULL,
	[FechaPago] [datetime] NULL,
	[RegistroPagoPor] [nvarchar](max) NULL,
	[CreadoPor] [nvarchar](max) NULL,
	[CartaCreditoId] [nvarchar](max) NULL,
	[NumeroPago] [int] NULL,
	[NumeroFactura] [nvarchar](max) NULL,
	[Estatus] [int] NULL,
	[Activo] [bit] NOT NULL,
	[Creado] [datetime] NULL,
	[Actualizado] [datetime] NULL,
	[Eliminado] [datetime] NULL,
 CONSTRAINT [PK_proc_Pagos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[proc_PFEPagos]    Script Date: 22/05/2023 07:21:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[proc_PFEPagos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PFEProgramaId] [int] NOT NULL,
	[PagoId] [int] NOT NULL,
 CONSTRAINT [PK_proc_PFE_Pagos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[proc_PFEProgramas]    Script Date: 22/05/2023 07:21:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[proc_PFEProgramas](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EmpresaId] [int] NOT NULL,
	[Anio] [int] NOT NULL,
	[Periodo] [int] NOT NULL,
	[CreadoPor] [nvarchar](max) NOT NULL,
	[Creado] [datetime] NOT NULL,
	[Actualizado] [datetime] NULL,
	[Eliminado] [datetime] NULL,
	[Activo] [bit] NOT NULL,
 CONSTRAINT [PK_proc_PFE_Programas] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[proc_Reportes]    Script Date: 22/05/2023 07:21:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[proc_Reportes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TipoReporte] [nvarchar](50) NOT NULL,
	[Creado] [datetime] NOT NULL,
	[CreadoPorId] [nvarchar](max) NOT NULL,
	[CreadoPor] [nvarchar](max) NULL,
	[Filename] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_proc_Reportes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'202302021730542_InitialCreate', N'CartasCredito.Models.ApplicationDbContext', 0x1F8B0800000000000400DD5C5B6FE3B6127E2F70FE83A0A79E22B572E92EF604F616A9939C137473C13ABBE8DB82966847588952452A9BE0A0BFEC3CF427F52F9CA144C9122FBAD88AED140B2C2C72F8CD70382487C361FEFADF9FE39F9FC2C07AC409F52332B18F4687B685891B793E594EEC942D7E7C67FFFCFE1FDF8D2FBCF0C9FA5CD09D703A6849E8C47E602C3E751CEA3EE010D151E8BB4944A3051BB951E8202F728E0F0FFFE51C1D3918206CC0B2ACF1C794303FC4D9077C4E23E2E298A528B88E3C1C50510E35B30CD5BA4121A63172F1C49EA284213A4DB0E7B36894D3DBD659E02390658683856D2142228618487AFA89E2194B22B29CC5508082FBE71803DD0205148B1E9CAEC8BB76E6F09877C659352CA0DC94B228EC09787422B4E3C8CDD7D2B15D6A0FF477017A66CFBCD7990E27F69587B3A28F51000A90199E4E8384134FECEB92C5198D6F301B150D4739E4650270DFA2E4EBA88A7860756E77505AD3F1E890FF3BB0A669C0D2044F084E59828203EB2E9D07BEFB2B7EBE8FBE623239399A2F4EDEBD798BBC93B73FE19337D59E425F81AE560045774914E30464C38BB2FFB6E5D4DB3972C3B259A54DAE15B0259818B6758D9E3E60B2640F30658EDFD9D6A5FF84BDA24418D727E2C33C82462C49E1F3260D02340F7059EF34F2E4FF37703D7EF37610AE37E8D15F66432FF1878993C0BCFA8883AC963EF8713EBD6AE3FD45905D2651C8BFEBF695D77E994569E2F2CE4446927B942C31AB4B377656C6DBC9A439D4F0665DA0EEBF69734955F3D692F20EAD33130A16DB9E0D85BC2FCBB7B3C59DC5310C5E665A5C234D06A7DBAE46527B308F2AD5CA7C8EBA9A0F816EFD9D57C38B10F9C100CB61072EE08B2CFC24C4652F7F89C0F810E92DF31DA2145603EF3F883E34880E3F07107D86DD3401239D3114C62FCEEDEE2122F8260DE7DCF6B7C76BB0A1B9FF165D229745C905E1AD36C6FB10B95FA3945D10EF1C31FC89B90520FFBCF7C3EE00838873E6BA98D24B3066EC4D2370B50BC02BC24E8E7BC3F1256AD7EEC834407EA8F747A4C5F44B41BAF249F4148A5F6220D3F9264DA27E88963EE9266A416A1635A768155590F5159583759354509A05CD085AE5CCA906F3F6B2111ADEDDCB60F7DFDFDB6CF336AD051535CE6085C4FFC60427B08C797788319C90D50874593776E12C64C3C799BEF8DE9471FA8C827468566BCD866C11187E3664B0FB3F1B3231A1F8D1F7B857D2E1105410037C277AFDF9AA7DCE49926D7B3AD4BAB96DE6DB59034CD3E58CD2C8F5B359A0097F89E0455D7EF0E1ACF64846DE1B391A021D0343F7F9960725D0375B36AA5B728E03CCB075E6E6E1C129A22EF254354287BC1E82153BAA46B05554A42EDC0F0A4FB0749CF046881F8228CC549F30755AF8C4F56314B46A496AD9710BE37D2F79C835E738C684336CD54417E6FA200817A0E4230D4A9B86C64EC5E29A0DD1E0B59AC6BCCD855D8DBB129BD88A4DB6F8CE06BB14FEDB8B1866B3C6B6609CCD2AE9228031A0B70B03156795AE06201F5CF6CD40A51393C140854BB51503AD6B6C07065A57C9AB33D0FC88DA75FCA5F3EABE9967FDA0BCFD6DBD515D3BB0CD9A3EF6CC3473DF13DA30688113D53CCFE7BC123F31CDE10CE414E7332A5C5DD94438F80CB37AC866E5EF6AFD50A7194436A226C095A1B5808AAB40054899503D842B62798DD2092FA2076C11776B84156BBF045BB10115BB7A255A21345F9CCAC6D9E9F451F6ACB406C5C83B1D162A381A839017AF7AC73B28C514975515D3C517EEE30D573A2606A341412D9EAB4149456706D752619AED5AD239647D5CB28DB424B94F062D159D195C4BC246DB95A4710A7AB8051BA9A8BE850F34D98A4847B9DB94756327CF95120563C7905435BE4671EC936525C94A9458339161F5E3AC7FE2519863382ED5E41F95D2969C5894A025966A8135487AE927949D2386E688C779A65EA89069F756C3F25FB0AC6E9FEA2016FB4041CD7F8B18AFEE02BFB6DBAAEE8840B9843E86DCA7C902E91A0BD037B778DA1B0A50A289DD4FA3200D89D9C532B7CE6FF0AAEDF3121561EC48F22B2E94A22FC5D1AD2BBFD3D0A8D362B0612A7D98F587CA0C615278E18156556EF24ACD284590AA8A620A5CED6CE84CCE4CCFE1923DC5FEA3D58AF032734BA4A7540144514F8C4A86830256A9EB8E5A4F42A962D66BBA234A99265548A9AA8794D57C929A90D58AB5F00C1AD55374E7A0669054D1D5DAEEC89A5C922AB4A67A0D6C8DCC725D77544DBA49155853DD1D7B957B222FA37BBC7B19CF2F1B6C5FF92177B3FDCB80F1326BE230DB5FE52EBF0A5429EE89256EEB153051BE97F6643CE96D604F797463337B326098579FDA3D787DF169BCBC3763D62EB76B0B7CD3E5BE19AF9FD5BEA86D28473D99A4E45E1EF9A4A3DD581CB33A3CAA91CF5D39896D156A84CDFD99321C8E38C168F67B300D7CCC97F282E01A117F8129CB133AECE3C3A363E955CEFEBC907128F502CD31D5F44CA63E665BC8CD228F28711F50A2664A6CF08A6405AA04A1AF88879F26F67FB356A7593C83FFCA8A0FAC2BFA89F8BFA750719FA4D8FA43CDFC1C26ABBEC33B8E52D03F5EC50389EE2ABFFAED4BDEF4C0BA4D603A9D5A8792A2D719FEFAB3895ED2E44D379066EDC714AF77B6D55E296851A5D9B2FEA384B9CF0679905048F97D889EFED95734EDA3838D10350F0B86C21B4485A68703EB60191F0D78F0C9B24703FD3AAB7F44B08E68C607043EE90F263F1FE8BE0C152D77B80F698E4CDB5892323DB7A65F6F948BB9EBBD49C9D2DE68A2AB99D83DE006CDB6DECC45796559CC836D9D9A24E5C1B07769F72F9E99BC2FC9C82BA77DB739C8DB4C3B6EB856FA5B651BEF417E9C26DF67F739C5DBB635530C78CF1333FB650EEF99B1896D7EF7F9C1DB3636538078CF8DAD5716F09ED9DAAEF6CF1D5B5AE72D74E739BD6A7A92E12E4717456ECBD9CD43EE70FC9F476004B947993FB5D427893525B8B6305C9198999AB3D364C6CAC451F82A14CD6CFBF5556CF88D9D1534CD6C0D399D4DBCC5FADFC85BD034F336644AEE22DB589BABA8CB006F59C79A92A85E537671AD272DC9EC6D3E6BE3C5FC6B4A261E4429B5D963B85D7E3DB9C383A864C8A9D3235758BD2886BDB3F2371A61FFA6FE7205C1FF6223C16E6DD72C69AEC8222A366F49A282448AD05C63863CD852CF12E62F90CBA09A07A0B3B7E259508F5F83CCB177456E5316A70CBA8CC379500B787127A0897F96105D97797C1BF32F3A4417404C9F07EE6FC92FA91F78A5DC979A989001827B1722DCCBC792F1B0EFF2B944BA89484720A1BED229BAC7611C0018BD2533F488D7910DCCEF035E22F77915013481B40F445DEDE3731F2D13145281B16A0F9F60C35EF8F4FEFF8809426EAA540000, N'6.4.4')
GO
SET IDENTITY_INSERT [dbo].[AspNetPermissions] ON 

INSERT [dbo].[AspNetPermissions] ([Id], [Name], [Description], [Activo]) VALUES (1, N'Administración de Cartas', NULL, 1)
INSERT [dbo].[AspNetPermissions] ([Id], [Name], [Description], [Activo]) VALUES (2, N'Administración de Comisiones', NULL, 1)
INSERT [dbo].[AspNetPermissions] ([Id], [Name], [Description], [Activo]) VALUES (3, N'Administración de Pagos', NULL, 1)
INSERT [dbo].[AspNetPermissions] ([Id], [Name], [Description], [Activo]) VALUES (4, N'Catálogo de Agentes', NULL, 1)
INSERT [dbo].[AspNetPermissions] ([Id], [Name], [Description], [Activo]) VALUES (5, N'Catálogo de Bancos', NULL, 1)
INSERT [dbo].[AspNetPermissions] ([Id], [Name], [Description], [Activo]) VALUES (6, N'Acceso a Bitácora', NULL, 1)
INSERT [dbo].[AspNetPermissions] ([Id], [Name], [Description], [Activo]) VALUES (7, N'Búsqueda de Usuarios', NULL, 1)
INSERT [dbo].[AspNetPermissions] ([Id], [Name], [Description], [Activo]) VALUES (8, N'Catálogo de Comisiones', NULL, 1)
INSERT [dbo].[AspNetPermissions] ([Id], [Name], [Description], [Activo]) VALUES (9, N'Catálogo de Compradores', NULL, 1)
INSERT [dbo].[AspNetPermissions] ([Id], [Name], [Description], [Activo]) VALUES (10, N'Acceso a Dashboard', NULL, 1)
INSERT [dbo].[AspNetPermissions] ([Id], [Name], [Description], [Activo]) VALUES (11, N'Catálogo de Divisiones', NULL, 1)
INSERT [dbo].[AspNetPermissions] ([Id], [Name], [Description], [Activo]) VALUES (12, N'Catálogo de Empresas', NULL, 1)
INSERT [dbo].[AspNetPermissions] ([Id], [Name], [Description], [Activo]) VALUES (13, N'Historial de Enmiendas', NULL, 1)
INSERT [dbo].[AspNetPermissions] ([Id], [Name], [Description], [Activo]) VALUES (14, N'Catálogo de Líneas de Crédito', NULL, 1)
INSERT [dbo].[AspNetPermissions] ([Id], [Name], [Description], [Activo]) VALUES (15, N'Catálogo de Listado de Documentos', NULL, 1)
INSERT [dbo].[AspNetPermissions] ([Id], [Name], [Description], [Activo]) VALUES (16, N'Catálogo de Monedas', NULL, 1)
INSERT [dbo].[AspNetPermissions] ([Id], [Name], [Description], [Activo]) VALUES (17, N'Pagos-pronostico flujo de efectivo', NULL, 1)
INSERT [dbo].[AspNetPermissions] ([Id], [Name], [Description], [Activo]) VALUES (18, N'Programación de Pagos PFE', NULL, 1)
INSERT [dbo].[AspNetPermissions] ([Id], [Name], [Description], [Activo]) VALUES (19, N'Catálogo de Proveedores', NULL, 1)
INSERT [dbo].[AspNetPermissions] ([Id], [Name], [Description], [Activo]) VALUES (20, N'Catálogo de Proyectos', NULL, 1)
INSERT [dbo].[AspNetPermissions] ([Id], [Name], [Description], [Activo]) VALUES (21, N'Registro de Enmiendas', NULL, 1)
INSERT [dbo].[AspNetPermissions] ([Id], [Name], [Description], [Activo]) VALUES (22, N'Registro de Roles', NULL, 1)
INSERT [dbo].[AspNetPermissions] ([Id], [Name], [Description], [Activo]) VALUES (23, N'Registro de Usuarios', NULL, 1)
INSERT [dbo].[AspNetPermissions] ([Id], [Name], [Description], [Activo]) VALUES (24, N'Registro-edición de carta stand by', NULL, 1)
INSERT [dbo].[AspNetPermissions] ([Id], [Name], [Description], [Activo]) VALUES (25, N'Registro-edición de carta comercial', NULL, 1)
INSERT [dbo].[AspNetPermissions] ([Id], [Name], [Description], [Activo]) VALUES (26, N'Reportes con diseño', NULL, 1)
INSERT [dbo].[AspNetPermissions] ([Id], [Name], [Description], [Activo]) VALUES (27, N'Reportes tipo sábana', NULL, 1)
INSERT [dbo].[AspNetPermissions] ([Id], [Name], [Description], [Activo]) VALUES (28, N'Seguridad', NULL, 1)
INSERT [dbo].[AspNetPermissions] ([Id], [Name], [Description], [Activo]) VALUES (29, N'Catálogo de Tipos de Activo', NULL, 1)
SET IDENTITY_INSERT [dbo].[AspNetPermissions] OFF
GO
INSERT [dbo].[AspNetRolePermissions] ([RoleId], [PermissionId]) VALUES (N'96701BBE-5ED2-4D55-AC9B-8B5902B75D02', 17)
INSERT [dbo].[AspNetRolePermissions] ([RoleId], [PermissionId]) VALUES (N'96701BBE-5ED2-4D55-AC9B-8B5902B75D02', 18)
INSERT [dbo].[AspNetRolePermissions] ([RoleId], [PermissionId]) VALUES (N'96701BBE-5ED2-4D55-AC9B-8B5902B75D02', 29)
INSERT [dbo].[AspNetRolePermissions] ([RoleId], [PermissionId]) VALUES (N'D0217A48-678A-4550-B17B-F3313FA7E665', 28)
INSERT [dbo].[AspNetRolePermissions] ([RoleId], [PermissionId]) VALUES (N'D0217A48-678A-4550-B17B-F3313FA7E665', 13)
INSERT [dbo].[AspNetRolePermissions] ([RoleId], [PermissionId]) VALUES (N'D0217A48-678A-4550-B17B-F3313FA7E665', 29)
INSERT [dbo].[AspNetRolePermissions] ([RoleId], [PermissionId]) VALUES (N'D0217A48-678A-4550-B17B-F3313FA7E665', 8)
INSERT [dbo].[AspNetRolePermissions] ([RoleId], [PermissionId]) VALUES (N'D0217A48-678A-4550-B17B-F3313FA7E665', 9)
INSERT [dbo].[AspNetRolePermissions] ([RoleId], [PermissionId]) VALUES (N'D0217A48-678A-4550-B17B-F3313FA7E665', 24)
INSERT [dbo].[AspNetRolePermissions] ([RoleId], [PermissionId]) VALUES (N'D0217A48-678A-4550-B17B-F3313FA7E665', 27)
INSERT [dbo].[AspNetRolePermissions] ([RoleId], [PermissionId]) VALUES (N'D0217A48-678A-4550-B17B-F3313FA7E665', 26)
INSERT [dbo].[AspNetRolePermissions] ([RoleId], [PermissionId]) VALUES (N'D0217A48-678A-4550-B17B-F3313FA7E665', 1)
INSERT [dbo].[AspNetRolePermissions] ([RoleId], [PermissionId]) VALUES (N'F29FFBF3-1CE1-44B9-BC7B-8BBE95287192', 27)
INSERT [dbo].[AspNetRolePermissions] ([RoleId], [PermissionId]) VALUES (N'F29FFBF3-1CE1-44B9-BC7B-8BBE95287192', 26)
INSERT [dbo].[AspNetRolePermissions] ([RoleId], [PermissionId]) VALUES (N'F29FFBF3-1CE1-44B9-BC7B-8BBE95287192', 5)
INSERT [dbo].[AspNetRolePermissions] ([RoleId], [PermissionId]) VALUES (N'F29FFBF3-1CE1-44B9-BC7B-8BBE95287192', 7)
INSERT [dbo].[AspNetRolePermissions] ([RoleId], [PermissionId]) VALUES (N'F29FFBF3-1CE1-44B9-BC7B-8BBE95287192', 6)
INSERT [dbo].[AspNetRolePermissions] ([RoleId], [PermissionId]) VALUES (N'F29FFBF3-1CE1-44B9-BC7B-8BBE95287192', 10)
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [Description], [Activo]) VALUES (N'96701BBE-5ED2-4D55-AC9B-8B5902B75D02', N'Agente Aduanal', NULL, 0)
INSERT [dbo].[AspNetRoles] ([Id], [Name], [Description], [Activo]) VALUES (N'D0217A48-678A-4550-B17B-F3313FA7E665', N'Comprador', NULL, 1)
INSERT [dbo].[AspNetRoles] ([Id], [Name], [Description], [Activo]) VALUES (N'D3FCBBCA-4C3C-41A0-9D11-4966733F76B3', N'Super Admin', NULL, 1)
INSERT [dbo].[AspNetRoles] ([Id], [Name], [Description], [Activo]) VALUES (N'F29FFBF3-1CE1-44B9-BC7B-8BBE95287192', N'Comprador Dev', NULL, 1)
GO
INSERT [dbo].[AspNetUserEmpresas] ([UserId], [EmpresaId]) VALUES (N'7E7836AF-0F46-4F5C-944B-194ED9D87AEF', 1)
INSERT [dbo].[AspNetUserEmpresas] ([UserId], [EmpresaId]) VALUES (N'7E7836AF-0F46-4F5C-944B-194ED9D87AEF', 11)
INSERT [dbo].[AspNetUserEmpresas] ([UserId], [EmpresaId]) VALUES (N'7E7836AF-0F46-4F5C-944B-194ED9D87AEF', 2)
INSERT [dbo].[AspNetUserEmpresas] ([UserId], [EmpresaId]) VALUES (N'7E7836AF-0F46-4F5C-944B-194ED9D87AEF', 14)
INSERT [dbo].[AspNetUserEmpresas] ([UserId], [EmpresaId]) VALUES (N'7E7836AF-0F46-4F5C-944B-194ED9D87AEF', 12)
INSERT [dbo].[AspNetUserEmpresas] ([UserId], [EmpresaId]) VALUES (N'7E7836AF-0F46-4F5C-944B-194ED9D87AEF', 10)
INSERT [dbo].[AspNetUserEmpresas] ([UserId], [EmpresaId]) VALUES (N'DE194D7A-9DFC-4599-9C6A-BFFE7A3A0822', 14)
INSERT [dbo].[AspNetUserEmpresas] ([UserId], [EmpresaId]) VALUES (N'DE194D7A-9DFC-4599-9C6A-BFFE7A3A0822', 11)
INSERT [dbo].[AspNetUserEmpresas] ([UserId], [EmpresaId]) VALUES (N'C212EBD4-CE4D-4CD1-8AEB-13138B2A2EC7', 16)
INSERT [dbo].[AspNetUserEmpresas] ([UserId], [EmpresaId]) VALUES (N'C212EBD4-CE4D-4CD1-8AEB-13138B2A2EC7', 14)
INSERT [dbo].[AspNetUserEmpresas] ([UserId], [EmpresaId]) VALUES (N'C212EBD4-CE4D-4CD1-8AEB-13138B2A2EC7', 12)
INSERT [dbo].[AspNetUserEmpresas] ([UserId], [EmpresaId]) VALUES (N'C212EBD4-CE4D-4CD1-8AEB-13138B2A2EC7', 1)
INSERT [dbo].[AspNetUserEmpresas] ([UserId], [EmpresaId]) VALUES (N'C212EBD4-CE4D-4CD1-8AEB-13138B2A2EC7', 2)
INSERT [dbo].[AspNetUserEmpresas] ([UserId], [EmpresaId]) VALUES (N'C212EBD4-CE4D-4CD1-8AEB-13138B2A2EC7', 10)
INSERT [dbo].[AspNetUserEmpresas] ([UserId], [EmpresaId]) VALUES (N'C212EBD4-CE4D-4CD1-8AEB-13138B2A2EC7', 11)
INSERT [dbo].[AspNetUserEmpresas] ([UserId], [EmpresaId]) VALUES (N'D3817841-32FA-45C3-B07F-ABFDD75AD95B', 13)
INSERT [dbo].[AspNetUserEmpresas] ([UserId], [EmpresaId]) VALUES (N'D3817841-32FA-45C3-B07F-ABFDD75AD95B', 10)
INSERT [dbo].[AspNetUserEmpresas] ([UserId], [EmpresaId]) VALUES (N'A57ABB6F-6422-45BC-A306-C4CBA64DC93E', 13)
INSERT [dbo].[AspNetUserEmpresas] ([UserId], [EmpresaId]) VALUES (N'A57ABB6F-6422-45BC-A306-C4CBA64DC93E', 12)
INSERT [dbo].[AspNetUserEmpresas] ([UserId], [EmpresaId]) VALUES (N'A57ABB6F-6422-45BC-A306-C4CBA64DC93E', 1)
INSERT [dbo].[AspNetUserEmpresas] ([UserId], [EmpresaId]) VALUES (N'A57ABB6F-6422-45BC-A306-C4CBA64DC93E', 4)
INSERT [dbo].[AspNetUserEmpresas] ([UserId], [EmpresaId]) VALUES (N'A57ABB6F-6422-45BC-A306-C4CBA64DC93E', 5)
INSERT [dbo].[AspNetUserEmpresas] ([UserId], [EmpresaId]) VALUES (N'8782B790-084C-467F-A2B0-C40441B41DA9', 4)
INSERT [dbo].[AspNetUserEmpresas] ([UserId], [EmpresaId]) VALUES (N'8782B790-084C-467F-A2B0-C40441B41DA9', 7)
INSERT [dbo].[AspNetUserEmpresas] ([UserId], [EmpresaId]) VALUES (N'71F9A903-0FBD-477E-B6D7-1B18E2F10A91', 14)
INSERT [dbo].[AspNetUserEmpresas] ([UserId], [EmpresaId]) VALUES (N'71F9A903-0FBD-477E-B6D7-1B18E2F10A91', 13)
INSERT [dbo].[AspNetUserEmpresas] ([UserId], [EmpresaId]) VALUES (N'71F9A903-0FBD-477E-B6D7-1B18E2F10A91', 12)
INSERT [dbo].[AspNetUserEmpresas] ([UserId], [EmpresaId]) VALUES (N'71F9A903-0FBD-477E-B6D7-1B18E2F10A91', 1)
INSERT [dbo].[AspNetUserEmpresas] ([UserId], [EmpresaId]) VALUES (N'71F9A903-0FBD-477E-B6D7-1B18E2F10A91', 2)
INSERT [dbo].[AspNetUserEmpresas] ([UserId], [EmpresaId]) VALUES (N'71F9A903-0FBD-477E-B6D7-1B18E2F10A91', 3)
INSERT [dbo].[AspNetUserEmpresas] ([UserId], [EmpresaId]) VALUES (N'71F9A903-0FBD-477E-B6D7-1B18E2F10A91', 4)
INSERT [dbo].[AspNetUserEmpresas] ([UserId], [EmpresaId]) VALUES (N'71F9A903-0FBD-477E-B6D7-1B18E2F10A91', 5)
INSERT [dbo].[AspNetUserEmpresas] ([UserId], [EmpresaId]) VALUES (N'71F9A903-0FBD-477E-B6D7-1B18E2F10A91', 6)
INSERT [dbo].[AspNetUserEmpresas] ([UserId], [EmpresaId]) VALUES (N'68B4709A-5255-45DC-87B5-A8C3F3EEA219', 14)
INSERT [dbo].[AspNetUserEmpresas] ([UserId], [EmpresaId]) VALUES (N'68B4709A-5255-45DC-87B5-A8C3F3EEA219', 13)
INSERT [dbo].[AspNetUserEmpresas] ([UserId], [EmpresaId]) VALUES (N'68B4709A-5255-45DC-87B5-A8C3F3EEA219', 12)
INSERT [dbo].[AspNetUserEmpresas] ([UserId], [EmpresaId]) VALUES (N'68B4709A-5255-45DC-87B5-A8C3F3EEA219', 1)
INSERT [dbo].[AspNetUserEmpresas] ([UserId], [EmpresaId]) VALUES (N'68B4709A-5255-45DC-87B5-A8C3F3EEA219', 2)
INSERT [dbo].[AspNetUserEmpresas] ([UserId], [EmpresaId]) VALUES (N'4A296B6E-5284-4DBF-AAB5-78A3A418FF7B', 14)
INSERT [dbo].[AspNetUserEmpresas] ([UserId], [EmpresaId]) VALUES (N'4A296B6E-5284-4DBF-AAB5-78A3A418FF7B', 12)
INSERT [dbo].[AspNetUserEmpresas] ([UserId], [EmpresaId]) VALUES (N'8B32CEAF-E478-46D5-AC85-7B5B86796372', 14)
INSERT [dbo].[AspNetUserEmpresas] ([UserId], [EmpresaId]) VALUES (N'8B32CEAF-E478-46D5-AC85-7B5B86796372', 13)
INSERT [dbo].[AspNetUserEmpresas] ([UserId], [EmpresaId]) VALUES (N'8B32CEAF-E478-46D5-AC85-7B5B86796372', 12)
INSERT [dbo].[AspNetUserEmpresas] ([UserId], [EmpresaId]) VALUES (N'8B32CEAF-E478-46D5-AC85-7B5B86796372', 1)
INSERT [dbo].[AspNetUserEmpresas] ([UserId], [EmpresaId]) VALUES (N'8B32CEAF-E478-46D5-AC85-7B5B86796372', 2)
INSERT [dbo].[AspNetUserEmpresas] ([UserId], [EmpresaId]) VALUES (N'19E26FDC-830A-4AA0-8F27-AFED7B89C70E', 14)
INSERT [dbo].[AspNetUserEmpresas] ([UserId], [EmpresaId]) VALUES (N'19E26FDC-830A-4AA0-8F27-AFED7B89C70E', 13)
INSERT [dbo].[AspNetUserEmpresas] ([UserId], [EmpresaId]) VALUES (N'19E26FDC-830A-4AA0-8F27-AFED7B89C70E', 12)
INSERT [dbo].[AspNetUserEmpresas] ([UserId], [EmpresaId]) VALUES (N'19E26FDC-830A-4AA0-8F27-AFED7B89C70E', 1)
INSERT [dbo].[AspNetUserEmpresas] ([UserId], [EmpresaId]) VALUES (N'19E26FDC-830A-4AA0-8F27-AFED7B89C70E', 2)
INSERT [dbo].[AspNetUserEmpresas] ([UserId], [EmpresaId]) VALUES (N'19E26FDC-830A-4AA0-8F27-AFED7B89C70E', 3)
INSERT [dbo].[AspNetUserEmpresas] ([UserId], [EmpresaId]) VALUES (N'030D2EC3-F023-4ABA-B771-46844530A8DD', 1)
INSERT [dbo].[AspNetUserEmpresas] ([UserId], [EmpresaId]) VALUES (N'030D2EC3-F023-4ABA-B771-46844530A8DD', 2)
INSERT [dbo].[AspNetUserEmpresas] ([UserId], [EmpresaId]) VALUES (N'030D2EC3-F023-4ABA-B771-46844530A8DD', 5)
INSERT [dbo].[AspNetUserEmpresas] ([UserId], [EmpresaId]) VALUES (N'CD928559-B1E0-4DC6-A4E7-5C8B2B1EF36A', 10)
INSERT [dbo].[AspNetUserEmpresas] ([UserId], [EmpresaId]) VALUES (N'CD928559-B1E0-4DC6-A4E7-5C8B2B1EF36A', 8)
INSERT [dbo].[AspNetUserEmpresas] ([UserId], [EmpresaId]) VALUES (N'2ED43499-B932-4C23-BFFA-7706F001E97F', 14)
INSERT [dbo].[AspNetUserEmpresas] ([UserId], [EmpresaId]) VALUES (N'0C2688A3-E7B1-4EA5-A2BD-36AA92B501CA', 4)
INSERT [dbo].[AspNetUserEmpresas] ([UserId], [EmpresaId]) VALUES (N'0C2688A3-E7B1-4EA5-A2BD-36AA92B501CA', 1)
INSERT [dbo].[AspNetUserEmpresas] ([UserId], [EmpresaId]) VALUES (N'0C2688A3-E7B1-4EA5-A2BD-36AA92B501CA', 14)
INSERT [dbo].[AspNetUserEmpresas] ([UserId], [EmpresaId]) VALUES (N'148DBACB-8382-4E97-8673-99607CE3A33C', 14)
INSERT [dbo].[AspNetUserEmpresas] ([UserId], [EmpresaId]) VALUES (N'148DBACB-8382-4E97-8673-99607CE3A33C', 13)
INSERT [dbo].[AspNetUserEmpresas] ([UserId], [EmpresaId]) VALUES (N'148DBACB-8382-4E97-8673-99607CE3A33C', 12)
INSERT [dbo].[AspNetUserEmpresas] ([UserId], [EmpresaId]) VALUES (N'148DBACB-8382-4E97-8673-99607CE3A33C', 1)
INSERT [dbo].[AspNetUserEmpresas] ([UserId], [EmpresaId]) VALUES (N'148DBACB-8382-4E97-8673-99607CE3A33C', 2)
INSERT [dbo].[AspNetUserEmpresas] ([UserId], [EmpresaId]) VALUES (N'148DBACB-8382-4E97-8673-99607CE3A33C', 3)
INSERT [dbo].[AspNetUserEmpresas] ([UserId], [EmpresaId]) VALUES (N'41AA3404-8188-432E-85FC-489CF4A2825C', 13)
INSERT [dbo].[AspNetUserEmpresas] ([UserId], [EmpresaId]) VALUES (N'41AA3404-8188-432E-85FC-489CF4A2825C', 12)
INSERT [dbo].[AspNetUserEmpresas] ([UserId], [EmpresaId]) VALUES (N'41AA3404-8188-432E-85FC-489CF4A2825C', 1)
INSERT [dbo].[AspNetUserEmpresas] ([UserId], [EmpresaId]) VALUES (N'41AA3404-8188-432E-85FC-489CF4A2825C', 2)
INSERT [dbo].[AspNetUserEmpresas] ([UserId], [EmpresaId]) VALUES (N'41AA3404-8188-432E-85FC-489CF4A2825C', 3)
INSERT [dbo].[AspNetUserEmpresas] ([UserId], [EmpresaId]) VALUES (N'41AA3404-8188-432E-85FC-489CF4A2825C', 4)
INSERT [dbo].[AspNetUserEmpresas] ([UserId], [EmpresaId]) VALUES (N'41AA3404-8188-432E-85FC-489CF4A2825C', 5)
INSERT [dbo].[AspNetUserEmpresas] ([UserId], [EmpresaId]) VALUES (N'9683AC12-2E3C-4933-9083-8D35C291F94D', 14)
INSERT [dbo].[AspNetUserEmpresas] ([UserId], [EmpresaId]) VALUES (N'9683AC12-2E3C-4933-9083-8D35C291F94D', 13)
INSERT [dbo].[AspNetUserEmpresas] ([UserId], [EmpresaId]) VALUES (N'9683AC12-2E3C-4933-9083-8D35C291F94D', 12)
INSERT [dbo].[AspNetUserEmpresas] ([UserId], [EmpresaId]) VALUES (N'9683AC12-2E3C-4933-9083-8D35C291F94D', 1)
INSERT [dbo].[AspNetUserEmpresas] ([UserId], [EmpresaId]) VALUES (N'9683AC12-2E3C-4933-9083-8D35C291F94D', 2)
INSERT [dbo].[AspNetUserEmpresas] ([UserId], [EmpresaId]) VALUES (N'9683AC12-2E3C-4933-9083-8D35C291F94D', 3)
INSERT [dbo].[AspNetUserEmpresas] ([UserId], [EmpresaId]) VALUES (N'6D53A9DE-F41E-4683-A98C-4E21A0E51CD2', 14)
INSERT [dbo].[AspNetUserEmpresas] ([UserId], [EmpresaId]) VALUES (N'6D53A9DE-F41E-4683-A98C-4E21A0E51CD2', 7)
INSERT [dbo].[AspNetUserEmpresas] ([UserId], [EmpresaId]) VALUES (N'6D53A9DE-F41E-4683-A98C-4E21A0E51CD2', 10)
INSERT [dbo].[AspNetUserEmpresas] ([UserId], [EmpresaId]) VALUES (N'FC12EADD-3E7A-43D9-95A2-362BB3F610D7', 14)
INSERT [dbo].[AspNetUserEmpresas] ([UserId], [EmpresaId]) VALUES (N'FC12EADD-3E7A-43D9-95A2-362BB3F610D7', 13)
INSERT [dbo].[AspNetUserEmpresas] ([UserId], [EmpresaId]) VALUES (N'FC12EADD-3E7A-43D9-95A2-362BB3F610D7', 12)
INSERT [dbo].[AspNetUserEmpresas] ([UserId], [EmpresaId]) VALUES (N'FC12EADD-3E7A-43D9-95A2-362BB3F610D7', 1)
INSERT [dbo].[AspNetUserEmpresas] ([UserId], [EmpresaId]) VALUES (N'FC12EADD-3E7A-43D9-95A2-362BB3F610D7', 3)
INSERT [dbo].[AspNetUserEmpresas] ([UserId], [EmpresaId]) VALUES (N'C3967387-D863-41ED-97F0-27D2BBDDAFFE', 1)
INSERT [dbo].[AspNetUserEmpresas] ([UserId], [EmpresaId]) VALUES (N'C3967387-D863-41ED-97F0-27D2BBDDAFFE', 2)
INSERT [dbo].[AspNetUserEmpresas] ([UserId], [EmpresaId]) VALUES (N'C3967387-D863-41ED-97F0-27D2BBDDAFFE', 3)
INSERT [dbo].[AspNetUserEmpresas] ([UserId], [EmpresaId]) VALUES (N'C3967387-D863-41ED-97F0-27D2BBDDAFFE', 6)
INSERT [dbo].[AspNetUserEmpresas] ([UserId], [EmpresaId]) VALUES (N'C3967387-D863-41ED-97F0-27D2BBDDAFFE', 10)
INSERT [dbo].[AspNetUserEmpresas] ([UserId], [EmpresaId]) VALUES (N'2ED43499-B932-4C23-BFFA-7706F001E97F', 5)
GO
SET IDENTITY_INSERT [dbo].[AspNetUserProfile] ON 

INSERT [dbo].[AspNetUserProfile] ([Id], [Name], [LastName], [DisplayName], [UserId], [Notes]) VALUES (1, N'SoftDepot', N'Apps', N'SoftDepot', N'7E7836AF-0F46-4F5C-944B-194ED9D87AEF', N'')
SET IDENTITY_INSERT [dbo].[AspNetUserProfile] OFF
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Activo]) VALUES (N'7E7836AF-0F46-4F5C-944B-194ED9D87AEF', N'apps@softdepot.mx', 1, N'ANsSxdKCOXbu7hE2OYD48wqtoDyR5hrUd1hQO+l8v4dxtUwc451S2BE4nFHa/IVCUg==', N'A39A9E7D-548B-4018-BCA5-16ECAACAC3FE', N'', 1, 0, NULL, 0, 0, N'SoftDepot', 1)
GO
SET IDENTITY_INSERT [dbo].[cat_AgentesAduanales] ON 

INSERT [dbo].[cat_AgentesAduanales] ([Id], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (1, N'Despachos del Norte', N'Descripción Prueba', 1, N'IMPORTACION', CAST(N'2014-06-17T00:00:00.000' AS DateTime), CAST(N'2023-04-18T08:24:39.883' AS DateTime), NULL)
INSERT [dbo].[cat_AgentesAduanales] ([Id], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (2, N'Despachos Aduanales Castañeda, S.C.', NULL, 1, N'ada.carrillo', CAST(N'2014-06-17T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_AgentesAduanales] ([Id], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (3, N'Dicex Interanational', NULL, 1, N'IMPORTACION', CAST(N'2014-06-17T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_AgentesAduanales] ([Id], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (4, N'Exl, Inc.', NULL, 1, N'IMPORTACION', CAST(N'2014-06-17T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_AgentesAduanales] ([Id], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (5, N'Silca Logistica', NULL, 1, N'IMPORTACION', CAST(N'2014-06-17T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_AgentesAduanales] ([Id], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (6, N'Pena International Trade Servi', NULL, 1, N'IMPORTACION', CAST(N'2014-06-17T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_AgentesAduanales] ([Id], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (7, N'Gilberto Ortiz Reyna', NULL, 1, N'IMPORTACION', CAST(N'2014-06-17T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_AgentesAduanales] ([Id], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (8, N'A.A. Jose Hugo Herrera Mier', N'', 1, N'ada.carrillo', CAST(N'2014-06-17T00:00:00.000' AS DateTime), CAST(N'2023-02-22T16:30:18.490' AS DateTime), NULL)
INSERT [dbo].[cat_AgentesAduanales] ([Id], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (9, N'A.A. Eduardo Villafuerte Coello', NULL, 1, N'macedonio.martinez', CAST(N'2014-06-17T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_AgentesAduanales] ([Id], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (10, N'Victor Hugo Games Luna', NULL, 1, N'IMPORTACION', CAST(N'2014-06-17T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_AgentesAduanales] ([Id], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (11, N'Parker & Company', NULL, 1, N'IMPORTACION', CAST(N'2014-06-17T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_AgentesAduanales] ([Id], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (12, N'Cargo Import Brokers Inc', NULL, 1, N'IMPORTACION', CAST(N'2014-06-17T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_AgentesAduanales] ([Id], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (13, N'Logis Agencias Aduanales, S.A.', NULL, 1, N'IMPORTACION', CAST(N'2014-06-17T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_AgentesAduanales] ([Id], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (14, N'A.A. Glucsa del Pacifico S.C.', NULL, 1, N'IMPORTACION', CAST(N'2014-06-17T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_AgentesAduanales] ([Id], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (15, N'Despachos Aduanales del Puerto de Tam', NULL, 1, N'IMPORTACION', CAST(N'2014-06-17T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_AgentesAduanales] ([Id], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (16, N'Laser Forwarding, Inc', NULL, 1, N'IMPORTACION', CAST(N'2014-06-17T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_AgentesAduanales] ([Id], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (17, N'Logística y Operación Aduanera', NULL, 1, N'IMPORTACION', CAST(N'2014-06-17T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_AgentesAduanales] ([Id], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (18, N'Alianza Estrategica Portuaria', NULL, 1, N'IMPORTACION', CAST(N'2014-06-17T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_AgentesAduanales] ([Id], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (19, N'Victor Hugo Gamas Luna', NULL, 1, N'IMPORTACION', CAST(N'2014-06-17T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_AgentesAduanales] ([Id], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (20, N'Peña LMD', NULL, 1, N'ada.carrillo', CAST(N'2014-06-17T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_AgentesAduanales] ([Id], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (21, N'Conceptos Avanzados en Comercio Exterior, S.C.', NULL, 1, N'macedonio.martinez', CAST(N'2014-12-09T11:37:06.417' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_AgentesAduanales] ([Id], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (22, N'Castaneda & Co Inc', NULL, 1, N'ada.carrillo', CAST(N'2015-05-28T17:04:47.067' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_AgentesAduanales] ([Id], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (23, N'A.A. Sergio Castañeda Guerrero Patente 3198', NULL, 1, N'macedonio.martinez', CAST(N'2015-07-16T10:11:39.073' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_AgentesAduanales] ([Id], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (24, N'A.A. Elsa Castañeda', NULL, 1, N'macedonio.martinez', CAST(N'2016-04-21T16:57:31.987' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_AgentesAduanales] ([Id], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (25, N'GL Group', NULL, 1, N'macedonio.martinez', CAST(N'2016-08-08T11:54:51.617' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_AgentesAduanales] ([Id], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (26, N'A.A. Pedro Ramón Puron Acevedo', NULL, 1, N'macedonio.martinez', CAST(N'2016-09-26T13:07:10.593' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_AgentesAduanales] ([Id], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (27, N'Corporacion Castañeda, S.C.', NULL, 1, N'macedonio.martinez', CAST(N'2016-12-08T20:07:41.080' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_AgentesAduanales] ([Id], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (28, N'AA Sigfrido Luciano Alberto Arredondo Flores / Des', NULL, 1, N'macedonio.martinez', CAST(N'2018-07-29T21:33:57.670' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_AgentesAduanales] ([Id], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (29, N'Expeditors International De Mexico', N'', 0, N'ada.carrillo', CAST(N'2019-03-20T13:23:06.947' AS DateTime), CAST(N'2023-03-30T09:39:02.787' AS DateTime), NULL)
INSERT [dbo].[cat_AgentesAduanales] ([Id], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (30, N'JOFFROY GROUP LCC', NULL, 1, N'macedonio.martinez', CAST(N'2020-10-28T20:01:47.913' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_AgentesAduanales] ([Id], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (31, N'AA Rodolfo Winston Castañeda Guerrero / Despachos ', NULL, 1, N'macedonio.martinez', CAST(N'2021-02-16T09:11:39.807' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_AgentesAduanales] ([Id], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (32, N'Joffroy y Cia, SC', N'', 0, N'macedonio.martinez', CAST(N'2022-02-24T12:30:20.250' AS DateTime), CAST(N'2023-03-30T09:39:01.647' AS DateTime), NULL)
INSERT [dbo].[cat_AgentesAduanales] ([Id], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (33, N'asdfasdfa', N'', 1, N'12cb7342-837e-45d9-892c-6818a38a3816', CAST(N'2023-02-14T17:22:51.647' AS DateTime), CAST(N'2023-02-22T16:01:14.790' AS DateTime), NULL)
INSERT [dbo].[cat_AgentesAduanales] ([Id], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (34, N'Prueba Sin Empresa', N'Test', 1, N'12cb7342-837e-45d9-892c-6818a38a3816', CAST(N'2023-04-18T09:21:21.730' AS DateTime), NULL, NULL)
SET IDENTITY_INSERT [dbo].[cat_AgentesAduanales] OFF
GO
SET IDENTITY_INSERT [dbo].[cat_Bancos] ON 

INSERT [dbo].[cat_Bancos] ([Id], [Nombre], [Descripcion], [TotalLinea], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (1, N'Banamex ', N'Banamex, S.A.', CAST(15000000.00 AS Decimal(18, 2)), 1, N'velia.gonzalez', CAST(N'2014-06-17T17:43:47.553' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Bancos] ([Id], [Nombre], [Descripcion], [TotalLinea], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (2, N'Comerica Bank ', N'Comerica Bank', CAST(5000000.00 AS Decimal(18, 2)), 1, N'ada.carrillo', CAST(N'2014-06-17T17:43:47.580' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Bancos] ([Id], [Nombre], [Descripcion], [TotalLinea], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (3, N'BBVA Bancomer ', N'B.B.V.A.  Bancomer', CAST(30000000.00 AS Decimal(18, 2)), 1, N'velia.gonzalez', CAST(N'2014-06-17T17:43:47.583' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Bancos] ([Id], [Nombre], [Descripcion], [TotalLinea], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (4, N'Wells Fargo ', N'WELLS FARGO BANK N.A.', CAST(0.00 AS Decimal(18, 2)), 1, N'macedonio.martinez', CAST(N'2014-06-17T17:43:47.587' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Bancos] ([Id], [Nombre], [Descripcion], [TotalLinea], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (9, N'Banco del Bajío ', N'Banco Del Bajío', CAST(23000000.00 AS Decimal(18, 2)), 1, N'ada.carrillo', CAST(N'2014-06-17T17:43:47.597' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Bancos] ([Id], [Nombre], [Descripcion], [TotalLinea], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (11, N'Santander Hispano ', N'Banco Santander C. Hispano', CAST(0.00 AS Decimal(18, 2)), 1, N'velia.gonzalez', CAST(N'2014-06-17T17:43:47.600' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Bancos] ([Id], [Nombre], [Descripcion], [TotalLinea], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (14, N'HSBC', N'HSBC México', CAST(51000000.00 AS Decimal(18, 2)), 1, N'ada.carrillo', CAST(N'2014-06-17T17:43:47.607' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Bancos] ([Id], [Nombre], [Descripcion], [TotalLinea], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (18, N'Santander ', N'Santander, S.A.', CAST(6000000.00 AS Decimal(18, 2)), 1, N'ada.carrillo', CAST(N'2014-06-17T17:43:47.610' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Bancos] ([Id], [Nombre], [Descripcion], [TotalLinea], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (19, N'Harris Bank ', N'HARRIS BANK', CAST(0.00 AS Decimal(18, 2)), 1, N'velia.gonzalez', CAST(N'2014-06-17T17:43:47.613' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Bancos] ([Id], [Nombre], [Descripcion], [TotalLinea], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (20, N'InterBanco ', N'Interbanco', CAST(5000000.00 AS Decimal(18, 2)), 1, N'velia.gonzalez', CAST(N'2014-06-17T17:43:47.617' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Bancos] ([Id], [Nombre], [Descripcion], [TotalLinea], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (21, N'Banco Monex', N'Monex', CAST(13500000.00 AS Decimal(18, 2)), 1, N'ada.carrillo', CAST(N'2014-06-17T17:43:47.620' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Bancos] ([Id], [Nombre], [Descripcion], [TotalLinea], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (22, N'Nordea Bank ', N'NORDEA BANK DANMARK A/S', CAST(0.00 AS Decimal(18, 2)), 1, N'ada.carrillo', CAST(N'2014-06-17T17:43:47.620' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Bancos] ([Id], [Nombre], [Descripcion], [TotalLinea], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (23, N'DNB NOR Bank ', N'DNB NOR BANK ASA', CAST(0.00 AS Decimal(18, 2)), 1, N'velia.gonzalez', CAST(N'2014-06-17T17:43:47.623' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Bancos] ([Id], [Nombre], [Descripcion], [TotalLinea], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (24, N'Banregio ', N'Banregio ', CAST(15000000.00 AS Decimal(18, 2)), 1, N'velia.gonzalez', CAST(N'2014-09-04T12:26:35.933' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Bancos] ([Id], [Nombre], [Descripcion], [TotalLinea], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (26, N'HSBC Prepagadas', N'Para cartas de crédito con provisión de fondos', CAST(0.00 AS Decimal(18, 2)), 1, N'ada.carrillo', CAST(N'2014-09-04T12:49:59.830' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Bancos] ([Id], [Nombre], [Descripcion], [TotalLinea], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (27, N'Bankinter SA', N'Banco de Euro Equip SA', CAST(0.00 AS Decimal(18, 2)), 1, N'ada.carrillo', CAST(N'2014-12-29T11:31:30.557' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Bancos] ([Id], [Nombre], [Descripcion], [TotalLinea], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (28, N'PNC Bank, N.A.', N'Banco corresponsal en EUA', CAST(1000000.00 AS Decimal(18, 2)), 1, N'ada.carrillo', CAST(N'2015-10-21T09:28:19.897' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Bancos] ([Id], [Nombre], [Descripcion], [TotalLinea], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (29, N'El Banco de Sabadell', N'Banco corresponsal', CAST(0.00 AS Decimal(18, 2)), 0, N'ada.carrillo', CAST(N'2016-03-23T09:56:50.243' AS DateTime), CAST(N'2023-02-23T01:09:22.710' AS DateTime), NULL)
INSERT [dbo].[cat_Bancos] ([Id], [Nombre], [Descripcion], [TotalLinea], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (30, N'Banorte', N'Banco Mercantil del Norte ', CAST(0.00 AS Decimal(18, 2)), 1, N'ada.carrillo', CAST(N'2017-04-27T13:31:34.777' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Bancos] ([Id], [Nombre], [Descripcion], [TotalLinea], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (31, N'Banco Santander', N'Banco Santander de México, S.A.', CAST(6000000.00 AS Decimal(18, 2)), 1, N'ada.carrillo', CAST(N'2016-07-20T09:52:33.807' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Bancos] ([Id], [Nombre], [Descripcion], [TotalLinea], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (32, N'Citibank', N'Citibank', CAST(0.00 AS Decimal(18, 2)), 1, N'macedonio.martinez', CAST(N'2017-01-16T16:49:22.250' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Bancos] ([Id], [Nombre], [Descripcion], [TotalLinea], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (33, N'Scandinaviska Enskil', N'Scandinaviska Enskil', CAST(0.00 AS Decimal(18, 2)), 1, N'macedonio.martinez', CAST(N'2017-05-09T11:02:13.877' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Bancos] ([Id], [Nombre], [Descripcion], [TotalLinea], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (34, N'ICBC', N'Industrial and Commercial Bank of China', CAST(0.00 AS Decimal(18, 2)), 0, N'ada.carrillo', CAST(N'2021-07-14T14:23:03.953' AS DateTime), CAST(N'2023-02-23T01:09:05.860' AS DateTime), NULL)
INSERT [dbo].[cat_Bancos] ([Id], [Nombre], [Descripcion], [TotalLinea], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (35, N'Unicredito Italiano ', N'Banco corresponsal', CAST(0.00 AS Decimal(18, 2)), 1, N'ada.carrillo', CAST(N'2021-12-01T17:19:22.793' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Bancos] ([Id], [Nombre], [Descripcion], [TotalLinea], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (36, N'BBVA', N'BBVA', CAST(0.00 AS Decimal(18, 2)), 1, N'macedonio.martinez', CAST(N'2022-02-18T14:37:51.270' AS DateTime), CAST(N'2023-02-23T08:19:25.020' AS DateTime), NULL)
INSERT [dbo].[cat_Bancos] ([Id], [Nombre], [Descripcion], [TotalLinea], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (37, N'China Construction', N'Banco Corresponsal', CAST(0.00 AS Decimal(18, 2)), 1, N'macedonio.martinez', CAST(N'2022-02-24T12:57:21.393' AS DateTime), CAST(N'2023-02-23T08:19:23.690' AS DateTime), NULL)
INSERT [dbo].[cat_Bancos] ([Id], [Nombre], [Descripcion], [TotalLinea], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (38, N'Banca Popular Emiliaa', N'Banca Popular Dell Emilia Romagna Scarl', CAST(0.00 AS Decimal(18, 2)), 1, N'ada.carrillo', CAST(N'2022-08-22T12:09:13.810' AS DateTime), CAST(N'2023-02-22T15:58:15.187' AS DateTime), NULL)
INSERT [dbo].[cat_Bancos] ([Id], [Nombre], [Descripcion], [TotalLinea], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (39, N'Caixabank, S.A.', N'Caixabank, S.A.', CAST(0.00 AS Decimal(18, 2)), 1, N'macedonio.martinez', CAST(N'2022-08-29T10:03:37.917' AS DateTime), CAST(N'2023-02-22T15:58:18.000' AS DateTime), NULL)
INSERT [dbo].[cat_Bancos] ([Id], [Nombre], [Descripcion], [TotalLinea], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (40, N'Banca Nazionale', N'Banca Nazionale del Lavoro SPA', CAST(434434.00 AS Decimal(18, 2)), 1, N'ada.carrillo', CAST(N'2022-09-02T12:42:24.680' AS DateTime), CAST(N'2023-05-16T16:01:53.543' AS DateTime), NULL)
INSERT [dbo].[cat_Bancos] ([Id], [Nombre], [Descripcion], [TotalLinea], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (41, N'Prueba Banco Dev asdfasdfasd', N'Test', CAST(656460.00 AS Decimal(18, 2)), 0, N'12cb7342-837e-45d9-892c-6818a38a3816', CAST(N'2023-02-21T11:27:51.397' AS DateTime), CAST(N'2023-05-10T15:13:40.020' AS DateTime), NULL)
INSERT [dbo].[cat_Bancos] ([Id], [Nombre], [Descripcion], [TotalLinea], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (42, N'Prueba Banco 2023 02 23', N'testadsfads', CAST(4680000.00 AS Decimal(18, 2)), 0, N'12cb7342-837e-45d9-892c-6818a38a3816', CAST(N'2023-02-23T08:31:09.920' AS DateTime), CAST(N'2023-05-10T15:13:39.433' AS DateTime), NULL)
INSERT [dbo].[cat_Bancos] ([Id], [Nombre], [Descripcion], [TotalLinea], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (43, N'Prueba Dev Banco 2023 02 23 02 test', N'test', CAST(8721213243324.00 AS Decimal(18, 2)), 0, N'12cb7342-837e-45d9-892c-6818a38a3816', CAST(N'2023-02-23T08:31:46.863' AS DateTime), CAST(N'2023-04-18T09:33:31.507' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[cat_Bancos] OFF
GO
SET IDENTITY_INSERT [dbo].[cat_Comisiones] ON 

INSERT [dbo].[cat_Comisiones] ([Id], [BancoId], [TipoComisionId], [Nombre], [Descripcion], [Costo], [SwiftApertura], [SwiftOtro], [PorcentajeIVA], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (72, 40, 3, N'Prueba comisión updat', N'pruebaupdate', CAST(350000.00 AS Decimal(18, 2)), N'Test Dev Prueba', N'Dev Test Prueba', CAST(3.00 AS Decimal(18, 2)), 0, N'12cb7342-837e-45d9-892c-6818a38a3816', CAST(N'2023-02-14T15:05:19.630' AS DateTime), CAST(N'2023-02-14T16:42:36.133' AS DateTime), NULL)
INSERT [dbo].[cat_Comisiones] ([Id], [BancoId], [TipoComisionId], [Nombre], [Descripcion], [Costo], [SwiftApertura], [SwiftOtro], [PorcentajeIVA], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (73, 36, 9, N'Comisión Prueba', N'dafa', CAST(35435.00 AS Decimal(18, 2)), N'test', N'dev', CAST(8.00 AS Decimal(18, 2)), 1, N'12cb7342-837e-45d9-892c-6818a38a3816', CAST(N'2023-02-14T15:09:43.103' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Comisiones] ([Id], [BancoId], [TipoComisionId], [Nombre], [Descripcion], [Costo], [SwiftApertura], [SwiftOtro], [PorcentajeIVA], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (74, 37, 2, N'Prueba', N'sdasdfasdfa', CAST(45454.00 AS Decimal(18, 2)), N'asdfasd', N'fasdfa', CAST(5.00 AS Decimal(18, 2)), 1, N'12cb7342-837e-45d9-892c-6818a38a3816', CAST(N'2023-02-14T16:35:29.110' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Comisiones] ([Id], [BancoId], [TipoComisionId], [Nombre], [Descripcion], [Costo], [SwiftApertura], [SwiftOtro], [PorcentajeIVA], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (75, 40, 2, N'Comisión Prueba 2', N'asdfasdfa', CAST(879865465.00 AS Decimal(18, 2)), N'sadfasdfa', N'sdfasdfasd', CAST(3.00 AS Decimal(18, 2)), 1, N'12cb7342-837e-45d9-892c-6818a38a3816', CAST(N'2023-02-14T16:42:59.490' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Comisiones] ([Id], [BancoId], [TipoComisionId], [Nombre], [Descripcion], [Costo], [SwiftApertura], [SwiftOtro], [PorcentajeIVA], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (76, 40, 5, N'Prueba 3', N'', CAST(452343.00 AS Decimal(18, 2)), N'', N'', CAST(0.00 AS Decimal(18, 2)), 1, N'12cb7342-837e-45d9-892c-6818a38a3816', CAST(N'2023-02-14T16:43:32.897' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Comisiones] ([Id], [BancoId], [TipoComisionId], [Nombre], [Descripcion], [Costo], [SwiftApertura], [SwiftOtro], [PorcentajeIVA], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (146, 14, 3, N'COM. BANCO CORRESPONSAL', NULL, CAST(0.00 AS Decimal(18, 2)), N'0.0000', N'0.0000', NULL, 1, N'i:0#.w|gis\velia.gonzalez', CAST(N'2014-07-02T16:37:55.263' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Comisiones] ([Id], [BancoId], [TipoComisionId], [Nombre], [Descripcion], [Costo], [SwiftApertura], [SwiftOtro], [PorcentajeIVA], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (147, 14, 5, N'COM. POR MODIFICACION', NULL, CAST(100.00 AS Decimal(18, 2)), N'0.0000', N'40.0000', NULL, 1, N'i:0#.w|gis\velia.gonzalez', CAST(N'2014-07-02T16:38:14.027' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Comisiones] ([Id], [BancoId], [TipoComisionId], [Nombre], [Descripcion], [Costo], [SwiftApertura], [SwiftOtro], [PorcentajeIVA], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (148, 14, 2, N'COMISION POR DISPOSICION/NEGOC', NULL, CAST(0.00 AS Decimal(18, 2)), N'0.0000', N'0.0000', NULL, 1, N'i:0#.w|gis\velia.gonzalez', CAST(N'2014-07-02T17:18:28.650' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Comisiones] ([Id], [BancoId], [TipoComisionId], [Nombre], [Descripcion], [Costo], [SwiftApertura], [SwiftOtro], [PorcentajeIVA], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (149, 14, 4, N'COM. POR PAGO DIFERIDO', NULL, CAST(0.00 AS Decimal(18, 2)), N'0.0000', N'0.0000', NULL, 1, N'i:0#.w|gis\velia.gonzalez', CAST(N'2014-07-02T17:18:34.867' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Comisiones] ([Id], [BancoId], [TipoComisionId], [Nombre], [Descripcion], [Costo], [SwiftApertura], [SwiftOtro], [PorcentajeIVA], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (150, 14, 6, N'COMISION POR CANCELACION', NULL, CAST(100.00 AS Decimal(18, 2)), N'40.0000', N'0.0000', NULL, 1, N'i:0#.w|gis\velia.gonzalez', CAST(N'2014-07-02T17:18:42.243' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Comisiones] ([Id], [BancoId], [TipoComisionId], [Nombre], [Descripcion], [Costo], [SwiftApertura], [SwiftOtro], [PorcentajeIVA], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (151, 14, 7, N'COMISION DE ACEPTACION', NULL, CAST(0.00 AS Decimal(18, 2)), N'50.0000', N'0.0000', NULL, 1, N'i:0#.w|gis\macedonio.martinez', CAST(N'2014-07-02T17:18:50.670' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Comisiones] ([Id], [BancoId], [TipoComisionId], [Nombre], [Descripcion], [Costo], [SwiftApertura], [SwiftOtro], [PorcentajeIVA], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (152, 9, 1, N'COMISION POR APERTURA', NULL, CAST(0.00 AS Decimal(18, 2)), N'65.0000', N'0.0000', NULL, 1, N'i:0#.w|gis\velia.gonzalez', CAST(N'2014-07-02T17:22:03.867' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Comisiones] ([Id], [BancoId], [TipoComisionId], [Nombre], [Descripcion], [Costo], [SwiftApertura], [SwiftOtro], [PorcentajeIVA], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (153, 9, 4, N'COM. POR PAGO DIFERIDO', NULL, CAST(0.00 AS Decimal(18, 2)), N'0.0000', N'0.0000', NULL, 1, N'i:0#.w|gis\velia.gonzalez', CAST(N'2014-07-02T17:22:25.907' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Comisiones] ([Id], [BancoId], [TipoComisionId], [Nombre], [Descripcion], [Costo], [SwiftApertura], [SwiftOtro], [PorcentajeIVA], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (154, 9, 5, N'COM. POR MODIFICACION', NULL, CAST(0.00 AS Decimal(18, 2)), N'0.0000', N'65.0000', NULL, 1, N'i:0#.w|gis\velia.gonzalez', CAST(N'2014-07-02T17:22:32.267' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Comisiones] ([Id], [BancoId], [TipoComisionId], [Nombre], [Descripcion], [Costo], [SwiftApertura], [SwiftOtro], [PorcentajeIVA], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (155, 9, 7, N'COMISION DE ACEPTACION', NULL, CAST(0.00 AS Decimal(18, 2)), N'0.0000', N'0.0000', NULL, 1, N'i:0#.w|gis\velia.gonzalez', CAST(N'2014-07-02T17:22:56.690' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Comisiones] ([Id], [BancoId], [TipoComisionId], [Nombre], [Descripcion], [Costo], [SwiftApertura], [SwiftOtro], [PorcentajeIVA], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (156, 21, 4, N'COM. POR PAGO DIFERIDO', NULL, CAST(0.00 AS Decimal(18, 2)), N'0.0000', N'50.0000', NULL, 1, N'i:0#.w|gis\ada.carrillo', CAST(N'2014-07-07T13:09:05.490' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Comisiones] ([Id], [BancoId], [TipoComisionId], [Nombre], [Descripcion], [Costo], [SwiftApertura], [SwiftOtro], [PorcentajeIVA], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (157, 21, 6, N'COMISION POR CANCELACION', NULL, CAST(50.00 AS Decimal(18, 2)), N'0.0000', N'50.0000', NULL, 1, N'i:0#.w|gis\velia.gonzalez', CAST(N'2014-07-07T13:09:16.137' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Comisiones] ([Id], [BancoId], [TipoComisionId], [Nombre], [Descripcion], [Costo], [SwiftApertura], [SwiftOtro], [PorcentajeIVA], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (158, 21, 8, N'COM. BANCO CORRESPONSAL POR ENMIENDA', NULL, CAST(0.00 AS Decimal(18, 2)), N'0.0000', N'0.0000', NULL, 0, N'i:0#.w|gis\velia.gonzalez', CAST(N'2014-07-07T13:09:28.340' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Comisiones] ([Id], [BancoId], [TipoComisionId], [Nombre], [Descripcion], [Costo], [SwiftApertura], [SwiftOtro], [PorcentajeIVA], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (159, 20, 3, N'COM. BANCO CORRESPONSAL', NULL, CAST(0.00 AS Decimal(18, 2)), N'0.0000', N'0.0000', NULL, 1, N'i:0#.w|gis\velia.gonzalez', CAST(N'2014-08-18T17:09:56.243' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Comisiones] ([Id], [BancoId], [TipoComisionId], [Nombre], [Descripcion], [Costo], [SwiftApertura], [SwiftOtro], [PorcentajeIVA], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (160, 20, 7, N'COMISION DE ACEPTACION', NULL, CAST(4.00 AS Decimal(18, 2)), N'0.0000', N'30.0000', NULL, 1, N'i:0#.w|gis\velia.gonzalez', CAST(N'2014-08-18T17:10:52.983' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Comisiones] ([Id], [BancoId], [TipoComisionId], [Nombre], [Descripcion], [Costo], [SwiftApertura], [SwiftOtro], [PorcentajeIVA], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (161, 2, 5, N'COM. POR MODIFICACION', NULL, CAST(125.00 AS Decimal(18, 2)), N'0.0000', N'50.0000', NULL, 1, N'i:0#.w|gis\velia.gonzalez', CAST(N'2014-08-18T17:11:57.117' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Comisiones] ([Id], [BancoId], [TipoComisionId], [Nombre], [Descripcion], [Costo], [SwiftApertura], [SwiftOtro], [PorcentajeIVA], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (162, 2, 7, N'COMISION DE ACEPTACION', NULL, CAST(2.00 AS Decimal(18, 2)), N'0.0000', N'50.0000', NULL, 1, N'i:0#.w|gis\velia.gonzalez', CAST(N'2014-08-18T17:12:27.367' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Comisiones] ([Id], [BancoId], [TipoComisionId], [Nombre], [Descripcion], [Costo], [SwiftApertura], [SwiftOtro], [PorcentajeIVA], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (163, 19, 4, N'COM. POR PAGO DIFERIDO', NULL, CAST(0.00 AS Decimal(18, 2)), N'0.0000', N'0.0000', NULL, 1, N'i:0#.w|gis\velia.gonzalez', CAST(N'2014-08-19T17:18:31.100' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Comisiones] ([Id], [BancoId], [TipoComisionId], [Nombre], [Descripcion], [Costo], [SwiftApertura], [SwiftOtro], [PorcentajeIVA], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (164, 19, 5, N'COM. POR MODIFICACION', NULL, CAST(0.00 AS Decimal(18, 2)), N'0.0000', N'0.0000', NULL, 1, N'i:0#.w|gis\velia.gonzalez', CAST(N'2014-08-19T17:18:41.000' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Comisiones] ([Id], [BancoId], [TipoComisionId], [Nombre], [Descripcion], [Costo], [SwiftApertura], [SwiftOtro], [PorcentajeIVA], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (165, 19, 7, N'COMISION DE ACEPTACION', NULL, CAST(0.00 AS Decimal(18, 2)), N'0.0000', N'0.0000', NULL, 1, N'i:0#.w|gis\velia.gonzalez', CAST(N'2014-08-19T17:18:49.283' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Comisiones] ([Id], [BancoId], [TipoComisionId], [Nombre], [Descripcion], [Costo], [SwiftApertura], [SwiftOtro], [PorcentajeIVA], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (166, 3, 1, N'COMISION POR APERTURA', NULL, CAST(0.00 AS Decimal(18, 2)), N'5.0000', N'0.0000', NULL, 1, N'i:0#.w|gis\velia.gonzalez', CAST(N'2014-08-28T12:29:59.000' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Comisiones] ([Id], [BancoId], [TipoComisionId], [Nombre], [Descripcion], [Costo], [SwiftApertura], [SwiftOtro], [PorcentajeIVA], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (167, 26, 7, N'COMISION DE ACEPTACION', NULL, CAST(1.30 AS Decimal(18, 2)), N'0.0000', N'0.0000', NULL, 1, N'i:0#.w|gis\ada.carrillo', CAST(N'2014-09-05T10:07:43.393' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Comisiones] ([Id], [BancoId], [TipoComisionId], [Nombre], [Descripcion], [Costo], [SwiftApertura], [SwiftOtro], [PorcentajeIVA], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (168, 3, 5, N'COM. POR MODIFICACION', NULL, CAST(60.00 AS Decimal(18, 2)), N'0.0000', N'0.0000', NULL, 1, N'i:0#.w|gis\velia.gonzalez', CAST(N'2014-09-18T12:24:06.510' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Comisiones] ([Id], [BancoId], [TipoComisionId], [Nombre], [Descripcion], [Costo], [SwiftApertura], [SwiftOtro], [PorcentajeIVA], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (169, 26, 3, N'COM. BANCO CORRESPONSAL', NULL, CAST(0.00 AS Decimal(18, 2)), N'0.0000', N'0.0000', NULL, 1, N'i:0#.w|gis\ada.carrillo', CAST(N'2015-02-04T13:53:08.930' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Comisiones] ([Id], [BancoId], [TipoComisionId], [Nombre], [Descripcion], [Costo], [SwiftApertura], [SwiftOtro], [PorcentajeIVA], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (170, 2, 3, N'COM. BANCO CORRESPONSAL', NULL, CAST(100.00 AS Decimal(18, 2)), N'0.0000', N'0.0000', NULL, 1, N'i:0#.w|gis\velia.gonzalez', CAST(N'2015-08-04T12:36:29.023' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Comisiones] ([Id], [BancoId], [TipoComisionId], [Nombre], [Descripcion], [Costo], [SwiftApertura], [SwiftOtro], [PorcentajeIVA], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (171, 27, 1, N'COMISION POR APERTURA', NULL, CAST(0.00 AS Decimal(18, 2)), N'0.0000', N'0.0000', NULL, 1, N'i:0#.w|gis\ada.carrillo', CAST(N'2015-09-22T11:12:45.080' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Comisiones] ([Id], [BancoId], [TipoComisionId], [Nombre], [Descripcion], [Costo], [SwiftApertura], [SwiftOtro], [PorcentajeIVA], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (172, 14, 10, N'COM. BANCO CORRESPONSAL POR APERTURA', NULL, CAST(0.00 AS Decimal(18, 2)), N'0.0000', N'0.0000', NULL, 1, N'i:0#.w|gis\ada.carrillo', CAST(N'2015-10-05T10:37:54.520' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Comisiones] ([Id], [BancoId], [TipoComisionId], [Nombre], [Descripcion], [Costo], [SwiftApertura], [SwiftOtro], [PorcentajeIVA], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (173, 21, 10, N'COM. BANCO CORRESPONSAL POR APERTURA', NULL, CAST(0.00 AS Decimal(18, 2)), N'70.0000', N'0.0000', NULL, 1, N'i:0#.w|gis\ada.carrillo', CAST(N'2015-11-27T10:24:19.383' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Comisiones] ([Id], [BancoId], [TipoComisionId], [Nombre], [Descripcion], [Costo], [SwiftApertura], [SwiftOtro], [PorcentajeIVA], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (174, 21, 8, N'COM. BANCO CORRESPONSAL POR ENMIENDA', NULL, CAST(0.00 AS Decimal(18, 2)), N'0.0000', N'0.0000', NULL, 1, N'i:0#.w|gis\denis.leon', CAST(N'2015-11-27T10:24:30.830' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Comisiones] ([Id], [BancoId], [TipoComisionId], [Nombre], [Descripcion], [Costo], [SwiftApertura], [SwiftOtro], [PorcentajeIVA], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (175, 26, 10, N'COM. BANCO CORRESPONSAL POR APERTURA', NULL, CAST(0.00 AS Decimal(18, 2)), N'0.0000', N'0.0000', NULL, 1, N'i:0#.w|gis\ada.carrillo', CAST(N'2016-10-04T18:24:26.237' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Comisiones] ([Id], [BancoId], [TipoComisionId], [Nombre], [Descripcion], [Costo], [SwiftApertura], [SwiftOtro], [PorcentajeIVA], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (176, 26, 11, N'COM. BANCO CORRESPONSAL POR MODIFICACION', NULL, CAST(0.00 AS Decimal(18, 2)), N'0.0000', N'0.0000', NULL, 1, N'i:0#.w|gis\ada.carrillo', CAST(N'2016-10-04T18:24:32.613' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Comisiones] ([Id], [BancoId], [TipoComisionId], [Nombre], [Descripcion], [Costo], [SwiftApertura], [SwiftOtro], [PorcentajeIVA], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (177, 9, 10, N'COM. BANCO CORRESPONSAL POR APERTURA', NULL, CAST(0.00 AS Decimal(18, 2)), N'0.0000', N'0.0000', NULL, 1, N'i:0#.w|gis\ada.carrillo', CAST(N'2016-11-11T14:39:27.647' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Comisiones] ([Id], [BancoId], [TipoComisionId], [Nombre], [Descripcion], [Costo], [SwiftApertura], [SwiftOtro], [PorcentajeIVA], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (178, 32, 1, N'COMISION POR APERTURA', NULL, CAST(0.00 AS Decimal(18, 2)), N'0.0000', N'0.0000', NULL, 1, N'i:0#.w|gis\macedonio.martinez', CAST(N'2017-01-16T16:49:03.360' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Comisiones] ([Id], [BancoId], [TipoComisionId], [Nombre], [Descripcion], [Costo], [SwiftApertura], [SwiftOtro], [PorcentajeIVA], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (179, 32, 7, N'COMISION DE ACEPTACION', NULL, CAST(0.00 AS Decimal(18, 2)), N'0.0000', N'0.0000', NULL, 1, N'i:0#.w|gis\macedonio.martinez', CAST(N'2017-01-16T16:49:14.520' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Comisiones] ([Id], [BancoId], [TipoComisionId], [Nombre], [Descripcion], [Costo], [SwiftApertura], [SwiftOtro], [PorcentajeIVA], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (180, 3, 10, N'COM. BANCO CORRESPONSAL POR APERTURA', NULL, CAST(0.00 AS Decimal(18, 2)), N'0.0000', N'0.0000', NULL, 1, N'i:0#.w|gis\macedonio.martinez', CAST(N'2017-03-07T18:48:19.737' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Comisiones] ([Id], [BancoId], [TipoComisionId], [Nombre], [Descripcion], [Costo], [SwiftApertura], [SwiftOtro], [PorcentajeIVA], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (181, 9, 8, N'COM. BANCO CORRESPONSAL POR ENMIENDA', NULL, CAST(0.00 AS Decimal(18, 2)), N'0.0000', N'0.0000', NULL, 1, N'i:0#.w|gis\ada.carrillo', CAST(N'2017-04-18T16:05:05.127' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Comisiones] ([Id], [BancoId], [TipoComisionId], [Nombre], [Descripcion], [Costo], [SwiftApertura], [SwiftOtro], [PorcentajeIVA], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (182, 32, 10, N'COM. BANCO CORRESPONSAL POR APERTURA', NULL, CAST(0.00 AS Decimal(18, 2)), N'0.0000', N'0.0000', NULL, 1, N'i:0#.w|gis\macedonio.martinez', CAST(N'2017-07-10T18:07:38.800' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Comisiones] ([Id], [BancoId], [TipoComisionId], [Nombre], [Descripcion], [Costo], [SwiftApertura], [SwiftOtro], [PorcentajeIVA], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (183, 14, 12, N'COM. BANCO CORRESPONSAL CONFIRMACION', NULL, CAST(0.00 AS Decimal(18, 2)), N'0.0000', N'0.0000', NULL, 1, N'i:0#.w|gis\macedonio.martinez', CAST(N'2017-11-16T16:56:06.140' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Comisiones] ([Id], [BancoId], [TipoComisionId], [Nombre], [Descripcion], [Costo], [SwiftApertura], [SwiftOtro], [PorcentajeIVA], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (184, 14, 1, N'COMISION POR APERTURA', NULL, CAST(0.00 AS Decimal(18, 2)), N'50.0000', N'0.0000', NULL, 1, N'i:0#.w|gis\ada.carrillo', CAST(N'2014-07-02T17:20:00.840' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Comisiones] ([Id], [BancoId], [TipoComisionId], [Nombre], [Descripcion], [Costo], [SwiftApertura], [SwiftOtro], [PorcentajeIVA], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (185, 9, 2, N'COMISION POR DISPOSICION/NEGOC', NULL, CAST(0.00 AS Decimal(18, 2)), N'0.0000', N'0.0000', NULL, 1, N'i:0#.w|gis\velia.gonzalez', CAST(N'2014-07-02T17:22:10.547' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Comisiones] ([Id], [BancoId], [TipoComisionId], [Nombre], [Descripcion], [Costo], [SwiftApertura], [SwiftOtro], [PorcentajeIVA], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (186, 9, 3, N'COM. BANCO CORRESPONSAL', NULL, CAST(0.00 AS Decimal(18, 2)), N'0.0000', N'0.0000', NULL, 1, N'i:0#.w|gis\velia.gonzalez', CAST(N'2014-07-02T17:22:16.890' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Comisiones] ([Id], [BancoId], [TipoComisionId], [Nombre], [Descripcion], [Costo], [SwiftApertura], [SwiftOtro], [PorcentajeIVA], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (187, 9, 6, N'COMISION POR CANCELACION', NULL, CAST(0.00 AS Decimal(18, 2)), N'0.0000', N'0.0000', NULL, 1, N'i:0#.w|gis\velia.gonzalez', CAST(N'2014-07-02T17:22:39.427' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Comisiones] ([Id], [BancoId], [TipoComisionId], [Nombre], [Descripcion], [Costo], [SwiftApertura], [SwiftOtro], [PorcentajeIVA], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (188, 21, 2, N'COMISION POR DISPOSICION/NEGOC', NULL, CAST(0.00 AS Decimal(18, 2)), N'0.0000', N'0.0000', NULL, 1, N'i:0#.w|gis\velia.gonzalez', CAST(N'2014-07-07T13:08:53.680' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Comisiones] ([Id], [BancoId], [TipoComisionId], [Nombre], [Descripcion], [Costo], [SwiftApertura], [SwiftOtro], [PorcentajeIVA], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (189, 21, 5, N'COM. POR MODIFICACION', NULL, CAST(0.00 AS Decimal(18, 2)), N'0.0000', N'50.0000', NULL, 1, N'i:0#.w|gis\ada.carrillo', CAST(N'2014-07-07T13:09:10.940' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Comisiones] ([Id], [BancoId], [TipoComisionId], [Nombre], [Descripcion], [Costo], [SwiftApertura], [SwiftOtro], [PorcentajeIVA], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (190, 21, 7, N'COMISION DE ACEPTACION', NULL, CAST(0.00 AS Decimal(18, 2)), N'0.0000', N'50.0000', NULL, 1, N'i:0#.w|gis\ada.carrillo', CAST(N'2014-07-07T13:09:22.523' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Comisiones] ([Id], [BancoId], [TipoComisionId], [Nombre], [Descripcion], [Costo], [SwiftApertura], [SwiftOtro], [PorcentajeIVA], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (191, 20, 2, N'COMISION POR DISPOSICION/NEGOC', NULL, CAST(0.00 AS Decimal(18, 2)), N'0.0000', N'0.0000', NULL, 1, N'i:0#.w|gis\velia.gonzalez', CAST(N'2014-08-18T17:10:03.067' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Comisiones] ([Id], [BancoId], [TipoComisionId], [Nombre], [Descripcion], [Costo], [SwiftApertura], [SwiftOtro], [PorcentajeIVA], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (192, 20, 4, N'COM. POR PAGO DIFERIDO', NULL, CAST(0.00 AS Decimal(18, 2)), N'0.0000', N'50.0000', NULL, 1, N'i:0#.w|gis\velia.gonzalez', CAST(N'2014-08-18T17:10:26.780' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Comisiones] ([Id], [BancoId], [TipoComisionId], [Nombre], [Descripcion], [Costo], [SwiftApertura], [SwiftOtro], [PorcentajeIVA], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (193, 20, 6, N'COMISION POR CANCELACION', NULL, CAST(75.00 AS Decimal(18, 2)), N'0.0000', N'30.0000', NULL, 1, N'i:0#.w|gis\velia.gonzalez', CAST(N'2014-08-18T17:11:03.970' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Comisiones] ([Id], [BancoId], [TipoComisionId], [Nombre], [Descripcion], [Costo], [SwiftApertura], [SwiftOtro], [PorcentajeIVA], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (194, 2, 2, N'COMISION POR DISPOSICION/NEGOC', NULL, CAST(0.00 AS Decimal(18, 2)), N'0.0000', N'50.0000', NULL, 1, N'i:0#.w|gis\velia.gonzalez', CAST(N'2014-08-18T17:12:17.380' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Comisiones] ([Id], [BancoId], [TipoComisionId], [Nombre], [Descripcion], [Costo], [SwiftApertura], [SwiftOtro], [PorcentajeIVA], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (195, 2, 6, N'COMISION POR CANCELACION', NULL, CAST(120.00 AS Decimal(18, 2)), N'0.0000', N'50.0000', NULL, 1, N'i:0#.w|gis\velia.gonzalez', CAST(N'2014-08-18T17:12:38.057' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Comisiones] ([Id], [BancoId], [TipoComisionId], [Nombre], [Descripcion], [Costo], [SwiftApertura], [SwiftOtro], [PorcentajeIVA], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (196, 19, 2, N'COMISION POR DISPOSICION/NEGOC', NULL, CAST(0.00 AS Decimal(18, 2)), N'0.0000', N'0.0000', NULL, 1, N'i:0#.w|gis\velia.gonzalez', CAST(N'2014-08-19T17:18:24.703' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Comisiones] ([Id], [BancoId], [TipoComisionId], [Nombre], [Descripcion], [Costo], [SwiftApertura], [SwiftOtro], [PorcentajeIVA], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (197, 19, 3, N'COM. BANCO CORRESPONSAL', NULL, CAST(0.00 AS Decimal(18, 2)), N'0.0000', N'0.0000', NULL, 1, N'i:0#.w|gis\velia.gonzalez', CAST(N'2014-08-19T17:18:35.940' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Comisiones] ([Id], [BancoId], [TipoComisionId], [Nombre], [Descripcion], [Costo], [SwiftApertura], [SwiftOtro], [PorcentajeIVA], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (198, 19, 8, N'COM. BANCO CORRESPONSAL POR ENMIENDA', NULL, CAST(0.00 AS Decimal(18, 2)), N'0.0000', N'0.0000', NULL, 1, N'i:0#.w|gis\velia.gonzalez', CAST(N'2014-08-19T17:18:53.673' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Comisiones] ([Id], [BancoId], [TipoComisionId], [Nombre], [Descripcion], [Costo], [SwiftApertura], [SwiftOtro], [PorcentajeIVA], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (199, 26, 2, N'COMISION POR DISPOSICION/NEGOC', NULL, CAST(0.00 AS Decimal(18, 2)), N'0.0000', N'0.0000', NULL, 1, N'i:0#.w|gis\ada.carrillo', CAST(N'2014-09-05T10:07:02.360' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Comisiones] ([Id], [BancoId], [TipoComisionId], [Nombre], [Descripcion], [Costo], [SwiftApertura], [SwiftOtro], [PorcentajeIVA], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (200, 3, 7, N'COMISION DE ACEPTACION', NULL, CAST(0.00 AS Decimal(18, 2)), N'0.0000', N'0.0000', NULL, 1, N'i:0#.w|gis\velia.gonzalez', CAST(N'2014-11-07T14:26:23.970' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Comisiones] ([Id], [BancoId], [TipoComisionId], [Nombre], [Descripcion], [Costo], [SwiftApertura], [SwiftOtro], [PorcentajeIVA], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (201, 14, 9, N'COM. DE CONFIRMACION', NULL, CAST(0.00 AS Decimal(18, 2)), N'0.0000', N'0.0000', NULL, 1, N'i:0#.w|gis\velia.gonzalez', CAST(N'2015-06-02T11:38:30.227' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Comisiones] ([Id], [BancoId], [TipoComisionId], [Nombre], [Descripcion], [Costo], [SwiftApertura], [SwiftOtro], [PorcentajeIVA], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (202, 27, 9, N'COM. DE CONFIRMACION', NULL, CAST(0.00 AS Decimal(18, 2)), N'0.0000', N'0.0000', NULL, 1, N'i:0#.w|gis\ada.carrillo', CAST(N'2015-09-22T11:15:49.813' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Comisiones] ([Id], [BancoId], [TipoComisionId], [Nombre], [Descripcion], [Costo], [SwiftApertura], [SwiftOtro], [PorcentajeIVA], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (203, 21, 1, N'COMISION POR APERTURA', NULL, CAST(0.00 AS Decimal(18, 2)), N'50.0000', N'0.0000', NULL, 1, N'i:0#.w|gis\ada.carrillo', CAST(N'2014-07-07T13:08:48.193' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Comisiones] ([Id], [BancoId], [TipoComisionId], [Nombre], [Descripcion], [Costo], [SwiftApertura], [SwiftOtro], [PorcentajeIVA], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (204, 21, 3, N'COM. BANCO CORRESPONSAL', NULL, CAST(0.00 AS Decimal(18, 2)), N'0.0000', N'0.0000', NULL, 1, N'i:0#.w|gis\ada.carrillo', CAST(N'2014-07-07T13:08:58.477' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Comisiones] ([Id], [BancoId], [TipoComisionId], [Nombre], [Descripcion], [Costo], [SwiftApertura], [SwiftOtro], [PorcentajeIVA], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (205, 20, 1, N'COMISION POR APERTURA', NULL, CAST(0.00 AS Decimal(18, 2)), N'80.0000', N'0.0000', NULL, 1, N'i:0#.w|gis\velia.gonzalez', CAST(N'2014-08-18T17:09:39.420' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Comisiones] ([Id], [BancoId], [TipoComisionId], [Nombre], [Descripcion], [Costo], [SwiftApertura], [SwiftOtro], [PorcentajeIVA], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (206, 2, 1, N'COMISION POR APERTURA', NULL, CAST(0.00 AS Decimal(18, 2)), N'50.0000', N'0.0000', NULL, 1, N'i:0#.w|gis\ada.carrillo', CAST(N'2014-08-18T17:11:42.100' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Comisiones] ([Id], [BancoId], [TipoComisionId], [Nombre], [Descripcion], [Costo], [SwiftApertura], [SwiftOtro], [PorcentajeIVA], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (207, 19, 1, N'COMISION POR APERTURA', NULL, CAST(0.00 AS Decimal(18, 2)), N'0.0000', N'0.0000', NULL, 1, N'i:0#.w|gis\velia.gonzalez', CAST(N'2014-08-19T17:18:18.457' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Comisiones] ([Id], [BancoId], [TipoComisionId], [Nombre], [Descripcion], [Costo], [SwiftApertura], [SwiftOtro], [PorcentajeIVA], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (208, 19, 6, N'COMISION POR CANCELACION', NULL, CAST(0.00 AS Decimal(18, 2)), N'0.0000', N'0.0000', NULL, 1, N'i:0#.w|gis\velia.gonzalez', CAST(N'2014-08-19T17:18:45.063' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Comisiones] ([Id], [BancoId], [TipoComisionId], [Nombre], [Descripcion], [Costo], [SwiftApertura], [SwiftOtro], [PorcentajeIVA], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (209, 26, 1, N'COMISION POR APERTURA', NULL, CAST(0.00 AS Decimal(18, 2)), N'60.0000', N'0.0000', NULL, 1, N'i:0#.w|gis\ada.carrillo', CAST(N'2014-09-05T10:06:07.953' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Comisiones] ([Id], [BancoId], [TipoComisionId], [Nombre], [Descripcion], [Costo], [SwiftApertura], [SwiftOtro], [PorcentajeIVA], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (210, 26, 5, N'COM. POR MODIFICACION', NULL, CAST(100.00 AS Decimal(18, 2)), N'40.0000', N'0.0000', NULL, 1, N'i:0#.w|gis\ada.carrillo', CAST(N'2014-09-05T12:46:20.237' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Comisiones] ([Id], [BancoId], [TipoComisionId], [Nombre], [Descripcion], [Costo], [SwiftApertura], [SwiftOtro], [PorcentajeIVA], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (211, 3, 3, N'COM. BANCO CORRESPONSAL', NULL, CAST(100.00 AS Decimal(18, 2)), N'0.0000', N'0.0000', NULL, 1, N'i:0#.w|gis\velia.gonzalez', CAST(N'2015-02-24T18:13:25.000' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Comisiones] ([Id], [BancoId], [TipoComisionId], [Nombre], [Descripcion], [Costo], [SwiftApertura], [SwiftOtro], [PorcentajeIVA], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (212, 19, 9, N'COM. DE CONFIRMACION', NULL, CAST(0.00 AS Decimal(18, 2)), N'0.0000', N'0.0000', NULL, 1, N'i:0#.w|gis\ada.carrillo', CAST(N'2015-06-02T11:41:13.277' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Comisiones] ([Id], [BancoId], [TipoComisionId], [Nombre], [Descripcion], [Costo], [SwiftApertura], [SwiftOtro], [PorcentajeIVA], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (213, 3, 8, N'COM. BANCO CORRESPONSAL POR ENMIENDA', NULL, CAST(0.00 AS Decimal(18, 2)), N'0.0000', N'0.0000', NULL, 1, N'i:0#.w|gis\denis.leon', CAST(N'2015-11-27T10:29:51.100' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Comisiones] ([Id], [BancoId], [TipoComisionId], [Nombre], [Descripcion], [Costo], [SwiftApertura], [SwiftOtro], [PorcentajeIVA], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (214, 14, 8, N'COM. BANCO CORRESPONSAL POR ENMIENDA', NULL, CAST(0.00 AS Decimal(18, 2)), N'0.0000', N'0.0000', NULL, 1, N'i:0#.w|gis\ada.carrillo', CAST(N'2017-02-27T10:40:38.660' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Comisiones] ([Id], [BancoId], [TipoComisionId], [Nombre], [Descripcion], [Costo], [SwiftApertura], [SwiftOtro], [PorcentajeIVA], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (215, 37, 12, N'CN BANCO CORRESPONSAL CONFIRMACIÓN', N'', CAST(450.00 AS Decimal(18, 2)), N'', N'', CAST(0.00 AS Decimal(18, 2)), 1, N'12cb7342-837e-45d9-892c-6818a38a3816', CAST(N'2023-05-16T16:01:43.730' AS DateTime), NULL, NULL)
SET IDENTITY_INSERT [dbo].[cat_Comisiones] OFF
GO
SET IDENTITY_INSERT [dbo].[cat_Compradores] ON 

INSERT [dbo].[cat_Compradores] ([Id], [EmpresaId], [TipoPersonaFiscalId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (1, 2, 1, N'  ', NULL, 0, N'macedonio.martinez', CAST(N'2014-06-17T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Compradores] ([Id], [EmpresaId], [TipoPersonaFiscalId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (2, 1, 1, N'Antonio                   Herrera                   Acevedo                  ', NULL, 1, N'ada.carrillo', CAST(N'2014-06-17T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Compradores] ([Id], [EmpresaId], [TipoPersonaFiscalId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (3, 4, 1, N'EIKA YAZMIN               MOLINA                    ', NULL, 0, N'ada.carrillo', CAST(N'2014-06-17T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Compradores] ([Id], [EmpresaId], [TipoPersonaFiscalId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (4, 1, 1, N'Oscar                     Ocaña                     Guevara                  ', NULL, 0, N'ada.carrillo', CAST(N'2014-06-17T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Compradores] ([Id], [EmpresaId], [TipoPersonaFiscalId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (5, 2, 1, N'Gerardo                   Segovia                   ', NULL, 0, N'macedonio.martinez', CAST(N'2014-06-17T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Compradores] ([Id], [EmpresaId], [TipoPersonaFiscalId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (6, 2, 1, N'Rene                      Molina                    ', NULL, 0, N'macedonio.martinez', CAST(N'2014-06-17T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Compradores] ([Id], [EmpresaId], [TipoPersonaFiscalId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (7, 3, 1, N'MANUEL EDUARDO            MARTINEZ                  GARZA                    ', NULL, 0, N'ada.carrillo', CAST(N'2014-06-17T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Compradores] ([Id], [EmpresaId], [TipoPersonaFiscalId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (8, 2, 1, N'Alberto                   Garza                     ', NULL, 0, N'macedonio.martinez', CAST(N'2014-06-17T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Compradores] ([Id], [EmpresaId], [TipoPersonaFiscalId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (9, 10, 1, N'Roberto Claudio           Guerrero                  Barba                    ', NULL, 1, N'macedonio.martinez', CAST(N'2014-06-17T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Compradores] ([Id], [EmpresaId], [TipoPersonaFiscalId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (10, 11, 1, N'Juan José                 Flores                    Camacho                  ', NULL, 1, N'ada.carrillo', CAST(N'2014-06-17T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Compradores] ([Id], [EmpresaId], [TipoPersonaFiscalId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (11, 5, 1, N'Gabriela                  Garza                     Guajardo                 ', NULL, 0, N'macedonio.martinez', CAST(N'2014-09-04T13:16:34.620' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Compradores] ([Id], [EmpresaId], [TipoPersonaFiscalId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (12, 8, 1, N'Edder                     Sánchez                   Campos                   ', NULL, 1, N'ada.carrillo', CAST(N'2015-05-28T17:05:55.210' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Compradores] ([Id], [EmpresaId], [TipoPersonaFiscalId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (13, 2, 1, N'Miguel Angel              Cervantes                 ', NULL, 1, N'ada.carrillo', CAST(N'2015-07-16T10:13:23.480' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Compradores] ([Id], [EmpresaId], [TipoPersonaFiscalId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (14, 1, 1, N'Hilda B.                  Meza                      Canchola                 ', NULL, 0, N'ada.carrillo', CAST(N'2015-10-05T18:51:08.133' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Compradores] ([Id], [EmpresaId], [TipoPersonaFiscalId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (15, 5, 1, N'Alonso                    Elorza                    ', NULL, 0, N'macedonio.martinez', CAST(N'2015-11-09T11:17:08.130' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Compradores] ([Id], [EmpresaId], [TipoPersonaFiscalId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (16, 2, 1, N'Adriana                   Espinosa                  Hernandez                ', NULL, 1, N'macedonio.martinez', CAST(N'2015-11-09T18:45:54.657' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Compradores] ([Id], [EmpresaId], [TipoPersonaFiscalId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (17, 4, 1, N'Verónica                  Mares                     Quilantan                ', NULL, 0, N'ada.carrillo', CAST(N'2016-04-12T12:54:19.727' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Compradores] ([Id], [EmpresaId], [TipoPersonaFiscalId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (18, 4, 1, N'Eduardo                   Menchaca                  Medina                   ', NULL, 0, N'ada.carrillo', CAST(N'2016-04-12T12:55:05.227' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Compradores] ([Id], [EmpresaId], [TipoPersonaFiscalId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (19, 1, 1, N'Melodie Mariel            Treviño                   Salazar                  ', NULL, 0, N'ada.carrillo', CAST(N'2016-04-18T12:00:32.983' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Compradores] ([Id], [EmpresaId], [TipoPersonaFiscalId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (20, 8, 1, N'Alejandro                 Mendez                    Torres                   ', NULL, 1, N'macedonio.martinez', CAST(N'2016-05-06T11:36:08.707' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Compradores] ([Id], [EmpresaId], [TipoPersonaFiscalId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (21, 5, 1, N'Miriam                    Marin                     Salgado                  ', NULL, 0, N'macedonio.martinez', CAST(N'2016-07-13T16:52:53.763' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Compradores] ([Id], [EmpresaId], [TipoPersonaFiscalId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (22, 5, 1, N'Carlos                    Ortíz                     Bazan                    ', NULL, 1, N'macedonio.martinez', CAST(N'2016-07-25T12:29:57.243' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Compradores] ([Id], [EmpresaId], [TipoPersonaFiscalId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (23, 2, 1, N'Hector Ivan               Dominguez                 Preciado                 ', NULL, 1, N'macedonio.martinez', CAST(N'2016-07-25T12:32:52.967' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Compradores] ([Id], [EmpresaId], [TipoPersonaFiscalId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (24, 1, 1, N'Carlos Alfredo            Montes                    Zarate                   ', NULL, 0, N'ada.carrillo', CAST(N'2016-08-01T17:15:14.653' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Compradores] ([Id], [EmpresaId], [TipoPersonaFiscalId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (25, 2, 1, N'Raul                      Trujillo                  Hernandez                ', NULL, 1, N'macedonio.martinez', CAST(N'2016-09-26T13:09:12.050' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Compradores] ([Id], [EmpresaId], [TipoPersonaFiscalId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (26, 1, 1, N'Angélica                  Pino                      Andrade                  ', NULL, 1, N'ada.carrillo', CAST(N'2016-12-13T18:56:42.060' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Compradores] ([Id], [EmpresaId], [TipoPersonaFiscalId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (27, 4, 1, N'Erick Arnoldo             Lara                      Solis                    ', NULL, 0, N'ada.carrillo', CAST(N'2017-02-13T13:12:39.723' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Compradores] ([Id], [EmpresaId], [TipoPersonaFiscalId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (28, 1, 1, N'Jaime Enrique             Flores                    Pérez                    ', NULL, 0, N'ada.carrillo', CAST(N'2017-03-15T12:29:53.653' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Compradores] ([Id], [EmpresaId], [TipoPersonaFiscalId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (29, 1, 1, N'Francisco Javier          Molina                    Ponce                    ', NULL, 0, N'ada.carrillo', CAST(N'2017-03-15T12:30:26.943' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Compradores] ([Id], [EmpresaId], [TipoPersonaFiscalId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (30, 1, 1, N'Victor Hugo               Leija                     Esquivel                 ', NULL, 0, N'ada.carrillo', CAST(N'2017-04-07T13:27:08.793' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Compradores] ([Id], [EmpresaId], [TipoPersonaFiscalId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (31, 2, 1, N'Veronica                  Mares                     Quilantan                ', NULL, 1, N'macedonio.martinez', CAST(N'2017-08-10T10:08:01.517' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Compradores] ([Id], [EmpresaId], [TipoPersonaFiscalId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (32, 5, 1, N'Omar Alejandro            Davila                    Ramos                    ', NULL, 1, N'macedonio.martinez', CAST(N'2017-08-29T16:52:39.407' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Compradores] ([Id], [EmpresaId], [TipoPersonaFiscalId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (33, 5, 1, N'Eduardo de Jesús          Menchaca                  Medina                   ', NULL, 1, N'macedonio.martinez', CAST(N'2017-09-20T10:36:10.313' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Compradores] ([Id], [EmpresaId], [TipoPersonaFiscalId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (34, 4, 1, N'Nancy Beatriz             Gómez                     Angel                    ', NULL, 1, N'ali.deleon.ext', CAST(N'2017-10-13T12:29:57.537' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Compradores] ([Id], [EmpresaId], [TipoPersonaFiscalId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (35, 4, 1, N'Diana Karen               Arredondo                 González                 ', NULL, 1, N'ada.carrillo', CAST(N'2018-06-29T13:20:13.580' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Compradores] ([Id], [EmpresaId], [TipoPersonaFiscalId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (36, 4, 1, N'Alejandro                 Arriaga                   Hinojosa                 ', NULL, 1, N'ada.carrillo', CAST(N'2018-06-29T13:21:39.487' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Compradores] ([Id], [EmpresaId], [TipoPersonaFiscalId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (37, 4, 1, N'Octavio                   Sánchez                   Partida                  ', N'', 0, N'ada.carrillo', CAST(N'2018-08-02T17:10:57.313' AS DateTime), CAST(N'2023-02-21T10:25:58.760' AS DateTime), NULL)
INSERT [dbo].[cat_Compradores] ([Id], [EmpresaId], [TipoPersonaFiscalId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (38, 4, 1, N'Sofía Irene               González                  Dávila                   ', NULL, 1, N'ada.carrillo', CAST(N'2018-08-02T17:11:48.973' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Compradores] ([Id], [EmpresaId], [TipoPersonaFiscalId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (39, 1, 1, N'Luis Alberto              González                  Banda                    ', NULL, 0, N'ada.carrillo', CAST(N'2019-01-09T12:59:28.107' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Compradores] ([Id], [EmpresaId], [TipoPersonaFiscalId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (40, 11, 1, N'Edna Laura                Noyola                    Balderas                 ', NULL, 1, N'ada.carrillo', CAST(N'2019-10-17T10:12:07.587' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Compradores] ([Id], [EmpresaId], [TipoPersonaFiscalId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (41, 14, 1, N'Roberto Claudio           Guerrero                  Barba                    ', N'', 0, N'macedonio.martinez', CAST(N'2021-09-24T00:00:00.000' AS DateTime), CAST(N'2023-02-21T10:36:16.517' AS DateTime), NULL)
INSERT [dbo].[cat_Compradores] ([Id], [EmpresaId], [TipoPersonaFiscalId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (42, 1, 1, N'Ruben                     Martinez                  Rocha                    ', N'', 1, N'ada.carrillo', CAST(N'2021-09-29T12:47:33.680' AS DateTime), CAST(N'2023-02-21T10:36:16.970' AS DateTime), NULL)
INSERT [dbo].[cat_Compradores] ([Id], [EmpresaId], [TipoPersonaFiscalId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (43, 10, 1, N'Aldrin                    Aguilar                   Cetz                     ', N'', 0, N'macedonio.martinez', CAST(N'2022-02-23T18:47:51.127' AS DateTime), CAST(N'2023-04-18T15:25:13.463' AS DateTime), NULL)
INSERT [dbo].[cat_Compradores] ([Id], [EmpresaId], [TipoPersonaFiscalId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (44, 1, 0, N'sdafasdfads', N'', 0, N'12cb7342-837e-45d9-892c-6818a38a3816', CAST(N'2023-02-14T17:23:04.967' AS DateTime), CAST(N'2023-02-21T10:18:01.260' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[cat_Compradores] OFF
GO
SET IDENTITY_INSERT [dbo].[cat_Contactos] ON 

INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (1, 1, N'Agente', N'Margarita', N'Camacho', N'Test', N'15', N'', N'', N'1234', N'', 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (2, 1, N'Bancos', N'Gerardo', N'Hinojosa', NULL, N'(55)22266896', N'(55)22266896', NULL, NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (3, 1, N'Bancos', N'Mariano', N'Cedillo', NULL, N'(55)22266896', N'(55)22266896', NULL, NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (4, 1, N'Proveedor', N'FERNANDO', N'APICELLA', NULL, N'0321 9781', N'0321 9781', NULL, NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (5, 2, N'Agente', N'Dalia', N'Chong', NULL, N'833-260-2300', N'833-260-2300', NULL, N'833-260-2301', NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (6, 2, N'Bancos', N'Efrain', N'Urquidez', NULL, N'214/828-5967 OR 828-5966', N'214/828-5967 OR 828-5966', NULL, N'214/827-9817 OR', NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (7, 2, N'Bancos', N'Mariella', N'Vazquez', NULL, N'214/828-5967 OR 828-5966', N'214/828-5967 OR 828-5966', NULL, N'214/827-9817 OR', NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (8, 2, N'Proveedor', N'MICHAEL', N'S.', N'DIDION', N'314/278-8700', N'314/278-8700', NULL, NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (9, 3, N'Agente', N'Ana Laura', N'Romero', NULL, N'9567254286', N'9567254286', NULL, N'9567254285', NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (10, 3, N'Bancos', N'Hernan', N'Garza', NULL, N'8 3686734 / 38  / 31/ 13', N'8 3686734 / 38  / 31/ 13', NULL, N'8  36867 58/ 59', NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (11, 3, N'Bancos', N'Lorenzo', N'Valdez', NULL, N'8 3686734 / 38  / 31/ 13', N'8 3686734 / 38  / 31/ 13', NULL, N'8  36867 58/ 59', NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (12, 3, N'Proveedor', N'SASSI', N'SERGIO', NULL, N'39-02-9650-493', N'39-02-9650-493', NULL, NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (13, 4, N'Agente', N'Fernando S.', N'Rodríguez', NULL, N'956 725 0537', N'956 725 0537', NULL, N'956 795 1299', NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (14, 4, N'Bancos', N'ROSAMARIA GONZALEZ', NULL, NULL, N'915 546 4708', N'915 546 4708', NULL, N'915 546 4238', NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (15, 4, N'Bancos', N'SUSAN RICO', NULL, NULL, N'915 546 4708', N'915 546 4708', NULL, N'915 546 4238', NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (16, 4, N'Proveedor', N'GESSICA', N'VALENTINI', NULL, N'(39) 059 55 6836', N'(39) 059 55 6836', NULL, NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (17, 5, N'Agente', N'Araceli', N'Quiroz', NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (18, 5, N'Bancos', N'Heine', NULL, NULL, N'0211 8986 0', N'0211 8986 0', NULL, N'0211 89 86 374', NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (19, 5, N'Bancos', N'HYPOVERINSBANK', NULL, NULL, NULL, NULL, NULL, N'0211 89 86 374', NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (20, 5, N'Proveedor', N'PAOLO', N'CERRETTI', NULL, N'(0522) 99 77 11', N'(0522) 99 77 11', NULL, NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (21, 6, N'Agente', N'Octavio', N'Ávila', NULL, N'9567171644', N'9567171644', NULL, N'9567171544', NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (22, 6, N'Bancos', N'NINGUNO', NULL, NULL, N'0', N'0', NULL, N'0', NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (23, 6, N'Proveedor', N'Emanuela', N'BOLOGNESE', NULL, N'(0536) 83 27 71', N'(0536) 83 27 71', NULL, NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (24, 7, N'Agente', N'Gilberto', N'Ortiz', NULL, N'956250537', N'956250537', NULL, N'9567291350', NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (25, 7, N'Bancos', N'N', N'A', NULL, N'N/A', N'N/A', NULL, N'N/A', NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (26, 7, N'Proveedor', N'BONI', N'CESARE', NULL, N'(0536) 805 083', N'(0536) 805 083', NULL, NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (27, 8, N'Agente', N'Sergio', N'Arce', NULL, N'75726618796', N'75726618796', NULL, N'75726618796', NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (28, 8, N'Bancos', N'BANCOMEXT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (29, 8, N'Proveedor', N'GIORGIO', N'POGLIANO', NULL, N'011 6178 411', N'011 6178 411', NULL, NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (30, 9, N'Agente', N'Ernesto', N'Osorno', N'Villanueva', N'7535376621', N'7535376621', NULL, NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (31, 9, N'Bancos', N'Heriberto', N'Cepeda', N'Mejía', N'4503405', N'4503405', NULL, N'8183781341', NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (32, 9, N'Bancos', N'Javier', N'Esparza', N'García', N'(81)12231234', N'(81)12231234', NULL, N'8183781341', NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (33, 9, N'Proveedor', N'HERMINIO', N'FERNANDEZ', N'DE LANDA', N'34/945/1843/00', N'34/945/1843/00', NULL, NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (34, 10, N'Agente', N'José', N'León', NULL, N'3332846069', N'3332846069', NULL, NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (35, 10, N'Bancos', N'MAYRA', NULL, NULL, NULL, NULL, NULL, N'713 571-7080', NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (36, 10, N'Bancos', N'Mayra', N'Moreno', NULL, N'713 655-0369', N'713 655-0369', NULL, N'713 571-7080', NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (37, 10, N'Proveedor', N'I', N'LIGABUE', NULL, N'0536 99 51 11', N'0536 99 51 11', NULL, NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (38, 11, N'Agente', N'Jorge', N'García', NULL, N'9567289000', N'9567289000', NULL, N'9567280394', NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (39, 11, N'Bancos', N'José Luis Vicent', NULL, NULL, N'3491 289 1369', N'3491 289 1369', NULL, N'3491 257 1681', NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (40, 11, N'Bancos', N'Pedro Barra', NULL, NULL, N'3491 289 1369', N'3491 289 1369', NULL, N'3491 257 1681', NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (41, 11, N'Proveedor', N'Les', N'Kelemen', NULL, N'847-842-2825', N'847-842-2825', NULL, NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (42, 12, N'Agente', N'Rod', N'Ulloa', NULL, N'2819870600', N'2819870600', NULL, N'2819870070', NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (43, 12, N'Bancos', N'VERONA E NOV', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (44, 12, N'Proveedor', N'LUCIANO', N'ALDINI', NULL, N'0039 0536 92 98 11', N'0039 0536 92 98 11', NULL, NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (45, 13, N'Bancos', N'BANK OF MONTREAL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (46, 13, N'Bancos', N'BANK OF MONTREAL', N'BANK OF MONTREAL', NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (47, 13, N'Proveedor', N'ANTONIO', N'MACCHI', NULL, N'0571 709584', N'0571 709584', NULL, NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (48, 14, N'Agente', N'Karina', N'Cervantes', NULL, N'3143320202', N'3143320202', NULL, NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (49, 14, N'Bancos', N'Ana', N'Villegas', NULL, N'(81)83192516', N'(81)83192516', NULL, N'(81)83192348', NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (50, 14, N'Bancos', N'Rosa', N'Villarreal', NULL, N'(81)83192516', N'(81)83192516', NULL, N'(81)83192348', NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (51, 14, N'Proveedor', N'DAVID', N'MI', NULL, N'852-2735-4242', N'852-2735-4242', NULL, NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (52, 15, N'Agente', N'Raúl', N'Sierra', N'Hinojosa', N'8332450890', N'8332450890', NULL, N'8332568191', NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (53, 15, N'Bancos', N'HUNTINGTON', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (54, 15, N'Proveedor', N'S.Y.', N'LEE', NULL, N'82 237061749', N'82 237061749', NULL, NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (55, 16, N'Agente', N'Ana Laura', N'García', NULL, N'9537943606', N'9537943606', NULL, N'9567919398', NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (56, 16, N'Bancos', N'WACHOVIA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (57, 16, N'Proveedor', N'MS.', N'SU', N'ZHAOXIA', N'0086 531 787 9384', N'0086 531 787 9384', NULL, NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (58, 17, N'Agente', N'María Del Rosario', N'Sánchez', N'Cade', N'7535374209', N'7535374209', NULL, N'7535373016', NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (59, 17, N'Bancos', N'BBVA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (60, 17, N'Bancos', N'Juan Carlos', N'Martínez', NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (61, 17, N'Proveedor', N'HUMBERTO', N'VALDES', N'CARDONA', N'818 385 0333', N'818 385 0333', NULL, NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (62, 18, N'Agente', N'Mabel', N'Urdiales', NULL, N'3143324044', N'3143324044', NULL, N'3143322733', NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (63, 18, N'Bancos', N'Georgina', N'Garza', N'Elizondo', N'(55)52578000', N'(55)52578000', NULL, NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (64, 18, N'Bancos', N'Vanessa', N'Escudero', NULL, N'(55)52578000', N'(55)52578000', NULL, NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (65, 19, N'Agente', N'José', N'León', NULL, N'3332846069', N'3332846069', NULL, N'3332846069', NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (66, 19, N'Bancos', N'ABCD', NULL, NULL, N'123456789', N'123456789', NULL, N'123456789', NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (67, 19, N'Proveedor', N'SHIN', N'EL', N'KIKO', NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (68, 20, N'Agente', N'Mario', N'Peña', NULL, N'956 7171644', N'956 7171644', N'm.pena@pena-lmd.com', N'956 7171644', NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (69, 20, N'Bancos', N'INTERBANCO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (70, 20, N'Bancos', N'Jorge', N'Moctezuma', NULL, N'8186761676', N'8186761676', NULL, NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (71, 21, N'Agente', N'SANTIAGO', N'REYES', NULL, N'52229310845', N'52229310845', NULL, NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (72, 21, N'Bancos', N'Ignacio ', N'Carranza ', N'Martínez', N'5552310808', N'5552310808', NULL, NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (73, 21, N'Bancos', N'Javier ', N'Ramírez ', N'Martínez', N'5552310808', N'5552310808', NULL, NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (74, 22, N'Agente', N'Luis', N'Torres', NULL, N'9567230630', N'9567230630', N'luis.torres@acastaneda.co', NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (75, 22, N'Bancos', N'COPENHAGEN', NULL, NULL, N'123456', N'123456', NULL, N'123456', NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (76, 22, N'Bancos', N'DENMARK', NULL, NULL, N'123456', N'123456', NULL, N'123456', NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (77, 23, N'Agente', N'Manuel', N'Reynero', NULL, N'2299321807', N'2299321807', N'mreynero@grupo-castaneda.com', N'2299327483', NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (78, 23, N'Bancos', N'NORWAY', NULL, NULL, N'999999999', N'999999999', NULL, N'999999999', NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (79, 23, N'Bancos', N'OSLO', NULL, NULL, N'999999999', N'999999999', NULL, N'999999999', NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (80, 23, N'Proveedor', N'MARCO', N'SCALABRINI', NULL, N'0039 0522 806 521', N'0039 0522 806 521', NULL, NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (81, 24, N'Agente', N'LUIS', N'BARRERA', N'PAZ', N'7535376815', N'7535376815', NULL, N'7535376725', NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (82, 24, N'Bancos', N'ROBERTO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (83, 24, N'Bancos', N'ROBERTO', N'BRAHAM', NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (84, 24, N'Proveedor', N'PAOLO', N'CAPELLI', NULL, N'00390536 915 000', N'00390536 915 000', NULL, NULL, NULL, 0)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (85, 25, N'Agente', N'Pedro Alejandro', N'Zuno', N'Chavira', N'0019567264445', N'0019567264445', NULL, NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (86, 25, N'Bancos', N'RAFAEL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (87, 25, N'Bancos', N'RAFAEL ', N'GARCIA', NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (88, 25, N'Proveedor', N'HAIYAN', N'ZHANG', NULL, N'0086 532 506 1468', N'0086 532 506 1468', NULL, NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (89, 26, N'Agente', N'Pedro Ramón', N'Puron', N'Acevedo', N'314-3353-915', N'314-3353-915', NULL, NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (90, 26, N'Bancos', N'Ana', N'Villegas', NULL, NULL, NULL, N'ana.villegas@hsbc.com.mx', NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (91, 26, N'Bancos', N'Sara ', N'Carrillo', NULL, N'(81)83192367', N'(81)83192367', N'sara.carrillo@hsbc.com.mx', NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (92, 27, N'Agente', N'Eva', N'Moreno', NULL, N'9567230630', N'9567230630', N'eva.moreno@acastaneda.com', NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (93, 27, N'Bancos', N'Corresponsal', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (94, 27, N'Proveedor', N'GUNTRAM', N'STIEFEL', NULL, N'0041 52 631 1717', N'0041 52 631 1717', NULL, NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (95, 28, N'Agente', N'Luis', N'Barrera', N'Paz', N'3141532728', N'3141532728', NULL, NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (96, 28, N'Bancos', N'Banco', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (97, 28, N'Bancos', N'Banco', N'Corresponsal', NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (98, 28, N'Proveedor', N'LI', N'DONG', N'PEI', N'0086 10 62031227', N'0086 10 62031227', NULL, NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (99, 29, N'Agente', N'Alma', N'González', NULL, N'52 (33) 3284-6075', N'52 (33) 3284-6075', N'Alma.Gonzalez@expeditors.com', NULL, NULL, 1)
GO
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (100, 29, N'Bancos', N'Desconocido', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (101, 29, N'Bancos', N'Sin ', N'Contacto', NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (102, 29, N'Proveedor', N'KENNETH', N'NAFEY', NULL, N'732 932 6287', N'732 932 6287', NULL, NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (103, 30, N'Agente', N'Sergio', N'Quintana', NULL, N'0019562427682', N'0019562427682', NULL, NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (104, 30, N'Bancos', N'Claudia', N'De la Rosa', NULL, N'(81)83-19-65-00', N'(81)83-19-65-00', N'claudia.delarosa@banorte.com', NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (105, 30, N'Bancos', N'Pendiente', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (106, 30, N'Proveedor', N'GORDON', N'XIE', NULL, N'86 757 85387329', N'86 757 85387329', NULL, NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (107, 31, N'Agente', N'Dalia', N'Chong', N'Sánchez', N'8332302525', N'8332302525', NULL, NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (108, 31, N'Bancos', N'Raúl', N'Berlanga', N'Garza', N'81-8318-4342   ', N'81-8318-4342   ', N'rberlanga@santander.com.mx', NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (109, 31, N'Bancos', N'Rodrigo ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (110, 31, N'Proveedor', N'Jacky', N'Xin', NULL, N'7688168987', N'7688168987', NULL, NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (111, 32, N'Agente', N'Antonio', N'Moreno', NULL, N'9566459005', N'9566459005', N'amoreno@joffroy.com', NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (112, 32, N'Bancos', N'xxxx', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (113, 32, N'Bancos', N'xxxx', N'xxxx', NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (114, 33, N'Bancos', N'X', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (115, 34, N'Bancos', N'Bank', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (116, 34, N'Bancos', N'Jiangsu', N'Provincial ', NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (117, 35, N'Bancos', N'Certech', N'SPA', NULL, NULL, NULL, N'italiano@unicredito.com', NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (118, 35, N'Bancos', N'x', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (119, 36, N'Bancos', N'David', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (120, 36, N'Bancos', N'David', N'Aldape', NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (121, 36, N'Proveedor', N'JACKY', N'XIN', NULL, N'3.907423019E+011', N'3.907423019E+011', NULL, NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (122, 37, N'Bancos', N'XXXX', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (123, 37, N'Bancos', N'XXXX', N'XXXX', NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (124, 38, N'Bancos', N'x', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (125, 38, N'Bancos', N'y', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (126, 38, N'Proveedor', N'Abc', N'Dfg', NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (127, 39, N'Bancos', N'JESUS ANGEL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (128, 39, N'Bancos', N'JESUS ANGEL', N'DEL VALLE', N'GARCIA', NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (129, 39, N'Proveedor', N'CARLOS', N'ORTIZ', N'DE GUZMAN', N'34945242158', N'34945242158', NULL, NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (130, 40, N'Bancos', N'Nazionale', N'Del Lavoro', NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (131, 40, N'Bancos', N'x', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (132, 40, N'Proveedor', N'JACOB', N'HONG', NULL, N'8228023458', N'8228023458', NULL, NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (133, 41, N'Proveedor', N'XIAOMING', NULL, NULL, N'86106846870', N'86106846870', NULL, NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (134, 42, N'Proveedor', N'ZHANG', N'BING', NULL, N'8.6350879588E+011', N'8.6350879588E+011', NULL, NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (135, 43, N'Proveedor', N'DEEPAK', N'GARG', NULL, N'011-27374680', N'011-27374680', NULL, NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (136, 44, N'Proveedor', N'MAURO', N'TAMBURINI', NULL, N'3.901192228E+011', N'3.901192228E+011', NULL, NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (137, 45, N'Proveedor', N'RICK', N'NAVA', NULL, N'269-9799565', N'269-9799565', NULL, NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (138, 46, N'Proveedor', N'GRACE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (139, 47, N'Proveedor', N'SANJEEV', N'BHALLA', NULL, N'091-11278-317-3740', N'091-11278-317-3740', NULL, NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (140, 48, N'Proveedor', N'JUAN', N'ARRILUCEA', NULL, N'0034-945-244850', N'0034-945-244850', NULL, NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (141, 49, N'Proveedor', N'THOMAS', N'VOSS', NULL, N'49 5161 780', N'49 5161 780', NULL, NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (142, 50, N'Proveedor', N'Stefano', N'Fiorini', NULL, N'390522848290', N'390522848290', N'stefano.fiorini@airpowergroup.com', NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (143, 51, N'Proveedor', N'ENZO', N'MORINI', NULL, N'39 0536 1840411', N'39 0536 1840411', NULL, NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (144, 52, N'Proveedor', N'KALPESH', N'NAGDA', NULL, N'9.1250245141E+011', N'9.1250245141E+011', NULL, NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (145, 53, N'Proveedor', N'ESTHER', N'TAO', NULL, N'8.6576842771E+012', N'8.6576842771E+012', NULL, NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (146, 54, N'Proveedor', N'ERIC', NULL, NULL, N'004121 694 75 00', N'004121 694 75 00', NULL, NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (147, 57, N'Proveedor', N'HECTOR', N'LOPEZ', N'BOTELLO', N'55 53 43 4892', N'55 53 43 4892', NULL, NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (148, 58, N'Proveedor', N'Walter', N'Mercado', NULL, N'511 3767766', N'511 3767766', NULL, NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (149, 59, N'Proveedor', N'ANGEL', N'VILLANUEVA', N'FERNÁNDEZ', N'34 98 598 2600', N'34 98 598 2600', NULL, NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (150, 60, N'Proveedor', N'KEITH', N'PANUCE', NULL, N'920 9545800 X 112', N'920 9545800 X 112', NULL, NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (151, 61, N'Proveedor', N'MICHAEL', N'SPIEGLE', NULL, N'440 519 1745', N'440 519 1745', NULL, NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (152, 63, N'Proveedor', N'ALVARO', N'ALLENDE', NULL, N'305 940 1377', N'305 940 1377', NULL, NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (153, 64, N'Proveedor', N'YEUNG', N'CHUNG', N'MAN', N'0086 757 266 18796', N'0086 757 266 18796', NULL, NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (154, 65, N'Proveedor', N'JOHN', N'GREENE', NULL, N'844 4 11 10 96', N'844 4 11 10 96', NULL, NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (155, 66, N'Proveedor', N'STEFANO', N'PORTA', NULL, N'3902 98230424', N'3902 98230424', NULL, NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (156, 67, N'Proveedor', N'MIROSLAV', N'SPETL', NULL, N'420353 406 312', N'420353 406 312', NULL, NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (157, 68, N'Proveedor', N'CRISTINA', N'CARDOSO', NULL, N'55(11)2246-7465', N'55(11)2246-7465', NULL, NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (158, 69, N'Proveedor', N'CHRIS', N'L.', NULL, N'662 237 7225 40', N'662 237 7225 40', NULL, NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (159, 70, N'Proveedor', N'MARTIN', N'MAAS', NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (160, 71, N'Proveedor', N'CHRISTIAN', N'HARDER', NULL, N'0472/810111', N'0472/810111', NULL, NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (161, 72, N'Proveedor', N'ORLANDO', N'SANDOVAL', NULL, N'844 4 11 10 96', N'844 4 11 10 96', NULL, NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (162, 73, N'Proveedor', N'PARHAM', N'GHAZI', N'SAEEDI', N'35 226 515 230', N'35 226 515 230', NULL, NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (163, 74, N'Proveedor', N'Enrique', N'Catalán', NULL, N'34964562251', N'34964562251', N'ecatalan@errece.es', NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (164, 75, N'Proveedor', N'ISABELLA', N'FRANCO', NULL, N'41 21 321 5450', N'41 21 321 5450', NULL, NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (165, 76, N'Proveedor', N'PAUL', N'ANDERSON', NULL, N'2481661', N'2481661', NULL, NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (166, 77, N'Proveedor', N'Claudia', N'Bevilacqua', NULL, N'39-0536-915000', N'39-0536-915000', N'claudia_bevilacqua@tecnoferrari.it', NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (167, 78, N'Proveedor', N'ALEV', N'DALGIC', NULL, N'0090 212 421 31 11', N'0090 212 421 31 11', NULL, NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (168, 79, N'Proveedor', N'OZGE', N'KILIC', NULL, N'0090 262 351 3943', N'0090 262 351 3943', NULL, NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (169, 80, N'Proveedor', N'PILAR', N'MTZ', NULL, N'34 964 5000 18', N'34 964 5000 18', NULL, NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (170, 81, N'Proveedor', N'Jose Ignacio', N'Mejías', N'Callau', N'(34) 964 3607 25', N'(34) 964 3607 25', NULL, NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (171, 82, N'Proveedor', N'SUSAN', N'ASSANTE', NULL, N'609-267-3537', N'609-267-3537', NULL, NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (172, 83, N'Proveedor', N'SCOTT', N'NEEDHAM', NULL, N'905-319-7930', N'905-319-7930', NULL, NULL, NULL, 0)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (173, 84, N'Proveedor', N'SIRO', N'TACCANI', NULL, N'39-08968-8111', N'39-08968-8111', NULL, NULL, NULL, 0)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (174, 85, N'Proveedor', N'GORKA', N'CADARSO', NULL, N'34 94476 1244', N'34 94476 1244', NULL, NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (175, 86, N'Proveedor', N'KEVIN', N'DU', NULL, N'8.6551653398E+012', N'8.6551653398E+012', NULL, NULL, NULL, 0)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (176, 87, N'Proveedor', N'Powtek', N'Powtek', NULL, N'86076088582011', N'86076088582011', NULL, NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (177, 88, N'Proveedor', N'Morena', N'Poggi', NULL, N'123456789', N'123456789', NULL, NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (178, 89, N'Proveedor', N'Janet', N'Rao', NULL, N'86-760-22629810', N'86-760-22629810', NULL, NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (179, 90, N'Proveedor', N'Anhui', N'Anhui', NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (180, 91, N'Proveedor', N'DANIELLE', N'LEVINE', NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (181, 93, N'Proveedor', N'x', N'x', N'x', N'1', N'1', NULL, NULL, NULL, 0)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (182, 95, N'Proveedor', N'x', N'x', N'x', N'3', N'3', NULL, NULL, NULL, 0)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (183, 98, N'Proveedor', N'Anja', N'Andersen', NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (184, 99, N'Proveedor', N'Don', N'Wallace', NULL, N'9053197930', N'9053197930', N'don.wallace@noricangroup.com', NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (185, 100, N'Proveedor', N'MS. TINA LI', N'LI', NULL, N'0086-757-22279246', N'0086-757-22279246', N'aelorza@funcosa.com.mx', NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (186, 101, N'Proveedor', N'MASON', N'XUE', NULL, N'86 518 8595 98', N'86 518 8595 98', N'aelorza@funcosa.com.mx', NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (187, 102, N'Proveedor', N'DORA', N'ZHOU', NULL, N'+86-575-8900 6961', N'+86-575-8900 6961', N'aelorza@funcosa.com.mx', NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (188, 103, N'Proveedor', N'GORKA', N'CADARSO', NULL, N'(248) 4828200 EXT. 4', N'(248) 4828200 EXT. 4', N'gorka@euroequip.es', NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (189, 104, N'Proveedor', N'SZMIL', N'WEBER', NULL, N'(55) 216620', N'(55) 216620', N'zodiac18@gmail.com', NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (190, 105, N'Proveedor', N'JOANDRE', N'GALARZA', NULL, N'4940-527290', N'4940-527290', N'joandre.galarza@hbg.yxlon.com', NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (191, 106, N'Proveedor', N'William', N'Niu', NULL, N'86075722605105', N'86075722605105', N'veronica.mares@gis.com.mx', NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (192, 107, N'Proveedor', N'Cristian', N'Cavazzuti', NULL, N'390536836111', N'390536836111', NULL, NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (193, 108, N'Proveedor', N'Juan', N'Alcorta', NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (194, 109, N'Proveedor', N'PAULA', N'DAOCHENG', NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (195, 110, N'Proveedor', N'HONGSHENG', N'JIANG', NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (196, 111, N'Proveedor', N'Jorge', N'Uso', NULL, N'34964324003', N'34964324003', N'carlos.ortiz@gis.com.mx', NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (197, 112, N'Proveedor', N'Gianluigi', N'Zaniboni', NULL, N'390536843861', N'390536843861', NULL, NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (198, 113, N'Proveedor', N'DORA', N'ZHOU', NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (199, 114, N'Proveedor', N'SANG', N'HOON LEE', NULL, N'82226009296', N'82226009296', NULL, NULL, NULL, 1)
GO
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (200, 115, N'Proveedor', N'HOMEWAY', N'YANG', NULL, N'008657387797671', N'008657387797671', NULL, NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (201, 116, N'Proveedor', N'DAVID', N'LICEAGA', NULL, N'2804', N'2804', N'david.liceaga@gis.com.mx', NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (202, 117, N'Proveedor', N'Lu', N'Zhenting', NULL, N'0757-26338337', N'0757-26338337', NULL, NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (203, 118, N'Proveedor', N'Sunny', N'Yang', NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (204, 119, N'Proveedor', N'PAOLA', N'PAOLILLO', NULL, N'39089688282', N'39089688282', N'paola.paolillo@magaldi.com', NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (205, 120, N'Proveedor', N'PEZZALI', N'BRUNA', NULL, N'39536811650', N'39536811650', NULL, NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (206, 121, N'Proveedor', N'ANTONIO', N'LAMARI', NULL, N'390322923111', N'390322923111', NULL, NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (207, 122, N'Proveedor', N'DAVID', N'LICEAGA', NULL, N'5552300200', N'5552300200', N'david.liceaga@gis.com.mx', NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (208, 123, N'Proveedor', N'NURIA', N'ALVARO', NULL, N'34933100161', N'34933100161', N'nalvaro@hornosautomaticos.com', NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (209, 124, N'Proveedor', N'MAURO', N'PASCARELLA', NULL, N'390522857868', N'390522857868', N'mauropascarella@bmr.it', NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (210, 125, N'Proveedor', N'LUCA', N'SILVESTRINI', NULL, N'0536830973', N'0536830973', N'luca.silvestrini@ferraristampi.it', NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (211, 126, N'Proveedor', N'Ms. Su', N'Zhaoxia', NULL, N'008653187885060', N'008653187885060', NULL, NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (212, 127, N'Proveedor', N'CESAR', N'MARCO', NULL, N'34945184300', N'34945184300', NULL, NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (213, 128, N'Proveedor', N'ALFREDO', N'CARLOS', NULL, N'8711319343', N'8711319343', N'acarlos@electrotableros.com', NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (214, 129, N'Proveedor', N'ANTONIO', N'LAMARI', NULL, N'3070838067', N'3070838067', NULL, NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (215, 130, N'Proveedor', N'BENITA', N'MCCAULEY', NULL, N'(713) 343-0892', N'(713) 343-0892', N'bmccauley@avalonrisk.com', NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (216, 131, N'Proveedor', N'LEO', N'LEE', NULL, N'86-757-81898771', N'86-757-81898771', N'Leolee@Nanogress.Net', NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (217, 132, N'Proveedor', N'CRISTIAN', N'BOCEDI', NULL, N'390522767025', N'390522767025', N'cristianbocedi@bocedisrl.com', NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (218, 133, N'Proveedor', N'ESTELA', N'BROCH', NULL, N'34964565430', N'34964565430', NULL, NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (219, 134, N'Proveedor', N'ALBERTO', N'PALLADINI', NULL, N'39536824294', N'39536824294', NULL, NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (220, 135, N'Proveedor', N'PERSONA', N'PENDIENTE', NULL, N'123456789', N'123456789', N'pendiente@gisederlan.com', NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (221, 136, N'Proveedor', N'ANGELA', N'W', NULL, N'862587785804', N'862587785804', N'angela.w@nanjing.com', NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (222, 137, N'Proveedor', N'ALLEN', N'WANG', NULL, N'865925213898', N'865925213898', N'allen.wang@greenfoam.com', NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (223, 138, N'Proveedor', N'DEBORA', N'DACCO', NULL, N'3903228491', N'3903228491', NULL, NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (224, 139, N'Proveedor', N'RAKESH', N'KORADIYA', NULL, N'919725544444', N'919725544444', N'rakesh@romilimpex.net', NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (225, 140, N'Proveedor', N'GEORGE', N'ZHANG', NULL, N'0086-574-56179502', N'0086-574-56179502', N'george.zhang@ningbo.com', NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (226, 141, N'Proveedor', N'WANG', N'YUAN', N'HONG', N'8651982658051', N'8651982658051', N'wang.yuan@changzhou.com', NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (227, 142, N'Proveedor', N'AMMY', N'WANG', NULL, N'0086-21-68155777', N'0086-21-68155777', NULL, NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (228, 143, N'Proveedor', N'ASHLEY', N'DENG', NULL, N'8675782303766', N'8675782303766', NULL, NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (229, 144, N'Proveedor', N'SAM', N'WANG', NULL, N'0086-315-6509922;0086-134729', N'0086-315-6509922;0086-134729', NULL, NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (230, 145, N'Proveedor', N'MARS', N'CHAN', NULL, N'13567839008', N'13567839008', NULL, NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (231, 146, N'Proveedor', N'ABEL', N'SÁNCHEZ', N'LÓPEZ', N'34964529045', N'34964529045', N'asanchez@tecnimol.com', NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (232, 147, N'Proveedor', N'RICARDO', N'CATELLANI', NULL, N'390522859704', N'390522859704', NULL, NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (233, 148, N'Proveedor', N'MAURO', N'CAMELLINI', NULL, N'39059446255', N'39059446255', N'mauro.camellini@siti-bt.com', NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (234, 149, N'Proveedor', N'GREGORY', N'LEE', NULL, N'886223776712', N'886223776712', NULL, NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (235, 150, N'Proveedor', N'ADAXUEER', N'ZENG', NULL, N'0519-81190232', N'0519-81190232', N'adaxueer.zeng@thinksenvironment.com', NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (236, 151, N'Proveedor', N'WILLIAM BILL', N'CARR', NULL, N'1-803-396-0466', N'1-803-396-0466', N'wcarr@doosan.com', NULL, NULL, 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (237, 152, N'Proveedor', N'SANIEEV', N'BHALLA', N'', N'9112042010', N'9112042010', N'', N'', N'', 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (238, 153, N'Proveedor', N'MIGUEL ANGEL', N'GORDALIZA', N'', N'', N'', N'', N'', N'', 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (239, 154, N'Proveedor', N'KEITH', N'YU', N'', N'8618206112', N'8618206112', N'hk.yu@hide', N'', N'', 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (240, 155, N'Proveedor', N'ANTONELLA', N'BIZARRI', N'', N'3905221751', N'3905221751', N'antonella.', N'', N'', 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (241, 156, N'Proveedor', N'DANIELA', N'BIFULCO', N'', N'123456789', N'123456789', N'daniela.bi', N'', N'', 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (242, 157, N'Proveedor', N'SUSANNA', N'MONTAGNANI', N'', N'3905368108', N'3905368108', N'susanna.mo', N'', N'', 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (243, 34, N'Agente', N'Lorem', N'Ipsum', N'Dolor', N'81818182', N'', N'test@gmail', N'', N'', 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (244, 158, N'Proveedor', N'', N'', N'', N'', N'', N'', N'', N'', 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (245, 159, N'Proveedor', N'', N'', N'', N'', N'', N'', N'', N'', 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (246, 160, N'Proveedor', N'', N'', N'', N'', N'', N'', N'', N'', 1)
INSERT [dbo].[cat_Contactos] ([Id], [ModelId], [ModelNombre], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Celular], [Email], [Fax], [Descripcion], [Activo]) VALUES (247, 96, N'Proveedor', N'', N'', N'', N'', N'', N'', N'', N'', 1)
SET IDENTITY_INSERT [dbo].[cat_Contactos] OFF
GO
SET IDENTITY_INSERT [dbo].[cat_Divisiones] ON 

INSERT [dbo].[cat_Divisiones] ([Id], [Nombre], [Descripcion], [Activo], [Creado], [Actualizado], [Eliminado], [CreadoPor]) VALUES (1, N'Construcción', N'', 1, CAST(N'2023-02-13T10:33:48.763' AS DateTime), NULL, NULL, N'12cb7342-837e-45d9-892c-6818a38a3816')
INSERT [dbo].[cat_Divisiones] ([Id], [Nombre], [Descripcion], [Activo], [Creado], [Actualizado], [Eliminado], [CreadoPor]) VALUES (2, N'Corporativa', N'', 1, CAST(N'2023-02-13T10:33:53.037' AS DateTime), NULL, NULL, N'12cb7342-837e-45d9-892c-6818a38a3816')
INSERT [dbo].[cat_Divisiones] ([Id], [Nombre], [Descripcion], [Activo], [Creado], [Actualizado], [Eliminado], [CreadoPor]) VALUES (3, N'Europa', N'', 1, CAST(N'2023-02-13T10:34:02.140' AS DateTime), NULL, NULL, N'12cb7342-837e-45d9-892c-6818a38a3816')
INSERT [dbo].[cat_Divisiones] ([Id], [Nombre], [Descripcion], [Activo], [Creado], [Actualizado], [Eliminado], [CreadoPor]) VALUES (4, N'Fundición', N'', 1, CAST(N'2023-02-13T10:34:06.237' AS DateTime), NULL, NULL, N'12cb7342-837e-45d9-892c-6818a38a3816')
INSERT [dbo].[cat_Divisiones] ([Id], [Nombre], [Descripcion], [Activo], [Creado], [Actualizado], [Eliminado], [CreadoPor]) VALUES (5, N'Hogar', N'', 1, CAST(N'2023-02-13T10:34:14.000' AS DateTime), NULL, NULL, N'12cb7342-837e-45d9-892c-6818a38a3816')
SET IDENTITY_INSERT [dbo].[cat_Divisiones] OFF
GO
SET IDENTITY_INSERT [dbo].[cat_Documentos] ON 

INSERT [dbo].[cat_Documentos] ([Id], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (1, N'Prueba Documento', N'', 1, N'12cb7342-837e-45d9-892c-6818a38a3816', CAST(N'2023-02-13T10:40:59.273' AS DateTime), CAST(N'2023-04-11T15:49:14.073' AS DateTime), NULL)
INSERT [dbo].[cat_Documentos] ([Id], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (2, N'Documento Número 2', N'', 1, N'12cb7342-837e-45d9-892c-6818a38a3816', CAST(N'2023-02-13T10:41:06.760' AS DateTime), CAST(N'2023-02-14T16:45:25.840' AS DateTime), NULL)
INSERT [dbo].[cat_Documentos] ([Id], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (3, N'Test Doc', N'nuevo test', 1, N'12cb7342-837e-45d9-892c-6818a38a3816', CAST(N'2023-04-11T15:49:19.480' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Documentos] ([Id], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (4, N'Prueba Test Doc', N'Test doc', 1, N'12cb7342-837e-45d9-892c-6818a38a3816', CAST(N'2023-04-11T15:49:27.087' AS DateTime), NULL, NULL)
SET IDENTITY_INSERT [dbo].[cat_Documentos] OFF
GO
SET IDENTITY_INSERT [dbo].[cat_Empresas] ON 

INSERT [dbo].[cat_Empresas] ([Id], [DivisionId], [Nombre], [RFC], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (1, 1, N'Manufacturas Vitromex, S.A. de C.V.', N'MVI980219JMB', N'Blvd. Isidro López Zertuche 4103 C.P. 25230 Saltillo, Coahuila', 1, N'IMPORTACION', CAST(N'2014-06-17T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Empresas] ([Id], [DivisionId], [Nombre], [RFC], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (2, 1, N'Cinsa, S.A. de C.V.', N'CIN860808CQA', N'Blvd.Isidro López Zertuche 1495 Nte. C.P. 25000 Saltillo, Coahuila', 1, N'IMPORTACION', CAST(N'2014-06-17T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Empresas] ([Id], [DivisionId], [Nombre], [RFC], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (3, 1, N'Cifunsa Diesel', N'CDI970416MP9', N'Blvd. Isidro López Zertuche 1255 C.P. Saltillo, Coahuila', 1, N'ada.carrillo', CAST(N'2014-06-17T00:00:00.000' AS DateTime), CAST(N'2023-04-24T20:02:32.570' AS DateTime), NULL)
INSERT [dbo].[cat_Empresas] ([Id], [DivisionId], [Nombre], [RFC], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (4, 1, N'Calentadores de América, S.A. de C.V.', N'GCA000731459', N'Av. Michoacan 105, Col. Gpe. Del Moral C.P. 09300 Mexico, D.F.', 1, N'ada.carrillo', CAST(N'2014-06-17T00:00:00.000' AS DateTime), CAST(N'2023-04-18T15:28:44.190' AS DateTime), NULL)
INSERT [dbo].[cat_Empresas] ([Id], [DivisionId], [Nombre], [RFC], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (5, 1, N'Fluida, S.A. de C.V.', N'FLU991101GJ5', N'Blvd. Isidro López Zertuche No. 1839 Saltillo, Coah. Mexico C.P. 25000', 1, N'ada.carrillo', CAST(N'2014-06-17T00:00:00.000' AS DateTime), CAST(N'2023-04-24T20:02:33.443' AS DateTime), NULL)
INSERT [dbo].[cat_Empresas] ([Id], [DivisionId], [Nombre], [RFC], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (6, 1, N'Technocast, S.A. de C.V.', N'TEC0504141Z1', N'Blvd. Isidro López Zertuche 4003 Zona Ind. Saltillo Coahuila', 1, N'ada.carrillo', CAST(N'2014-06-17T00:00:00.000' AS DateTime), CAST(N'2023-04-24T20:02:46.477' AS DateTime), NULL)
INSERT [dbo].[cat_Empresas] ([Id], [DivisionId], [Nombre], [RFC], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (7, 1, N'Grupo Industrial Saltillo, S.A', N'GIS8410319Z7', N'Chiapas 375 Col. Republica Saltillo Coahuila Mexico', 1, N'ada.carrillo', CAST(N'2014-06-17T00:00:00.000' AS DateTime), CAST(N'2023-04-24T20:02:45.993' AS DateTime), NULL)
INSERT [dbo].[cat_Empresas] ([Id], [DivisionId], [Nombre], [RFC], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (8, 1, N'Cifunsa del Bajío, S.A. de C.V.', N'CBA020411NY0', N'Blvd. Isidro López Zertuche 1255 Saltillo, Coahuila', 1, N'ada.carrillo', CAST(N'2014-06-17T00:00:00.000' AS DateTime), CAST(N'2023-04-24T20:02:45.030' AS DateTime), NULL)
INSERT [dbo].[cat_Empresas] ([Id], [DivisionId], [Nombre], [RFC], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (9, 1, N'Cinsa y Santa Anita en Casa, S.A. de C.V.', N'CSA0608251ID4', N'Blvd. Isidro López Zertuche No. 1495 Saltillo, Coahuila', 1, N'ada.carrillo', CAST(N'2014-06-17T00:00:00.000' AS DateTime), CAST(N'2023-04-24T20:02:44.690' AS DateTime), NULL)
INSERT [dbo].[cat_Empresas] ([Id], [DivisionId], [Nombre], [RFC], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (10, 1, N'Draxton México, S. de R.L. de C.V.', N'TIS820222XXX', N'Av. Promoción 145 Zona Ind. 1A Secc San Luis Potosi, S.L.P. C.P. 78395', 1, N'macedonio.martinez', CAST(N'2014-06-17T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Empresas] ([Id], [DivisionId], [Nombre], [RFC], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (11, 1, N'Evercast, S.A. de C.V.', N'EVE140207B50', N'Blvd. Isidro López zertuche No. 1495 Centro, Saltillo, Coah. CP: 25000', 1, N'IMPORTACION', CAST(N'2014-06-17T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Empresas] ([Id], [DivisionId], [Nombre], [RFC], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (12, 1, N'Gisederlan, S.A. de C.V.', N'GIS150528DI7', N'Blvd. Isidro López Zertuche No. 1495 Centro, Saltillo, Coah. CP. 25000', 1, N'denis.leon', CAST(N'2016-03-23T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Empresas] ([Id], [DivisionId], [Nombre], [RFC], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (13, 1, N'Vitromex USA INC', N'1', N'San Pedro Ave 17319 Ste 300', 1, N'ada.carrillo', CAST(N'2016-12-29T00:00:00.000' AS DateTime), CAST(N'2023-04-24T20:02:34.620' AS DateTime), NULL)
INSERT [dbo].[cat_Empresas] ([Id], [DivisionId], [Nombre], [RFC], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (14, 1, N'Draxton México, S. de R.L. de C.V. TEST', N'TIS820222I14', N'Ave Promoción 145, Zona Industrial, San Luis Potosí, San Luis Potosí, CP 78395', 1, N'macedonio.martinez', CAST(N'2021-09-14T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Empresas] ([Id], [DivisionId], [Nombre], [RFC], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (15, 1, N'Empresa Test', N'TIS820222I00', N'XXXXXX', 0, N'macedonio.martinez', CAST(N'2021-09-24T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Empresas] ([Id], [DivisionId], [Nombre], [RFC], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (16, 0, N'Empresa1', N'', N'EmpresaTest', 0, N'D459F9C3-A944-4DEC-AB83-8B9DE2B1D895', CAST(N'2022-10-02T19:19:34.220' AS DateTime), CAST(N'2023-04-24T20:02:36.557' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[cat_Empresas] OFF
GO
SET IDENTITY_INSERT [dbo].[cat_LineasCredito] ON 

INSERT [dbo].[cat_LineasCredito] ([Id], [EmpresaId], [BancoId], [Monto], [Cuenta], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (1, 8, 14, CAST(2500000.00 AS Decimal(18, 2)), N'7003099876', 0, N'ada.carrillo', CAST(N'2014-09-02T10:36:56.800' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_LineasCredito] ([Id], [EmpresaId], [BancoId], [Monto], [Cuenta], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (2, 4, 14, CAST(7000000.00 AS Decimal(18, 2)), N'7003099934', 0, N'ada.carrillo', CAST(N'2014-09-02T10:37:39.673' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_LineasCredito] ([Id], [EmpresaId], [BancoId], [Monto], [Cuenta], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (3, 5, 14, CAST(10000000.00 AS Decimal(18, 2)), N'700309999', 0, N'ada.carrillo', CAST(N'2014-09-02T10:38:13.253' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_LineasCredito] ([Id], [EmpresaId], [BancoId], [Monto], [Cuenta], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (4, 2, 14, CAST(12000000.00 AS Decimal(18, 2)), N'7003099942', 1, N'velia.gonzalez', CAST(N'2014-09-02T10:38:42.517' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_LineasCredito] ([Id], [EmpresaId], [BancoId], [Monto], [Cuenta], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (5, 1, 14, CAST(10000000.00 AS Decimal(18, 2)), N'7003099835', 1, N'ada.carrillo', CAST(N'2014-09-02T10:39:09.300' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_LineasCredito] ([Id], [EmpresaId], [BancoId], [Monto], [Cuenta], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (6, 10, 14, CAST(2500000.00 AS Decimal(18, 2)), N'700367971', 0, N'ada.carrillo', CAST(N'2014-09-02T10:39:56.613' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_LineasCredito] ([Id], [EmpresaId], [BancoId], [Monto], [Cuenta], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (7, 4, 9, CAST(3000000.00 AS Decimal(18, 2)), N'8519076', 1, N'ada.carrillo', CAST(N'2014-09-04T12:54:58.063' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_LineasCredito] ([Id], [EmpresaId], [BancoId], [Monto], [Cuenta], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (8, 8, 9, CAST(3000000.00 AS Decimal(18, 2)), N'00', 0, N'ada.carrillo', CAST(N'2014-09-04T12:55:30.500' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_LineasCredito] ([Id], [EmpresaId], [BancoId], [Monto], [Cuenta], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (9, 5, 9, CAST(3000000.00 AS Decimal(18, 2)), N'6975833', 0, N'ada.carrillo', CAST(N'2014-09-04T12:57:05.630' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_LineasCredito] ([Id], [EmpresaId], [BancoId], [Monto], [Cuenta], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (10, 2, 9, CAST(5000000.00 AS Decimal(18, 2)), N'6992911', 1, N'ada.carrillo', CAST(N'2014-09-04T13:13:33.520' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_LineasCredito] ([Id], [EmpresaId], [BancoId], [Monto], [Cuenta], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (11, 1, 9, CAST(11000000.00 AS Decimal(18, 2)), N'8051922', 1, N'ada.carrillo', CAST(N'2014-09-04T13:14:17.990' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_LineasCredito] ([Id], [EmpresaId], [BancoId], [Monto], [Cuenta], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (12, 10, 9, CAST(3000000.00 AS Decimal(18, 2)), N'8394918', 0, N'ada.carrillo', CAST(N'2014-09-04T13:15:04.557' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_LineasCredito] ([Id], [EmpresaId], [BancoId], [Monto], [Cuenta], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (13, 7, 14, CAST(5000000.00 AS Decimal(18, 2)), N'7003099967', 0, N'ada.carrillo', CAST(N'2014-09-04T13:15:58.730' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_LineasCredito] ([Id], [EmpresaId], [BancoId], [Monto], [Cuenta], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (14, 4, 3, CAST(10000000.00 AS Decimal(18, 2)), N'0199601813', 0, N'ada.carrillo', CAST(N'2016-07-19T18:45:24.973' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_LineasCredito] ([Id], [EmpresaId], [BancoId], [Monto], [Cuenta], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (15, 4, 21, CAST(2850000.00 AS Decimal(18, 2)), N'2389849', 1, N'ada.carrillo', CAST(N'2016-07-19T18:46:51.070' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_LineasCredito] ([Id], [EmpresaId], [BancoId], [Monto], [Cuenta], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (16, 8, 3, CAST(10000000.00 AS Decimal(18, 2)), N'0165116619', 0, N'ada.carrillo', CAST(N'2016-07-19T18:48:50.060' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_LineasCredito] ([Id], [EmpresaId], [BancoId], [Monto], [Cuenta], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (17, 5, 3, CAST(5000000.00 AS Decimal(18, 2)), N'0198368252', 0, N'ada.carrillo', CAST(N'2016-07-19T18:49:48.793' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_LineasCredito] ([Id], [EmpresaId], [BancoId], [Monto], [Cuenta], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (18, 5, 21, CAST(2850000.00 AS Decimal(18, 2)), N'2420834', 0, N'ada.carrillo', CAST(N'2016-07-19T18:51:47.983' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_LineasCredito] ([Id], [EmpresaId], [BancoId], [Monto], [Cuenta], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (19, 2, 21, CAST(2488000.00 AS Decimal(18, 2)), N'8901003158', 1, N'ada.carrillo', CAST(N'2016-07-19T18:53:46.237' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_LineasCredito] ([Id], [EmpresaId], [BancoId], [Monto], [Cuenta], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (20, 1, 21, CAST(2603000.00 AS Decimal(18, 2)), N'8901003158', 1, N'ada.carrillo', CAST(N'2016-07-20T09:37:57.233' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_LineasCredito] ([Id], [EmpresaId], [BancoId], [Monto], [Cuenta], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (21, 8, 21, CAST(854500.00 AS Decimal(18, 2)), N'2357606', 0, N'ada.carrillo', CAST(N'2016-07-20T09:39:01.860' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_LineasCredito] ([Id], [EmpresaId], [BancoId], [Monto], [Cuenta], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (22, 10, 3, CAST(10000000.00 AS Decimal(18, 2)), N'123456789', 0, N'ada.carrillo', CAST(N'2016-07-20T09:39:55.643' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_LineasCredito] ([Id], [EmpresaId], [BancoId], [Monto], [Cuenta], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (23, 10, 21, CAST(854500.00 AS Decimal(18, 2)), N'2356889', 0, N'ada.carrillo', CAST(N'2016-07-20T09:40:38.927' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_LineasCredito] ([Id], [EmpresaId], [BancoId], [Monto], [Cuenta], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (24, 8, 30, CAST(0.00 AS Decimal(18, 2)), N'123456789', 0, N'ada.carrillo', CAST(N'2016-07-20T09:53:45.383' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_LineasCredito] ([Id], [EmpresaId], [BancoId], [Monto], [Cuenta], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (25, 8, 31, CAST(1000000.00 AS Decimal(18, 2)), N'123456789', 0, N'ada.carrillo', CAST(N'2016-07-20T09:54:27.743' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_LineasCredito] ([Id], [EmpresaId], [BancoId], [Monto], [Cuenta], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (26, 10, 30, CAST(0.00 AS Decimal(18, 2)), N'0103029236', 0, N'ada.carrillo', CAST(N'2016-07-20T09:55:51.183' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_LineasCredito] ([Id], [EmpresaId], [BancoId], [Monto], [Cuenta], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (27, 10, 31, CAST(1000000.00 AS Decimal(18, 2)), N'82500601514', 0, N'ada.carrillo', CAST(N'2016-07-20T09:56:33.857' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_LineasCredito] ([Id], [EmpresaId], [BancoId], [Monto], [Cuenta], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (28, 4, 31, CAST(3000000.00 AS Decimal(18, 2)), N'82500509845', 1, N'ada.carrillo', CAST(N'2016-07-20T09:57:26.733' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_LineasCredito] ([Id], [EmpresaId], [BancoId], [Monto], [Cuenta], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (29, 5, 31, CAST(1000000.00 AS Decimal(18, 2)), N'123456789', 0, N'ada.carrillo', CAST(N'2016-07-20T09:58:17.237' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_LineasCredito] ([Id], [EmpresaId], [BancoId], [Monto], [Cuenta], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (30, 13, 21, CAST(1000000.00 AS Decimal(18, 2)), N'2855328', 0, N'ada.carrillo', CAST(N'2016-12-29T11:53:39.483' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_LineasCredito] ([Id], [EmpresaId], [BancoId], [Monto], [Cuenta], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (31, 11, 14, CAST(2000000.00 AS Decimal(18, 2)), N'7003689973', 1, N'ada.carrillo', CAST(N'2017-04-24T18:25:58.180' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_LineasCredito] ([Id], [EmpresaId], [BancoId], [Monto], [Cuenta], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (32, 11, 2, CAST(5000000.00 AS Decimal(18, 2)), N'123456789', 1, N'ada.carrillo', CAST(N'2019-07-26T09:43:38.203' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_LineasCredito] ([Id], [EmpresaId], [BancoId], [Monto], [Cuenta], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (51, 14, 14, CAST(2500000.00 AS Decimal(18, 2)), N'700367971', 1, N'ada.carrillo', CAST(N'2021-09-24T10:12:23.197' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_LineasCredito] ([Id], [EmpresaId], [BancoId], [Monto], [Cuenta], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (52, 14, 9, CAST(3000000.00 AS Decimal(18, 2)), N'8394918', 1, N'ada.carrillo', CAST(N'2021-09-24T10:12:33.273' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_LineasCredito] ([Id], [EmpresaId], [BancoId], [Monto], [Cuenta], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (53, 14, 3, CAST(10000000.00 AS Decimal(18, 2)), N'123456789', 1, N'ada.carrillo', CAST(N'2021-09-24T10:12:38.383' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_LineasCredito] ([Id], [EmpresaId], [BancoId], [Monto], [Cuenta], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (54, 14, 21, CAST(854500.00 AS Decimal(18, 2)), N'2356889', 1, N'ada.carrillo', CAST(N'2021-09-24T10:12:42.323' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_LineasCredito] ([Id], [EmpresaId], [BancoId], [Monto], [Cuenta], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (55, 14, 30, CAST(0.00 AS Decimal(18, 2)), N'0103029236', 1, N'ada.carrillo', CAST(N'2021-09-24T10:12:45.010' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_LineasCredito] ([Id], [EmpresaId], [BancoId], [Monto], [Cuenta], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (56, 14, 31, CAST(1000000.00 AS Decimal(18, 2)), N'82500601514', 1, N'ada.carrillo', CAST(N'2021-09-24T10:12:47.510' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_LineasCredito] ([Id], [EmpresaId], [BancoId], [Monto], [Cuenta], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (57, 14, 39, CAST(65000.00 AS Decimal(18, 2)), N'65102312', 1, N'12cb7342-837e-45d9-892c-6818a38a3816', CAST(N'2023-02-14T17:23:24.443' AS DateTime), NULL, NULL)
SET IDENTITY_INSERT [dbo].[cat_LineasCredito] OFF
GO
SET IDENTITY_INSERT [dbo].[cat_Monedas] ON 

INSERT [dbo].[cat_Monedas] ([Id], [Nombre], [Abbr], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (1, N'Dólares Americanos', N'USD  ', N'Dólares Americanos', 1, N'IMPORTACION', CAST(N'2014-06-17T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Monedas] ([Id], [Nombre], [Abbr], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (2, N'Pesos Mexicanos', N'MXP  ', N'Pesos Mexicanos', 1, N'IMPORTACION', CAST(N'2014-06-17T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Monedas] ([Id], [Nombre], [Abbr], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (3, N'Euros', N'EUR  ', N'Euros', 1, N'ada.carrillo', CAST(N'2014-06-17T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Monedas] ([Id], [Nombre], [Abbr], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (4, N'Yen Japones', N'JPY', N'Yen Japones', 1, N'IMPORTACION', CAST(N'2014-06-17T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Monedas] ([Id], [Nombre], [Abbr], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (5, N'Yuan Chino', N'CNY', N'Yuan Chino', 1, N'macedonio.martinez', CAST(N'2021-09-24T10:36:25.960' AS DateTime), NULL, NULL)
SET IDENTITY_INSERT [dbo].[cat_Monedas] OFF
GO
SET IDENTITY_INSERT [dbo].[cat_Paises] ON 

INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (65, N'AUSTRIA', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (66, N'BELGICA', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (67, N'BULGARIA', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (68, N'CHIPRE', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (69, N'DINAMARCA', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (70, N'ESPAÑA', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (71, N'FINLANDIA', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (72, N'FRANCIA', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (73, N'GRECIA', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (74, N'HUNGRIA', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (75, N'IRLANDA', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (76, N'ITALIA', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (77, N'LUXEMBURGO', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (78, N'MALTA', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (79, N'PAISES BAJOS', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (80, N'POLONIA', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (81, N'PORTUGAL', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (82, N'REINO UNIDO', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (83, N'ALEMANIA', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (84, N'RUMANIA', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (85, N'SUECIA', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (86, N'LETONIA', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (87, N'ESTONIA', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (88, N'LITUANIA', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (89, N'REPUBLICA CHECA', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (90, N'REPUBLICA ESLOVACA', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (91, N'ESLOVENIA', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (92, N'ALBANIA', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (93, N'ISLANDIA', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (94, N'LIECHTENSTEIN', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (95, N'MONACO', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (96, N'NORUEGA', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (97, N'ANDORRA', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (98, N'SAN MARINO', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (99, N'SANTA SEDE', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (100, N'SUIZA', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (101, N'UCRANIA', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (102, N'MOLDAVIA', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (103, N'BELARUS', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (104, N'GEORGIA', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (105, N'BOSNIA Y HERZEGOVINA', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (106, N'CROACIA', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (107, N'ARMENIA', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (108, N'RUSIA', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (109, N'MACEDONIA ', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (110, N'SERBIA', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (111, N'MONTENEGRO', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (112, N'GUERNESEY', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (113, N'SVALBARD Y JAN MAYEN', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (114, N'ISLAS FEROE', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (115, N'ISLA DE MAN', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (116, N'GIBRALTAR', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (117, N'ISLAS DEL CANAL', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (118, N'JERSEY', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (119, N'ISLAS ALAND', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (120, N'TURQUIA', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (121, N'BURKINA FASO', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (122, N'ANGOLA', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (123, N'ARGELIA', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (124, N'BENIN', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (125, N'BOTSWANA', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (126, N'BURUNDI', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (127, N'CABO VERDE', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (128, N'CAMERUN', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (129, N'COMORES', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (130, N'CONGO', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (131, N'COSTA DE MARFIL', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (132, N'DJIBOUTI', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (133, N'EGIPTO', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (134, N'ETIOPIA', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (135, N'GABON', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (136, N'GAMBIA', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (137, N'GHANA', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (138, N'GUINEA', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (139, N'GUINEA-BISSAU', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (140, N'GUINEA ECUATORIAL', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (141, N'KENIA', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (142, N'LESOTHO', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (143, N'LIBERIA', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (144, N'LIBIA', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (145, N'MADAGASCAR', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (146, N'MALAWI', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (147, N'MALI', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (148, N'MARRUECOS', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (149, N'MAURICIO', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (150, N'MAURITANIA', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (151, N'MOZAMBIQUE', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (152, N'NAMIBIA', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (153, N'NIGER', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (154, N'NIGERIA', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (155, N'REPUBLICA CENTROAFRICANA', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (156, N'SUDAFRICA', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (157, N'RUANDA', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (158, N'SANTO TOME Y PRINCIPE', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (159, N'SENEGAL', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (160, N'SEYCHELLES', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (161, N'SIERRA LEONA', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (162, N'SOMALIA', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (163, N'SUDAN', NULL, NULL)
GO
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (164, N'SWAZILANDIA', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (165, N'TANZANIA', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (166, N'CHAD', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (167, N'TOGO', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (168, N'TUNEZ', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (169, N'UGANDA', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (170, N'REP.DEMOCRATICA DEL CONGO', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (171, N'ZAMBIA', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (172, N'ZIMBABWE', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (173, N'ERITREA', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (174, N'SANTA HELENA', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (175, N'REUNION', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (176, N'MAYOTTE', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (177, N'SAHARA OCCIDENTAL', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (178, N'CANADA', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (179, N'ESTADOS UNIDOS DE AMERICA', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (180, N'MEXICO', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (181, N'SAN PEDRO Y MIQUELON ', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (182, N'GROENLANDIA', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (183, N'ANTIGUA Y BARBUDA', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (184, N'BAHAMAS', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (185, N'BARBADOS', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (186, N'BELICE', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (187, N'COSTA RICA', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (188, N'CUBA', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (189, N'DOMINICA', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (190, N'EL SALVADOR', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (191, N'GRANADA', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (192, N'GUATEMALA', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (193, N'HAITI', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (194, N'HONDURAS', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (195, N'JAMAICA', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (196, N'NICARAGUA', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (197, N'PANAMA', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (198, N'SAN VICENTE Y LAS GRANADINAS', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (199, N'REPUBLICA DOMINICANA', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (200, N'TRINIDAD Y TOBAGO', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (201, N'SANTA LUCIA', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (202, N'SAN CRISTOBAL Y NIEVES', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (203, N'ISLAS CAIMÁN', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (204, N'ISLAS TURCAS Y CAICOS', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (205, N'ISLAS VÍRGENES DE LOS ESTADOS UNIDOS', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (206, N'GUADALUPE', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (207, N'ANTILLAS HOLANDESAS', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (208, N'SAN MARTIN (PARTE FRANCESA)', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (209, N'ARUBA', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (210, N'MONTSERRAT', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (211, N'ANGUILLA', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (212, N'SAN BARTOLOME', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (213, N'MARTINICA', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (214, N'PUERTO RICO', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (215, N'BERMUDAS', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (216, N'ISLAS VIRGENES BRITANICAS', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (217, N'ARGENTINA', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (218, N'BOLIVIA', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (219, N'BRASIL', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (220, N'COLOMBIA', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (221, N'CHILE', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (222, N'ECUADOR', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (223, N'GUYANA', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (224, N'PARAGUAY', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (225, N'PERU', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (226, N'SURINAM', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (227, N'URUGUAY', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (228, N'VENEZUELA', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (229, N'GUAYANA FRANCESA', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (230, N'ISLAS MALVINAS', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (231, N'AFGANISTAN', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (232, N'ARABIA SAUDI', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (233, N'BAHREIN', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (234, N'BANGLADESH', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (235, N'MYANMAR', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (236, N'CHINA', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (237, N'EMIRATOS ARABES UNIDOS', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (238, N'FILIPINAS', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (239, N'INDIA', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (240, N'INDONESIA', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (241, N'IRAQ', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (242, N'IRAN', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (243, N'ISRAEL', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (244, N'JAPON', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (245, N'JORDANIA', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (246, N'CAMBOYA', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (247, N'KUWAIT', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (248, N'LAOS', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (249, N'LIBANO', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (250, N'MALASIA', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (251, N'MALDIVAS', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (252, N'MONGOLIA', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (253, N'NEPAL', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (254, N'OMAN', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (255, N'PAKISTAN', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (256, N'QATAR', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (257, N'COREA', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (258, N'COREA DEL NORTE ', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (259, N'SINGAPUR', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (260, N'SIRIA', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (261, N'SRI LANKA', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (262, N'TAILANDIA', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (263, N'VIETNAM', NULL, NULL)
GO
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (264, N'BRUNEI', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (265, N'ISLAS MARSHALL', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (266, N'YEMEN', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (267, N'AZERBAIYAN', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (268, N'KAZAJSTAN', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (269, N'KIRGUISTAN', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (270, N'TADYIKISTAN', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (271, N'TURKMENISTAN', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (272, N'UZBEKISTAN', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (273, N'ISLAS MARIANAS DEL NORTE', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (274, N'PALESTINA', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (275, N'HONG KONG', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (276, N'BHUTÁN', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (277, N'GUAM', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (278, N'MACAO', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (279, N'AUSTRALIA', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (280, N'FIJI', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (281, N'NUEVA ZELANDA', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (282, N'PAPUA NUEVA GUINEA', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (283, N'ISLAS SALOMON', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (284, N'SAMOA', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (285, N'TONGA', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (286, N'VANUATU', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (287, N'MICRONESIA', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (288, N'TUVALU', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (289, N'ISLAS COOK', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (290, N'NAURU', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (291, N'PALAOS', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (292, N'TIMOR ORIENTAL', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (293, N'POLINESIA FRANCESA', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (294, N'ISLA NORFOLK', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (295, N'KIRIBATI', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (296, N'NIUE', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (297, N'ISLAS PITCAIRN', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (298, N'TOKELAU', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (299, N'NUEVA CALEDONIA', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (300, N'WALLIS Y FORTUNA', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (301, N'SAMOA AMERICANA', NULL, NULL)
INSERT [dbo].[cat_Paises] ([Id], [Nombre], [Alpha2Code], [Alpha3Code]) VALUES (1002, N'México', N'  ', N'   ')
SET IDENTITY_INSERT [dbo].[cat_Paises] OFF
GO
SET IDENTITY_INSERT [dbo].[cat_Proveedores] ON 

INSERT [dbo].[cat_Proveedores] ([Id], [EmpresaId], [PaisId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (1, 1, 180, N'Siti S.P.A.', NULL, 1, N'IMPORTACION', CAST(N'2014-06-17T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Proveedores] ([Id], [EmpresaId], [PaisId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (2, 1, 180, N'Didion International Inc.', NULL, 1, N'IMPORTACION', CAST(N'2014-06-17T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Proveedores] ([Id], [EmpresaId], [PaisId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (3, 1, 180, N'Pangborn Europe S.P.A.', NULL, 1, N'IMPORTACION', CAST(N'2014-06-17T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Proveedores] ([Id], [EmpresaId], [PaisId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (4, 1, 180, N'Tecno Italia S.R.L.', NULL, 1, N'IMPORTACION', CAST(N'2014-06-17T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Proveedores] ([Id], [EmpresaId], [PaisId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (5, 1, 180, N'Eurofilter S.P.A.', NULL, 1, N'IMPORTACION', CAST(N'2014-06-17T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Proveedores] ([Id], [EmpresaId], [PaisId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (6, 1, 76, N'BCF, S.R.L.', NULL, 1, N'ada.carrillo', CAST(N'2014-06-17T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Proveedores] ([Id], [EmpresaId], [PaisId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (7, 1, 180, N'Dueffe Electtomeccanica S.R.L.', NULL, 1, N'IMPORTACION', CAST(N'2014-06-17T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Proveedores] ([Id], [EmpresaId], [PaisId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (8, 1, 180, N'Pogliano Dei Frateli Pogliano', NULL, 1, N'IMPORTACION', CAST(N'2014-06-17T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Proveedores] ([Id], [EmpresaId], [PaisId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (9, 1, 180, N'Loramendi, S.A.', NULL, 1, N'IMPORTACION', CAST(N'2014-06-17T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Proveedores] ([Id], [EmpresaId], [PaisId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (10, 1, 180, N'Lb Officine Meccabiche S.P.A', NULL, 1, N'IMPORTACION', CAST(N'2014-06-17T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Proveedores] ([Id], [EmpresaId], [PaisId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (11, 11, 180, N'General Kinematics Corporation', NULL, 1, N'ada.carrillo', CAST(N'2014-06-17T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Proveedores] ([Id], [EmpresaId], [PaisId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (12, 1, 180, N'Nuovafima S.P.A.', NULL, 1, N'IMPORTACION', CAST(N'2014-06-17T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Proveedores] ([Id], [EmpresaId], [PaisId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (13, 1, 180, N'Industrie Bitossi S.P.A.', NULL, 1, N'IMPORTACION', CAST(N'2014-06-17T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Proveedores] ([Id], [EmpresaId], [PaisId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (14, 1, 180, N'Mp Industries Ltd', NULL, 1, N'IMPORTACION', CAST(N'2014-06-17T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Proveedores] ([Id], [EmpresaId], [PaisId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (15, 1, 180, N'Samsung Corporation', NULL, 1, N'IMPORTACION', CAST(N'2014-06-17T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Proveedores] ([Id], [EmpresaId], [PaisId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (16, 5, 236, N'Jinan Meide Casting Co. Ltd.', NULL, 1, N'velia.gonzalez', CAST(N'2014-06-17T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Proveedores] ([Id], [EmpresaId], [PaisId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (17, 1, 180, N'Minerales Y Carbones De Mexico', NULL, 1, N'IMPORTACION', CAST(N'2014-06-17T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Proveedores] ([Id], [EmpresaId], [PaisId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (18, 1, 180, N'Ningbo Industrial Power Brushe', NULL, 1, N'IMPORTACION', CAST(N'2014-06-17T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Proveedores] ([Id], [EmpresaId], [PaisId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (19, 2, 244, N'Shin El Kiko Co Ltd', NULL, 1, N'velia.gonzalez', CAST(N'2014-06-17T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Proveedores] ([Id], [EmpresaId], [PaisId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (20, 1, 180, N'Flexinox, S.A.', NULL, 1, N'IMPORTACION', CAST(N'2014-06-17T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Proveedores] ([Id], [EmpresaId], [PaisId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (21, 1, 180, N'Maymouth Developments Limites', NULL, 1, N'IMPORTACION', CAST(N'2014-06-17T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Proveedores] ([Id], [EmpresaId], [PaisId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (22, 1, 180, N'Shin Ei Kiko Co Ltd', NULL, 1, N'IMPORTACION', CAST(N'2014-06-17T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Proveedores] ([Id], [EmpresaId], [PaisId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (23, 1, 180, N'Duroitalia S.P.A.', NULL, 1, N'IMPORTACION', CAST(N'2014-06-17T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Proveedores] ([Id], [EmpresaId], [PaisId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (25, 5, 236, N'Jinan Huachen Industrial Co.', NULL, 1, N'velia.gonzalez', CAST(N'2014-06-17T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Proveedores] ([Id], [EmpresaId], [PaisId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (26, 1, 180, N'Qingdao 5-Star Trading Co Ltd', NULL, 1, N'IMPORTACION', CAST(N'2014-06-17T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Proveedores] ([Id], [EmpresaId], [PaisId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (27, 8, 100, N'Disa Industries A/G', NULL, 1, N'ada.carrillo', CAST(N'2014-06-17T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Proveedores] ([Id], [EmpresaId], [PaisId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (28, 4, 236, N'Beijing General Research Inst', NULL, 1, N'velia.gonzalez', CAST(N'2014-06-17T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Proveedores] ([Id], [EmpresaId], [PaisId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (29, 1, 180, N'Abb, Inc.', NULL, 1, N'IMPORTACION', CAST(N'2014-06-17T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Proveedores] ([Id], [EmpresaId], [PaisId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (30, 1, 180, N'New Zhong Yuan Ceramics Import', NULL, 1, N'IMPORTACION', CAST(N'2014-06-17T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Proveedores] ([Id], [EmpresaId], [PaisId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (31, 4, 236, N'Taizhou Leda Sanitary Kitchen Co LTD', NULL, 1, N'ada.carrillo', CAST(N'2014-06-17T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Proveedores] ([Id], [EmpresaId], [PaisId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (32, 1, 180, N'Sapphire Kitchenwere Pvt. Ltdl', NULL, 1, N'IMPORTACION', CAST(N'2014-06-17T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Proveedores] ([Id], [EmpresaId], [PaisId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (33, 1, 180, N'Dmw Exports Pvt Ltd', NULL, 1, N'IMPORTACION', CAST(N'2014-06-17T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Proveedores] ([Id], [EmpresaId], [PaisId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (34, 1, 180, N'B/R/K Vertriebs-Gmbh', NULL, 1, N'IMPORTACION', CAST(N'2014-06-17T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Proveedores] ([Id], [EmpresaId], [PaisId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (35, 1, 180, N'Industria Ceramica Fragnani Lt', NULL, 1, N'IMPORTACION', CAST(N'2014-06-17T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Proveedores] ([Id], [EmpresaId], [PaisId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (36, 1, 180, N'Bartolini Srl', NULL, 1, N'IMPORTACION', CAST(N'2014-06-17T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Proveedores] ([Id], [EmpresaId], [PaisId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (37, 1, 180, N'Total Merchandising & Marketin', NULL, 1, N'IMPORTACION', CAST(N'2014-06-17T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Proveedores] ([Id], [EmpresaId], [PaisId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (38, 2, 76, N'Sc Apulum Sa', NULL, 1, N'ada.carrillo', CAST(N'2014-06-17T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Proveedores] ([Id], [EmpresaId], [PaisId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (39, 1, 180, N'Linage, S.A.', NULL, 1, N'IMPORTACION', CAST(N'2014-06-17T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Proveedores] ([Id], [EmpresaId], [PaisId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (40, 1, 180, N'Bizon Corporation', NULL, 1, N'IMPORTACION', CAST(N'2014-06-17T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Proveedores] ([Id], [EmpresaId], [PaisId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (41, 1, 180, N'Beijin Bell Plumbing Mfg', NULL, 1, N'IMPORTACION', CAST(N'2014-06-17T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Proveedores] ([Id], [EmpresaId], [PaisId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (42, 1, 180, N'Shanxi Jianyu Forging', NULL, 1, N'IMPORTACION', CAST(N'2014-06-17T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Proveedores] ([Id], [EmpresaId], [PaisId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (43, 1, 180, N'M/S Paras Impo Expo Pvt', NULL, 1, N'IMPORTACION', CAST(N'2014-06-17T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Proveedores] ([Id], [EmpresaId], [PaisId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (44, 1, 180, N'Tmech Tecnomeccanica Srl', NULL, 1, N'IMPORTACION', CAST(N'2014-06-17T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Proveedores] ([Id], [EmpresaId], [PaisId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (45, 1, 180, N'Performance Machinery & Enginn', NULL, 1, N'IMPORTACION', CAST(N'2014-06-17T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Proveedores] ([Id], [EmpresaId], [PaisId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (46, 1, 180, N'Blissful Techonogy Corp', NULL, 1, N'IMPORTACION', CAST(N'2014-06-17T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Proveedores] ([Id], [EmpresaId], [PaisId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (47, 1, 180, N'Arjan Impex Pvt, Ltd', NULL, 1, N'IMPORTACION', CAST(N'2014-06-17T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Proveedores] ([Id], [EmpresaId], [PaisId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (48, 1, 180, N'Aurrenak S Coop', NULL, 1, N'IMPORTACION', CAST(N'2014-06-17T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Proveedores] ([Id], [EmpresaId], [PaisId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (49, 1, 180, N'Kunkel-Wagner Prozesstechnolog', NULL, 1, N'IMPORTACION', CAST(N'2014-06-17T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Proveedores] ([Id], [EmpresaId], [PaisId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (50, 1, 76, N'Air Power Group S.P.A.', NULL, 1, N'ada.carrillo', CAST(N'2014-06-17T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Proveedores] ([Id], [EmpresaId], [PaisId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (51, 1, 180, N'Ancora', NULL, 1, N'IMPORTACION', CAST(N'2014-06-17T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Proveedores] ([Id], [EmpresaId], [PaisId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (52, 1, 180, N'Kitchen Essentials', NULL, 1, N'IMPORTACION', CAST(N'2014-06-17T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Proveedores] ([Id], [EmpresaId], [PaisId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (53, 1, 180, N'Yonggao Co. Ltd', NULL, 1, N'IMPORTACION', CAST(N'2014-06-17T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Proveedores] ([Id], [EmpresaId], [PaisId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (54, 1, 180, N'Thermo Fisher Scientific', NULL, 1, N'IMPORTACION', CAST(N'2014-06-17T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Proveedores] ([Id], [EmpresaId], [PaisId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (55, 1, 180, N'Cristar, S.A.', NULL, 1, N'IMPORTACION', CAST(N'2014-06-17T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Proveedores] ([Id], [EmpresaId], [PaisId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (56, 1, 180, N'Promaster Associates Ltd', NULL, 1, N'IMPORTACION', CAST(N'2014-06-17T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Proveedores] ([Id], [EmpresaId], [PaisId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (57, 1, 180, N'Rio Tinto Iron And Titanium Am', NULL, 1, N'IMPORTACION', CAST(N'2014-06-17T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Proveedores] ([Id], [EmpresaId], [PaisId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (58, 2, 225, N'Manuf y Moldeos Plasticos SAC', NULL, 1, N'ada.carrillo', CAST(N'2014-06-17T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Proveedores] ([Id], [EmpresaId], [PaisId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (59, 1, 180, N'Industrial Quimica Del Nalon S', NULL, 1, N'IMPORTACION', CAST(N'2014-06-17T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Proveedores] ([Id], [EmpresaId], [PaisId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (60, 10, 179, N'Advanced Foundry Specialist Ll', NULL, 1, N'macedonio.martinez', CAST(N'2014-06-17T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Proveedores] ([Id], [EmpresaId], [PaisId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (61, 1, 180, N'World Equipment & Machine Sale', NULL, 1, N'IMPORTACION', CAST(N'2014-06-17T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Proveedores] ([Id], [EmpresaId], [PaisId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (62, 1, 180, N'Pusula Ithalat Ihracat Ve Paza', NULL, 1, N'IMPORTACION', CAST(N'2014-06-17T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Proveedores] ([Id], [EmpresaId], [PaisId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (63, 1, 180, N'Connexa, L.C.', NULL, 1, N'IMPORTACION', CAST(N'2014-06-17T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Proveedores] ([Id], [EmpresaId], [PaisId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (64, 4, 236, N'Guangdong Vanward New Electric', NULL, 1, N'velia.gonzalez', CAST(N'2014-06-17T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Proveedores] ([Id], [EmpresaId], [PaisId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (65, 1, 180, N'Fl Sales Inc', NULL, 1, N'IMPORTACION', CAST(N'2014-06-17T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Proveedores] ([Id], [EmpresaId], [PaisId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (66, 1, 180, N'P. Technologies Srl', NULL, 1, N'IMPORTACION', CAST(N'2014-06-17T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Proveedores] ([Id], [EmpresaId], [PaisId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (67, 1, 180, N'G. Benedikt Karlovy Vary S..R.', NULL, 1, N'IMPORTACION', CAST(N'2014-06-17T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Proveedores] ([Id], [EmpresaId], [PaisId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (68, 1, 180, N'Saint Gobain Vidros, S.A.', NULL, 1, N'IMPORTACION', CAST(N'2014-06-17T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Proveedores] ([Id], [EmpresaId], [PaisId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (69, 1, 180, N'Ttu Industrial Corp., Ltd', NULL, 1, N'IMPORTACION', CAST(N'2014-06-17T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Proveedores] ([Id], [EmpresaId], [PaisId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (70, 1, 180, N'Abp Induction Systems Gmbh', NULL, 1, N'IMPORTACION', CAST(N'2014-06-17T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Proveedores] ([Id], [EmpresaId], [PaisId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (71, 1, 180, N'Durst Phototechnic Ag', NULL, 1, N'IMPORTACION', CAST(N'2014-06-17T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Proveedores] ([Id], [EmpresaId], [PaisId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (72, 1, 180, N'Abp Induction Systems', NULL, 1, N'IMPORTACION', CAST(N'2014-06-17T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Proveedores] ([Id], [EmpresaId], [PaisId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (73, 1, 180, N'Luxalloys Sa', NULL, 1, N'IMPORTACION', CAST(N'2014-06-17T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Proveedores] ([Id], [EmpresaId], [PaisId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (74, 1, 180, N'Errece Maquinaria Ceramica S. L.', NULL, 1, N'ada.carrillo', CAST(N'2014-06-17T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Proveedores] ([Id], [EmpresaId], [PaisId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (75, 1, 180, N'Alpicom, S.A.', NULL, 1, N'IMPORTACION', CAST(N'2014-06-17T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Proveedores] ([Id], [EmpresaId], [PaisId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (76, 1, 180, N'Minerall Co, Srl', NULL, 1, N'IMPORTACION', CAST(N'2014-06-17T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Proveedores] ([Id], [EmpresaId], [PaisId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (77, 1, 76, N'Gruppo Tecnoferrari S. P.A.', NULL, 1, N'ada.carrillo', CAST(N'2014-06-17T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Proveedores] ([Id], [EmpresaId], [PaisId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (78, 1, 180, N'Trakya Sanayii', NULL, 1, N'IMPORTACION', CAST(N'2014-06-17T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Proveedores] ([Id], [EmpresaId], [PaisId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (79, 2, 120, N'Almesan Aluminyum Sanayi Ve Ti', NULL, 1, N'velia.gonzalez', CAST(N'2014-06-17T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Proveedores] ([Id], [EmpresaId], [PaisId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (80, 1, 180, N'Kerajet Sa', NULL, 1, N'IMPORTACION', CAST(N'2014-06-17T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Proveedores] ([Id], [EmpresaId], [PaisId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (81, 1, 180, N'Vives Azulejos Y Gres, S.A.', NULL, 1, N'ada.carrillo', CAST(N'2014-06-17T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Proveedores] ([Id], [EmpresaId], [PaisId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (82, 1, 180, N'Inductotherm Corp', NULL, 1, N'IMPORTACION', CAST(N'2014-06-17T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Proveedores] ([Id], [EmpresaId], [PaisId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (85, 1, 180, N'Euroequip, S.L.', NULL, 1, N'IMPORTACION', CAST(N'2014-06-17T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Proveedores] ([Id], [EmpresaId], [PaisId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (87, 4, 275, N'Powtek International Holdings Limited', NULL, 1, N'ada.carrillo', CAST(N'2014-06-17T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Proveedores] ([Id], [EmpresaId], [PaisId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (88, 1, 76, N'Sacmi Imola S. C.', NULL, 1, N'ada.carrillo', CAST(N'2014-06-17T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Proveedores] ([Id], [EmpresaId], [PaisId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (89, 4, 236, N'Guandong Xiangji Electrical Appliance Co, LTD', NULL, 1, N'ada.carrillo', CAST(N'2014-06-17T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Proveedores] ([Id], [EmpresaId], [PaisId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (90, 4, 236, N'Wor-Biz Trading Co, LTD (Anhui)', NULL, 1, N'ada.carrillo', CAST(N'2014-06-17T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Proveedores] ([Id], [EmpresaId], [PaisId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (91, 1, 180, N'American Alternative Insurance', NULL, 1, N'macedonio.martinez', CAST(N'2014-06-17T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Proveedores] ([Id], [EmpresaId], [PaisId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (92, 1, 180, N'ABC COKE A DIVISION OF DRUMMOND COMPANY  INC', NULL, 1, N'IMPORTACION', CAST(N'2014-06-17T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Proveedores] ([Id], [EmpresaId], [PaisId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (94, 1, 180, N'MERRILL LYNCH CAPITAL SERVICES, INC.', NULL, 1, N'IMPORTACION', CAST(N'2014-06-17T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Proveedores] ([Id], [EmpresaId], [PaisId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (96, 1, 0, N'SECO/WARWICK CORPORATION', N'test', 1, N'IMPORTACION', CAST(N'2014-06-17T00:00:00.000' AS DateTime), CAST(N'2023-04-21T11:06:44.047' AS DateTime), NULL)
INSERT [dbo].[cat_Proveedores] ([Id], [EmpresaId], [PaisId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (97, 1, 180, N'Simpson Technologies Corporation', NULL, 1, N'IMPORTACION', CAST(N'2014-06-17T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Proveedores] ([Id], [EmpresaId], [PaisId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (98, 8, 69, N'Disa Industries A/S', NULL, 1, N'macedonio.martinez', CAST(N'2014-06-17T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Proveedores] ([Id], [EmpresaId], [PaisId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (99, 11, 178, N'Wheelabrator Group (Canada) LTD', NULL, 1, N'ada.carrillo', CAST(N'2014-06-17T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Proveedores] ([Id], [EmpresaId], [PaisId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (100, 5, 275, N'Honyard Industries International Limited', NULL, 1, N'macedonio.martinez', CAST(N'2014-12-09T11:30:18.260' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Proveedores] ([Id], [EmpresaId], [PaisId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (101, 5, 275, N'Lianyungang Taiyangyu CO., LTD.', NULL, 1, N'macedonio.martinez', CAST(N'2014-12-09T11:33:23.143' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Proveedores] ([Id], [EmpresaId], [PaisId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (102, 5, 275, N'Zhejiang Mingshi Piping Systems CO., LTD.', NULL, 1, N'macedonio.martinez', CAST(N'2014-12-09T11:34:38.927' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Proveedores] ([Id], [EmpresaId], [PaisId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (103, 11, 70, N'Euro Equip, S.L.', NULL, 1, N'ada.carrillo', CAST(N'2014-12-29T12:04:05.070' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Proveedores] ([Id], [EmpresaId], [PaisId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (104, 2, 180, N'Sodmetal, S.A. DE C.V.', NULL, 1, N'macedonio.martinez', CAST(N'2015-03-03T12:48:12.827' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Proveedores] ([Id], [EmpresaId], [PaisId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (105, 11, 83, N'Yxlon International GMBH', NULL, 1, N'ada.carrillo', CAST(N'2015-03-30T17:53:34.583' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[cat_Proveedores] ([Id], [EmpresaId], [PaisId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (106, 4, 236, N'Wuhu Midea Kitchen and Bath Appliances MFG Co., LT', NULL, 1, N'ada.carrillo', CAST(N'2015-04-08T16:56:52.077' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Proveedores] ([Id], [EmpresaId], [PaisId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (107, 1, 76, N'System, S.P.A.', NULL, 1, N'ada.carrillo', CAST(N'2015-05-18T17:15:46.630' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Proveedores] ([Id], [EmpresaId], [PaisId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (108, 4, 179, N'Formtek International', NULL, 1, N'ada.carrillo', CAST(N'2015-05-21T10:17:12.363' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Proveedores] ([Id], [EmpresaId], [PaisId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (109, 5, 236, N'Tangshan Daocheng Casting CO., LTD.', NULL, 1, N'macedonio.martinez', CAST(N'2015-06-17T11:36:26.587' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Proveedores] ([Id], [EmpresaId], [PaisId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (110, 4, 236, N'Jiangmen Foreign Trade Group Co, LTD', NULL, 1, N'ada.carrillo', CAST(N'2015-06-24T11:40:44.717' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Proveedores] ([Id], [EmpresaId], [PaisId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (111, 1, 70, N'Argenta Ceramica SL', NULL, 1, N'ada.carrillo', CAST(N'2015-09-28T10:30:20.727' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Proveedores] ([Id], [EmpresaId], [PaisId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (112, 1, 76, N'Cami Depurazioni S.R.L.', NULL, 1, N'ada.carrillo', CAST(N'2015-10-14T10:25:14.313' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Proveedores] ([Id], [EmpresaId], [PaisId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (113, 5, 236, N'Zhejiang Mingshi Xingxin HVAC Technology CO., LTD.', NULL, 1, N'macedonio.martinez', CAST(N'2015-10-21T13:56:00.490' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Proveedores] ([Id], [EmpresaId], [PaisId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (114, 4, 257, N'Kiturami Co., LTD.', NULL, 1, N'ada.carrillo', CAST(N'2016-02-18T12:27:52.070' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Proveedores] ([Id], [EmpresaId], [PaisId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (115, 4, 236, N'Zhejiang Jiadele Solar Energy CO., Ltd.', NULL, 1, N'denis.leon', CAST(N'2016-03-14T17:30:12.540' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Proveedores] ([Id], [EmpresaId], [PaisId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (116, 12, 70, N'A. Gaindu, S.L.', NULL, 1, N'ada.carrillo', CAST(N'2016-03-28T17:40:54.797' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Proveedores] ([Id], [EmpresaId], [PaisId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (117, 4, 236, N'Midea Electric Trading (Singapore) Co Pte, LTD', NULL, 1, N'ada.carrillo', CAST(N'2016-04-12T10:41:02.087' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Proveedores] ([Id], [EmpresaId], [PaisId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (118, 5, 236, N'Baili Imp. and Exp. Co., LTD.', NULL, 1, N'macedonio.martinez', CAST(N'2016-05-09T12:51:01.263' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Proveedores] ([Id], [EmpresaId], [PaisId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (119, 11, 76, N'Magaldi Power S.P.A.', NULL, 1, N'ada.carrillo', CAST(N'2016-07-18T13:10:17.817' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Proveedores] ([Id], [EmpresaId], [PaisId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (120, 1, 76, N'Sassuolo Lab S.R.L.', NULL, 1, N'ada.carrillo', CAST(N'2016-08-01T17:05:57.763' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Proveedores] ([Id], [EmpresaId], [PaisId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (121, 5, 76, N'Giacomini Spa', NULL, 1, N'macedonio.martinez', CAST(N'2016-08-08T17:53:48.673' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Proveedores] ([Id], [EmpresaId], [PaisId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (122, 12, 70, N'Equifab, S.L.', NULL, 1, N'ada.carrillo', CAST(N'2016-10-12T16:54:45.967' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Proveedores] ([Id], [EmpresaId], [PaisId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (123, 10, 70, N'S.A. de Hornos Automaticos', NULL, 1, N'macedonio.martinez', CAST(N'2016-11-15T18:36:41.837' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Proveedores] ([Id], [EmpresaId], [PaisId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (124, 7, 76, N'BMR, S.P.A.', NULL, 1, N'ada.carrillo', CAST(N'2016-11-17T11:14:17.827' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Proveedores] ([Id], [EmpresaId], [PaisId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (125, 1, 76, N'Officina Ferrari Carlo S.P.A. a Socio Unico', NULL, 1, N'ada.carrillo', CAST(N'2016-11-23T16:50:58.400' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Proveedores] ([Id], [EmpresaId], [PaisId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (126, 5, 236, N'Jinan Mech Piping Technology CO. LTD', NULL, 1, N'macedonio.martinez', CAST(N'2016-11-28T17:35:14.807' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Proveedores] ([Id], [EmpresaId], [PaisId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (127, 10, 70, N'Loramendi S. COOP.', NULL, 1, N'macedonio.martinez', CAST(N'2016-12-18T13:33:27.717' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Proveedores] ([Id], [EmpresaId], [PaisId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (128, 11, 180, N'Centro Nacional de Control de Energía', NULL, 1, N'ada.carrillo', CAST(N'2016-12-20T09:45:17.733' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Proveedores] ([Id], [EmpresaId], [PaisId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (129, 5, 217, N'Giacomini Latinoamericana, S.A.', NULL, 1, N'macedonio.martinez', CAST(N'2016-12-29T08:53:35.903' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Proveedores] ([Id], [EmpresaId], [PaisId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (130, 5, 179, N'Avalon Risk Managment Insurance Agency, LLC', NULL, 1, N'macedonio.martinez', CAST(N'2017-01-11T17:58:35.130' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Proveedores] ([Id], [EmpresaId], [PaisId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (131, 1, 236, N'Foshan Nanogress Porcellanato Co,. Ltd', NULL, 1, N'ada.carrillo', CAST(N'2017-01-23T17:25:33.593' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Proveedores] ([Id], [EmpresaId], [PaisId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (132, 1, 76, N'Officina Bocedi, S.R.L.', NULL, 1, N'ada.carrillo', CAST(N'2017-02-13T09:43:04.717' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Proveedores] ([Id], [EmpresaId], [PaisId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (133, 1, 70, N'Innova Maquinaria Industrial, S.L.', NULL, 1, N'ada.carrillo', CAST(N'2017-04-07T13:24:55.090' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Proveedores] ([Id], [EmpresaId], [PaisId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (134, 1, 76, N'Certech SPA', NULL, 1, N'ada.carrillo', CAST(N'2017-04-17T11:02:56.943' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Proveedores] ([Id], [EmpresaId], [PaisId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (135, 12, 179, N'Balance Technology, Inc.', NULL, 1, N'ada.carrillo', CAST(N'2017-04-26T11:45:30.147' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Proveedores] ([Id], [EmpresaId], [PaisId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (136, 4, 236, N'Nanjing Cang Jia New Energy Technology Co., LTD', NULL, 1, N'ada.carrillo', CAST(N'2017-10-13T12:59:45.953' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Proveedores] ([Id], [EmpresaId], [PaisId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (137, 4, 236, N'Green Foam Insulation Material Co., LTD.', NULL, 1, N'ada.carrillo', CAST(N'2017-12-04T10:05:18.427' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Proveedores] ([Id], [EmpresaId], [PaisId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (138, 5, 76, N'Caleffi, S.P.A.', NULL, 1, N'macedonio.martinez', CAST(N'2018-04-19T10:47:27.723' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Proveedores] ([Id], [EmpresaId], [PaisId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (139, 1, 239, N'Millennium Overseas', NULL, 1, N'ada.carrillo', CAST(N'2018-05-23T09:29:47.843' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Proveedores] ([Id], [EmpresaId], [PaisId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (140, 4, 236, N'Ningbo Haishu Zhongyi Accurat Controls Manufacture', NULL, 1, N'ada.carrillo', CAST(N'2018-06-18T17:27:04.090' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Proveedores] ([Id], [EmpresaId], [PaisId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (141, 4, 236, N'Changzhou Jintan Feiya Trade Co., LTD', NULL, 1, N'ada.carrillo', CAST(N'2018-07-13T09:41:04.897' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Proveedores] ([Id], [EmpresaId], [PaisId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (142, 5, 236, N'Akan Enterprise Group (Shanghai) Co. Ltd.', NULL, 1, N'macedonio.martinez', CAST(N'2018-07-29T20:25:33.173' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Proveedores] ([Id], [EmpresaId], [PaisId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (143, 5, 236, N'Rifeng Enterprise (Foshan) Co. Ltd.', NULL, 1, N'macedonio.martinez', CAST(N'2018-07-29T21:11:37.777' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Proveedores] ([Id], [EmpresaId], [PaisId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (144, 5, 236, N'Hebei Jianzhi Casting Group LTD', NULL, 1, N'macedonio.martinez', CAST(N'2018-09-26T11:37:01.683' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Proveedores] ([Id], [EmpresaId], [PaisId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (145, 2, 236, N'Ningbo Shimaotong International CO., LTD', NULL, 1, N'macedonio.martinez', CAST(N'2018-12-27T16:30:29.267' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Proveedores] ([Id], [EmpresaId], [PaisId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (146, 1, 70, N'Tecnimol S.L.', NULL, 1, N'ada.carrillo', CAST(N'2019-02-25T10:29:39.363' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Proveedores] ([Id], [EmpresaId], [PaisId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (147, 1, 76, N'Italvision SRL', NULL, 1, N'ada.carrillo', CAST(N'2019-06-06T08:51:38.813' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Proveedores] ([Id], [EmpresaId], [PaisId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (148, 1, 76, N'Siti B and T Group S. P. A.', NULL, 1, N'ada.carrillo', CAST(N'2019-10-24T16:54:07.780' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Proveedores] ([Id], [EmpresaId], [PaisId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (149, 2, 236, N'Promaster Associates, LTD', NULL, 1, N'macedonio.martinez', CAST(N'2020-06-25T11:09:42.293' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Proveedores] ([Id], [EmpresaId], [PaisId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (150, 11, 236, N'Changzhou Thinks Environmental Technology Co.,Ltd', NULL, 1, N'ada.carrillo', CAST(N'2020-07-30T17:10:55.153' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Proveedores] ([Id], [EmpresaId], [PaisId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (151, 11, 179, N'Doosan Machine Tools America', NULL, 1, N'ada.carrillo', CAST(N'2021-03-17T13:54:56.713' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Proveedores] ([Id], [EmpresaId], [PaisId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (152, 2, 7, N'Tulip Housewares PTE LTD', N'asdfasd', 1, N'macedonio.martinez', CAST(N'2022-01-26T18:28:37.987' AS DateTime), CAST(N'2023-04-21T11:08:20.937' AS DateTime), NULL)
INSERT [dbo].[cat_Proveedores] ([Id], [EmpresaId], [PaisId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (153, 10, 8, N'Vibrotech Engineering SL', N'test', 1, N'macedonio.martinez', CAST(N'2022-02-18T14:42:59.677' AS DateTime), CAST(N'2023-04-21T11:08:13.957' AS DateTime), NULL)
INSERT [dbo].[cat_Proveedores] ([Id], [EmpresaId], [PaisId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (154, 10, 5, N'Changzhou Hidea Machinery Co., Ltd.', N'tet', 1, N'macedonio.martinez', CAST(N'2022-02-24T12:56:00.770' AS DateTime), CAST(N'2023-04-21T11:08:07.040' AS DateTime), NULL)
INSERT [dbo].[cat_Proveedores] ([Id], [EmpresaId], [PaisId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (155, 1, 6, N'Mectiles Italia S.R.L.', N'test', 1, N'ada.carrillo', CAST(N'2022-07-28T12:11:03.127' AS DateTime), CAST(N'2023-04-21T11:07:51.007' AS DateTime), NULL)
INSERT [dbo].[cat_Proveedores] ([Id], [EmpresaId], [PaisId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (156, 1, 4, N'System Ceramics S.P.A.', N'test', 1, N'ada.carrillo', CAST(N'2022-08-05T11:38:45.307' AS DateTime), CAST(N'2023-04-21T11:04:11.323' AS DateTime), NULL)
INSERT [dbo].[cat_Proveedores] ([Id], [EmpresaId], [PaisId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (157, 1, 1002, N'Sermat S. R. L.', N'test', 1, N'ada.carrillo', CAST(N'2022-08-22T12:05:49.100' AS DateTime), CAST(N'2023-04-28T12:48:06.823' AS DateTime), NULL)
INSERT [dbo].[cat_Proveedores] ([Id], [EmpresaId], [PaisId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (158, 14, 1002, N'Test', N'Test', 1, N'12cb7342-837e-45d9-892c-6818a38a3816', CAST(N'2023-04-21T10:57:30.810' AS DateTime), CAST(N'2023-04-25T16:45:32.667' AS DateTime), NULL)
INSERT [dbo].[cat_Proveedores] ([Id], [EmpresaId], [PaisId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (159, 16, 1, N'Prueba 2', N'test', 0, N'12cb7342-837e-45d9-892c-6818a38a3816', CAST(N'2023-04-21T10:58:00.280' AS DateTime), CAST(N'2023-04-21T11:01:53.417' AS DateTime), NULL)
INSERT [dbo].[cat_Proveedores] ([Id], [EmpresaId], [PaisId], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (160, 14, 1, N'asdfasdfa', N'test', 0, N'12cb7342-837e-45d9-892c-6818a38a3816', CAST(N'2023-04-21T11:00:37.247' AS DateTime), CAST(N'2023-04-21T11:01:52.773' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[cat_Proveedores] OFF
GO
SET IDENTITY_INSERT [dbo].[cat_Proyectos] ON 

INSERT [dbo].[cat_Proyectos] ([Id], [EmpresaId], [Nombre], [Descripcion], [FechaApertura], [FechaCierre], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (1, 1, N'No Definido', N'No definido', CAST(N'2014-01-01T00:00:00.000' AS DateTime), NULL, 1, N'ada.carrillo', CAST(N'2014-06-17T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Proyectos] ([Id], [EmpresaId], [Nombre], [Descripcion], [FechaApertura], [FechaCierre], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (2, 1, N'San Jose II', N'Nueva Planta  para Producción de Recubrimiento Cerámico', CAST(N'1999-12-01T00:00:00.000' AS DateTime), NULL, 1, N'IMPORTACION', CAST(N'2014-06-17T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Proyectos] ([Id], [EmpresaId], [Nombre], [Descripcion], [FechaApertura], [FechaCierre], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (3, 1, N'Adquisición de Maquinaria', N'Compra de Maquinaría que no pertenece a un proyecto específico', CAST(N'2000-05-23T00:00:00.000' AS DateTime), NULL, 1, N'IMPORTACION', CAST(N'2014-06-17T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Proyectos] ([Id], [EmpresaId], [Nombre], [Descripcion], [FechaApertura], [FechaCierre], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (4, 1, N'Proyecto Bajío', N'Proyecto Cifunsa Bajío Autopartes', CAST(N'2003-01-27T00:00:00.000' AS DateTime), NULL, 1, N'IMPORTACION', CAST(N'2014-06-17T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Proyectos] ([Id], [EmpresaId], [Nombre], [Descripcion], [FechaApertura], [FechaCierre], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (5, 1, N'Proyecto Planta Chihuahua', N'Planta Vitromex Chihuahua', CAST(N'2003-09-01T00:00:00.000' AS DateTime), NULL, 1, N'IMPORTACION', CAST(N'2014-06-17T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Proyectos] ([Id], [EmpresaId], [Nombre], [Descripcion], [FechaApertura], [FechaCierre], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (6, 1, N'Maquinaría Para Planta Saltillo', N'Maquinaria para Planta Saltillo', CAST(N'2005-08-01T00:00:00.000' AS DateTime), NULL, 1, N'IMPORTACION', CAST(N'2014-06-17T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Proyectos] ([Id], [EmpresaId], [Nombre], [Descripcion], [FechaApertura], [FechaCierre], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (7, 1, N'Technocast', N'Compañia Joint Venture con Seprosa Y Catterpillar', CAST(N'2005-10-01T00:00:00.000' AS DateTime), NULL, 1, N'IMPORTACION', CAST(N'2014-06-17T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Proyectos] ([Id], [EmpresaId], [Nombre], [Descripcion], [FechaApertura], [FechaCierre], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (8, 1, N'Maquinaría para SLP', N'Pedido de maquinaria para San Luis Potosi', CAST(N'2006-05-16T00:00:00.000' AS DateTime), NULL, 1, N'ada.carrillo', CAST(N'2014-06-17T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Proyectos] ([Id], [EmpresaId], [Nombre], [Descripcion], [FechaApertura], [FechaCierre], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (9, 1, N'Herramental', N'Adquisición De Herramental', CAST(N'2008-03-25T00:00:00.000' AS DateTime), NULL, 1, N'IMPORTACION', CAST(N'2014-06-17T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Proyectos] ([Id], [EmpresaId], [Nombre], [Descripcion], [FechaApertura], [FechaCierre], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (10, 1, N'Italy Projet', N'Maquinaría Especial para Piso', CAST(N'2008-06-25T00:00:00.000' AS DateTime), NULL, 1, N'IMPORTACION', CAST(N'2014-06-17T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Proyectos] ([Id], [EmpresaId], [Nombre], [Descripcion], [FechaApertura], [FechaCierre], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (11, 1, N'Italy Brixen', N'Impresora Laser', CAST(N'2011-08-29T00:00:00.000' AS DateTime), NULL, 1, N'IMPORTACION', CAST(N'2014-06-17T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Proyectos] ([Id], [EmpresaId], [Nombre], [Descripcion], [FechaApertura], [FechaCierre], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (12, 1, N'Expansión Tisamatic', N'Compra de Maquinaria para Expansión De Tisamatic San Luis Potosí', CAST(N'2013-01-01T00:00:00.000' AS DateTime), NULL, 1, N'IMPORTACION', CAST(N'2014-06-17T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Proyectos] ([Id], [EmpresaId], [Nombre], [Descripcion], [FechaApertura], [FechaCierre], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (13, 1, N'Proyecto Evercast', N'Contrucción de nueva planta', CAST(N'2014-05-01T00:00:00.000' AS DateTime), NULL, 1, N'IMPORTACION', CAST(N'2014-06-17T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Proyectos] ([Id], [EmpresaId], [Nombre], [Descripcion], [FechaApertura], [FechaCierre], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (14, 1, N'Maquinaria para San José', N'Compra de maquinaria para planta San José, Queretaro', CAST(N'2015-10-14T00:00:00.000' AS DateTime), NULL, 1, N'ada.carrillo', CAST(N'2015-10-14T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Proyectos] ([Id], [EmpresaId], [Nombre], [Descripcion], [FechaApertura], [FechaCierre], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (15, 1, N'Outsourcing', N'Compra de material para fabricación de productos.', CAST(N'2016-04-12T00:00:00.000' AS DateTime), NULL, 1, N'ada.carrillo', CAST(N'2016-04-12T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Proyectos] ([Id], [EmpresaId], [Nombre], [Descripcion], [FechaApertura], [FechaCierre], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (16, 1, N'Vitromex USA', N'Outsourcing - Compras para Vitromex USA', CAST(N'2016-06-16T00:00:00.000' AS DateTime), NULL, 0, N'ada.carrillo', CAST(N'2016-06-16T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Proyectos] ([Id], [EmpresaId], [Nombre], [Descripcion], [FechaApertura], [FechaCierre], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (17, 1, N'Capacidad Productiva Loseta SLP', N'Compra de maquinaria para incrementar la capacidad productiva en loseta de la planta en San Luis Potosí', CAST(N'2017-03-01T00:00:00.000' AS DateTime), NULL, 1, N'ada.carrillo', CAST(N'2017-03-15T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Proyectos] ([Id], [EmpresaId], [Nombre], [Descripcion], [FechaApertura], [FechaCierre], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (18, 1, N'Capacidad Productiva Loseta Chihuahua', N'Compra de maquinaria para incrementar la capacidad productiva de loseta en planta Chihuahua', CAST(N'2017-03-01T00:00:00.000' AS DateTime), NULL, 1, N'ada.carrillo', CAST(N'2017-03-15T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Proyectos] ([Id], [EmpresaId], [Nombre], [Descripcion], [FechaApertura], [FechaCierre], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (19, 13, N'Outsourcing VUS', N'Compra de producto para Vitromex USA', CAST(N'2017-09-01T00:00:00.000' AS DateTime), NULL, 0, N'ada.carrillo', CAST(N'2017-09-22T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Proyectos] ([Id], [EmpresaId], [Nombre], [Descripcion], [FechaApertura], [FechaCierre], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (20, 1, N'Capacidad Productiva Loseta San José 1', N'Capacidad Productiva Loseta San José, Querétaro, Planta 1', CAST(N'2018-08-20T00:00:00.000' AS DateTime), CAST(N'2018-08-20T00:00:00.000' AS DateTime), 1, N'ada.carrillo', CAST(N'2018-08-20T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_Proyectos] ([Id], [EmpresaId], [Nombre], [Descripcion], [FechaApertura], [FechaCierre], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (21, 10, N'L6', N'Proyecto de Expansión Línea 6 Draxton México', CAST(N'2021-01-08T00:00:00.000' AS DateTime), NULL, 1, N'macedonio.martinez', CAST(N'2022-02-23T00:00:00.000' AS DateTime), NULL, NULL)
SET IDENTITY_INSERT [dbo].[cat_Proyectos] OFF
GO
SET IDENTITY_INSERT [dbo].[cat_TiposActivo] ON 

INSERT [dbo].[cat_TiposActivo] ([Id], [Nombre], [Responsable], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (938, N'Maquinaria y Equipo', N'', N'', 1, N'12cb7342-837e-45d9-892c-6818a38a3816', CAST(N'2023-02-13T10:38:47.630' AS DateTime), CAST(N'2023-03-06T09:01:15.747' AS DateTime), NULL)
INSERT [dbo].[cat_TiposActivo] ([Id], [Nombre], [Responsable], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (939, N'Outsourcing', NULL, NULL, 1, N'12cb7342-837e-45d9-892c-6818a38a3816', CAST(N'2023-02-13T10:38:47.630' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_TiposActivo] ([Id], [Nombre], [Responsable], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (940, N'Materia Prima', NULL, NULL, 1, N'12cb7342-837e-45d9-892c-6818a38a3816', CAST(N'2023-02-13T10:38:47.630' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_TiposActivo] ([Id], [Nombre], [Responsable], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (941, N'Refacciones', NULL, NULL, 1, N'12cb7342-837e-45d9-892c-6818a38a3816', CAST(N'2023-02-13T10:38:47.630' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_TiposActivo] ([Id], [Nombre], [Responsable], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (942, N'Otro', NULL, NULL, 1, N'12cb7342-837e-45d9-892c-6818a38a3816', CAST(N'2023-02-13T10:38:47.630' AS DateTime), NULL, NULL)
SET IDENTITY_INSERT [dbo].[cat_TiposActivo] OFF
GO
SET IDENTITY_INSERT [dbo].[cat_TiposCobertura] ON 

INSERT [dbo].[cat_TiposCobertura] ([Id], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (1, N'Cobertura Tipo 1', N'', 1, N'12cb7342-837e-45d9-892c-6818a38a3816', CAST(N'2023-02-13T11:18:28.940' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_TiposCobertura] ([Id], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (2, N'Cobertura Tipo 2', N'', 1, N'12cb7342-837e-45d9-892c-6818a38a3816', CAST(N'2023-02-13T11:18:35.687' AS DateTime), NULL, NULL)
SET IDENTITY_INSERT [dbo].[cat_TiposCobertura] OFF
GO
SET IDENTITY_INSERT [dbo].[cat_TiposComision] ON 

INSERT [dbo].[cat_TiposComision] ([Id], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (1, N'COMISION POR APERTURA', N'COMISION POR APERTURA', 1, N'velia.gonzalez', CAST(N'2014-06-17T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_TiposComision] ([Id], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (2, N'COMISION POR DISPOSICION/NEGOC', N'COMISION POR DISPOSICION/NEGOC', 1, N'IMPORTACION', CAST(N'2014-06-17T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_TiposComision] ([Id], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (3, N'COM. BANCO CORRESPONSAL', N'COM. BANCO CORRESPONSAL', 1, N'IMPORTACION', CAST(N'2014-06-17T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_TiposComision] ([Id], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (4, N'COM. POR PAGO DIFERIDO', N'COM. POR PAGO DIFERIDO', 1, N'velia.gonzalez', CAST(N'2014-06-17T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_TiposComision] ([Id], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (5, N'COM. POR MODIFICACION', N'COM. POR MODIFICACION', 1, N'velia.gonzalez', CAST(N'2014-06-17T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_TiposComision] ([Id], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (6, N'COMISION POR CANCELACION', N'COMISION POR CANCELACION', 1, N'IMPORTACION', CAST(N'2014-06-17T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_TiposComision] ([Id], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (7, N'COMISION DE ACEPTACION', N'COMISION DE ACEPTACION', 1, N'velia.gonzalez', CAST(N'2014-06-17T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_TiposComision] ([Id], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (8, N'COM. BANCO CORRESPONSAL POR ENMIENDA', N'COM. BANCO CORRESPONSAL POR ENMIENDA', 1, N'IMPORTACION', CAST(N'2014-06-17T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_TiposComision] ([Id], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (9, N'COM. DE CONFIRMACION', N'COM. DE CONFIRMACION', 1, N'ada.carrillo', CAST(N'2015-06-02T11:02:39.900' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_TiposComision] ([Id], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (10, N'COM. BANCO CORRESPONSAL POR APERTURA', N'COM. BANCO CORRESPONSAL POR APERTURA', 1, N'ada.carrillo', CAST(N'2015-10-05T10:35:52.007' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_TiposComision] ([Id], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (11, N'COM. BANCO CORRESPONSAL POR MODIFICACION', N'COM. BANCO CORRESPONSAL POR MODIFICACION', 1, N'macedonio.martinez', CAST(N'2016-07-28T10:07:21.187' AS DateTime), NULL, NULL)
INSERT [dbo].[cat_TiposComision] ([Id], [Nombre], [Descripcion], [Activo], [CreadoPor], [Creado], [Actualizado], [Eliminado]) VALUES (12, N'COM. BANCO CORRESPONSAL CONFIRMACION', N'COM. BANCO CORRESPONSAL CONFIRMACION', 1, N'macedonio.martinez', CAST(N'2017-11-16T16:52:49.740' AS DateTime), NULL, NULL)
SET IDENTITY_INSERT [dbo].[cat_TiposComision] OFF
GO
SET IDENTITY_INSERT [dbo].[proc_BitacoraMovimientos] ON 

INSERT [dbo].[proc_BitacoraMovimientos] ([Id], [Titulo], [Descripcion], [CartaCreditoId], [ModeloNombre], [ModeloId], [CreadoPorId], [Creado]) VALUES (1, N'Pago - Modificación', N'Se registró modificación de pago en carta de crédito', NULL, N'Pago', 1, NULL, CAST(N'2023-05-16T15:48:57.167' AS DateTime))
INSERT [dbo].[proc_BitacoraMovimientos] ([Id], [Titulo], [Descripcion], [CartaCreditoId], [ModeloNombre], [ModeloId], [CreadoPorId], [Creado]) VALUES (2, N'Pago - Modificación', N'Se registró modificación de pago en carta de crédito', NULL, N'Pago', 2, NULL, CAST(N'2023-05-16T15:49:02.830' AS DateTime))
INSERT [dbo].[proc_BitacoraMovimientos] ([Id], [Titulo], [Descripcion], [CartaCreditoId], [ModeloNombre], [ModeloId], [CreadoPorId], [Creado]) VALUES (3, N'Pago - Modificación', N'Se registró modificación de pago en carta de crédito', NULL, N'Pago', 3, NULL, CAST(N'2023-05-16T15:49:08.730' AS DateTime))
INSERT [dbo].[proc_BitacoraMovimientos] ([Id], [Titulo], [Descripcion], [CartaCreditoId], [ModeloNombre], [ModeloId], [CreadoPorId], [Creado]) VALUES (4, N'Pago - Modificación', N'Se registró modificación de pago en carta de crédito', NULL, N'Pago', 8, NULL, CAST(N'2023-05-16T15:49:13.423' AS DateTime))
INSERT [dbo].[proc_BitacoraMovimientos] ([Id], [Titulo], [Descripcion], [CartaCreditoId], [ModeloNombre], [ModeloId], [CreadoPorId], [Creado]) VALUES (5, N'Pago - Modificación', N'Se registró modificación de pago en carta de crédito', NULL, N'Pago', 11, NULL, CAST(N'2023-05-16T15:49:18.380' AS DateTime))
INSERT [dbo].[proc_BitacoraMovimientos] ([Id], [Titulo], [Descripcion], [CartaCreditoId], [ModeloNombre], [ModeloId], [CreadoPorId], [Creado]) VALUES (6, N'Pago - Modificación', N'Se registró modificación de pago en carta de crédito', NULL, N'Pago', 11, NULL, CAST(N'2023-05-16T15:49:21.407' AS DateTime))
INSERT [dbo].[proc_BitacoraMovimientos] ([Id], [Titulo], [Descripcion], [CartaCreditoId], [ModeloNombre], [ModeloId], [CreadoPorId], [Creado]) VALUES (7, N'Pago - Modificación', N'Se registró modificación de pago en carta de crédito', NULL, N'Pago', 9, NULL, CAST(N'2023-05-16T15:49:26.740' AS DateTime))
INSERT [dbo].[proc_BitacoraMovimientos] ([Id], [Titulo], [Descripcion], [CartaCreditoId], [ModeloNombre], [ModeloId], [CreadoPorId], [Creado]) VALUES (8, N'Pago - Modificación', N'Se registró modificación de pago en carta de crédito', NULL, N'Pago', 10, NULL, CAST(N'2023-05-16T15:49:32.570' AS DateTime))
INSERT [dbo].[proc_BitacoraMovimientos] ([Id], [Titulo], [Descripcion], [CartaCreditoId], [ModeloNombre], [ModeloId], [CreadoPorId], [Creado]) VALUES (9, N'Pago - Modificación', N'Se registró modificación de pago en carta de crédito', NULL, N'Pago', 28, NULL, CAST(N'2023-05-16T15:50:34.370' AS DateTime))
INSERT [dbo].[proc_BitacoraMovimientos] ([Id], [Titulo], [Descripcion], [CartaCreditoId], [ModeloNombre], [ModeloId], [CreadoPorId], [Creado]) VALUES (10, N'Pago - Modificación', N'Se registró modificación de pago en carta de crédito', NULL, N'Pago', 28, NULL, CAST(N'2023-05-16T15:50:37.547' AS DateTime))
INSERT [dbo].[proc_BitacoraMovimientos] ([Id], [Titulo], [Descripcion], [CartaCreditoId], [ModeloNombre], [ModeloId], [CreadoPorId], [Creado]) VALUES (11, N'Pago - Modificación', N'Se registró modificación de pago en carta de crédito', NULL, N'Pago', 28, NULL, CAST(N'2023-05-16T15:50:41.767' AS DateTime))
INSERT [dbo].[proc_BitacoraMovimientos] ([Id], [Titulo], [Descripcion], [CartaCreditoId], [ModeloNombre], [ModeloId], [CreadoPorId], [Creado]) VALUES (12, N'Pago - Modificación', N'Se registró modificación de pago en carta de crédito', NULL, N'Pago', 29, NULL, CAST(N'2023-05-16T15:50:49.973' AS DateTime))
INSERT [dbo].[proc_BitacoraMovimientos] ([Id], [Titulo], [Descripcion], [CartaCreditoId], [ModeloNombre], [ModeloId], [CreadoPorId], [Creado]) VALUES (13, N'Pago - Modificación', N'Se registró modificación de pago en carta de crédito', NULL, N'Pago', 32, NULL, CAST(N'2023-05-16T15:50:53.980' AS DateTime))
INSERT [dbo].[proc_BitacoraMovimientos] ([Id], [Titulo], [Descripcion], [CartaCreditoId], [ModeloNombre], [ModeloId], [CreadoPorId], [Creado]) VALUES (14, N'Pago - Modificación', N'Se registró modificación de pago en carta de crédito', NULL, N'Pago', 23, NULL, CAST(N'2023-05-16T15:52:34.543' AS DateTime))
INSERT [dbo].[proc_BitacoraMovimientos] ([Id], [Titulo], [Descripcion], [CartaCreditoId], [ModeloNombre], [ModeloId], [CreadoPorId], [Creado]) VALUES (15, N'Pago - Modificación', N'Se registró modificación de pago en carta de crédito', NULL, N'Pago', 24, NULL, CAST(N'2023-05-16T15:52:38.270' AS DateTime))
INSERT [dbo].[proc_BitacoraMovimientos] ([Id], [Titulo], [Descripcion], [CartaCreditoId], [ModeloNombre], [ModeloId], [CreadoPorId], [Creado]) VALUES (16, N'Pago - Modificación', N'Se registró modificación de pago en carta de crédito', NULL, N'Pago', 17, NULL, CAST(N'2023-05-16T15:52:44.480' AS DateTime))
INSERT [dbo].[proc_BitacoraMovimientos] ([Id], [Titulo], [Descripcion], [CartaCreditoId], [ModeloNombre], [ModeloId], [CreadoPorId], [Creado]) VALUES (17, N'Pago - Modificación', N'Se registró modificación de pago en carta de crédito', NULL, N'Pago', 16, NULL, CAST(N'2023-05-16T15:52:52.093' AS DateTime))
INSERT [dbo].[proc_BitacoraMovimientos] ([Id], [Titulo], [Descripcion], [CartaCreditoId], [ModeloNombre], [ModeloId], [CreadoPorId], [Creado]) VALUES (18, N'Pago - Modificación', N'Se registró modificación de pago en carta de crédito', NULL, N'Pago', 13, NULL, CAST(N'2023-05-16T15:52:57.463' AS DateTime))
INSERT [dbo].[proc_BitacoraMovimientos] ([Id], [Titulo], [Descripcion], [CartaCreditoId], [ModeloNombre], [ModeloId], [CreadoPorId], [Creado]) VALUES (19, N'Pago - Modificación', N'Se registró modificación de pago en carta de crédito', NULL, N'Pago', 18, NULL, CAST(N'2023-05-16T15:53:23.643' AS DateTime))
INSERT [dbo].[proc_BitacoraMovimientos] ([Id], [Titulo], [Descripcion], [CartaCreditoId], [ModeloNombre], [ModeloId], [CreadoPorId], [Creado]) VALUES (20, N'Pago - Modificación', N'Se registró modificación de pago en carta de crédito', NULL, N'Pago', 35, NULL, CAST(N'2023-05-16T15:57:51.063' AS DateTime))
INSERT [dbo].[proc_BitacoraMovimientos] ([Id], [Titulo], [Descripcion], [CartaCreditoId], [ModeloNombre], [ModeloId], [CreadoPorId], [Creado]) VALUES (21, N'Pago - Modificación', N'Se registró modificación de pago en carta de crédito', NULL, N'Pago', 36, NULL, CAST(N'2023-05-16T15:57:54.860' AS DateTime))
INSERT [dbo].[proc_BitacoraMovimientos] ([Id], [Titulo], [Descripcion], [CartaCreditoId], [ModeloNombre], [ModeloId], [CreadoPorId], [Creado]) VALUES (22, N'Pago - Modificación', N'Se registró modificación de pago en carta de crédito', NULL, N'Pago', 39, NULL, CAST(N'2023-05-16T15:58:06.397' AS DateTime))
INSERT [dbo].[proc_BitacoraMovimientos] ([Id], [Titulo], [Descripcion], [CartaCreditoId], [ModeloNombre], [ModeloId], [CreadoPorId], [Creado]) VALUES (23, N'Pago - Modificación', N'Se registró modificación de pago en carta de crédito', NULL, N'Pago', 41, NULL, CAST(N'2023-05-16T15:58:10.240' AS DateTime))
SET IDENTITY_INSERT [dbo].[proc_BitacoraMovimientos] OFF
GO
SET IDENTITY_INSERT [dbo].[proc_CartaCreditoComisiones] ON 

INSERT [dbo].[proc_CartaCreditoComisiones] ([Id], [NumComision], [CartaCreditoId], [ComisionId], [NoComision], [EnmiendaId], [FechaCargo], [MonedaId], [Monto], [Activo], [CreadoPor], [Estatus], [PagoId], [PagoMonedaId], [Comentarios], [FechaPago], [TipoCambio], [MontoPagado]) VALUES (1, 1, N'AB347A0D-F74A-4167-8E21-5104B379EF29', 73, NULL, NULL, CAST(N'2023-05-01T00:00:00.000' AS DateTime), 5, CAST(125000.00 AS Decimal(18, 2)), 1, N'12cb7342-837e-45d9-892c-6818a38a3816', 3, 0, 1, NULL, CAST(N'2023-05-10T00:00:00.000' AS DateTime), CAST(1.07 AS Decimal(18, 2)), CAST(125000.00 AS Decimal(18, 2)))
INSERT [dbo].[proc_CartaCreditoComisiones] ([Id], [NumComision], [CartaCreditoId], [ComisionId], [NoComision], [EnmiendaId], [FechaCargo], [MonedaId], [Monto], [Activo], [CreadoPor], [Estatus], [PagoId], [PagoMonedaId], [Comentarios], [FechaPago], [TipoCambio], [MontoPagado]) VALUES (2, 1, N'8508B591-A110-4B52-839D-E64D7E89333C', 74, NULL, NULL, CAST(N'2023-05-02T00:00:00.000' AS DateTime), 1, CAST(34455.00 AS Decimal(18, 2)), 1, N'12cb7342-837e-45d9-892c-6818a38a3816', 1, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[proc_CartaCreditoComisiones] ([Id], [NumComision], [CartaCreditoId], [ComisionId], [NoComision], [EnmiendaId], [FechaCargo], [MonedaId], [Monto], [Activo], [CreadoPor], [Estatus], [PagoId], [PagoMonedaId], [Comentarios], [FechaPago], [TipoCambio], [MontoPagado]) VALUES (3, 1, N'6458DF55-22A8-4EB2-ABC7-EE00F184419E', 74, NULL, NULL, CAST(N'2023-05-09T00:00:00.000' AS DateTime), 3, CAST(123333.00 AS Decimal(18, 2)), 1, N'12cb7342-837e-45d9-892c-6818a38a3816', 3, 0, 1, NULL, CAST(N'2023-05-10T00:00:00.000' AS DateTime), CAST(19.84 AS Decimal(18, 2)), CAST(123333.00 AS Decimal(18, 2)))
INSERT [dbo].[proc_CartaCreditoComisiones] ([Id], [NumComision], [CartaCreditoId], [ComisionId], [NoComision], [EnmiendaId], [FechaCargo], [MonedaId], [Monto], [Activo], [CreadoPor], [Estatus], [PagoId], [PagoMonedaId], [Comentarios], [FechaPago], [TipoCambio], [MontoPagado]) VALUES (4, 1, N'AEF6210B-8963-4E83-AE8C-924D8A759C5E', 74, NULL, NULL, CAST(N'2023-05-12T00:00:00.000' AS DateTime), 1, CAST(30000.00 AS Decimal(18, 2)), 1, N'12cb7342-837e-45d9-892c-6818a38a3816', 3, 0, 1, NULL, CAST(N'2023-04-10T00:00:00.000' AS DateTime), CAST(18.76 AS Decimal(18, 2)), CAST(30000.00 AS Decimal(18, 2)))
INSERT [dbo].[proc_CartaCreditoComisiones] ([Id], [NumComision], [CartaCreditoId], [ComisionId], [NoComision], [EnmiendaId], [FechaCargo], [MonedaId], [Monto], [Activo], [CreadoPor], [Estatus], [PagoId], [PagoMonedaId], [Comentarios], [FechaPago], [TipoCambio], [MontoPagado]) VALUES (5, 2, N'AEF6210B-8963-4E83-AE8C-924D8A759C5E', 215, NULL, NULL, CAST(N'2023-05-16T00:00:00.000' AS DateTime), 5, CAST(35555.00 AS Decimal(18, 2)), 1, N'12cb7342-837e-45d9-892c-6818a38a3816', 3, 0, 1, NULL, CAST(N'2023-04-05T00:00:00.000' AS DateTime), CAST(18.76 AS Decimal(18, 2)), CAST(35555.00 AS Decimal(18, 2)))
INSERT [dbo].[proc_CartaCreditoComisiones] ([Id], [NumComision], [CartaCreditoId], [ComisionId], [NoComision], [EnmiendaId], [FechaCargo], [MonedaId], [Monto], [Activo], [CreadoPor], [Estatus], [PagoId], [PagoMonedaId], [Comentarios], [FechaPago], [TipoCambio], [MontoPagado]) VALUES (6, 2, N'6458DF55-22A8-4EB2-ABC7-EE00F184419E', 215, NULL, NULL, CAST(N'2023-05-17T00:00:00.000' AS DateTime), 5, CAST(8500.00 AS Decimal(18, 2)), 1, N'12cb7342-837e-45d9-892c-6818a38a3816', 1, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[proc_CartaCreditoComisiones] ([Id], [NumComision], [CartaCreditoId], [ComisionId], [NoComision], [EnmiendaId], [FechaCargo], [MonedaId], [Monto], [Activo], [CreadoPor], [Estatus], [PagoId], [PagoMonedaId], [Comentarios], [FechaPago], [TipoCambio], [MontoPagado]) VALUES (7, 3, N'DCEB6284-5665-40E6-A714-87E1CA01D30C', 215, NULL, NULL, CAST(N'2023-05-17T00:00:00.000' AS DateTime), 5, CAST(1000.00 AS Decimal(18, 2)), 1, N'12cb7342-837e-45d9-892c-6818a38a3816', 3, 0, 1, NULL, CAST(N'2023-05-10T00:00:00.000' AS DateTime), CAST(19.84 AS Decimal(18, 2)), CAST(1000.00 AS Decimal(18, 2)))
INSERT [dbo].[proc_CartaCreditoComisiones] ([Id], [NumComision], [CartaCreditoId], [ComisionId], [NoComision], [EnmiendaId], [FechaCargo], [MonedaId], [Monto], [Activo], [CreadoPor], [Estatus], [PagoId], [PagoMonedaId], [Comentarios], [FechaPago], [TipoCambio], [MontoPagado]) VALUES (8, 2, N'DCEB6284-5665-40E6-A714-87E1CA01D30C', 215, NULL, NULL, CAST(N'2023-05-16T00:00:00.000' AS DateTime), 5, CAST(10000.00 AS Decimal(18, 2)), 1, N'12cb7342-837e-45d9-892c-6818a38a3816', 3, 0, 3, NULL, CAST(N'2023-05-10T00:00:00.000' AS DateTime), CAST(0.14 AS Decimal(18, 2)), CAST(10000.00 AS Decimal(18, 2)))
INSERT [dbo].[proc_CartaCreditoComisiones] ([Id], [NumComision], [CartaCreditoId], [ComisionId], [NoComision], [EnmiendaId], [FechaCargo], [MonedaId], [Monto], [Activo], [CreadoPor], [Estatus], [PagoId], [PagoMonedaId], [Comentarios], [FechaPago], [TipoCambio], [MontoPagado]) VALUES (10, 1, N'DCEB6284-5665-40E6-A714-87E1CA01D30C', 215, NULL, NULL, CAST(N'2023-04-30T00:00:00.000' AS DateTime), 5, CAST(250000.00 AS Decimal(18, 2)), 1, N'12cb7342-837e-45d9-892c-6818a38a3816', 3, 0, 1, NULL, CAST(N'2023-05-18T00:00:00.000' AS DateTime), CAST(19.25 AS Decimal(18, 2)), CAST(250000.00 AS Decimal(18, 2)))
SET IDENTITY_INSERT [dbo].[proc_CartaCreditoComisiones] OFF
GO
SET IDENTITY_INSERT [dbo].[proc_CartasCredito] ON 

INSERT [dbo].[proc_CartasCredito] ([Consecutive], [Id], [NumCartaCredito], [TipoCarta], [TipoStandBy], [TipoActivoId], [ProyectoId], [BancoId], [ProveedorId], [EmpresaId], [AgenteAduanalId], [MonedaId], [TipoPago], [Responsable], [CompradorId], [PorcentajeTolerancia], [NumeroOrdenCompra], [CostoApertura], [MontoOrdenCompra], [MontoOriginalLC], [PagosEfectuados], [PagosProgramados], [MontoDispuesto], [SaldoInsoluto], [FechaApertura], [Incoterm], [FechaLimiteEmbarque], [FechaVencimiento], [EmbarquesParciales], [Transbordos], [PuntoEmbarque], [PuntoDesembarque], [DescripcionMercancia], [DescripcionCartaCredito], [PagoCartaAceptacion], [ConsignacionMercancia], [ConsideracionesReclamacion], [ConsideracionesAdicionales], [InstruccionesEspeciales], [DiasParaPresentarDocumentos], [DiasPlazoProveedor], [CondicionesPago], [NumeroPeriodos], [BancoCorresponsalId], [SeguroPorCuenta], [GastosComisionesCorresponsal], [ConfirmacionBancoNotificador], [TipoEmision], [DocumentoSwift], [CreadoPor], [Estatus], [Activo], [Creado], [Actualizado], [Eliminado]) VALUES (1, N'AEF6210B-8963-4E83-AE8C-924D8A759C5E', N'IOUZ098', N'17', NULL, 938, 15, 37, 157, 2, 26, 1, N'Estándar', N'7E7836AF-0F46-4F5C-944B-194ED9D87AEF', 25, 5, N'BCD548792', CAST(400.00 AS Decimal(18, 2)), CAST(5400000.00 AS Decimal(18, 2)), CAST(5400000.00 AS Decimal(18, 2)), NULL, NULL, NULL, NULL, CAST(N'2023-05-01T06:00:00.000' AS DateTime), N'IXONIADPH', CAST(N'2023-05-31T06:00:00.000' AS DateTime), CAST(N'2023-06-13T06:00:00.000' AS DateTime), N'Permitidos', N'Permitidos', N'MÉXICO', N'CHINA', N'TEST MERCANCÍA', N'TEST CARTA', N'TEST PAGO', N'TEST CONSIG', NULL, N'TEST CONSID', NULL, 8, 4, N'Pago a la vista', 2, 39, N'Beneficiario', N'Beneficiario', N'Requerido', N'Provisión de Tesorería', N'20230516145529-blank.pdf', N'12cb7342-837e-45d9-892c-6818a38a3816', 2, 1, CAST(N'2023-05-16T13:45:28.857' AS DateTime), NULL, NULL)
INSERT [dbo].[proc_CartasCredito] ([Consecutive], [Id], [NumCartaCredito], [TipoCarta], [TipoStandBy], [TipoActivoId], [ProyectoId], [BancoId], [ProveedorId], [EmpresaId], [AgenteAduanalId], [MonedaId], [TipoPago], [Responsable], [CompradorId], [PorcentajeTolerancia], [NumeroOrdenCompra], [CostoApertura], [MontoOrdenCompra], [MontoOriginalLC], [PagosEfectuados], [PagosProgramados], [MontoDispuesto], [SaldoInsoluto], [FechaApertura], [Incoterm], [FechaLimiteEmbarque], [FechaVencimiento], [EmbarquesParciales], [Transbordos], [PuntoEmbarque], [PuntoDesembarque], [DescripcionMercancia], [DescripcionCartaCredito], [PagoCartaAceptacion], [ConsignacionMercancia], [ConsideracionesReclamacion], [ConsideracionesAdicionales], [InstruccionesEspeciales], [DiasParaPresentarDocumentos], [DiasPlazoProveedor], [CondicionesPago], [NumeroPeriodos], [BancoCorresponsalId], [SeguroPorCuenta], [GastosComisionesCorresponsal], [ConfirmacionBancoNotificador], [TipoEmision], [DocumentoSwift], [CreadoPor], [Estatus], [Activo], [Creado], [Actualizado], [Eliminado]) VALUES (2, N'9ADCB0BB-C337-4BB3-AC25-F8157B36E79B', N'XUOIU97987', N'17', NULL, 938, 8, 35, 148, 1, 21, 3, N'Estándar', N'7E7836AF-0F46-4F5C-944B-194ED9D87AEF', 26, 6, N'ABCD549871', CAST(400.00 AS Decimal(18, 2)), CAST(3150000.00 AS Decimal(18, 2)), CAST(3150000.00 AS Decimal(18, 2)), NULL, NULL, NULL, NULL, CAST(N'2023-05-04T06:00:00.000' AS DateTime), N'EQDSASF', CAST(N'2023-05-16T06:00:00.000' AS DateTime), CAST(N'2023-06-23T06:00:00.000' AS DateTime), N'Permitidos', N'Permitidos', N'MÉXICO', N'CHINA', N'LOREM IPSUM', N'DOLOR SIT AMET', N'CONSECTETUER', N'ADPISICING', NULL, N'ELIT', NULL, 6, 13, N'Pago a la vista', 4, 37, N'Ordenante', N'Ordenante', N'Requerido', N'Provisión de Fondos', N'20230516145540-blank.pdf', N'12cb7342-837e-45d9-892c-6818a38a3816', 2, 1, CAST(N'2023-05-16T13:47:10.313' AS DateTime), NULL, NULL)
INSERT [dbo].[proc_CartasCredito] ([Consecutive], [Id], [NumCartaCredito], [TipoCarta], [TipoStandBy], [TipoActivoId], [ProyectoId], [BancoId], [ProveedorId], [EmpresaId], [AgenteAduanalId], [MonedaId], [TipoPago], [Responsable], [CompradorId], [PorcentajeTolerancia], [NumeroOrdenCompra], [CostoApertura], [MontoOrdenCompra], [MontoOriginalLC], [PagosEfectuados], [PagosProgramados], [MontoDispuesto], [SaldoInsoluto], [FechaApertura], [Incoterm], [FechaLimiteEmbarque], [FechaVencimiento], [EmbarquesParciales], [Transbordos], [PuntoEmbarque], [PuntoDesembarque], [DescripcionMercancia], [DescripcionCartaCredito], [PagoCartaAceptacion], [ConsignacionMercancia], [ConsideracionesReclamacion], [ConsideracionesAdicionales], [InstruccionesEspeciales], [DiasParaPresentarDocumentos], [DiasPlazoProveedor], [CondicionesPago], [NumeroPeriodos], [BancoCorresponsalId], [SeguroPorCuenta], [GastosComisionesCorresponsal], [ConfirmacionBancoNotificador], [TipoEmision], [DocumentoSwift], [CreadoPor], [Estatus], [Activo], [Creado], [Actualizado], [Eliminado]) VALUES (3, N'60E1120E-6299-4F09-90A8-75BD2DEA9CD7', N'OIU43798', N'17', NULL, 939, 15, 24, 152, 4, 22, 1, N'Estándar', N'7E7836AF-0F46-4F5C-944B-194ED9D87AEF', 36, 8, N'15234879', CAST(6500.00 AS Decimal(18, 2)), CAST(12000000.00 AS Decimal(18, 2)), CAST(12000000.00 AS Decimal(18, 2)), NULL, NULL, NULL, NULL, CAST(N'2023-05-11T06:00:00.000' AS DateTime), N'SADFCADF', CAST(N'2023-05-31T06:00:00.000' AS DateTime), CAST(N'2023-06-21T06:00:00.000' AS DateTime), N'Permitidos', N'No Permitidos', N'MÉXICO', N'CHINA', N'DESC MERACA', N'DESC CARTA', N'DESC PAGO ', N'DESC MERCA CONSIG', NULL, N'DESC CONSID', NULL, 3, 5, N'Pago diferido', 2, 38, N'Beneficiario', N'Beneficiario', N'Requerido', N'Provisión de Tesorería', N'20230516145549-blank.pdf', N'12cb7342-837e-45d9-892c-6818a38a3816', 2, 1, CAST(N'2023-05-16T13:48:48.407' AS DateTime), NULL, NULL)
INSERT [dbo].[proc_CartasCredito] ([Consecutive], [Id], [NumCartaCredito], [TipoCarta], [TipoStandBy], [TipoActivoId], [ProyectoId], [BancoId], [ProveedorId], [EmpresaId], [AgenteAduanalId], [MonedaId], [TipoPago], [Responsable], [CompradorId], [PorcentajeTolerancia], [NumeroOrdenCompra], [CostoApertura], [MontoOrdenCompra], [MontoOriginalLC], [PagosEfectuados], [PagosProgramados], [MontoDispuesto], [SaldoInsoluto], [FechaApertura], [Incoterm], [FechaLimiteEmbarque], [FechaVencimiento], [EmbarquesParciales], [Transbordos], [PuntoEmbarque], [PuntoDesembarque], [DescripcionMercancia], [DescripcionCartaCredito], [PagoCartaAceptacion], [ConsignacionMercancia], [ConsideracionesReclamacion], [ConsideracionesAdicionales], [InstruccionesEspeciales], [DiasParaPresentarDocumentos], [DiasPlazoProveedor], [CondicionesPago], [NumeroPeriodos], [BancoCorresponsalId], [SeguroPorCuenta], [GastosComisionesCorresponsal], [ConfirmacionBancoNotificador], [TipoEmision], [DocumentoSwift], [CreadoPor], [Estatus], [Activo], [Creado], [Actualizado], [Eliminado]) VALUES (4, N'6458DF55-22A8-4EB2-ABC7-EE00F184419E', N'KLIO78987', N'17', NULL, 940, 5, 37, 148, 2, 23, 1, N'Estándar', N'7E7836AF-0F46-4F5C-944B-194ED9D87AEF', 23, 6, N'4598791321', CAST(4500.00 AS Decimal(18, 2)), CAST(6580000.00 AS Decimal(18, 2)), CAST(6580000.00 AS Decimal(18, 2)), NULL, NULL, NULL, NULL, CAST(N'2023-05-10T06:00:00.000' AS DateTime), N'AEWRASDFA', CAST(N'2023-05-31T06:00:00.000' AS DateTime), CAST(N'2023-06-29T06:00:00.000' AS DateTime), N'Permitidos', N'Permitidos', N'CHINA', N'MÉXICO', N'MERC DESC', N'CARTA DESC', N'ACEPT PAGO', N'MERC CONSIG', NULL, N'CONSID AD', NULL, 5, 4, N'Pago diferido', 4, 36, N'Beneficiario', N'Beneficiario', N'Requerido', N'Provisión de Tesorería', N'20230516145600-blank.pdf', N'12cb7342-837e-45d9-892c-6818a38a3816', 2, 1, CAST(N'2023-05-16T14:11:01.360' AS DateTime), NULL, NULL)
INSERT [dbo].[proc_CartasCredito] ([Consecutive], [Id], [NumCartaCredito], [TipoCarta], [TipoStandBy], [TipoActivoId], [ProyectoId], [BancoId], [ProveedorId], [EmpresaId], [AgenteAduanalId], [MonedaId], [TipoPago], [Responsable], [CompradorId], [PorcentajeTolerancia], [NumeroOrdenCompra], [CostoApertura], [MontoOrdenCompra], [MontoOriginalLC], [PagosEfectuados], [PagosProgramados], [MontoDispuesto], [SaldoInsoluto], [FechaApertura], [Incoterm], [FechaLimiteEmbarque], [FechaVencimiento], [EmbarquesParciales], [Transbordos], [PuntoEmbarque], [PuntoDesembarque], [DescripcionMercancia], [DescripcionCartaCredito], [PagoCartaAceptacion], [ConsignacionMercancia], [ConsideracionesReclamacion], [ConsideracionesAdicionales], [InstruccionesEspeciales], [DiasParaPresentarDocumentos], [DiasPlazoProveedor], [CondicionesPago], [NumeroPeriodos], [BancoCorresponsalId], [SeguroPorCuenta], [GastosComisionesCorresponsal], [ConfirmacionBancoNotificador], [TipoEmision], [DocumentoSwift], [CreadoPor], [Estatus], [Activo], [Creado], [Actualizado], [Eliminado]) VALUES (5, N'8508B591-A110-4B52-839D-E64D7E89333C', N'SLKJIO19067', N'17', NULL, 939, 7, 37, 157, 2, 26, 1, N'A Terceros', N'7E7836AF-0F46-4F5C-944B-194ED9D87AEF', 23, 9, N'15978123', CAST(350.00 AS Decimal(18, 2)), CAST(5500000.00 AS Decimal(18, 2)), CAST(5500000.00 AS Decimal(18, 2)), NULL, NULL, NULL, NULL, CAST(N'2023-05-04T06:00:00.000' AS DateTime), N'DASF4535', CAST(N'2023-05-24T06:00:00.000' AS DateTime), CAST(N'2023-06-19T06:00:00.000' AS DateTime), N'Permitidos', N'No Permitidos', N'MÉXICO', N'ITALIA', N'ADSFA', N'DSAFA', N'SDAFASDFASDF', N'DFASDFASDFA', NULL, N'ASDFAS', NULL, 15, 8, N'Pago diferido', 4, 39, N'Ordenante', N'Ordenante', N'Requerido', N'Provisión de Fondos', N'20230516145609-blank.pdf', N'12cb7342-837e-45d9-892c-6818a38a3816', 2, 1, CAST(N'2023-05-16T14:12:49.773' AS DateTime), NULL, NULL)
INSERT [dbo].[proc_CartasCredito] ([Consecutive], [Id], [NumCartaCredito], [TipoCarta], [TipoStandBy], [TipoActivoId], [ProyectoId], [BancoId], [ProveedorId], [EmpresaId], [AgenteAduanalId], [MonedaId], [TipoPago], [Responsable], [CompradorId], [PorcentajeTolerancia], [NumeroOrdenCompra], [CostoApertura], [MontoOrdenCompra], [MontoOriginalLC], [PagosEfectuados], [PagosProgramados], [MontoDispuesto], [SaldoInsoluto], [FechaApertura], [Incoterm], [FechaLimiteEmbarque], [FechaVencimiento], [EmbarquesParciales], [Transbordos], [PuntoEmbarque], [PuntoDesembarque], [DescripcionMercancia], [DescripcionCartaCredito], [PagoCartaAceptacion], [ConsignacionMercancia], [ConsideracionesReclamacion], [ConsideracionesAdicionales], [InstruccionesEspeciales], [DiasParaPresentarDocumentos], [DiasPlazoProveedor], [CondicionesPago], [NumeroPeriodos], [BancoCorresponsalId], [SeguroPorCuenta], [GastosComisionesCorresponsal], [ConfirmacionBancoNotificador], [TipoEmision], [DocumentoSwift], [CreadoPor], [Estatus], [Activo], [Creado], [Actualizado], [Eliminado]) VALUES (6, N'AB347A0D-F74A-4167-8E21-5104B379EF29', N'UIYIR3487', N'17', NULL, 940, 15, 36, 157, 10, 30, 3, N'Estándar', N'7E7836AF-0F46-4F5C-944B-194ED9D87AEF', 9, 9, N'SD8723123', CAST(4500.00 AS Decimal(18, 2)), CAST(6600980.00 AS Decimal(18, 2)), CAST(6600980.00 AS Decimal(18, 2)), NULL, NULL, NULL, NULL, CAST(N'2023-05-03T06:00:00.000' AS DateTime), N'MXDFASDF', CAST(N'2023-05-30T06:00:00.000' AS DateTime), CAST(N'2023-06-26T06:00:00.000' AS DateTime), N'Permitidos', N'No Permitidos', N'MÉXICO', N'ESPAÑA', N'ALDSKFA', N'ASDFASDFASDF', N'ASDF', N'ASDFA', NULL, N'SDFASDFASDF', NULL, 20, 15, N'Pago a la vista', 5, 38, N'Beneficiario', N'Ordenante', N'Requerido', N'Línea de Crédito', N'20230516145638-blank.pdf', N'12cb7342-837e-45d9-892c-6818a38a3816', 2, 1, CAST(N'2023-05-16T14:15:44.290' AS DateTime), NULL, NULL)
INSERT [dbo].[proc_CartasCredito] ([Consecutive], [Id], [NumCartaCredito], [TipoCarta], [TipoStandBy], [TipoActivoId], [ProyectoId], [BancoId], [ProveedorId], [EmpresaId], [AgenteAduanalId], [MonedaId], [TipoPago], [Responsable], [CompradorId], [PorcentajeTolerancia], [NumeroOrdenCompra], [CostoApertura], [MontoOrdenCompra], [MontoOriginalLC], [PagosEfectuados], [PagosProgramados], [MontoDispuesto], [SaldoInsoluto], [FechaApertura], [Incoterm], [FechaLimiteEmbarque], [FechaVencimiento], [EmbarquesParciales], [Transbordos], [PuntoEmbarque], [PuntoDesembarque], [DescripcionMercancia], [DescripcionCartaCredito], [PagoCartaAceptacion], [ConsignacionMercancia], [ConsideracionesReclamacion], [ConsideracionesAdicionales], [InstruccionesEspeciales], [DiasParaPresentarDocumentos], [DiasPlazoProveedor], [CondicionesPago], [NumeroPeriodos], [BancoCorresponsalId], [SeguroPorCuenta], [GastosComisionesCorresponsal], [ConfirmacionBancoNotificador], [TipoEmision], [DocumentoSwift], [CreadoPor], [Estatus], [Activo], [Creado], [Actualizado], [Eliminado]) VALUES (7, N'DCEB6284-5665-40E6-A714-87E1CA01D30C', N'XCV43R5', N'17', NULL, 940, 20, 37, 154, 2, 25, 5, N'A Terceros', N'7E7836AF-0F46-4F5C-944B-194ED9D87AEF', 13, 4, N'8782123123', CAST(15000.00 AS Decimal(18, 2)), CAST(3250000.00 AS Decimal(18, 2)), CAST(3250000.00 AS Decimal(18, 2)), NULL, NULL, NULL, NULL, CAST(N'2023-05-01T06:00:00.000' AS DateTime), N'5sadfasdfa', CAST(N'2023-05-16T06:00:00.000' AS DateTime), CAST(N'2023-05-31T06:00:00.000' AS DateTime), N'Permitidos', N'No Permitidos', N'MÉXICO', N'CHINA', N'TEST', N'ASDFAS', N'DFASDF', N'ASDFA', NULL, N'SDFASDFASDFASDF', NULL, 8, 11, N'Pago a la vista', 5, 24, N'Beneficiario', N'Ordenante', N'No requerido', N'Provisión de Fondos', N'20230516155611-blank.pdf', N'12cb7342-837e-45d9-892c-6818a38a3816', 2, 1, CAST(N'2023-05-16T15:54:38.367' AS DateTime), NULL, NULL)
INSERT [dbo].[proc_CartasCredito] ([Consecutive], [Id], [NumCartaCredito], [TipoCarta], [TipoStandBy], [TipoActivoId], [ProyectoId], [BancoId], [ProveedorId], [EmpresaId], [AgenteAduanalId], [MonedaId], [TipoPago], [Responsable], [CompradorId], [PorcentajeTolerancia], [NumeroOrdenCompra], [CostoApertura], [MontoOrdenCompra], [MontoOriginalLC], [PagosEfectuados], [PagosProgramados], [MontoDispuesto], [SaldoInsoluto], [FechaApertura], [Incoterm], [FechaLimiteEmbarque], [FechaVencimiento], [EmbarquesParciales], [Transbordos], [PuntoEmbarque], [PuntoDesembarque], [DescripcionMercancia], [DescripcionCartaCredito], [PagoCartaAceptacion], [ConsignacionMercancia], [ConsideracionesReclamacion], [ConsideracionesAdicionales], [InstruccionesEspeciales], [DiasParaPresentarDocumentos], [DiasPlazoProveedor], [CondicionesPago], [NumeroPeriodos], [BancoCorresponsalId], [SeguroPorCuenta], [GastosComisionesCorresponsal], [ConfirmacionBancoNotificador], [TipoEmision], [DocumentoSwift], [CreadoPor], [Estatus], [Activo], [Creado], [Actualizado], [Eliminado]) VALUES (8, N'7E45C91C-AC3E-4785-ADE5-43AC04C2FCC4', N'XCGFDF434', N'17', NULL, 938, 2, 33, 157, 11, 30, 5, N'Estándar', N'7E7836AF-0F46-4F5C-944B-194ED9D87AEF', 10, 7, N'ADSX8080', CAST(5600.00 AS Decimal(18, 2)), CAST(8510000.00 AS Decimal(18, 2)), CAST(8510000.00 AS Decimal(18, 2)), NULL, NULL, NULL, NULL, CAST(N'2023-05-01T06:00:00.000' AS DateTime), N'ACADF23232', CAST(N'2023-05-10T06:00:00.000' AS DateTime), CAST(N'2023-05-29T06:00:00.000' AS DateTime), N'Permitidos', N'Permitidos', N'MÉXICO', N'CHINA', N'ASDFAS', N'ASDF', N'ASDF', N'ASDFA', NULL, N'SDFASDF', NULL, 5, 5, N'Pago diferido', 2, 26, N'Beneficiario', N'Beneficiario', N'No requerido', N'Línea de Crédito', N'20230516155620-blank.pdf', N'12cb7342-837e-45d9-892c-6818a38a3816', 2, 1, CAST(N'2023-05-16T15:55:53.643' AS DateTime), NULL, NULL)
INSERT [dbo].[proc_CartasCredito] ([Consecutive], [Id], [NumCartaCredito], [TipoCarta], [TipoStandBy], [TipoActivoId], [ProyectoId], [BancoId], [ProveedorId], [EmpresaId], [AgenteAduanalId], [MonedaId], [TipoPago], [Responsable], [CompradorId], [PorcentajeTolerancia], [NumeroOrdenCompra], [CostoApertura], [MontoOrdenCompra], [MontoOriginalLC], [PagosEfectuados], [PagosProgramados], [MontoDispuesto], [SaldoInsoluto], [FechaApertura], [Incoterm], [FechaLimiteEmbarque], [FechaVencimiento], [EmbarquesParciales], [Transbordos], [PuntoEmbarque], [PuntoDesembarque], [DescripcionMercancia], [DescripcionCartaCredito], [PagoCartaAceptacion], [ConsignacionMercancia], [ConsideracionesReclamacion], [ConsideracionesAdicionales], [InstruccionesEspeciales], [DiasParaPresentarDocumentos], [DiasPlazoProveedor], [CondicionesPago], [NumeroPeriodos], [BancoCorresponsalId], [SeguroPorCuenta], [GastosComisionesCorresponsal], [ConfirmacionBancoNotificador], [TipoEmision], [DocumentoSwift], [CreadoPor], [Estatus], [Activo], [Creado], [Actualizado], [Eliminado]) VALUES (17, N'79632498-DB58-4B9C-94CD-B034AF82B730', N'ABCDSOD756465', N'18', N'A Favor', NULL, NULL, 37, NULL, 2, NULL, 1, NULL, NULL, 25, NULL, NULL, NULL, NULL, CAST(45000000.00 AS Decimal(18, 2)), NULL, NULL, NULL, NULL, CAST(N'2023-04-01T06:00:00.000' AS DateTime), N'ab123', NULL, CAST(N'2023-05-26T06:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Prueba', N'Test', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'20230518163652-blank.pdf', N'12cb7342-837e-45d9-892c-6818a38a3816', 2, 1, CAST(N'2023-05-18T16:35:38.793' AS DateTime), NULL, NULL)
INSERT [dbo].[proc_CartasCredito] ([Consecutive], [Id], [NumCartaCredito], [TipoCarta], [TipoStandBy], [TipoActivoId], [ProyectoId], [BancoId], [ProveedorId], [EmpresaId], [AgenteAduanalId], [MonedaId], [TipoPago], [Responsable], [CompradorId], [PorcentajeTolerancia], [NumeroOrdenCompra], [CostoApertura], [MontoOrdenCompra], [MontoOriginalLC], [PagosEfectuados], [PagosProgramados], [MontoDispuesto], [SaldoInsoluto], [FechaApertura], [Incoterm], [FechaLimiteEmbarque], [FechaVencimiento], [EmbarquesParciales], [Transbordos], [PuntoEmbarque], [PuntoDesembarque], [DescripcionMercancia], [DescripcionCartaCredito], [PagoCartaAceptacion], [ConsignacionMercancia], [ConsideracionesReclamacion], [ConsideracionesAdicionales], [InstruccionesEspeciales], [DiasParaPresentarDocumentos], [DiasPlazoProveedor], [CondicionesPago], [NumeroPeriodos], [BancoCorresponsalId], [SeguroPorCuenta], [GastosComisionesCorresponsal], [ConfirmacionBancoNotificador], [TipoEmision], [DocumentoSwift], [CreadoPor], [Estatus], [Activo], [Creado], [Actualizado], [Eliminado]) VALUES (18, N'426E5D82-2514-4575-9ACD-E474C6FE98B2', NULL, N'17', NULL, 938, 15, 37, 157, 2, 26, 1, N'Estándar', N'7E7836AF-0F46-4F5C-944B-194ED9D87AEF', 25, 5, N'BCD548792', CAST(400.00 AS Decimal(18, 2)), CAST(5400000.00 AS Decimal(18, 2)), CAST(5400000.00 AS Decimal(18, 2)), NULL, NULL, NULL, NULL, CAST(N'2023-05-01T06:00:00.000' AS DateTime), N'IXONIADPH', CAST(N'2023-05-31T06:00:00.000' AS DateTime), CAST(N'2023-06-13T06:00:00.000' AS DateTime), N'Permitidos', N'Permitidos', N'MÉXICO', N'CHINA', N'TEST MERCANCÍA', N'TEST CARTA', N'TEST PAGO', N'TEST CONSIG', NULL, N'TEST CONSID', NULL, 8, 4, N'Pago a la vista', 2, 39, N'Beneficiario', N'Beneficiario', N'Requerido', N'Provisión de Tesorería', NULL, N'12cb7342-837e-45d9-892c-6818a38a3816', 1, 1, CAST(N'2023-05-18T17:09:02.873' AS DateTime), NULL, NULL)
INSERT [dbo].[proc_CartasCredito] ([Consecutive], [Id], [NumCartaCredito], [TipoCarta], [TipoStandBy], [TipoActivoId], [ProyectoId], [BancoId], [ProveedorId], [EmpresaId], [AgenteAduanalId], [MonedaId], [TipoPago], [Responsable], [CompradorId], [PorcentajeTolerancia], [NumeroOrdenCompra], [CostoApertura], [MontoOrdenCompra], [MontoOriginalLC], [PagosEfectuados], [PagosProgramados], [MontoDispuesto], [SaldoInsoluto], [FechaApertura], [Incoterm], [FechaLimiteEmbarque], [FechaVencimiento], [EmbarquesParciales], [Transbordos], [PuntoEmbarque], [PuntoDesembarque], [DescripcionMercancia], [DescripcionCartaCredito], [PagoCartaAceptacion], [ConsignacionMercancia], [ConsideracionesReclamacion], [ConsideracionesAdicionales], [InstruccionesEspeciales], [DiasParaPresentarDocumentos], [DiasPlazoProveedor], [CondicionesPago], [NumeroPeriodos], [BancoCorresponsalId], [SeguroPorCuenta], [GastosComisionesCorresponsal], [ConfirmacionBancoNotificador], [TipoEmision], [DocumentoSwift], [CreadoPor], [Estatus], [Activo], [Creado], [Actualizado], [Eliminado]) VALUES (19, N'AF34C868-99C4-45F9-9D57-607F1B849A27', NULL, N'18', N'A Favor', NULL, NULL, 39, NULL, 11, NULL, 1, NULL, NULL, 40, NULL, NULL, NULL, NULL, CAST(74510000.00 AS Decimal(18, 2)), NULL, NULL, NULL, NULL, CAST(N'2023-05-01T06:00:00.000' AS DateTime), NULL, NULL, CAST(N'2023-05-29T06:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'asd', N'fasdfa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'12cb7342-837e-45d9-892c-6818a38a3816', 1, 1, CAST(N'2023-05-21T23:08:02.023' AS DateTime), NULL, NULL)
SET IDENTITY_INSERT [dbo].[proc_CartasCredito] OFF
GO
SET IDENTITY_INSERT [dbo].[proc_Pagos] ON 

INSERT [dbo].[proc_Pagos] ([Id], [MontoPago], [MontoPagado], [FechaVencimiento], [FechaPago], [RegistroPagoPor], [CreadoPor], [CartaCreditoId], [NumeroPago], [NumeroFactura], [Estatus], [Activo], [Creado], [Actualizado], [Eliminado]) VALUES (1, CAST(500000.00 AS Decimal(18, 2)), CAST(500000.00 AS Decimal(18, 2)), CAST(N'2023-05-17T00:00:00.000' AS DateTime), CAST(N'2023-05-16T00:00:00.000' AS DateTime), NULL, N'12cb7342-837e-45d9-892c-6818a38a3816', N'AEF6210B-8963-4E83-AE8C-924D8A759C5E', 1, N'XD2348', 3, 1, CAST(N'2023-05-16T15:00:07.920' AS DateTime), NULL, NULL)
INSERT [dbo].[proc_Pagos] ([Id], [MontoPago], [MontoPagado], [FechaVencimiento], [FechaPago], [RegistroPagoPor], [CreadoPor], [CartaCreditoId], [NumeroPago], [NumeroFactura], [Estatus], [Activo], [Creado], [Actualizado], [Eliminado]) VALUES (2, CAST(485000.00 AS Decimal(18, 2)), CAST(485000.00 AS Decimal(18, 2)), CAST(N'2023-05-19T00:00:00.000' AS DateTime), CAST(N'2023-05-19T00:00:00.000' AS DateTime), NULL, N'12cb7342-837e-45d9-892c-6818a38a3816', N'AEF6210B-8963-4E83-AE8C-924D8A759C5E', 2, N'POXWEJK', 3, 1, CAST(N'2023-05-16T15:00:25.117' AS DateTime), NULL, NULL)
INSERT [dbo].[proc_Pagos] ([Id], [MontoPago], [MontoPagado], [FechaVencimiento], [FechaPago], [RegistroPagoPor], [CreadoPor], [CartaCreditoId], [NumeroPago], [NumeroFactura], [Estatus], [Activo], [Creado], [Actualizado], [Eliminado]) VALUES (3, CAST(352000.00 AS Decimal(18, 2)), CAST(352000.00 AS Decimal(18, 2)), CAST(N'2023-05-30T00:00:00.000' AS DateTime), CAST(N'2023-05-19T00:00:00.000' AS DateTime), NULL, N'12cb7342-837e-45d9-892c-6818a38a3816', N'AEF6210B-8963-4E83-AE8C-924D8A759C5E', 3, N'', 3, 1, CAST(N'2023-05-16T15:01:20.230' AS DateTime), NULL, NULL)
INSERT [dbo].[proc_Pagos] ([Id], [MontoPago], [MontoPagado], [FechaVencimiento], [FechaPago], [RegistroPagoPor], [CreadoPor], [CartaCreditoId], [NumeroPago], [NumeroFactura], [Estatus], [Activo], [Creado], [Actualizado], [Eliminado]) VALUES (4, CAST(450000.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(N'2023-06-05T00:00:00.000' AS DateTime), NULL, NULL, N'12cb7342-837e-45d9-892c-6818a38a3816', N'AEF6210B-8963-4E83-AE8C-924D8A759C5E', 4, N'EWXCC', 1, 1, CAST(N'2023-05-16T15:01:38.047' AS DateTime), NULL, NULL)
INSERT [dbo].[proc_Pagos] ([Id], [MontoPago], [MontoPagado], [FechaVencimiento], [FechaPago], [RegistroPagoPor], [CreadoPor], [CartaCreditoId], [NumeroPago], [NumeroFactura], [Estatus], [Activo], [Creado], [Actualizado], [Eliminado]) VALUES (5, CAST(185000.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(N'2023-07-14T00:00:00.000' AS DateTime), NULL, NULL, N'12cb7342-837e-45d9-892c-6818a38a3816', N'AEF6210B-8963-4E83-AE8C-924D8A759C5E', 7, N'', 1, 1, CAST(N'2023-05-16T15:02:10.963' AS DateTime), NULL, NULL)
INSERT [dbo].[proc_Pagos] ([Id], [MontoPago], [MontoPagado], [FechaVencimiento], [FechaPago], [RegistroPagoPor], [CreadoPor], [CartaCreditoId], [NumeroPago], [NumeroFactura], [Estatus], [Activo], [Creado], [Actualizado], [Eliminado]) VALUES (6, CAST(140000.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(N'2023-07-03T00:00:00.000' AS DateTime), NULL, NULL, N'12cb7342-837e-45d9-892c-6818a38a3816', N'AEF6210B-8963-4E83-AE8C-924D8A759C5E', 6, N'', 1, 1, CAST(N'2023-05-16T15:02:29.783' AS DateTime), NULL, NULL)
INSERT [dbo].[proc_Pagos] ([Id], [MontoPago], [MontoPagado], [FechaVencimiento], [FechaPago], [RegistroPagoPor], [CreadoPor], [CartaCreditoId], [NumeroPago], [NumeroFactura], [Estatus], [Activo], [Creado], [Actualizado], [Eliminado]) VALUES (7, CAST(456000.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(N'2023-07-21T00:00:00.000' AS DateTime), NULL, NULL, N'12cb7342-837e-45d9-892c-6818a38a3816', N'AEF6210B-8963-4E83-AE8C-924D8A759C5E', 8, N'', 1, 1, CAST(N'2023-05-16T15:02:47.720' AS DateTime), NULL, NULL)
INSERT [dbo].[proc_Pagos] ([Id], [MontoPago], [MontoPagado], [FechaVencimiento], [FechaPago], [RegistroPagoPor], [CreadoPor], [CartaCreditoId], [NumeroPago], [NumeroFactura], [Estatus], [Activo], [Creado], [Actualizado], [Eliminado]) VALUES (8, CAST(150000.00 AS Decimal(18, 2)), CAST(150000.00 AS Decimal(18, 2)), CAST(N'2023-05-03T00:00:00.000' AS DateTime), CAST(N'2023-05-03T00:00:00.000' AS DateTime), NULL, N'12cb7342-837e-45d9-892c-6818a38a3816', N'9ADCB0BB-C337-4BB3-AC25-F8157B36E79B', 1, N'', 3, 1, CAST(N'2023-05-16T15:03:09.910' AS DateTime), NULL, NULL)
INSERT [dbo].[proc_Pagos] ([Id], [MontoPago], [MontoPagado], [FechaVencimiento], [FechaPago], [RegistroPagoPor], [CreadoPor], [CartaCreditoId], [NumeroPago], [NumeroFactura], [Estatus], [Activo], [Creado], [Actualizado], [Eliminado]) VALUES (9, CAST(480000.00 AS Decimal(18, 2)), CAST(480000.00 AS Decimal(18, 2)), CAST(N'2023-06-12T00:00:00.000' AS DateTime), CAST(N'2023-05-16T00:00:00.000' AS DateTime), NULL, N'12cb7342-837e-45d9-892c-6818a38a3816', N'9ADCB0BB-C337-4BB3-AC25-F8157B36E79B', 3, N'', 3, 1, CAST(N'2023-05-16T15:03:17.583' AS DateTime), NULL, NULL)
INSERT [dbo].[proc_Pagos] ([Id], [MontoPago], [MontoPagado], [FechaVencimiento], [FechaPago], [RegistroPagoPor], [CreadoPor], [CartaCreditoId], [NumeroPago], [NumeroFactura], [Estatus], [Activo], [Creado], [Actualizado], [Eliminado]) VALUES (10, CAST(700000.00 AS Decimal(18, 2)), CAST(700000.00 AS Decimal(18, 2)), CAST(N'2023-06-14T00:00:00.000' AS DateTime), CAST(N'2023-05-16T00:00:00.000' AS DateTime), NULL, N'12cb7342-837e-45d9-892c-6818a38a3816', N'9ADCB0BB-C337-4BB3-AC25-F8157B36E79B', 4, N'', 3, 1, CAST(N'2023-05-16T15:03:24.000' AS DateTime), NULL, NULL)
INSERT [dbo].[proc_Pagos] ([Id], [MontoPago], [MontoPagado], [FechaVencimiento], [FechaPago], [RegistroPagoPor], [CreadoPor], [CartaCreditoId], [NumeroPago], [NumeroFactura], [Estatus], [Activo], [Creado], [Actualizado], [Eliminado]) VALUES (11, CAST(250000.00 AS Decimal(18, 2)), CAST(250000.00 AS Decimal(18, 2)), CAST(N'2023-05-31T00:00:00.000' AS DateTime), CAST(N'2023-05-15T00:00:00.000' AS DateTime), NULL, N'12cb7342-837e-45d9-892c-6818a38a3816', N'9ADCB0BB-C337-4BB3-AC25-F8157B36E79B', 2, N'', 3, 1, CAST(N'2023-05-16T15:03:35.603' AS DateTime), NULL, NULL)
INSERT [dbo].[proc_Pagos] ([Id], [MontoPago], [MontoPagado], [FechaVencimiento], [FechaPago], [RegistroPagoPor], [CreadoPor], [CartaCreditoId], [NumeroPago], [NumeroFactura], [Estatus], [Activo], [Creado], [Actualizado], [Eliminado]) VALUES (12, CAST(432000.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(N'2023-05-31T00:00:00.000' AS DateTime), NULL, NULL, N'12cb7342-837e-45d9-892c-6818a38a3816', N'60E1120E-6299-4F09-90A8-75BD2DEA9CD7', 5, N'', 1, 1, CAST(N'2023-05-16T15:03:49.553' AS DateTime), NULL, NULL)
INSERT [dbo].[proc_Pagos] ([Id], [MontoPago], [MontoPagado], [FechaVencimiento], [FechaPago], [RegistroPagoPor], [CreadoPor], [CartaCreditoId], [NumeroPago], [NumeroFactura], [Estatus], [Activo], [Creado], [Actualizado], [Eliminado]) VALUES (13, CAST(1250000.00 AS Decimal(18, 2)), CAST(1250000.00 AS Decimal(18, 2)), CAST(N'2023-05-17T00:00:00.000' AS DateTime), CAST(N'2023-05-16T00:00:00.000' AS DateTime), NULL, N'12cb7342-837e-45d9-892c-6818a38a3816', N'60E1120E-6299-4F09-90A8-75BD2DEA9CD7', 2, N'', 3, 1, CAST(N'2023-05-16T15:04:04.017' AS DateTime), NULL, NULL)
INSERT [dbo].[proc_Pagos] ([Id], [MontoPago], [MontoPagado], [FechaVencimiento], [FechaPago], [RegistroPagoPor], [CreadoPor], [CartaCreditoId], [NumeroPago], [NumeroFactura], [Estatus], [Activo], [Creado], [Actualizado], [Eliminado]) VALUES (14, CAST(5000000.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(N'2023-05-21T00:00:00.000' AS DateTime), NULL, NULL, N'12cb7342-837e-45d9-892c-6818a38a3816', N'60E1120E-6299-4F09-90A8-75BD2DEA9CD7', 4, N'', 1, 1, CAST(N'2023-05-16T15:04:11.310' AS DateTime), NULL, NULL)
INSERT [dbo].[proc_Pagos] ([Id], [MontoPago], [MontoPagado], [FechaVencimiento], [FechaPago], [RegistroPagoPor], [CreadoPor], [CartaCreditoId], [NumeroPago], [NumeroFactura], [Estatus], [Activo], [Creado], [Actualizado], [Eliminado]) VALUES (15, CAST(158000.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(N'2023-05-20T00:00:00.000' AS DateTime), NULL, NULL, N'12cb7342-837e-45d9-892c-6818a38a3816', N'60E1120E-6299-4F09-90A8-75BD2DEA9CD7', 3, N'', 1, 1, CAST(N'2023-05-16T15:04:21.730' AS DateTime), NULL, NULL)
INSERT [dbo].[proc_Pagos] ([Id], [MontoPago], [MontoPagado], [FechaVencimiento], [FechaPago], [RegistroPagoPor], [CreadoPor], [CartaCreditoId], [NumeroPago], [NumeroFactura], [Estatus], [Activo], [Creado], [Actualizado], [Eliminado]) VALUES (16, CAST(480000.00 AS Decimal(18, 2)), CAST(480000.00 AS Decimal(18, 2)), CAST(N'2023-04-18T00:00:00.000' AS DateTime), CAST(N'2023-05-18T00:00:00.000' AS DateTime), NULL, N'12cb7342-837e-45d9-892c-6818a38a3816', N'60E1120E-6299-4F09-90A8-75BD2DEA9CD7', 1, N'', 3, 1, CAST(N'2023-05-16T15:04:28.257' AS DateTime), NULL, NULL)
INSERT [dbo].[proc_Pagos] ([Id], [MontoPago], [MontoPagado], [FechaVencimiento], [FechaPago], [RegistroPagoPor], [CreadoPor], [CartaCreditoId], [NumeroPago], [NumeroFactura], [Estatus], [Activo], [Creado], [Actualizado], [Eliminado]) VALUES (17, CAST(4000000.00 AS Decimal(18, 2)), CAST(4000000.00 AS Decimal(18, 2)), CAST(N'2023-05-18T00:00:00.000' AS DateTime), CAST(N'2023-05-12T00:00:00.000' AS DateTime), NULL, N'12cb7342-837e-45d9-892c-6818a38a3816', N'6458DF55-22A8-4EB2-ABC7-EE00F184419E', 1, N'', 3, 1, CAST(N'2023-05-16T15:33:13.370' AS DateTime), NULL, NULL)
INSERT [dbo].[proc_Pagos] ([Id], [MontoPago], [MontoPagado], [FechaVencimiento], [FechaPago], [RegistroPagoPor], [CreadoPor], [CartaCreditoId], [NumeroPago], [NumeroFactura], [Estatus], [Activo], [Creado], [Actualizado], [Eliminado]) VALUES (18, CAST(185000.00 AS Decimal(18, 2)), CAST(185000.00 AS Decimal(18, 2)), CAST(N'2023-05-20T00:00:00.000' AS DateTime), CAST(N'2023-05-11T00:00:00.000' AS DateTime), NULL, N'12cb7342-837e-45d9-892c-6818a38a3816', N'6458DF55-22A8-4EB2-ABC7-EE00F184419E', 2, N'', 3, 1, CAST(N'2023-05-16T15:33:26.673' AS DateTime), NULL, NULL)
INSERT [dbo].[proc_Pagos] ([Id], [MontoPago], [MontoPagado], [FechaVencimiento], [FechaPago], [RegistroPagoPor], [CreadoPor], [CartaCreditoId], [NumeroPago], [NumeroFactura], [Estatus], [Activo], [Creado], [Actualizado], [Eliminado]) VALUES (19, CAST(350000.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(N'2023-06-15T00:00:00.000' AS DateTime), NULL, NULL, N'12cb7342-837e-45d9-892c-6818a38a3816', N'AEF6210B-8963-4E83-AE8C-924D8A759C5E', 5, N'', 1, 1, CAST(N'2023-05-16T15:44:48.280' AS DateTime), NULL, NULL)
INSERT [dbo].[proc_Pagos] ([Id], [MontoPago], [MontoPagado], [FechaVencimiento], [FechaPago], [RegistroPagoPor], [CreadoPor], [CartaCreditoId], [NumeroPago], [NumeroFactura], [Estatus], [Activo], [Creado], [Actualizado], [Eliminado]) VALUES (20, CAST(25000.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(N'2023-06-22T00:00:00.000' AS DateTime), NULL, NULL, N'12cb7342-837e-45d9-892c-6818a38a3816', N'6458DF55-22A8-4EB2-ABC7-EE00F184419E', 5, N'', 1, 1, CAST(N'2023-05-16T15:44:57.183' AS DateTime), NULL, NULL)
INSERT [dbo].[proc_Pagos] ([Id], [MontoPago], [MontoPagado], [FechaVencimiento], [FechaPago], [RegistroPagoPor], [CreadoPor], [CartaCreditoId], [NumeroPago], [NumeroFactura], [Estatus], [Activo], [Creado], [Actualizado], [Eliminado]) VALUES (21, CAST(1000250.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(N'2023-05-25T00:00:00.000' AS DateTime), NULL, NULL, N'12cb7342-837e-45d9-892c-6818a38a3816', N'6458DF55-22A8-4EB2-ABC7-EE00F184419E', 3, N'', 1, 1, CAST(N'2023-05-16T15:45:05.107' AS DateTime), NULL, NULL)
INSERT [dbo].[proc_Pagos] ([Id], [MontoPago], [MontoPagado], [FechaVencimiento], [FechaPago], [RegistroPagoPor], [CreadoPor], [CartaCreditoId], [NumeroPago], [NumeroFactura], [Estatus], [Activo], [Creado], [Actualizado], [Eliminado]) VALUES (22, CAST(185000.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(N'2023-06-16T00:00:00.000' AS DateTime), NULL, NULL, N'12cb7342-837e-45d9-892c-6818a38a3816', N'6458DF55-22A8-4EB2-ABC7-EE00F184419E', 4, N'', 1, 1, CAST(N'2023-05-16T15:45:22.647' AS DateTime), NULL, NULL)
INSERT [dbo].[proc_Pagos] ([Id], [MontoPago], [MontoPagado], [FechaVencimiento], [FechaPago], [RegistroPagoPor], [CreadoPor], [CartaCreditoId], [NumeroPago], [NumeroFactura], [Estatus], [Activo], [Creado], [Actualizado], [Eliminado]) VALUES (23, CAST(125000.00 AS Decimal(18, 2)), CAST(125000.00 AS Decimal(18, 2)), CAST(N'2023-05-16T00:00:00.000' AS DateTime), CAST(N'2023-05-05T00:00:00.000' AS DateTime), NULL, N'12cb7342-837e-45d9-892c-6818a38a3816', N'8508B591-A110-4B52-839D-E64D7E89333C', 1, N'', 3, 1, CAST(N'2023-05-16T15:45:40.950' AS DateTime), NULL, NULL)
INSERT [dbo].[proc_Pagos] ([Id], [MontoPago], [MontoPagado], [FechaVencimiento], [FechaPago], [RegistroPagoPor], [CreadoPor], [CartaCreditoId], [NumeroPago], [NumeroFactura], [Estatus], [Activo], [Creado], [Actualizado], [Eliminado]) VALUES (24, CAST(35000.00 AS Decimal(18, 2)), CAST(35000.00 AS Decimal(18, 2)), CAST(N'2023-05-19T00:00:00.000' AS DateTime), CAST(N'2023-05-15T00:00:00.000' AS DateTime), NULL, N'12cb7342-837e-45d9-892c-6818a38a3816', N'8508B591-A110-4B52-839D-E64D7E89333C', 2, N'', 3, 1, CAST(N'2023-05-16T15:45:47.620' AS DateTime), NULL, NULL)
INSERT [dbo].[proc_Pagos] ([Id], [MontoPago], [MontoPagado], [FechaVencimiento], [FechaPago], [RegistroPagoPor], [CreadoPor], [CartaCreditoId], [NumeroPago], [NumeroFactura], [Estatus], [Activo], [Creado], [Actualizado], [Eliminado]) VALUES (25, CAST(2500000.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(N'2023-05-31T00:00:00.000' AS DateTime), NULL, NULL, N'12cb7342-837e-45d9-892c-6818a38a3816', N'8508B591-A110-4B52-839D-E64D7E89333C', 3, N'', 1, 1, CAST(N'2023-05-16T15:45:55.940' AS DateTime), NULL, NULL)
INSERT [dbo].[proc_Pagos] ([Id], [MontoPago], [MontoPagado], [FechaVencimiento], [FechaPago], [RegistroPagoPor], [CreadoPor], [CartaCreditoId], [NumeroPago], [NumeroFactura], [Estatus], [Activo], [Creado], [Actualizado], [Eliminado]) VALUES (26, CAST(2660000.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(N'2023-06-06T00:00:00.000' AS DateTime), NULL, NULL, N'12cb7342-837e-45d9-892c-6818a38a3816', N'8508B591-A110-4B52-839D-E64D7E89333C', 4, N'', 1, 1, CAST(N'2023-05-16T15:46:08.997' AS DateTime), NULL, NULL)
INSERT [dbo].[proc_Pagos] ([Id], [MontoPago], [MontoPagado], [FechaVencimiento], [FechaPago], [RegistroPagoPor], [CreadoPor], [CartaCreditoId], [NumeroPago], [NumeroFactura], [Estatus], [Activo], [Creado], [Actualizado], [Eliminado]) VALUES (27, CAST(180000.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(N'2023-06-26T00:00:00.000' AS DateTime), NULL, NULL, N'12cb7342-837e-45d9-892c-6818a38a3816', N'8508B591-A110-4B52-839D-E64D7E89333C', 5, N'', 1, 1, CAST(N'2023-05-16T15:46:26.727' AS DateTime), NULL, NULL)
INSERT [dbo].[proc_Pagos] ([Id], [MontoPago], [MontoPagado], [FechaVencimiento], [FechaPago], [RegistroPagoPor], [CreadoPor], [CartaCreditoId], [NumeroPago], [NumeroFactura], [Estatus], [Activo], [Creado], [Actualizado], [Eliminado]) VALUES (28, CAST(125000.00 AS Decimal(18, 2)), CAST(125000.00 AS Decimal(18, 2)), CAST(N'2023-05-16T00:00:00.000' AS DateTime), CAST(N'2023-05-21T00:00:00.000' AS DateTime), NULL, N'12cb7342-837e-45d9-892c-6818a38a3816', N'AB347A0D-F74A-4167-8E21-5104B379EF29', 1, N'', 3, 1, CAST(N'2023-05-16T15:46:46.440' AS DateTime), NULL, NULL)
INSERT [dbo].[proc_Pagos] ([Id], [MontoPago], [MontoPagado], [FechaVencimiento], [FechaPago], [RegistroPagoPor], [CreadoPor], [CartaCreditoId], [NumeroPago], [NumeroFactura], [Estatus], [Activo], [Creado], [Actualizado], [Eliminado]) VALUES (29, CAST(3600000.00 AS Decimal(18, 2)), CAST(3600000.00 AS Decimal(18, 2)), CAST(N'2023-05-25T00:00:00.000' AS DateTime), CAST(N'2023-05-14T00:00:00.000' AS DateTime), NULL, N'12cb7342-837e-45d9-892c-6818a38a3816', N'AB347A0D-F74A-4167-8E21-5104B379EF29', 2, N'', 3, 1, CAST(N'2023-05-16T15:46:53.447' AS DateTime), NULL, NULL)
INSERT [dbo].[proc_Pagos] ([Id], [MontoPago], [MontoPagado], [FechaVencimiento], [FechaPago], [RegistroPagoPor], [CreadoPor], [CartaCreditoId], [NumeroPago], [NumeroFactura], [Estatus], [Activo], [Creado], [Actualizado], [Eliminado]) VALUES (30, CAST(1250000.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(N'2023-06-21T00:00:00.000' AS DateTime), NULL, NULL, N'12cb7342-837e-45d9-892c-6818a38a3816', N'AB347A0D-F74A-4167-8E21-5104B379EF29', 5, N'', 1, 1, CAST(N'2023-05-16T15:47:02.450' AS DateTime), NULL, NULL)
INSERT [dbo].[proc_Pagos] ([Id], [MontoPago], [MontoPagado], [FechaVencimiento], [FechaPago], [RegistroPagoPor], [CreadoPor], [CartaCreditoId], [NumeroPago], [NumeroFactura], [Estatus], [Activo], [Creado], [Actualizado], [Eliminado]) VALUES (31, CAST(30000.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(N'2023-06-12T00:00:00.000' AS DateTime), NULL, NULL, N'12cb7342-837e-45d9-892c-6818a38a3816', N'AB347A0D-F74A-4167-8E21-5104B379EF29', 4, N'', 1, 1, CAST(N'2023-05-16T15:47:09.830' AS DateTime), NULL, NULL)
INSERT [dbo].[proc_Pagos] ([Id], [MontoPago], [MontoPagado], [FechaVencimiento], [FechaPago], [RegistroPagoPor], [CreadoPor], [CartaCreditoId], [NumeroPago], [NumeroFactura], [Estatus], [Activo], [Creado], [Actualizado], [Eliminado]) VALUES (32, CAST(48000.00 AS Decimal(18, 2)), CAST(48000.00 AS Decimal(18, 2)), CAST(N'2023-06-03T00:00:00.000' AS DateTime), CAST(N'2023-06-02T00:00:00.000' AS DateTime), NULL, N'12cb7342-837e-45d9-892c-6818a38a3816', N'AB347A0D-F74A-4167-8E21-5104B379EF29', 3, N'', 3, 1, CAST(N'2023-05-16T15:47:17.543' AS DateTime), NULL, NULL)
INSERT [dbo].[proc_Pagos] ([Id], [MontoPago], [MontoPagado], [FechaVencimiento], [FechaPago], [RegistroPagoPor], [CreadoPor], [CartaCreditoId], [NumeroPago], [NumeroFactura], [Estatus], [Activo], [Creado], [Actualizado], [Eliminado]) VALUES (33, CAST(1200000.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(N'2023-06-26T00:00:00.000' AS DateTime), NULL, NULL, N'12cb7342-837e-45d9-892c-6818a38a3816', N'9ADCB0BB-C337-4BB3-AC25-F8157B36E79B', 5, N'', 1, 1, CAST(N'2023-05-16T15:49:47.313' AS DateTime), NULL, NULL)
INSERT [dbo].[proc_Pagos] ([Id], [MontoPago], [MontoPagado], [FechaVencimiento], [FechaPago], [RegistroPagoPor], [CreadoPor], [CartaCreditoId], [NumeroPago], [NumeroFactura], [Estatus], [Activo], [Creado], [Actualizado], [Eliminado]) VALUES (34, CAST(300000.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(N'2023-06-30T00:00:00.000' AS DateTime), NULL, NULL, N'12cb7342-837e-45d9-892c-6818a38a3816', N'9ADCB0BB-C337-4BB3-AC25-F8157B36E79B', 6, N'', 1, 1, CAST(N'2023-05-16T15:50:22.170' AS DateTime), NULL, NULL)
INSERT [dbo].[proc_Pagos] ([Id], [MontoPago], [MontoPagado], [FechaVencimiento], [FechaPago], [RegistroPagoPor], [CreadoPor], [CartaCreditoId], [NumeroPago], [NumeroFactura], [Estatus], [Activo], [Creado], [Actualizado], [Eliminado]) VALUES (35, CAST(434000.00 AS Decimal(18, 2)), CAST(434000.00 AS Decimal(18, 2)), CAST(N'2023-05-01T00:00:00.000' AS DateTime), CAST(N'2023-05-02T00:00:00.000' AS DateTime), NULL, N'12cb7342-837e-45d9-892c-6818a38a3816', N'DCEB6284-5665-40E6-A714-87E1CA01D30C', 1, N'', 3, 1, CAST(N'2023-05-16T15:56:36.473' AS DateTime), NULL, NULL)
INSERT [dbo].[proc_Pagos] ([Id], [MontoPago], [MontoPagado], [FechaVencimiento], [FechaPago], [RegistroPagoPor], [CreadoPor], [CartaCreditoId], [NumeroPago], [NumeroFactura], [Estatus], [Activo], [Creado], [Actualizado], [Eliminado]) VALUES (36, CAST(330050.00 AS Decimal(18, 2)), CAST(330050.00 AS Decimal(18, 2)), CAST(N'2023-05-04T00:00:00.000' AS DateTime), CAST(N'2023-05-11T00:00:00.000' AS DateTime), NULL, N'12cb7342-837e-45d9-892c-6818a38a3816', N'DCEB6284-5665-40E6-A714-87E1CA01D30C', 2, N'', 3, 1, CAST(N'2023-05-16T15:56:43.560' AS DateTime), NULL, NULL)
INSERT [dbo].[proc_Pagos] ([Id], [MontoPago], [MontoPagado], [FechaVencimiento], [FechaPago], [RegistroPagoPor], [CreadoPor], [CartaCreditoId], [NumeroPago], [NumeroFactura], [Estatus], [Activo], [Creado], [Actualizado], [Eliminado]) VALUES (37, CAST(125000.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(N'2023-05-18T00:00:00.000' AS DateTime), NULL, NULL, N'12cb7342-837e-45d9-892c-6818a38a3816', N'DCEB6284-5665-40E6-A714-87E1CA01D30C', 4, N'', 1, 1, CAST(N'2023-05-16T15:56:51.223' AS DateTime), NULL, NULL)
INSERT [dbo].[proc_Pagos] ([Id], [MontoPago], [MontoPagado], [FechaVencimiento], [FechaPago], [RegistroPagoPor], [CreadoPor], [CartaCreditoId], [NumeroPago], [NumeroFactura], [Estatus], [Activo], [Creado], [Actualizado], [Eliminado]) VALUES (38, CAST(450000.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(N'2023-05-12T00:00:00.000' AS DateTime), NULL, NULL, N'12cb7342-837e-45d9-892c-6818a38a3816', N'DCEB6284-5665-40E6-A714-87E1CA01D30C', 3, N'', 1, 1, CAST(N'2023-05-16T15:57:00.820' AS DateTime), NULL, NULL)
INSERT [dbo].[proc_Pagos] ([Id], [MontoPago], [MontoPagado], [FechaVencimiento], [FechaPago], [RegistroPagoPor], [CreadoPor], [CartaCreditoId], [NumeroPago], [NumeroFactura], [Estatus], [Activo], [Creado], [Actualizado], [Eliminado]) VALUES (39, CAST(440000.00 AS Decimal(18, 2)), CAST(440000.00 AS Decimal(18, 2)), CAST(N'2023-05-01T00:00:00.000' AS DateTime), CAST(N'2023-05-02T00:00:00.000' AS DateTime), NULL, N'12cb7342-837e-45d9-892c-6818a38a3816', N'7E45C91C-AC3E-4785-ADE5-43AC04C2FCC4', 1, N'', 3, 1, CAST(N'2023-05-16T15:57:12.170' AS DateTime), NULL, NULL)
INSERT [dbo].[proc_Pagos] ([Id], [MontoPago], [MontoPagado], [FechaVencimiento], [FechaPago], [RegistroPagoPor], [CreadoPor], [CartaCreditoId], [NumeroPago], [NumeroFactura], [Estatus], [Activo], [Creado], [Actualizado], [Eliminado]) VALUES (40, CAST(1250000.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(N'2023-05-10T00:00:00.000' AS DateTime), NULL, NULL, N'12cb7342-837e-45d9-892c-6818a38a3816', N'7E45C91C-AC3E-4785-ADE5-43AC04C2FCC4', 4, N'', 1, 1, CAST(N'2023-05-16T15:57:20.343' AS DateTime), NULL, NULL)
INSERT [dbo].[proc_Pagos] ([Id], [MontoPago], [MontoPagado], [FechaVencimiento], [FechaPago], [RegistroPagoPor], [CreadoPor], [CartaCreditoId], [NumeroPago], [NumeroFactura], [Estatus], [Activo], [Creado], [Actualizado], [Eliminado]) VALUES (41, CAST(3000000.00 AS Decimal(18, 2)), CAST(3000000.00 AS Decimal(18, 2)), CAST(N'2023-05-05T00:00:00.000' AS DateTime), CAST(N'2023-05-12T00:00:00.000' AS DateTime), NULL, N'12cb7342-837e-45d9-892c-6818a38a3816', N'7E45C91C-AC3E-4785-ADE5-43AC04C2FCC4', 2, N'', 3, 1, CAST(N'2023-05-16T15:57:30.840' AS DateTime), NULL, NULL)
INSERT [dbo].[proc_Pagos] ([Id], [MontoPago], [MontoPagado], [FechaVencimiento], [FechaPago], [RegistroPagoPor], [CreadoPor], [CartaCreditoId], [NumeroPago], [NumeroFactura], [Estatus], [Activo], [Creado], [Actualizado], [Eliminado]) VALUES (42, CAST(500000.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(N'2023-05-09T00:00:00.000' AS DateTime), NULL, NULL, N'12cb7342-837e-45d9-892c-6818a38a3816', N'7E45C91C-AC3E-4785-ADE5-43AC04C2FCC4', 3, N'', 1, 1, CAST(N'2023-05-16T15:57:38.887' AS DateTime), NULL, NULL)
SET IDENTITY_INSERT [dbo].[proc_Pagos] OFF
GO
SET IDENTITY_INSERT [dbo].[proc_Reportes] ON 

INSERT [dbo].[proc_Reportes] ([Id], [TipoReporte], [Creado], [CreadoPorId], [CreadoPor], [Filename]) VALUES (34, N'Análisis de Cartas de Crédito', CAST(N'2023-05-18T17:02:07.683' AS DateTime), N'7E7836AF-0F46-4F5C-944B-194ED9D87AEF', N'Prueba Usuario', N'análisis-de-cartas-de-crédito20235181727.xlsx')
SET IDENTITY_INSERT [dbo].[proc_Reportes] OFF
GO
ALTER TABLE [dbo].[AspNetPermissions] ADD  CONSTRAINT [DF_AspNetPermissions_Activo]  DEFAULT ((1)) FOR [Activo]
GO
ALTER TABLE [dbo].[AspNetRoles] ADD  CONSTRAINT [DF_AspNetRoles_Activo]  DEFAULT ((1)) FOR [Activo]
GO
ALTER TABLE [dbo].[AspNetUsers] ADD  CONSTRAINT [DF_AspNetUsers_Activo]  DEFAULT ((0)) FOR [Activo]
GO
ALTER TABLE [dbo].[cat_Bancos] ADD  CONSTRAINT [DF_cat_Bancos_Activo]  DEFAULT ((1)) FOR [Activo]
GO
ALTER TABLE [dbo].[cat_Comisiones] ADD  CONSTRAINT [DF_cat_Comisiones_Activo]  DEFAULT ((1)) FOR [Activo]
GO
ALTER TABLE [dbo].[cat_Compradores] ADD  CONSTRAINT [DF_cat_Compradores_Activo]  DEFAULT ((1)) FOR [Activo]
GO
ALTER TABLE [dbo].[cat_Divisiones] ADD  CONSTRAINT [DF_cat_Divisiones_Activo]  DEFAULT ((1)) FOR [Activo]
GO
ALTER TABLE [dbo].[cat_Documentos] ADD  CONSTRAINT [DF_cat_Documentos_Activo]  DEFAULT ((1)) FOR [Activo]
GO
ALTER TABLE [dbo].[cat_Empresas] ADD  CONSTRAINT [DF_cat_Empresas_Activo]  DEFAULT ((0)) FOR [Activo]
GO
ALTER TABLE [dbo].[cat_LineasCredito] ADD  CONSTRAINT [DF_cat_LineasCredito_Activo]  DEFAULT ((1)) FOR [Activo]
GO
ALTER TABLE [dbo].[cat_Monedas] ADD  CONSTRAINT [DF_cat_Monedas_Activo]  DEFAULT ((1)) FOR [Activo]
GO
ALTER TABLE [dbo].[cat_Proveedores] ADD  CONSTRAINT [DF_cat_Proveedores_Activo]  DEFAULT ((1)) FOR [Activo]
GO
ALTER TABLE [dbo].[cat_Proyectos] ADD  CONSTRAINT [DF_cat_Proyectos_Activo]  DEFAULT ((1)) FOR [Activo]
GO
ALTER TABLE [dbo].[cat_TiposActivo] ADD  CONSTRAINT [DF_cat_TiposActivo_Activo]  DEFAULT ((1)) FOR [Activo]
GO
ALTER TABLE [dbo].[cat_TiposCobertura] ADD  CONSTRAINT [DF_cat_TiposCobertura_Activo]  DEFAULT ((1)) FOR [Activo]
GO
ALTER TABLE [dbo].[cat_TiposComision] ADD  CONSTRAINT [DF_cat_TiposComision_Activo]  DEFAULT ((1)) FOR [Activo]
GO
ALTER TABLE [dbo].[cat_TiposPersonaFiscal] ADD  CONSTRAINT [DF_cat_TiposPersonaFiscal_Activo]  DEFAULT ((1)) FOR [Activo]
GO
ALTER TABLE [dbo].[proc_CartasCredito] ADD  CONSTRAINT [DF_proc_CartasCredito_Activo]  DEFAULT ((1)) FOR [Activo]
GO
ALTER TABLE [dbo].[proc_Enmiendas] ADD  CONSTRAINT [DF_proc_Enmiendas_Activo]  DEFAULT ((1)) FOR [Activo]
GO
ALTER TABLE [dbo].[proc_Pagos] ADD  CONSTRAINT [DF_proc_Pagos_Activo]  DEFAULT ((1)) FOR [Activo]
GO
ALTER TABLE [dbo].[proc_PFEProgramas] ADD  CONSTRAINT [DF_proc_PFE_Programas_Activo]  DEFAULT ((1)) FOR [Activo]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
/****** Object:  StoredProcedure [dbo].[cons_AgenteAduanalById]    Script Date: 22/05/2023 07:21:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[cons_AgenteAduanalById]
	@Id int = null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	IF @Id IS NOT NULL		
		BEGIN
			SELECT  c.Id, c.Nombre, c.Descripcion,
					c.Activo, c.CreadoPor, c.Creado, c.Actualizado, c.Eliminado
    		FROM  cat_AgentesAduanales c WITH (NOLOCK)
			WHERE c.Id = @Id
		END
			
	ELSE 
		BEGIN
					 
			SELECT 99 AS ErrorNumber, 'Parametro id es requerido' AS ErrorMessage, 0 AS ErrorLine
		END

END
GO
/****** Object:  StoredProcedure [dbo].[cons_AgentesAduanales]    Script Date: 22/05/2023 07:21:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[cons_AgentesAduanales]
	@Activo bit = 0
AS
BEGIN
	SET NOCOUNT ON;

	if @Activo > 0
		begin
			SELECT  c.Id, c.Nombre, c.Descripcion,
					c.Activo, c.CreadoPor, c.Creado, c.Actualizado, c.Eliminado
    		FROM  cat_AgentesAduanales c WITH (NOLOCK)
			where c.Activo=@Activo 
			order by c.Creado desc;
		end
	else
		begin
			SELECT  c.Id, c.Nombre, c.Descripcion,
					c.Activo, c.CreadoPor, c.Creado, c.Actualizado, c.Eliminado
    		FROM  cat_AgentesAduanales c WITH (NOLOCK)
			order by c.Creado desc;
		end
END
GO
/****** Object:  StoredProcedure [dbo].[cons_AspNetPermissions]    Script Date: 22/05/2023 07:21:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[cons_AspNetPermissions]
	@Activo bit = 1
AS
BEGIN
	SET NOCOUNT ON;

    if @Activo > 0
		begin
			SELECT Id, Name, Description, Activo
			FROM AspNetPermissions where Activo=@Activo order by Name desc;
		end
	else
		begin
			SELECT Id, Name, Description, Activo
			FROM AspNetPermissions order by Name desc;
		end
END
GO
/****** Object:  StoredProcedure [dbo].[cons_AspNetPermissionsById]    Script Date: 22/05/2023 07:21:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[cons_AspNetPermissionsById]
	@Id int = null
AS
BEGIN
	SET NOCOUNT ON;

    if @Id is not null
		begin
			SELECT prm.Id, prm.Name, prm.Description, prm.Activo
			FROM AspNetPermissions prm 
			where prm.Id=@Id;
		end
	else
		begin
			SELECT 99 AS ErrorNumber, 'Parametro id es requerido' AS ErrorMessage, 0 AS ErrorLine
		end
END
GO
/****** Object:  StoredProcedure [dbo].[cons_AspNetPermissionsByRoleId]    Script Date: 22/05/2023 07:21:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[cons_AspNetPermissionsByRoleId]
	@RoleId nvarchar(max) = null
AS
BEGIN
	SET NOCOUNT ON;

    if @RoleId is not null
		begin
			SELECT prm.Id, prm.Name, prm.Description, prm.Activo
			FROM AspNetPermissions prm 
			JOIN AspNetRolePermissions on prm.Id=AspNetRolePermissions.PermissionId
			where AspNetRolePermissions.RoleId=@RoleId;
		end
	else
		begin
			SELECT 99 AS ErrorNumber, 'Parametro id es requerido' AS ErrorMessage, 0 AS ErrorLine
		end
END
GO
/****** Object:  StoredProcedure [dbo].[cons_AspNetRoleById]    Script Date: 22/05/2023 07:21:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[cons_AspNetRoleById]
	@Id nvarchar(max) = null
AS
BEGIN
	SET NOCOUNT ON;

    IF @Id IS NOT NULL
		BEGIN
			SELECT Id, Name, Activo
			FROM AspNetRoles WHERE Id=@Id;
		END
	ELSE
		BEGIN
			SELECT 99 AS ErrorNumber, 'Parametro id es requerido' AS ErrorMessage, 0 AS ErrorLine
		END
END
GO
/****** Object:  StoredProcedure [dbo].[cons_AspNetRoles]    Script Date: 22/05/2023 07:21:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[cons_AspNetRoles]
	@Activo bit = 1
AS
BEGIN
	SET NOCOUNT ON;

	if @Activo > 0
		begin
			SELECT Id, Name, Activo
			FROM AspNetRoles where Activo=@Activo order by Name desc;
		end
	else
		begin
			SELECT Id, Name, Activo
			FROM AspNetRoles order by Name desc;
		end
END
GO
/****** Object:  StoredProcedure [dbo].[cons_AspNetUserById]    Script Date: 22/05/2023 07:21:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[cons_AspNetUserById]
	@Id nvarchar(max) = null
AS
BEGIN
	SET NOCOUNT ON;

    IF @Id IS NOT NULL
		BEGIN
			SELECT Id, Email, EmailConfirmed, PasswordHash, PhoneNumber, PhoneNumberConfirmed, TwoFactorEnabled, LockoutEndDateUtc, LockoutEnabled,
				AccessFailedCount, UserName, Activo, AspNetUserRoles.RoleId
			FROM AspNetUsers 
			LEFT JOIN AspNetUserRoles on AspNetUsers.Id=AspNetUserRoles.UserId
			WHERE Id=@Id;
		END
	ELSE
		BEGIN
			SELECT 99 AS ErrorNumber, 'Parametro id es requerido' AS ErrorMessage, 0 AS ErrorLine
		END
END
GO
/****** Object:  StoredProcedure [dbo].[cons_AspNetUserByUserName]    Script Date: 22/05/2023 07:21:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[cons_AspNetUserByUserName]
	@Usuario nvarchar(max)
AS
BEGIN
	SET NOCOUNT ON;

	begin tran
		begin try
			SELECT Id, Email, EmailConfirmed, PasswordHash, PhoneNumber, PhoneNumberConfirmed, TwoFactorEnabled, LockoutEndDateUtc, LockoutEnabled,
				AccessFailedCount, UserName, Activo
				from AspNetUsers with (nolock) 
				where UserName=@Usuario;
			commit;
		end try
		begin catch
			rollback tran;
			select ERROR_NUMBER() as ErrorNumber, ERROR_MESSAGE() as ErrorMessage, ERROR_LINE() as ErrorLine, 0 as ID;
		end catch
END
GO
/****** Object:  StoredProcedure [dbo].[cons_AspNetUserProfileByUserId]    Script Date: 22/05/2023 07:21:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[cons_AspNetUserProfileByUserId]
	@UserId nvarchar(max) = null
AS
BEGIN
	SET NOCOUNT ON;

    IF @UserId is not null
		BEGIN
			SELECT Id, Name, LastName, DisplayName, UserId, Notes
			FROM AspNetUserProfile WHERE UserId=@UserId;
		END
	ELSE
		BEGIN
			SELECT 99 AS ErrorNumber, 'Parametro id es requerido' AS ErrorMessage, 0 AS ErrorLine
		END
END
GO
/****** Object:  StoredProcedure [dbo].[cons_AspNetUsers]    Script Date: 22/05/2023 07:21:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[cons_AspNetUsers]
	@Activo bit = 1
AS
BEGIN
	SET NOCOUNT ON;

	if @Activo > 0
		begin
			SELECT Id, Email, EmailConfirmed, PasswordHash, PhoneNumber, PhoneNumberConfirmed, TwoFactorEnabled, LockoutEndDateUtc, LockoutEnabled,
				AccessFailedCount, UserName, Activo, AspNetUserRoles.RoleId
			FROM AspNetUsers 
			LEFT JOIN AspNetUserRoles on AspNetUsers.Id=AspNetUserRoles.UserId
			where Activo=@Activo 
			order by UserName desc;
		end
	else
		begin
			SELECT Id, Email, EmailConfirmed, PasswordHash, PhoneNumber, PhoneNumberConfirmed, TwoFactorEnabled, LockoutEndDateUtc, LockoutEnabled,
				AccessFailedCount, UserName, Activo, AspNetUserRoles.RoleId
			FROM AspNetUsers 
			LEFT JOIN AspNetUserRoles on AspNetUsers.Id=AspNetUserRoles.UserId
			order by UserName desc;
		end
END
GO
/****** Object:  StoredProcedure [dbo].[cons_BancoById]    Script Date: 22/05/2023 07:21:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[cons_BancoById]
	@Id int = null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	IF @Id IS NOT NULL		
		BEGIN
			SELECT  Id, Nombre, Descripcion, TotalLinea, Activo, CreadoPor, Creado, Actualizado, Eliminado
		    		FROM  cat_Bancos WITH (NOLOCK)
					WHERE Id = @Id
		END
			
	ELSE 
		BEGIN
					 
			SELECT 99 AS ErrorNumber, 'Parametro id es requerido' AS ErrorMessage, 0 AS ErrorLine
		END

END
GO
/****** Object:  StoredProcedure [dbo].[cons_Bancos]    Script Date: 22/05/2023 07:21:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[cons_Bancos]
	@Activo bit = 0
AS
BEGIN
	SET NOCOUNT ON;

	if @Activo > 0
		begin
			SELECT Id, Nombre, Descripcion, TotalLinea, Activo, CreadoPor, Creado, Actualizado, Eliminado FROM cat_Bancos where Activo=@Activo order by Creado desc;
		end
	else
		begin
			SELECT Id, Nombre, Descripcion, TotalLinea, Activo, CreadoPor, Creado, Actualizado, Eliminado FROM cat_Bancos order by Creado desc;
		end
END
GO
/****** Object:  StoredProcedure [dbo].[cons_BitacoraMovimientos]    Script Date: 22/05/2023 07:21:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[cons_BitacoraMovimientos]
	@FechaInicio datetime = null,
	@FechaFin datetime = null
AS
BEGIN
	SET NOCOUNT ON;

	if @FechaInicio is not null and @FechaFin is not null
		begin
			select mvs.Id, mvs.Titulo, mvs.Descripcion, mvs.CartaCreditoId,
				mvs.ModeloNombre, mvs.ModeloId, mvs.CreadoPorId, mvs.Creado, CONCAT(usr.Name,' ',usr.LastName) as CreadoPor
			from proc_BitacoraMovimientos mvs
			left join AspNetUsers aspusr on mvs.CreadoPorId=aspusr.Id
			left join AspNetUserProfile usr on aspusr.Id=usr.UserId
		end
	else
		begin
			SELECT 99 AS ErrorNumber, 'Parametro FechaInicio y FechaFin es requerido' AS ErrorMessage, 0 AS ErrorLine
		end
END
GO
/****** Object:  StoredProcedure [dbo].[cons_CartaById]    Script Date: 22/05/2023 07:21:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE   PROCEDURE [dbo].[cons_CartaById]
	@Id nvarchar(50)
AS
BEGIN
	SET NOCOUNT ON;

    IF @Id IS NOT NULL		
		BEGIN
			SELECT
				proc_CartasCredito.Consecutive, proc_CartasCredito.Id,
				cat_TiposActivo.Nombre as TipoActivo,
				cat_Bancos.Nombre as Banco,
				FechaVencimiento,NumCartaCredito,TipoCarta,TipoActivoId,BancoId,ProyectoId,ProveedorId,proc_CartasCredito.EmpresaId,AgenteAduanalId,MonedaId,
				TipoPago,proc_CartasCredito.Responsable,CompradorId,PorcentajeTolerancia,NumeroOrdenCompra,CostoApertura,MontoOrdenCompra,MontoOriginalLC,PagosEfectuados,PagosProgramados,MontoDispuesto,
				SaldoInsoluto,proc_CartasCredito.FechaApertura,Incoterm,FechaLimiteEmbarque,EmbarquesParciales,Transbordos,PuntoEmbarque, PuntoDesembarque,DescripcionMercancia,DescripcionCartaCredito,PagoCartaAceptacion,
				ConsignacionMercancia,ConsideracionesAdicionales,DiasParaPresentarDocumentos,DiasPlazoProveedor,CondicionesPago,NumeroPeriodos,BancoCorresponsalId,SeguroPorCuenta,
				GastosComisionesCorresponsal,ConfirmacionBancoNotificador,Estatus,TipoEmision,DocumentoSwift,proc_CartasCredito.CreadoPor, proc_CartasCredito.Creado, proc_CartasCredito.Activo,
				prvdrs.Nombre as Proveedor, prycts.Nombre as Proyecto, agntAdnl.Nombre as AgenteAduanal, mnd.Nombre as Moneda, bncCor.Nombre as BancoCorresponsal, empr.Nombre as Empresa,
				cmrpdrs.Nombre as Comprador, proc_CartasCredito.InstruccionesEspeciales
		
				FROM proc_CartasCredito
				LEFT JOIN cat_TiposActivo on cat_TiposActivo.Id = proc_CartasCredito.TipoActivoId
				LEFT JOIN cat_Bancos on cat_Bancos.Id = proc_CartasCredito.BancoId
				LEFT JOIN cat_Bancos bncCor on bncCor.Id = proc_CartasCredito.BancoCorresponsalId
				LEFT JOIN cat_Proyectos prycts on prycts.Id = proc_CartasCredito.ProyectoId
				LEFT JOIN cat_Proveedores prvdrs on prvdrs.Id = proc_CartasCredito.ProveedorId
				LEFT JOIN cat_Empresas empr on empr.Id = proc_CartasCredito.EmpresaId
				LEFT JOIN cat_AgentesAduanales agntAdnl on agntAdnl .Id = proc_CartasCredito.AgenteAduanalId
				LEFT JOIN cat_Monedas mnd on mnd.Id = proc_CartasCredito.MonedaId
				LEFT JOIN cat_Compradores cmrpdrs on cmrpdrs.Id = proc_CartasCredito.CompradorId
				WHERE proc_CartasCredito.Id = @Id
				ORDER BY Creado ASC;
		END
			
	ELSE 

		BEGIN
					 
			SELECT 99 AS ErrorNumber, 'Parametro Uuid es necesario' AS ErrorMessage, 0 AS ErrorLine
		END
END
GO
/****** Object:  StoredProcedure [dbo].[cons_CartasCredito]    Script Date: 22/05/2023 07:21:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[cons_CartasCredito]
	@Activo int,
	@FechaInicio datetime = null,
	@FechaFin datetime = null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    IF @Activo > -1
	BEGIN
		SELECT
		proc_CartasCredito.Consecutive, proc_CartasCredito.Id,
		cat_TiposActivo.Nombre as TipoActivo,
		cat_Bancos.Nombre as Banco,
		cat_Empresas.Nombre as Empresa,
		cat_Proveedores.Nombre as Proveedor,
		cat_Monedas.Nombre as Moneda,
		FechaVencimiento,NumCartaCredito,TipoCarta,TipoActivoId,BancoId,ProyectoId,ProveedorId,proc_CartasCredito.EmpresaId,AgenteAduanalId,MonedaId,
		TipoPago,proc_CartasCredito.Responsable,CompradorId,PorcentajeTolerancia,NumeroOrdenCompra,CostoApertura,MontoOrdenCompra,MontoOriginalLC,PagosEfectuados,PagosProgramados,MontoDispuesto,
		SaldoInsoluto,proc_CartasCredito.FechaApertura,Incoterm,FechaLimiteEmbarque,EmbarquesParciales,Transbordos,PuntoEmbarque,PuntoDesembarque,DescripcionMercancia,DescripcionCartaCredito,PagoCartaAceptacion,
		ConsignacionMercancia,ConsideracionesAdicionales,DiasParaPresentarDocumentos,DiasPlazoProveedor,CondicionesPago,NumeroPeriodos,BancoCorresponsalId,SeguroPorCuenta,
		GastosComisionesCorresponsal,ConfirmacionBancoNotificador,Estatus,TipoEmision,DocumentoSwift,proc_CartasCredito.CreadoPor, proc_CartasCredito.Creado, proc_CartasCredito.Activo
		
		FROM proc_CartasCredito
		LEFT JOIN cat_TiposActivo on cat_TiposActivo.Id = proc_CartasCredito.TipoActivoId
		LEFT JOIN cat_Bancos on cat_Bancos.Id = proc_CartasCredito.BancoId
		LEFT JOIN cat_Proyectos on cat_Proyectos.Id = proc_CartasCredito.ProyectoId
		LEFT JOIN cat_Proveedores on cat_Proveedores.Id = proc_CartasCredito.ProveedorId
		LEFT JOIN cat_Empresas on cat_Empresas.Id = proc_CartasCredito.EmpresaId
		LEFT JOIN cat_AgentesAduanales on cat_AgentesAduanales.Id = proc_CartasCredito.AgenteAduanalId
		LEFT JOIN cat_Monedas on cat_Monedas.Id = proc_CartasCredito.MonedaId
		WHERE proc_CartasCredito.Activo = @Activo and proc_CartasCredito.Creado >= @FechaInicio and proc_CartasCredito.Creado <= @FechaFin
		ORDER BY Creado ASC;
	END
	ELSE
	BEGIN
		SELECT
		proc_CartasCredito.Consecutive, proc_CartasCredito.Id,
		cat_TiposActivo.Nombre as TipoActivo,
		cat_Bancos.Nombre as Banco,
		FechaVencimiento,NumCartaCredito,TipoCarta,TipoActivoId,BancoId,ProyectoId,ProveedorId,proc_CartasCredito.EmpresaId,AgenteAduanalId,MonedaId,
		TipoPago,proc_CartasCredito.Responsable,CompradorId,PorcentajeTolerancia,NumeroOrdenCompra,CostoApertura,MontoOrdenCompra,MontoOriginalLC,PagosEfectuados,PagosProgramados,MontoDispuesto,
		SaldoInsoluto,proc_CartasCredito.FechaApertura,Incoterm,FechaLimiteEmbarque,EmbarquesParciales,Transbordos,PuntoEmbarque,PuntoDesembarque,DescripcionMercancia,DescripcionCartaCredito,PagoCartaAceptacion,
		ConsignacionMercancia,ConsideracionesAdicionales,DiasParaPresentarDocumentos,DiasPlazoProveedor,CondicionesPago,NumeroPeriodos,BancoCorresponsalId,SeguroPorCuenta,
		GastosComisionesCorresponsal,ConfirmacionBancoNotificador,Estatus,TipoEmision,DocumentoSwift,proc_CartasCredito.CreadoPor, proc_CartasCredito.Creado, proc_CartasCredito.Activo
		
		FROM proc_CartasCredito
		LEFT JOIN cat_TiposActivo on cat_TiposActivo.Id = proc_CartasCredito.TipoActivoId
		LEFT JOIN cat_Bancos on cat_Bancos.Id = proc_CartasCredito.BancoId
		LEFT JOIN cat_Proyectos on cat_Proyectos.Id = proc_CartasCredito.ProyectoId
		LEFT JOIN cat_Proveedores on cat_Proveedores.Id = proc_CartasCredito.ProveedorId
		LEFT JOIN cat_Empresas on cat_Empresas.Id = proc_CartasCredito.EmpresaId
		LEFT JOIN cat_AgentesAduanales on cat_AgentesAduanales.Id = proc_CartasCredito.AgenteAduanalId
		LEFT JOIN cat_Monedas on cat_Monedas.Id = proc_CartasCredito.MonedaId
		where proc_CartasCredito.Creado >= @FechaInicio and proc_CartasCredito.Creado <= @FechaFin
		ORDER BY Creado ASC;
	END
END
GO
/****** Object:  StoredProcedure [dbo].[cons_CartasCreditoFiltrar]    Script Date: 22/05/2023 07:21:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[cons_CartasCreditoFiltrar]	
	@FechaInicio datetime = null,
	@FechaFin datetime = null
AS
BEGIN
	SET NOCOUNT ON;

	IF @FechaInicio IS NOT NULL AND @FechaFin IS NOT NULL
		BEGIN
			SELECT
				proc_CartasCredito.Consecutive, proc_CartasCredito.Id,
				cat_TiposActivo.Nombre as TipoActivo,
				cat_Bancos.Nombre as Banco,
				cat_Empresas.Nombre as Empresa,
				cat_Proveedores.Nombre as Proveedor,
				cat_Monedas.Nombre as Moneda,
				FechaVencimiento, NumCartaCredito,TipoCarta,TipoActivoId,BancoId,ProyectoId,ProveedorId,proc_CartasCredito.EmpresaId,AgenteAduanalId,MonedaId,
				TipoPago,proc_CartasCredito.Responsable,CompradorId,PorcentajeTolerancia,NumeroOrdenCompra,CostoApertura,MontoOrdenCompra,MontoOriginalLC,PagosEfectuados,PagosProgramados,MontoDispuesto,
				SaldoInsoluto,proc_CartasCredito.FechaApertura,Incoterm,FechaLimiteEmbarque,EmbarquesParciales,Transbordos,PuntoEmbarque,PuntoDesembarque,DescripcionMercancia,DescripcionCartaCredito,PagoCartaAceptacion,
				ConsignacionMercancia,ConsideracionesAdicionales,DiasParaPresentarDocumentos,DiasPlazoProveedor,CondicionesPago,NumeroPeriodos,BancoCorresponsalId,SeguroPorCuenta,
				GastosComisionesCorresponsal,ConfirmacionBancoNotificador,Estatus,TipoEmision,DocumentoSwift,proc_CartasCredito.CreadoPor, proc_CartasCredito.Creado, proc_CartasCredito.Activo
		
				FROM proc_CartasCredito
				LEFT JOIN cat_TiposActivo on cat_TiposActivo.Id = proc_CartasCredito.TipoActivoId
				LEFT JOIN cat_Bancos on cat_Bancos.Id = proc_CartasCredito.BancoId
				LEFT JOIN cat_Proyectos on cat_Proyectos.Id = proc_CartasCredito.ProyectoId
				LEFT JOIN cat_Proveedores on cat_Proveedores.Id = proc_CartasCredito.ProveedorId
				LEFT JOIN cat_Empresas on cat_Empresas.Id = proc_CartasCredito.EmpresaId
				LEFT JOIN cat_AgentesAduanales on cat_AgentesAduanales.Id = proc_CartasCredito.AgenteAduanalId
				LEFT JOIN cat_Monedas on cat_Monedas.Id = proc_CartasCredito.MonedaId
				
				WHERE proc_CartasCredito.Creado >= @FechaInicio AND proc_CartasCredito.Creado <= @FechaFin;
		END
			
	ELSE 
		BEGIN
					 
			SELECT 99 AS ErrorNumber, 'Parametro FechaInicio y FechaFin es requerido' AS ErrorMessage, 0 AS ErrorLine
		END
END
GO
/****** Object:  StoredProcedure [dbo].[cons_CartasCreditoFiltrar_V1]    Script Date: 22/05/2023 07:21:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[cons_CartasCreditoFiltrar_V1]
	@NumCarta nvarchar(max) = null,
	@TipoCarta nvarchar(50) = null,
	@TipoActivoId int = 0,
	@MonedaId int = 0,
	@ProveedorId int = 0,
	@EmpresaId int = 0,
	@BancoId int = 0,
	@Estatus int = 1,
	@FechaInicio datetime = null,
	@FechaFin datetime = null
AS
BEGIN
	SET NOCOUNT ON;

	declare @query nvarchar(max);
	
	set @query='SELECT
		proc_CartasCredito.Consecutive, proc_CartasCredito.Id,
		cat_TiposActivo.Nombre as TipoActivo,
		cat_Bancos.Nombre as Banco,
		cat_Empresas.Nombre as Empresa,
		cat_Proveedores.Nombre as Proveedor,
		cat_Monedas.Nombre as Moneda,
		FechaVencimiento, NumCartaCredito,TipoCarta,TipoActivoId,BancoId,ProyectoId,ProveedorId,proc_CartasCredito.EmpresaId,AgenteAduanalId,MonedaId,
		TipoPago,proc_CartasCredito.Responsable,CompradorId,PorcentajeTolerancia,NumeroOrdenCompra,CostoApertura,MontoOrdenCompra,MontoOriginalLC,PagosEfectuados,PagosProgramados,MontoDispuesto,
		SaldoInsoluto,proc_CartasCredito.FechaApertura,Incoterm,FechaLimiteEmbarque,EmbarquesParciales,Transbordos,PuntoEmbarque,PuntoDesembarque,DescripcionMercancia,DescripcionCartaCredito,PagoCartaAceptacion,
		ConsignacionMercancia,ConsideracionesAdicionales,DiasParaPresentarDocumentos,DiasPlazoProveedor,CondicionesPago,NumeroPeriodos,BancoCorresponsalId,SeguroPorCuenta,
		GastosComisionesCorresponsal,ConfirmacionBancoNotificador,Estatus,TipoEmision,DocumentoSwift,proc_CartasCredito.CreadoPor, proc_CartasCredito.Creado, proc_CartasCredito.Activo
		
		FROM proc_CartasCredito
		LEFT JOIN cat_TiposActivo on cat_TiposActivo.Id = proc_CartasCredito.TipoActivoId
		LEFT JOIN cat_Bancos on cat_Bancos.Id = proc_CartasCredito.BancoId
		LEFT JOIN cat_Proyectos on cat_Proyectos.Id = proc_CartasCredito.ProyectoId
		LEFT JOIN cat_Proveedores on cat_Proveedores.Id = proc_CartasCredito.ProveedorId
		LEFT JOIN cat_Empresas on cat_Empresas.Id = proc_CartasCredito.EmpresaId
		LEFT JOIN cat_AgentesAduanales on cat_AgentesAduanales.Id = proc_CartasCredito.AgenteAduanalId
		LEFT JOIN cat_Monedas on cat_Monedas.Id = proc_CartasCredito.MonedaId';

	if @Estatus = 0
		set @query = CONCAT(@query,' WHERE proc_CartasCredito.Estatus>0'); 
	else
		set @query = CONCAT(@query,' WHERE proc_CartasCredito.Estatus=''%',@Estatus,'%'''); 
		
	set @query = CONCAT(@query,@Estatus);

	if @NumCarta is not null and @NumCarta != ''
		set @query = CONCAT(@query,' AND proc_CartasCredito.NumCartaCredito like ''%',@NumCarta,'%'''); 
	
	if @TipoCarta is not null and @TipoCarta != '' and @TipoCarta != '0'
		set @query = CONCAT(@query,' AND proc_CartasCredito.TipoCarta like ''%',@TipoCarta,'%'''); 

	if @TipoActivoId is not null and @TipoActivoId > 0
		set @query = CONCAT(@query,' AND proc_CartasCredito.TipoActivoId=',@TipoActivoId); 

	if @MonedaId is not null and @MonedaId > 0
		set @query = CONCAT(@query,' AND proc_CartasCredito.MonedaId=',@MonedaId); 

	if @ProveedorId is not null and @ProveedorId > 0
		set @query = CONCAT(@query,' AND proc_CartasCredito.ProveedorId=',@ProveedorId); 

	if @EmpresaId is not null and @EmpresaId > 0
		set @query = CONCAT(@query,' AND proc_CartasCredito.EmpresaId=',@EmpresaId); 

	if @BancoId is not null and @BancoId > 0
		set @query = CONCAT(@query,' AND proc_CartasCredito.BancoId=',@BancoId); 

	if @FechaInicio is not null and @FechaFin is not null
		begin
			set @query = CONCAT(@query,' AND proc_CartasCredito.Creado >=''',@FechaInicio,'''');
			set @query = CONCAT(@query,' AND proc_CartasCredito.Creado <=''',@FechaFin,''''); 
		end

	--select @query;
	exec sp_sqlexec @query;
END
GO
/****** Object:  StoredProcedure [dbo].[cons_ComisionById]    Script Date: 22/05/2023 07:21:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[cons_ComisionById]
	@Id int = null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	IF @Id IS NOT NULL		
		BEGIN
			SELECT  c.Id, c.BancoId, c.TipoComisionId, c.Nombre, c.Descripcion, c.Costo, c.SwiftApertura, c.SwiftOtro, c.PorcentajeIVA,
					c.Activo, c.CreadoPor, c.Creado, c.Actualizado, c.Eliminado, b.Nombre as Banco
    		FROM  cat_Comisiones c WITH (NOLOCK)
    		LEFT JOIN cat_Bancos b on c.BancoId = b.Id
			WHERE c.Id = @Id
		END
			
	ELSE 
		BEGIN
					 
			SELECT 99 AS ErrorNumber, 'Parametro id es requerido' AS ErrorMessage, 0 AS ErrorLine
		END

END
GO
/****** Object:  StoredProcedure [dbo].[cons_Comisiones]    Script Date: 22/05/2023 07:21:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[cons_Comisiones]
	@Activo bit = 0
AS
BEGIN
	SET NOCOUNT ON;

	if @Activo > 0
		begin
			SELECT  c.Id, c.BancoId, c.TipoComisionId, c.Nombre, c.Descripcion, c.Costo, c.SwiftApertura, c.SwiftOtro, c.PorcentajeIVA,
					c.Activo, c.CreadoPor, c.Creado, c.Actualizado, c.Eliminado, b.Nombre as Banco
    		FROM  cat_Comisiones c WITH (NOLOCK)
    		LEFT JOIN cat_Bancos b on c.BancoId = b.Id
			where c.Activo=@Activo 
			order by c.Creado desc;
		end
	else
		begin
			SELECT  c.Id, c.BancoId, c.TipoComisionId, c.Nombre, c.Descripcion, c.Costo, c.SwiftApertura, c.SwiftOtro, c.PorcentajeIVA,
					c.Activo, c.CreadoPor, c.Creado, c.Actualizado, c.Eliminado, b.Nombre as Banco
    		FROM  cat_Comisiones c WITH (NOLOCK)
    		LEFT JOIN cat_Bancos b on c.BancoId = b.Id
			order by c.Creado desc;
		end
END
GO
/****** Object:  StoredProcedure [dbo].[cons_ComisionesByCartaCreditoId]    Script Date: 22/05/2023 07:21:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[cons_ComisionesByCartaCreditoId] 
	@CartaCreditoId nvarchar(max) = null
AS
BEGIN
		SET NOCOUNT ON;

		IF @CartaCreditoId is not null
			BEGIN
				SELECT 
					ccom.NumComision,
					ccom.Id, ccom.CartaCreditoId, ccom.ComisionId, ccom.FechaCargo, ccom.MonedaId, ccom.Monto, ccom.Activo,
					ccom.CreadoPor, ccom.Estatus, mnd.Nombre as Moneda, cms.Nombre as Comision, ccom.PagoId, ccom.PagoMonedaId, ccom.Comentarios, ccom.FechaPago,
					ccom.TipoCambio, ccom.MontoPagado, cc.NumCartaCredito, cc.Estatus as EstatusCartaId, mndPago.Nombre as PagoMoneda
				FROM  proc_CartaCreditoComisiones ccom WITH (NOLOCK)
				LEFT JOIN cat_Monedas mnd on ccom.MonedaId = mnd.Id
				LEFT JOIN cat_Monedas mndPago on ccom.PagoMonedaId = mndPago.Id
				LEFT JOIN cat_Comisiones cms on ccom.ComisionId = cms.Id
				LEFT JOIN proc_CartasCredito cc on ccom.CartaCreditoId = cc.Id
				WHERE CartaCreditoId = @CartaCreditoId
				ORDER BY ccom.NumComision ASC
			END
		ELSE 
			BEGIN
					 
				SELECT 99 AS ErrorNumber, 'Parametro de id es necesario' AS ErrorMessage, 0 AS ErrorLine
			END
END
GO
/****** Object:  StoredProcedure [dbo].[cons_CompradorById]    Script Date: 22/05/2023 07:21:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[cons_CompradorById]
	@Id int = null
AS
BEGIN
	SET NOCOUNT ON;

	IF @Id IS NOT NULL		
		BEGIN
			SELECT  c.Id, c.EmpresaId, c.TipoPersonaFiscalId, c.Nombre, c.Descripcion,
					c.Activo, c.CreadoPor, c.Creado, c.Actualizado, c.Eliminado, e.Nombre as Empresa
    		FROM  cat_Compradores c WITH (NOLOCK)
    		LEFT JOIN cat_Empresas e on c.EmpresaId = e.Id
			WHERE c.Id = @Id
		END
			
	ELSE 
		BEGIN
					 
			SELECT 99 AS ErrorNumber, 'Parametro id es requerido' AS ErrorMessage, 0 AS ErrorLine
		END

END
GO
/****** Object:  StoredProcedure [dbo].[cons_Compradores]    Script Date: 22/05/2023 07:21:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[cons_Compradores]
	@Activo bit = 0
AS
BEGIN
	SET NOCOUNT ON;

	if @Activo > 0
		begin
			SELECT  c.Id, c.EmpresaId, c.TipoPersonaFiscalId, c.Nombre, c.Descripcion,
					c.Activo, c.CreadoPor, c.Creado, c.Actualizado, c.Eliminado, e.Nombre as Empresa
    		FROM  cat_Compradores c WITH (NOLOCK)
    		LEFT JOIN cat_Empresas e on c.EmpresaId = e.Id
			where c.Activo=@Activo 
			order by c.Creado desc;
		end
	else
		begin
			SELECT  c.Id, c.EmpresaId, c.TipoPersonaFiscalId, c.Nombre, c.Descripcion,
					c.Activo, c.CreadoPor, c.Creado, c.Actualizado, c.Eliminado, e.Nombre as Empresa
    		FROM  cat_Compradores c WITH (NOLOCK)
    		LEFT JOIN cat_Empresas e on c.EmpresaId = e.Id
			order by c.Creado desc;
		end
END
GO
/****** Object:  StoredProcedure [dbo].[cons_ContactoById]    Script Date: 22/05/2023 07:21:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[cons_ContactoById]
	@Id int = null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	IF @Id IS NOT NULL		
		BEGIN
			SELECT  c.Id, c.ModelId, c.ModelNombre, c.Nombre, c.ApellidoPaterno, c.ApellidoMaterno, c.Telefono, c.Celular, c.Email, c.Fax, c.Descripcion, c.Activo
    		FROM  cat_Contactos c WITH (NOLOCK)
			WHERE c.Id = @Id
		END
			
	ELSE 
		BEGIN
					 
			SELECT 99 AS ErrorNumber, 'Parametro id es requerido' AS ErrorMessage, 0 AS ErrorLine
		END

END
GO
/****** Object:  StoredProcedure [dbo].[cons_ContactoByModelNombreAndId]    Script Date: 22/05/2023 07:21:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[cons_ContactoByModelNombreAndId]
	@ModelNombre nvarchar(50) = null,
	@ModelId int = null
AS
BEGIN
	SET NOCOUNT ON;

	IF @ModelId IS NOT NULL AND @ModelNombre IS NOT NULL
		BEGIN
			SELECT  c.Id, c.ModelId, c.ModelNombre, c.Nombre, c.ApellidoPaterno, c.ApellidoMaterno, c.Telefono, c.Celular, c.Email, c.Fax, c.Descripcion, c.Activo
    		FROM  cat_Contactos c WITH (NOLOCK)
			WHERE c.ModelNombre = @ModelNombre AND c.ModelId=@ModelId
			ORDER BY c.Id desc;
		END
			
	ELSE 
		BEGIN
					 
			SELECT 99 AS ErrorNumber, 'Parametro id y nombre es requerido' AS ErrorMessage, 0 AS ErrorLine
		END

END
GO
/****** Object:  StoredProcedure [dbo].[cons_Contactos]    Script Date: 22/05/2023 07:21:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[cons_Contactos]
	@Activo bit = 0
AS
BEGIN
	SET NOCOUNT ON;

	if @Activo > 0
		begin
			SELECT  c.Id, c.ModelId, c.ModelNombre, c.Nombre, c.ApellidoPaterno, c.ApellidoMaterno, c.Telefono, c.Celular, c.Email, c.Fax, c.Descripcion, c.Activo
    		FROM  cat_Contactos c WITH (NOLOCK)
			where c.Activo=@Activo 
			order by c.Id desc;
		end
	else
		begin
			SELECT  c.Id, c.ModelId, c.ModelNombre, c.Nombre, c.ApellidoPaterno, c.ApellidoMaterno, c.Telefono, c.Celular, c.Email, c.Fax, c.Descripcion, c.Activo
    		FROM  cat_Contactos c WITH (NOLOCK)
			order by c.Id desc;
		end
END
GO
/****** Object:  StoredProcedure [dbo].[cons_DivisionById]    Script Date: 22/05/2023 07:21:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[cons_DivisionById]
	@Id int = null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	IF @Id IS NOT NULL		
		BEGIN
			SELECT  Id, Nombre, Descripcion, Activo, CreadoPor, Creado, Actualizado, Eliminado
		    		FROM  cat_Divisiones WITH (NOLOCK)
					WHERE Id = @Id
		END
			
	ELSE 
		BEGIN
					 
			SELECT 99 AS ErrorNumber, 'Parametro de id de la División es requerido' AS ErrorMessage, 0 AS ErrorLine
		END

END
GO
/****** Object:  StoredProcedure [dbo].[cons_Divisiones]    Script Date: 22/05/2023 07:21:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[cons_Divisiones]
	@Activo bit = 0
AS
BEGIN
	SET NOCOUNT ON;

	if @Activo > 0
		begin
			SELECT Id, Nombre, Descripcion, Activo, CreadoPor, Creado, Actualizado, Eliminado FROM cat_Divisiones where Activo=@Activo order by Creado desc;
		end
	else
		begin
			SELECT Id, Nombre, Descripcion, Activo, CreadoPor, Creado, Actualizado, Eliminado FROM cat_Divisiones order by Creado desc;
		end
END
GO
/****** Object:  StoredProcedure [dbo].[cons_DocumentoById]    Script Date: 22/05/2023 07:21:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[cons_DocumentoById]
	@Id int = null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	IF @Id IS NOT NULL		
		BEGIN
			SELECT  c.Id, c.Nombre, c.Descripcion, c.Activo, c.CreadoPor, c.Creado, c.Actualizado, c.Eliminado
    		FROM  cat_Documentos c WITH (NOLOCK)
			WHERE c.Id = @Id
		END
			
	ELSE 
		BEGIN
					 
			SELECT 99 AS ErrorNumber, 'Parametro id es requerido' AS ErrorMessage, 0 AS ErrorLine
		END

END
GO
/****** Object:  StoredProcedure [dbo].[cons_Documentos]    Script Date: 22/05/2023 07:21:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[cons_Documentos]
	@Activo bit = 0
AS
BEGIN
	SET NOCOUNT ON;

	if @Activo > 0
		begin
			SELECT  c.Id, c.Nombre, c.Descripcion, c.Activo, c.CreadoPor, c.Creado, c.Actualizado, c.Eliminado
    		FROM  cat_Documentos c WITH (NOLOCK)
			where c.Activo=@Activo 
			order by c.Creado desc;
		end
	else
		begin
			SELECT  c.Id, c.Nombre, c.Descripcion, c.Activo, c.CreadoPor, c.Creado, c.Actualizado, c.Eliminado
    		FROM  cat_Documentos c WITH (NOLOCK)
			order by c.Creado desc;
		end
END
GO
/****** Object:  StoredProcedure [dbo].[cons_EmpresaById]    Script Date: 22/05/2023 07:21:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[cons_EmpresaById]
	@Id int = null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	IF @Id IS NOT NULL		
		BEGIN
			SELECT e.Id, e.DivisionId, e.Nombre, e.RFC, e.Descripcion, e.Activo, e.CreadoPor, e.Creado, e.Actualizado, e.Eliminado, d.Nombre as Division
			FROM cat_Empresas e with (nolock)
			LEFT JOIN cat_Divisiones d on e.DivisionId = d.Id
			WHERE e.Id = @Id
		END
			
	ELSE 
		BEGIN
					 
			SELECT 99 AS ErrorNumber, 'Parametro de id de la Empresa es requerido' AS ErrorMessage, 0 AS ErrorLine
		END

END
GO
/****** Object:  StoredProcedure [dbo].[cons_Empresas]    Script Date: 22/05/2023 07:21:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[cons_Empresas]
	@Activo bit = 0
AS
BEGIN
	SET NOCOUNT ON;

	if @Activo > 0
		begin
			SELECT e.Id, e.DivisionId, e.Nombre, e.RFC, e.Descripcion, e.Activo, e.CreadoPor, e.Creado, e.Actualizado, e.Eliminado, d.Nombre as Division
			FROM cat_Empresas e with (nolock)
			LEFT JOIN cat_Divisiones d on e.DivisionId = d.Id
			where e.Activo=@Activo order by e.Creado desc;
		end
	else
		begin
			SELECT e.Id, e.DivisionId, e.Nombre, e.RFC, e.Descripcion, e.Activo, e.CreadoPor, e.Creado, e.Actualizado, e.Eliminado, d.Nombre as Division
			FROM cat_Empresas e with (nolock)
			LEFT JOIN cat_Divisiones d on e.DivisionId = d.Id
			order by e.Creado desc;
		end
END
GO
/****** Object:  StoredProcedure [dbo].[cons_EmpresasByUserId]    Script Date: 22/05/2023 07:21:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[cons_EmpresasByUserId]
	@UserId nvarchar(max) = null
AS
BEGIN
	SET NOCOUNT ON;

	IF @UserId IS NOT NULL		
		BEGIN
			SELECT e.Id, e.DivisionId, e.Nombre, e.RFC, e.Descripcion, e.Activo, e.CreadoPor, e.Creado, e.Actualizado, e.Eliminado
			FROM cat_Empresas e
			JOIN AspNetUserEmpresas on e.Id = AspNetUserEmpresas.EmpresaId
			WHERE AspNetUserEmpresas.UserId = @UserId
			--FROM cat_Empresas e with (nolock)
			--LEFT JOIN cat_Divisiones d on e.DivisionId = d.Id
			--WHERE e.Id = @UserId
		END
			
	ELSE 
		BEGIN
					 
			SELECT 99 AS ErrorNumber, 'Parametro de id de la Empresa es requerido' AS ErrorMessage, 0 AS ErrorLine
		END

END
GO
/****** Object:  StoredProcedure [dbo].[cons_EnmiendaById]    Script Date: 22/05/2023 07:21:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[cons_EnmiendaById]
	@Id int = null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    IF @Id is not null
		BEGIN
			SELECT e.Id, e.CartaCreditoId, e.DocumentoSwift, e.ImporteLC, e.FechaLimiteEmbarque, e.FechaVencimiento, e.DescripcionMercancia, e.ConsideracionesAdicionales,
				e.InstruccionesEspeciales, e.Estatus, e.CreadoPor, e.Creado, e.Activo, e.Prev_DocumentoSwift, e.Prev_ImporteLC, e.Prev_FechaLimiteEmbarque, e.Prev_FechaVencimiento,
				e.Prev_DescripcionMercancia, e.Prev_ConsideracionesAdicionales, e.Prev_InstruccionesEspeciales
		    FROM  proc_Enmiendas e WITH (NOLOCK)
			WHERE Id = @Id
			ORDER BY e.Creado DESC;
		END
	ELSE 
		BEGIN
					 
			SELECT 99 AS ErrorNumber, 'Parametro id es requerido' AS ErrorMessage, 0 AS ErrorLine
		END
END
GO
/****** Object:  StoredProcedure [dbo].[cons_EnmiendasByCartaCreditoId]    Script Date: 22/05/2023 07:21:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[cons_EnmiendasByCartaCreditoId]
	@CartaCreditoId nvarchar(max) = null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    IF @CartaCreditoId is not null
		BEGIN
			SELECT 
				e.Id, e.CartaCreditoId, e.DocumentoSwift, e.ImporteLC, e.FechaLimiteEmbarque, e.FechaVencimiento, e.DescripcionMercancia, e.ConsideracionesAdicionales,
				e.InstruccionesEspeciales, e.Estatus, e.CreadoPor, e.Creado, e.Activo, e.Prev_DocumentoSwift, e.Prev_ImporteLC, e.Prev_FechaLimiteEmbarque, e.Prev_FechaVencimiento,
				e.Prev_DescripcionMercancia, e.Prev_ConsideracionesAdicionales, e.Prev_InstruccionesEspeciales
		    FROM  proc_Enmiendas e WITH (NOLOCK)
			WHERE CartaCreditoId = @CartaCreditoId
			ORDER BY e.Creado DESC;
		END
	ELSE 
		BEGIN
					 
			SELECT 99 AS ErrorNumber, 'Parametro de id del pedido es necesario' AS ErrorMessage, 0 AS ErrorLine
		END
END
GO
/****** Object:  StoredProcedure [dbo].[cons_InvitacionById]    Script Date: 22/05/2023 07:21:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[cons_InvitacionById]
	@Id int = NULL
AS
BEGIN
	SET NOCOUNT ON;

	IF @Id IS NOT NULL		
		BEGIN
			SELECT  i.Id, i.Email, i.Token, i.Creado, i.CreadoPorId
    		FROM  proc_Invitaciones i WITH (NOLOCK)
			WHERE i.Id = @Id
		END
			
	ELSE 
		BEGIN
					 
			SELECT 99 AS ErrorNumber, 'Parametro ID es requerido' AS ErrorMessage, 0 AS ErrorLine
		END
END
GO
/****** Object:  StoredProcedure [dbo].[cons_InvitacionByToken]    Script Date: 22/05/2023 07:21:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[cons_InvitacionByToken]
	@Token nvarchar(max) = NULL
AS
BEGIN
	SET NOCOUNT ON;

	IF @Token IS NOT NULL		
		BEGIN
			SELECT  i.Id, i.Email, i.Token, i.Creado, i.CreadoPorId
    		FROM  proc_Invitaciones i WITH (NOLOCK)
			WHERE i.Token = @Token
		END
			
	ELSE 
		BEGIN
					 
			SELECT 99 AS ErrorNumber, 'Parametro Token es requerido' AS ErrorMessage, 0 AS ErrorLine
		END
END
GO
/****** Object:  StoredProcedure [dbo].[cons_LineaDeCreditoById]    Script Date: 22/05/2023 07:21:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[cons_LineaDeCreditoById]
	@Id int = null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	IF @Id IS NOT NULL		
		BEGIN
			SELECT  c.Id, c.EmpresaId, c.BancoId, c.Monto, c.Cuenta, c.Activo, c.CreadoPor, c.Creado, c.Actualizado, c.Eliminado, emp.Nombre as Empresa, bnc.Nombre as Banco
    		FROM  cat_LineasCredito c WITH (NOLOCK)
			LEFT JOIN cat_Empresas emp on c.EmpresaId = emp.Id
			LEFT JOIN cat_Bancos bnc on c.BancoId = bnc.Id
			WHERE c.Id = @Id
		END
			
	ELSE 
		BEGIN
					 
			SELECT 99 AS ErrorNumber, 'Parametro id es requerido' AS ErrorMessage, 0 AS ErrorLine
		END

END
GO
/****** Object:  StoredProcedure [dbo].[cons_LineasDeCredito]    Script Date: 22/05/2023 07:21:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[cons_LineasDeCredito]
	@Activo bit = 0
AS
BEGIN
	SET NOCOUNT ON;

	if @Activo > 0
		begin
			SELECT  c.Id, c.EmpresaId, c.BancoId, c.Monto, c.Cuenta, c.Activo, c.CreadoPor, c.Creado, c.Actualizado, c.Eliminado, emp.Nombre as Empresa, bnc.Nombre as Banco
    		FROM  cat_LineasCredito c WITH (NOLOCK)
			LEFT JOIN cat_Empresas emp on c.EmpresaId = emp.Id
			LEFT JOIN cat_Bancos bnc on c.BancoId = bnc.Id
			where c.Activo=@Activo 
			order by c.Creado desc;
		end
	else
		begin
			SELECT  c.Id, c.EmpresaId, c.BancoId, c.Monto, c.Cuenta, c.Activo, c.CreadoPor, c.Creado, c.Actualizado, c.Eliminado, emp.Nombre as Empresa, bnc.Nombre as Banco
    		FROM  cat_LineasCredito c WITH (NOLOCK)
			LEFT JOIN cat_Empresas emp on c.EmpresaId = emp.Id
			LEFT JOIN cat_Bancos bnc on c.BancoId = bnc.Id
			order by c.Creado desc;
		end
END
GO
/****** Object:  StoredProcedure [dbo].[cons_MonedaById]    Script Date: 22/05/2023 07:21:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[cons_MonedaById]
	@Id int = null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	IF @Id IS NOT NULL		
		BEGIN
			SELECT  c.Id, c.Nombre, c.Abbr, c.Descripcion, c.Activo, c.CreadoPor, c.Creado, c.Actualizado, c.Eliminado
    		FROM  cat_Monedas c WITH (NOLOCK)
			WHERE c.Id = @Id
		END
			
	ELSE 
		BEGIN
					 
			SELECT 99 AS ErrorNumber, 'Parametro id es requerido' AS ErrorMessage, 0 AS ErrorLine
		END

END
GO
/****** Object:  StoredProcedure [dbo].[cons_Monedas]    Script Date: 22/05/2023 07:21:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[cons_Monedas]
	@Activo bit = 0
AS
BEGIN
	SET NOCOUNT ON;

	if @Activo > 0
		begin
			SELECT  c.Id, c.Nombre, c.Abbr, c.Descripcion, c.Activo, c.CreadoPor, c.Creado, c.Actualizado, c.Eliminado
    		FROM  cat_Monedas c WITH (NOLOCK)
			where c.Activo=@Activo 
			order by c.Creado desc;
		end
	else
		begin
			SELECT  c.Id, c.Nombre, c.Abbr, c.Descripcion, c.Activo, c.CreadoPor, c.Creado, c.Actualizado, c.Eliminado
    		FROM  cat_Monedas c WITH (NOLOCK)
			order by c.Creado desc;
		end
END
GO
/****** Object:  StoredProcedure [dbo].[cons_PagoById]    Script Date: 22/05/2023 07:21:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[cons_PagoById]
	@Id nvarchar(max) = null
AS
BEGIN
	SET NOCOUNT ON;

	if @Id is not null
		begin
			SELECT ROW_NUMBER() OVER(ORDER BY pgs.FechaVencimiento ASC) AS RowNum,
			pgs.Id, pgs.FechaVencimiento, pgs.FechaPago, pgs.MontoPago, pgs.RegistroPagoPor, pgs.CreadoPor, pgs.CartaCreditoId, pgs.NumeroFactura, pgs.Estatus, pgs.Activo, pgs.Creado
			FROM  proc_Pagos pgs WITH (NOLOCK)
			WHERE Id=@Id;
		end
	else
		begin
			SELECT 99 AS ErrorNumber, 'Parametro id es requerido' AS ErrorMessage, 0 AS ErrorLine
		end
END
GO
/****** Object:  StoredProcedure [dbo].[cons_Pagos]    Script Date: 22/05/2023 07:21:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[cons_Pagos] 
	@FechaInicio datetime = null,
	@FechaFin datetime = null
AS
BEGIN
	SET NOCOUNT ON;

	IF @FechaInicio IS NOT NULL AND @FechaFin IS NOT NULL
		BEGIN
			SELECT DISTINCT proc_Pagos.*,
				emp.Nombre as Empresa, 
				prov.Nombre as Proveedor, 
				cc.EmpresaId, cc.ProveedorId
				FROM  proc_Pagos WITH (NOLOCK)
				INNER JOIN proc_CartasCredito cc on cc.Id = proc_Pagos.CartaCreditoId
				INNER JOIN cat_Empresas emp on emp.Id = cc.EmpresaId
				INNER JOIN cat_Proveedores prov on prov.Id = cc.ProveedorId
				WHERE proc_Pagos.FechaVencimiento > GETDATE() and proc_Pagos.Estatus < 3
				ORDER BY proc_Pagos.FechaVencimiento asc;
		END
	ELSE
		BEGIN
			SELECT 99 AS ErrorNumber, 'Parametro FechaInicio y FechaFin es necesario' AS ErrorMessage, 0 AS ErrorLine
		END
END
GO
/****** Object:  StoredProcedure [dbo].[cons_PagosByCartaCreditoId]    Script Date: 22/05/2023 07:21:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[cons_PagosByCartaCreditoId]
	@CartaCreditoId nvarchar(max) = null
AS
BEGIN
	SET NOCOUNT ON;

	IF @CartaCreditoId is not null
		BEGIN
			SELECT pgs.NumeroPago,
			pgs.Id, pgs.FechaVencimiento, pgs.FechaPago, pgs.MontoPago, pgs.RegistroPagoPor, pgs.CreadoPor, pgs.CartaCreditoId, pgs.NumeroFactura, pgs.Estatus, pgs.Activo, pgs.Creado
		    FROM  proc_Pagos pgs WITH (NOLOCK)
			WHERE CartaCreditoId = @CartaCreditoId
			ORDER BY pgs.NumeroPago ASC
		END
	ELSE 
		BEGIN
					 
			SELECT 99 AS ErrorNumber, 'Parametro de id del pedido es necesario' AS ErrorMessage, 0 AS ErrorLine
		END
END
GO
/****** Object:  StoredProcedure [dbo].[cons_PagosProgramados]    Script Date: 22/05/2023 07:21:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[cons_PagosProgramados] 
AS
BEGIN
	SET NOCOUNT ON;
	
	SELECT DISTINCT proc_Pagos.*,
	emp.Nombre as Empresa, 
	prov.Nombre as Proveedor, 
	cc.EmpresaId, cc.ProveedorId
	FROM  proc_Pagos WITH (NOLOCK)
	INNER JOIN proc_CartasCredito cc on cc.Id = proc_Pagos.CartaCreditoId
	INNER JOIN cat_Empresas emp on emp.Id = cc.EmpresaId
	INNER JOIN cat_Proveedores prov on prov.Id = cc.ProveedorId
	WHERE proc_Pagos.FechaVencimiento > GETDATE() and proc_Pagos.Estatus < 3 and cc.Estatus = 2
	ORDER BY proc_Pagos.FechaVencimiento asc;
END
GO
/****** Object:  StoredProcedure [dbo].[cons_PagosVencidos]    Script Date: 22/05/2023 07:21:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[cons_PagosVencidos]
AS
BEGIN
	SET NOCOUNT ON;

	SELECT proc_Pagos.*, 
	emp.Nombre as Empresa, 
	prov.Nombre as Proveedor, 
	cc.EmpresaId, cc.ProveedorId
	FROM  proc_Pagos WITH (NOLOCK)
	INNER JOIN proc_CartasCredito cc on cc.Id = proc_Pagos.CartaCreditoId
	INNER JOIN cat_Empresas emp on emp.Id = cc.EmpresaId
	INNER JOIN cat_Proveedores prov on prov.Id = cc.ProveedorId
	WHERE proc_Pagos.Estatus = 1 and proc_Pagos.FechaVencimiento < GETDATE() and cc.Estatus = 2
	--between Dateadd(DAY, Datediff(DAY, 0, Getdate()) , 0)
	--and DATEADD(second, -1, Dateadd(DAY, Datediff(DAY, 0, Getdate() + 1) , 0))
	ORDER BY proc_Pagos.FechaVencimiento ASC;
END
GO
/****** Object:  StoredProcedure [dbo].[cons_Paises]    Script Date: 22/05/2023 07:21:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[cons_Paises]
AS
BEGIN
	SET NOCOUNT ON;
	SELECT  p.Id, p.Nombre, p.Alpha2Code, p.Alpha3Code
    FROM  cat_Paises p WITH (NOLOCK)
	order by p.Nombre asc;
END
GO
/****** Object:  StoredProcedure [dbo].[cons_ProveedorById]    Script Date: 22/05/2023 07:21:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[cons_ProveedorById]
	@Id int = null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	IF @Id IS NOT NULL		
		BEGIN
			SELECT  c.Id, c.EmpresaId, c.PaisId, c.Nombre, c.Descripcion,
					c.Activo, c.CreadoPor, c.Creado, c.Actualizado, c.Eliminado, e.Nombre as Empresa, p.Nombre as Pais
    		FROM  cat_Proveedores c WITH (NOLOCK)
    		LEFT JOIN cat_Empresas e on c.EmpresaId = e.Id
			LEFT JOIN cat_Paises p on c.PaisId = p.Id
			WHERE c.Id = @Id
		END
			
	ELSE 
		BEGIN
					 
			SELECT 99 AS ErrorNumber, 'Parametro id es requerido' AS ErrorMessage, 0 AS ErrorLine
		END

END
GO
/****** Object:  StoredProcedure [dbo].[cons_Proveedores]    Script Date: 22/05/2023 07:21:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[cons_Proveedores]
	@Activo bit = 0
AS
BEGIN
	SET NOCOUNT ON;

	if @Activo > 0
		begin
			SELECT  c.Id, c.EmpresaId, c.PaisId, c.Nombre, c.Descripcion,
					c.Activo, c.CreadoPor, c.Creado, c.Actualizado, c.Eliminado, e.Nombre as Empresa, p.Nombre as Pais
    		FROM  cat_Proveedores c WITH (NOLOCK)
    		LEFT JOIN cat_Empresas e on c.EmpresaId = e.Id
			LEFT JOIN cat_Paises p on c.PaisId = p.Id
			where c.Activo=@Activo 
			order by c.Creado desc;
		end
	else
		begin
			SELECT  c.Id, c.EmpresaId, c.PaisId, c.Nombre, c.Descripcion,
					c.Activo, c.CreadoPor, c.Creado, c.Actualizado, c.Eliminado, e.Nombre as Empresa, p.Nombre as Pais
    		FROM  cat_Proveedores c WITH (NOLOCK)
    		LEFT JOIN cat_Empresas e on c.EmpresaId = e.Id
			LEFT JOIN cat_Paises p on c.PaisId = p.Id
			order by c.Creado desc;
		end
END
GO
/****** Object:  StoredProcedure [dbo].[cons_ProyectoById]    Script Date: 22/05/2023 07:21:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[cons_ProyectoById]
	@Id int = null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	IF @Id IS NOT NULL		
		BEGIN
			SELECT  c.Id, c.EmpresaId, c.Nombre, c.Descripcion, c.FechaApertura, c.FechaCierre,
					c.Activo, c.CreadoPor, c.Creado, c.Actualizado, c.Eliminado, e.Nombre as Empresa
    		FROM  cat_Proyectos c WITH (NOLOCK)
    		LEFT JOIN cat_Empresas e on c.EmpresaId = e.Id
			WHERE c.Id = @Id
		END
			
	ELSE 
		BEGIN
					 
			SELECT 99 AS ErrorNumber, 'Parametro id es requerido' AS ErrorMessage, 0 AS ErrorLine
		END

END
GO
/****** Object:  StoredProcedure [dbo].[cons_Proyectos]    Script Date: 22/05/2023 07:21:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[cons_Proyectos]
	@Activo bit = 0
AS
BEGIN
	SET NOCOUNT ON;

	if @Activo > 0
		begin
			SELECT  c.Id, c.EmpresaId, c.Nombre, c.Descripcion, c.FechaApertura, c.FechaCierre,
					c.Activo, c.CreadoPor, c.Creado, c.Actualizado, c.Eliminado, e.Nombre as Empresa
    		FROM  cat_Proyectos c WITH (NOLOCK)
    		LEFT JOIN cat_Empresas e on c.EmpresaId = e.Id
			where c.Activo=@Activo 
			order by c.Creado desc;
		end
	else
		begin
			SELECT  c.Id, c.EmpresaId, c.Nombre, c.Descripcion, c.FechaApertura, c.FechaCierre,
					c.Activo, c.CreadoPor, c.Creado, c.Actualizado, c.Eliminado, e.Nombre as Empresa
    		FROM  cat_Proyectos c WITH (NOLOCK)
    		LEFT JOIN cat_Empresas e on c.EmpresaId = e.Id
			order by c.Creado desc;
		end
END
GO
/****** Object:  StoredProcedure [dbo].[cons_ReporteCartas]    Script Date: 22/05/2023 07:21:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[cons_ReporteCartas]
	@EmpresaId int = 0,
	@FechaInicio datetime = null,
	@FechaFin datetime = null
AS
BEGIN
	SET NOCOUNT ON;

	BEGIN TRAN;
	BEGIN TRY
		SELECT
			proc_CartasCredito.Consecutive, proc_CartasCredito.Id,
			cat_TiposActivo.Nombre as TipoActivo,
			cat_Bancos.Nombre as Banco,
			cat_Empresas.Nombre as Empresa,
			cat_Proveedores.Nombre as Proveedor,
			cat_Monedas.Nombre as Moneda,
			FechaVencimiento, NumCartaCredito,TipoCarta,TipoActivoId,BancoId,ProyectoId,ProveedorId,proc_CartasCredito.EmpresaId,AgenteAduanalId,MonedaId,
			TipoPago,proc_CartasCredito.Responsable,CompradorId,PorcentajeTolerancia,NumeroOrdenCompra,CostoApertura,MontoOrdenCompra,MontoOriginalLC,PagosEfectuados,PagosProgramados,MontoDispuesto,
			SaldoInsoluto,proc_CartasCredito.FechaApertura,Incoterm,FechaLimiteEmbarque,EmbarquesParciales,Transbordos,PuntoEmbarque,PuntoDesembarque,DescripcionMercancia,DescripcionCartaCredito,PagoCartaAceptacion,
			ConsignacionMercancia,ConsideracionesAdicionales,DiasParaPresentarDocumentos,DiasPlazoProveedor,CondicionesPago,NumeroPeriodos,BancoCorresponsalId,SeguroPorCuenta,
			GastosComisionesCorresponsal,ConfirmacionBancoNotificador,Estatus,TipoEmision,DocumentoSwift,proc_CartasCredito.CreadoPor, proc_CartasCredito.Creado, proc_CartasCredito.Activo
		
		FROM proc_CartasCredito
		
		LEFT JOIN cat_TiposActivo on cat_TiposActivo.Id = proc_CartasCredito.TipoActivoId
		LEFT JOIN cat_Bancos on cat_Bancos.Id = proc_CartasCredito.BancoId
		LEFT JOIN cat_Proyectos on cat_Proyectos.Id = proc_CartasCredito.ProyectoId
		LEFT JOIN cat_Proveedores on cat_Proveedores.Id = proc_CartasCredito.ProveedorId
		LEFT JOIN cat_Empresas on cat_Empresas.Id = proc_CartasCredito.EmpresaId
		LEFT JOIN cat_AgentesAduanales on cat_AgentesAduanales.Id = proc_CartasCredito.AgenteAduanalId
		LEFT JOIN cat_Monedas on cat_Monedas.Id = proc_CartasCredito.MonedaId

		WHERE 
			(@EmpresaId = 0) AND (proc_CartasCredito.Creado >= @FechaInicio AND proc_CartasCredito.Creado <= @FechaFin and proc_CartasCredito.NumCartaCredito is not null)
		OR
			proc_CartasCredito.Creado >= @FechaInicio AND proc_CartasCredito.Creado <= @FechaFin and proc_CartasCredito.NumCartaCredito is not null and proc_CartasCredito.EmpresaId = @EmpresaId
	COMMIT;
	END TRY
	BEGIN CATCH
		ROLLBACK TRAN;
		 SELECT ERROR_NUMBER() AS ErrorNumber, ERROR_MESSAGE() AS ErrorMessage, ERROR_LINE() AS ErrorLine, 0 AS ID  
	END CATCH

END
GO
/****** Object:  StoredProcedure [dbo].[cons_Reportes]    Script Date: 22/05/2023 07:21:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[cons_Reportes]
AS
BEGIN
	SET NOCOUNT ON;

	SELECT Id, TipoReporte, Creado, CreadoPorId, CreadoPor, Filename FROM proc_Reportes order by Creado DESC;
END
GO
/****** Object:  StoredProcedure [dbo].[cons_TipoActivoById]    Script Date: 22/05/2023 07:21:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[cons_TipoActivoById]
	@Id int = null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	IF @Id IS NOT NULL		
		BEGIN
			SELECT  c.Id, c.Nombre, c.Responsable, c.Descripcion, c.Activo, c.CreadoPor, c.Creado, c.Actualizado, c.Eliminado
    		FROM  cat_TiposActivo c WITH (NOLOCK)
			WHERE c.Id = @Id
		END
			
	ELSE 
		BEGIN
					 
			SELECT 99 AS ErrorNumber, 'Parametro id es requerido' AS ErrorMessage, 0 AS ErrorLine
		END

END
GO
/****** Object:  StoredProcedure [dbo].[cons_TipoCoberturaById]    Script Date: 22/05/2023 07:21:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[cons_TipoCoberturaById]
	@Id int = null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	IF @Id IS NOT NULL		
		BEGIN
			SELECT  c.Id, c.Nombre, c.Descripcion, c.Activo, c.CreadoPor, c.Creado, c.Actualizado, c.Eliminado
    		FROM  cat_TiposCobertura c WITH (NOLOCK)
			WHERE c.Id = @Id
		END
			
	ELSE 
		BEGIN
					 
			SELECT 99 AS ErrorNumber, 'Parametro id es requerido' AS ErrorMessage, 0 AS ErrorLine
		END

END
GO
/****** Object:  StoredProcedure [dbo].[cons_TipoComisionById]    Script Date: 22/05/2023 07:21:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[cons_TipoComisionById]
	@Id int = null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	IF @Id IS NOT NULL		
		BEGIN
			SELECT  c.Id, c.Nombre, c.Descripcion, c.Activo, c.CreadoPor, c.Creado, c.Actualizado, c.Eliminado
    		FROM  cat_TiposComision c WITH (NOLOCK)
			WHERE c.Id = @Id
		END
			
	ELSE 
		BEGIN
					 
			SELECT 99 AS ErrorNumber, 'Parametro id es requerido' AS ErrorMessage, 0 AS ErrorLine
		END

END
GO
/****** Object:  StoredProcedure [dbo].[cons_TipoPersonaFiscalById]    Script Date: 22/05/2023 07:21:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[cons_TipoPersonaFiscalById]
	@Id int = null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	IF @Id IS NOT NULL		
		BEGIN
			SELECT  c.Id, c.Nombre, c.Descripcion, c.Activo, c.CreadoPor, c.Creado, c.Actualizado, c.Eliminado
    		FROM  cat_TiposPersonaFiscal c WITH (NOLOCK)
			WHERE c.Id = @Id
		END
			
	ELSE 
		BEGIN
					 
			SELECT 99 AS ErrorNumber, 'Parametro id es requerido' AS ErrorMessage, 0 AS ErrorLine
		END

END
GO
/****** Object:  StoredProcedure [dbo].[cons_TiposActivo]    Script Date: 22/05/2023 07:21:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[cons_TiposActivo]
	@Activo bit = 0
AS
BEGIN
	SET NOCOUNT ON;

	if @Activo > 0
		begin
			SELECT  c.Id, c.Nombre, c.Responsable, c.Descripcion, c.Activo, c.CreadoPor, c.Creado, c.Actualizado, c.Eliminado
    		FROM  cat_TiposActivo c WITH (NOLOCK)
			where c.Activo=@Activo 
			order by c.Creado desc;
		end
	else
		begin
			SELECT  c.Id, c.Nombre, c.Responsable, c.Descripcion, c.Activo, c.CreadoPor, c.Creado, c.Actualizado, c.Eliminado
    		FROM  cat_TiposActivo c WITH (NOLOCK)
			order by c.Creado desc;
		end
END
GO
/****** Object:  StoredProcedure [dbo].[cons_TiposCobertura]    Script Date: 22/05/2023 07:21:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[cons_TiposCobertura]
	@Activo bit = 0
AS
BEGIN
	SET NOCOUNT ON;

	if @Activo > 0
		begin
			SELECT  c.Id, c.Nombre, c.Descripcion, c.Activo, c.CreadoPor, c.Creado, c.Actualizado, c.Eliminado
    		FROM  cat_TiposCobertura c WITH (NOLOCK)
			where c.Activo=@Activo 
			order by c.Creado desc;
		end
	else
		begin
			SELECT  c.Id, c.Nombre, c.Descripcion, c.Activo, c.CreadoPor, c.Creado, c.Actualizado, c.Eliminado
    		FROM  cat_TiposCobertura c WITH (NOLOCK)
			order by c.Creado desc;
		end
END
GO
/****** Object:  StoredProcedure [dbo].[cons_TiposComision]    Script Date: 22/05/2023 07:21:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[cons_TiposComision]
	@Activo bit = 0
AS
BEGIN
	SET NOCOUNT ON;

	if @Activo > 0
		begin
			SELECT  c.Id, c.Nombre, c.Descripcion, c.Activo, c.CreadoPor, c.Creado, c.Actualizado, c.Eliminado
    		FROM  cat_TiposComision c WITH (NOLOCK)
			where c.Activo=@Activo 
			order by c.Creado desc;
		end
	else
		begin
			SELECT  c.Id, c.Nombre, c.Descripcion, c.Activo, c.CreadoPor, c.Creado, c.Actualizado, c.Eliminado
    		FROM  cat_TiposComision c WITH (NOLOCK)
			order by c.Creado desc;
		end
END
GO
/****** Object:  StoredProcedure [dbo].[cons_TiposPersonaFiscal]    Script Date: 22/05/2023 07:21:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[cons_TiposPersonaFiscal]
	@Activo bit = 0
AS
BEGIN
	SET NOCOUNT ON;

	if @Activo > 0
		begin
			SELECT  c.Id, c.Nombre, c.Descripcion, c.Activo, c.CreadoPor, c.Creado, c.Actualizado, c.Eliminado
    		FROM  cat_TiposPersonaFiscal c WITH (NOLOCK)
			where c.Activo=@Activo 
			order by c.Creado desc;
		end
	else
		begin
			SELECT  c.Id, c.Nombre, c.Descripcion, c.Activo, c.CreadoPor, c.Creado, c.Actualizado, c.Eliminado
    		FROM  cat_TiposPersonaFiscal c WITH (NOLOCK)
			order by c.Creado desc;
		end
END
GO
/****** Object:  StoredProcedure [dbo].[del_AspNetRolePermission]    Script Date: 22/05/2023 07:21:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[del_AspNetRolePermission]
	@RoleId nvarchar(max) = null,
	@PermissionId int = null
AS
BEGIN
	SET NOCOUNT ON;

	IF @RoleId IS NULL OR @PermissionId IS NULL
		SELECT 1 AS ErrorNumber, 'El parámetro RoleID y PermissionId es necesario' AS ErrorMessage, 1 AS ErrorLine, 0 AS LAST_ID;
	ELSE
		DELETE FROM AspNetRolePermissions WHERE RoleId=@RoleId AND PermissionId=@PermissionId;

		SELECT 0 AS ErrorNumber, 'Se actualizó correctamente' AS ErrorMessage, 0 AS ErrorLine, 1 AS LAST_ID;
END
GO
/****** Object:  StoredProcedure [dbo].[del_AspNetUserEmpresa]    Script Date: 22/05/2023 07:21:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[del_AspNetUserEmpresa]
	@UserId nvarchar(max) = null,
	@EmpresaId int = null
AS
BEGIN
	SET NOCOUNT ON;

	IF @UserId IS NULL OR @EmpresaId IS NULL
		SELECT 1 AS ErrorNumber, 'El parámetro UserId y EmpresaId es necesario' AS ErrorMessage, 1 AS ErrorLine, 0 AS LAST_ID;
	ELSE
		DELETE FROM AspNetUserEmpresas WHERE UserId=@UserId AND EmpresaId=@EmpresaId;

		SELECT 0 AS ErrorNumber, 'Se actualizó correctamente' AS ErrorMessage, 0 AS ErrorLine, 1 AS LAST_ID;
END
GO
/****** Object:  StoredProcedure [dbo].[del_PFEPago]    Script Date: 22/05/2023 07:21:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[del_PFEPago]
	@ProgramaId int = null,
	@PagoId int = null
AS
BEGIN
	SET NOCOUNT ON;

	if @ProgramaId is not null and @PagoId is not null
		begin
			delete from proc_PFEPagos where PFEProgramaId=@ProgramaId and PagoId=@PagoId;

			SELECT 0 AS ErrorNumber, 'Se insertó correctamente' AS ErrorMessage, 0 AS ErrorLine, SCOPE_IDENTITY() AS LAST_ID;
		end
	else
		begin
			SELECT 99 AS ErrorNumber, 'Parámetro ProgramaId y PagoID son requeridos' AS ErrorMessage, 1 AS ErrorLine, 0 AS LAST_ID;
		end
END
GO
/****** Object:  StoredProcedure [dbo].[ins_AgenteAduanal]    Script Date: 22/05/2023 07:21:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[ins_AgenteAduanal]
	@Nombre nvarchar(max),
	@Descripcion text,
	@CreadoPor nvarchar(max)
AS
BEGIN
	BEGIN TRAN;
	BEGIN TRY
		
		declare @Exists int = 0;
		select @Exists = ISNULL(count(*), 0) from cat_AgentesAduanales where Nombre = @Nombre;

		if @Exists > 0
		begin
			SELECT 1 AS ErrorNumber, 'Este registro ya existe. Intente con otro nombre.' AS ErrorMessage, 1 AS ErrorLine, 0 AS LAST_ID;
		end
		else
		begin
			insert into cat_AgentesAduanales (Nombre, Descripcion, Creado, CreadoPor, Activo) 
				values (@Nombre, @Descripcion, GETDATE(),@CreadoPor, 1);

			SELECT 0 AS ErrorNumber, 'Se insertó correctamente' AS ErrorMessage, 0 AS ErrorLine, SCOPE_IDENTITY() AS LAST_ID;
		end
	COMMIT;
	END TRY
	BEGIN CATCH
		ROLLBACK TRAN;
		 SELECT ERROR_NUMBER() AS ErrorNumber, ERROR_MESSAGE() AS ErrorMessage, ERROR_LINE() AS ErrorLine, 0 AS ID  
	END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[ins_AspNetRole]    Script Date: 22/05/2023 07:21:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ins_AspNetRole]
	@Name nvarchar(max) = null
AS
BEGIN
	SET NOCOUNT ON;

	BEGIN TRAN;
	BEGIN TRY
		
		declare @Exists int = 0;
		select @Exists = ISNULL(count(*), 0) from AspNetRoles where Name=@Name;

		if @Exists > 0
		begin
			SELECT 1 AS ErrorNumber, 'Este registro ya existe. Intente con otro Nombre.' AS ErrorMessage, 1 AS ErrorLine, 0 AS LAST_ID;
		end
		else
		begin
			declare @newId nvarchar(max) = NEWID();
			insert into AspNetRoles(Id,Name,Activo) 
				values (@newId,@Name,1);

			SELECT 0 AS ErrorNumber, 'Se insertó correctamente' AS ErrorMessage, 0 AS ErrorLine, @newId AS LAST_ID;
		end
	COMMIT;
	END TRY
	BEGIN CATCH
		ROLLBACK TRAN;
		 SELECT ERROR_NUMBER() AS ErrorNumber, ERROR_MESSAGE() AS ErrorMessage, ERROR_LINE() AS ErrorLine, 0 AS ID  
	END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[ins_AspNetRolePermission]    Script Date: 22/05/2023 07:21:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ins_AspNetRolePermission]
	@RoleId nvarchar(max) = null,
	@PermissionId int = null
AS
BEGIN
	SET NOCOUNT ON;

	IF @RoleId IS NULL OR @PermissionId IS NULL
		SELECT 1 AS ErrorNumber, 'El parámetro RoleID y PermissionId es necesario' AS ErrorMessage, 1 AS ErrorLine, 0 AS LAST_ID;
	ELSE
		INSERT INTO AspNetRolePermissions(RoleId,PermissionId) VALUES (@RoleId,@PermissionId);

		SELECT 0 AS ErrorNumber, 'Se actualizó correctamente' AS ErrorMessage, 0 AS ErrorLine, 1 AS LAST_ID;
END
GO
/****** Object:  StoredProcedure [dbo].[ins_AspNetUser]    Script Date: 22/05/2023 07:21:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ins_AspNetUser]
	@Email nvarchar(256) = null,
	@PasswordHash nvarchar(max) = null,
	@PhoneNumber nvarchar(max) = null,
	@UserName nvarchar(max) = null,
	@Activo bit = 0
AS
BEGIN
	SET NOCOUNT ON;

	BEGIN TRAN;
	BEGIN TRY
		
		declare @Exists int = 0;
		select @Exists = ISNULL(count(*), 0) from AspNetUsers where UserName = @UserName or Email=@Email;

		if @Exists > 0
		begin
			SELECT 1 AS ErrorNumber, 'Este registro ya existe. Intente con otro NOMBRE DE USUARIO o EMAIL.' AS ErrorMessage, 1 AS ErrorLine, 0 AS LAST_ID;
		end
		else
		begin
			declare @newId nvarchar(max) = NEWID();
			insert into AspNetUsers(Id,Email,EmailConfirmed,PhoneNumber,PhoneNumberConfirmed,PasswordHash,SecurityStamp,UserName,LockoutEnabled,TwoFactorEnabled,AccessFailedCount,Activo) 
				values (@newId,@Email,1,@PhoneNumber,1,@PasswordHash,NEWID(),@UserName,0,0,0,@Activo);

			SELECT 0 AS ErrorNumber, 'Se insertó correctamente' AS ErrorMessage, 0 AS ErrorLine, @newId AS LAST_ID;
		end
	COMMIT;
	END TRY
	BEGIN CATCH
		ROLLBACK TRAN;
		 SELECT ERROR_NUMBER() AS ErrorNumber, ERROR_MESSAGE() AS ErrorMessage, ERROR_LINE() AS ErrorLine, 0 AS ID  
	END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[ins_AspNetUserEmpresa]    Script Date: 22/05/2023 07:21:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ins_AspNetUserEmpresa]
	@UserId nvarchar(max) = null,
	@EmpresaId int = null
AS
BEGIN
	SET NOCOUNT ON;

	IF @UserId IS NULL OR @EmpresaId IS NULL
		SELECT 1 AS ErrorNumber, 'El parámetro UserId y EmpresaId es necesario' AS ErrorMessage, 1 AS ErrorLine, 0 AS LAST_ID;
	ELSE
		INSERT INTO AspNetUserEmpresas (UserId,EmpresaId) VALUES (@UserId,@EmpresaId);

		SELECT 0 AS ErrorNumber, 'Se actualizó correctamente' AS ErrorMessage, 0 AS ErrorLine, 1 AS LAST_ID;
END
GO
/****** Object:  StoredProcedure [dbo].[ins_AspNetUserProfile]    Script Date: 22/05/2023 07:21:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ins_AspNetUserProfile]
	@Name nvarchar(max) = null,
	@LastName nvarchar(max) = null,
	@DisplayName nvarchar(max) = null,
	@UserId nvarchar(max) = null,
	@Notes text = null
AS
BEGIN
	SET NOCOUNT ON;

	BEGIN TRAN;
	BEGIN TRY
		begin
			insert into AspNetUserProfile(Name,LastName,DisplayName,UserId,Notes) 
				values (@Name,@LastName,@DisplayName,@UserId,@Notes);

			SELECT 0 AS ErrorNumber, 'Se insertó correctamente' AS ErrorMessage, 0 AS ErrorLine, SCOPE_IDENTITY() AS LAST_ID;
		end
	COMMIT;
	END TRY
	BEGIN CATCH
		ROLLBACK TRAN;
		 SELECT ERROR_NUMBER() AS ErrorNumber, ERROR_MESSAGE() AS ErrorMessage, ERROR_LINE() AS ErrorLine, 0 AS ID  
	END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[ins_AspNetUserRole]    Script Date: 22/05/2023 07:21:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ins_AspNetUserRole]
	@UserId nvarchar(max) = null,
	@RoleId nvarchar(max) = null
AS
BEGIN
	SET NOCOUNT ON;

	IF @UserId IS NULL OR @RoleId IS NULL
		SELECT 1 AS ErrorNumber, 'El parámetro UserId y EmpresaId es necesario' AS ErrorMessage, 1 AS ErrorLine, 0 AS LAST_ID;
	ELSE
		INSERT INTO AspNetUserRoles(UserId,RoleId) VALUES (@UserId,@RoleId);

		SELECT 0 AS ErrorNumber, 'Se actualizó correctamente' AS ErrorMessage, 0 AS ErrorLine, 1 AS LAST_ID;
END
GO
/****** Object:  StoredProcedure [dbo].[ins_Banco]    Script Date: 22/05/2023 07:21:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[ins_Banco]
	@Nombre nvarchar(max),
	@TotalLinea decimal(18,2),
	@Descripcion text,
	@CreadoPor nvarchar(max)
AS
BEGIN
	BEGIN TRAN;
	BEGIN TRY
		
		declare @Exists int = 0;
		select @Exists = ISNULL(count(*), 0) from cat_Bancos where Nombre = @Nombre;

		if @Exists > 0
		begin
			SELECT 1 AS ErrorNumber, 'Este banco ya existe. Intente con otro nombre.' AS ErrorMessage, 1 AS ErrorLine, 0 AS LAST_ID;
		end
		else
		begin
			insert into cat_Bancos (Nombre, Descripcion, TotalLinea, Creado, CreadoPor) values (@Nombre, @Descripcion, @TotalLinea, GETDATE(),@CreadoPor);

			SELECT 0 AS ErrorNumber, 'Se insertó correctamente' AS ErrorMessage, 0 AS ErrorLine, SCOPE_IDENTITY() AS LAST_ID;
		end
	COMMIT;
	END TRY
	BEGIN CATCH
		ROLLBACK TRAN;
		 SELECT ERROR_NUMBER() AS ErrorNumber, ERROR_MESSAGE() AS ErrorMessage, ERROR_LINE() AS ErrorLine, 0 AS ID  
	END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[ins_BitacoraMovimiento]    Script Date: 22/05/2023 07:21:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ins_BitacoraMovimiento]
	@Titulo nvarchar(max) = null,
	@Descripcion text = null,
	@CartaCreditoId nvarchar(max) = null,
	@ModeloNombre nvarchar(max) = null,
	@ModeloId int = null,
	@CreadoPorId nvarchar(max)
AS
BEGIN
	SET NOCOUNT ON;

	BEGIN TRAN;
	BEGIN TRY
		INSERT INTO proc_BitacoraMovimientos (Titulo, Descripcion, CartaCreditoId, ModeloNombre, ModeloId, CreadoPorId, Creado)
			VALUES (@Titulo, @Descripcion, @CartaCreditoId, @ModeloNombre, @ModeloId, @CreadoPorId,  GETDATE())

		SELECT 0 AS ErrorNumber, 'Se insertó correctamente' AS ErrorMessage, 0 AS ErrorLine, SCOPE_IDENTITY() AS LAST_ID;
	COMMIT;
	END TRY
	BEGIN CATCH
		ROLLBACK TRAN;
		 SELECT ERROR_NUMBER() AS ErrorNumber, ERROR_MESSAGE() AS ErrorMessage, ERROR_LINE() AS ErrorLine, 0 AS ID  
	END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[ins_CartaCredito]    Script Date: 22/05/2023 07:21:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[ins_CartaCredito]
    @TipoCarta nvarchar(max) = '17',
    @TipoActivoId int,
    @BancoId int,
    @ProyectoId int,
    @ProveedorId int,
    @EmpresaId int,
    @AgenteAduanalId int,
    @MonedaId int,
    @TipoPago nvarchar(50) = '',
    @Responsable nvarchar(50) = '',
    @CompradorId int,
    @PorcTolerancia int,
    @NumeroOrdenCompra nvarchar(50),
    @CostoApertura decimal(18,2),
    @MontoOrdenCompra decimal(18,2),
    @MontoOriginal decimal(18,2),
    @FechaApertura datetime,
    @Incoterm text,
    @FechaLimiteEmbarque datetime,
    @FechaVencimiento datetime,
    @EmbarquesParciales nvarchar(50),
    @Transbordos nvarchar(50),
    @PuntoEmbarque nvarchar(50),
    @PuntoDesembarque nvarchar(50),
    @DescripcionMercancia text = '',
    @DescripcionCartaCredito text = '',
    @PagoCartaAceptacion text = '',
    @ConsignacionMercancia text = '',
    @ConsideracionesAdicionales text,
    @DiasPresentarDocumentos int,
    @DiasPlazoProveedor int,
    @CondicionesPago nvarchar(50),
    @NumeroPeriodos int,
    @BancoCorresponsalId int,
    @SeguroPorCuenta nvarchar(50),
    @GastosComisionesCorresponsal nvarchar(50),
    @ConfirmacionBancoNotificador nvarchar(50),
    @TipoEmision nvarchar(50),
    @CreadoPor nvarchar(max)
AS
BEGIN
	SET NOCOUNT ON;

    BEGIN TRAN
		BEGIN TRY
			declare @NewId nvarchar(max) = NEWID();

			INSERT 
				INTO dbo.proc_CartasCredito (Id,TipoCarta,TipoActivoId,BancoId,ProyectoId,ProveedorId,EmpresaId,AgenteAduanalId,MonedaId,
				TipoPago,Responsable,CompradorId,PorcentajeTolerancia,NumeroOrdenCompra,CostoApertura,MontoOrdenCompra,MontoOriginalLC,FechaApertura,Incoterm,FechaLimiteEmbarque,FechaVencimiento,EmbarquesParciales,Transbordos,PuntoEmbarque,PuntoDesembarque,DescripcionMercancia,DescripcionCartaCredito,PagoCartaAceptacion,
				ConsignacionMercancia,ConsideracionesAdicionales,DiasParaPresentarDocumentos,DiasPlazoProveedor,CondicionesPago,NumeroPeriodos,BancoCorresponsalId,SeguroPorCuenta,
				GastosComisionesCorresponsal,ConfirmacionBancoNotificador,Estatus,TipoEmision,CreadoPor,Creado,Activo)

				VALUES (@NewId,@TipoCarta,@TipoActivoId,@BancoId,@ProyectoId,@ProveedorId,@EmpresaId,@AgenteAduanalId,@MonedaId,
				@TipoPago,@Responsable,@CompradorId,@PorcTolerancia,@NumeroOrdenCompra,@CostoApertura,@MontoOrdenCompra,@MontoOriginal,@FechaApertura,@Incoterm,@FechaLimiteEmbarque,@FechaVencimiento,@EmbarquesParciales,@Transbordos,@PuntoEmbarque,@PuntoDesembarque,@DescripcionMercancia,@DescripcionCartaCredito,@PagoCartaAceptacion,
				@ConsignacionMercancia,@ConsideracionesAdicionales,@DiasPresentarDocumentos,@DiasPlazoProveedor,@CondicionesPago,@NumeroPeriodos,@BancoCorresponsalId,@SeguroPorCuenta,
				@GastosComisionesCorresponsal,@ConfirmacionBancoNotificador,1,@TipoEmision,@CreadoPor,GETDATE(),1);

				--INSERT INTO proc_BitacoraMovimientos (Titulo,Descripcion,CartaCreditoId,ModeloNombre,CreadoPorId,Creado)
					--VALUES ('Carta de Crédito - Registro','Se registró una nueva carta de crédito',@NewId,'CartaCredito',@CreadoPor,GETDATE());

				SELECT 0 AS ErrorNumber, 'Registro ingresado correctamente' AS ErrorMessage, 0 AS ErrorLine, @NewId AS LAST_ID;
			COMMIT;
		END TRY
		BEGIN CATCH
			ROLLBACK TRAN;
			SELECT ERROR_NUMBER() AS ErrorNumber, ERROR_MESSAGE() as ErrorMessage, ERROR_LINE() as ErrorLine, 0 AS ID
		END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[ins_CartaCreditoComision]    Script Date: 22/05/2023 07:21:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ins_CartaCreditoComision]
	@CartaCreditoId nvarchar(max),
	@ComisionId int,
	@FechaCargo datetime,
	@MonedaId int,
	@Monto decimal(18,2),
	@CreadoPor nvarchar(max),
	@NumReferencia int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	BEGIN TRAN;
		BEGIN TRY
			BEGIN
				DECLARE @NumComision int

				SELECT @NumComision = ISNULL(MAX(@NumComision), 0) + 1
				FROM proc_CartaCreditoComisiones
				WHERE CartaCreditoId = @CartaCreditoId

				INSERT INTO proc_CartaCreditoComisiones(NumComision, CartaCreditoId,ComisionId,FechaCargo,MonedaId,Monto,CreadoPor,Activo,Estatus,PagoId)
				VALUES (@NumComision, @CartaCreditoId,@ComisionId,@FechaCargo,@MonedaId,@Monto,@CreadoPor,1,1,@NumReferencia);

				UPDATE P
					SET P.NumComision = T.NumComision
					FROM proc_CartaCreditoComisiones AS P
					INNER JOIN 
					(
						SELECT Id, ROW_NUMBER() OVER (ORDER BY FechaCargo ASC) AS NumComision
						FROM proc_CartaCreditoComisiones
						WHERE CartaCreditoId = @CartaCreditoId
					) AS T ON P.Id = T.Id

				SELECT 0 AS ErrorNumber, 'Pago registrado correctamente' AS ErrorMessage, 0 AS ErrorLine, SCOPE_IDENTITY() AS LAST_ID;
			END
			COMMIT;
		END TRY
		BEGIN CATCH
			ROLLBACK TRAN;
			SELECT ERROR_NUMBER() AS ErrorNumber, ERROR_MESSAGE() as ErrorMessage, ERROR_LINE() as ErrorLine, 0 AS ID
		END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[ins_CartaStandBy]    Script Date: 22/05/2023 07:21:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ins_CartaStandBy]
	@TipoCarta nvarchar(max) = '18',
	@TipoStandBy nvarchar(max),
	@BancoId int,
	@EmpresaId int,
	@MonedaId int,
	@CompradorId int,
	@MontoOriginal decimal(18,2),
	@FechaApertura datetime,
	@FechaLimiteEmbarque datetime,
	@FechaVencimiento datetime,
	@ConsideracionesReclamacion text,
	@ConsideracionesAdicionales text,
	@CreadoPor nvarchar(max)

AS
BEGIN
	SET NOCOUNT ON;

	BEGIN TRAN
		BEGIN TRY
			declare @NewId nvarchar(max) = NEWID();

			INSERT 
				INTO dbo.proc_CartasCredito (
					Id, TipoCarta, TipoStandBy, BancoId, EmpresaId, MonedaId, CompradorId, MontoOriginalLC, FechaApertura, 
					FechaVencimiento, ConsideracionesAdicionales, ConsideracionesReclamacion, CreadoPor, Creado, Activo, Estatus
				)

				VALUES (
					@NewId, @TipoCarta, @TipoStandBy, @BancoId, @EmpresaId, @MonedaId, @CompradorId, @MontoOriginal, @FechaApertura, 
					@FechaVencimiento, @ConsideracionesAdicionales, @ConsideracionesReclamacion, @CreadoPor,GETDATE(),1,1);

				SELECT 0 AS ErrorNumber, 'Registro ingresado correctamente' AS ErrorMessage, 0 AS ErrorLine, @NewId AS LAST_ID;
			COMMIT;
		END TRY
		BEGIN CATCH
			ROLLBACK TRAN;
			SELECT ERROR_NUMBER() AS ErrorNumber, ERROR_MESSAGE() as ErrorMessage, ERROR_LINE() as ErrorLine, 0 AS ID
		END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[ins_Comision]    Script Date: 22/05/2023 07:21:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[ins_Comision]
	@BancoId int,
	@TipoComisionId int,
	@Nombre nvarchar(max),
	@Descripcion text,
	@Costo decimal(18,2),
	@SwiftApertura nvarchar(max),
	@SwiftOtro nvarchar(max),
	@PorcentajeIVA decimal(18,2),
	@CreadoPor nvarchar(max)
AS
BEGIN
	BEGIN TRAN;
	BEGIN TRY
		
		declare @Exists int = 0;
		select @Exists = ISNULL(count(*), 0) from cat_Comisiones where Nombre = @Nombre;

		if @Exists > 0
		begin
			SELECT 1 AS ErrorNumber, 'Este registro ya existe. Intente con otro nombre.' AS ErrorMessage, 1 AS ErrorLine, 0 AS LAST_ID;
		end
		else
		begin
			insert into cat_Comisiones (BancoId, TipoComisionId, Nombre, Descripcion, Costo, SwiftApertura, SwiftOtro, PorcentajeIVA, Creado, CreadoPor) 
				values (@BancoId, @TipoComisionId, @Nombre, @Descripcion, @Costo, @SwiftApertura, @SwiftOtro, @PorcentajeIVA, GETDATE(),@CreadoPor);

			SELECT 0 AS ErrorNumber, 'Se insertó correctamente' AS ErrorMessage, 0 AS ErrorLine, SCOPE_IDENTITY() AS LAST_ID;
		end
	COMMIT;
	END TRY
	BEGIN CATCH
		ROLLBACK TRAN;
		 SELECT ERROR_NUMBER() AS ErrorNumber, ERROR_MESSAGE() AS ErrorMessage, ERROR_LINE() AS ErrorLine, 0 AS ID  
	END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[ins_Comprador]    Script Date: 22/05/2023 07:21:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[ins_Comprador]
	@EmpresaId int,
	@TipoPersonaFiscalId int,
	@Nombre nvarchar(max),
	@Descripcion text,
	@CreadoPor nvarchar(max)
AS
BEGIN
	BEGIN TRAN;
	BEGIN TRY
		
		declare @Exists int = 0;
		select @Exists = ISNULL(count(*), 0) from cat_Compradores where Nombre = @Nombre and EmpresaId=@EmpresaId;

		if @Exists > 0
		begin
			SELECT 1 AS ErrorNumber, 'Este registro ya existe. Intente con otro nombre.' AS ErrorMessage, 1 AS ErrorLine, 0 AS LAST_ID;
		end
		else
		begin
			insert into cat_Compradores (EmpresaId, TipoPersonaFiscalId, Nombre, Descripcion, Creado, CreadoPor) 
				values (@EmpresaId, @TipoPersonaFiscalId, @Nombre, @Descripcion, GETDATE(),@CreadoPor);

			SELECT 0 AS ErrorNumber, 'Se insertó correctamente' AS ErrorMessage, 0 AS ErrorLine, SCOPE_IDENTITY() AS LAST_ID;
		end
	COMMIT;
	END TRY
	BEGIN CATCH
		ROLLBACK TRAN;
		 SELECT ERROR_NUMBER() AS ErrorNumber, ERROR_MESSAGE() AS ErrorMessage, ERROR_LINE() AS ErrorLine, 0 AS ID  
	END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[ins_Contacto]    Script Date: 22/05/2023 07:21:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[ins_Contacto]
	@ModelNombre nvarchar(50),
	@ModelId int, 
	@Nombre nvarchar(50),
	@ApellidoPaterno nvarchar(50),
	@ApellidoMaterno nvarchar(50),
	@Telefono nvarchar(10),
	@Celular nvarchar(10),
	@Email nvarchar(10),
	@Fax nvarchar(10),
	@Descripcion text
AS
BEGIN
	BEGIN TRAN;
	BEGIN TRY
		insert into cat_Contactos (ModelNombre, ModelId, Nombre, ApellidoPaterno, ApellidoMaterno, Telefono, Celular, Email, Fax, Descripcion, Activo) 
				values (@ModelNombre, @ModelId, @Nombre, @ApellidoPaterno, @ApellidoMaterno, @Telefono, @Celular, @Email, @Fax, @Descripcion, 1);

			SELECT 0 AS ErrorNumber, 'Se insertó correctamente' AS ErrorMessage, 0 AS ErrorLine, SCOPE_IDENTITY() AS LAST_ID;
	COMMIT;
	END TRY
	BEGIN CATCH
		ROLLBACK TRAN;
		 SELECT ERROR_NUMBER() AS ErrorNumber, ERROR_MESSAGE() AS ErrorMessage, ERROR_LINE() AS ErrorLine, 0 AS ID  
	END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[ins_Division]    Script Date: 22/05/2023 07:21:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ins_Division]
	@Nombre nvarchar(max),
	@Descripcion text,
	@CreadoPor nvarchar(max)
AS
BEGIN
	BEGIN TRAN;
	BEGIN TRY
		
		declare @Exists int = 0;
		select @Exists = ISNULL(count(*), 0) from cat_Divisiones where Nombre = @Nombre;

		if @Exists > 0
		begin
			SELECT 1 AS ErrorNumber, 'Esta división ya existe. Intente con otro nombre.' AS ErrorMessage, 1 AS ErrorLine, 0 AS LAST_ID;
		end
		else
		begin
			insert into cat_Divisiones (Nombre, Descripcion, Creado, CreadoPor) values (@Nombre, @Descripcion, GETDATE(),@CreadoPor);

			SELECT 0 AS ErrorNumber, 'Se Actualizo correctamente' AS ErrorMessage, 0 AS ErrorLine, SCOPE_IDENTITY() AS LAST_ID;
		end
	COMMIT;
	END TRY
	BEGIN CATCH
		ROLLBACK TRAN;
		 SELECT ERROR_NUMBER() AS ErrorNumber, ERROR_MESSAGE() AS ErrorMessage, ERROR_LINE() AS ErrorLine, 0 AS ID  
	END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[ins_Documento]    Script Date: 22/05/2023 07:21:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[ins_Documento]
	@Nombre nvarchar(max),
	@Descripcion text,
	@CreadoPor nvarchar(max)
AS
BEGIN
	BEGIN TRAN;
	BEGIN TRY
		
		declare @Exists int = 0;
		select @Exists = ISNULL(count(*), 0) from cat_Documentos where Nombre = @Nombre;

		if @Exists > 0
		begin
			SELECT 1 AS ErrorNumber, 'Este registro ya existe. Intente con otro nombre.' AS ErrorMessage, 1 AS ErrorLine, 0 AS LAST_ID;
		end
		else
		begin
			insert into cat_Documentos (Nombre, Descripcion, Creado, CreadoPor) 
				values (@Nombre, @Descripcion, GETDATE(),@CreadoPor);

			SELECT 0 AS ErrorNumber, 'Se insertó correctamente' AS ErrorMessage, 0 AS ErrorLine, SCOPE_IDENTITY() AS LAST_ID;
		end
	COMMIT;
	END TRY
	BEGIN CATCH
		ROLLBACK TRAN;
		 SELECT ERROR_NUMBER() AS ErrorNumber, ERROR_MESSAGE() AS ErrorMessage, ERROR_LINE() AS ErrorLine, 0 AS ID  
	END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[ins_Empresa]    Script Date: 22/05/2023 07:21:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[ins_Empresa]
	@DivisionId int,
	@Nombre nvarchar(max),
	@RFC nvarchar(50),
	@Descripcion text,
	@CreadoPor nvarchar(max)
AS
BEGIN
	BEGIN TRAN;
	BEGIN TRY
		
		declare @Exists int = 0;
		select @Exists = ISNULL(count(*), 0) from cat_Empresas where Nombre = @Nombre;

		if @Exists > 0
		begin
			SELECT 1 AS ErrorNumber, 'Esta empresa ya existe. Intente con otro nombre.' AS ErrorMessage, 1 AS ErrorLine, 0 AS LAST_ID;
		end
		else
		begin
			insert into cat_Empresas (DivisionId, Nombre, RFC, Descripcion, Creado, CreadoPor, Activo) values (@DivisionId, @Nombre, @RFC, @Descripcion, GETDATE(),@CreadoPor,1);

			SELECT 0 AS ErrorNumber, 'Se insertó correctamente' AS ErrorMessage, 0 AS ErrorLine, SCOPE_IDENTITY() AS LAST_ID;
		end
	COMMIT;
	END TRY
	BEGIN CATCH
		ROLLBACK TRAN;
		 SELECT ERROR_NUMBER() AS ErrorNumber, ERROR_MESSAGE() AS ErrorMessage, ERROR_LINE() AS ErrorLine, 0 AS ID  
	END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[ins_Enmienda]    Script Date: 22/05/2023 07:21:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ins_Enmienda]
	@CartaCreditoId nvarchar(max) = null,
	@ImporteLC decimal(18,2) = null,
	@FechaLimiteEmbarque datetime = null,
	@FechaVencimiento datetime = null,
	@DescripcionMercancia text = null,
	@ConsideracionesAdicionales text = null,
	@InstruccionesEspeciales text = null,
	@CreadoPor nvarchar(max) = null
AS
BEGIN
	BEGIN TRAN;
		BEGIN TRY
			BEGIN
				INSERT INTO proc_Enmiendas(CartaCreditoId,ImporteLC, FechaLimiteEmbarque, FechaVencimiento,DescripcionMercancia,ConsideracionesAdicionales,InstruccionesEspeciales,CreadoPor,Estatus,Activo,Creado)
				VALUES (@CartaCreditoId,@ImporteLC,@FechaLimiteEmbarque,@FechaVencimiento,@DescripcionMercancia,@ConsideracionesAdicionales,@InstruccionesEspeciales,@CreadoPor,1,1,GETDATE());

				UPDATE proc_CartasCredito set Estatus=21 WHERE Id=@CartaCreditoId;

				SELECT 0 AS ErrorNumber, 'Enmienda registrada correctamente' AS ErrorMessage, 0 AS ErrorLine, SCOPE_IDENTITY() AS LAST_ID;
			END
			COMMIT;
		END TRY
		BEGIN CATCH
			ROLLBACK TRAN;
			SELECT ERROR_NUMBER() AS ErrorNumber, ERROR_MESSAGE() as ErrorMessage, ERROR_LINE() as ErrorLine, 0 AS ID
		END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[ins_Invitacion]    Script Date: 22/05/2023 07:21:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ins_Invitacion]
	@Email nvarchar(50),
	@UserName nvarchar(50),
	@CreadoPorId nvarchar(50)
AS
BEGIN
	BEGIN TRAN;
	BEGIN TRY
		DECLARE @Length int;
		DECLARE @CharPool nvarchar(max);
		DECLARE @PoolLength int;
		DECLARE @LoopCount int;
		DECLARE @RandomString nvarchar(max);

		-- min_length = 15, max_length = 20
		SET @Length = RAND() * 25 + 30
		-- SET @Length = RAND() * (max_length - min_length + 1) + min_length

		-- define allowable character explicitly - easy to read this way an easy to 
		-- omit easily confused chars like l (ell) and 1 (one) or 0 (zero) and O (oh)
		SET @CharPool = 
			'abcdefghijkmnopqrstuvwxyzABCDEFGHIJKLMNPQRSTUVWXYZ23456789'
		SET @PoolLength = Len(@CharPool)

		SET @LoopCount = 0
		SET @RandomString = ''

		WHILE (@LoopCount < @Length) BEGIN
			SELECT @RandomString = @RandomString + 
				SUBSTRING(@Charpool, CONVERT(int, RAND() * @PoolLength) + 1, 1)
			SELECT @LoopCount = @LoopCount + 1
		END
		
		declare @Exists int = 0;
		declare @ExistsInv int = 0;
		select @Exists = ISNULL(count(*), 0) from AspNetUsers where Email=@Email or UserName=@UserName;
		select @ExistsInv = ISNULL(count(*), 0) from proc_Invitaciones where Email=@Email;

		if @Exists > 0 or @ExistsInv > 0
		begin
			SELECT 1 AS ErrorNumber, 'Este registro ya existe. Intente con otro nombre de usuario o correo.' AS ErrorMessage, 1 AS ErrorLine, 0 AS LAST_ID;
		end
		else
		begin
			insert into proc_Invitaciones (Email,Token,CreadoPorId,Creado)
				values(@Email,@RandomString,@CreadoPorId,GETDATE())
				;

			SELECT 0 AS ErrorNumber, 'Se insertó correctamente' AS ErrorMessage, 0 AS ErrorLine, SCOPE_IDENTITY() AS LAST_ID;
		end
	COMMIT;
	END TRY
	BEGIN CATCH
		ROLLBACK TRAN;
		 SELECT ERROR_NUMBER() AS ErrorNumber, ERROR_MESSAGE() AS ErrorMessage, ERROR_LINE() AS ErrorLine, 0 AS ID  
	END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[ins_LineaDeCredito]    Script Date: 22/05/2023 07:21:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[ins_LineaDeCredito]
	@EmpresaId int,
	@BancoId int,
	@Monto decimal(18,2),
	@Cuenta nvarchar(max),
	@CreadoPor nvarchar(max)
AS
BEGIN
	BEGIN TRAN;
	BEGIN TRY
		
		declare @Exists int = 0;
		select @Exists = ISNULL(count(*), 0) from cat_LineasCredito where EmpresaId=@EmpresaId and BancoId=@BancoId and Cuenta=@Cuenta;

		if @Exists > 0
		begin
			SELECT 1 AS ErrorNumber, 'Este registro ya existe. Intente con otro nombre.' AS ErrorMessage, 1 AS ErrorLine, 0 AS LAST_ID;
		end
		else
		begin
			insert into cat_LineasCredito (EmpresaId, BancoId, Monto, Cuenta, CreadoPor, Activo, Creado) 
				values (@EmpresaId, @BancoId, @Monto, @Cuenta, @CreadoPor, 1, GETDATE());

			SELECT 0 AS ErrorNumber, 'Se insertó correctamente' AS ErrorMessage, 0 AS ErrorLine, SCOPE_IDENTITY() AS LAST_ID;
		end
	COMMIT;
	END TRY
	BEGIN CATCH
		ROLLBACK TRAN;
		 SELECT ERROR_NUMBER() AS ErrorNumber, ERROR_MESSAGE() AS ErrorMessage, ERROR_LINE() AS ErrorLine, 0 AS ID  
	END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[ins_Moneda]    Script Date: 22/05/2023 07:21:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[ins_Moneda]
	@Nombre nvarchar(max),
	@Abbr nvarchar(10),
	@Descripcion text,
	@CreadoPor nvarchar(max)
AS
BEGIN
	BEGIN TRAN;
	BEGIN TRY
		
		declare @Exists int = 0;
		select @Exists = ISNULL(count(*), 0) from cat_Monedas where Nombre = @Nombre;

		if @Exists > 0
		begin
			SELECT 1 AS ErrorNumber, 'Este registro ya existe. Intente con otro nombre.' AS ErrorMessage, 1 AS ErrorLine, 0 AS LAST_ID;
		end
		else
		begin
			insert into cat_Monedas (Nombre, Abbr, Descripcion, Creado, CreadoPor) 
				values (@Nombre, @Abbr, @Descripcion, GETDATE(),@CreadoPor);

			SELECT 0 AS ErrorNumber, 'Se insertó correctamente' AS ErrorMessage, 0 AS ErrorLine, SCOPE_IDENTITY() AS LAST_ID;
		end
	COMMIT;
	END TRY
	BEGIN CATCH
		ROLLBACK TRAN;
		 SELECT ERROR_NUMBER() AS ErrorNumber, ERROR_MESSAGE() AS ErrorMessage, ERROR_LINE() AS ErrorLine, 0 AS ID  
	END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[ins_Pago]    Script Date: 22/05/2023 07:21:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[ins_Pago]
	@FechaVencimiento datetime,
	@NumeroFactura nvarchar(max),
	@MontoPago decimal(18,2),
	@CreadoPor nvarchar(max),
	@CartaCreditoId nvarchar(max)
AS
BEGIN
	SET NOCOUNT ON;

    BEGIN TRAN;
		BEGIN TRY
			BEGIN
				DECLARE @NumPago int

				SELECT @NumPago = ISNULL(MAX(NumeroPago), 0) + 1
				FROM proc_Pagos
				WHERE CartaCreditoId = @CartaCreditoId

				INSERT INTO proc_Pagos(NumeroPago,FechaVencimiento,NumeroFactura,MontoPago,MontoPagado,CreadoPor,CartaCreditoId,Creado,Estatus,Activo)
				VALUES (@NumPago,@FechaVencimiento,@NumeroFactura,@MontoPago,0,@CreadoPor,@CartaCreditoId,GETDATE(),1,1);

				UPDATE P
					SET P.NumeroPago = T.NumPago
					FROM proc_Pagos AS P
					INNER JOIN 
					(
						SELECT Id, ROW_NUMBER() OVER (ORDER BY FechaVencimiento ASC) AS NumPago
						FROM proc_Pagos
						WHERE CartaCreditoId = @CartaCreditoId
					) AS T ON P.Id = T.Id

				SELECT 0 AS ErrorNumber, 'Pago registrado correctamente' AS ErrorMessage, 0 AS ErrorLine, SCOPE_IDENTITY() AS LAST_ID;
			END
			COMMIT;
		END TRY
		BEGIN CATCH
			ROLLBACK TRAN;
			SELECT ERROR_NUMBER() AS ErrorNumber, ERROR_MESSAGE() as ErrorMessage, ERROR_LINE() as ErrorLine, 0 AS ID
		END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[ins_PagoComision]    Script Date: 22/05/2023 07:21:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ins_PagoComision]
	@FechaPago datetime,
	@MontoPago decimal(18,2),
	@ComisionId int,
	@MonedaId int,
	@TipoCambio decimal(18,2),
	@Estatus int = 3,
	@Comentarios text = null
AS
BEGIN
	SET NOCOUNT ON;

    BEGIN TRAN;
		BEGIN TRY
			BEGIN
				UPDATE proc_CartaCreditoComisiones
					SET FechaPago=@FechaPago, MontoPagado=@MontoPago, Comentarios=@Comentarios, TipoCambio=@TipoCambio, 
						PagoMonedaId=@MonedaId, Estatus=@Estatus
					WHERE Id=@ComisionId;
				
				-- INSERT INTO proc_BitacoraMovimientos (Titulo,Descripcion,CartaCreditoId,ModeloNombre,ModeloId,Creado)
					-- VALUES ('Pago Comisión - Registro','Se registró pago de comisión en carta de crédito',null,'CartaCreditoComision',@ComisionId,GETDATE());

				SELECT 0 AS ErrorNumber, 'Pago registrado correctamente' AS ErrorMessage, 0 AS ErrorLine, @ComisionId AS LAST_ID;
			END
			COMMIT;
		END TRY
		BEGIN CATCH
			ROLLBACK TRAN;
			SELECT ERROR_NUMBER() AS ErrorNumber, ERROR_MESSAGE() as ErrorMessage, ERROR_LINE() as ErrorLine, 0 AS ID
		END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[ins_Pais]    Script Date: 22/05/2023 07:21:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ins_Pais]
	@Nombre nvarchar(max),
	@Alpha2Code char(2),
	@Alpha3Code char(2)
AS
BEGIN
	BEGIN TRAN;
	BEGIN TRY
		
		declare @Exists int = 0;
		select @Exists = ISNULL(count(*), 0) from cat_Paises where Nombre = @Nombre;

		if @Exists > 0
		begin
			SELECT 1 AS ErrorNumber, 'Este registro ya existe. Intente con otro nombre.' AS ErrorMessage, 1 AS ErrorLine, 0 AS LAST_ID;
		end
		else
		begin
			insert into cat_Paises (Nombre, Alpha2Code, Alpha3Code) 
				values (@Nombre, @Alpha2Code, @Alpha3Code);

			SELECT 0 AS ErrorNumber, 'Se insertó correctamente' AS ErrorMessage, 0 AS ErrorLine, SCOPE_IDENTITY() AS LAST_ID;
		end
	COMMIT;
	END TRY
	BEGIN CATCH
		ROLLBACK TRAN;
		 SELECT ERROR_NUMBER() AS ErrorNumber, ERROR_MESSAGE() AS ErrorMessage, ERROR_LINE() AS ErrorLine, 0 AS ID  
	END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[ins_Proveedor]    Script Date: 22/05/2023 07:21:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[ins_Proveedor]
	@EmpresaId int,
	@PaisId int,
	@Nombre nvarchar(max),
	@Descripcion text,
	@CreadoPor nvarchar(max)
AS
BEGIN
	BEGIN TRAN;
	BEGIN TRY
		
		declare @Exists int = 0;
		select @Exists = ISNULL(count(*), 0) from cat_Proveedores where Nombre = @Nombre and EmpresaId=@EmpresaId;

		if @Exists > 0
		begin
			SELECT 1 AS ErrorNumber, 'Este registro ya existe. Intente con otro nombre.' AS ErrorMessage, 1 AS ErrorLine, 0 AS LAST_ID;
		end
		else
		begin
			insert into cat_Proveedores (EmpresaId, PaisId, Nombre, Descripcion, Creado, CreadoPor) 
				values (@EmpresaId, @PaisId, @Nombre, @Descripcion, GETDATE(),@CreadoPor);

			SELECT 0 AS ErrorNumber, 'Se insertó correctamente' AS ErrorMessage, 0 AS ErrorLine, SCOPE_IDENTITY() AS LAST_ID;
		end
	COMMIT;
	END TRY
	BEGIN CATCH
		ROLLBACK TRAN;
		 SELECT ERROR_NUMBER() AS ErrorNumber, ERROR_MESSAGE() AS ErrorMessage, ERROR_LINE() AS ErrorLine, 0 AS ID  
	END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[ins_Proyecto]    Script Date: 22/05/2023 07:21:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[ins_Proyecto]
	@EmpresaId int,
	@Nombre nvarchar(max),
	@Descripcion text,
	@FechaApertura datetime,
	@FechaCierre datetime,
	@CreadoPor nvarchar(max)
AS
BEGIN
	BEGIN TRAN;
	BEGIN TRY
		
		declare @Exists int = 0;
		select @Exists = ISNULL(count(*), 0) from cat_Proyectos where Nombre = @Nombre and EmpresaId=@EmpresaId;

		if @Exists > 0
		begin
			SELECT 1 AS ErrorNumber, 'Este registro ya existe. Intente con otro nombre.' AS ErrorMessage, 1 AS ErrorLine, 0 AS LAST_ID;
		end
		else
		begin
			insert into cat_Proyectos (EmpresaId, Nombre, Descripcion, Creado, CreadoPor, FechaApertura, FechaCierre) 
				values (@EmpresaId, @Nombre, @Descripcion, GETDATE(),@CreadoPor, @FechaApertura, @FechaCierre);

			SELECT 0 AS ErrorNumber, 'Se insertó correctamente' AS ErrorMessage, 0 AS ErrorLine, SCOPE_IDENTITY() AS LAST_ID;
		end
	COMMIT;
	END TRY
	BEGIN CATCH
		ROLLBACK TRAN;
		 SELECT ERROR_NUMBER() AS ErrorNumber, ERROR_MESSAGE() AS ErrorMessage, ERROR_LINE() AS ErrorLine, 0 AS ID  
	END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[ins_Reporte]    Script Date: 22/05/2023 07:21:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ins_Reporte]
	@TipoReporte nvarchar(50),
	@CreadoPorId nvarchar(max),
	@CreadoPor nvarchar(max),
	@Filename nvarchar(max)
AS
BEGIN
	SET NOCOUNT ON;

	if @TipoReporte is not null and @CreadoPor is not null and @CreadoPorId is not null and @Filename is not null
		begin
			insert into proc_Reportes (TipoReporte, CreadoPor, CreadoPorId, Filename, Creado)
				values (@TipoReporte, @CreadoPor, @CreadoPorId, @Filename,GETDATE());
		end
	else
		begin
			SELECT 1 AS ErrorNumber, 'Los valores TipoReporte, CreadoPor, CreadoPorId y FileName son necesarios.' AS ErrorMessage, 1 AS ErrorLine, 0 AS LAST_ID;
		end
END
GO
/****** Object:  StoredProcedure [dbo].[ins_TipoActivo]    Script Date: 22/05/2023 07:21:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[ins_TipoActivo]
	@Nombre nvarchar(max),
	@Responsable nvarchar(max),
	@Descripcion text,
	@CreadoPor nvarchar(max)
AS
BEGIN
	BEGIN TRAN;
	BEGIN TRY
		
		declare @Exists int = 0;
		select @Exists = ISNULL(count(*), 0) from cat_TiposActivo where Nombre = @Nombre;

		if @Exists > 0
		begin
			SELECT 1 AS ErrorNumber, 'Este registro ya existe. Intente con otro nombre.' AS ErrorMessage, 1 AS ErrorLine, 0 AS LAST_ID;
		end
		else
		begin
			insert into cat_TiposActivo (Nombre, Responsable, Descripcion, Creado, CreadoPor) 
				values (@Nombre, @Responsable, @Descripcion, GETDATE(),@CreadoPor);

			SELECT 0 AS ErrorNumber, 'Se insertó correctamente' AS ErrorMessage, 0 AS ErrorLine, SCOPE_IDENTITY() AS LAST_ID;
		end
	COMMIT;
	END TRY
	BEGIN CATCH
		ROLLBACK TRAN;
		 SELECT ERROR_NUMBER() AS ErrorNumber, ERROR_MESSAGE() AS ErrorMessage, ERROR_LINE() AS ErrorLine, 0 AS ID  
	END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[ins_TipoCobertura]    Script Date: 22/05/2023 07:21:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[ins_TipoCobertura]
	@Nombre nvarchar(max),
	@Descripcion text,
	@CreadoPor nvarchar(max)
AS
BEGIN
	BEGIN TRAN;
	BEGIN TRY
		
		declare @Exists int = 0;
		select @Exists = ISNULL(count(*), 0) from cat_TiposCobertura where Nombre = @Nombre;

		if @Exists > 0
		begin
			SELECT 1 AS ErrorNumber, 'Este registro ya existe. Intente con otro nombre.' AS ErrorMessage, 1 AS ErrorLine, 0 AS LAST_ID;
		end
		else
		begin
			insert into cat_TiposCobertura (Nombre, Descripcion, Creado, CreadoPor) 
				values (@Nombre, @Descripcion, GETDATE(),@CreadoPor);

			SELECT 0 AS ErrorNumber, 'Se insertó correctamente' AS ErrorMessage, 0 AS ErrorLine, SCOPE_IDENTITY() AS LAST_ID;
		end
	COMMIT;
	END TRY
	BEGIN CATCH
		ROLLBACK TRAN;
		 SELECT ERROR_NUMBER() AS ErrorNumber, ERROR_MESSAGE() AS ErrorMessage, ERROR_LINE() AS ErrorLine, 0 AS ID  
	END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[ins_TipoComision]    Script Date: 22/05/2023 07:21:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[ins_TipoComision]
	@Nombre nvarchar(max),
	@Descripcion text,
	@CreadoPor nvarchar(max)
AS
BEGIN
	BEGIN TRAN;
	BEGIN TRY
		
		declare @Exists int = 0;
		select @Exists = ISNULL(count(*), 0) from cat_TiposComision where Nombre = @Nombre;

		if @Exists > 0
		begin
			SELECT 1 AS ErrorNumber, 'Este registro ya existe. Intente con otro nombre.' AS ErrorMessage, 1 AS ErrorLine, 0 AS LAST_ID;
		end
		else
		begin
			insert into cat_TiposComision (Nombre, Descripcion, Creado, CreadoPor) 
				values (@Nombre, @Descripcion, GETDATE(),@CreadoPor);

			SELECT 0 AS ErrorNumber, 'Se insertó correctamente' AS ErrorMessage, 0 AS ErrorLine, SCOPE_IDENTITY() AS LAST_ID;
		end
	COMMIT;
	END TRY
	BEGIN CATCH
		ROLLBACK TRAN;
		 SELECT ERROR_NUMBER() AS ErrorNumber, ERROR_MESSAGE() AS ErrorMessage, ERROR_LINE() AS ErrorLine, 0 AS ID  
	END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[ins_TipoPersonaFiscal]    Script Date: 22/05/2023 07:21:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[ins_TipoPersonaFiscal]
	@Nombre nvarchar(max),
	@Descripcion text,
	@CreadoPor nvarchar(max)
AS
BEGIN
	BEGIN TRAN;
	BEGIN TRY
		
		declare @Exists int = 0;
		select @Exists = ISNULL(count(*), 0) from cat_TiposPersonaFiscal where Nombre = @Nombre;

		if @Exists > 0
		begin
			SELECT 1 AS ErrorNumber, 'Este registro ya existe. Intente con otro nombre.' AS ErrorMessage, 1 AS ErrorLine, 0 AS LAST_ID;
		end
		else
		begin
			insert into cat_TiposPersonaFiscal (Nombre, Descripcion, Creado, CreadoPor) 
				values (@Nombre, @Descripcion, GETDATE(),@CreadoPor);

			SELECT 0 AS ErrorNumber, 'Se insertó correctamente' AS ErrorMessage, 0 AS ErrorLine, SCOPE_IDENTITY() AS LAST_ID;
		end
	COMMIT;
	END TRY
	BEGIN CATCH
		ROLLBACK TRAN;
		 SELECT ERROR_NUMBER() AS ErrorNumber, ERROR_MESSAGE() AS ErrorMessage, ERROR_LINE() AS ErrorLine, 0 AS ID  
	END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[upd_AgenteAduanal]    Script Date: 22/05/2023 07:21:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[upd_AgenteAduanal]
	@Id int,
	@Nombre nvarchar(max),
	@Descripcion text,
	@Activo int
AS
BEGIN
	BEGIN TRAN;
	BEGIN TRY
		
		declare @exists int = 0;
		select @exists = ISNULL(count(*), 0) from cat_AgentesAduanales where Nombre = @Nombre and Id != @Id;

		if @exists > 0
		begin
			SELECT 1 AS ErrorNumber, 'Este registro ya ha sido dada de alta.' AS ErrorMessage, 1 AS ErrorLine, 0 AS LAST_ID;
		end
		else
		begin
			update dbo.cat_AgentesAduanales set Nombre = @Nombre, Descripcion=@Descripcion,
				Activo=@Activo, Actualizado=GETDATE()
			where Id = @Id;

			SELECT 0 AS ErrorNumber, 'Se Actualizo correctamente' AS ErrorMessage, 0 AS ErrorLine, @Id AS LAST_ID;
		end
	COMMIT;
	END TRY
	BEGIN CATCH
		ROLLBACK TRAN;
		 SELECT ERROR_NUMBER() AS ErrorNumber, ERROR_MESSAGE() AS ErrorMessage, ERROR_LINE() AS ErrorLine, 0 AS ID  
	END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[upd_AspNetRole]    Script Date: 22/05/2023 07:21:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[upd_AspNetRole]
	@Id nvarchar(max) = null,
	@Name nvarchar(max) = null,
	@Activo int = 0
AS
BEGIN
	SET NOCOUNT ON;

	BEGIN TRAN;
	BEGIN TRY
		
		declare @Exists int = 0;
		select @Exists = ISNULL(count(*), 0) from AspNetRoles where Id != @Id and (Name=@Name);

		if @Exists > 0
			begin
				SELECT 1 AS ErrorNumber, 'Este registro ya existe. Intente con otro Nombre.' AS ErrorMessage, 1 AS ErrorLine, 0 AS LAST_ID;
			end
		else
			begin
				update AspNetRoles set Name=@Name, Activo=@Activo
				where Id=@Id;

				SELECT 0 AS ErrorNumber, 'Se actualizó correctamente' AS ErrorMessage, 0 AS ErrorLine, @Id AS LAST_ID;
		end
	COMMIT;
	END TRY
	BEGIN CATCH
		ROLLBACK TRAN;
		 SELECT ERROR_NUMBER() AS ErrorNumber, ERROR_MESSAGE() AS ErrorMessage, ERROR_LINE() AS ErrorLine, 0 AS ID  
	END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[upd_AspNetUser]    Script Date: 22/05/2023 07:21:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[upd_AspNetUser]
	@Id nvarchar(max) = null,
	@Email nvarchar(256) = null,
	@PhoneNumber nvarchar(max) = null,
	@UserName nvarchar(max) = null,
	@Activo int = 0
AS
BEGIN
	SET NOCOUNT ON;

	BEGIN TRAN;
	BEGIN TRY
		
		declare @Exists int = 0;
		select @Exists = ISNULL(count(*), 0) from AspNetUsers where Id != @Id and (UserName = @UserName or Email=@Email);

		if @Exists > 0
			begin
				SELECT 1 AS ErrorNumber, 'Este registro ya existe. Intente con otro NOMBRE DE USUARIO o EMAIL.' AS ErrorMessage, 1 AS ErrorLine, 0 AS LAST_ID;
			end
		else
			begin
				update AspNetUsers set Email=@Email, UserName=@UserName, PhoneNumber=@PhoneNumber, Activo=@Activo
				where Id=@Id;

				SELECT 0 AS ErrorNumber, 'Se actualizó correctamente' AS ErrorMessage, 0 AS ErrorLine, @Id AS LAST_ID;
		end
	COMMIT;
	END TRY
	BEGIN CATCH
		ROLLBACK TRAN;
		 SELECT ERROR_NUMBER() AS ErrorNumber, ERROR_MESSAGE() AS ErrorMessage, ERROR_LINE() AS ErrorLine, 0 AS ID  
	END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[upd_AspNetUserPassword]    Script Date: 22/05/2023 07:21:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[upd_AspNetUserPassword]
	@Id nvarchar(max) = null,
	@Password nvarchar(max) = null
AS
BEGIN
	SET NOCOUNT ON;

	BEGIN TRAN;
	BEGIN TRY
		
		update AspNetUsers set PasswordHash=@Password
		where Id=@Id;

		SELECT 0 AS ErrorNumber, 'Se actualizó correctamente' AS ErrorMessage, 0 AS ErrorLine, @Id AS LAST_ID;
	COMMIT;
	END TRY
	BEGIN CATCH
		ROLLBACK TRAN;
		 SELECT ERROR_NUMBER() AS ErrorNumber, ERROR_MESSAGE() AS ErrorMessage, ERROR_LINE() AS ErrorLine, 0 AS ID  
	END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[upd_AspNetUserProfile]    Script Date: 22/05/2023 07:21:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[upd_AspNetUserProfile]
	@Id int = null,
	@UserId nvarchar(max) = null,
	@Name nvarchar(max) = null,
	@LastName nvarchar(max) = null,
	@DisplayName nvarchar(max) = null,
	@Notes text = null
AS
BEGIN
	SET NOCOUNT ON;

	BEGIN TRAN;
	BEGIN TRY
		begin
			update AspNetUserProfile set Name=@Name, LastName=@LastName, DisplayName=@DisplayName, Notes=@Notes
			where Id=@Id;

			SELECT 0 AS ErrorNumber, 'Se actualizó correctamente' AS ErrorMessage, 0 AS ErrorLine, @Id AS LAST_ID;
		end
	COMMIT;
	END TRY
	BEGIN CATCH
		ROLLBACK TRAN;
		 SELECT ERROR_NUMBER() AS ErrorNumber, ERROR_MESSAGE() AS ErrorMessage, ERROR_LINE() AS ErrorLine, 0 AS ID  
	END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[upd_AspNetUserRole]    Script Date: 22/05/2023 07:21:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[upd_AspNetUserRole]
	@UserId nvarchar(max) = null,
	@RoleId nvarchar(max) = null
AS
BEGIN
	SET NOCOUNT ON;

	IF @UserId IS NULL OR @RoleId IS NULL
		SELECT 1 AS ErrorNumber, 'El parámetro UserId y EmpresaId es necesario' AS ErrorMessage, 1 AS ErrorLine, 0 AS LAST_ID;
	ELSE
		declare @Exists int = 0;
		select @Exists = ISNULL(count(*), 0) from AspNetUserRoles where UserId=@UserId;

		if @Exists > 0
			UPDATE AspNetUserRoles SET RoleId=@RoleId WHERE UserId=@UserId;
		else
			INSERT INTO AspNetUserRoles (RoleId,UserId) VALUES (@RoleId,@UserId)
		

		SELECT 0 AS ErrorNumber, 'Se actualizó correctamente' AS ErrorMessage, 0 AS ErrorLine, 1 AS LAST_ID;
END
GO
/****** Object:  StoredProcedure [dbo].[upd_Banco]    Script Date: 22/05/2023 07:21:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[upd_Banco]
	@Id int,
	@Nombre nvarchar(max),
	@TotalLinea decimal(18,2),
	@Descripcion text,
	@Activo int
AS
BEGIN
	BEGIN TRAN;
	BEGIN TRY
		
		declare @exists int = 0;
		select @exists = ISNULL(count(*), 0) from cat_Bancos where Nombre = @Nombre and Id != @Id;

		if @exists > 0
		begin
			SELECT 1 AS ErrorNumber, 'Este banco ya ha sido dada de alta.' AS ErrorMessage, 1 AS ErrorLine, 0 AS LAST_ID;
		end
		else
		begin
			update dbo.cat_Bancos set Nombre = @Nombre, Descripcion=@Descripcion, TotalLinea=@TotalLinea, Activo=@Activo, Actualizado=GETDATE()
			where Id = @Id;

			SELECT 0 AS ErrorNumber, 'Se Actualizo correctamente' AS ErrorMessage, 0 AS ErrorLine, @Id AS LAST_ID;
		end
	COMMIT;
	END TRY
	BEGIN CATCH
		ROLLBACK TRAN;
		 SELECT ERROR_NUMBER() AS ErrorNumber, ERROR_MESSAGE() AS ErrorMessage, ERROR_LINE() AS ErrorLine, 0 AS ID  
	END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[upd_CartaCredito]    Script Date: 22/05/2023 07:21:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE   PROCEDURE [dbo].[upd_CartaCredito]
	@CartaCreditoId nvarchar(max),
	@Estatus int,
	@TipoCarta nvarchar(50),
	@TipoActivoId int,
	@BancoId int,
	@ProyectoId int,
	@ProveedorId int,
	@EmpresaId int,
	@AgenteAduanalId int,
	@MonedaId int,
	@TipoPago nvarchar(50),
	@Responsable nvarchar(50),
	@CompradorId int,
	@PorcTolerancia int,
	@NumeroOrdenCompra nvarchar(50),
	@CostoApertura decimal(18, 2),
	@MontoOrdenCompra decimal(18, 2),
	@MontoOriginal decimal(18, 2),
	@FechaApertura datetime,
	@Incoterm text,
	@FechaLimiteEmbarque datetime,
	@FechaVencimiento datetime,
	@EmbarquesParciales nvarchar(50),
	@Transbordos nvarchar(50),
	@PuntoEmbarque nvarchar(50),
	@PuntoDesembarque nvarchar(50),
	@DescripcionMercancia text,
	@DescripcionCartaCredito text,
	@PagoCartaAceptacion text,
	@ConsignacionMercancia text,
	@ConsideracionesAdicionales text,
	@DiasPresentarDocumentos int,
	@DiasPlazoProveedor int,
	@CondicionesPago nvarchar(50),
	@NumeroPeriodos int,
	@BancoCorresponsalId int,
	@SeguroPorCuenta nvarchar(50),
	@GastosComisionesCorresponsal nvarchar(50),
	@ConfirmacionBancoNotificador nvarchar(50),
	@TipoEmision nvarchar(50),
	@Activo int = 1,
	@InstruccionesEspeciales text = null
AS
BEGIN
	SET NOCOUNT ON;

	if @CartaCreditoId is not null
		begin
			UPDATE proc_CartasCredito
				SET Estatus=@Estatus, TipoCarta=@TipoCarta, TipoActivoId=@TipoActivoId, BancoId=@BancoId, ProyectoId=@ProyectoId, ProveedorId=@ProveedorId, EmpresaId=@EmpresaId, 
					AgenteAduanalId=@AgenteAduanalId, MonedaId=@MonedaId, TipoPago=@TipoPago, Responsable=@Responsable, CompradorId=@CompradorId, 
					PorcentajeTolerancia=@PorcTolerancia, NumeroOrdenCompra=@NumeroOrdenCompra, CostoApertura=@CostoApertura, MontoOrdenCompra=@MontoOrdenCompra, 
					MontoOriginalLC=@MontoOriginal, FechaApertura=@FechaApertura, Incoterm=@Incoterm, 
					FechaLimiteEmbarque=@FechaLimiteEmbarque, FechaVencimiento=@FechaVencimiento, EmbarquesParciales=@EmbarquesParciales, Transbordos=@Transbordos, 
					PuntoEmbarque=@PuntoEmbarque, PuntoDesembarque=@PuntoDesembarque, DescripcionMercancia=@DescripcionMercancia, DescripcionCartaCredito=@DescripcionCartaCredito, 
					PagoCartaAceptacion=@PagoCartaAceptacion, ConsignacionMercancia=@ConsignacionMercancia, ConsideracionesAdicionales=@ConsideracionesAdicionales, 
					DiasParaPresentarDocumentos=@DiasPresentarDocumentos, DiasPlazoProveedor=@DiasPlazoProveedor, CondicionesPago=@CondicionesPago, 
					NumeroPeriodos=@NumeroPeriodos, BancoCorresponsalId=@BancoCorresponsalId, SeguroPorCuenta=@SeguroPorCuenta, GastosComisionesCorresponsal=@GastosComisionesCorresponsal, 
					ConfirmacionBancoNotificador=@ConfirmacionBancoNotificador, TipoEmision=@TipoEmision, Activo=@Activo, InstruccionesEspeciales=@InstruccionesEspeciales
			WHERE Id=@CartaCreditoId;

			SELECT 0 AS ErrorNumber, 'Registro actualizado correctamente' AS ErrorMessage, 0 AS ErrorLine, @CartaCreditoId AS LAST_ID;
		end
	else
		begin
			SELECT 1 AS ErrorNumber, 'Parámetro CartaCreditoId es requerido' as ErrorMessage, 1 as ErrorLine, 0 AS ID
		end
END
GO
/****** Object:  StoredProcedure [dbo].[upd_CartaCreditoStatus]    Script Date: 22/05/2023 07:21:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE   PROCEDURE [dbo].[upd_CartaCreditoStatus]
	@CartaComercialId nvarchar(max),
	@Estatus nvarchar(1)
AS
BEGIN
	SET NOCOUNT ON;

    UPDATE proc_CartasCredito
		SET Estatus = @Estatus WHERE Id = @CartaComercialId;

	SELECT 0 AS ErrorNumber, 'Se Actualizo correctamente' AS ErrorMessage, 0 AS ErrorLine, @CartaComercialId AS LAST_ID;
END
GO
/****** Object:  StoredProcedure [dbo].[upd_CartaCreditoSwift]    Script Date: 22/05/2023 07:21:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE   PROCEDURE [dbo].[upd_CartaCreditoSwift]
	@CartaComercialId nvarchar(max),
	@NumeroCarta nvarchar(max),
	@SwiftFilename nvarchar(max)
AS
BEGIN
	SET NOCOUNT ON;

    UPDATE proc_CartasCredito
		SET NumCartaCredito = @NumeroCarta, DocumentoSwift = @SwiftFilename, Estatus = 2
	WHERE Id = @CartaComercialId;

	SELECT 0 AS ErrorNumber, 'Se Actualizo correctamente' AS ErrorMessage, 0 AS ErrorLine, @CartaComercialId AS LAST_ID;
END
GO
/****** Object:  StoredProcedure [dbo].[upd_Comision]    Script Date: 22/05/2023 07:21:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[upd_Comision]
	@Id int,
	@BancoId int,
	@TipoComisionId int,
	@Nombre nvarchar(max),
	@Descripcion text,
	@Costo decimal(18,2),
	@SwiftApertura nvarchar(max),
	@SwiftOtro nvarchar(max),
	@PorcentajeIVA decimal(18,2),
	@Activo int
AS
BEGIN
	BEGIN TRAN;
	BEGIN TRY
		
		declare @exists int = 0;
		select @exists = ISNULL(count(*), 0) from cat_Comisiones where Nombre = @Nombre and Id != @Id;

		if @exists > 0
		begin
			SELECT 1 AS ErrorNumber, 'Este registro ya ha sido dada de alta.' AS ErrorMessage, 1 AS ErrorLine, 0 AS LAST_ID;
		end
		else
		begin
			update dbo.cat_Comisiones set BancoId = @BancoId, TipoComisionId=@TipoComisionId, Nombre = @Nombre, Descripcion=@Descripcion, Costo=@Costo,
				SwiftApertura=@SwiftApertura, SwiftOtro=@SwiftOtro, PorcentajeIVA=@PorcentajeIVA,
				Activo=@Activo, Actualizado=GETDATE()
			where Id = @Id;

			SELECT 0 AS ErrorNumber, 'Se Actualizo correctamente' AS ErrorMessage, 0 AS ErrorLine, @Id AS LAST_ID;
		end
	COMMIT;
	END TRY
	BEGIN CATCH
		ROLLBACK TRAN;
		 SELECT ERROR_NUMBER() AS ErrorNumber, ERROR_MESSAGE() AS ErrorMessage, ERROR_LINE() AS ErrorLine, 0 AS ID  
	END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[upd_Comprador]    Script Date: 22/05/2023 07:21:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[upd_Comprador]
	@Id int,
	@EmpresaId int,
	@TipoPersonaFiscalId int,
	@Nombre nvarchar(max),
	@Descripcion text,
	@Activo int
AS
BEGIN
	BEGIN TRAN;
	BEGIN TRY
		
		declare @exists int = 0;
		select @exists = ISNULL(count(*), 0) from cat_Compradores where Nombre = @Nombre and EmpresaId = @EmpresaId and Id != @Id;

		if @exists > 0
		begin
			SELECT 1 AS ErrorNumber, 'Este registro ya ha sido dada de alta.' AS ErrorMessage, 1 AS ErrorLine, 0 AS LAST_ID;
		end
		else
		begin
			update dbo.cat_Compradores set EmpresaId = @EmpresaId, TipoPersonaFiscalId = @TipoPersonaFiscalId, Nombre = @Nombre, Descripcion=@Descripcion,
				Activo=@Activo, Actualizado=GETDATE()
			where Id = @Id;

			SELECT 0 AS ErrorNumber, 'Se Actualizo correctamente' AS ErrorMessage, 0 AS ErrorLine, @Id AS LAST_ID;
		end
	COMMIT;
	END TRY
	BEGIN CATCH
		ROLLBACK TRAN;
		 SELECT ERROR_NUMBER() AS ErrorNumber, ERROR_MESSAGE() AS ErrorMessage, ERROR_LINE() AS ErrorLine, 0 AS ID  
	END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[upd_Contacto]    Script Date: 22/05/2023 07:21:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[upd_Contacto]
	@Id int,
	@Nombre nvarchar(50),
	@ApellidoPaterno nvarchar(50),
	@ApellidoMaterno nvarchar(50),
	@Telefono nvarchar(10),
	@Celular nvarchar(10),
	@Email nvarchar(10),
	@Fax nvarchar(10),
	@Descripcion text,
	@Activo int
AS
BEGIN
	BEGIN TRAN;
	BEGIN TRY
		
		
			update dbo.cat_Contactos set Nombre=@Nombre, ApellidoPaterno=@ApellidoPaterno, ApellidoMaterno=@ApellidoMaterno, Telefono=@Telefono, Celular=@Celular,
				Email=@Email, Fax=@Fax, Descripcion=@Descripcion, Activo=@Activo
			where Id = @Id;

			SELECT 0 AS ErrorNumber, 'Se Actualizo correctamente' AS ErrorMessage, 0 AS ErrorLine, @Id AS LAST_ID;
		
	COMMIT;
	END TRY
	BEGIN CATCH
		ROLLBACK TRAN;
		 SELECT ERROR_NUMBER() AS ErrorNumber, ERROR_MESSAGE() AS ErrorMessage, ERROR_LINE() AS ErrorLine, 0 AS ID  
	END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[upd_Division]    Script Date: 22/05/2023 07:21:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[upd_Division]
	@Id int,
	@Nombre nvarchar(max),
	@Descripcion nvarchar(max),
	@Activo int
AS
BEGIN
	BEGIN TRAN;
	BEGIN TRY
		
		declare @exists int = 0;
		select @exists = ISNULL(count(*), 0) from cat_Divisiones where Nombre = @Nombre and Id != @Id;

		if @exists > 0
		begin
			SELECT 1 AS ErrorNumber, 'Esta división ya ha sido dada de alta.' AS ErrorMessage, 1 AS ErrorLine, 0 AS LAST_ID;
		end
		else
		begin
			update dbo.cat_Divisiones set Nombre = @Nombre, Descripcion=@Descripcion, Activo=@Activo, Actualizado=GETDATE()
			where Id = @Id;

			SELECT 0 AS ErrorNumber, 'Se Actualizo correctamente' AS ErrorMessage, 0 AS ErrorLine, @Id AS LAST_ID;
		end
	COMMIT;
	END TRY
	BEGIN CATCH
		ROLLBACK TRAN;
		 SELECT ERROR_NUMBER() AS ErrorNumber, ERROR_MESSAGE() AS ErrorMessage, ERROR_LINE() AS ErrorLine, 0 AS ID  
	END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[upd_Documento]    Script Date: 22/05/2023 07:21:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[upd_Documento]
	@Id int,
	@Nombre nvarchar(max),
	@Descripcion text,
	@Activo int
AS
BEGIN
	BEGIN TRAN;
	BEGIN TRY
		
		declare @exists int = 0;
		select @exists = ISNULL(count(*), 0) from cat_Documentos where Nombre = @Nombre and Id != @Id;

		if @exists > 0
		begin
			SELECT 1 AS ErrorNumber, 'Este registro ya ha sido dada de alta.' AS ErrorMessage, 1 AS ErrorLine, 0 AS LAST_ID;
		end
		else
		begin
			update dbo.cat_Documentos set Nombre = @Nombre, Descripcion=@Descripcion, Activo=@Activo, Actualizado=GETDATE()
			where Id = @Id;

			SELECT 0 AS ErrorNumber, 'Se Actualizo correctamente' AS ErrorMessage, 0 AS ErrorLine, @Id AS LAST_ID;
		end
	COMMIT;
	END TRY
	BEGIN CATCH
		ROLLBACK TRAN;
		 SELECT ERROR_NUMBER() AS ErrorNumber, ERROR_MESSAGE() AS ErrorMessage, ERROR_LINE() AS ErrorLine, 0 AS ID  
	END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[upd_Empresa]    Script Date: 22/05/2023 07:21:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[upd_Empresa]
	@Id int,
	@DivisionId int,
	@Nombre nvarchar(max),
	@RFC nvarchar(50),
	@Descripcion nvarchar(max),
	@Activo int
AS
BEGIN
	BEGIN TRAN;
	BEGIN TRY
		
		declare @exists int = 0;
		select @exists = ISNULL(count(*), 0) from cat_Empresas where Nombre = @Nombre and Id != @Id;

		if @exists > 0
		begin
			SELECT 1 AS ErrorNumber, 'Esta empresa ya ha sido dada de alta.' AS ErrorMessage, 1 AS ErrorLine, 0 AS LAST_ID;
		end
		else
		begin
			update dbo.cat_Empresas set DivisionId=@DivisionId, Nombre = @Nombre, RFC = @RFC, Descripcion=@Descripcion, Activo=@Activo, Actualizado=GETDATE()
			where Id = @Id;

			SELECT 0 AS ErrorNumber, 'Se Actualizo correctamente' AS ErrorMessage, 0 AS ErrorLine, @Id AS LAST_ID;
		end
	COMMIT;
	END TRY
	BEGIN CATCH
		ROLLBACK TRAN;
		 SELECT ERROR_NUMBER() AS ErrorNumber, ERROR_MESSAGE() AS ErrorMessage, ERROR_LINE() AS ErrorLine, 0 AS ID  
	END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[upd_Enmienda]    Script Date: 22/05/2023 07:21:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[upd_Enmienda]
	@Id int = null,
	@CartaCreditoId nvarchar(max),
	@ImporteLC decimal(18,2) = null,
	@FechaLimiteEmbarque datetime = null,
	@FechaVencimiento datetime = null,
	@DescripcionMercancia text = null,
	@ConsideracionesAdicionales text = null,
	@InstruccionesEspeciales text = null,
	@Activo int = 0,
	@Estatus int = 0,
	@Prev_ImporteLC decimal(18,2) = null,
	@Prev_FechaLimiteEmbarque datetime = null,
	@Prev_FechaVencimiento datetime = null,
	@Prev_DescripcionMercancia text = null,
	@Prev_ConsideracionesAdicionales text = null,
	@Prev_InstruccionesEspeciales text = null
AS
BEGIN
	SET NOCOUNT ON;

	if @Id is not null
		begin
			update proc_Enmiendas
				set CartaCreditoId=@CartaCreditoId, ImporteLC=@ImporteLC, FechaLimiteEmbarque=@FechaLimiteEmbarque, FechaVencimiento=@FechaVencimiento, 
					DescripcionMercancia=@DescripcionMercancia, ConsideracionesAdicionales=@ConsideracionesAdicionales, InstruccionesEspeciales=@InstruccionesEspeciales, Activo=@Activo, 
					Prev_ImporteLC=@Prev_ImporteLC, Prev_FechaLimiteEmbarque=@Prev_FechaLimiteEmbarque, Prev_FechaVencimiento=@Prev_FechaVencimiento, Prev_DescripcionMercancia=@Prev_DescripcionMercancia,
					Prev_ConsideracionesAdicionales=@Prev_ConsideracionesAdicionales, Prev_InstruccionesEspeciales=@Prev_InstruccionesEspeciales, Estatus=@Estatus
			where Id=@Id;

			SELECT 0 AS ErrorNumber, 'Se Actualizo correctamente' AS ErrorMessage, 0 AS ErrorLine, @Id AS LAST_ID;
		end
	else
		begin
			SELECT 1 AS ErrorNumber, 'El parámetro ID es requerido.' AS ErrorMessage, 1 AS ErrorLine, 0 AS LAST_ID;
		end
END
GO
/****** Object:  StoredProcedure [dbo].[upd_EnmiendaSwift]    Script Date: 22/05/2023 07:21:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE   PROCEDURE [dbo].[upd_EnmiendaSwift]
	@CartaComercialId nvarchar(max),
	@EnmiendaId int,
	@SwiftFilename nvarchar(max)
AS
BEGIN
	SET NOCOUNT ON;

    UPDATE proc_CartasCredito
		SET DocumentoSwift = @SwiftFilename
	WHERE Id = @CartaComercialId;

	UPDATE proc_Enmiendas SET DocumentoSwift=@SwiftFilename
	WHERE Id=@EnmiendaId;

	SELECT 0 AS ErrorNumber, 'Se Actualizo correctamente' AS ErrorMessage, 0 AS ErrorLine, @CartaComercialId AS LAST_ID;
END
GO
/****** Object:  StoredProcedure [dbo].[upd_LineaDeCredito]    Script Date: 22/05/2023 07:21:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[upd_LineaDeCredito]
	@Id int,
	@EmpresaId int,
	@BancoId int,
	@Monto decimal(18,2),
	@Cuenta nvarchar(max),
	@Activo int
AS
BEGIN
	BEGIN TRAN;
	BEGIN TRY
		
		declare @exists int = 0;
		select @exists = ISNULL(count(*), 0) from cat_LineasCredito where EmpresaId = @EmpresaId and BancoId=@BancoId and Cuenta=@Cuenta and Id != @Id;

		if @exists > 0
		begin
			SELECT 1 AS ErrorNumber, 'Este registro ya ha sido dada de alta.' AS ErrorMessage, 1 AS ErrorLine, 0 AS LAST_ID;
		end
		else
		begin
			update dbo.cat_LineasCredito set EmpresaId=@EmpresaId, BancoId=@BancoId, Monto=@Monto, Cuenta=@Cuenta, Activo=@Activo
			where Id = @Id;

			SELECT 0 AS ErrorNumber, 'Se Actualizo correctamente' AS ErrorMessage, 0 AS ErrorLine, @Id AS LAST_ID;
		end
	COMMIT;
	END TRY
	BEGIN CATCH
		ROLLBACK TRAN;
		 SELECT ERROR_NUMBER() AS ErrorNumber, ERROR_MESSAGE() AS ErrorMessage, ERROR_LINE() AS ErrorLine, 0 AS ID  
	END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[upd_Moneda]    Script Date: 22/05/2023 07:21:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[upd_Moneda]
	@Id int,
	@Nombre nvarchar(max),
	@Abbr nvarchar(10),
	@Descripcion text,
	@Activo int
AS
BEGIN
	BEGIN TRAN;
	BEGIN TRY
		
		declare @exists int = 0;
		select @exists = ISNULL(count(*), 0) from cat_Monedas where Nombre = @Nombre and Id != @Id;

		if @exists > 0
		begin
			SELECT 1 AS ErrorNumber, 'Este registro ya ha sido dada de alta.' AS ErrorMessage, 1 AS ErrorLine, 0 AS LAST_ID;
		end
		else
		begin
			update dbo.cat_Monedas set Nombre = @Nombre, Abbr=@Abbr, Descripcion=@Descripcion, Activo=@Activo, Actualizado=GETDATE()
			where Id = @Id;

			SELECT 0 AS ErrorNumber, 'Se Actualizo correctamente' AS ErrorMessage, 0 AS ErrorLine, @Id AS LAST_ID;
		end
	COMMIT;
	END TRY
	BEGIN CATCH
		ROLLBACK TRAN;
		 SELECT ERROR_NUMBER() AS ErrorNumber, ERROR_MESSAGE() AS ErrorMessage, ERROR_LINE() AS ErrorLine, 0 AS ID  
	END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[upd_Pago]    Script Date: 22/05/2023 07:21:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[upd_Pago]
	@Id nvarchar(max),
	@FechaVencimiento datetime,
	@FechaPago datetime = null,
	@NumeroFactura nvarchar(max),
	@MontoPago decimal(18,2),
	@MontoPagado decimal(18,2),
	@CartaCreditoId nvarchar(max),
	@Estatus int = 1
AS
BEGIN
	SET NOCOUNT ON;

    BEGIN TRAN;
		BEGIN TRY
			BEGIN
				update proc_Pagos set FechaVencimiento=@FechaVencimiento, FechaPago=@FechaPago, NumeroFactura=@NumeroFactura, MontoPago=@MontoPago, MontoPagado=@MontoPagado, CartaCreditoId=@CartaCreditoId, Estatus=@Estatus
				where Id=@Id;

				INSERT INTO proc_BitacoraMovimientos (Titulo,Descripcion,CartaCreditoId,ModeloNombre,ModeloId,Creado)
					VALUES ('Pago - Modificación','Se registró modificación de pago en carta de crédito',null,'Pago',@Id,GETDATE());

				SELECT 0 AS ErrorNumber, 'Pago actualizado correctamente' AS ErrorMessage, 0 AS ErrorLine, @Id AS LAST_ID;
			END
			COMMIT;
		END TRY
		BEGIN CATCH
			ROLLBACK TRAN;
			SELECT ERROR_NUMBER() AS ErrorNumber, ERROR_MESSAGE() as ErrorMessage, ERROR_LINE() as ErrorLine, 0 AS ID
		END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[upd_Proveedor]    Script Date: 22/05/2023 07:21:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[upd_Proveedor]
	@Id int,
	@EmpresaId int,
	@PaisId int,
	@Nombre nvarchar(max),
	@Descripcion text,
	@Activo int
AS
BEGIN
	BEGIN TRAN;
	BEGIN TRY
		
		declare @exists int = 0;
		select @exists = ISNULL(count(*), 0) from cat_Proveedores where Nombre = @Nombre and EmpresaId = @EmpresaId and Id != @Id;

		if @exists > 0
		begin
			SELECT 1 AS ErrorNumber, 'Este registro ya ha sido dada de alta.' AS ErrorMessage, 1 AS ErrorLine, 0 AS LAST_ID;
		end
		else
		begin
			update dbo.cat_Proveedores set EmpresaId = @EmpresaId, PaisId = @PaisId, Nombre = @Nombre, Descripcion=@Descripcion,
				Activo=@Activo, Actualizado=GETDATE()
			where Id = @Id;

			SELECT 0 AS ErrorNumber, 'Se Actualizo correctamente' AS ErrorMessage, 0 AS ErrorLine, @Id AS LAST_ID;
		end
	COMMIT;
	END TRY
	BEGIN CATCH
		ROLLBACK TRAN;
		 SELECT ERROR_NUMBER() AS ErrorNumber, ERROR_MESSAGE() AS ErrorMessage, ERROR_LINE() AS ErrorLine, 0 AS ID  
	END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[upd_Proyecto]    Script Date: 22/05/2023 07:21:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[upd_Proyecto]
	@Id int,
	@EmpresaId int,
	@Nombre nvarchar(max),
	@Descripcion text,
	@FechaApertura datetime,
	@FechaCierre datetime,
	@Activo int
AS
BEGIN
	BEGIN TRAN;
	BEGIN TRY
		
		declare @exists int = 0;
		select @exists = ISNULL(count(*), 0) from cat_Proyectos where Nombre = @Nombre and EmpresaId = @EmpresaId and Id != @Id;

		if @exists > 0
		begin
			SELECT 1 AS ErrorNumber, 'Este registro ya ha sido dada de alta.' AS ErrorMessage, 1 AS ErrorLine, 0 AS LAST_ID;
		end
		else
		begin
			update dbo.cat_Proyectos set EmpresaId = @EmpresaId, Nombre = @Nombre, Descripcion=@Descripcion, FechaApertura=@FechaApertura, FechaCierre=@FechaCierre,
				Activo=@Activo, Actualizado=GETDATE()
			where Id = @Id;

			SELECT 0 AS ErrorNumber, 'Se Actualizo correctamente' AS ErrorMessage, 0 AS ErrorLine, @Id AS LAST_ID;
		end
	COMMIT;
	END TRY
	BEGIN CATCH
		ROLLBACK TRAN;
		 SELECT ERROR_NUMBER() AS ErrorNumber, ERROR_MESSAGE() AS ErrorMessage, ERROR_LINE() AS ErrorLine, 0 AS ID  
	END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[upd_TipoActivo]    Script Date: 22/05/2023 07:21:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[upd_TipoActivo]
	@Id int,
	@Nombre nvarchar(max),
	@Responsable nvarchar(max),
	@Descripcion text,
	@Activo int
AS
BEGIN
	BEGIN TRAN;
	BEGIN TRY
		
		declare @exists int = 0;
		select @exists = ISNULL(count(*), 0) from cat_TiposActivo where Nombre = @Nombre and Id != @Id;

		if @exists > 0
		begin
			SELECT 1 AS ErrorNumber, 'Este registro ya ha sido dada de alta.' AS ErrorMessage, 1 AS ErrorLine, 0 AS LAST_ID;
		end
		else
		begin
			update dbo.cat_TiposActivo set Nombre = @Nombre, Responsable=@Responsable, Descripcion=@Descripcion, Activo=@Activo, Actualizado=GETDATE()
			where Id = @Id;

			SELECT 0 AS ErrorNumber, 'Se Actualizo correctamente' AS ErrorMessage, 0 AS ErrorLine, @Id AS LAST_ID;
		end
	COMMIT;
	END TRY
	BEGIN CATCH
		ROLLBACK TRAN;
		 SELECT ERROR_NUMBER() AS ErrorNumber, ERROR_MESSAGE() AS ErrorMessage, ERROR_LINE() AS ErrorLine, 0 AS ID  
	END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[upd_TipoCobertura]    Script Date: 22/05/2023 07:21:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[upd_TipoCobertura]
	@Id int,
	@Nombre nvarchar(max),
	@Descripcion text,
	@Activo int
AS
BEGIN
	BEGIN TRAN;
	BEGIN TRY
		
		declare @exists int = 0;
		select @exists = ISNULL(count(*), 0) from cat_TiposCobertura where Nombre = @Nombre and Id != @Id;

		if @exists > 0
		begin
			SELECT 1 AS ErrorNumber, 'Este registro ya ha sido dada de alta.' AS ErrorMessage, 1 AS ErrorLine, 0 AS LAST_ID;
		end
		else
		begin
			update dbo.cat_TiposCobertura set Nombre = @Nombre, Descripcion=@Descripcion, Activo=@Activo, Actualizado=GETDATE()
			where Id = @Id;

			SELECT 0 AS ErrorNumber, 'Se Actualizo correctamente' AS ErrorMessage, 0 AS ErrorLine, @Id AS LAST_ID;
		end
	COMMIT;
	END TRY
	BEGIN CATCH
		ROLLBACK TRAN;
		 SELECT ERROR_NUMBER() AS ErrorNumber, ERROR_MESSAGE() AS ErrorMessage, ERROR_LINE() AS ErrorLine, 0 AS ID  
	END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[upd_TipoComision]    Script Date: 22/05/2023 07:21:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[upd_TipoComision]
	@Id int,
	@Nombre nvarchar(max),
	@Descripcion text,
	@Activo int
AS
BEGIN
	BEGIN TRAN;
	BEGIN TRY
		
		declare @exists int = 0;
		select @exists = ISNULL(count(*), 0) from cat_TiposComision where Nombre = @Nombre and Id != @Id;

		if @exists > 0
		begin
			SELECT 1 AS ErrorNumber, 'Este registro ya ha sido dada de alta.' AS ErrorMessage, 1 AS ErrorLine, 0 AS LAST_ID;
		end
		else
		begin
			update dbo.cat_TiposComision set Nombre = @Nombre, Descripcion=@Descripcion, Activo=@Activo, Actualizado=GETDATE()
			where Id = @Id;

			SELECT 0 AS ErrorNumber, 'Se Actualizo correctamente' AS ErrorMessage, 0 AS ErrorLine, @Id AS LAST_ID;
		end
	COMMIT;
	END TRY
	BEGIN CATCH
		ROLLBACK TRAN;
		 SELECT ERROR_NUMBER() AS ErrorNumber, ERROR_MESSAGE() AS ErrorMessage, ERROR_LINE() AS ErrorLine, 0 AS ID  
	END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[upd_TipoPersonaFiscal]    Script Date: 22/05/2023 07:21:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[upd_TipoPersonaFiscal]
	@Id int,
	@Nombre nvarchar(max),
	@Descripcion text,
	@Activo int
AS
BEGIN
	BEGIN TRAN;
	BEGIN TRY
		
		declare @exists int = 0;
		select @exists = ISNULL(count(*), 0) from cat_TiposPersonaFiscal where Nombre = @Nombre and Id != @Id;

		if @exists > 0
		begin
			SELECT 1 AS ErrorNumber, 'Este registro ya ha sido dada de alta.' AS ErrorMessage, 1 AS ErrorLine, 0 AS LAST_ID;
		end
		else
		begin
			update dbo.cat_TiposPersonaFiscal set Nombre = @Nombre, Descripcion=@Descripcion, Activo=@Activo, Actualizado=GETDATE()
			where Id = @Id;

			SELECT 0 AS ErrorNumber, 'Se Actualizo correctamente' AS ErrorMessage, 0 AS ErrorLine, @Id AS LAST_ID;
		end
	COMMIT;
	END TRY
	BEGIN CATCH
		ROLLBACK TRAN;
		 SELECT ERROR_NUMBER() AS ErrorNumber, ERROR_MESSAGE() AS ErrorMessage, ERROR_LINE() AS ErrorLine, 0 AS ID  
	END CATCH
END
GO
