USE [UdMyDb]
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([Id], [Name], [PublishDate], [ModifadeOn], [IsFeatured], [IsDeleted], [ParentCategoryId]) VALUES (1, N'Development', CAST(N'2022-06-06T00:00:00.0000000' AS DateTime2), NULL, 1, 0, NULL)
INSERT [dbo].[Categories] ([Id], [Name], [PublishDate], [ModifadeOn], [IsFeatured], [IsDeleted], [ParentCategoryId]) VALUES (2, N'Business', CAST(N'2022-06-06T00:00:00.0000000' AS DateTime2), NULL, 1, 0, NULL)
INSERT [dbo].[Categories] ([Id], [Name], [PublishDate], [ModifadeOn], [IsFeatured], [IsDeleted], [ParentCategoryId]) VALUES (3, N'Web Development', CAST(N'2022-06-06T00:00:00.0000000' AS DateTime2), NULL, 1, 0, 1)
INSERT [dbo].[Categories] ([Id], [Name], [PublishDate], [ModifadeOn], [IsFeatured], [IsDeleted], [ParentCategoryId]) VALUES (4, N'Dara Science', CAST(N'2022-06-06T00:00:00.0000000' AS DateTime2), NULL, 1, 0, 1)
INSERT [dbo].[Categories] ([Id], [Name], [PublishDate], [ModifadeOn], [IsFeatured], [IsDeleted], [ParentCategoryId]) VALUES (5, N'Managment', CAST(N'2022-06-06T00:00:00.0000000' AS DateTime2), NULL, 1, 0, 2)
INSERT [dbo].[Categories] ([Id], [Name], [PublishDate], [ModifadeOn], [IsFeatured], [IsDeleted], [ParentCategoryId]) VALUES (6, N'Sales', CAST(N'2022-06-06T00:00:00.0000000' AS DateTime2), NULL, 1, 0, 2)
INSERT [dbo].[Categories] ([Id], [Name], [PublishDate], [ModifadeOn], [IsFeatured], [IsDeleted], [ParentCategoryId]) VALUES (8, N'Javacscript', CAST(N'2022-05-04T00:00:00.0000000' AS DateTime2), NULL, 0, 0, 3)
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[Instructors] ON 

INSERT [dbo].[Instructors] ([Id], [FullName], [ProfilImg]) VALUES (1, N'Iman', N'profil.png')
INSERT [dbo].[Instructors] ([Id], [FullName], [ProfilImg]) VALUES (2, N'Bayram', N'pro2.png')
SET IDENTITY_INSERT [dbo].[Instructors] OFF
GO
SET IDENTITY_INSERT [dbo].[Courses] ON 

INSERT [dbo].[Courses] ([Id], [Name], [Summary], [Description], [PhotoUrl], [PublishDate], [Updatedate], [ModifadeOn], [Discount], [IsFeatured], [IsDeleted], [Reyting], [TrailerUrl], [CategoryId], [InstructorId], [Price]) VALUES (3, N'Learn Python: The Complete Python Programming Course', N'Learn A-Z everything about Python, from the basics, to advanced topics like Python GUI, Python Data Analysis, and more!', N'What you''ll learn -Create their own Python Programs -Become an experienced Python Programmer -Parse the Web and Create their own Games', N'https://img-c.udemycdn.com/course/480x270/394676_ce3d_5.jpg', CAST(N'2022-04-01T10:44:27.2317674' AS DateTime2), NULL, NULL, CAST(70.55 AS Decimal(18, 2)), 1, 0, CAST(4.20 AS Decimal(18, 2)), N'https://mp4-c.udemycdn.com/2015-08-04_07-44-21-a367ad73645b9ac4fb6ef9da9b34f436/WebHD_1080.mp4?Expires=1648849115&Signature=UyfQReZaLVB54OXQZP-rjnPe~s6JXkaeOkW-HUdod~6ohMDVTyaiWo0G5L9dRavc5ipPJiQNuvJjlQx06p98tKqUvtH-EpbdX2NjHto4Yr7W5b0HcIPAJiZDJRFJBLF6ZTJvVAN8dv8xnmvuW9ypn480cEyAzTIJXtUtL748yQnOQh6u749MPU0Tz-MMh878MxlB2u2wQGSq6Bd2ifU8GZZuWFFhlEZRU8m2pjA5yeQh4q5Qg8WFm3o8A9WlbXrDEjK4PFS7s7jZzs2X7TV-djCtZN8SdzJyJcCFjCd5VYU-QksJWN-9aCOOBT3PKTs2rbUMMmfPj8eLdHDuTGVLGA__&Key-Pair-Id=APKAITJV77WS5ZT7262A', 3, 1, CAST(84.99 AS Decimal(18, 2)))
INSERT [dbo].[Courses] ([Id], [Name], [Summary], [Description], [PhotoUrl], [PublishDate], [Updatedate], [ModifadeOn], [Discount], [IsFeatured], [IsDeleted], [Reyting], [TrailerUrl], [CategoryId], [InstructorId], [Price]) VALUES (7, N'Learn C# 15 min', N'Learn A-Z everything about Python, from the basics, to advanced topics like Python GUI, Python Data Analysis, and more!', N'What you''ll learn -Create their own Python Programs -Become an experienced Python Programmer -Parse the Web and Create their own Games', N'https://img-c.udemycdn.com/course/480x270/394676_ce3d_5.jpg', CAST(N'2022-04-01T11:08:00.5076318' AS DateTime2), NULL, NULL, CAST(0.00 AS Decimal(18, 2)), 1, 0, CAST(4.20 AS Decimal(18, 2)), N'https://mp4-c.udemycdn.com/2015-08-04_07-44-21-a367ad73645b9ac4fb6ef9da9b34f436/WebHD_1080.mp4?Expires=1648849115&Signature=UyfQReZaLVB54OXQZP-rjnPe~s6JXkaeOkW-HUdod~6ohMDVTyaiWo0G5L9dRavc5ipPJiQNuvJjlQx06p98tKqUvtH-EpbdX2NjHto4Yr7W5b0HcIPAJiZDJRFJBLF6ZTJvVAN8dv8xnmvuW9ypn480cEyAzTIJXtUtL748yQnOQh6u749MPU0Tz-MMh878MxlB2u2wQGSq6Bd2ifU8GZZuWFFhlEZRU8m2pjA5yeQh4q5Qg8WFm3o8A9WlbXrDEjK4PFS7s7jZzs2X7TV-djCtZN8SdzJyJcCFjCd5VYU-QksJWN-9aCOOBT3PKTs2rbUMMmfPj8eLdHDuTGVLGA__&Key-Pair-Id=APKAITJV77WS5ZT7262A', 3, 2, CAST(600.00 AS Decimal(18, 2)))
INSERT [dbo].[Courses] ([Id], [Name], [Summary], [Description], [PhotoUrl], [PublishDate], [Updatedate], [ModifadeOn], [Discount], [IsFeatured], [IsDeleted], [Reyting], [TrailerUrl], [CategoryId], [InstructorId], [Price]) VALUES (9, N'string', N'string', N'string', N'string', CAST(N'2022-05-06T20:57:17.1696097' AS DateTime2), CAST(N'2022-05-06T21:40:50.9576647' AS DateTime2), CAST(N'2022-05-06T21:40:50.9577092' AS DateTime2), CAST(0.00 AS Decimal(18, 2)), 1, 0, CAST(0.00 AS Decimal(18, 2)), N'string', 1, 1, CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Courses] ([Id], [Name], [Summary], [Description], [PhotoUrl], [PublishDate], [Updatedate], [ModifadeOn], [Discount], [IsFeatured], [IsDeleted], [Reyting], [TrailerUrl], [CategoryId], [InstructorId], [Price]) VALUES (10, N'Smm', N'Test', N'Test Desc', N'photo.url', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, NULL, CAST(2100.00 AS Decimal(18, 2)), 1, 0, CAST(4.50 AS Decimal(18, 2)), N'test.url', 3, 1, CAST(2300.00 AS Decimal(18, 2)))
INSERT [dbo].[Courses] ([Id], [Name], [Summary], [Description], [PhotoUrl], [PublishDate], [Updatedate], [ModifadeOn], [Discount], [IsFeatured], [IsDeleted], [Reyting], [TrailerUrl], [CategoryId], [InstructorId], [Price]) VALUES (11, N'Fashion Art 2', N'Test 2', N'Test Desc', N'photo.url', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, NULL, CAST(2000.00 AS Decimal(18, 2)), 1, 0, CAST(4.50 AS Decimal(18, 2)), N'test.url', 3, 1, CAST(2800.00 AS Decimal(18, 2)))
SET IDENTITY_INSERT [dbo].[Courses] OFF
GO
SET IDENTITY_INSERT [dbo].[Specifactions] ON 

INSERT [dbo].[Specifactions] ([Id], [Icon], [Value]) VALUES (3, N'1', N'test 1')
INSERT [dbo].[Specifactions] ([Id], [Icon], [Value]) VALUES (4, N'2', N'test 2')
INSERT [dbo].[Specifactions] ([Id], [Icon], [Value]) VALUES (5, N'string', N'string')
INSERT [dbo].[Specifactions] ([Id], [Icon], [Value]) VALUES (6, N'string', N'string')
INSERT [dbo].[Specifactions] ([Id], [Icon], [Value]) VALUES (7, N'iii', N'Dtoyam')
INSERT [dbo].[Specifactions] ([Id], [Icon], [Value]) VALUES (8, N'icon deyisdi', N'spec value deyisdi')
INSERT [dbo].[Specifactions] ([Id], [Icon], [Value]) VALUES (9, N'string', N'string')
INSERT [dbo].[Specifactions] ([Id], [Icon], [Value]) VALUES (10, N'icon deyisdi', N'spec value deyisdi')
INSERT [dbo].[Specifactions] ([Id], [Icon], [Value]) VALUES (11, N'aaaa', N'bbbb')
INSERT [dbo].[Specifactions] ([Id], [Icon], [Value]) VALUES (12, N'test 1', N'test value')
INSERT [dbo].[Specifactions] ([Id], [Icon], [Value]) VALUES (13, N'aa', N'bb')
INSERT [dbo].[Specifactions] ([Id], [Icon], [Value]) VALUES (14, N'test icon', N'test value')
INSERT [dbo].[Specifactions] ([Id], [Icon], [Value]) VALUES (15, N'test icon', N'test value')
INSERT [dbo].[Specifactions] ([Id], [Icon], [Value]) VALUES (16, N'test icon 2', N'test value 2')
INSERT [dbo].[Specifactions] ([Id], [Icon], [Value]) VALUES (17, N'test icon 3', N'test value 3')
INSERT [dbo].[Specifactions] ([Id], [Icon], [Value]) VALUES (21, N'test icon', N'test value')
INSERT [dbo].[Specifactions] ([Id], [Icon], [Value]) VALUES (22, N'test icon 2', N'test value 2')
INSERT [dbo].[Specifactions] ([Id], [Icon], [Value]) VALUES (23, N'test icon 3', N'test value 3')
INSERT [dbo].[Specifactions] ([Id], [Icon], [Value]) VALUES (24, N'test icon', N'test value')
INSERT [dbo].[Specifactions] ([Id], [Icon], [Value]) VALUES (25, N'test icon 2', N'test value 2')
INSERT [dbo].[Specifactions] ([Id], [Icon], [Value]) VALUES (26, N'test icon 3', N'test value 3')
INSERT [dbo].[Specifactions] ([Id], [Icon], [Value]) VALUES (27, N'test icon', N'test value')
INSERT [dbo].[Specifactions] ([Id], [Icon], [Value]) VALUES (28, N'test icon 2', N'test value 2')
INSERT [dbo].[Specifactions] ([Id], [Icon], [Value]) VALUES (29, N'test icon 3', N'test value 3')
INSERT [dbo].[Specifactions] ([Id], [Icon], [Value]) VALUES (36, N'test icon', N'test value')
INSERT [dbo].[Specifactions] ([Id], [Icon], [Value]) VALUES (37, N'test icon 2', N'test value 2')
INSERT [dbo].[Specifactions] ([Id], [Icon], [Value]) VALUES (38, N'test icon 3', N'test value 3')
INSERT [dbo].[Specifactions] ([Id], [Icon], [Value]) VALUES (39, N'test icon', N'test value')
INSERT [dbo].[Specifactions] ([Id], [Icon], [Value]) VALUES (40, N'test icon 2', N'test value 2')
INSERT [dbo].[Specifactions] ([Id], [Icon], [Value]) VALUES (41, N'test icon 3', N'test value 3')
SET IDENTITY_INSERT [dbo].[Specifactions] OFF
GO
SET IDENTITY_INSERT [dbo].[CourseSpecifactions] ON 

INSERT [dbo].[CourseSpecifactions] ([Id], [CourseId], [SpecifactionId]) VALUES (4, 7, 3)
INSERT [dbo].[CourseSpecifactions] ([Id], [CourseId], [SpecifactionId]) VALUES (5, 7, 4)
INSERT [dbo].[CourseSpecifactions] ([Id], [CourseId], [SpecifactionId]) VALUES (10, 9, 13)
INSERT [dbo].[CourseSpecifactions] ([Id], [CourseId], [SpecifactionId]) VALUES (11, 10, 14)
INSERT [dbo].[CourseSpecifactions] ([Id], [CourseId], [SpecifactionId]) VALUES (36, 11, 39)
INSERT [dbo].[CourseSpecifactions] ([Id], [CourseId], [SpecifactionId]) VALUES (37, 11, 40)
INSERT [dbo].[CourseSpecifactions] ([Id], [CourseId], [SpecifactionId]) VALUES (38, 11, 41)
SET IDENTITY_INSERT [dbo].[CourseSpecifactions] OFF
GO
SET IDENTITY_INSERT [dbo].[Lessons] ON 

INSERT [dbo].[Lessons] ([Id], [Name], [IsDeleted], [CourseId]) VALUES (1, N'Up Running with Python', 0, 3)
INSERT [dbo].[Lessons] ([Id], [Name], [IsDeleted], [CourseId]) VALUES (2, N'The Basic Data Types', 0, 3)
INSERT [dbo].[Lessons] ([Id], [Name], [IsDeleted], [CourseId]) VALUES (9, N'Up Running with Python', 0, 7)
INSERT [dbo].[Lessons] ([Id], [Name], [IsDeleted], [CourseId]) VALUES (10, N'The Basic Data Types', 0, 7)
INSERT [dbo].[Lessons] ([Id], [Name], [IsDeleted], [CourseId]) VALUES (11, N'string', 0, 9)
INSERT [dbo].[Lessons] ([Id], [Name], [IsDeleted], [CourseId]) VALUES (12, N'test lesson', 0, 10)
INSERT [dbo].[Lessons] ([Id], [Name], [IsDeleted], [CourseId]) VALUES (13, N'test lesson', 0, 11)
INSERT [dbo].[Lessons] ([Id], [Name], [IsDeleted], [CourseId]) VALUES (15, N'test lesson', 0, 11)
INSERT [dbo].[Lessons] ([Id], [Name], [IsDeleted], [CourseId]) VALUES (16, N'test lesson', 0, 11)
INSERT [dbo].[Lessons] ([Id], [Name], [IsDeleted], [CourseId]) VALUES (17, N'test lesson', 0, 11)
INSERT [dbo].[Lessons] ([Id], [Name], [IsDeleted], [CourseId]) VALUES (18, N'test lesson', 0, 11)
INSERT [dbo].[Lessons] ([Id], [Name], [IsDeleted], [CourseId]) VALUES (19, N'test lesson', 0, 11)
INSERT [dbo].[Lessons] ([Id], [Name], [IsDeleted], [CourseId]) VALUES (20, N'test lesson', 0, 11)
INSERT [dbo].[Lessons] ([Id], [Name], [IsDeleted], [CourseId]) VALUES (21, N'test lesson', 0, 11)
SET IDENTITY_INSERT [dbo].[Lessons] OFF
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220330180024_initials', N'6.0.3')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220331164927_Test', N'6.0.3')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220401170925_updateCourse', N'6.0.3')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220401174726_specChange', N'6.0.3')
GO
