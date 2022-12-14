USE [DB_CinemaTik]
GO
/****** Object:  Table [dbo].[tbl_Cafeteria]    Script Date: 18.10.2022 00:01:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Cafeteria](
	[product_id] [int] NOT NULL,
	[sales_quantity] [int] NOT NULL,
	[personal_id] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Customer]    Script Date: 18.10.2022 00:01:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Customer](
	[Customer_id] [int] IDENTITY(1,1) NOT NULL,
	[Customer_name_Surname] [nvarchar](max) NOT NULL,
	[film_id] [int] NOT NULL,
	[hall_id] [int] NOT NULL,
	[spersonal_id] [int] NOT NULL,
	[Price] [float] NOT NULL,
 CONSTRAINT [PK_tbl_Customer] PRIMARY KEY CLUSTERED 
(
	[Customer_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Film]    Script Date: 18.10.2022 00:01:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Film](
	[Film_id] [int] IDENTITY(1,1) NOT NULL,
	[Film_producer] [nvarchar](max) NOT NULL,
	[Film_time_dk] [int] NOT NULL,
	[Film_name] [nvarchar](50) NOT NULL,
	[Film_category_id] [int] NOT NULL,
	[player_id] [int] NOT NULL,
	[film_watched_s] [int] NOT NULL,
 CONSTRAINT [PK_tbl_Film] PRIMARY KEY CLUSTERED 
(
	[Film_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Film_Category]    Script Date: 18.10.2022 00:01:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Film_Category](
	[Category_id] [int] IDENTITY(1,1) NOT NULL,
	[Category_Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_tbl_Film_Category] PRIMARY KEY CLUSTERED 
(
	[Category_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Film_IMBD]    Script Date: 18.10.2022 00:01:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Film_IMBD](
	[ımbd_id] [int] IDENTITY(1,1) NOT NULL,
	[film_id] [int] NOT NULL,
	[imbd_score] [float] NOT NULL,
 CONSTRAINT [PK_tbl_Film_IMBD] PRIMARY KEY CLUSTERED 
(
	[ımbd_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Hall]    Script Date: 18.10.2022 00:01:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Hall](
	[hall_id] [int] IDENTITY(1,1) NOT NULL,
	[hall_Film_id] [int] NOT NULL,
	[hall_capacity] [int] NOT NULL,
 CONSTRAINT [PK_tbl_Hall] PRIMARY KEY CLUSTERED 
(
	[hall_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_lead_role_player]    Script Date: 18.10.2022 00:01:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_lead_role_player](
	[player_id] [int] IDENTITY(1,1) NOT NULL,
	[player_name_surname] [varchar](max) NOT NULL,
 CONSTRAINT [PK_tbl_lead_role_player] PRIMARY KEY CLUSTERED 
(
	[player_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Malzemeler]    Script Date: 18.10.2022 00:01:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Malzemeler](
	[Malzeme_id] [int] IDENTITY(1,1) NOT NULL,
	[Malzeme_isim] [nvarchar](50) NOT NULL,
	[Malzeme_Adet] [int] NOT NULL,
	[Malzeme_Fiyat] [float] NOT NULL,
	[Malz_Person_id] [int] NOT NULL,
 CONSTRAINT [PK_tbl_Malzemeler] PRIMARY KEY CLUSTERED 
(
	[Malzeme_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Personal]    Script Date: 18.10.2022 00:01:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Personal](
	[Personel_id] [int] IDENTITY(1,1) NOT NULL,
	[Personal_Name_Surname] [nvarchar](max) NOT NULL,
	[Personal_Age] [int] NOT NULL,
	[Personal_Job] [nvarchar](50) NOT NULL,
	[Personal_Salary] [int] NOT NULL,
 CONSTRAINT [PK_tbl_Personal] PRIMARY KEY CLUSTERED 
(
	[Personel_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Product]    Script Date: 18.10.2022 00:01:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Product](
	[product_id] [int] IDENTITY(1,1) NOT NULL,
	[product_name] [nvarchar](50) NULL,
	[product_quantity] [int] NOT NULL,
	[product_price] [float] NOT NULL,
 CONSTRAINT [PK_tbl_Product] PRIMARY KEY CLUSTERED 
(
	[product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[tbl_Cafeteria] ([product_id], [sales_quantity], [personal_id]) VALUES (1, 200, 1)
INSERT [dbo].[tbl_Cafeteria] ([product_id], [sales_quantity], [personal_id]) VALUES (2, 120, 2)
INSERT [dbo].[tbl_Cafeteria] ([product_id], [sales_quantity], [personal_id]) VALUES (3, 121, 3)
INSERT [dbo].[tbl_Cafeteria] ([product_id], [sales_quantity], [personal_id]) VALUES (4, 121, 4)
INSERT [dbo].[tbl_Cafeteria] ([product_id], [sales_quantity], [personal_id]) VALUES (5, 150, 5)
GO
SET IDENTITY_INSERT [dbo].[tbl_Customer] ON 

INSERT [dbo].[tbl_Customer] ([Customer_id], [Customer_name_Surname], [film_id], [hall_id], [spersonal_id], [Price]) VALUES (4, N'ilker', 2, 3, 1, 100)
INSERT [dbo].[tbl_Customer] ([Customer_id], [Customer_name_Surname], [film_id], [hall_id], [spersonal_id], [Price]) VALUES (5, N'ali', 3, 4, 2, 100)
INSERT [dbo].[tbl_Customer] ([Customer_id], [Customer_name_Surname], [film_id], [hall_id], [spersonal_id], [Price]) VALUES (6, N'yaren', 4, 4, 2, 100)
INSERT [dbo].[tbl_Customer] ([Customer_id], [Customer_name_Surname], [film_id], [hall_id], [spersonal_id], [Price]) VALUES (7, N'halis', 6, 7, 3, 200)
INSERT [dbo].[tbl_Customer] ([Customer_id], [Customer_name_Surname], [film_id], [hall_id], [spersonal_id], [Price]) VALUES (8, N'mehmet', 7, 8, 4, 100)
INSERT [dbo].[tbl_Customer] ([Customer_id], [Customer_name_Surname], [film_id], [hall_id], [spersonal_id], [Price]) VALUES (9, N'mira', 8, 9, 3, 200)
INSERT [dbo].[tbl_Customer] ([Customer_id], [Customer_name_Surname], [film_id], [hall_id], [spersonal_id], [Price]) VALUES (10, N'veli', 9, 11, 2, 105)
INSERT [dbo].[tbl_Customer] ([Customer_id], [Customer_name_Surname], [film_id], [hall_id], [spersonal_id], [Price]) VALUES (12, N'devrim', 10, 13, 1, 50)
INSERT [dbo].[tbl_Customer] ([Customer_id], [Customer_name_Surname], [film_id], [hall_id], [spersonal_id], [Price]) VALUES (13, N'bedir', 11, 14, 2, 450)
INSERT [dbo].[tbl_Customer] ([Customer_id], [Customer_name_Surname], [film_id], [hall_id], [spersonal_id], [Price]) VALUES (16, N'muhammed', 12, 15, 3, 650)
SET IDENTITY_INSERT [dbo].[tbl_Customer] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_Film] ON 

INSERT [dbo].[tbl_Film] ([Film_id], [Film_producer], [Film_time_dk], [Film_name], [Film_category_id], [player_id], [film_watched_s]) VALUES (2, N'ilker', 120, N'ayılar', 1, 1, 100)
INSERT [dbo].[tbl_Film] ([Film_id], [Film_producer], [Film_time_dk], [Film_name], [Film_category_id], [player_id], [film_watched_s]) VALUES (3, N'ali', 100, N'kuşlar', 2, 2, 20)
INSERT [dbo].[tbl_Film] ([Film_id], [Film_producer], [Film_time_dk], [Film_name], [Film_category_id], [player_id], [film_watched_s]) VALUES (4, N'veli', 120, N'çiçekler', 3, 4, 80)
INSERT [dbo].[tbl_Film] ([Film_id], [Film_producer], [Film_time_dk], [Film_name], [Film_category_id], [player_id], [film_watched_s]) VALUES (6, N'murat', 80, N'kitaaplar', 4, 1, 800)
INSERT [dbo].[tbl_Film] ([Film_id], [Film_producer], [Film_time_dk], [Film_name], [Film_category_id], [player_id], [film_watched_s]) VALUES (7, N'ayhan', 400, N'kurtlar', 10, 4, 100)
INSERT [dbo].[tbl_Film] ([Film_id], [Film_producer], [Film_time_dk], [Film_name], [Film_category_id], [player_id], [film_watched_s]) VALUES (8, N'evli', 100, N'telefon', 8, 3, 10)
INSERT [dbo].[tbl_Film] ([Film_id], [Film_producer], [Film_time_dk], [Film_name], [Film_category_id], [player_id], [film_watched_s]) VALUES (9, N'aren', 120, N'İstanbul', 5, 4, 120)
INSERT [dbo].[tbl_Film] ([Film_id], [Film_producer], [Film_time_dk], [Film_name], [Film_category_id], [player_id], [film_watched_s]) VALUES (10, N'ali', 100, N'ankara', 6, 4, 100)
INSERT [dbo].[tbl_Film] ([Film_id], [Film_producer], [Film_time_dk], [Film_name], [Film_category_id], [player_id], [film_watched_s]) VALUES (11, N'mehmet', 120, N'çankırı', 7, 2, 120)
INSERT [dbo].[tbl_Film] ([Film_id], [Film_producer], [Film_time_dk], [Film_name], [Film_category_id], [player_id], [film_watched_s]) VALUES (12, N'aares', 100, N'corum', 9, 1, 2000)
SET IDENTITY_INSERT [dbo].[tbl_Film] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_Film_Category] ON 

INSERT [dbo].[tbl_Film_Category] ([Category_id], [Category_Name]) VALUES (1, N'korku')
INSERT [dbo].[tbl_Film_Category] ([Category_id], [Category_Name]) VALUES (2, N'gerilim')
INSERT [dbo].[tbl_Film_Category] ([Category_id], [Category_Name]) VALUES (3, N'aksiyon')
INSERT [dbo].[tbl_Film_Category] ([Category_id], [Category_Name]) VALUES (4, N'macera')
INSERT [dbo].[tbl_Film_Category] ([Category_id], [Category_Name]) VALUES (5, N'bilimkurgu')
INSERT [dbo].[tbl_Film_Category] ([Category_id], [Category_Name]) VALUES (6, N'polisiye')
INSERT [dbo].[tbl_Film_Category] ([Category_id], [Category_Name]) VALUES (7, N'okul')
INSERT [dbo].[tbl_Film_Category] ([Category_id], [Category_Name]) VALUES (8, N'Kurt')
INSERT [dbo].[tbl_Film_Category] ([Category_id], [Category_Name]) VALUES (9, N'doğal')
INSERT [dbo].[tbl_Film_Category] ([Category_id], [Category_Name]) VALUES (10, N'hacker')
SET IDENTITY_INSERT [dbo].[tbl_Film_Category] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_Film_IMBD] ON 

INSERT [dbo].[tbl_Film_IMBD] ([ımbd_id], [film_id], [imbd_score]) VALUES (2, 2, 20)
INSERT [dbo].[tbl_Film_IMBD] ([ımbd_id], [film_id], [imbd_score]) VALUES (3, 3, 4)
INSERT [dbo].[tbl_Film_IMBD] ([ımbd_id], [film_id], [imbd_score]) VALUES (7, 4, 8)
INSERT [dbo].[tbl_Film_IMBD] ([ımbd_id], [film_id], [imbd_score]) VALUES (8, 6, 5)
INSERT [dbo].[tbl_Film_IMBD] ([ımbd_id], [film_id], [imbd_score]) VALUES (9, 7, 5)
INSERT [dbo].[tbl_Film_IMBD] ([ımbd_id], [film_id], [imbd_score]) VALUES (10, 8, 10)
INSERT [dbo].[tbl_Film_IMBD] ([ımbd_id], [film_id], [imbd_score]) VALUES (11, 9, 100)
INSERT [dbo].[tbl_Film_IMBD] ([ımbd_id], [film_id], [imbd_score]) VALUES (12, 10, 11)
INSERT [dbo].[tbl_Film_IMBD] ([ımbd_id], [film_id], [imbd_score]) VALUES (13, 11, 12)
INSERT [dbo].[tbl_Film_IMBD] ([ımbd_id], [film_id], [imbd_score]) VALUES (14, 12, 5)
SET IDENTITY_INSERT [dbo].[tbl_Film_IMBD] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_Hall] ON 

INSERT [dbo].[tbl_Hall] ([hall_id], [hall_Film_id], [hall_capacity]) VALUES (2, 2, 200)
INSERT [dbo].[tbl_Hall] ([hall_id], [hall_Film_id], [hall_capacity]) VALUES (3, 3, 10)
INSERT [dbo].[tbl_Hall] ([hall_id], [hall_Film_id], [hall_capacity]) VALUES (4, 4, 20)
INSERT [dbo].[tbl_Hall] ([hall_id], [hall_Film_id], [hall_capacity]) VALUES (7, 6, 66)
INSERT [dbo].[tbl_Hall] ([hall_id], [hall_Film_id], [hall_capacity]) VALUES (8, 7, 22)
INSERT [dbo].[tbl_Hall] ([hall_id], [hall_Film_id], [hall_capacity]) VALUES (9, 8, 12)
INSERT [dbo].[tbl_Hall] ([hall_id], [hall_Film_id], [hall_capacity]) VALUES (11, 9, 11)
INSERT [dbo].[tbl_Hall] ([hall_id], [hall_Film_id], [hall_capacity]) VALUES (13, 10, 12)
INSERT [dbo].[tbl_Hall] ([hall_id], [hall_Film_id], [hall_capacity]) VALUES (14, 11, 15)
INSERT [dbo].[tbl_Hall] ([hall_id], [hall_Film_id], [hall_capacity]) VALUES (15, 12, 65)
SET IDENTITY_INSERT [dbo].[tbl_Hall] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_lead_role_player] ON 

INSERT [dbo].[tbl_lead_role_player] ([player_id], [player_name_surname]) VALUES (1, N'cüneytarkın')
INSERT [dbo].[tbl_lead_role_player] ([player_id], [player_name_surname]) VALUES (2, N'şahan gökbakar')
INSERT [dbo].[tbl_lead_role_player] ([player_id], [player_name_surname]) VALUES (3, N'recep ivedik')
INSERT [dbo].[tbl_lead_role_player] ([player_id], [player_name_surname]) VALUES (4, N'ilker yüce')
SET IDENTITY_INSERT [dbo].[tbl_lead_role_player] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_Malzemeler] ON 

INSERT [dbo].[tbl_Malzemeler] ([Malzeme_id], [Malzeme_isim], [Malzeme_Adet], [Malzeme_Fiyat], [Malz_Person_id]) VALUES (1, N'peçete', 10, 12, 1)
INSERT [dbo].[tbl_Malzemeler] ([Malzeme_id], [Malzeme_isim], [Malzeme_Adet], [Malzeme_Fiyat], [Malz_Person_id]) VALUES (2, N'havlu', 15, 11, 2)
INSERT [dbo].[tbl_Malzemeler] ([Malzeme_id], [Malzeme_isim], [Malzeme_Adet], [Malzeme_Fiyat], [Malz_Person_id]) VALUES (3, N'koltuk', 50, 111, 3)
INSERT [dbo].[tbl_Malzemeler] ([Malzeme_id], [Malzeme_isim], [Malzeme_Adet], [Malzeme_Fiyat], [Malz_Person_id]) VALUES (4, N'perrde', 10, 12, 4)
INSERT [dbo].[tbl_Malzemeler] ([Malzeme_id], [Malzeme_isim], [Malzeme_Adet], [Malzeme_Fiyat], [Malz_Person_id]) VALUES (5, N'taş', 12, 12, 5)
SET IDENTITY_INSERT [dbo].[tbl_Malzemeler] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_Personal] ON 

INSERT [dbo].[tbl_Personal] ([Personel_id], [Personal_Name_Surname], [Personal_Age], [Personal_Job], [Personal_Salary]) VALUES (1, N'ilker', 11, N'Müdür', 1000)
INSERT [dbo].[tbl_Personal] ([Personel_id], [Personal_Name_Surname], [Personal_Age], [Personal_Job], [Personal_Salary]) VALUES (2, N'ali', 12, N'işçi', 210202)
INSERT [dbo].[tbl_Personal] ([Personel_id], [Personal_Name_Surname], [Personal_Age], [Personal_Job], [Personal_Salary]) VALUES (3, N'veli', 15, N'barmen', 12)
INSERT [dbo].[tbl_Personal] ([Personel_id], [Personal_Name_Surname], [Personal_Age], [Personal_Job], [Personal_Salary]) VALUES (4, N'mehmet', 5, N'temizlik', 203)
INSERT [dbo].[tbl_Personal] ([Personel_id], [Personal_Name_Surname], [Personal_Age], [Personal_Job], [Personal_Salary]) VALUES (5, N'ayhan', 7, N'makinist', 1453)
SET IDENTITY_INSERT [dbo].[tbl_Personal] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_Product] ON 

INSERT [dbo].[tbl_Product] ([product_id], [product_name], [product_quantity], [product_price]) VALUES (1, N'Kraker', 20, 4)
INSERT [dbo].[tbl_Product] ([product_id], [product_name], [product_quantity], [product_price]) VALUES (2, N'kek', 10, 8)
INSERT [dbo].[tbl_Product] ([product_id], [product_name], [product_quantity], [product_price]) VALUES (3, N'süt', 14, 6)
INSERT [dbo].[tbl_Product] ([product_id], [product_name], [product_quantity], [product_price]) VALUES (4, N'mısır', 20, 2)
INSERT [dbo].[tbl_Product] ([product_id], [product_name], [product_quantity], [product_price]) VALUES (5, N'kola', 15, 10)
INSERT [dbo].[tbl_Product] ([product_id], [product_name], [product_quantity], [product_price]) VALUES (6, N'ice tea', 25, 11)
INSERT [dbo].[tbl_Product] ([product_id], [product_name], [product_quantity], [product_price]) VALUES (7, N'fusetea', 15, 10)
INSERT [dbo].[tbl_Product] ([product_id], [product_name], [product_quantity], [product_price]) VALUES (8, N'fanta', 25, 11)
INSERT [dbo].[tbl_Product] ([product_id], [product_name], [product_quantity], [product_price]) VALUES (9, N'gözlük', 14, 120)
INSERT [dbo].[tbl_Product] ([product_id], [product_name], [product_quantity], [product_price]) VALUES (10, N'eldiven', 11, 2)
INSERT [dbo].[tbl_Product] ([product_id], [product_name], [product_quantity], [product_price]) VALUES (11, N'selpak', 10, 5)
SET IDENTITY_INSERT [dbo].[tbl_Product] OFF
GO
ALTER TABLE [dbo].[tbl_Cafeteria]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Cafeteria_tbl_Personal] FOREIGN KEY([personal_id])
REFERENCES [dbo].[tbl_Personal] ([Personel_id])
GO
ALTER TABLE [dbo].[tbl_Cafeteria] CHECK CONSTRAINT [FK_tbl_Cafeteria_tbl_Personal]
GO
ALTER TABLE [dbo].[tbl_Cafeteria]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Cafeteria_tbl_Product] FOREIGN KEY([product_id])
REFERENCES [dbo].[tbl_Product] ([product_id])
GO
ALTER TABLE [dbo].[tbl_Cafeteria] CHECK CONSTRAINT [FK_tbl_Cafeteria_tbl_Product]
GO
ALTER TABLE [dbo].[tbl_Customer]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Customer_tbl_Film] FOREIGN KEY([film_id])
REFERENCES [dbo].[tbl_Film] ([Film_id])
GO
ALTER TABLE [dbo].[tbl_Customer] CHECK CONSTRAINT [FK_tbl_Customer_tbl_Film]
GO
ALTER TABLE [dbo].[tbl_Customer]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Customer_tbl_Hall] FOREIGN KEY([hall_id])
REFERENCES [dbo].[tbl_Hall] ([hall_id])
GO
ALTER TABLE [dbo].[tbl_Customer] CHECK CONSTRAINT [FK_tbl_Customer_tbl_Hall]
GO
ALTER TABLE [dbo].[tbl_Customer]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Customer_tbl_Personal] FOREIGN KEY([spersonal_id])
REFERENCES [dbo].[tbl_Personal] ([Personel_id])
GO
ALTER TABLE [dbo].[tbl_Customer] CHECK CONSTRAINT [FK_tbl_Customer_tbl_Personal]
GO
ALTER TABLE [dbo].[tbl_Customer]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Customer_tbl_Personal1] FOREIGN KEY([spersonal_id])
REFERENCES [dbo].[tbl_Personal] ([Personel_id])
GO
ALTER TABLE [dbo].[tbl_Customer] CHECK CONSTRAINT [FK_tbl_Customer_tbl_Personal1]
GO
ALTER TABLE [dbo].[tbl_Film]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Film_tbl_Film_Category] FOREIGN KEY([Film_category_id])
REFERENCES [dbo].[tbl_Film_Category] ([Category_id])
GO
ALTER TABLE [dbo].[tbl_Film] CHECK CONSTRAINT [FK_tbl_Film_tbl_Film_Category]
GO
ALTER TABLE [dbo].[tbl_Film]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Film_tbl_lead_role_player] FOREIGN KEY([player_id])
REFERENCES [dbo].[tbl_lead_role_player] ([player_id])
GO
ALTER TABLE [dbo].[tbl_Film] CHECK CONSTRAINT [FK_tbl_Film_tbl_lead_role_player]
GO
ALTER TABLE [dbo].[tbl_Film_IMBD]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Film_IMBD_tbl_Film] FOREIGN KEY([film_id])
REFERENCES [dbo].[tbl_Film] ([Film_id])
GO
ALTER TABLE [dbo].[tbl_Film_IMBD] CHECK CONSTRAINT [FK_tbl_Film_IMBD_tbl_Film]
GO
ALTER TABLE [dbo].[tbl_Hall]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Hall_tbl_Film] FOREIGN KEY([hall_Film_id])
REFERENCES [dbo].[tbl_Film] ([Film_id])
GO
ALTER TABLE [dbo].[tbl_Hall] CHECK CONSTRAINT [FK_tbl_Hall_tbl_Film]
GO
ALTER TABLE [dbo].[tbl_Malzemeler]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Malzemeler_tbl_Personal] FOREIGN KEY([Malz_Person_id])
REFERENCES [dbo].[tbl_Personal] ([Personel_id])
GO
ALTER TABLE [dbo].[tbl_Malzemeler] CHECK CONSTRAINT [FK_tbl_Malzemeler_tbl_Personal]
GO
