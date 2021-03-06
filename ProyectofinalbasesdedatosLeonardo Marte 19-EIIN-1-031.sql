/* Nombre: Leonardo MArte Quezada, Matricula: 19-EIIN-1-031, Seccion 0541*/




USE [master]
GO
/****** Object:  Database [VidaLigth]    Script Date: 25/12/2020 10:33:40 ******/
CREATE DATABASE [VidaLigth]

USE [VidaLigth]
GO
/****** Object:  Table [dbo].[ClientesID]    Script Date: 25/12/2020 10:33:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClientesID](
	[ClientesID] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Telefono] [nchar](15) NULL,
	[Email] [varchar](50) NULL,
	[Direccion] [varchar](200) NULL,
	[ProductoId] [int] NULL,
 CONSTRAINT [PK_ClientesID] PRIMARY KEY CLUSTERED 
(
	[ClientesID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CompraID]    Script Date: 25/12/2020 10:33:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CompraID](
	[CompraID] [int] IDENTITY(1,1) NOT NULL,
	[ClienteId] [int] NULL,
	[Cantidad] [int] NULL,
	[Producto] [int] NULL,
	[Fecha] [char](20) NULL,
 CONSTRAINT [PK_CompraID] PRIMARY KEY CLUSTERED 
(
	[CompraID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmpleadosID]    Script Date: 25/12/2020 10:33:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmpleadosID](
	[EmpleadoId] [int] IDENTITY(1,1) NOT NULL,
	[NombreId] [varchar](50) NULL,
	[Cargo] [char](20) NULL,
	[Telefono] [char](15) NULL,
	[Sexo] [char](1) NULL,
	[Email] [varchar](50) NULL,
 CONSTRAINT [PK_EmpleadosID] PRIMARY KEY CLUSTERED 
(
	[EmpleadoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProdutosID]    Script Date: 25/12/2020 10:33:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProdutosID](
	[ProductoID] [int] IDENTITY(1,1) NOT NULL,
	[NombreId] [char](10) NULL,
	[Precio] [int] NULL,
	[ProveedorId] [int] NULL,
	[Cantidad] [int] NULL,
 CONSTRAINT [PK_ProdutosID] PRIMARY KEY CLUSTERED 
(
	[ProductoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProveedoresID]    Script Date: 25/12/2020 10:33:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProveedoresID](
	[ProveedoresID] [int] IDENTITY(1,1) NOT NULL,
	[NombreId] [char](20) NULL,
	[Telefono] [char](15) NULL,
	[Email] [varchar](70) NULL,
	[Direccion] [varchar](200) NULL,
 CONSTRAINT [PK_ProveedoresID] PRIMARY KEY CLUSTERED 
(
	[ProveedoresID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VentasID]    Script Date: 25/12/2020 10:33:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VentasID](
	[VentaId] [int] IDENTITY(1,1) NOT NULL,
	[Producto] [int] NULL,
	[Cantidad] [int] NULL,
	[Cliente] [int] NULL,
	[EmpleadoId] [int] NULL,
 CONSTRAINT [PK_ClenteID] PRIMARY KEY CLUSTERED 
(
	[VentaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ClientesID] ON 

INSERT [dbo].[ClientesID] ([ClientesID], [Nombre], [Telefono], [Email], [Direccion], [ProductoId]) VALUES (1, N'GYMPlus', N'809-235-3000   ', N'gymplus@gmail.com', N'C/porvenir 27, Los Alcarrizos', 3)
INSERT [dbo].[ClientesID] ([ClientesID], [Nombre], [Telefono], [Email], [Direccion], [ProductoId]) VALUES (2, N'P&GGym', N'820-353-2448   ', N'P&GGym@hotmail.com', N'C/ Mercedes 56, Zona Colonial', 5)
INSERT [dbo].[ClientesID] ([ClientesID], [Nombre], [Telefono], [Email], [Direccion], [ProductoId]) VALUES (3, N'Soniafith', N'809-456-1234   ', N'Sonia@fith.gmail.com', N'C/ Mexico 45, Herrera', 7)
INSERT [dbo].[ClientesID] ([ClientesID], [Nombre], [Telefono], [Email], [Direccion], [ProductoId]) VALUES (4, N'LeoGyM', N'809-678-9012   ', N'Leogym@gmail.com', N'C/ el peso 67, Boca Chica', 9)
INSERT [dbo].[ClientesID] ([ClientesID], [Nombre], [Telefono], [Email], [Direccion], [ProductoId]) VALUES (5, N'Famacias F&B', N'829-123-5678   ', N'FyB@hotmail.com', N'C/ Trinitaria 86, San Cristobal', 10)
INSERT [dbo].[ClientesID] ([ClientesID], [Nombre], [Telefono], [Email], [Direccion], [ProductoId]) VALUES (6, N'ColmadoElias', N'809-345-7891   ', N'Eliascolmado@hotmail.com', N'C/ Duarte 45, La Caleta', 2)
INSERT [dbo].[ClientesID] ([ClientesID], [Nombre], [Telefono], [Email], [Direccion], [ProductoId]) VALUES (7, N'TiendaMari', N'829-234-4567   ', N'marit@gmail.com', N'C/ prolongacion 27 356, los Mameyes', 4)
INSERT [dbo].[ClientesID] ([ClientesID], [Nombre], [Telefono], [Email], [Direccion], [ProductoId]) VALUES (8, N'GimnacioJose', N'809-456-2143   ', N'joseG@gmail.com', N'C/ El progreso 54, Los Frailes', 6)
INSERT [dbo].[ClientesID] ([ClientesID], [Nombre], [Telefono], [Email], [Direccion], [ProductoId]) VALUES (9, N'DPabloGym', N'849-678-7654   ', N'pablog@hotmail.com', N'C/ K 56, Los Monas', 8)
INSERT [dbo].[ClientesID] ([ClientesID], [Nombre], [Telefono], [Email], [Direccion], [ProductoId]) VALUES (10, N'TiendaCarol', N'809-789-2345   ', N'Carolt@gmail.com', N'C/ M 45, Los Molinos', 1)
SET IDENTITY_INSERT [dbo].[ClientesID] OFF
GO
SET IDENTITY_INSERT [dbo].[CompraID] ON 

INSERT [dbo].[CompraID] ([CompraID], [ClienteId], [Cantidad], [Producto], [Fecha]) VALUES (1, 3, 30, 5, N'21-10-2020          ')
INSERT [dbo].[CompraID] ([CompraID], [ClienteId], [Cantidad], [Producto], [Fecha]) VALUES (2, 5, 40, 1, N'13-7-2020           ')
INSERT [dbo].[CompraID] ([CompraID], [ClienteId], [Cantidad], [Producto], [Fecha]) VALUES (3, 8, 20, 3, N'17-3-2020           ')
INSERT [dbo].[CompraID] ([CompraID], [ClienteId], [Cantidad], [Producto], [Fecha]) VALUES (4, 1, 55, 7, N'2-6-2020            ')
INSERT [dbo].[CompraID] ([CompraID], [ClienteId], [Cantidad], [Producto], [Fecha]) VALUES (5, 2, 38, 4, N'24-11-2020          ')
INSERT [dbo].[CompraID] ([CompraID], [ClienteId], [Cantidad], [Producto], [Fecha]) VALUES (6, 9, 600, 1, N'19-9-2020           ')
INSERT [dbo].[CompraID] ([CompraID], [ClienteId], [Cantidad], [Producto], [Fecha]) VALUES (7, 4, 105, 2, N'21-8-2020           ')
INSERT [dbo].[CompraID] ([CompraID], [ClienteId], [Cantidad], [Producto], [Fecha]) VALUES (8, 6, 75, 6, N'28-10-2020          ')
INSERT [dbo].[CompraID] ([CompraID], [ClienteId], [Cantidad], [Producto], [Fecha]) VALUES (9, 7, 136, 8, N'13-2-2020           ')
INSERT [dbo].[CompraID] ([CompraID], [ClienteId], [Cantidad], [Producto], [Fecha]) VALUES (10, 10, 200, 9, N'15-11-2020          ')
SET IDENTITY_INSERT [dbo].[CompraID] OFF
GO
SET IDENTITY_INSERT [dbo].[EmpleadosID] ON 

INSERT [dbo].[EmpleadosID] ([EmpleadoId], [NombreId], [Cargo], [Telefono], [Sexo], [Email]) VALUES (1, N'Leonardo Almalzar', N'Vendedor            ', N'809-373-7304   ', N'H', N'Leonardo.A@VidaL.com')
INSERT [dbo].[EmpleadosID] ([EmpleadoId], [NombreId], [Cargo], [Telefono], [Sexo], [Email]) VALUES (2, N'Manuel Diaz', N'Coordinadora Compras', N'809-373-7341   ', N'M', N'Manuela.D@VidaL.com')
INSERT [dbo].[EmpleadosID] ([EmpleadoId], [NombreId], [Cargo], [Telefono], [Sexo], [Email]) VALUES (3, N'Jose Mejia', N'Chofer              ', N'809-456-2832   ', N'H', N'Jose.M@VidaL.com')
INSERT [dbo].[EmpleadosID] ([EmpleadoId], [NombreId], [Cargo], [Telefono], [Sexo], [Email]) VALUES (4, N'Miguel Ortiz', N'Coordinos de Ventas ', N'809-373-7367   ', N'H', N'Miguel.O@VidaL.com')
INSERT [dbo].[EmpleadosID] ([EmpleadoId], [NombreId], [Cargo], [Telefono], [Sexo], [Email]) VALUES (5, N'Laura Martinez', N'Auxiliar Compras    ', N'809-373-7319   ', N'M', N'Laura.M@VidaL.com')
INSERT [dbo].[EmpleadosID] ([EmpleadoId], [NombreId], [Cargo], [Telefono], [Sexo], [Email]) VALUES (6, N'Josefa Cruz', N'Analista de Datos   ', N'809-373-7341   ', N'M', N'Josefe.C@VidaL.com')
INSERT [dbo].[EmpleadosID] ([EmpleadoId], [NombreId], [Cargo], [Telefono], [Sexo], [Email]) VALUES (7, N'Javier Suriel', N'Coordinador Ventas  ', N'809-373-7367   ', N'H', N'Javier.S.VidaL.com')
INSERT [dbo].[EmpleadosID] ([EmpleadoId], [NombreId], [Cargo], [Telefono], [Sexo], [Email]) VALUES (8, N'Gissel Ortega', N'Coordinadora Ventas ', N'809-373-7397   ', N'M', N'Gissel.O@VidaL.com')
INSERT [dbo].[EmpleadosID] ([EmpleadoId], [NombreId], [Cargo], [Telefono], [Sexo], [Email]) VALUES (9, N'Vicente Felix', N'Nutricionista       ', N'809-373-7388   ', N'H', N'Vicente.F@VidaL.com')
INSERT [dbo].[EmpleadosID] ([EmpleadoId], [NombreId], [Cargo], [Telefono], [Sexo], [Email]) VALUES (10, N'Miguelina Celedonio', N'Nutricionista       ', N'809-373-7301   ', N'M', N'Miguelina.C@VidaL.com')
SET IDENTITY_INSERT [dbo].[EmpleadosID] OFF
GO
SET IDENTITY_INSERT [dbo].[ProdutosID] ON 

INSERT [dbo].[ProdutosID] ([ProductoID], [NombreId], [Precio], [ProveedorId], [Cantidad]) VALUES (1, N'Proteinas ', 1200, 1, 200)
INSERT [dbo].[ProdutosID] ([ProductoID], [NombreId], [Precio], [ProveedorId], [Cantidad]) VALUES (2, N'Protinas+ ', 1500, 1, 130)
INSERT [dbo].[ProdutosID] ([ProductoID], [NombreId], [Precio], [ProveedorId], [Cantidad]) VALUES (3, N'Creatina  ', 700, 3, 100)
INSERT [dbo].[ProdutosID] ([ProductoID], [NombreId], [Precio], [ProveedorId], [Cantidad]) VALUES (4, N'Glutamina ', 800, 2, 90)
INSERT [dbo].[ProdutosID] ([ProductoID], [NombreId], [Precio], [ProveedorId], [Cantidad]) VALUES (5, N'GlutaminaP', 1200, 4, 300)
INSERT [dbo].[ProdutosID] ([ProductoID], [NombreId], [Precio], [ProveedorId], [Cantidad]) VALUES (6, N'ComplejoB ', 1300, 7, 130)
INSERT [dbo].[ProdutosID] ([ProductoID], [NombreId], [Precio], [ProveedorId], [Cantidad]) VALUES (7, N'MVitaminas', 1400, 5, 80)
INSERT [dbo].[ProdutosID] ([ProductoID], [NombreId], [Precio], [ProveedorId], [Cantidad]) VALUES (8, N'CreatinasP', 1500, 6, 1700)
INSERT [dbo].[ProdutosID] ([ProductoID], [NombreId], [Precio], [ProveedorId], [Cantidad]) VALUES (9, N'ProteinasB', 1800, 7, 200)
INSERT [dbo].[ProdutosID] ([ProductoID], [NombreId], [Precio], [ProveedorId], [Cantidad]) VALUES (10, N'VitaminaC ', 90, 9, 400)
SET IDENTITY_INSERT [dbo].[ProdutosID] OFF
GO
SET IDENTITY_INSERT [dbo].[ProveedoresID] ON 

INSERT [dbo].[ProveedoresID] ([ProveedoresID], [NombreId], [Telefono], [Email], [Direccion]) VALUES (1, N'M&M                 ', N'809-523-7891   ', N'm&m@hotmailcom', N'C/ Cotorra 345, Haina')
INSERT [dbo].[ProveedoresID] ([ProveedoresID], [NombreId], [Telefono], [Email], [Direccion]) VALUES (2, N'GMC&T               ', N'890-567-4567   ', N'gmcyt@gmail.com', N'C/ los brazos 67, Los Tres Ojos')
INSERT [dbo].[ProveedoresID] ([ProveedoresID], [NombreId], [Telefono], [Email], [Direccion]) VALUES (3, N'Laboratorio B       ', N'809-789-3456   ', N'labratoriob@hotmailcom', N'C/ H 23, Herrera')
INSERT [dbo].[ProveedoresID] ([ProveedoresID], [NombreId], [Telefono], [Email], [Direccion]) VALUES (4, N'M&O Laboratorios    ', N'809-456-9012   ', N'laboratoriosmyo@gmail.com', N'C/ Por venir 23, Boca Chica')
INSERT [dbo].[ProveedoresID] ([ProveedoresID], [NombreId], [Telefono], [Email], [Direccion]) VALUES (5, N'HJ Laboratorios     ', N'809-345-7845   ', N'Laboratorios@HJ.com', N'C/ K 576, Los Minas')
INSERT [dbo].[ProveedoresID] ([ProveedoresID], [NombreId], [Telefono], [Email], [Direccion]) VALUES (6, N'Laboratorio G&P     ', N'809-678-2345   ', N'G&P@gmail.com', N'C/ h 35, Los Prados')
INSERT [dbo].[ProveedoresID] ([ProveedoresID], [NombreId], [Telefono], [Email], [Direccion]) VALUES (7, N'Manuel Lab.         ', N'829-654-0987   ', N'Manuellab@gmail.com', N'C/ F 46, San Pedro')
INSERT [dbo].[ProveedoresID] ([ProveedoresID], [NombreId], [Telefono], [Email], [Direccion]) VALUES (8, N'JGH&T               ', N'849-678-5634   ', N'jghyt@hotmail.com', N'C/ M 67, Los Mameyes')
INSERT [dbo].[ProveedoresID] ([ProveedoresID], [NombreId], [Telefono], [Email], [Direccion]) VALUES (9, N'M&G                 ', N'809-890-1234   ', N'myg@hotmail.com', N'C/ F90, Los Frailes')
INSERT [dbo].[ProveedoresID] ([ProveedoresID], [NombreId], [Telefono], [Email], [Direccion]) VALUES (10, N'Miguel Laboratorios ', N'809-456-3456   ', N'miguellab@gmail.com', N'C/ M 78, San Isidro')
SET IDENTITY_INSERT [dbo].[ProveedoresID] OFF
GO
SET IDENTITY_INSERT [dbo].[VentasID] ON 

INSERT [dbo].[VentasID] ([VentaId], [Producto], [Cantidad], [Cliente], [EmpleadoId]) VALUES (1, 9, 200, 1, 1)
INSERT [dbo].[VentasID] ([VentaId], [Producto], [Cantidad], [Cliente], [EmpleadoId]) VALUES (2, 3, 30, 3, 4)
INSERT [dbo].[VentasID] ([VentaId], [Producto], [Cantidad], [Cliente], [EmpleadoId]) VALUES (3, 4, 45, 5, 7)
INSERT [dbo].[VentasID] ([VentaId], [Producto], [Cantidad], [Cliente], [EmpleadoId]) VALUES (4, 6, 150, 4, 8)
INSERT [dbo].[VentasID] ([VentaId], [Producto], [Cantidad], [Cliente], [EmpleadoId]) VALUES (5, 8, 200, 8, 8)
INSERT [dbo].[VentasID] ([VentaId], [Producto], [Cantidad], [Cliente], [EmpleadoId]) VALUES (6, 1, 180, 2, 4)
INSERT [dbo].[VentasID] ([VentaId], [Producto], [Cantidad], [Cliente], [EmpleadoId]) VALUES (7, 8, 90, 9, 1)
INSERT [dbo].[VentasID] ([VentaId], [Producto], [Cantidad], [Cliente], [EmpleadoId]) VALUES (8, 7, 100, 10, 7)
INSERT [dbo].[VentasID] ([VentaId], [Producto], [Cantidad], [Cliente], [EmpleadoId]) VALUES (9, 5, 250, 6, 8)
INSERT [dbo].[VentasID] ([VentaId], [Producto], [Cantidad], [Cliente], [EmpleadoId]) VALUES (10, 2, 85, 7, 1)
INSERT [dbo].[VentasID] ([VentaId], [Producto], [Cantidad], [Cliente], [EmpleadoId]) VALUES (11, 7, 85, 7, 7)
INSERT [dbo].[VentasID] ([VentaId], [Producto], [Cantidad], [Cliente], [EmpleadoId]) VALUES (12, 8, 30, 5, 4)
SET IDENTITY_INSERT [dbo].[VentasID] OFF
GO
ALTER TABLE [dbo].[CompraID]  WITH CHECK ADD  CONSTRAINT [FK_CompraID_ProdutosID] FOREIGN KEY([Producto])
REFERENCES [dbo].[ProdutosID] ([ProductoID])
GO
ALTER TABLE [dbo].[CompraID] CHECK CONSTRAINT [FK_CompraID_ProdutosID]
GO
ALTER TABLE [dbo].[ProdutosID]  WITH CHECK ADD  CONSTRAINT [FK_ProdutosID_ProveedoresID] FOREIGN KEY([ProveedorId])
REFERENCES [dbo].[ProveedoresID] ([ProveedoresID])
GO
ALTER TABLE [dbo].[ProdutosID] CHECK CONSTRAINT [FK_ProdutosID_ProveedoresID]
GO
ALTER TABLE [dbo].[VentasID]  WITH CHECK ADD  CONSTRAINT [FK_VentasID_ClientesID] FOREIGN KEY([Cliente])
REFERENCES [dbo].[ClientesID] ([ClientesID])
GO
ALTER TABLE [dbo].[VentasID] CHECK CONSTRAINT [FK_VentasID_ClientesID]
GO
ALTER TABLE [dbo].[VentasID]  WITH CHECK ADD  CONSTRAINT [FK_VentasID_EmpleadosID] FOREIGN KEY([EmpleadoId])
REFERENCES [dbo].[EmpleadosID] ([EmpleadoId])
GO
ALTER TABLE [dbo].[VentasID] CHECK CONSTRAINT [FK_VentasID_EmpleadosID]
GO
ALTER TABLE [dbo].[VentasID]  WITH CHECK ADD  CONSTRAINT [FK_VentasID_ProdutosID] FOREIGN KEY([Producto])
REFERENCES [dbo].[ProdutosID] ([ProductoID])
GO
ALTER TABLE [dbo].[VentasID] CHECK CONSTRAINT [FK_VentasID_ProdutosID]
GO
USE [master]
GO
ALTER DATABASE [VidaLigth] SET  READ_WRITE 
GO
