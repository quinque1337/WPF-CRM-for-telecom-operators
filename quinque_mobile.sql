USE [quinque_mobile]
GO
/****** Object:  Table [dbo].[Clients]    Script Date: 5/6/2024 5:25:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clients](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[client_name] [nvarchar](max) NULL,
	[discount] [int] NULL,
	[email] [nvarchar](max) NULL,
	[date] [nvarchar](max) NULL,
	[date_register] [nvarchar](max) NULL,
	[status] [nvarchar](max) NULL,
	[balance] [int] NULL,
	[client_document_id] [int] NULL,
 CONSTRAINT [PK_Clients] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Documents]    Script Date: 5/6/2024 5:25:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Documents](
	[document_id] [int] IDENTITY(1,1) NOT NULL,
	[document_id_client] [int] NOT NULL,
	[document_id_tarif] [int] NOT NULL,
	[document_id_phone] [int] NOT NULL,
 CONSTRAINT [PK_Documents] PRIMARY KEY CLUSTERED 
(
	[document_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Phone]    Script Date: 5/6/2024 5:25:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Phone](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[phone_number] [nvarchar](max) NULL,
 CONSTRAINT [PK_Phone] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Phones]    Script Date: 5/6/2024 5:25:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Phones](
	[phone_id] [int] IDENTITY(1,1) NOT NULL,
	[phone_number] [nvarchar](max) NOT NULL,
	[phone_status] [nvarchar](max) NULL,
 CONSTRAINT [PK_Phones] PRIMARY KEY CLUSTERED 
(
	[phone_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 5/6/2024 5:25:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](max) NULL,
	[model] [nvarchar](max) NULL,
	[price] [int] NULL,
	[quantity] [int] NULL,
	[id_package] [int] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductTypes]    Script Date: 5/6/2024 5:25:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductTypes](
	[product_types_id] [int] IDENTITY(1,1) NOT NULL,
	[package] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[product_types_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sales]    Script Date: 5/6/2024 5:25:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sales](
	[id_sale] [int] IDENTITY(1,1) NOT NULL,
	[sale_date] [nvarchar](max) NULL,
	[client_id] [int] NULL,
	[product_id] [int] NULL,
	[quantity] [int] NULL,
	[total_amount] [decimal](10, 2) NULL,
	[user_id] [int] NULL,
 CONSTRAINT [PK__Sales__3213E83F0C0D0D57] PRIMARY KEY CLUSTERED 
(
	[id_sale] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SalesService]    Script Date: 5/6/2024 5:25:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SalesService](
	[id_sale_service] [int] IDENTITY(1,1) NOT NULL,
	[sales_service_sale_date] [nvarchar](max) NULL,
	[sales_service_client_id] [int] NULL,
	[sales_service_service_id] [int] NULL,
	[sales_service_quantity] [int] NULL,
	[sales_service_total_amount] [decimal](10, 2) NULL,
	[sales_service_user_id] [int] NULL,
 CONSTRAINT [PK_SalesService] PRIMARY KEY CLUSTERED 
(
	[id_sale_service] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Services]    Script Date: 5/6/2024 5:25:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Services](
	[id_service] [int] IDENTITY(1,1) NOT NULL,
	[service_name] [nvarchar](max) NULL,
	[service_cost] [nvarchar](max) NULL,
 CONSTRAINT [PK_Services] PRIMARY KEY CLUSTERED 
(
	[id_service] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tarif]    Script Date: 5/6/2024 5:25:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tarif](
	[id_tarif] [int] IDENTITY(1,1) NOT NULL,
	[tarif_name] [nvarchar](max) NULL,
	[tarif_cost] [int] NULL,
	[tarif_minutes] [nvarchar](max) NULL,
	[tarif_internet] [nvarchar](max) NULL,
	[tarif_morefunc] [nvarchar](max) NULL,
	[tarif_validity] [nvarchar](max) NULL,
 CONSTRAINT [PK_Tarif] PRIMARY KEY CLUSTERED 
(
	[id_tarif] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 5/6/2024 5:25:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[id] [int] IDENTITY(100000000,1) NOT NULL,
	[full_name] [varchar](100) NOT NULL,
	[id_type] [int] NULL,
	[login] [varchar](100) NOT NULL,
	[password] [varchar](100) NOT NULL,
 CONSTRAINT [PK__Users__3213E83F562FAAF7] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserTypes]    Script Date: 5/6/2024 5:25:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserTypes](
	[id_type] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_type] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Clients] ON 

INSERT [dbo].[Clients] ([id], [client_name], [discount], [email], [date], [date_register], [status], [balance], [client_document_id]) VALUES (1, N'Георгий Войтенко Войтенкович', 0, N'voitenko@mail.ru', N'29.08.2005', NULL, NULL, 0, NULL)
INSERT [dbo].[Clients] ([id], [client_name], [discount], [email], [date], [date_register], [status], [balance], [client_document_id]) VALUES (2, N'Артем Кузякин Игоревич', 10, N'kuza@mail.ruuuu', N'29.08.2005', N'12/24/2023', N'Активен', 100, NULL)
SET IDENTITY_INSERT [dbo].[Clients] OFF
GO
SET IDENTITY_INSERT [dbo].[Documents] ON 

INSERT [dbo].[Documents] ([document_id], [document_id_client], [document_id_tarif], [document_id_phone]) VALUES (3, 1, 3, 3)
SET IDENTITY_INSERT [dbo].[Documents] OFF
GO
SET IDENTITY_INSERT [dbo].[Phones] ON 

INSERT [dbo].[Phones] ([phone_id], [phone_number], [phone_status]) VALUES (1, N'+79957922296', N'Свободен')
INSERT [dbo].[Phones] ([phone_id], [phone_number], [phone_status]) VALUES (2, N'+79957922292', N'Свободен')
INSERT [dbo].[Phones] ([phone_id], [phone_number], [phone_status]) VALUES (3, N'+799579223423', N'Свободен')
SET IDENTITY_INSERT [dbo].[Phones] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([id], [name], [model], [price], [quantity], [id_package]) VALUES (4, N'POCO', N'POCO', 61, 5, 2)
INSERT [dbo].[Product] ([id], [name], [model], [price], [quantity], [id_package]) VALUES (5, N'a', N'a', 1, 11, 1)
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductTypes] ON 

INSERT [dbo].[ProductTypes] ([product_types_id], [package]) VALUES (1, N'шт.')
INSERT [dbo].[ProductTypes] ([product_types_id], [package]) VALUES (2, N'короб.')
INSERT [dbo].[ProductTypes] ([product_types_id], [package]) VALUES (3, N'упак.')
SET IDENTITY_INSERT [dbo].[ProductTypes] OFF
GO
SET IDENTITY_INSERT [dbo].[Services] ON 

INSERT [dbo].[Services] ([id_service], [service_name], [service_cost]) VALUES (2, N'asdasdфыфыв', N'221')
INSERT [dbo].[Services] ([id_service], [service_name], [service_cost]) VALUES (3, N'jhjhjhjhjhj', N'21')
SET IDENTITY_INSERT [dbo].[Services] OFF
GO
SET IDENTITY_INSERT [dbo].[Tarif] ON 

INSERT [dbo].[Tarif] ([id_tarif], [tarif_name], [tarif_cost], [tarif_minutes], [tarif_internet], [tarif_morefunc], [tarif_validity]) VALUES (2, N'tarif1', 100, N'blablabla', N'100', N'blablabla', NULL)
INSERT [dbo].[Tarif] ([id_tarif], [tarif_name], [tarif_cost], [tarif_minutes], [tarif_internet], [tarif_morefunc], [tarif_validity]) VALUES (3, N'System.Data.Entity.DynamicProxies.Tarif_AD8EDBFE3A835D9A157A50E4B40BBDBD62AA1B1F1608E9821108386AB7D1C31A', 12, N'', N'12', N'', NULL)
INSERT [dbo].[Tarif] ([id_tarif], [tarif_name], [tarif_cost], [tarif_minutes], [tarif_internet], [tarif_morefunc], [tarif_validity]) VALUES (4, N'tarif3', 1, N'', N'12', N'', NULL)
INSERT [dbo].[Tarif] ([id_tarif], [tarif_name], [tarif_cost], [tarif_minutes], [tarif_internet], [tarif_morefunc], [tarif_validity]) VALUES (5, N'asdasd', 123, N'', N'asd', N'', NULL)
SET IDENTITY_INSERT [dbo].[Tarif] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([id], [full_name], [id_type], [login], [password]) VALUES (1, N'Иван Иван', 1, N'1', N'1')
INSERT [dbo].[Users] ([id], [full_name], [id_type], [login], [password]) VALUES (100000000, N'Имя Фамилия', 2, N'2', N'2')
INSERT [dbo].[Users] ([id], [full_name], [id_type], [login], [password]) VALUES (100000001, N'Введите Имя и Фамилию)', 3, N'6', N'65')
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
SET IDENTITY_INSERT [dbo].[UserTypes] ON 

INSERT [dbo].[UserTypes] ([id_type], [name]) VALUES (1, N'Менеджер')
INSERT [dbo].[UserTypes] ([id_type], [name]) VALUES (2, N'Продавец-консультант')
INSERT [dbo].[UserTypes] ([id_type], [name]) VALUES (3, N'да')
SET IDENTITY_INSERT [dbo].[UserTypes] OFF
GO
ALTER TABLE [dbo].[Clients]  WITH CHECK ADD  CONSTRAINT [FK_Clients_Tarif] FOREIGN KEY([client_document_id])
REFERENCES [dbo].[Tarif] ([id_tarif])
GO
ALTER TABLE [dbo].[Clients] CHECK CONSTRAINT [FK_Clients_Tarif]
GO
ALTER TABLE [dbo].[Documents]  WITH CHECK ADD  CONSTRAINT [FK_Documents_Clients] FOREIGN KEY([document_id_client])
REFERENCES [dbo].[Clients] ([id])
GO
ALTER TABLE [dbo].[Documents] CHECK CONSTRAINT [FK_Documents_Clients]
GO
ALTER TABLE [dbo].[Documents]  WITH CHECK ADD  CONSTRAINT [FK_Documents_Phones] FOREIGN KEY([document_id_phone])
REFERENCES [dbo].[Phones] ([phone_id])
GO
ALTER TABLE [dbo].[Documents] CHECK CONSTRAINT [FK_Documents_Phones]
GO
ALTER TABLE [dbo].[Documents]  WITH CHECK ADD  CONSTRAINT [FK_Documents_Tarif] FOREIGN KEY([document_id_tarif])
REFERENCES [dbo].[Tarif] ([id_tarif])
GO
ALTER TABLE [dbo].[Documents] CHECK CONSTRAINT [FK_Documents_Tarif]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_ProductTypes1] FOREIGN KEY([id_package])
REFERENCES [dbo].[ProductTypes] ([product_types_id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_ProductTypes1]
GO
ALTER TABLE [dbo].[Sales]  WITH CHECK ADD  CONSTRAINT [FK_Sales_Clients] FOREIGN KEY([client_id])
REFERENCES [dbo].[Clients] ([id])
GO
ALTER TABLE [dbo].[Sales] CHECK CONSTRAINT [FK_Sales_Clients]
GO
ALTER TABLE [dbo].[Sales]  WITH CHECK ADD  CONSTRAINT [FK_Sales_Product] FOREIGN KEY([product_id])
REFERENCES [dbo].[Product] ([id])
GO
ALTER TABLE [dbo].[Sales] CHECK CONSTRAINT [FK_Sales_Product]
GO
ALTER TABLE [dbo].[Sales]  WITH CHECK ADD  CONSTRAINT [FK_Sales_Users] FOREIGN KEY([user_id])
REFERENCES [dbo].[Users] ([id])
GO
ALTER TABLE [dbo].[Sales] CHECK CONSTRAINT [FK_Sales_Users]
GO
ALTER TABLE [dbo].[SalesService]  WITH CHECK ADD  CONSTRAINT [FK_SalesService_Clients] FOREIGN KEY([sales_service_client_id])
REFERENCES [dbo].[Clients] ([id])
GO
ALTER TABLE [dbo].[SalesService] CHECK CONSTRAINT [FK_SalesService_Clients]
GO
ALTER TABLE [dbo].[SalesService]  WITH CHECK ADD  CONSTRAINT [FK_SalesService_Services] FOREIGN KEY([sales_service_service_id])
REFERENCES [dbo].[Services] ([id_service])
GO
ALTER TABLE [dbo].[SalesService] CHECK CONSTRAINT [FK_SalesService_Services]
GO
ALTER TABLE [dbo].[SalesService]  WITH CHECK ADD  CONSTRAINT [FK_SalesService_Users] FOREIGN KEY([sales_service_user_id])
REFERENCES [dbo].[Users] ([id])
GO
ALTER TABLE [dbo].[SalesService] CHECK CONSTRAINT [FK_SalesService_Users]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_UserTypes1] FOREIGN KEY([id_type])
REFERENCES [dbo].[UserTypes] ([id_type])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_UserTypes1]
GO
