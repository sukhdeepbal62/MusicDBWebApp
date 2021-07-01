SET IDENTITY_INSERT [dbo].[Artists] ON 
GO
INSERT [dbo].[Artists] ([ArtistID], [ArtistName], [About], [Extension]) VALUES (1, N'Doja Cat', N'Amala Ratna Zandile Dlamini, known professionally as Doja Cat, is an American rapper, singer, songwriter, and record producer. Born and raised in Los Angeles, she began making and releasing music on SoundCloud as a teenager. ', N'.PNG')
GO
INSERT [dbo].[Artists] ([ArtistID], [ArtistName], [About], [Extension]) VALUES (2, N'Arthur Satan', N'Not Mention', N'.PNG')
GO
INSERT [dbo].[Artists] ([ArtistID], [ArtistName], [About], [Extension]) VALUES (3, N'Tyler', N'Tyler Gregory Okonma, better known as Tyler, the Creator, is an American rapper, musician, songwriter, record producer, actor, visual artist, designer and comedian.', N'.PNG')
GO
INSERT [dbo].[Artists] ([ArtistID], [ArtistName], [About], [Extension]) VALUES (4, N'Faye Webster', N'Faye Webster is an American indie folk musician, singer, and photographer based in Atlanta, Georgia. She self-released her debut album Run and Tell in 2013. Webster has released two albums since, Faye Webster on Awful Records, and Atlanta Millionaires Club on Secretly Canadian.', N'.PNG')
GO
INSERT [dbo].[Artists] ([ArtistID], [ArtistName], [About], [Extension]) VALUES (5, N'Modest Mouse', N'Modest Mouse is an American rock band formed in 1992 in Issaquah, Washington, and currently based in Portland, Oregon. The founding members are lead singer/guitarist Isaac Brock, drummer Jeremiah Green, and bassist Eric Judy.', N'.PNG')
GO
INSERT [dbo].[Artists] ([ArtistID], [ArtistName], [About], [Extension]) VALUES (6, N'Lucy Dacus', N'Lucy Dacus is an American indie rock singer-songwriter from Richmond, Virginia. She has released two critically acclaimed albums: No Burden and Historian, with a third, Home Video, released on June 25, 2021. In 2018, she formed Boygenius with Phoebe Bridgers and Julien Baker. ', N'.PNG')
GO
INSERT [dbo].[Artists] ([ArtistID], [ArtistName], [About], [Extension]) VALUES (7, N'John Grant', N'John Grant is an American singer-songwriter and former member of the Denver-based alternative rock band the Czars. After recording six studio albums with the Czars, he embarked on a solo career in 2010. His debut solo album Queen of Denmark was named in 2010 the best album of the year by Mojo.', N'.PNG')
GO
SET IDENTITY_INSERT [dbo].[Artists] OFF
GO
SET IDENTITY_INSERT [dbo].[Genres] ON 
GO
INSERT [dbo].[Genres] ([GenreID], [GenreName]) VALUES (1, N'ROCK')
GO
INSERT [dbo].[Genres] ([GenreID], [GenreName]) VALUES (2, N'ELECTRONIC')
GO
INSERT [dbo].[Genres] ([GenreID], [GenreName]) VALUES (3, N'POP')
GO
INSERT [dbo].[Genres] ([GenreID], [GenreName]) VALUES (4, N'HIP HOP')
GO
INSERT [dbo].[Genres] ([GenreID], [GenreName]) VALUES (5, N'FOLK')
GO
INSERT [dbo].[Genres] ([GenreID], [GenreName]) VALUES (6, N'METAL')
GO
SET IDENTITY_INSERT [dbo].[Genres] OFF
GO
SET IDENTITY_INSERT [dbo].[Albums] ON 
GO
INSERT [dbo].[Albums] ([AlbumID], [AlbumName], [Songs], [GenreID], [ArtistID], [Extension]) VALUES (1, N'Boy from Michigan', 12, 1, 7, N'.jpg')
GO
INSERT [dbo].[Albums] ([AlbumID], [AlbumName], [Songs], [GenreID], [ArtistID], [Extension]) VALUES (2, N'Queen of Denmark', 12, 2, 7, N'.PNG')
GO
INSERT [dbo].[Albums] ([AlbumID], [AlbumName], [Songs], [GenreID], [ArtistID], [Extension]) VALUES (3, N'Hot Pink', 8, 3, 1, N'.png')
GO
INSERT [dbo].[Albums] ([AlbumID], [AlbumName], [Songs], [GenreID], [ArtistID], [Extension]) VALUES (4, N'Amala', 6, 4, 1, N'.PNG')
GO
INSERT [dbo].[Albums] ([AlbumID], [AlbumName], [Songs], [GenreID], [ArtistID], [Extension]) VALUES (5, N'Igor ', 9, 5, 3, N'.jpg')
GO
INSERT [dbo].[Albums] ([AlbumID], [AlbumName], [Songs], [GenreID], [ArtistID], [Extension]) VALUES (6, N'Flower boy', 7, 6, 3, N'.png')
GO
INSERT [dbo].[Albums] ([AlbumID], [AlbumName], [Songs], [GenreID], [ArtistID], [Extension]) VALUES (7, N'Goblin', 9, 6, 3, N'.PNG')
GO
INSERT [dbo].[Albums] ([AlbumID], [AlbumName], [Songs], [GenreID], [ArtistID], [Extension]) VALUES (8, N'Atlanta Millionaires Club', 12, 1, 4, N'.jpg')
GO
INSERT [dbo].[Albums] ([AlbumID], [AlbumName], [Songs], [GenreID], [ArtistID], [Extension]) VALUES (9, N'Run and Tell', 8, 2, 4, N'.PNG')
GO
INSERT [dbo].[Albums] ([AlbumID], [AlbumName], [Songs], [GenreID], [ArtistID], [Extension]) VALUES (10, N'The Golden Casket', 9, 3, 5, N'.PNG')
GO
INSERT [dbo].[Albums] ([AlbumID], [AlbumName], [Songs], [GenreID], [ArtistID], [Extension]) VALUES (11, N'The Lonesome Crowded West', 10, 5, 5, N'.jpg')
GO
INSERT [dbo].[Albums] ([AlbumID], [AlbumName], [Songs], [GenreID], [ArtistID], [Extension]) VALUES (12, N'Home Video', 7, 4, 6, N'.jpg')
GO
INSERT [dbo].[Albums] ([AlbumID], [AlbumName], [Songs], [GenreID], [ArtistID], [Extension]) VALUES (13, N'Historian', 9, 4, 6, N'.jpg')
GO
SET IDENTITY_INSERT [dbo].[Albums] OFF
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'c5f7295b-8c79-4657-b0a9-5288646355e7', N'admin', N'admin', N'2a2c1859-9b44-46f6-94a4-c0bb5196d8eb')
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'8d002b94-3b8f-40cc-84b6-f853317a5c8f', N'user2@gmail.com', N'USER2@GMAIL.COM', N'user2@gmail.com', N'USER2@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEKkPLSSQjotaWYRoT8jghrpXYGcOrYKTuAJ19Z+TPThJojeYbmN0j5bAhdown2i8mw==', N'BK3NFK6KXTTQVESQDM4K5ZJQORHGFMFI', N'8910e59d-6fe7-47b1-bc39-04dc819e861d', NULL, 0, 0, NULL, 1, 0)
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'c3e31481-7a22-4baa-853d-f4e35354a679', N'user1@gmail.com', N'USER1@GMAIL.COM', N'user1@gmail.com', N'USER1@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEO9D2MwxBm/yRwzIo0FTYc9ORJeU7eEjzWc1pee7FUzp0dD2N7QZ/+FqdKvRRgqfeg==', N'4AILFB7QX7NPALYJAIUZ3RN6EPTAMTPB', N'be630745-c9a3-41d8-9123-1bb6fbed04c4', NULL, 0, 0, NULL, 1, 0)
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'e1c8fcff-b6a2-4dce-9596-3078ada78168', N'user3@gmail.com', N'USER3@GMAIL.COM', N'user3@gmail.com', N'USER3@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEF73tw84AJB2gevUgEmjDS1HAQXhnI48SOh/8BufCFp64ANUE9qJdF4lmvDyV2EPhw==', N'S5XVTDD5WCDPBM6ZKL76EC4VWC7H4CZP', N'a38cf8a7-3fef-476f-8d3f-653c7d00448d', NULL, 0, 0, NULL, 1, 0)
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'ed0f0e97-8047-4ad1-9a63-a1913a0c6414', N'super@gmail.com', N'SUPER@GMAIL.COM', N'super@gmail.com', N'SUPER@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEHeI6NaKldqewNVKt6U8ZarUrvgl0tMeraT/PzOqE5FygPzTm/rpymP7KCQiwdZ1xQ==', N'GHOZ44R34OKGMHDMCE4E5FBG7SQUBB4V', N'87af1bec-80a5-4ae9-a0a6-dcad33b238d2', NULL, 0, 0, NULL, 1, 0)
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'ed0f0e97-8047-4ad1-9a63-a1913a0c6414', N'c5f7295b-8c79-4657-b0a9-5288646355e7')
GO
SET IDENTITY_INSERT [dbo].[Reviews] ON 
GO
INSERT [dbo].[Reviews] ([ReviewID], [UserID], [ReviewDate], [ReviewText], [Rating], [AlbumID]) VALUES (1, N'user1@gmail.com', CAST(N'2021-06-27T15:43:23.5449589' AS DateTime2), N'Tyler has never been one for traditional song structure, but on IGOR he’s like the Minotaur luring you through a maze that twists and turns around seemingly impossible corners, drawing you into the thrilling unknown.', 4, 5)
GO
INSERT [dbo].[Reviews] ([ReviewID], [UserID], [ReviewDate], [ReviewText], [Rating], [AlbumID]) VALUES (2, N'user2@gmail.com', CAST(N'2021-06-27T15:43:49.4513500' AS DateTime2), N'Tyler has put away many of the rowdy characteristics of the past and has evolved into a musician that structures a consistent body of work song after song. These are back-to-back albums now that are cohesive from front to back while never taking a dip in the quality of production.', 5, 5)
GO
INSERT [dbo].[Reviews] ([ReviewID], [UserID], [ReviewDate], [ReviewText], [Rating], [AlbumID]) VALUES (3, N'user3@gmail.com', CAST(N'2021-06-27T15:44:11.0595893' AS DateTime2), N'By closing the door on the philosophies and musical approaches he used to take, Tyler discovers an open window, leading him to new, peaceful strength and mastery of his craft.', 1, 5)
GO
SET IDENTITY_INSERT [dbo].[Reviews] OFF
GO
