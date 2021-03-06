/****** Object:  Table [dbo].[Reklam]    Script Date: 03/10/2013 09:02:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Reklam](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[BannerName] [nvarchar](50) NULL,
	[ImageUrl] [varchar](200) NOT NULL,
	[NavigateUrl] [varchar](200) NULL,
	[AlternateText] [nvarchar](200) NULL,
	[Keyword] [nvarchar](200) NULL,
	[Impressions] [int] NOT NULL,
	[Width] [int] NULL,
	[Height] [int] NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_Reklam] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Reklam] ON
INSERT [dbo].[Reklam] ([ID], [BannerName], [ImageUrl], [NavigateUrl], [AlternateText], [Keyword], [Impressions], [Width], [Height], [IsActive]) VALUES (1, N'Garanti Reklam 250x250', N'/images/reklam/reklam-test-250x250-png-18574.png', N'http://www.baymyo.com', N'baymyo.com', N'', 2, 250, 250, 1)
INSERT [dbo].[Reklam] ([ID], [BannerName], [ImageUrl], [NavigateUrl], [AlternateText], [Keyword], [Impressions], [Width], [Height], [IsActive]) VALUES (2, N'Avea - 650x80', N'/images/reklam/avea-660x80-png-210c1.png', N'http://www.baymyo.com', N'Avea', N'', 1, 650, 80, 1)
INSERT [dbo].[Reklam] ([ID], [BannerName], [ImageUrl], [NavigateUrl], [AlternateText], [Keyword], [Impressions], [Width], [Height], [IsActive]) VALUES (3, N'Axcess - 250x250', N'/images/reklam/axcess-250x250-jpg-d902f.jpg', N'http://www.baymyo.com', N'Axcess', N'', 1, 250, 250, 1)
INSERT [dbo].[Reklam] ([ID], [BannerName], [ImageUrl], [NavigateUrl], [AlternateText], [Keyword], [Impressions], [Width], [Height], [IsActive]) VALUES (4, N'Vodafone - 650x80', N'/images/reklam/vodafon-660x80-png-399f2.png', N'http://www.baymyo.com', N'Vodafone', N'', 2, 650, 80, 1)
SET IDENTITY_INSERT [dbo].[Reklam] OFF
/****** Object:  Table [dbo].[Randevu]    Script Date: 03/10/2013 09:02:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Randevu](
	[ID] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[HesapID] [uniqueidentifier] NULL,
	[ModulID] [varchar](15) NULL,
	[IcerikID] [varchar](50) NULL,
	[Adi] [nvarchar](35) NULL,
	[Mail] [varchar](60) NULL,
	[Telefon] [varchar](16) NULL,
	[GSM] [varchar](16) NULL,
	[Icerik] [nvarchar](250) NULL,
	[TarihSaat] [datetime] NULL,
	[Durum] [tinyint] NULL,
	[YoneticiOnay] [bit] NULL,
 CONSTRAINT [PK_Randevu] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Randevu] ([ID], [HesapID], [ModulID], [IcerikID], [Adi], [Mail], [Telefon], [GSM], [Icerik], [TarihSaat], [Durum], [YoneticiOnay]) VALUES (N'6e1243e1-47da-449a-b6b2-b9004a7422af', N'5e23788e-ff4a-45d9-bed3-bffe1423a8ca', N'calismaalani', N'F495807B-086B-4FC9-B9AB-AABBBFBA44C7', N'Mustafa Yaşar ÖZKAN', N'myo@baymyo.com', N'0544', N'0544', N'Bu alana 250 karakter soru yazabilirsiniz.', CAST(0x0000A029009450C0 AS DateTime), 2, 1)
/****** Object:  Table [dbo].[Yorum]    Script Date: 03/10/2013 09:02:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Yorum](
	[ID] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[IP] [varchar](15) NULL,
	[ModulID] [varchar](15) NULL,
	[IcerikID] [varchar](50) NULL,
	[Adi] [nvarchar](100) NULL,
	[Mail] [varchar](60) NULL,
	[Icerik] [nvarchar](500) NULL,
	[KayitTarihi] [datetime] NULL,
	[YoneticiOnay] [bit] NULL,
	[Aktif] [bit] NULL,
 CONSTRAINT [PK_Yorum] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Yorum] ([ID], [IP], [ModulID], [IcerikID], [Adi], [Mail], [Icerik], [KayitTarihi], [YoneticiOnay], [Aktif]) VALUES (N'e6f004fb-1e3e-42cd-afe9-3a9071f5b2ba', N'::1', N'makale', N'1', N'Prof. Dr. Sezgin Zühtü ÖZKAN', N'sonmyo@hotmail.com', N'Anonymous''un bu saldırısı başarılı olur mu ya da SOPA görüşmelerinde bir şey değişir mi bilemiyoruz ama eğer Anonymous bunu da gerçekleştirebilirse dünya tarihinin en çok ses getiren online saldırısına tanık olma ihtimalimiz yüksek.', CAST(0x0000A028015A9F25 AS DateTime), 1, 0)
/****** Object:  Table [dbo].[Begen]    Script Date: 03/10/2013 09:02:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Begen](
	[ID] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[HesapID] [uniqueidentifier] NULL,
	[IP] [varchar](15) NULL,
	[ModulID] [varchar](15) NULL,
	[IcerikID] [varchar](50) NULL,
	[Durum] [bit] NULL,
	[KayitTarihi] [datetime] NULL,
 CONSTRAINT [PK_Puan] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Gosterim]    Script Date: 03/10/2013 09:02:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Gosterim](
	[ID] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[HesapID] [uniqueidentifier] NULL,
	[IP] [varchar](15) NULL,
	[ModulID] [varchar](15) NULL,
	[IcerikID] [varchar](50) NULL,
	[KayitTarihi] [datetime] NULL,
 CONSTRAINT [PK_Gosterim] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Gosterim] ([ID], [HesapID], [IP], [ModulID], [IcerikID], [KayitTarihi]) VALUES (N'025421fc-3685-4983-adf2-1565dc8a0bc7', N'00000000-0000-0000-0000-000000000000', N'::1', N'makale', N'1', CAST(0x0000A044017FB971 AS DateTime))
INSERT [dbo].[Gosterim] ([ID], [HesapID], [IP], [ModulID], [IcerikID], [KayitTarihi]) VALUES (N'58d502d9-bee2-4fca-8c4d-20ffa06548e8', N'00000000-0000-0000-0000-000000000000', N'::1', N'makale', N'1', CAST(0x0000A028015C24EE AS DateTime))
INSERT [dbo].[Gosterim] ([ID], [HesapID], [IP], [ModulID], [IcerikID], [KayitTarihi]) VALUES (N'55d08095-8197-46f6-b8d5-212731074626', N'00000000-0000-0000-0000-000000000000', N'::1', N'makale', N'1', CAST(0x0000A028015A00E7 AS DateTime))
INSERT [dbo].[Gosterim] ([ID], [HesapID], [IP], [ModulID], [IcerikID], [KayitTarihi]) VALUES (N'518478f1-4285-4dc9-8931-2241149193cb', N'00000000-0000-0000-0000-000000000000', N'::1', N'profil', N'5e23788e-ff4a-45d9-bed3-bffe1423a8ca', CAST(0x0000A028015616F1 AS DateTime))
INSERT [dbo].[Gosterim] ([ID], [HesapID], [IP], [ModulID], [IcerikID], [KayitTarihi]) VALUES (N'6dfcc05e-4176-4406-af28-26080aa53375', N'00000000-0000-0000-0000-000000000000', N'::1', N'profil', N'5e23788e-ff4a-45d9-bed3-bffe1423a8ca', CAST(0x0000A02801561A4A AS DateTime))
INSERT [dbo].[Gosterim] ([ID], [HesapID], [IP], [ModulID], [IcerikID], [KayitTarihi]) VALUES (N'626fdd18-a3bc-4222-9538-264c143e0ed8', N'00000000-0000-0000-0000-000000000000', N'::1', N'makale', N'1', CAST(0x0000A044017FB405 AS DateTime))
INSERT [dbo].[Gosterim] ([ID], [HesapID], [IP], [ModulID], [IcerikID], [KayitTarihi]) VALUES (N'ff794ad4-ff72-457e-ad04-26699c08d0ac', N'00000000-0000-0000-0000-000000000000', N'::1', N'profil', N'5e23788e-ff4a-45d9-bed3-bffe1423a8ca', CAST(0x0000A03101874753 AS DateTime))
INSERT [dbo].[Gosterim] ([ID], [HesapID], [IP], [ModulID], [IcerikID], [KayitTarihi]) VALUES (N'87d20a7d-8472-40fa-9756-3416e3fc33b7', N'00000000-0000-0000-0000-000000000000', N'::1', N'profil', N'5e23788e-ff4a-45d9-bed3-bffe1423a8ca', CAST(0x0000A028015462C0 AS DateTime))
INSERT [dbo].[Gosterim] ([ID], [HesapID], [IP], [ModulID], [IcerikID], [KayitTarihi]) VALUES (N'ad2e2ffc-b358-46c2-a232-49775dda17c7', N'00000000-0000-0000-0000-000000000000', N'::1', N'profil', N'5e23788e-ff4a-45d9-bed3-bffe1423a8ca', CAST(0x0000A028018ABB6A AS DateTime))
INSERT [dbo].[Gosterim] ([ID], [HesapID], [IP], [ModulID], [IcerikID], [KayitTarihi]) VALUES (N'b1dc3d41-3fa0-4674-af88-4f96639045d0', N'00000000-0000-0000-0000-000000000000', N'::1', N'profil', N'5e23788e-ff4a-45d9-bed3-bffe1423a8ca', CAST(0x0000A03101809959 AS DateTime))
INSERT [dbo].[Gosterim] ([ID], [HesapID], [IP], [ModulID], [IcerikID], [KayitTarihi]) VALUES (N'14b9095c-1813-40c3-91e2-55a3216013c4', N'00000000-0000-0000-0000-000000000000', N'::1', N'makale', N'1', CAST(0x0000A028015ADB88 AS DateTime))
INSERT [dbo].[Gosterim] ([ID], [HesapID], [IP], [ModulID], [IcerikID], [KayitTarihi]) VALUES (N'1607b51b-e3e4-4a32-ae25-6e9327c95121', N'00000000-0000-0000-0000-000000000000', N'::1', N'makale', N'1', CAST(0x0000A028015A884E AS DateTime))
INSERT [dbo].[Gosterim] ([ID], [HesapID], [IP], [ModulID], [IcerikID], [KayitTarihi]) VALUES (N'ea64cfd9-2ce9-42f3-9cd5-763f4ea758d4', N'00000000-0000-0000-0000-000000000000', N'::1', N'profil', N'5e23788e-ff4a-45d9-bed3-bffe1423a8ca', CAST(0x0000A04D002604D4 AS DateTime))
INSERT [dbo].[Gosterim] ([ID], [HesapID], [IP], [ModulID], [IcerikID], [KayitTarihi]) VALUES (N'9dc94af7-ce91-4ddc-a3f9-78f6e7a41c24', N'00000000-0000-0000-0000-000000000000', N'::1', N'profil', N'5e23788e-ff4a-45d9-bed3-bffe1423a8ca', CAST(0x0000A028015CA4B5 AS DateTime))
INSERT [dbo].[Gosterim] ([ID], [HesapID], [IP], [ModulID], [IcerikID], [KayitTarihi]) VALUES (N'1dbbef48-0748-4f8d-b9c9-7a63ec66b28e', N'00000000-0000-0000-0000-000000000000', N'::1', N'profil', N'5e23788e-ff4a-45d9-bed3-bffe1423a8ca', CAST(0x0000A02900049FBD AS DateTime))
INSERT [dbo].[Gosterim] ([ID], [HesapID], [IP], [ModulID], [IcerikID], [KayitTarihi]) VALUES (N'0f815f6e-c1ea-4e2f-a24b-7b25ba84cd54', N'00000000-0000-0000-0000-000000000000', N'::1', N'makale', N'1', CAST(0x0000A028015ABE21 AS DateTime))
INSERT [dbo].[Gosterim] ([ID], [HesapID], [IP], [ModulID], [IcerikID], [KayitTarihi]) VALUES (N'8a618acb-5b84-44e6-88ad-87df03f131a4', N'00000000-0000-0000-0000-000000000000', N'::1', N'makale', N'1', CAST(0x0000A0290001F329 AS DateTime))
INSERT [dbo].[Gosterim] ([ID], [HesapID], [IP], [ModulID], [IcerikID], [KayitTarihi]) VALUES (N'f409a39e-6fe2-405a-9624-89012949e4b2', N'00000000-0000-0000-0000-000000000000', N'::1', N'makale', N'1', CAST(0x0000A028015AAA73 AS DateTime))
INSERT [dbo].[Gosterim] ([ID], [HesapID], [IP], [ModulID], [IcerikID], [KayitTarihi]) VALUES (N'a0b3e5f6-c663-4717-a05c-8f76a3a70d4a', N'00000000-0000-0000-0000-000000000000', N'::1', N'makale', N'1', CAST(0x0000A028015C5497 AS DateTime))
INSERT [dbo].[Gosterim] ([ID], [HesapID], [IP], [ModulID], [IcerikID], [KayitTarihi]) VALUES (N'6af0930a-40f4-43f4-ab62-97ca87f663aa', N'00000000-0000-0000-0000-000000000000', N'::1', N'profil', N'5e23788e-ff4a-45d9-bed3-bffe1423a8ca', CAST(0x0000A04D0025CE13 AS DateTime))
INSERT [dbo].[Gosterim] ([ID], [HesapID], [IP], [ModulID], [IcerikID], [KayitTarihi]) VALUES (N'caf85d53-1011-4483-b006-9e2861c219fa', N'00000000-0000-0000-0000-000000000000', N'::1', N'profil', N'5e23788e-ff4a-45d9-bed3-bffe1423a8ca', CAST(0x0000A0280156E594 AS DateTime))
INSERT [dbo].[Gosterim] ([ID], [HesapID], [IP], [ModulID], [IcerikID], [KayitTarihi]) VALUES (N'607d3581-913a-49f7-9592-9f7076c13758', N'00000000-0000-0000-0000-000000000000', N'::1', N'makale', N'1', CAST(0x0000A031017FF013 AS DateTime))
INSERT [dbo].[Gosterim] ([ID], [HesapID], [IP], [ModulID], [IcerikID], [KayitTarihi]) VALUES (N'e98ff896-5a7f-4849-b94a-a101113aecf5', N'00000000-0000-0000-0000-000000000000', N'::1', N'profil', N'5e23788e-ff4a-45d9-bed3-bffe1423a8ca', CAST(0x0000A031017E7435 AS DateTime))
INSERT [dbo].[Gosterim] ([ID], [HesapID], [IP], [ModulID], [IcerikID], [KayitTarihi]) VALUES (N'a594820c-352f-483a-bd7d-b7111533f4c1', N'00000000-0000-0000-0000-000000000000', N'::1', N'profil', N'5e23788e-ff4a-45d9-bed3-bffe1423a8ca', CAST(0x0000A0290002DC4E AS DateTime))
INSERT [dbo].[Gosterim] ([ID], [HesapID], [IP], [ModulID], [IcerikID], [KayitTarihi]) VALUES (N'178439a3-3da0-495e-83ed-bc6a63d89f61', N'00000000-0000-0000-0000-000000000000', N'::1', N'makale', N'1', CAST(0x0000A028015C2B61 AS DateTime))
INSERT [dbo].[Gosterim] ([ID], [HesapID], [IP], [ModulID], [IcerikID], [KayitTarihi]) VALUES (N'bd9c00c3-41d9-42f0-82e2-c0f51dc32274', N'00000000-0000-0000-0000-000000000000', N'::1', N'makale', N'1', CAST(0x0000A0310178B5B3 AS DateTime))
INSERT [dbo].[Gosterim] ([ID], [HesapID], [IP], [ModulID], [IcerikID], [KayitTarihi]) VALUES (N'354557ca-3f14-4e3a-9590-cf071080e6a8', N'00000000-0000-0000-0000-000000000000', N'::1', N'profil', N'5e23788e-ff4a-45d9-bed3-bffe1423a8ca', CAST(0x0000A031017DFF7B AS DateTime))
INSERT [dbo].[Gosterim] ([ID], [HesapID], [IP], [ModulID], [IcerikID], [KayitTarihi]) VALUES (N'7658f712-08e4-47c0-b1a5-cfb6f20fe0db', N'00000000-0000-0000-0000-000000000000', N'::1', N'profil', N'5e23788e-ff4a-45d9-bed3-bffe1423a8ca', CAST(0x0000A031017EE7AC AS DateTime))
INSERT [dbo].[Gosterim] ([ID], [HesapID], [IP], [ModulID], [IcerikID], [KayitTarihi]) VALUES (N'87a0f4b2-7907-4315-84bf-d183b1cdd15c', N'00000000-0000-0000-0000-000000000000', N'::1', N'profil', N'5e23788e-ff4a-45d9-bed3-bffe1423a8ca', CAST(0x0000A029000263E7 AS DateTime))
INSERT [dbo].[Gosterim] ([ID], [HesapID], [IP], [ModulID], [IcerikID], [KayitTarihi]) VALUES (N'6b06aa05-3b3a-49bd-b8f7-d8977d152ddb', N'00000000-0000-0000-0000-000000000000', N'::1', N'profil', N'5e23788e-ff4a-45d9-bed3-bffe1423a8ca', CAST(0x0000A0280156A46F AS DateTime))
INSERT [dbo].[Gosterim] ([ID], [HesapID], [IP], [ModulID], [IcerikID], [KayitTarihi]) VALUES (N'0fb42868-5974-4682-a1ba-dac29063b8b5', N'00000000-0000-0000-0000-000000000000', N'::1', N'profil', N'5e23788e-ff4a-45d9-bed3-bffe1423a8ca', CAST(0x0000A028015753B6 AS DateTime))
INSERT [dbo].[Gosterim] ([ID], [HesapID], [IP], [ModulID], [IcerikID], [KayitTarihi]) VALUES (N'3d14efdc-8997-452d-a654-e2de2f952bb6', N'00000000-0000-0000-0000-000000000000', N'::1', N'makale', N'1', CAST(0x0000A044017FEF4D AS DateTime))
/****** Object:  Table [dbo].[Hesap]    Script Date: 03/10/2013 09:02:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Hesap](
	[ID] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[IP] [varchar](15) NULL,
	[Adi] [nvarchar](18) NULL,
	[Soyadi] [nvarchar](15) NULL,
	[Mail] [varchar](60) NOT NULL,
	[Sifre] [varchar](34) NOT NULL,
	[Roller] [varchar](50) NULL,
	[OnayKodu] [varchar](5) NULL,
	[DogumTarihi] [datetime] NULL,
	[KayitTarihi] [datetime] NULL,
	[Cinsiyet] [tinyint] NULL,
	[Tipi] [tinyint] NULL,
	[Yorum] [bit] NULL,
	[Abonelik] [bit] NULL,
	[Aktivasyon] [bit] NULL,
	[Aktif] [bit] NULL,
 CONSTRAINT [PK_Hesap] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [IX_Hesap] UNIQUE NONCLUSTERED 
(
	[Mail] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Hesap] ([ID], [IP], [Adi], [Soyadi], [Mail], [Sifre], [Roller], [OnayKodu], [DogumTarihi], [KayitTarihi], [Cinsiyet], [Tipi], [Yorum], [Abonelik], [Aktivasyon], [Aktif]) VALUES (N'a1855562-114e-4de4-adb9-59aeb6eef1a2', N'::1', N'Mustafa Yaşar', N'ÖZKAN', N'admin@baymyo.com', N'369B92F948CA9407A39157B0BCFDE0BD', N'A,E,U,T,R', N'8bdfc', CAST(0x0000796400000000 AS DateTime), CAST(0x00009FDD01655490 AS DateTime), 1, 1, 1, 1, 1, 1)
INSERT [dbo].[Hesap] ([ID], [IP], [Adi], [Soyadi], [Mail], [Sifre], [Roller], [OnayKodu], [DogumTarihi], [KayitTarihi], [Cinsiyet], [Tipi], [Yorum], [Abonelik], [Aktivasyon], [Aktif]) VALUES (N'9195bbc0-1ea7-4cf1-9976-828cfead3468', N'::1', N'Mustafa Yaşar', N'ÖZKAN', N'myo@baymyo.com', N'369B92F948CA9407A39157B0BCFDE0BD', N'U', N'f952a', CAST(0x00007A5700000000 AS DateTime), CAST(0x00009FF500F6699A AS DateTime), 1, 4, 1, 1, 1, 1)
INSERT [dbo].[Hesap] ([ID], [IP], [Adi], [Soyadi], [Mail], [Sifre], [Roller], [OnayKodu], [DogumTarihi], [KayitTarihi], [Cinsiyet], [Tipi], [Yorum], [Abonelik], [Aktivasyon], [Aktif]) VALUES (N'5e23788e-ff4a-45d9-bed3-bffe1423a8ca', N'::1', N'Sezgin Zühtü', N'ÖZKAN', N'sonmyo@hotmail.com', N'369B92F948CA9407A39157B0BCFDE0BD', N'E,U', N'bedbc', CAST(0x0000950700000000 AS DateTime), CAST(0x00009FF500F5B6BC AS DateTime), 1, 3, 1, 1, 1, 1)
/****** Object:  Table [dbo].[Kategori]    Script Date: 03/10/2013 09:02:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Kategori](
	[ID] [varchar](25) NOT NULL,
	[ParentID] [varchar](25) NULL,
	[ModulID] [varchar](15) NULL,
	[Adi] [nvarchar](35) NULL,
	[Dil] [varchar](6) NULL,
	[Sira] [tinyint] NULL,
	[Tab] [bit] NULL,
	[Menu] [bit] NULL,
	[Aktif] [bit] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Kategori] ([ID], [ParentID], [ModulID], [Adi], [Dil], [Sira], [Tab], [Menu], [Aktif]) VALUES (N'0002', N'0', N'makale', N'Cildiye', N'tr-TR', 0, 1, 1, 1)
INSERT [dbo].[Kategori] ([ID], [ParentID], [ModulID], [Adi], [Dil], [Sira], [Tab], [Menu], [Aktif]) VALUES (N'0003', N'0', N'makale', N'Ortopedi', N'tr-TR', 0, 1, 1, 1)
INSERT [dbo].[Kategori] ([ID], [ParentID], [ModulID], [Adi], [Dil], [Sira], [Tab], [Menu], [Aktif]) VALUES (N'0004', N'0', N'makale', N'Çocuk', N'tr-TR', 0, 1, 1, 1)
INSERT [dbo].[Kategori] ([ID], [ParentID], [ModulID], [Adi], [Dil], [Sira], [Tab], [Menu], [Aktif]) VALUES (N'0005', N'0', N'makale', N'Dahiliye', N'tr-TR', 0, 1, 1, 1)
INSERT [dbo].[Kategori] ([ID], [ParentID], [ModulID], [Adi], [Dil], [Sira], [Tab], [Menu], [Aktif]) VALUES (N'0006', N'0', N'makale', N'Nöroloji', N'tr-TR', 0, 1, 1, 1)
INSERT [dbo].[Kategori] ([ID], [ParentID], [ModulID], [Adi], [Dil], [Sira], [Tab], [Menu], [Aktif]) VALUES (N'0001,0002,0001', N'0001,0002', N'makale', N'Tüp Bebek', N'tr-TR', 0, 1, 1, 1)
INSERT [dbo].[Kategori] ([ID], [ParentID], [ModulID], [Adi], [Dil], [Sira], [Tab], [Menu], [Aktif]) VALUES (N'0001,0001', N'0001', N'makale', N'Cinsel Sorunlar', N'tr-TR', 0, 1, 1, 1)
INSERT [dbo].[Kategori] ([ID], [ParentID], [ModulID], [Adi], [Dil], [Sira], [Tab], [Menu], [Aktif]) VALUES (N'0001,0002', N'0001', N'makale', N'Gebelik', N'tr-TR', 0, 1, 1, 1)
INSERT [dbo].[Kategori] ([ID], [ParentID], [ModulID], [Adi], [Dil], [Sira], [Tab], [Menu], [Aktif]) VALUES (N'0001,0002,0002', N'0001,0002', N'makale', N'Üreme Sağlığı', N'tr-TR', 0, 1, 1, 1)
INSERT [dbo].[Kategori] ([ID], [ParentID], [ModulID], [Adi], [Dil], [Sira], [Tab], [Menu], [Aktif]) VALUES (N'0001,0003', N'0001', N'makale', N'Doğum Kontrolü', N'tr-TR', 0, 1, 1, 1)
INSERT [dbo].[Kategori] ([ID], [ParentID], [ModulID], [Adi], [Dil], [Sira], [Tab], [Menu], [Aktif]) VALUES (N'0001,0004', N'0001', N'makale', N'Zührevi Hastalklar', N'tr-TR', 0, 1, 1, 1)
INSERT [dbo].[Kategori] ([ID], [ParentID], [ModulID], [Adi], [Dil], [Sira], [Tab], [Menu], [Aktif]) VALUES (N'0007', N'0', N'makale', N'Genel Cerrahi', N'tr-TR', 0, 1, 1, 1)
INSERT [dbo].[Kategori] ([ID], [ParentID], [ModulID], [Adi], [Dil], [Sira], [Tab], [Menu], [Aktif]) VALUES (N'0008', N'0', N'makale', N'Kan Hastalklar', N'tr-TR', 0, 1, 1, 1)
INSERT [dbo].[Kategori] ([ID], [ParentID], [ModulID], [Adi], [Dil], [Sira], [Tab], [Menu], [Aktif]) VALUES (N'0009', N'0', N'makale', N'Mevsim Hastalklar', N'tr-TR', 0, 1, 1, 1)
INSERT [dbo].[Kategori] ([ID], [ParentID], [ModulID], [Adi], [Dil], [Sira], [Tab], [Menu], [Aktif]) VALUES (N'0009,0001', N'0009', N'makale', N'Domuz Gribi', N'tr-TR', 0, 1, 1, 1)
INSERT [dbo].[Kategori] ([ID], [ParentID], [ModulID], [Adi], [Dil], [Sira], [Tab], [Menu], [Aktif]) VALUES (N'0010', N'0', N'makale', N'Kalp - Damar', N'tr-TR', 0, 1, 1, 1)
INSERT [dbo].[Kategori] ([ID], [ParentID], [ModulID], [Adi], [Dil], [Sira], [Tab], [Menu], [Aktif]) VALUES (N'0009,0002', N'0009', N'makale', N'Kuş Gribi', N'tr-TR', 0, 1, 1, 1)
INSERT [dbo].[Kategori] ([ID], [ParentID], [ModulID], [Adi], [Dil], [Sira], [Tab], [Menu], [Aktif]) VALUES (N'0009,0003', N'0009', N'makale', N'Deli Dana Hastalığı', N'tr-TR', 0, 1, 1, 1)
INSERT [dbo].[Kategori] ([ID], [ParentID], [ModulID], [Adi], [Dil], [Sira], [Tab], [Menu], [Aktif]) VALUES (N'0009,0004', N'0009', N'makale', N'Yalancı Bahar', N'tr-TR', 0, 1, 1, 1)
INSERT [dbo].[Kategori] ([ID], [ParentID], [ModulID], [Adi], [Dil], [Sira], [Tab], [Menu], [Aktif]) VALUES (N'0009,0005', N'0009', N'makale', N'Güneş Çarpması', N'tr-TR', 0, 1, 1, 1)
INSERT [dbo].[Kategori] ([ID], [ParentID], [ModulID], [Adi], [Dil], [Sira], [Tab], [Menu], [Aktif]) VALUES (N'0001', N'0', N'uzmanlik', N'Ortodonti', N'tr-TR', 0, 1, 1, 1)
INSERT [dbo].[Kategori] ([ID], [ParentID], [ModulID], [Adi], [Dil], [Sira], [Tab], [Menu], [Aktif]) VALUES (N'0002', N'0', N'haber', N'Medikal Haberler', N'tr-TR', 0, 1, 1, 1)
INSERT [dbo].[Kategori] ([ID], [ParentID], [ModulID], [Adi], [Dil], [Sira], [Tab], [Menu], [Aktif]) VALUES (N'0002', N'0', N'uzmanlik', N'Radyodiagnostik', N'tr-TR', 0, 1, 1, 1)
INSERT [dbo].[Kategori] ([ID], [ParentID], [ModulID], [Adi], [Dil], [Sira], [Tab], [Menu], [Aktif]) VALUES (N'0003', N'0', N'uzmanlik', N'Göz Hastalıkları', N'tr-TR', 0, 1, 1, 1)
INSERT [dbo].[Kategori] ([ID], [ParentID], [ModulID], [Adi], [Dil], [Sira], [Tab], [Menu], [Aktif]) VALUES (N'0004', N'0', N'uzmanlik', N'Nöroloji', N'tr-TR', 0, 1, 1, 1)
INSERT [dbo].[Kategori] ([ID], [ParentID], [ModulID], [Adi], [Dil], [Sira], [Tab], [Menu], [Aktif]) VALUES (N'0001', N'0', N'makale', N'Cinsel Sağlık', N'tr-TR', 0, 1, 1, 1)
INSERT [dbo].[Kategori] ([ID], [ParentID], [ModulID], [Adi], [Dil], [Sira], [Tab], [Menu], [Aktif]) VALUES (N'0001', N'0', N'unvan', N'Prof. Dr.', N'tr-TR', 0, 1, 1, 1)
INSERT [dbo].[Kategori] ([ID], [ParentID], [ModulID], [Adi], [Dil], [Sira], [Tab], [Menu], [Aktif]) VALUES (N'0002', N'0', N'unvan', N'Doç. Dr.', N'tr-TR', 0, 1, 1, 1)
INSERT [dbo].[Kategori] ([ID], [ParentID], [ModulID], [Adi], [Dil], [Sira], [Tab], [Menu], [Aktif]) VALUES (N'0003', N'0', N'unvan', N'Yard. Doç. Dr.', N'tr-TR', 0, 1, 1, 1)
INSERT [dbo].[Kategori] ([ID], [ParentID], [ModulID], [Adi], [Dil], [Sira], [Tab], [Menu], [Aktif]) VALUES (N'0004', N'0', N'unvan', N'Op. Dr.', N'tr-TR', 0, 1, 1, 1)
INSERT [dbo].[Kategori] ([ID], [ParentID], [ModulID], [Adi], [Dil], [Sira], [Tab], [Menu], [Aktif]) VALUES (N'0005', N'0', N'unvan', N'Uzm. Dr.', N'tr-TR', 0, 0, 1, 1)
INSERT [dbo].[Kategori] ([ID], [ParentID], [ModulID], [Adi], [Dil], [Sira], [Tab], [Menu], [Aktif]) VALUES (N'0006', N'0', N'unvan', N'Pratisyen Dr.', N'tr-TR', 0, 0, 1, 1)
INSERT [dbo].[Kategori] ([ID], [ParentID], [ModulID], [Adi], [Dil], [Sira], [Tab], [Menu], [Aktif]) VALUES (N'0007', N'0', N'unvan', N'Dr.', N'tr-TR', 0, 0, 1, 1)
INSERT [dbo].[Kategori] ([ID], [ParentID], [ModulID], [Adi], [Dil], [Sira], [Tab], [Menu], [Aktif]) VALUES (N'0008', N'0', N'unvan', N'Dr. Dt.', N'tr-TR', 0, 0, 1, 1)
INSERT [dbo].[Kategori] ([ID], [ParentID], [ModulID], [Adi], [Dil], [Sira], [Tab], [Menu], [Aktif]) VALUES (N'0009', N'0', N'unvan', N'Dt.', N'tr-TR', 0, 0, 1, 1)
INSERT [dbo].[Kategori] ([ID], [ParentID], [ModulID], [Adi], [Dil], [Sira], [Tab], [Menu], [Aktif]) VALUES (N'0010', N'0', N'unvan', N'Uzman Dt.', N'tr-TR', 0, 0, 1, 1)
INSERT [dbo].[Kategori] ([ID], [ParentID], [ModulID], [Adi], [Dil], [Sira], [Tab], [Menu], [Aktif]) VALUES (N'0011', N'0', N'unvan', N'Uzm. Psk.', N'tr-TR', 0, 0, 1, 1)
INSERT [dbo].[Kategori] ([ID], [ParentID], [ModulID], [Adi], [Dil], [Sira], [Tab], [Menu], [Aktif]) VALUES (N'0012', N'0', N'unvan', N'Dr. Psk.', N'tr-TR', 0, 0, 1, 1)
INSERT [dbo].[Kategori] ([ID], [ParentID], [ModulID], [Adi], [Dil], [Sira], [Tab], [Menu], [Aktif]) VALUES (N'0013', N'0', N'unvan', N'Psk.', N'tr-TR', 0, 0, 1, 1)
INSERT [dbo].[Kategori] ([ID], [ParentID], [ModulID], [Adi], [Dil], [Sira], [Tab], [Menu], [Aktif]) VALUES (N'0014', N'0', N'unvan', N'Dyt.', N'tr-TR', 0, 0, 1, 1)
INSERT [dbo].[Kategori] ([ID], [ParentID], [ModulID], [Adi], [Dil], [Sira], [Tab], [Menu], [Aktif]) VALUES (N'0015', N'0', N'unvan', N'Psk. Dan.', N'tr-TR', 0, 0, 1, 1)
INSERT [dbo].[Kategori] ([ID], [ParentID], [ModulID], [Adi], [Dil], [Sira], [Tab], [Menu], [Aktif]) VALUES (N'0016', N'0', N'unvan', N'Fzt.', N'tr-TR', 0, 0, 1, 1)
INSERT [dbo].[Kategori] ([ID], [ParentID], [ModulID], [Adi], [Dil], [Sira], [Tab], [Menu], [Aktif]) VALUES (N'0017', N'0', N'unvan', N'Psik.Danş', N'tr-TR', 0, 0, 1, 1)
INSERT [dbo].[Kategori] ([ID], [ParentID], [ModulID], [Adi], [Dil], [Sira], [Tab], [Menu], [Aktif]) VALUES (N'0018', N'0', N'unvan', N'Uzman Pedagog', N'tr-TR', 0, 0, 1, 1)
INSERT [dbo].[Kategori] ([ID], [ParentID], [ModulID], [Adi], [Dil], [Sira], [Tab], [Menu], [Aktif]) VALUES (N'0019', N'0', N'unvan', N'Uzm.Psk.Dan.', N'tr-TR', 0, 0, 1, 1)
INSERT [dbo].[Kategori] ([ID], [ParentID], [ModulID], [Adi], [Dil], [Sira], [Tab], [Menu], [Aktif]) VALUES (N'0020', N'0', N'unvan', N'Vet.', N'tr-TR', 0, 0, 1, 1)
INSERT [dbo].[Kategori] ([ID], [ParentID], [ModulID], [Adi], [Dil], [Sira], [Tab], [Menu], [Aktif]) VALUES (N'0021', N'0', N'unvan', N'Çocuk Glş. Uzm.', N'tr-TR', 0, 0, 1, 1)
INSERT [dbo].[Kategori] ([ID], [ParentID], [ModulID], [Adi], [Dil], [Sira], [Tab], [Menu], [Aktif]) VALUES (N'0022', N'0', N'unvan', N'Dil Knş. Bzk. Uzm.', N'tr-TR', 0, 0, 1, 1)
INSERT [dbo].[Kategori] ([ID], [ParentID], [ModulID], [Adi], [Dil], [Sira], [Tab], [Menu], [Aktif]) VALUES (N'0001', N'0', N'video', N'Gebelik ve Doğum', N'tr-TR', 0, 0, 1, 1)
INSERT [dbo].[Kategori] ([ID], [ParentID], [ModulID], [Adi], [Dil], [Sira], [Tab], [Menu], [Aktif]) VALUES (N'0002', N'0', N'video', N'Genel Sağlık', N'tr-TR', 0, 0, 1, 1)
INSERT [dbo].[Kategori] ([ID], [ParentID], [ModulID], [Adi], [Dil], [Sira], [Tab], [Menu], [Aktif]) VALUES (N'0003', N'0', N'video', N'Deri hastalıkları', N'tr-TR', 0, 0, 1, 1)
INSERT [dbo].[Kategori] ([ID], [ParentID], [ModulID], [Adi], [Dil], [Sira], [Tab], [Menu], [Aktif]) VALUES (N'0003', N'0', N'haber', N'Güncel Haberler', N'tr-TR', 0, 0, 1, 1)
INSERT [dbo].[Kategori] ([ID], [ParentID], [ModulID], [Adi], [Dil], [Sira], [Tab], [Menu], [Aktif]) VALUES (N'0005', N'0', N'uzmanlik', N'Üroloji', N'tr-TR', 0, 0, 1, 1)
INSERT [dbo].[Kategori] ([ID], [ParentID], [ModulID], [Adi], [Dil], [Sira], [Tab], [Menu], [Aktif]) VALUES (N'0006', N'0', N'uzmanlik', N'Kardioloji', N'tr-TR', 0, 0, 1, 1)
INSERT [dbo].[Kategori] ([ID], [ParentID], [ModulID], [Adi], [Dil], [Sira], [Tab], [Menu], [Aktif]) VALUES (N'0007', N'0', N'uzmanlik', N'Radyoloji', N'tr-TR', 0, 0, 1, 1)
INSERT [dbo].[Kategori] ([ID], [ParentID], [ModulID], [Adi], [Dil], [Sira], [Tab], [Menu], [Aktif]) VALUES (N'0008', N'0', N'uzmanlik', N'Çocuk Sağlığı', N'tr-TR', 0, 0, 1, 1)
INSERT [dbo].[Kategori] ([ID], [ParentID], [ModulID], [Adi], [Dil], [Sira], [Tab], [Menu], [Aktif]) VALUES (N'0009', N'0', N'uzmanlik', N'Genel Cerrahi', N'tr-TR', 0, 0, 1, 1)
INSERT [dbo].[Kategori] ([ID], [ParentID], [ModulID], [Adi], [Dil], [Sira], [Tab], [Menu], [Aktif]) VALUES (N'0010', N'0', N'uzmanlik', N'Onkoloji', N'tr-TR', 0, 0, 1, 1)
INSERT [dbo].[Kategori] ([ID], [ParentID], [ModulID], [Adi], [Dil], [Sira], [Tab], [Menu], [Aktif]) VALUES (N'0001', N'0', N'hastaneunvan', N'Devlet Hastanesi', N'tr-TR', 0, 0, 1, 1)
INSERT [dbo].[Kategori] ([ID], [ParentID], [ModulID], [Adi], [Dil], [Sira], [Tab], [Menu], [Aktif]) VALUES (N'0002', N'0', N'hastaneunvan', N'SSK Hastanesi', N'tr-TR', 0, 0, 1, 1)
INSERT [dbo].[Kategori] ([ID], [ParentID], [ModulID], [Adi], [Dil], [Sira], [Tab], [Menu], [Aktif]) VALUES (N'0003', N'0', N'hastaneunvan', N'Üniversite Hastanesi', N'tr-TR', 0, 0, 1, 1)
INSERT [dbo].[Kategori] ([ID], [ParentID], [ModulID], [Adi], [Dil], [Sira], [Tab], [Menu], [Aktif]) VALUES (N'0005', N'0', N'hastaneuzmanlik', N'Eğitim ve Araştırma', N'tr-TR', 0, 0, 1, 1)
INSERT [dbo].[Kategori] ([ID], [ParentID], [ModulID], [Adi], [Dil], [Sira], [Tab], [Menu], [Aktif]) VALUES (N'0005', N'0', N'hastaneunvan', N'Özel Hastane', N'tr-TR', 0, 0, 1, 1)
INSERT [dbo].[Kategori] ([ID], [ParentID], [ModulID], [Adi], [Dil], [Sira], [Tab], [Menu], [Aktif]) VALUES (N'0001', N'0', N'hastaneuzmanlik', N'Genel Sağlık Merkezi', N'tr-TR', 0, 0, 1, 1)
INSERT [dbo].[Kategori] ([ID], [ParentID], [ModulID], [Adi], [Dil], [Sira], [Tab], [Menu], [Aktif]) VALUES (N'0002', N'0', N'hastaneuzmanlik', N'Ağız ve Diş Sağlığı', N'tr-TR', 0, 0, 1, 1)
INSERT [dbo].[Kategori] ([ID], [ParentID], [ModulID], [Adi], [Dil], [Sira], [Tab], [Menu], [Aktif]) VALUES (N'0006', N'0', N'hastaneunvan', N'Sağlık Ocağı', N'tr-TR', 0, 0, 1, 1)
INSERT [dbo].[Kategori] ([ID], [ParentID], [ModulID], [Adi], [Dil], [Sira], [Tab], [Menu], [Aktif]) VALUES (N'0007', N'0', N'hastaneunvan', N'Poliklinik', N'tr-TR', 0, 0, 1, 1)
INSERT [dbo].[Kategori] ([ID], [ParentID], [ModulID], [Adi], [Dil], [Sira], [Tab], [Menu], [Aktif]) VALUES (N'0008', N'0', N'hastaneunvan', N'Kan Merkezi', N'tr-TR', 0, 0, 1, 1)
INSERT [dbo].[Kategori] ([ID], [ParentID], [ModulID], [Adi], [Dil], [Sira], [Tab], [Menu], [Aktif]) VALUES (N'0006', N'0', N'hastaneuzmanlik', N'Aile Hekimliği', N'tr-TR', 0, 0, 1, 1)
INSERT [dbo].[Kategori] ([ID], [ParentID], [ModulID], [Adi], [Dil], [Sira], [Tab], [Menu], [Aktif]) VALUES (N'0010', N'0', N'hastaneunvan', N'Laboratuar', N'tr-TR', 0, 0, 1, 1)
INSERT [dbo].[Kategori] ([ID], [ParentID], [ModulID], [Adi], [Dil], [Sira], [Tab], [Menu], [Aktif]) VALUES (N'0007', N'0', N'hastaneuzmanlik', N'Tıp Merkezi', N'tr-TR', 0, 0, 1, 1)
INSERT [dbo].[Kategori] ([ID], [ParentID], [ModulID], [Adi], [Dil], [Sira], [Tab], [Menu], [Aktif]) VALUES (N'0003', N'0', N'hastaneuzmanlik', N'Kadın Doğum ve Çocuk Bakımevi', N'tr-TR', 0, 0, 1, 1)
INSERT [dbo].[Kategori] ([ID], [ParentID], [ModulID], [Adi], [Dil], [Sira], [Tab], [Menu], [Aktif]) VALUES (N'0004', N'0', N'hastaneuzmanlik', N'Kadın Doğum ve Çocuk Hastalıkları', N'tr-TR', 0, 0, 1, 1)
INSERT [dbo].[Kategori] ([ID], [ParentID], [ModulID], [Adi], [Dil], [Sira], [Tab], [Menu], [Aktif]) VALUES (N'0008', N'0', N'hastaneuzmanlik', N'Diş Hekimliği', N'tr-TR', 0, 0, 1, 1)
INSERT [dbo].[Kategori] ([ID], [ParentID], [ModulID], [Adi], [Dil], [Sira], [Tab], [Menu], [Aktif]) VALUES (N'0009', N'0', N'hastaneuzmanlik', N'Göz Hastalıkları', N'tr-TR', 0, 0, 1, 1)
INSERT [dbo].[Kategori] ([ID], [ParentID], [ModulID], [Adi], [Dil], [Sira], [Tab], [Menu], [Aktif]) VALUES (N'0010', N'0', N'hastaneuzmanlik', N'Acil Tıp ve İlk Yardım', N'tr-TR', 0, 0, 1, 1)
INSERT [dbo].[Kategori] ([ID], [ParentID], [ModulID], [Adi], [Dil], [Sira], [Tab], [Menu], [Aktif]) VALUES (N'0011', N'0', N'hastaneuzmanlik', N'Alternatif Tıp', N'tr-TR', 0, 0, 1, 1)
INSERT [dbo].[Kategori] ([ID], [ParentID], [ModulID], [Adi], [Dil], [Sira], [Tab], [Menu], [Aktif]) VALUES (N'0012', N'0', N'hastaneuzmanlik', N'Çocuk Psikolojisi', N'tr-TR', 0, 0, 1, 1)
INSERT [dbo].[Kategori] ([ID], [ParentID], [ModulID], [Adi], [Dil], [Sira], [Tab], [Menu], [Aktif]) VALUES (N'0013', N'0', N'hastaneuzmanlik', N'Oksijen Tedavi ve Yara Bakımı', N'tr-TR', 0, 0, 1, 1)
INSERT [dbo].[Kategori] ([ID], [ParentID], [ModulID], [Adi], [Dil], [Sira], [Tab], [Menu], [Aktif]) VALUES (N'0014', N'0', N'hastaneuzmanlik', N'Uygulama ve Araştırma', N'tr-TR', 0, 0, 1, 1)
INSERT [dbo].[Kategori] ([ID], [ParentID], [ModulID], [Adi], [Dil], [Sira], [Tab], [Menu], [Aktif]) VALUES (N'0015', N'0', N'hastaneuzmanlik', N'Göğüs Hastalıkları', N'tr-TR', 0, 0, 1, 1)
/****** Object:  Table [dbo].[Mesaj]    Script Date: 03/10/2013 09:02:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Mesaj](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[HesapID] [uniqueidentifier] NULL,
	[IP] [varchar](15) NULL,
	[Adi] [nvarchar](35) NULL,
	[Mail] [varchar](60) NULL,
	[Telefon] [varchar](16) NULL,
	[Konu] [nvarchar](50) NULL,
	[Icerik] [nvarchar](1000) NULL,
	[Yanit] [nvarchar](1500) NULL,
	[KayitTarihi] [datetime] NULL,
	[GuncellemeTarihi] [datetime] NULL,
	[Durum] [tinyint] NULL,
	[YoneticiOnay] [bit] NULL,
	[Aktif] [bit] NULL,
 CONSTRAINT [PK_Mesaj] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Manset]    Script Date: 03/10/2013 09:02:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Manset](
	[ID] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[ModulID] [varchar](15) NULL,
	[IcerikID] [varchar](40) NULL,
	[ResimKucuk] [varchar](50) NULL,
	[ResimUrl] [varchar](50) NULL,
	[Baslik] [nvarchar](75) NULL,
	[Aciklama] [nvarchar](250) NULL,
	[KayitTarihi] [datetime] NULL,
	[Aktif] [bit] NULL,
 CONSTRAINT [PK_Manset] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Makale]    Script Date: 03/10/2013 09:02:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Makale](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[HesapID] [uniqueidentifier] NULL,
	[KategoriID] [varchar](25) NULL,
	[ResimUrl] [varchar](50) NULL,
	[Baslik] [nvarchar](75) NULL,
	[Ozet] [nvarchar](250) NULL,
	[Icerik] [nvarchar](max) NULL,
	[Etiket] [nvarchar](100) NULL,
	[KayitTarihi] [datetime] NULL,
	[Durum] [tinyint] NULL,
	[Uye] [bit] NULL,
	[Yorum] [bit] NULL,
	[Aktif] [bit] NULL,
 CONSTRAINT [PK_Makale] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Makale] ON
INSERT [dbo].[Makale] ([ID], [HesapID], [KategoriID], [ResimUrl], [Baslik], [Ozet], [Icerik], [Etiket], [KayitTarihi], [Durum], [Uye], [Yorum], [Aktif]) VALUES (1, N'a1855562-114e-4de4-adb9-59aeb6eef1a2', N'0003', N'', N'Anonymous Bütün İnterneti Çökertecek', N'ABD senatosunda görüşülen SOPA''ya en başından beri şiddetle karşı çıkan Anonymous, ses getirmesine kesin gözüyle bakılan yeni eyleminin hazırlıklarını gerçekleştiriyor.', N'<p>Bilindiği &uuml;zere <strong>SOPA (Stop Online Piracy Act)</strong>, ABD senatosunda konuşulmaya başladığı andan itibaren <strong>tartışmalara neden olmuştu</strong>. SOPA''ya şiddetle karşı &ccedil;ıkanların başında ise <strong>&uuml;nl&uuml; Hacktivist grup Anonymous</strong> yer alıyordu.<br /><br />SOPA''nın internetteki <strong>&ouml;zg&uuml;r bilgi akışını baltalamaya</strong> y&ouml;nelik bir adım olduğunu en başından beri savunan Anonymous, <strong>eskisi kadar g&uuml;ndemde olmayan bu konu</strong> i&ccedil;in sıradışı bir eylem hazırlığında. Eylemin ismi ise <strong>Operation Blackout</strong> olarak a&ccedil;ıklandı.</p>
<p>Anonymous, başarılı olabilirse<strong> 31 Mart''ta</strong> internet kullanıcıları <strong>web sitelerine erişemeyecek</strong>. Anonymous''un bunu daha &ouml;nce doğrudan sitelere uyguladığı ve sitelere erişimi engelleyen <strong>DDoS saldırısını DNS dizinlerine</strong> uygulayarak ger&ccedil;ekleştireceği a&ccedil;ıklandı. <strong>DNS dizinlerine erişimin engellenmesi</strong> durumunda ise kullanıcılar ziyaret ettikleri sitelerin <strong>IP adreslerini bilmiyorlarsa</strong> bu sitelere erişemeyecekler.<br /><br />Anonymous''un bu <strong>saldırısı başarılı olur mu ya da SOPA g&ouml;r&uuml;şmelerinde bir şey değişir</strong> mi bilemiyoruz ama eğer Anonymous bunu da ger&ccedil;ekleştirebilirse <strong>d&uuml;nya tarihinin en &ccedil;ok ses getiren online saldırısına </strong>tanık olma ihtimalimiz y&uuml;ksek.</p>', N'elma,meyve,sebze,bahçe', CAST(0x0000A02801496BA4 AS DateTime), 0, 0, 1, 1)
SET IDENTITY_INSERT [dbo].[Makale] OFF
/****** Object:  StoredProcedure [dbo].[Kategori_Update]    Script Date: 03/10/2013 09:02:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Kategori_Update]
@ID varchar(25),
@ParentID varchar(25),
@ModulID varchar(15),
@Adi nvarchar(35),
@Dil varchar(6),
@Sira tinyint,
@Tab bit,
@Menu bit,
@Aktif bit
AS
BEGIN
	if (SELECT COUNT(ID) FROM [Kategori] WHERE ModulID=@ModulID AND ID<>@ID AND Adi=@Adi) > 0 
	begin
		return 0
	end
	else
	begin
		UPDATE [Kategori] 
		SET ParentID=@ParentID,Adi=@Adi,Dil=@Dil,Sira=@Sira,Tab=@Tab,Menu=@Menu,Aktif=@Aktif
		WHERE ID=@ID AND ModulID=@ModulID
	end
END
GO
/****** Object:  StoredProcedure [dbo].[Kategori_Insert]    Script Date: 03/10/2013 09:02:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Kategori_Insert] 
@ID varchar(25),
@ParentID varchar(25),
@ModulID varchar(15),
@Adi nvarchar(35),
@Dil varchar(6),
@Sira tinyint,
@Tab bit,
@Menu bit,
@Aktif bit
AS
BEGIN
	if (SELECT COUNT(ID) FROM [Kategori] WHERE ModulID=@ModulID AND ID<>@ID AND Adi=@Adi) > 0 
	begin
		return 0
	end
	else
	begin
		INSERT INTO [Kategori] (ID,ParentID,ModulID,Adi,Dil,Sira,Tab,Menu,Aktif) 
		VALUES(@ID,@ParentID,@ModulID,@Adi,@Dil,@Sira,@Tab,@Menu,@Aktif)
	end
END
GO
/****** Object:  StoredProcedure [dbo].[Hesap_Update]    Script Date: 03/10/2013 09:02:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Hesap_Update]
@ID uniqueidentifier,
@IP varchar(15),
@Adi nvarchar(18),
@Soyadi nvarchar(15),
@Mail varchar(60),
@Sifre varchar(34),
@Roller varchar(50),
@OnayKodu varchar(5),
@DogumTarihi datetime,
@KayitTarihi datetime,
@Cinsiyet tinyint,
@Tipi tinyint,
@Yorum bit,
@Abonelik bit,
@Aktivasyon bit,
@Aktif bit
AS
BEGIN
	if (SELECT COUNT(ID) FROM Hesap WHERE ID<>@ID AND Mail=@Mail) > 0 
	begin
		return 0
	end
	else
	begin
		UPDATE Hesap 
		SET IP=@IP,Adi=@Adi,Soyadi=@Soyadi,Mail=@Mail,Sifre=@Sifre,Roller=@Roller,OnayKodu=@OnayKodu,DogumTarihi=@DogumTarihi,KayitTarihi=@KayitTarihi,Cinsiyet=@Cinsiyet,Tipi=@Tipi,Yorum=@Yorum,Abonelik=@Abonelik,Aktivasyon=@Aktivasyon,Aktif=@Aktif 
		WHERE ID=@ID
	end
END
GO
/****** Object:  StoredProcedure [dbo].[Hesap_Insert]    Script Date: 03/10/2013 09:02:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Hesap_Insert] 
@IP varchar(15),
@Adi nvarchar(18),
@Soyadi nvarchar(15),
@Mail varchar(60),
@Sifre varchar(34),
@Roller varchar(50),
@OnayKodu varchar(5),
@DogumTarihi datetime,
@KayitTarihi datetime,
@Cinsiyet tinyint,
@Tipi tinyint,
@Yorum bit,
@Abonelik bit,
@Aktivasyon bit,
@Aktif bit
AS
BEGIN
	if (SELECT COUNT(ID) FROM Hesap WHERE Mail=@Mail) > 0 
	begin
		SELECT 'EMAIL'
	end
	else
	begin
		INSERT INTO Hesap (IP,Adi,Soyadi,Mail,Sifre,Roller,OnayKodu,DogumTarihi,KayitTarihi,Cinsiyet,Tipi,Yorum,Abonelik,Aktivasyon,Aktif) 
		VALUES(@IP,@Adi,@Soyadi,@Mail,@Sifre,@Roller,@OnayKodu,@DogumTarihi,@KayitTarihi,@Cinsiyet,@Tipi,@Yorum,@Abonelik,@Aktivasyon,@Aktif); 
		SELECT TOP(1) ID FROM Hesap WHERE Mail=@Mail;
	end
END
GO
/****** Object:  Table [dbo].[CalismaAlani]    Script Date: 03/10/2013 09:02:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CalismaAlani](
	[ID] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[HesapID] [uniqueidentifier] NULL,
	[Kurum] [nvarchar](100) NULL,
	[Telefon] [varchar](16) NULL,
	[Adres] [nvarchar](100) NULL,
	[Semt] [nvarchar](30) NULL,
	[Sehir] [nvarchar](30) NULL,
	[WebSitesi] [varchar](60) NULL,
	[Randevu] [bit] NULL,
	[Varsayilan] [bit] NULL,
	[Aktif] [bit] NULL,
 CONSTRAINT [PK_CalismaAlani] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[CalismaAlani] ([ID], [HesapID], [Kurum], [Telefon], [Adres], [Semt], [Sehir], [WebSitesi], [Randevu], [Varsayilan], [Aktif]) VALUES (N'caa17c3f-9cb3-4305-abbd-72a6fe9214d2', N'5e23788e-ff4a-45d9-bed3-bffe1423a8ca', N'İskenderun Devlet Hastanesi', N'05442844054', N'Çay Mahallesi 93. Sokak No: 7', N'İskenderun', N'HATAY', N'www.baymyo.com', 0, 1, 1)
/****** Object:  UserDefinedFunction [dbo].[GetHesapTipi]    Script Date: 03/10/2013 09:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[GetHesapTipi] 
(
@Mail varchar(60)
)
RETURNS varchar(10)
AS
BEGIN
	DECLARE @DonenDeger varchar(10)
	SET @DonenDeger=(SELECT TOP(1) case Tipi when 1 then 'admin' when 2 then 'moderator' when 3 then 'editor' when 4 then 'standart' END as Turu FROM dbo.Hesap WHERE Mail=@Mail)
	return ISNULL(@DonenDeger,'standart')
END
GO
/****** Object:  UserDefinedFunction [dbo].[GetGosterimOran]    Script Date: 03/10/2013 09:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[GetGosterimOran] 
(
@ModulID varchar(15),
@IcerikID varchar(50)
)
RETURNS int
AS
BEGIN
	return (SELECT COUNT(distinct IP) FROM dbo.Gosterim WHERE ModulID=@ModulID AND IcerikID=@IcerikID);
END
GO
/****** Object:  UserDefinedFunction [dbo].[GetKategoriAdi]    Script Date: 03/10/2013 09:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[GetKategoriAdi] 
(
@ModulID varchar(15),
@IcerikID varchar(50)
)
RETURNS varchar(50)
AS
BEGIN
	return (SELECT TOP(1) Adi FROM dbo.Kategori WHERE ModulID=@ModulID AND ID=@IcerikID)
END
GO
/****** Object:  UserDefinedFunction [dbo].[GetYorumSayi]    Script Date: 03/10/2013 09:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[GetYorumSayi] 
(
@ModulID varchar(15),
@IcerikID varchar(50),
@Kriter tinyint
)
RETURNS int
AS
BEGIN
DECLARE @DonenDeger int
if @Kriter=1
	begin
		SELECT @DonenDeger=Count(IcerikID) FROM Yorum
		WHERE ModulID=@ModulID AND IcerikID=@IcerikID AND Aktif=1
	end
else if @Kriter=2
	begin
		SELECT @DonenDeger=Count(IcerikID) FROM Yorum
		WHERE ModulID=@ModulID AND IcerikID=@IcerikID AND Aktif=0
	end
else if @Kriter=3
	begin
		SELECT @DonenDeger=Count(IcerikID) FROM Yorum
		WHERE ModulID=@ModulID AND IcerikID=@IcerikID
	end
return @DonenDeger
END
GO
/****** Object:  Table [dbo].[Haber]    Script Date: 03/10/2013 09:02:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Haber](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[HesapID] [uniqueidentifier] NULL,
	[KategoriID] [varchar](25) NULL,
	[ResimUrl] [varchar](50) NULL,
	[Baslik] [nvarchar](75) NULL,
	[Ozet] [nvarchar](250) NULL,
	[Icerik] [nvarchar](max) NULL,
	[Etiket] [nvarchar](100) NULL,
	[KayitTarihi] [datetime] NULL,
	[Uye] [bit] NULL,
	[Yorum] [bit] NULL,
	[Aktif] [bit] NULL,
 CONSTRAINT [PK_Haber] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Profil]    Script Date: 03/10/2013 09:02:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Profil](
	[ID] [uniqueidentifier] NOT NULL,
	[Url] [varchar](50) NOT NULL,
	[ResimUrl] [varchar](50) NULL,
	[Unvan] [varchar](4) NULL,
	[UzmanlikAlaniID] [varchar](4) NULL,
	[TCKimlikNo] [varchar](11) NULL,
	[DiplomaNo] [varchar](15) NULL,
	[Adi] [nvarchar](100) NULL,
	[Mail] [varchar](60) NULL,
	[Hakkimda] [nvarchar](1000) NULL,
 CONSTRAINT [PK_Profil] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Profil] ([ID], [Url], [ResimUrl], [Unvan], [UzmanlikAlaniID], [TCKimlikNo], [DiplomaNo], [Adi], [Mail], [Hakkimda]) VALUES (N'5e23788e-ff4a-45d9-bed3-bffe1423a8ca', N'sezginzuhtuozkan', N'sezgin-zuhtu-ozkan-104650-3377e3.jpg', N'0001', N'0003', N'11111111111', N'111111111111111', N'', N'myo@baymyo.com', N'')
/****** Object:  Table [dbo].[Video]    Script Date: 03/10/2013 09:02:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Video](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[HesapID] [uniqueidentifier] NULL,
	[KategoriID] [varchar](25) NULL,
	[ResimUrl] [varchar](50) NULL,
	[Baslik] [nvarchar](75) NULL,
	[Embed] [varchar](750) NULL,
	[Etiket] [nvarchar](100) NULL,
	[KayitTarihi] [datetime] NULL,
	[Yorum] [bit] NULL,
	[Aktif] [bit] NULL,
 CONSTRAINT [PK_Video] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Sayfa]    Script Date: 03/10/2013 09:02:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sayfa](
	[ID] [smallint] IDENTITY(1,1) NOT NULL,
	[HesapID] [uniqueidentifier] NULL,
	[Baslik] [nvarchar](50) NULL,
	[Icerik] [nvarchar](max) NULL,
	[Dil] [varchar](6) NULL,
	[KayitTarihi] [datetime] NULL,
	[Tipi] [tinyint] NULL,
	[Aktif] [bit] NULL,
 CONSTRAINT [PK_Sayfa] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[Profil_Update]    Script Date: 03/10/2013 09:02:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Profil_Update] 
@ID uniqueidentifier,
@Url varchar(50),
@ResimUrl varchar(50),
@Unvan varchar(4),
@UzmanlikAlaniID varchar(4),
@TCKimlikNo varchar(11),
@DiplomaNo varchar(15),
@Adi nvarchar(50),
@Mail varchar(60),
@Hakkimda nvarchar(1000)
AS
BEGIN
if (SELECT COUNT(ID) FROM [Profil] WHERE ID<>@ID AND Url=@Url) > 0 
	begin
		SELECT 'URL'
	end
	else if(@TCKimlikNo IS NOT NULL AND @DiplomaNo IS NOT NULL)
	begin
		if (SELECT COUNT(ID) FROM [Profil] WHERE ID<>@ID AND TCKimlikNo=@TCKimlikNo) > 0 
		begin
			SELECT 'TCKIMLIKNO'
		end
		else if (SELECT COUNT(ID) FROM [Profil] WHERE ID<>@ID AND DiplomaNo=@DiplomaNo) > 0 
		begin
			SELECT 'DIPLOMANO'
		end
		else
		begin
			UPDATE Profil 
			SET Url=@Url,ResimUrl=@ResimUrl,Unvan=@Unvan,UzmanlikAlaniID=@UzmanlikAlaniID,TCKimlikNo=@TCKimlikNo,DiplomaNo=@DiplomaNo,Adi=@Adi,Mail=@Mail,Hakkimda=@Hakkimda 
			WHERE ID=@ID;
			SELECT @ID;
		end
	end
	else if(@Adi IS NOT NULL)
	begin
		if (SELECT COUNT(ID) FROM [Profil] WHERE ID<>@ID AND Adi=@Adi) > 0 
		begin
			SELECT 'HASTANEADI'
		end
		else
		begin
			UPDATE Profil 
			SET Url=@Url,ResimUrl=@ResimUrl,Unvan=@Unvan,UzmanlikAlaniID=@UzmanlikAlaniID,TCKimlikNo=@TCKimlikNo,DiplomaNo=@DiplomaNo,Adi=@Adi,Mail=@Mail,Hakkimda=@Hakkimda 
			WHERE ID=@ID;
			SELECT @ID;
		end
	end
	else
	begin
		SELECT '0'
	end
END
GO
/****** Object:  StoredProcedure [dbo].[Profil_Insert]    Script Date: 03/10/2013 09:02:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Profil_Insert]
@ID uniqueidentifier,
@Url varchar(50),
@ResimUrl varchar(50),
@Unvan varchar(4),
@UzmanlikAlaniID varchar(4),
@TCKimlikNo varchar(11),
@DiplomaNo varchar(15),
@Adi nvarchar(50),
@Mail varchar(60),
@Hakkimda nvarchar(1000)
AS
BEGIN
	if (SELECT COUNT(ID) FROM [Profil] WHERE Url=@Url) > 0 
	begin
		SELECT 'URL'
	end
	else if(@TCKimlikNo IS NOT NULL AND @DiplomaNo IS NOT NULL)
	begin
		if (SELECT COUNT(ID) FROM [Profil] WHERE TCKimlikNo=@TCKimlikNo) > 0 
		begin
			SELECT 'TCKIMLIKNO'
		end
		else if (SELECT COUNT(ID) FROM [Profil] WHERE DiplomaNo=@DiplomaNo) > 0 
		begin
			SELECT 'DIPLOMANO'
		end
		else
		begin
			INSERT INTO [Profil] (ID,Url,ResimUrl,Unvan,UzmanlikAlaniID,TCKimlikNo,DiplomaNo,Adi,Mail,Hakkimda) VALUES(@ID,@Url,@ResimUrl,@Unvan,@UzmanlikAlaniID,@TCKimlikNo,@DiplomaNo,@Adi,@Mail,@Hakkimda)
			SELECT TOP(1) ID FROM [Profil] WHERE Url=@Url;
		end
	end
	else if(@Adi IS NOT NULL)
	begin
		if (SELECT COUNT(ID) FROM [Profil] WHERE Adi=@Adi) > 0 
		begin
			SELECT 'HASTANEADI'
		end
		else
		begin
			INSERT INTO [Profil] (ID,Url,ResimUrl,Unvan,UzmanlikAlaniID,TCKimlikNo,DiplomaNo,Adi,Mail,Hakkimda) VALUES(@ID,@Url,@ResimUrl,@Unvan,@UzmanlikAlaniID,@TCKimlikNo,@DiplomaNo,@Adi,@Mail,@Hakkimda)
			SELECT TOP(1) ID FROM [Profil] WHERE Url=@Url;
		end
	end
	else
	begin
		SELECT '0'
	end
END
GO
/****** Object:  UserDefinedFunction [dbo].[GetSehir]    Script Date: 03/10/2013 09:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[GetSehir]
(
@HesapID varchar(50)
)
RETURNS nvarchar(30)
AS
BEGIN
	return (SELECT TOP(1) Sehir FROM CalismaAlani WHERE HesapID=@HesapID ORDER BY Varsayilan ASC)
END
GO
/****** Object:  UserDefinedFunction [dbo].[GetRandevuAl]    Script Date: 03/10/2013 09:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[GetRandevuAl] 
(
@HesapID varchar(50)
)
RETURNS varchar(50)
AS
BEGIN
	DECLARE @DonenDeger varchar(50)
	SELECT TOP(1) @DonenDeger=Convert(varchar(50),ID) + ';' + Convert(varchar, Randevu) FROM dbo.CalismaAlani WHERE HesapID=@HesapID AND Randevu=1
	return ISNULL(@DonenDeger,'0;0')
END
GO
/****** Object:  UserDefinedFunction [dbo].[GetProfilUrl]    Script Date: 03/10/2013 09:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[GetProfilUrl] 
(
@Mail varchar(60)
)
RETURNS varchar(50)
AS
BEGIN
	return (SELECT TOP(1) Url FROM Profil WHERE ID=(SELECT TOP(1) ID FROM Hesap WHERE Mail=@Mail))
END
GO
/****** Object:  UserDefinedFunction [dbo].[GetProfilResim]    Script Date: 03/10/2013 09:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[GetProfilResim] 
(
@Mail varchar(60)
)
RETURNS varchar(50)
AS
BEGIN
	return (SELECT TOP(1) ResimUrl FROM Profil WHERE ID=(SELECT TOP(1) ID FROM Hesap WHERE Mail=@Mail))
END
GO
/****** Object:  UserDefinedFunction [dbo].[GetHesapUrl]    Script Date: 03/10/2013 09:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[GetHesapUrl] 
(
@HesapID uniqueidentifier
)
RETURNS varchar(50)
AS
BEGIN
	return (SELECT TOP(1) Url FROM Profil WHERE ID=@HesapID)
END
GO
/****** Object:  View [dbo].[Hastaneler]    Script Date: 03/10/2013 09:02:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Hastaneler]
AS
SELECT     dbo.Profil.Url, dbo.Profil.ResimUrl, dbo.GetKategoriAdi('hastaneuzmanlik', dbo.Profil.UzmanlikAlaniID) AS UzmanlikAlani, dbo.Profil.Adi AS AdiSoyadi, 
                      dbo.Hesap.KayitTarihi, dbo.GetRandevuAl(dbo.Hesap.ID) AS Randevu, dbo.GetSehir(dbo.Hesap.ID) AS Sehir
FROM         dbo.Hesap INNER JOIN
                      dbo.Profil ON dbo.Hesap.ID = dbo.Profil.ID
WHERE     (dbo.Hesap.Aktivasyon = 1) AND (dbo.Hesap.Aktif = 1) AND (dbo.Hesap.Tipi = 2) AND (dbo.Profil.Unvan IS NOT NULL)
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4[30] 2[40] 3) )"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 3
   End
   Begin DiagramPane = 
      PaneHidden = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Hesap"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 123
               Right = 198
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Profil"
            Begin Extent = 
               Top = 6
               Left = 236
               Bottom = 123
               Right = 400
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Hastaneler'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Hastaneler'
GO
/****** Object:  View [dbo].[Doktorlar]    Script Date: 03/10/2013 09:02:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Doktorlar]
AS
SELECT     dbo.Profil.Url, dbo.Profil.ResimUrl, dbo.GetKategoriAdi('uzmanlik', dbo.Profil.UzmanlikAlaniID) AS UzmanlikAlani, dbo.GetKategoriAdi('unvan', dbo.Profil.Unvan) 
                      + ' ' + dbo.Hesap.Adi + ' ' + dbo.Hesap.Soyadi AS AdiSoyadi, dbo.Hesap.KayitTarihi, dbo.GetRandevuAl(dbo.Hesap.ID) AS Randevu, dbo.GetSehir(dbo.Hesap.ID) 
                      AS Sehir
FROM         dbo.Hesap INNER JOIN
                      dbo.Profil ON dbo.Hesap.ID = dbo.Profil.ID
WHERE     (dbo.Hesap.Aktivasyon = 1) AND (dbo.Hesap.Aktif = 1) AND (dbo.Hesap.Tipi = 3) AND (dbo.Profil.Unvan IS NOT NULL)
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4[30] 2[40] 3) )"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 3
   End
   Begin DiagramPane = 
      PaneHidden = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Hesap"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 123
               Right = 198
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Profil"
            Begin Extent = 
               Top = 6
               Left = 236
               Bottom = 123
               Right = 400
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Doktorlar'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Doktorlar'
GO
/****** Object:  Default [DF_Puan_ID]    Script Date: 03/10/2013 09:02:02 ******/
ALTER TABLE [dbo].[Begen] ADD  CONSTRAINT [DF_Puan_ID]  DEFAULT (newid()) FOR [ID]
GO
/****** Object:  Default [DF_CalismaAlani_ID]    Script Date: 03/10/2013 09:02:02 ******/
ALTER TABLE [dbo].[CalismaAlani] ADD  CONSTRAINT [DF_CalismaAlani_ID]  DEFAULT (newid()) FOR [ID]
GO
/****** Object:  Default [DF_Gosterim_ID]    Script Date: 03/10/2013 09:02:02 ******/
ALTER TABLE [dbo].[Gosterim] ADD  CONSTRAINT [DF_Gosterim_ID]  DEFAULT (newid()) FOR [ID]
GO
/****** Object:  Default [DF_Hesap_ID]    Script Date: 03/10/2013 09:02:02 ******/
ALTER TABLE [dbo].[Hesap] ADD  CONSTRAINT [DF_Hesap_ID]  DEFAULT (newid()) FOR [ID]
GO
/****** Object:  Default [DF_Hesap_Roller]    Script Date: 03/10/2013 09:02:02 ******/
ALTER TABLE [dbo].[Hesap] ADD  CONSTRAINT [DF_Hesap_Roller]  DEFAULT ('U') FOR [Roller]
GO
/****** Object:  Default [DF_Hesap_KayitTarihi]    Script Date: 03/10/2013 09:02:02 ******/
ALTER TABLE [dbo].[Hesap] ADD  CONSTRAINT [DF_Hesap_KayitTarihi]  DEFAULT (getdate()) FOR [KayitTarihi]
GO
/****** Object:  Default [DF_Hesap_Tipi]    Script Date: 03/10/2013 09:02:02 ******/
ALTER TABLE [dbo].[Hesap] ADD  CONSTRAINT [DF_Hesap_Tipi]  DEFAULT ((0)) FOR [Tipi]
GO
/****** Object:  Default [DF_Hesap_Abonelik]    Script Date: 03/10/2013 09:02:02 ******/
ALTER TABLE [dbo].[Hesap] ADD  CONSTRAINT [DF_Hesap_Abonelik]  DEFAULT ((1)) FOR [Abonelik]
GO
/****** Object:  Default [DF_Hesap_Aktivasyon]    Script Date: 03/10/2013 09:02:02 ******/
ALTER TABLE [dbo].[Hesap] ADD  CONSTRAINT [DF_Hesap_Aktivasyon]  DEFAULT ((0)) FOR [Aktivasyon]
GO
/****** Object:  Default [DF_Hesap_Aktif]    Script Date: 03/10/2013 09:02:03 ******/
ALTER TABLE [dbo].[Hesap] ADD  CONSTRAINT [DF_Hesap_Aktif]  DEFAULT ((0)) FOR [Aktif]
GO
/****** Object:  Default [DF_Manset_ID]    Script Date: 03/10/2013 09:02:03 ******/
ALTER TABLE [dbo].[Manset] ADD  CONSTRAINT [DF_Manset_ID]  DEFAULT (newid()) FOR [ID]
GO
/****** Object:  Default [DF_Randevu_ID]    Script Date: 03/10/2013 09:02:03 ******/
ALTER TABLE [dbo].[Randevu] ADD  CONSTRAINT [DF_Randevu_ID]  DEFAULT (newid()) FOR [ID]
GO
/****** Object:  Default [DF_Reklam_IsActive]    Script Date: 03/10/2013 09:02:03 ******/
ALTER TABLE [dbo].[Reklam] ADD  CONSTRAINT [DF_Reklam_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
/****** Object:  Default [DF_Yorum_ID]    Script Date: 03/10/2013 09:02:03 ******/
ALTER TABLE [dbo].[Yorum] ADD  CONSTRAINT [DF_Yorum_ID]  DEFAULT (newid()) FOR [ID]
GO
/****** Object:  ForeignKey [FK_CalismaAlani_Hesap]    Script Date: 03/10/2013 09:02:02 ******/
ALTER TABLE [dbo].[CalismaAlani]  WITH CHECK ADD  CONSTRAINT [FK_CalismaAlani_Hesap] FOREIGN KEY([HesapID])
REFERENCES [dbo].[Hesap] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CalismaAlani] CHECK CONSTRAINT [FK_CalismaAlani_Hesap]
GO
/****** Object:  ForeignKey [FK_Haber_Hesap]    Script Date: 03/10/2013 09:02:02 ******/
ALTER TABLE [dbo].[Haber]  WITH CHECK ADD  CONSTRAINT [FK_Haber_Hesap] FOREIGN KEY([HesapID])
REFERENCES [dbo].[Hesap] ([ID])
GO
ALTER TABLE [dbo].[Haber] CHECK CONSTRAINT [FK_Haber_Hesap]
GO
/****** Object:  ForeignKey [FK_Makale_Hesap]    Script Date: 03/10/2013 09:02:03 ******/
ALTER TABLE [dbo].[Makale]  WITH CHECK ADD  CONSTRAINT [FK_Makale_Hesap] FOREIGN KEY([HesapID])
REFERENCES [dbo].[Hesap] ([ID])
GO
ALTER TABLE [dbo].[Makale] CHECK CONSTRAINT [FK_Makale_Hesap]
GO
/****** Object:  ForeignKey [FK_Profil_Hesap]    Script Date: 03/10/2013 09:02:03 ******/
ALTER TABLE [dbo].[Profil]  WITH CHECK ADD  CONSTRAINT [FK_Profil_Hesap] FOREIGN KEY([ID])
REFERENCES [dbo].[Hesap] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Profil] CHECK CONSTRAINT [FK_Profil_Hesap]
GO
/****** Object:  ForeignKey [FK_Sayfa_Hesap]    Script Date: 03/10/2013 09:02:03 ******/
ALTER TABLE [dbo].[Sayfa]  WITH CHECK ADD  CONSTRAINT [FK_Sayfa_Hesap] FOREIGN KEY([HesapID])
REFERENCES [dbo].[Hesap] ([ID])
GO
ALTER TABLE [dbo].[Sayfa] CHECK CONSTRAINT [FK_Sayfa_Hesap]
GO
/****** Object:  ForeignKey [FK_Video_Hesap]    Script Date: 03/10/2013 09:02:03 ******/
ALTER TABLE [dbo].[Video]  WITH CHECK ADD  CONSTRAINT [FK_Video_Hesap] FOREIGN KEY([HesapID])
REFERENCES [dbo].[Hesap] ([ID])
GO
ALTER TABLE [dbo].[Video] CHECK CONSTRAINT [FK_Video_Hesap]
GO
