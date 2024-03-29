USE [DBSystemVentas]
GO
/****** Object:  Table [dbo].[tblCliente]    Script Date: 30/07/2015 17:36:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblCliente](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](200) NULL,
	[Domicilio] [varchar](200) NULL,
	[Telefono] [varchar](100) NULL,
	[Email] [varchar](100) NULL,
 CONSTRAINT [PK_tblCliente] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblColor]    Script Date: 30/07/2015 17:36:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblColor](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](250) NULL,
 CONSTRAINT [PK_tblColor] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblCompra]    Script Date: 30/07/2015 17:36:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblCompra](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FechaCompra] [date] NULL,
	[FechaAlta] [datetime] NULL,
	[Descripcion] [varchar](300) NULL,
	[Monto] [decimal](18, 2) NULL,
	[ProveedorId] [int] NULL,
	[NumeroTicket] [varchar](50) NULL,
 CONSTRAINT [PK_tblCompra] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblDetalleVenta]    Script Date: 30/07/2015 17:36:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblDetalleVenta](
	[ProductoId] [int] NOT NULL,
	[CantidadUnidades] [int] NOT NULL,
	[Descuento] [decimal](18, 2) NULL,
	[PrecioCosto] [decimal](18, 2) NULL,
	[PrecioVendido] [decimal](18, 2) NOT NULL,
	[VentaId] [int] NOT NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblProducto]    Script Date: 30/07/2015 17:36:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblProducto](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Codigo] [int] NULL,
	[Descripcion] [varchar](500) NULL,
	[TipoId] [int] NULL,
	[ColorId] [int] NULL,
	[TalleId] [int] NULL,
	[PrecioCosto] [decimal](18, 2) NULL,
	[PorcGanancia] [decimal](18, 2) NULL,
	[PrecioVenta] [decimal](18, 2) NULL,
	[StockInicial] [int] NULL,
	[StockActual] [int] NULL,
	[PorcDescuento] [decimal](18, 2) NULL,
	[CompraId] [int] NULL,
 CONSTRAINT [PK_tblProducto] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblProveedor]    Script Date: 30/07/2015 17:36:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblProveedor](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](250) NULL,
	[Domicilio] [nvarchar](300) NULL,
	[Tel] [nvarchar](250) NULL,
	[Email] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblProveedor] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblTalle]    Script Date: 30/07/2015 17:36:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblTalle](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](250) NULL,
 CONSTRAINT [PK_tblTalle] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblTipo]    Script Date: 30/07/2015 17:36:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblTipo](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](200) NOT NULL,
 CONSTRAINT [PK_tblTipo] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblUser]    Script Date: 30/07/2015 17:36:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblUser](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](100) NULL,
	[PerfilId] [int] NULL,
	[password] [varchar](150) NULL,
 CONSTRAINT [PK_tblUser] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblVenta]    Script Date: 30/07/2015 17:36:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblVenta](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FechaVenta] [date] NOT NULL,
	[FechaCreado] [datetime] NOT NULL,
	[ClienteId] [int] NOT NULL,
	[MontoTotal] [decimal](18, 2) NOT NULL,
	[UserId] [int] NOT NULL,
	[FechaBorrado] [datetime] NULL,
 CONSTRAINT [PK_tblVenta] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[tblCliente] ON 

INSERT [dbo].[tblCliente] ([Id], [Nombre], [Domicilio], [Telefono], [Email]) VALUES (1, N'Juan Ramos', N'SMO', N'98764521', N'juan34@gmail.com')
INSERT [dbo].[tblCliente] ([Id], [Nombre], [Domicilio], [Telefono], [Email]) VALUES (4, N'Brenda Posadas', N'SRC', N'24365647', N'posadas@gmail.com')
INSERT [dbo].[tblCliente] ([Id], [Nombre], [Domicilio], [Telefono], [Email]) VALUES (6, N'Ana Lopez', N'Cucuyagua', N'97683024', N'analopez@hotmail.com')
SET IDENTITY_INSERT [dbo].[tblCliente] OFF
SET IDENTITY_INSERT [dbo].[tblColor] ON 

INSERT [dbo].[tblColor] ([Id], [Descripcion]) VALUES (1, N'Azul')
INSERT [dbo].[tblColor] ([Id], [Descripcion]) VALUES (2, N'Rojo')
INSERT [dbo].[tblColor] ([Id], [Descripcion]) VALUES (3, N'Amarillo')
INSERT [dbo].[tblColor] ([Id], [Descripcion]) VALUES (4, N'Verde')
INSERT [dbo].[tblColor] ([Id], [Descripcion]) VALUES (5, N'Marron')
INSERT [dbo].[tblColor] ([Id], [Descripcion]) VALUES (6, N'blanco')
SET IDENTITY_INSERT [dbo].[tblColor] OFF
SET IDENTITY_INSERT [dbo].[tblCompra] ON 

INSERT [dbo].[tblCompra] ([Id], [FechaCompra], [FechaAlta], [Descripcion], [Monto], [ProveedorId], [NumeroTicket]) VALUES (2, CAST(N'2013-12-20' AS Date), CAST(N'2014-01-04 21:15:27.707' AS DateTime), N'nueva compra otoñal 2', CAST(1200.00 AS Decimal(18, 2)), 5, N'')
INSERT [dbo].[tblCompra] ([Id], [FechaCompra], [FechaAlta], [Descripcion], [Monto], [ProveedorId], [NumeroTicket]) VALUES (3, CAST(N'2014-06-05' AS Date), CAST(N'2014-01-08 21:25:55.960' AS DateTime), N'otra compra mas 23', CAST(5000.23 AS Decimal(18, 2)), 1, N'')
INSERT [dbo].[tblCompra] ([Id], [FechaCompra], [FechaAlta], [Descripcion], [Monto], [ProveedorId], [NumeroTicket]) VALUES (5, CAST(N'2014-01-01' AS Date), CAST(N'2014-01-08 21:30:59.337' AS DateTime), N'Compra otoño 2013', CAST(35000.34 AS Decimal(18, 2)), 3, N'')
SET IDENTITY_INSERT [dbo].[tblCompra] OFF
SET IDENTITY_INSERT [dbo].[tblDetalleVenta] ON 

INSERT [dbo].[tblDetalleVenta] ([ProductoId], [CantidadUnidades], [Descuento], [PrecioCosto], [PrecioVendido], [VentaId], [Id]) VALUES (6, 2, CAST(0.00 AS Decimal(18, 2)), CAST(300.00 AS Decimal(18, 2)), CAST(600.00 AS Decimal(18, 2)), 6, 5)
SET IDENTITY_INSERT [dbo].[tblDetalleVenta] OFF
SET IDENTITY_INSERT [dbo].[tblProducto] ON 

INSERT [dbo].[tblProducto] ([Id], [Codigo], [Descripcion], [TipoId], [ColorId], [TalleId], [PrecioCosto], [PorcGanancia], [PrecioVenta], [StockInicial], [StockActual], [PorcDescuento], [CompraId]) VALUES (2, 2, N'pantalon', 1, 6, 2, CAST(345.00 AS Decimal(18, 2)), CAST(45.00 AS Decimal(18, 2)), CAST(517.50 AS Decimal(18, 2)), 0, 5, CAST(0.00 AS Decimal(18, 2)), 2)
INSERT [dbo].[tblProducto] ([Id], [Codigo], [Descripcion], [TipoId], [ColorId], [TalleId], [PrecioCosto], [PorcGanancia], [PrecioVenta], [StockInicial], [StockActual], [PorcDescuento], [CompraId]) VALUES (6, 3, N'Pantalon ', 1, 1, 3, CAST(300.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), CAST(600.00 AS Decimal(18, 2)), 5, 3, CAST(0.00 AS Decimal(18, 2)), 5)
INSERT [dbo].[tblProducto] ([Id], [Codigo], [Descripcion], [TipoId], [ColorId], [TalleId], [PrecioCosto], [PorcGanancia], [PrecioVenta], [StockInicial], [StockActual], [PorcDescuento], [CompraId]) VALUES (7, 4, N'Short', 1, 6, 2, CAST(70.00 AS Decimal(18, 2)), CAST(150.00 AS Decimal(18, 2)), CAST(175.00 AS Decimal(18, 2)), 10, 10, CAST(0.00 AS Decimal(18, 2)), 5)
INSERT [dbo].[tblProducto] ([Id], [Codigo], [Descripcion], [TipoId], [ColorId], [TalleId], [PrecioCosto], [PorcGanancia], [PrecioVenta], [StockInicial], [StockActual], [PorcDescuento], [CompraId]) VALUES (8, 5, N'Remera Estampada manga larga', 1, 4, 4, CAST(90.00 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), CAST(135.00 AS Decimal(18, 2)), 8, 8, CAST(0.00 AS Decimal(18, 2)), 5)
INSERT [dbo].[tblProducto] ([Id], [Codigo], [Descripcion], [TipoId], [ColorId], [TalleId], [PrecioCosto], [PorcGanancia], [PrecioVenta], [StockInicial], [StockActual], [PorcDescuento], [CompraId]) VALUES (9, 12, N'camisa leñadora', 1, 4, 4, CAST(345.00 AS Decimal(18, 2)), CAST(60.00 AS Decimal(18, 2)), CAST(552.00 AS Decimal(18, 2)), 5, 5, CAST(0.00 AS Decimal(18, 2)), 5)
SET IDENTITY_INSERT [dbo].[tblProducto] OFF
SET IDENTITY_INSERT [dbo].[tblProveedor] ON 

INSERT [dbo].[tblProveedor] ([Id], [Nombre], [Domicilio], [Tel], [Email]) VALUES (1, N'Brandely', NULL, NULL, NULL)
INSERT [dbo].[tblProveedor] ([Id], [Nombre], [Domicilio], [Tel], [Email]) VALUES (2, N'ser', NULL, NULL, NULL)
INSERT [dbo].[tblProveedor] ([Id], [Nombre], [Domicilio], [Tel], [Email]) VALUES (3, N'Tavernity', NULL, NULL, NULL)
INSERT [dbo].[tblProveedor] ([Id], [Nombre], [Domicilio], [Tel], [Email]) VALUES (4, N'Oxido', NULL, NULL, NULL)
INSERT [dbo].[tblProveedor] ([Id], [Nombre], [Domicilio], [Tel], [Email]) VALUES (5, N'La Salada', NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[tblProveedor] OFF
SET IDENTITY_INSERT [dbo].[tblTalle] ON 

INSERT [dbo].[tblTalle] ([Id], [Descripcion]) VALUES (1, N'Extra Small')
INSERT [dbo].[tblTalle] ([Id], [Descripcion]) VALUES (2, N'Small')
INSERT [dbo].[tblTalle] ([Id], [Descripcion]) VALUES (3, N'Medium')
INSERT [dbo].[tblTalle] ([Id], [Descripcion]) VALUES (4, N'Large')
INSERT [dbo].[tblTalle] ([Id], [Descripcion]) VALUES (5, N'Extra Large')
SET IDENTITY_INSERT [dbo].[tblTalle] OFF
SET IDENTITY_INSERT [dbo].[tblTipo] ON 

INSERT [dbo].[tblTipo] ([Id], [Descripcion]) VALUES (1, N'Prendas')
INSERT [dbo].[tblTipo] ([Id], [Descripcion]) VALUES (2, N'Accesorios')
INSERT [dbo].[tblTipo] ([Id], [Descripcion]) VALUES (3, N'Calzados')
SET IDENTITY_INSERT [dbo].[tblTipo] OFF
SET IDENTITY_INSERT [dbo].[tblUser] ON 

INSERT [dbo].[tblUser] ([Id], [UserName], [PerfilId], [password]) VALUES (1, N'Admin', NULL, N'123')
INSERT [dbo].[tblUser] ([Id], [UserName], [PerfilId], [password]) VALUES (2, N'Olman', NULL, N'ariel')
SET IDENTITY_INSERT [dbo].[tblUser] OFF
SET IDENTITY_INSERT [dbo].[tblVenta] ON 

INSERT [dbo].[tblVenta] ([Id], [FechaVenta], [FechaCreado], [ClienteId], [MontoTotal], [UserId], [FechaBorrado]) VALUES (3, CAST(N'2015-07-22' AS Date), CAST(N'2015-05-22 20:46:16.707' AS DateTime), 1, CAST(0.00 AS Decimal(18, 2)), 1, CAST(N'2015-07-29 20:44:43.940' AS DateTime))
INSERT [dbo].[tblVenta] ([Id], [FechaVenta], [FechaCreado], [ClienteId], [MontoTotal], [UserId], [FechaBorrado]) VALUES (4, CAST(N'2015-07-26' AS Date), CAST(N'2015-05-26 15:31:10.863' AS DateTime), 4, CAST(0.00 AS Decimal(18, 2)), 1, CAST(N'2015-06-13 22:41:01.477' AS DateTime))
INSERT [dbo].[tblVenta] ([Id], [FechaVenta], [FechaCreado], [ClienteId], [MontoTotal], [UserId], [FechaBorrado]) VALUES (5, CAST(N'2015-07-26' AS Date), CAST(N'2015-05-26 15:32:31.613' AS DateTime), 6, CAST(0.00 AS Decimal(18, 2)), 1, CAST(N'2015-07-29 20:44:05.210' AS DateTime))
INSERT [dbo].[tblVenta] ([Id], [FechaVenta], [FechaCreado], [ClienteId], [MontoTotal], [UserId], [FechaBorrado]) VALUES (6, CAST(N'2015-07-20' AS Date), CAST(N'2015-07-29 20:42:54.050' AS DateTime), 1, CAST(0.00 AS Decimal(18, 2)), 1, NULL)
SET IDENTITY_INSERT [dbo].[tblVenta] OFF
ALTER TABLE [dbo].[tblCompra]  WITH CHECK ADD  CONSTRAINT [FK_tblCompra_tblProveedor] FOREIGN KEY([ProveedorId])
REFERENCES [dbo].[tblProveedor] ([Id])
GO
ALTER TABLE [dbo].[tblCompra] CHECK CONSTRAINT [FK_tblCompra_tblProveedor]
GO
ALTER TABLE [dbo].[tblDetalleVenta]  WITH CHECK ADD  CONSTRAINT [FK_tblDetalleVenta_tblProducto] FOREIGN KEY([ProductoId])
REFERENCES [dbo].[tblProducto] ([Id])
GO
ALTER TABLE [dbo].[tblDetalleVenta] CHECK CONSTRAINT [FK_tblDetalleVenta_tblProducto]
GO
ALTER TABLE [dbo].[tblDetalleVenta]  WITH CHECK ADD  CONSTRAINT [FK_tblDetalleVenta_tblVenta] FOREIGN KEY([VentaId])
REFERENCES [dbo].[tblVenta] ([Id])
GO
ALTER TABLE [dbo].[tblDetalleVenta] CHECK CONSTRAINT [FK_tblDetalleVenta_tblVenta]
GO
ALTER TABLE [dbo].[tblProducto]  WITH CHECK ADD  CONSTRAINT [FK_tblProducto_tblColor] FOREIGN KEY([ColorId])
REFERENCES [dbo].[tblColor] ([Id])
GO
ALTER TABLE [dbo].[tblProducto] CHECK CONSTRAINT [FK_tblProducto_tblColor]
GO
ALTER TABLE [dbo].[tblProducto]  WITH CHECK ADD  CONSTRAINT [FK_tblProducto_tblCompra] FOREIGN KEY([CompraId])
REFERENCES [dbo].[tblCompra] ([Id])
GO
ALTER TABLE [dbo].[tblProducto] CHECK CONSTRAINT [FK_tblProducto_tblCompra]
GO
ALTER TABLE [dbo].[tblProducto]  WITH CHECK ADD  CONSTRAINT [FK_tblProducto_tblTalle] FOREIGN KEY([TalleId])
REFERENCES [dbo].[tblTalle] ([Id])
GO
ALTER TABLE [dbo].[tblProducto] CHECK CONSTRAINT [FK_tblProducto_tblTalle]
GO
ALTER TABLE [dbo].[tblProducto]  WITH CHECK ADD  CONSTRAINT [FK_tblProducto_tblTipo] FOREIGN KEY([TipoId])
REFERENCES [dbo].[tblTipo] ([Id])
GO
ALTER TABLE [dbo].[tblProducto] CHECK CONSTRAINT [FK_tblProducto_tblTipo]
GO
ALTER TABLE [dbo].[tblVenta]  WITH CHECK ADD  CONSTRAINT [FK_tblVenta_tblCliente] FOREIGN KEY([ClienteId])
REFERENCES [dbo].[tblCliente] ([Id])
GO
ALTER TABLE [dbo].[tblVenta] CHECK CONSTRAINT [FK_tblVenta_tblCliente]
GO
ALTER TABLE [dbo].[tblVenta]  WITH CHECK ADD  CONSTRAINT [FK_tblVenta_tblUser] FOREIGN KEY([UserId])
REFERENCES [dbo].[tblUser] ([Id])
GO
ALTER TABLE [dbo].[tblVenta] CHECK CONSTRAINT [FK_tblVenta_tblUser]
GO
/****** Object:  StoredProcedure [dbo].[usp_AddProducto_GetTalles]    Script Date: 30/07/2015 17:36:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_AddProducto_GetTalles]
	
AS
BEGIN
	 select Id,Descripcion from tblTalle
END

GO
/****** Object:  StoredProcedure [dbo].[usp_AddProducto_GetTipoProductos]    Script Date: 30/07/2015 17:36:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_AddProducto_GetTipoProductos]
	
AS
BEGIN
	 select Id,Descripcion from tblTipo
END

GO
/****** Object:  StoredProcedure [dbo].[usp_AddProducto_Insertar]    Script Date: 30/07/2015 17:36:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_AddProducto_Insertar]
	@Codigo int, 
	@Descripcion varchar(1000), 
	@TipoId int, 
	@ColorDescripcion varchar(200), 
	@TalleId int, 
	@PrecioCosto decimal(18,2), 
	@PorcGanancia decimal(18,2), 
	@PrecioVenta decimal(18,2), 
	@StockInicial decimal(18,2), 
	@StockActual decimal(18,2), 
	@PorcDescuento decimal(18,2), 
	@CompraId int
AS
BEGIN
	
	Declare @ColorId int=0
	
	select @ColorId= Id from tblColor where Descripcion=@ColorDescripcion
	if (@ColorId=0)
	 begin
	     insert into tblColor (Descripcion)
	     values 
	      (@ColorDescripcion)
	      
	      set @ColorId=@@IDENTITY
	      
	 end
	
	
	
	
	insert into 
	   tblProducto 
	  (
	    Codigo, 
	    Descripcion, 
	    TipoId, 
	    ColorId, 
	    TalleId, 
	    PrecioCosto, 
	    PorcGanancia, 
	    PrecioVenta, 
	    StockInicial, 
	    StockActual, 
	    PorcDescuento, 
	    CompraId)
	  values
	  (
	    @Codigo, 
	    @Descripcion, 
	    @TipoId, 
	    @ColorId, 
	    @TalleId, 
	    @PrecioCosto, 
	    @PorcGanancia, 
	    @PrecioVenta, 
	    @StockActual, 
	    @StockActual, 
	    @PorcDescuento, 
	    @CompraId
	    
	  )
	  
	  
	  select @@IDENTITY as ProductoId
	
END

GO
/****** Object:  StoredProcedure [dbo].[usp_AddVenta_DisminuirStock]    Script Date: 30/07/2015 17:36:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_AddVenta_DisminuirStock]
	@ProductoId int,
	@CantidadUnidades int
AS
BEGIN
	update tblProducto set StockActual=StockActual-@CantidadUnidades where Id=@ProductoId
	
	select @@ROWCOUNT as CantidadAfectada
	
END

GO
/****** Object:  StoredProcedure [dbo].[usp_AddVenta_Insertar]    Script Date: 30/07/2015 17:36:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_AddVenta_Insertar]
	@FechaVenta datetime,
	@ClienteId Int,
	@MontoTotal decimal(18,2),
	@UserId int
AS
BEGIN
	
	insert into tblVenta (FechaVenta, FechaCreado, ClienteId, MontoTotal, UserId)
	values (@FechaVenta,GETDATE(),@ClienteId,@MontoTotal,@UserId)
	
	select @@IDENTITY as VentaId
END

GO
/****** Object:  StoredProcedure [dbo].[usp_AddVenta_InsertarDetalle]    Script Date: 30/07/2015 17:36:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_AddVenta_InsertarDetalle]
	@ProductoId int,
	@CantidadUnidades int,
	@Descuento decimal(18,2),
	@PrecioCosto decimal(18,2),
	@PrecioVendido decimal(18,2),
	@VentaId int
AS
BEGIN
	
	insert into tblDetalleVenta (ProductoId, CantidadUnidades, Descuento, PrecioCosto, PrecioVendido, VentaId)
	values (@ProductoId,@CantidadUnidades,@Descuento,@PrecioCosto,@PrecioVendido,@VentaId)
	
	select @@IDENTITY as DetalleVentaId
	
END

GO
/****** Object:  StoredProcedure [dbo].[usp_Autocomplete_GetClientes]    Script Date: 30/07/2015 17:36:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[usp_Autocomplete_GetClientes]
	@Query varchar(100)
AS
BEGIN
	
	select Id, Nombre as Descripcion from tblCliente where Nombre like '%'+@Query+'%'
END

GO
/****** Object:  StoredProcedure [dbo].[usp_Autocomplete_GetColores]    Script Date: 30/07/2015 17:36:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[usp_Autocomplete_GetColores]
	@Query varchar(100)
AS
BEGIN
	
	select Id, Descripcion from tblColor where Descripcion like '%'+@Query+'%'
END

GO
/****** Object:  StoredProcedure [dbo].[usp_Autocomplete_GetCompras]    Script Date: 30/07/2015 17:36:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--usp_Autocomplete_GetCompras ''

create PROCEDURE [dbo].[usp_Autocomplete_GetCompras]
	@Query varchar(100)
AS
BEGIN
	
	select 
	    tblCompra.Id, 
	    Descripcion as Descripcion,
	    Monto,
	    FechaCompra,
	    tblProveedor.Nombre as ProveedorDescripcion 
	from tblCompra 
	Inner join tblProveedor on tblCompra.ProveedorId=tblProveedor.Id
	
	where Descripcion like '%'+@Query+'%'
END

GO
/****** Object:  StoredProcedure [dbo].[usp_Autocomplete_GetProductos]    Script Date: 30/07/2015 17:36:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Autocomplete_GetProductos]
	@Query varchar(100)
AS
BEGIN
	
	select 
	    P.Id,
	    P.StockActual, 
	    P.Descripcion + ' - '+ C.Descripcion +' - '+ T.Descripcion + ' - $ ' + CONVERT(varchar,P.PrecioVenta) + ' - (cod:' + CONVERT(varchar, P.Codigo)+')'   as Descripcion 
	from 
	    tblProducto P
	inner join tblTalle T on P.TalleId=T.Id   
	inner join tblColor C on P.ColorId=C.Id
	where 
	    P.Descripcion like '%'+@Query+'%'
	    or 
	   CONVERT(varchar, P.Codigo) like '%'+@Query+'%'
END

GO
/****** Object:  StoredProcedure [dbo].[usp_Autocomplete_GetProveedores]    Script Date: 30/07/2015 17:36:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Autocomplete_GetProveedores]
	@Query varchar(100)
AS
BEGIN
	
	select Id, Nombre as Descripcion from tblProveedor where Nombre like '%'+@Query+'%'
END

GO
/****** Object:  StoredProcedure [dbo].[usp_EditCliente_Actualizar]    Script Date: 30/07/2015 17:36:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[usp_EditCliente_Actualizar]
(
   @Id int,
   @Nombre varchar(200),
   @Domicilio varchar(200),
   @Telefono varchar(200),
   @Email varchar(200)
)
AS
BEGIN
	
	update tblCliente set Nombre=@Nombre,Domicilio=@Domicilio,Telefono=@Telefono,Email=@Email where Id=@Id
	
	select @@ROWCOUNT as CantidadAfectada
end

GO
/****** Object:  StoredProcedure [dbo].[usp_EditCliente_GetCliente]    Script Date: 30/07/2015 17:36:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_EditCliente_GetCliente]
	@Id int
AS
BEGIN
	
	Select Id,Nombre,Domicilio,Telefono,Email from tblCliente where Id=@Id
	
	
END

GO
/****** Object:  StoredProcedure [dbo].[usp_EditCliente_Insertar]    Script Date: 30/07/2015 17:36:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_EditCliente_Insertar]
(
   @Nombre varchar(200),
   @Domicilio varchar(200),
   @Telefono varchar(200),
   @Email varchar(200)
)
AS
BEGIN
	
	insert into tblCliente (Nombre,Domicilio,Telefono,Email) values (@Nombre,@Domicilio,@Telefono,@Email)
	
	select @@IDENTITY
END

GO
/****** Object:  StoredProcedure [dbo].[usp_EditCompra_Actualizar]    Script Date: 30/07/2015 17:36:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_EditCompra_Actualizar]
    @Id int,
	@Descripcion varchar(300),
	@FechaCompra date,
	@Proveedor varchar(300),
	@NumerTicket varchar(50),
	@Monto decimal(18,2)
AS
BEGIN
	declare @ProveedorId int=0
	
	select @ProveedorId = Id from tblProveedor where Nombre=@Proveedor
	
	if (@ProveedorId=0)
	begin
	     insert into tblProveedor (Nombre) values (@Proveedor)
	     set @ProveedorId= @@IDENTITY
	end
	
update tblCompra set Descripcion=@Descripcion,FechaCompra=@FechaCompra,Monto=@Monto,ProveedorId=@ProveedorId,NumeroTicket=@NumerTicket
  where Id=@Id
  
  select @@ROWCOUNT as CantidadAfectada	
	
	
END

GO
/****** Object:  StoredProcedure [dbo].[usp_EditCompra_GetCompra]    Script Date: 30/07/2015 17:36:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_EditCompra_GetCompra]
    @Id int
	
AS
BEGIN
	
	select 
	     tblCompra.Id,CONVERT(varchar, tblCompra.FechaCompra,103) as FechaCompra, tblCompra.FechaAlta, tblCompra.Descripcion, tblCompra.Monto, 
	     tblCompra.ProveedorId, tblCompra.NumeroTicket ,tblProveedor.Nombre as ProveedorDescripcion
	from 
	   tblCompra 
	inner join tblProveedor on  tblCompra.ProveedorId=tblProveedor.Id
	
	
	 where tblCompra.Id=@Id
	
	
END

GO
/****** Object:  StoredProcedure [dbo].[usp_EditCompra_Insertar]    Script Date: 30/07/2015 17:36:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_EditCompra_Insertar]
	@Descripcion varchar(300),
	@FechaCompra date,
	@Proveedor varchar(300),
	@NumerTicket varchar(50),
	@Monto decimal(18,2)
AS
BEGIN
	declare @ProveedorId int=0
	
	select @ProveedorId = Id from tblProveedor where Nombre=@Proveedor
	
	if (@ProveedorId=0)
	begin
	     insert into tblProveedor (Nombre) values (@Proveedor)
	     set @ProveedorId= @@IDENTITY
	end
	
	
	
	insert into tblCompra (Descripcion,FechaCompra,NumeroTicket,ProveedorId,Monto,FechaAlta)
	values (@Descripcion,@FechaCompra,@NumerTicket,@ProveedorId,@Monto,GETDATE())
	
	select @@IDENTITY as CompraId
	
END

GO
/****** Object:  StoredProcedure [dbo].[usp_EditDetalleVenta_EliminarDetalleVenta]    Script Date: 30/07/2015 17:36:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_EditDetalleVenta_EliminarDetalleVenta]
	@DetalleVentaId int
AS
BEGIN
	
	Declare @ProductoId int=0
	declare @Cantidad int=0
begin transaction	
begin try
	
	select @ProductoId = ProductoId,@Cantidad= CantidadUnidades from tblDetalleVenta where Id=@DetalleVentaId
	
	if(@ProductoId>0)
	begin
	    delete from tblDetalleVenta where Id=@DetalleVentaId
	    
	    update tblProducto set StockActual=StockActual+@Cantidad where Id=@ProductoId
	    
	end
	commit transaction
	select @ProductoId as ProductoId
end try
begin catch
  rollback transaction
  select 0 as ProductoId
end catch	
	
END

GO
/****** Object:  StoredProcedure [dbo].[usp_EditDetalleVenta_GetDetalleVenta]    Script Date: 30/07/2015 17:36:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_EditDetalleVenta_GetDetalleVenta]
	@VentaId int
AS
BEGIN
	
	select
	   d.Id,
	   P.Codigo,
	   P.Descripcion,
	   D.CantidadUnidades as Cantidad,
	   D.PrecioVendido as PrecioUnitario,
	   D.CantidadUnidades*D.PrecioVendido as Subtotal
	   from tblDetalleVenta D
	   inner join tblProducto P on D.ProductoId=P.Id
	   where VentaId=@VentaId
	   
	   
END

GO
/****** Object:  StoredProcedure [dbo].[usp_EditDetalleVenta_GetVenta]    Script Date: 30/07/2015 17:36:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_EditDetalleVenta_GetVenta]
	@VentaId int
AS
BEGIN
	
	Select
	    tblVenta.Id,
	    tblVenta.FechaVenta,
	    MontoTotal,
	    tblCliente.Nombre
	  From tblVenta  
	  inner join tblCliente on tblVenta.ClienteId=tblCliente.Id
	
	where tblVenta.Id=@VentaId
END

GO
/****** Object:  StoredProcedure [dbo].[usp_EditProducto_Actualizar]    Script Date: 30/07/2015 17:36:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[usp_EditProducto_Actualizar]
	@Id int,
	@Codigo int, 
	@Descripcion varchar(1000), 
	@TipoId int, 
	@ColorDescripcion varchar(200), 
	@TalleId int, 
	@PrecioCosto decimal(18,2), 
	@PorcGanancia decimal(18,2), 
	@PrecioVenta decimal(18,2), 
	@StockInicial decimal(18,2), 
	@StockActual decimal(18,2), 
	@PorcDescuento decimal(18,2), 
	@CompraId int
AS
BEGIN
	
	Declare @ColorId int=0
	
	select @ColorId= Id from tblColor where Descripcion=@ColorDescripcion
	if (@ColorId=0)
	 begin
	     insert into tblColor (Descripcion)
	     values 
	      (@ColorDescripcion)
	      
	      set @ColorId=@@IDENTITY
	      
	 end
	
	
	
	
	update tblproducto 
	   set Codigo=@Codigo, 
	    Descripcion=@Descripcion, 
	    TipoId=@TipoId, 
	    ColorId=@ColorId, 
	    TalleId=@TalleId, 
	    PrecioCosto=@PrecioCosto, 
	    PorcGanancia=@PorcGanancia, 
	    PrecioVenta=@PrecioVenta, 
	    
	    StockActual=@StockActual, 
	    PorcDescuento=@PorcDescuento, 
	    CompraId=@CompraId
	    
	    where Id=@id
	  
	  
	  select @@RowCount as CantidadAfectada
	
END

GO
/****** Object:  StoredProcedure [dbo].[usp_EditProducto_GetProdcuto]    Script Date: 30/07/2015 17:36:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_EditProducto_GetProdcuto] 
	@Id int
AS
BEGIN
	SELECT     dbo.tblProducto.Id, dbo.tblProducto.Codigo, dbo.tblProducto.Descripcion, dbo.tblProducto.TipoId, dbo.tblProducto.ColorId, dbo.tblProducto.TalleId, 
                      dbo.tblProducto.PrecioCosto, dbo.tblProducto.PorcGanancia, dbo.tblProducto.PrecioVenta, dbo.tblProducto.StockActual, dbo.tblProducto.PorcDescuento, 
                      dbo.tblProducto.CompraId, dbo.tblColor.Descripcion AS ColorDescripcion, dbo.tblCompra.Descripcion AS CompraDescripcion
FROM         dbo.tblProducto INNER JOIN
                      dbo.tblColor ON dbo.tblProducto.ColorId = dbo.tblColor.Id INNER JOIN
                      dbo.tblCompra ON dbo.tblProducto.CompraId = dbo.tblCompra.Id
                      
                      where tblProducto.Id=@Id
	
END

GO
/****** Object:  StoredProcedure [dbo].[usp_ListCliente_DeleteCliente]    Script Date: 30/07/2015 17:36:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_ListCliente_DeleteCliente]
	@Id int
AS
BEGIN
	
	delete from tblCliente where Id=@Id
	
	
END

GO
/****** Object:  StoredProcedure [dbo].[usp_ListCliente_GetClientes]    Script Date: 30/07/2015 17:36:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_ListCliente_GetClientes]
	
AS
BEGIN
	
	Select Id,Nombre,Domicilio,Telefono,Email from tblCliente
END

GO
/****** Object:  StoredProcedure [dbo].[usp_ListCompra_DeleteCcompra]    Script Date: 30/07/2015 17:36:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_ListCompra_DeleteCcompra] 
	@Id int
AS
BEGIN
	delete from tblCompra where Id=@Id
END

GO
/****** Object:  StoredProcedure [dbo].[usp_ListCompra_GetCompras]    Script Date: 30/07/2015 17:36:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_ListCompra_GetCompras]
	
AS
BEGIN
	select 
	     tblCompra.Id, CONVERT(varchar, tblCompra.FechaCompra,103) as FechaCompra, tblCompra.FechaAlta, tblCompra.Descripcion, tblCompra.Monto, tblCompra.ProveedorId, tblCompra.NumeroTicket ,tblProveedor.Nombre as ProveedorDescripcion
	from 
	   tblCompra 
	inner join tblProveedor on  tblCompra.ProveedorId=tblProveedor.Id
	
END

GO
/****** Object:  StoredProcedure [dbo].[usp_ListProducto_DeleteProducto]    Script Date: 30/07/2015 17:36:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_ListProducto_DeleteProducto]
	@Id int
AS
BEGIN
	delete from tblProducto where Id=@Id
	
	select @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[usp_ListProducto_GetProductos]    Script Date: 30/07/2015 17:36:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_ListProducto_GetProductos]
	
AS
BEGIN
	SELECT     dbo.tblProducto.Id, dbo.tblProducto.Codigo, dbo.tblProducto.Descripcion, dbo.tblProducto.PrecioCosto, dbo.tblProducto.PorcGanancia, dbo.tblProducto.PrecioVenta, 
                      dbo.tblProducto.StockActual, dbo.tblProducto.PorcDescuento, dbo.tblCompra.FechaCompra, dbo.tblProveedor.Nombre as DescripcionProveedor, dbo.tblTalle.Descripcion AS DescripcionTalle, 
                      dbo.tblTipo.Descripcion AS DescripcionTipo, dbo.tblColor.Descripcion AS DescripcionColor
FROM         dbo.tblProducto INNER JOIN
                      dbo.tblCompra ON dbo.tblProducto.CompraId = dbo.tblCompra.Id INNER JOIN
                      dbo.tblProveedor ON dbo.tblCompra.ProveedorId = dbo.tblProveedor.Id INNER JOIN
                      dbo.tblTalle ON dbo.tblProducto.TalleId = dbo.tblTalle.Id INNER JOIN
                      dbo.tblTipo ON dbo.tblProducto.TipoId = dbo.tblTipo.Id INNER JOIN
                      dbo.tblColor ON dbo.tblProducto.ColorId = dbo.tblColor.Id
END

GO
/****** Object:  StoredProcedure [dbo].[usp_ListVenta_DeleteVenta]    Script Date: 30/07/2015 17:36:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_ListVenta_DeleteVenta] 
	@VentaId int
AS
BEGIN
if (select COUNT(*) from tblDetalleVenta where VentaId=@VentaId)=0
begin
	update tblVenta set FechaBorrado=GETDATE() where Id=@VentaId
	select @@ROWCOUNT as CantidadAfectada
end
else
begin
 select -1 as CantidadAfectada
end	
	
	     
END

GO
/****** Object:  StoredProcedure [dbo].[usp_ListVenta_GetVentas]    Script Date: 30/07/2015 17:36:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_ListVenta_GetVentas] 
	
AS
BEGIN
	
	select 
	  V.Id,
	  C.Nombre,
	  V.FechaVenta,
	  V.MontoTotal as Monto  
	from
	    tblVenta V
	inner join tblCliente C on V.ClienteId=C.Id
	where 
	fechaBorrado is null
	     
END

GO
/****** Object:  StoredProcedure [dbo].[usp_Login_ValidarLogin]    Script Date: 30/07/2015 17:36:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Mario
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
create PROCEDURE [dbo].[usp_Login_ValidarLogin]
	-- Add the parameters for the stored procedure here
	@Usuario varchar(500),
	@Contrasena varchar(150)
	
AS

Select Id,UserName from tblUser with(nolock) where userName = @Usuario and password=@Contrasena

GO
