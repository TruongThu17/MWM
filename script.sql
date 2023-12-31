USE [Jlearning]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 6/7/2023 1:03:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[email] [nvarchar](100) NOT NULL,
	[name] [nvarchar](100) NOT NULL,
	[password] [nvarchar](100) NOT NULL,
	[avatar_url] [nvarchar](max) NULL,
	[phone] [nvarchar](10) NULL,
	[address] [nvarchar](200) NULL,
	[year_of_birth] [int] NULL,
	[gender] [bit] NULL,
	[role_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Blog]    Script Date: 6/7/2023 1:03:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Blog](
	[blog_avatar_url] [nvarchar](max) NULL,
	[blog_id] [int] IDENTITY(1,1) NOT NULL,
	[blog_category_id] [int] NULL,
	[created_date] [date] NOT NULL,
	[blog_name] [nvarchar](100) NULL,
	[blog_description] [nvarchar](500) NULL,
	[status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[blog_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Blog_Category]    Script Date: 6/7/2023 1:03:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Blog_Category](
	[blog_category_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[blog_category_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Blog_Details]    Script Date: 6/7/2023 1:03:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Blog_Details](
	[blog_details_id] [int] IDENTITY(1,1) NOT NULL,
	[header] [nvarchar](200) NULL,
	[description] [nvarchar](max) NULL,
	[blog_img_url] [nvarchar](max) NULL,
	[blog_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[blog_details_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Chapter]    Script Date: 6/7/2023 1:03:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Chapter](
	[chapter_id] [int] IDENTITY(1,1) NOT NULL,
	[chapter_name] [nvarchar](200) NULL,
	[description] [nvarchar](500) NULL,
	[course_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[chapter_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contact]    Script Date: 6/7/2023 1:03:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contact](
	[contact_id] [int] IDENTITY(1,1) NOT NULL,
	[email] [nvarchar](100) NULL,
	[name] [nvarchar](200) NULL,
	[request_date] [date] NULL,
	[response_date] [date] NULL,
	[status] [bit] NULL,
	[request_message] [nvarchar](max) NULL,
	[response_message] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[contact_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Course]    Script Date: 6/7/2023 1:03:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Course](
	[course_id] [int] IDENTITY(1,1) NOT NULL,
	[course_avatar_url] [nvarchar](max) NULL,
	[course_name] [nvarchar](200) NULL,
	[description] [nvarchar](500) NULL,
	[duration] [int] NULL,
	[price] [float] NULL,
	[status] [bit] NULL,
	[created_at] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[course_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Feedback]    Script Date: 6/7/2023 1:03:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feedback](
	[feedback_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](100) NULL,
	[email] [nvarchar](100) NULL,
	[star] [int] NULL,
	[course_name] [nvarchar](500) NULL,
	[message] [nvarchar](500) NULL,
	[course_id] [int] NULL,
	[user_avatar_url] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[feedback_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lesson]    Script Date: 6/7/2023 1:03:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lesson](
	[lesson_id] [int] IDENTITY(1,1) NOT NULL,
	[lesson_name] [nvarchar](200) NULL,
	[description] [nvarchar](500) NULL,
	[video_url] [nvarchar](max) NULL,
	[material_url] [nvarchar](max) NULL,
	[chapter_id] [int] NULL,
	[duration] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[lesson_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lesson_Done]    Script Date: 6/7/2023 1:03:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lesson_Done](
	[lesson_id] [int] NOT NULL,
	[email] [nvarchar](100) NOT NULL,
	[course_id] [int] NOT NULL,
 CONSTRAINT [PK_Lesson_Done] PRIMARY KEY CLUSTERED 
(
	[lesson_id] ASC,
	[email] ASC,
	[course_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Payment]    Script Date: 6/7/2023 1:03:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payment](
	[payment_id] [int] IDENTITY(1,1) NOT NULL,
	[email] [nvarchar](100) NULL,
	[course_id] [int] NULL,
	[amount] [float] NULL,
	[created_date] [date] NULL,
	[course_name] [nvarchar](max) NULL,
	[phone] [nvarchar](10) NULL,
	[address] [nvarchar](max) NULL,
	[name] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[payment_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Question]    Script Date: 6/7/2023 1:03:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Question](
	[question_id] [int] IDENTITY(1,1) NOT NULL,
	[description] [nvarchar](200) NULL,
	[answer_1] [nvarchar](200) NULL,
	[answer_2] [nvarchar](200) NULL,
	[answer_3] [nvarchar](200) NULL,
	[answer_4] [nvarchar](200) NULL,
	[correct_answer] [int] NULL,
	[test_id] [int] NULL,
	[explaination] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[question_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 6/7/2023 1:03:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[role_id] [int] IDENTITY(1,1) NOT NULL,
	[role_name] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[role_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Support]    Script Date: 6/7/2023 1:03:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Support](
	[support_id] [int] IDENTITY(1,1) NOT NULL,
	[support_name] [nvarchar](200) NULL,
	[message] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[support_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Test]    Script Date: 6/7/2023 1:03:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Test](
	[test_id] [int] IDENTITY(1,1) NOT NULL,
	[test_name] [nvarchar](200) NULL,
	[chapter_id] [int] NULL,
	[course_id] [int] NULL,
	[description] [nvarchar](300) NULL,
	[duration] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[test_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Test_Done]    Script Date: 6/7/2023 1:03:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Test_Done](
	[email] [nvarchar](100) NOT NULL,
	[test_id] [int] NOT NULL,
	[course_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[email] ASC,
	[test_id] ASC,
	[course_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User_Course]    Script Date: 6/7/2023 1:03:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User_Course](
	[course_id] [int] NOT NULL,
	[email] [nvarchar](100) NOT NULL,
	[enrolled_date] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[course_id] ASC,
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Account] ([email], [name], [password], [avatar_url], [phone], [address], [year_of_birth], [gender], [role_id]) VALUES (N'admin', N'admin', N'admin', NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Account] ([email], [name], [password], [avatar_url], [phone], [address], [year_of_birth], [gender], [role_id]) VALUES (N'lamnt@gmail.com', N'Nguyễn Thành Lâm', N'lamnt@gmail.com', N'https://firebasestorage.googleapis.com/v0/b/flearning-131be.appspot.com/o/course%2Fimages%2FqQd5iPVeVf3SO6Cm5hgp_62c6fb0f27f11_cvtpl.jpg?alt=media&token=04befba5-cea8-432e-832a-3de4491597f7', N'0385981070', N'asdasd', 1990, 1, 2)
INSERT [dbo].[Account] ([email], [name], [password], [avatar_url], [phone], [address], [year_of_birth], [gender], [role_id]) VALUES (N'nguyenduyphuong7070@gmail.com', N'Nguyễn Duy Phương', N'aaa', N'https://firebasestorage.googleapis.com/v0/b/flearning-131be.appspot.com/o/course%2Fimages%2FqQd5iPVeVf3SO6Cm5hgp_62c6fb0f27f11_cvtpl.jpg?alt=media&token=b186c25b-ccd7-4657-9170-8f94ccebaeca', N'0385981072', N'Hải Dương', 2001, 1, 2)
INSERT [dbo].[Account] ([email], [name], [password], [avatar_url], [phone], [address], [year_of_birth], [gender], [role_id]) VALUES (N'nguyenthanhlam1070@gmail.com', N'Nguyễn Thành Lâm ', N'aaa', N'https://firebasestorage.googleapis.com/v0/b/flearning-131be.appspot.com/o/course%2Fimages%2FqQd5iPVeVf3SO6Cm5hgp_62c6fb0f27f11_cvtpl.jpg?alt=media&token=57dc5da2-c15d-4772-821e-14c3ffb767ca', N'0385981070', N'Hải Dương', 2001, 0, 2)
GO
SET IDENTITY_INSERT [dbo].[Blog] ON 

INSERT [dbo].[Blog] ([blog_avatar_url], [blog_id], [blog_category_id], [created_date], [blog_name], [blog_description], [status]) VALUES (N'https://firebasestorage.googleapis.com/v0/b/flearning-131be.appspot.com/o/blog%2Fimages%2Fblog-1.png?alt=media&token=45cf3908-ac8f-4d7d-b716-6eb90ff8b254', 11, 3, CAST(N'2023-05-27' AS Date), N'Cách chuyển tên sang tiếng Nhật', N'Chắc hẳn ai học tiếng Nhật đều muốn biết tên tiếng Nhật của mình là gì? tên của mình chuyển sang tiếng Nhật sẽ thành như thế nào? Đặc biệt đối với các bạn làm hồ sơ đi du học, làm hồ sơ xin việc để ứng tuyển vào 1 doanh nghiệp Nhật, hay làm hồ sơ đi lao động tại Nhật, bạn chắc chắn sẽ phải biết cách chuyển tên của mình sang tiếng Nhật một cách chuẩn xác nhất có thể', 1)
INSERT [dbo].[Blog] ([blog_avatar_url], [blog_id], [blog_category_id], [created_date], [blog_name], [blog_description], [status]) VALUES (N'https://firebasestorage.googleapis.com/v0/b/flearning-131be.appspot.com/o/blog%2Fimages%2Fblog-details-3.png?alt=media&token=2cd378f1-bafd-409f-90bf-5a666ba70ee7', 12, 3, CAST(N'2023-05-27' AS Date), N'Tiếng Nhật có bao nhiêu loại chữ?', N'Là bảng chữ Latinh như tiếng Anh hay tiếng Việt không dấu mà chúng ta sử dụng nên không cần học viết loại này mà chỉ cần quan tâm cách đọc kiểu Nhật. Người ta gọi chữ Latinh này là ローマ字 (Ro-maji).', 1)
INSERT [dbo].[Blog] ([blog_avatar_url], [blog_id], [blog_category_id], [created_date], [blog_name], [blog_description], [status]) VALUES (N'https://firebasestorage.googleapis.com/v0/b/flearning-131be.appspot.com/o/blog%2Fimages%2Fblog-5.png?alt=media&token=365acb7f-67ac-409b-a4aa-3347cd0ecf4b', 13, 1, CAST(N'2023-05-27' AS Date), N'Đi du lịch Nhật Bản bạn cần biết những văn hóa này', N'Ai cũng biết Nhật Bản là một quốc gia văn minh với nền kinh tế cực kỳ phát triển. Cũng chính vì vậy mà văn hóa Nhật Bản cũng có nhiều đặc biệt.', 1)
INSERT [dbo].[Blog] ([blog_avatar_url], [blog_id], [blog_category_id], [created_date], [blog_name], [blog_description], [status]) VALUES (N'https://firebasestorage.googleapis.com/v0/b/flearning-131be.appspot.com/o/blog%2Fimages%2Fblog-2.png?alt=media&token=1058ace5-c250-4a50-9aa3-8e7a90ed0abb', 14, 1, CAST(N'2023-05-27' AS Date), N'Lý do Nhật Bản được gọi là đất nước mặt trời mọc', N'Nhật Bản còn được mọi người biết đến với tên gọi đất nước mặt trời mọc, vậy từ đâu mà đất nước này lại có cái tên gọi như vậy và ngay cả trên quốc kỳ Nhật Bản cũng là biểu tượng hình tròn đỏ của mặt trời.', 1)
INSERT [dbo].[Blog] ([blog_avatar_url], [blog_id], [blog_category_id], [created_date], [blog_name], [blog_description], [status]) VALUES (N'https://firebasestorage.googleapis.com/v0/b/flearning-131be.appspot.com/o/blog%2Fimages%2Fblog-6.png?alt=media&token=29e3a943-5201-4edf-94d5-358200f0d3c8', 15, 1, CAST(N'2023-05-27' AS Date), N'Đám cưới người Nhật Bản tổ chức như thế nào?', N'Nhật Bản là một quốc gia Châu Á. Do đó, nét văn hóa của Nhật Bản cũng có nét tương đồng giống Việt Nam chúng ta. Tuy nhiên, đám cưới của người Nhật cũng có những điểm riêng và đặc biệt của nó.', 1)
INSERT [dbo].[Blog] ([blog_avatar_url], [blog_id], [blog_category_id], [created_date], [blog_name], [blog_description], [status]) VALUES (N'https://firebasestorage.googleapis.com/v0/b/flearning-131be.appspot.com/o/blog%2Fimages%2Fblog-3.png?alt=media&token=5b65f563-e844-42dc-bd3f-a6a896019e8d', 16, 2, CAST(N'2023-05-27' AS Date), N'Nhật Bản ra mắt siêu robot mới Lovot', N'Giống như một sinh vật lai giữa chim cú và chim cánh cụt, Lovot được thiết kế để hoạt động trong nhà. Việc của nó chỉ là đi lang thang khắp nơi, nài nỉ bạn ôm nó. Giống như một con thú cưng không cần chăm sóc, Lovot được thiết kế để giúp người sở hữu có thể thư giãn sau một ngày làm việc dài và mệt mỏi.', 1)
INSERT [dbo].[Blog] ([blog_avatar_url], [blog_id], [blog_category_id], [created_date], [blog_name], [blog_description], [status]) VALUES (N'https://firebasestorage.googleapis.com/v0/b/flearning-131be.appspot.com/o/blog%2Fimages%2Fblog-7.png?alt=media&token=4fbbad4e-9da5-4f46-9837-290b22717d03', 17, 2, CAST(N'2023-05-27' AS Date), N'Nhật Bản đánh bại Iran tại bán kết Asian Cup 2019', N'Đội tuyển Iran được đánh giá rất cao tại Asian Cup 2019 đã bất ngờ thất bại trước Nhật Bản', 1)
SET IDENTITY_INSERT [dbo].[Blog] OFF
GO
SET IDENTITY_INSERT [dbo].[Blog_Category] ON 

INSERT [dbo].[Blog_Category] ([blog_category_id], [name]) VALUES (1, N'Văn hóa Nhật Bản')
INSERT [dbo].[Blog_Category] ([blog_category_id], [name]) VALUES (2, N'Tin tức sự kiện')
INSERT [dbo].[Blog_Category] ([blog_category_id], [name]) VALUES (3, N'Kinh nghiệm học TIếng Nhật')
SET IDENTITY_INSERT [dbo].[Blog_Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Blog_Details] ON 

INSERT [dbo].[Blog_Details] ([blog_details_id], [header], [description], [blog_img_url], [blog_id]) VALUES (8, N'Tên người Nhật thì thường được viết bằng chữ Kanji và phiên âm sang Hiragana.', N'Nhật có cách đọc giống với cách phát âm trong tiếng Việt nhất để đọc ra tên chúng ta. Ví dụ từ Nguyên sẽ được chuyển thành từ có cách phát âm gần giống nhất là グエン(Guen- do tiếng Nhật vốn không có chữ Ng), hay như Phương sẽ được chuyển thành フオン(Fuon). Do hệ thống âm của tiếng Nhật với tiếng Việt khác nhau nhiều, hệ thống âm tiếng Nhật không đủ để phiên hết cách từ tiếng Việt nên sẽ có nhiều tên khi phiên âm sang bị trùng nhau như Tân, Tấn, Thắng, Thăng đều được phiên âm thành タン(tan)….v..v..', N'https://firebasestorage.googleapis.com/v0/b/flearning-131be.appspot.com/o/blog%2Fimages%2Fblog-details-1.png?alt=media&token=f0bbe56d-52c7-449a-b14a-4ff00c5c29e7', 11)
INSERT [dbo].[Blog_Details] ([blog_details_id], [header], [description], [blog_img_url], [blog_id]) VALUES (9, N'Hay như chữ Pha : trong tiếng Nhật vốn không có chữ Pha mà chỉ có Fu hay Ha, do vậy phải lấy chữ Fu viết to + chữ a viết nhỏ ファ để tạo ra chữ Pha.', N'Nên hiểu rằng không có quy chuẩn nào để chuyển âm từ Việt sang Nhật, không có khái niệm đúng/ sai nào cụ thể cả, miễn sao khi đọc ra gần giống với phát âm tiếng Việt nhất là được.', N'https://firebasestorage.googleapis.com/v0/b/flearning-131be.appspot.com/o/blog%2Fimages%2Fblog-details-2.png?alt=media&token=ee4d3c02-53c0-4240-bbc5-db18e6abe03e', 11)
INSERT [dbo].[Blog_Details] ([blog_details_id], [header], [description], [blog_img_url], [blog_id]) VALUES (10, N'Cùng tìm hiểu cách chuyển tên từ Việt sang Nhật qua bảng sau nha ^^', N'Tiếng Nhật gồm 3 loại chữ chính thống và 1 loại không chính thống.

     A. Loại không chính thống:

Là bảng chữ Latinh như tiếng Anh hay tiếng Việt không dấu mà chúng ta sử dụng nên không cần học viết loại này mà chỉ cần quan tâm cách đọc kiểu Nhật. Người ta gọi chữ Latinh này là ローマ字 (Ro-maji).', N'https://firebasestorage.googleapis.com/v0/b/flearning-131be.appspot.com/o/blog%2Fimages%2Fblog-details-3.png?alt=media&token=e2d05a8c-ee95-4742-93eb-1365d5301b33', 11)
INSERT [dbo].[Blog_Details] ([blog_details_id], [header], [description], [blog_img_url], [blog_id]) VALUES (11, N'A. Loại không chính thống:', N'Là bảng chữ Latinh như tiếng Anh hay tiếng Việt không dấu mà chúng ta sử dụng nên không cần học viết loại này mà chỉ cần quan tâm cách đọc kiểu Nhật. Người ta gọi chữ Latinh này là ローマ字 (Ro-maji).', N'https://firebasestorage.googleapis.com/v0/b/flearning-131be.appspot.com/o/blog%2Fimages%2Fblog-details-4.png?alt=media&token=6fddc2d3-b4d6-4635-a8ab-7140a8226f82', 11)
INSERT [dbo].[Blog_Details] ([blog_details_id], [header], [description], [blog_img_url], [blog_id]) VALUES (12, N'A. Loại không chính thống', N'Là bảng chữ Latinh như tiếng Anh hay tiếng Việt không dấu mà chúng ta sử dụng nên không cần học viết loại này mà chỉ cần quan tâm cách đọc kiểu Nhật. Người ta gọi chữ Latinh này là ローマ字 (Ro-maji)', N'https://firebasestorage.googleapis.com/v0/b/flearning-131be.appspot.com/o/blog%2Fimages%2Fblog-details-4.png?alt=media&token=cbc5625f-abaa-48f5-891b-ed809153b521', 12)
INSERT [dbo].[Blog_Details] ([blog_details_id], [header], [description], [blog_img_url], [blog_id]) VALUES (13, N'B.  3 loại chính thống:', N'Ba loại chính lần lượt là Kanji, Hiragana và Katakana.
Trong 1 câu tiếng Nhật có thể có cả 3 loại chữ xuất hiện.

Rốt cuộc tại sao lại cần nhiều loại chữ như vậy nhỉ. Cùng tìm hiểu chức năng từng loại chữ nha ^^', N'https://firebasestorage.googleapis.com/v0/b/flearning-131be.appspot.com/o/blog%2Fimages%2Fblog-details-5.png?alt=media&token=609aaa44-8c4e-45cc-a75d-80ccb88e9d9a', 12)
INSERT [dbo].[Blog_Details] ([blog_details_id], [header], [description], [blog_img_url], [blog_id]) VALUES (14, N'1.  Chữ Kanji (Chữ Hán):', N'Trong 3 loại chữ thì Hiragana và Katakana có bảng chữ riêng để học thuộc, mỗi bảng chữ gồm 46 chữ cái. Kanji thì không đơn giản như vậy vì trên thực tế là không hề có bảng chữ Kanji. Chính người Nhật cũng phải học Kanji từ tiểu học lên đến đại học. Nếu không biết Kanji người Nhật cũng chẳng thể đọc nổi báo Nhật. Chữ Kanji được du nhập từ Hán tự Trung Quốc bởi các nhà sư. Hiện nay vẫn được duy trì khoảng 1945 Hán tự trong tiếng Nhật (Chữ Kanji là kiểu chữ Phổn thể- mẫu chữ cũ của Trung Quốc)

Người Việt xưa cũng dùng Hán Nôm nhưng nay đã loại bỏ gần như hoàn toàn (chỉ còn thấy trong các câu đối, lễ bái..) và chỉ dùng chữ Quốc ngữ hiện tại. Vậy tại sao Nhật không bỏ chữ Hán đi mà vẫn duy trì nhỉ, cùng xem ví dụ sau nhé:

にわにはにわにわとりがいます。(Viết bằng Hiragana)

Niwanihaniwaniwatorigaimasu.     (Phiên âm sang Ro-maji)

Các bạn thử đọc câu trên xem ạ :p Các bạn đã bị méo mồm khi đọc chưa ^^. Lại còn không hiểu như này thì từ chữ cái nào đến chữ cái nào là một từ nữa @@ Nếu có Kanji và nếu bạn học Kanji thì lại rất đơn giản như sau:

庭には二羽  鶏がいます。

Nếu bạn là người biết tiếng Nhật, đọc được Kanji thì câu trên nhìn rất nhanh ra phần nghĩa của các chữ Hán, rất dễ để cắt được từ đâu đến đâu là một từ vựng hay đâu là trợ từ trong công thức.

Chữ 庭 (にわ) đầu tiên có nghĩa là vườn, đọc là niwa.

2 chữ tiếp theo viết là niha には nhưng lại đọc là niwa vì khi đó は đóng vai trò là trợ từ trong câu, dịch cụm庭にはđó là ở trong vườn

2 chữ Hán sau đó二羽(đọc là にわ-niwa) thì có nghĩa là 2 con (cách đếm gà vịt)

Còn 1 cặp にわ (niwa) cuối cùng là にわ trong 鶏（にわとり-niwatori）có nghĩa là con gà

Vậy khi đó – khi đã học Kanji rồi thì việc đọc cũng dễ dàng để cắt chữ mà về phần nghĩa của câu cũng dịch nhanh được thành “Ở trong vườn có 2 con gà”.

è Vậy vai trò đầu tiên của chữ Hán chính là để dễ dàng đọc, hiểu câu nhanh hơn. Nhìn thoát ý nhanh hơn.

Không chỉ vậy, trong tiếng Nhật còn có rất nhiều từ đồng âm khác nghĩa:

Ví dụ như cùng phát âm là “Kaeru” nhưng tùy theo chữ Hán khác lại có nghĩa khác nhau:

·         帰る：trở về

·         変える：thay đổi

·         買える：có thể mua

·         蛙：con ếch

Hay như cùng phát âm là  “Jishin” nhưng lại có tận 6 nghĩa khác nhau:

·         自身：bản thân

·         地震：động đất

·         自信：tự tin

·         磁針：kim nam châm (la bàn)

·         時針：kim giờ

·         磁心：từ tính (nam châm)

Cùng 1 phát âm nhưng có thể nhận diện nghĩa nhanh chóng qua chữ Hán

è Vậy vai trò thứ 2 của chữ Hán chính là giúp phân biệt rõ các từ đồng âm để tránh nhầm nghĩa của câu.

Chữ Hán xuất hiện ở mọi nơi, nếu không học chữ Hán sẽ không thể thuận lợi hay dễ dàng tồn tại được ở Nhật đâu các bạn nhé. Điều quan trọng nữa là trong tất cả các bài thi năng lực tiếng Nhật thì đều có chữ Hán cả, bạn không học chữ Hán thì sẽ ra sao chắc các bạn tự biết rồi nhé ^^

 

Giờ cùng tìm hiểu 2 bảng chữ chuẩn chữ do người Nhật tạo ra nào ^^ Gọi là 2 bảng nhưng thực ra chỉ là học 2 cách viết chữ thôi, còn cách đọc, cách ghép chữ thì tương tự nhau các bạn ạ. Chữ Hiragana có nét viết mềm mại nên còn được gọi là “chữ Mềm”, còn chữ Katakana nét viết cứng hơn nên còn được gọi là “chữ Cứng”', N'https://firebasestorage.googleapis.com/v0/b/flearning-131be.appspot.com/o/blog%2Fimages%2Fblog-details-6.png?alt=media&token=d6e16e55-c629-4472-ad0a-dbbb9048cfe5', 12)
INSERT [dbo].[Blog_Details] ([blog_details_id], [header], [description], [blog_img_url], [blog_id]) VALUES (15, N'2. Chữ Hiragana (Chữ mềm):', N'   Bảng chữ Hiragana hay còn gọi là bảng chữ mềm trước là 50 chữ nay lược còn tổng 46 chữ. Đây là bảng chữ chính nhất trong tiếng Nhật.

 

·         Kanji dùng để viết 1 vài danh từ, động từ, tính từ có thể viết bằng chữ Hán nhưng không thể hiện được thì/ thể của các từ đó. Do đó, Hiragana ra đời để viết các từ gốc Nhật, biểu thị ngữ pháp như thể hiện thì, thể của từ, viết liên từ, phó từ, trợ từ ..v..v', N'https://firebasestorage.googleapis.com/v0/b/flearning-131be.appspot.com/o/blog%2Fimages%2Fblog-details-7.png?alt=media&token=1dd6306f-ced9-4f4e-ab8f-136907f66b67', 12)
INSERT [dbo].[Blog_Details] ([blog_details_id], [header], [description], [blog_img_url], [blog_id]) VALUES (23, N'Không nhận tiền tip', N'“Phục vụ như người Nhật” là câu nói chỉ sự chu đáo, tận tình trong phong cách làm dịch vụ của người Nhật. Hơn nữa, ở Nhật các hóa đơn trong nhà hàng, khách sạn đã tính bao gồm thêm chi phí dịch vụ phát sinh.', N'https://firebasestorage.googleapis.com/v0/b/flearning-131be.appspot.com/o/blog%2Fimages%2Fblog-details-8.png?alt=media&token=013a98ae-2333-4e9d-96fc-adf8d59bef33', 13)
INSERT [dbo].[Blog_Details] ([blog_details_id], [header], [description], [blog_img_url], [blog_id]) VALUES (25, N'Không giữ cửa cho người khác', N'Bạn đừng bất ngờ khi ở Nhật người khác không có thói quen giữ cửa cho người đi sau. Họ không có thói quen này, nên kể cả việc lên xuống taxi bạn cũng nên chủ động mở và đóng cửa. Thậm chí, nhiều người dân Nhật sẽ bất ngờ nếu họ được bạn giữ mở cửa đấy!', N'', 13)
INSERT [dbo].[Blog_Details] ([blog_details_id], [header], [description], [blog_img_url], [blog_id]) VALUES (26, N'Bỏ giày dép ra ngoài cửa', N'Nếu bạn đã từng tìm hiểu qua văn hóa Hàn, thì sẽ nhận ra một nét văn hóa Nhật Bản khá giống nhau. Đó là trước khi bước vào một nhà hàng, quán ăn, hay vào nhà một người Nhật bạn phải để dép bên ngoài và hãy chú ý, nếu có giá dép thì đặt lên giá thật gọn gàng.', N'https://firebasestorage.googleapis.com/v0/b/flearning-131be.appspot.com/o/blog%2Fimages%2Fblog-details-10.png?alt=media&token=69f081db-3d2b-4afe-ae50-7b514d468745', 13)
INSERT [dbo].[Blog_Details] ([blog_details_id], [header], [description], [blog_img_url], [blog_id]) VALUES (27, N'Nhật Bản còn có các mỹ danh “xứ sở anh đào”,', N'Được biết  đến với các mỹ danh “ đất nước mặt trời mọc” “ xứ sở hoa anh đào” “ xứ phù tang”. Nhật bản luôn là một điều bí ẩn, khơi gợi sự tìm tòi, khám phá trong mỗi người. Mỗi một tên gọi lại mang một một ý nghĩa, gắn liền với đất nước con người nơi đây. Dưới đây chúng ta sẽ cùng tìm  hiểu rõ hơn về tên gọi đất nước Nhật bản.

Theo Bách khoa toàn thư mở Wikipedia thì tên "Nhật Bản" là viết theo theo âm Hán. Hai chữ "Nhật Bản" có nghĩa là "gốc của Mặt Trời" và như thế, được hiểu là "đất nước Mặt Trời mọc".

Nằm ở cực Đông của Châu Á nên  Nhật Bản cũng là nước đầu tiên nhìn thấy Mặt trời mọc vào mỗi sớm. Tổ tiên của họ là nữ thần Mặt Trời Amaterasu (Thái dương thần nữ). Không chỉ biết đến với loài hoa anh đào, Nhật Bản còn được gọi là “ đất nước hoa cúc”. Những bông hoa cúc 16 cánh xòe ra giống như Mặt Trời đang tỏa chiếu là biểu tượng của Hoàng gia và Quốc huy Nhật Bản hiện nay.

Nhật Bản còn có các mỹ danh “xứ sở anh đào”, vì loài hoa này trải dài khắp dọc đất nước, những cánh hoa thoắt nở thoắt tan, được người Nhật yêu thích, phản ánh tinh thần nhạy cảm, yêu cái đẹp.

Phù Tang cũng là một trong những tên gọi khi nhắc tời Nhật Bản. Cây phù tang thực chất là loại cây dâu. Theo truyền thuyết cổ phương Đông có cây dâu rỗng lòng gọi là Phù Tang hay Khổng Tang, là nơi thần Mặt Trời nghỉ dưỡng trước khi cưỡi xe lửa du hành ngang qua bầu trời từ Đông sang Tây, do đó Phù Tang hàm nghĩa văn chương chỉ nơi Mặt Trời mọc.', N'', 14)
INSERT [dbo].[Blog_Details] ([blog_details_id], [header], [description], [blog_img_url], [blog_id]) VALUES (28, N'Đám cưới của người Nhật – Lễ cưới chính thức', N'Bài viết này chúng ta cùng nhau đi tìm hiểu để xem người Nhật Bản tổ chức đám cưới như thế nào nhé. Cũng giống như phong tục cưới hỏi của người Việt Nam thuở trước. Hôn nhân của nam và nữ có 2 loại:

+ Hôn nhân sắp đặt: Do mai mối mà có cuộc hôn nhân đó.
+ Hôn nhân tự do: Là do 2 bên cùng yêu thương nhau từ trước rồi tiến đến hôn nhân.

Xem ngày cưới
Người Nhật cũng khá mê tín như người Việt và người Nhật đều rất quan trọng ngày tổ chức hôn lễ. Vì nếu lựa chọn được ngày tốt, thì họ tin rằng không chỉ có hôn nhân hạnh phúc bền vững, con cái đề huề. Mà, nó còn giúp cho công việc sau này của cặp vợ chồng trẻ đó được thuận buồm xuôi gió cũng như khi mua đất xây nhà…

Do vậy, ngày cưới được cả 2 bên xem xét rất kỹ lưỡng. Riêng điều này rất giống với Việt Nam và đều có chung phong tục xem ngày cưới. Tất nhiên, mục đích xem ngày tốt hay xấu này chỉ đi đến điều cuối cùng là: Hạnh phúc lứa đôi được trọn vẹn và xua tan đi những điều xấu không may mắn.

Trước khi làm lễ cưới chính thức
Trước khi làm lễ cưới chính thức, nhà gái sẽ có bữa liên hoan chia tay con gái của mình. Bữa tiệc liên hoàn này, cô dâu không chỉ chia ta gia đình, chia tay họ hàng mà còn chia tay cả hàng xóm nữa. Tất nhiên, cô dâu sẽ nhận được những lời cầum chúc về đám cưới trọn vẹn và hôn nhân viên mãn.

Để bước vào lễ cưới chính thức, người Nhật và người Việt đều dành trang phục đặc biệt cho cô dâu và chú rể. Nếu như ở Việt Nam, trước kia trang phục cưới truyền thống của cô dâu chính là chiếc áo dài. Còn Nhật Bản, thì cô dâu sẽ mặc kimono trắng và đội trên đầu chiếc mũ trắng trùm kín đầu có tên là tsuno-kakushi.

Bạn sẽ thấy rằng, đám cưới của người Nhật sẽ không khác là mấy so với người Việt chúng ta. Bởi cả người Việt lẫn người Nhật đều mang trong mình dòng máu của người Châu Á.', N'', 15)
INSERT [dbo].[Blog_Details] ([blog_details_id], [header], [description], [blog_img_url], [blog_id]) VALUES (29, N'Lovot là đứa con tinh thần của Kaname Hayashi', N'Giống như một sinh vật lai giữa chim cú và chim cánh cụt, Lovot được thiết kế để hoạt động trong nhà. Việc của nó chỉ là đi lang thang khắp nơi, nài nỉ bạn ôm nó. Giống như một con thú cưng không cần chăm sóc, Lovot được thiết kế để giúp người sở hữu có thể thư giãn sau một ngày làm việc dài và mệt mỏi.

Lovot là đứa con tinh thần của Kaname Hayashi, một nhà cựu thiết kế và phát triển xe đua công thức một. Ông cũng từng làm việc trong dự án robot Pepper của tỷ phú lừng danh Masayoshi Son.

"Con robot này chẳng thể làm gì giúp bạn. Trên thực tế, nó còn có thể gây vướng chân. Mọi thứ về con robot này là nó được thiết kế để đốn tim bạn", Hayashi, nhà phát triển Lovot, nhận định.

Hayashi bắt đầu xây dựng Groove X Inc. ba năm trước với mục tiêu làm ra và bán những con robot thân thiện, chẳng hạn như R2-D2 hay Doraemon. Bằng việc rút kinh nghiệm từng những thiết kế trước và tăng cường trí tuệ nhân tạo, Hayashi đánh cược sản phẩm của mình sẽ thành công khi những người khác thất bại.

Lovot không thể nói nhưng nó có thể tạo ra những âm thanh như tiếng mèo kêu hoặc tiếng chim hót. Tuy nhiên, nó không thể tương tác giống như các chúng ta làm với Siri trên iPhone. Robot cao 40 cm này cũng không thể phát nhạc hay kết nối với lịch trình của bạn vì chó và mèo mà bạn nuôi cũng không làm những điều đó.



Tuy nhiên, điểm nhấn của nó là đôi mắt, với những cơ thế hiển thị đầy cảm xúc. Trong khi đó, nó được trang bị hàng loạt cảm biến với phần cứng mạnh thường được dùng cho các dòng xe tự lái. Điều đó cho phép Lovot có thể nhận thức được những gì diễn ra xung quanh và hành động giống những gì chủ nhân cua rnos mong đợi.

Theo Hayashi, chip của Lovot là loại thường được dùng trong công nghiệp, cho phép nó tự học và điều khiển chính xác các cảm biết của robot. Theo Hayashi, Lovot thông minh hơn một chú chuột Hamster.

Trong khi đó, nhiệt lượng tỏa ra của robot được tính toán chính xác nhằm giúp nó "ấm áp" như một con người. Với trọng lượng khoảng 3kg, Lovot có cân nặng bằng một em bé sơ sinh và phù hợp để bế ẵm. Hơn 50 cảm biến khiến nó rất thông minh. Nếu bạn đối xử thô bạo với nó, nó sẽ nhớ và tránh xa bạn. Ngược lại, bạn ôm ấp nó, nó sẽ ngủ trên đùi bạn.

Lovot cũng trang bị 3 camera 180 độ, cho phép đo chiều sâu và cả nhiệt độ. Nhờ những máy quay này, nó có thể lập bản đồ môi trường xung quanh, nhớ 1.000 người và phân biệt 100 người cùng lúc.

Tuy nhiên, sản phẩm này không hề rẻ. Nó có giá 3.000 USD nhưng cho phép trả góp hàng tháng với 90 USD/tháng. Công ty của Hayashi dự kiến sẽ bán robot này vào cuối năm tới, chủ yếu tập trung vào phụ nữ và người già.', N'', 16)
INSERT [dbo].[Blog_Details] ([blog_details_id], [header], [description], [blog_img_url], [blog_id]) VALUES (30, N'Đội tuyển Iran được đánh giá rất cao tại Asian Cup 2019', N'Thậm chí, khi đối đầu “Samurai xanh”, Iran tiếp tục được xếp cửa trên. Nhật Bản không chơi quá tưng bừng từ đầu giải. Thêm nữa, trận thắng chật vật trước đội tuyển Việt Nam ở tứ kết càng khiến sức mạnh của đội bóng từng 4 lần vô địch Asian Cup bị đặt dấu hỏi.

Thế nhưng Iran lại thi đấu vô cùng thất vọng. Chính xác hơn, đội bóng của HLV Queiroz sai lầm khi đánh giá thấp Nhật Bản. Họ gặp bế tắc, nôn nóng và vỡ trận trước lối chơi lỳ lợm, giàu tính kỷ luật của “Samurai xanh”. Tỷ số 0-3 thực sự là cú sốc cho người hâm mộ Iran.

Tại Việt Nam, khi chứng kiến trận bán kết, nhiều người hâm mộ cũng không dám tin vào kết quả. Việt Nam từng đối đầu trực tiếp với cả 2 đội tại Asian Cup 2019 nên lập tức đã có nhiều so sánh trên mạng xã hội.

Có không ít cư dân mạng bày tỏ quan điểm tiếc nuối cho Iran bởi Nhật Bản quá khôn ngoan. Cho đến tận bán kết, đội bóng áo xanh vẫn giấu bài và có cảm giác họ vẫn chưa bung hết sức.

Ngược lại, cũng có nhiều ý kiến châm chọc Iran, thậm chí cho rằng Iran không bằng Việt Nam nếu lấy Nhật Bản là thước đo. Tại tứ kết, thầy trò HLV Park Hang Seo chỉ chịu thua “Samurai xanh” 1 bàn duy nhất từ chấm phạt đền. Vì thế, có tài khoản facebook còn hóm hỉnh suy ra Việt Nam đã thắng Iran 2-0.

Tuy nhiên có lẽ đây chỉ là những bình luận mang tính vui đùa bởi thực tế sự chênh lệch giữa ĐT Việt Nam và ĐT Iran đã được thể hiện rõ qua cuộc chạm trán giữa 2 đội ở vòng bảng (Iran thắng 2-0).', N'', 17)
SET IDENTITY_INSERT [dbo].[Blog_Details] OFF
GO
SET IDENTITY_INSERT [dbo].[Chapter] ON 

INSERT [dbo].[Chapter] ([chapter_id], [chapter_name], [description], [course_id]) VALUES (36, N'Chương 1', N'Nhập môn', 31)
INSERT [dbo].[Chapter] ([chapter_id], [chapter_name], [description], [course_id]) VALUES (37, N'Chương 2', N'Giới thiệu về tên, tuổi, quê quán, nghề nghiệp', 31)
INSERT [dbo].[Chapter] ([chapter_id], [chapter_name], [description], [course_id]) VALUES (38, N'Chương 3', N'Giới thiệu về đồ vật', 31)
INSERT [dbo].[Chapter] ([chapter_id], [chapter_name], [description], [course_id]) VALUES (39, N'Chương 4', N'Giới thiệu về địa điểm', 31)
INSERT [dbo].[Chapter] ([chapter_id], [chapter_name], [description], [course_id]) VALUES (40, N'Chương 5', N'Cách nói về thời gian thực hiện hành động', 31)
INSERT [dbo].[Chapter] ([chapter_id], [chapter_name], [description], [course_id]) VALUES (41, N'Chương 6', N'Cách nói về sự di chuyển', 31)
INSERT [dbo].[Chapter] ([chapter_id], [chapter_name], [description], [course_id]) VALUES (42, N'Chương 7', N'Miêu tả hành động', 31)
INSERT [dbo].[Chapter] ([chapter_id], [chapter_name], [description], [course_id]) VALUES (43, N'Chương 1', N'Thể khả năng', 35)
INSERT [dbo].[Chapter] ([chapter_id], [chapter_name], [description], [course_id]) VALUES (44, N'Chương 2', N'Mẫu câu trạng thái với tự động từ', 35)
INSERT [dbo].[Chapter] ([chapter_id], [chapter_name], [description], [course_id]) VALUES (45, N'Chương 8', N'Mô tả 8', 31)
INSERT [dbo].[Chapter] ([chapter_id], [chapter_name], [description], [course_id]) VALUES (46, N'Chương 9', N'Mô tả 9', 31)
INSERT [dbo].[Chapter] ([chapter_id], [chapter_name], [description], [course_id]) VALUES (47, N'Chương 10', N'Mô tả 10', 31)
INSERT [dbo].[Chapter] ([chapter_id], [chapter_name], [description], [course_id]) VALUES (48, N'Chương 11', N'Mô tả 11', 31)
INSERT [dbo].[Chapter] ([chapter_id], [chapter_name], [description], [course_id]) VALUES (49, N'Chương 12', N'Mo tả 12', 31)
SET IDENTITY_INSERT [dbo].[Chapter] OFF
GO
SET IDENTITY_INSERT [dbo].[Contact] ON 

INSERT [dbo].[Contact] ([contact_id], [email], [name], [request_date], [response_date], [status], [request_message], [response_message]) VALUES (1, N'nguyenthanhlam1070@gmail.com', N'Nguyen Thanh Lam', CAST(N'2023-05-28' AS Date), NULL, 0, N'Tiếng nhật có bao nhiêu level?', NULL)
INSERT [dbo].[Contact] ([contact_id], [email], [name], [request_date], [response_date], [status], [request_message], [response_message]) VALUES (2, N'nguyenthanhlam7070@gmail.com', N'Phan Trường Lâm', CAST(N'2023-05-28' AS Date), CAST(N'2023-05-29' AS Date), 1, N'Làm thế nào để học tốt tiếng Nhật?', N'Để học tốt tiếng Nhật, bạn có thể tham khảo các gợi ý sau đây:

Xác định mục tiêu học: Đầu tiên, xác định rõ mục tiêu học của bạn. Bạn muốn học tiếng Nhật để giao tiếp hàng ngày, đạt chứng chỉ JLPT, hoặc để du học/làm việc tại Nhật Bản? Mục tiêu rõ ràng sẽ giúp bạn tập trung vào những kỹ năng và kiến thức quan trọng.

Học từ vựng và ngữ pháp cơ bản: Tiếng Nhật có một số cấu trúc ngữ pháp đặc biệt và một lượng từ vựng phong phú. Bắt đầu với những khái niệm và cấu trúc cơ bản, sau đó mở rộng từ vựng và ngữ pháp dần dần theo nhu cầu của bạn.

Luyện nghe và nói: Hãy lắng nghe tiếng Nhật càng nhiều càng tốt bằng cách nghe các bản tin, podcast, video, hoặc tham gia các khóa học trực tuyến. Thực hành nói tiếng Nhật để cải thiện phản xạ ngôn ngữ và lưu loát hơn.

Đọc và viết: Đọc sách, báo, blog tiếng Nhật và viết nhật ký hoặc bài viết bằng tiếng Nhật. Điều này giúp bạn làm quen với cấu trúc câu, từ vựng mới và cách sử dụng ngôn ngữ.

Sử dụng các nguồn học phù hợp: Tìm kiếm sách giáo trình, ứng dụng di động, trang web học tiếng Nhật và tài liệu trực tuyến phù hợp với trình độ và mục tiêu học của bạn. Các khóa học trực tuyến, nhóm học, hoặc giáo viên tiếng Nhật cũng có thể giúp bạn tiến bộ nhanh hơn.

Thực hành hàng ngày: Hãy tìm cách thực hành tiếng Nhật hàng ngày, dù chỉ là vài phút mỗi ngày. Bạn có thể luyện nghe qua video, nói chuyện với bạn bè học cùng, viết nhật ký hoặc thực hiện các bài tập ngữ pháp và từ vựng.

Tìm hiểu văn hóa Nhật Bản: Hiểu văn hóa và lối sống của người Nhật sẽ giúp bạn có cái nhìn tổng quan về ngôn ngữ')
INSERT [dbo].[Contact] ([contact_id], [email], [name], [request_date], [response_date], [status], [request_message], [response_message]) VALUES (3, N'aaaaaaaaaaaaaaaaaaaaaaaa@gmail.com', N'aaaaaaaaaaaaaaaaaaaaaaaa', CAST(N'2023-05-28' AS Date), NULL, 0, N'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', NULL)
INSERT [dbo].[Contact] ([contact_id], [email], [name], [request_date], [response_date], [status], [request_message], [response_message]) VALUES (4, N'nguyenthanhlam1070@gmail.com', N'Lam Thanh Nguyen', CAST(N'2023-05-29' AS Date), CAST(N'2023-05-29' AS Date), 1, N'okk', N'mmmmmmmmmmmmmm')
SET IDENTITY_INSERT [dbo].[Contact] OFF
GO
SET IDENTITY_INSERT [dbo].[Course] ON 

INSERT [dbo].[Course] ([course_id], [course_avatar_url], [course_name], [description], [duration], [price], [status], [created_at]) VALUES (31, N'https://firebasestorage.googleapis.com/v0/b/flearning-131be.appspot.com/o/course%2Fimages%2Fcourse-1.jpg?alt=media&token=33ec8fac-a8ee-47cd-b024-466ac7219b53', N'Khóa học N5 free', N'Khóa học tiếng Nhật N5 miễn phí toàn bộ: gồm đầy đủ các bài giảng chi tiết, dễ hiểu về ngữ pháp, từ vựng, hội thoại, nghe, đọc theo giáo trình Minna no nihongo và Kanji theo Look and learn.', 12, 0, 1, CAST(N'2023-05-25' AS Date))
INSERT [dbo].[Course] ([course_id], [course_avatar_url], [course_name], [description], [duration], [price], [status], [created_at]) VALUES (35, N'https://firebasestorage.googleapis.com/v0/b/flearning-131be.appspot.com/o/course%2Fimages%2Fcourse-2.jpg?alt=media&token=d3085226-f18b-4dee-b22c-8bdb7b17dfae', N'Khóa học N4', N'Mô tả khóa học N4', 22, 2000000, 1, CAST(N'2023-05-26' AS Date))
INSERT [dbo].[Course] ([course_id], [course_avatar_url], [course_name], [description], [duration], [price], [status], [created_at]) VALUES (36, N'https://firebasestorage.googleapis.com/v0/b/flearning-131be.appspot.com/o/course%2Fimages%2Fcourse-3.jpg?alt=media&token=6e59820a-1565-4076-9b35-df57b536145d', N'Khóa học N3', N'Mô tả khóa học N3', 11, 3000000, 1, CAST(N'2023-05-26' AS Date))
INSERT [dbo].[Course] ([course_id], [course_avatar_url], [course_name], [description], [duration], [price], [status], [created_at]) VALUES (37, N'https://firebasestorage.googleapis.com/v0/b/flearning-131be.appspot.com/o/course%2Fimages%2Fcourse-4.jpg?alt=media&token=7109d1fe-18d5-4d53-a51f-6db6a42dbfbe', N'Khóa học N2', N'Mô tả khóa học N2', 1, 4500000, 1, CAST(N'2023-05-26' AS Date))
INSERT [dbo].[Course] ([course_id], [course_avatar_url], [course_name], [description], [duration], [price], [status], [created_at]) VALUES (38, N'https://firebasestorage.googleapis.com/v0/b/flearning-131be.appspot.com/o/course%2Fimages%2Fcourse-6.jpg?alt=media&token=3791d1ff-ea0f-4a58-9325-d6449f132f7b', N'Khóa học N1', N'Mô tả khóa học N1', 11, 7000000, 1, CAST(N'2023-05-26' AS Date))
INSERT [dbo].[Course] ([course_id], [course_avatar_url], [course_name], [description], [duration], [price], [status], [created_at]) VALUES (39, N'https://firebasestorage.googleapis.com/v0/b/flearning-131be.appspot.com/o/course%2Fimages%2Fcourse-5.jpg?alt=media&token=d12bf660-11d1-404a-81a7-c581fbafc1d3', N'Khóa học N1 nâng cao', N'Mô tả khóa học N1', 12, 10000000, 1, CAST(N'2023-05-26' AS Date))
SET IDENTITY_INSERT [dbo].[Course] OFF
GO
SET IDENTITY_INSERT [dbo].[Feedback] ON 

INSERT [dbo].[Feedback] ([feedback_id], [name], [email], [star], [course_name], [message], [course_id], [user_avatar_url]) VALUES (1, N'Nguyễn Duy Phương', N'nguyenduyphuong7070@gmail.com', 4, N'Khóa học N4', N'Em đã học tiếng ở nhiều nơi khác nhau, tốt nhất mà em từng tham gia. Giáo viên rất giỏi và nhiệt tình, họ luôn sẵn sàng giúp đỡ và trả lời các câu hỏi của tôi. Em rất thích cách giảng dạy linh hoạt và tùy chỉnh theo nhu cầu của mỗi học viên. Nội dung bài học rất rõ ràng và dễ hiểu, giúp em học tiếng Nhật một cách hiệu quả và nhanh chóng', 35, N'https://firebasestorage.googleapis.com/v0/b/flearning-131be.appspot.com/o/course%2Fimages%2FqQd5iPVeVf3SO6Cm5hgp_62c6fb0f27f11_cvtpl.jpg?alt=media&token=b186c25b-ccd7-4657-9170-8f94ccebaeca')
INSERT [dbo].[Feedback] ([feedback_id], [name], [email], [star], [course_name], [message], [course_id], [user_avatar_url]) VALUES (2, N'Nguyễn Thành Lâm ', N'nguyenthanhlam1070@gmail.com', 5, N'Khóa học N4', N'Khóa học rất hay và thú vị', 35, N'null')
SET IDENTITY_INSERT [dbo].[Feedback] OFF
GO
SET IDENTITY_INSERT [dbo].[Lesson] ON 

INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [description], [video_url], [material_url], [chapter_id], [duration]) VALUES (15, N'Bảng chữ cái Hiragana', N'Bảng chữ cái Hiragana là một hệ thống chữ viết phục vụ cho ngôn ngữ tiếng Nhật. Nó được sử dụng chủ yếu để viết các từ ngữ không phải là chữ Hán (kanji) và không thuộc bảng chữ cái Katakana. Bảng chữ cái Hiragana bao gồm 46 ký tự cơ bản, bao gồm âm tiết và âm đơn. Dưới đây là bảng chữ cái Hiragana với các ký tự và âm ', N'https://firebasestorage.googleapis.com/v0/b/flearning-131be.appspot.com/o/course%2Fvideos%2Fvideo-1.mp4?alt=media&token=583179ee-0949-4aea-b7e3-0bffe55d850d', N'https://drive.google.com/drive/folders/1ZRIRvkmV9j7JlZkKw20hXGXDFqMLS840?usp=sharing', 36, NULL)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [description], [video_url], [material_url], [chapter_id], [duration]) VALUES (16, N'Âm đục, âm ghép Hiragana', N'Mô tả bài học', N'https://firebasestorage.googleapis.com/v0/b/flearning-131be.appspot.com/o/course%2Fvideos%2Fvideo-2.mp4?alt=media&token=841b5168-7219-429b-9a7a-1c780021fe79', N'https://drive.google.com/drive/folders/1ZRIRvkmV9j7JlZkKw20hXGXDFqMLS840', 36, NULL)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [description], [video_url], [material_url], [chapter_id], [duration]) VALUES (17, N'Ghép chữ ', N'Mô tả bài học ghép chữ', N'https://firebasestorage.googleapis.com/v0/b/flearning-131be.appspot.com/o/course%2Fvideos%2Fvideo-3.mp4?alt=media&token=f90cfb3c-ac27-4678-a112-3354336248d9', N'https://drive.google.com/drive/folders/1ZRIRvkmV9j7JlZkKw20hXGXDFqMLS840', 36, NULL)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [description], [video_url], [material_url], [chapter_id], [duration]) VALUES (18, N'Ghép chữ Katakana', N'Mô tả bài học ', N'https://firebasestorage.googleapis.com/v0/b/flearning-131be.appspot.com/o/course%2Fvideos%2Fvideo-4.mp4?alt=media&token=58c9c177-fbfc-4b02-aa7a-4bd89b975f44', N'https://drive.google.com/drive/folders/1ZRIRvkmV9j7JlZkKw20hXGXDFqMLS840', 36, NULL)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [description], [video_url], [material_url], [chapter_id], [duration]) VALUES (19, N'Đếm số, đếm tuổi', N'Mô tả bài học', N'https://firebasestorage.googleapis.com/v0/b/flearning-131be.appspot.com/o/course%2Fvideos%2Fvideo-5.mp4?alt=media&token=cfc3081c-3fa5-4194-a209-5bb19960e485', N'https://drive.google.com/drive/folders/1ZRIRvkmV9j7JlZkKw20hXGXDFqMLS840', 37, NULL)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [description], [video_url], [material_url], [chapter_id], [duration]) VALUES (20, N'Giới thiệu giáo trình ', N'Mô tả bài học ', N'https://firebasestorage.googleapis.com/v0/b/flearning-131be.appspot.com/o/course%2Fvideos%2Fvideo-6.mp4?alt=media&token=abd0f291-945f-4115-850d-aa6b2d413bb8', N'https://drive.google.com/drive/folders/1ZRIRvkmV9j7JlZkKw20hXGXDFqMLS840', 37, NULL)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [description], [video_url], [material_url], [chapter_id], [duration]) VALUES (21, N'Giới thiệu bản thân', N'Mô tả bài học ', N'https://firebasestorage.googleapis.com/v0/b/flearning-131be.appspot.com/o/course%2Fvideos%2Fvideo-7.mp4?alt=media&token=c1a14949-7959-4811-840b-42a4dcdc5300', N'https://drive.google.com/drive/folders/1ZRIRvkmV9j7JlZkKw20hXGXDFqMLS840', 37, NULL)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [description], [video_url], [material_url], [chapter_id], [duration]) VALUES (22, N'Các câu giao tiếp cơ bản', N'Mô tả bài học', N'https://firebasestorage.googleapis.com/v0/b/flearning-131be.appspot.com/o/course%2Fvideos%2Fvideo-9.mp4?alt=media&token=8c3ea3d4-6fe8-4156-88e2-5fa377cfdf5f', N'https://drive.google.com/drive/folders/1ZRIRvkmV9j7JlZkKw20hXGXDFqMLS840', 37, NULL)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [description], [video_url], [material_url], [chapter_id], [duration]) VALUES (23, N'Đếm giá tiền ', N'Mô tả bài học', N'https://firebasestorage.googleapis.com/v0/b/flearning-131be.appspot.com/o/course%2Fvideos%2Fvideo-9.mp4?alt=media&token=60db3196-d11a-4e34-8f4a-8c197bdba628', N'https://drive.google.com/drive/folders/1ZRIRvkmV9j7JlZkKw20hXGXDFqMLS840', 38, NULL)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [description], [video_url], [material_url], [chapter_id], [duration]) VALUES (24, N'Hội thoại ', N'Mô tả bài học', N'https://firebasestorage.googleapis.com/v0/b/flearning-131be.appspot.com/o/course%2Fvideos%2Fvideo-9.mp4?alt=media&token=7d12b5a1-633d-45cd-a01c-011635815e89', N'https://drive.google.com/drive/folders/1ZRIRvkmV9j7JlZkKw20hXGXDFqMLS840', 38, NULL)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [description], [video_url], [material_url], [chapter_id], [duration]) VALUES (25, N'Bài học 2', N'Mô tả 3', N'https://firebasestorage.googleapis.com/v0/b/flearning-131be.appspot.com/o/course%2Fvideos%2Fvideo-12.mp4?alt=media&token=0c9ebd7c-d09e-428f-b8eb-ba4023dfae1c', N'link', 49, NULL)
SET IDENTITY_INSERT [dbo].[Lesson] OFF
GO
INSERT [dbo].[Lesson_Done] ([lesson_id], [email], [course_id]) VALUES (15, N'nguyenduyphuong7070@gmail.com', 31)
INSERT [dbo].[Lesson_Done] ([lesson_id], [email], [course_id]) VALUES (15, N'nguyenthanhlam1070@gmail.com', 31)
INSERT [dbo].[Lesson_Done] ([lesson_id], [email], [course_id]) VALUES (16, N'nguyenduyphuong7070@gmail.com', 31)
INSERT [dbo].[Lesson_Done] ([lesson_id], [email], [course_id]) VALUES (16, N'nguyenthanhlam1070@gmail.com', 31)
INSERT [dbo].[Lesson_Done] ([lesson_id], [email], [course_id]) VALUES (17, N'nguyenduyphuong7070@gmail.com', 31)
INSERT [dbo].[Lesson_Done] ([lesson_id], [email], [course_id]) VALUES (17, N'nguyenthanhlam1070@gmail.com', 31)
INSERT [dbo].[Lesson_Done] ([lesson_id], [email], [course_id]) VALUES (18, N'nguyenduyphuong7070@gmail.com', 31)
INSERT [dbo].[Lesson_Done] ([lesson_id], [email], [course_id]) VALUES (18, N'nguyenthanhlam1070@gmail.com', 31)
INSERT [dbo].[Lesson_Done] ([lesson_id], [email], [course_id]) VALUES (19, N'nguyenduyphuong7070@gmail.com', 31)
INSERT [dbo].[Lesson_Done] ([lesson_id], [email], [course_id]) VALUES (19, N'nguyenthanhlam1070@gmail.com', 31)
INSERT [dbo].[Lesson_Done] ([lesson_id], [email], [course_id]) VALUES (20, N'nguyenduyphuong7070@gmail.com', 31)
INSERT [dbo].[Lesson_Done] ([lesson_id], [email], [course_id]) VALUES (20, N'nguyenthanhlam1070@gmail.com', 31)
INSERT [dbo].[Lesson_Done] ([lesson_id], [email], [course_id]) VALUES (21, N'nguyenduyphuong7070@gmail.com', 31)
INSERT [dbo].[Lesson_Done] ([lesson_id], [email], [course_id]) VALUES (22, N'nguyenduyphuong7070@gmail.com', 31)
INSERT [dbo].[Lesson_Done] ([lesson_id], [email], [course_id]) VALUES (23, N'nguyenduyphuong7070@gmail.com', 31)
INSERT [dbo].[Lesson_Done] ([lesson_id], [email], [course_id]) VALUES (24, N'nguyenduyphuong7070@gmail.com', 31)
INSERT [dbo].[Lesson_Done] ([lesson_id], [email], [course_id]) VALUES (25, N'nguyenthanhlam1070@gmail.com', 31)
GO
SET IDENTITY_INSERT [dbo].[Payment] ON 

INSERT [dbo].[Payment] ([payment_id], [email], [course_id], [amount], [created_date], [course_name], [phone], [address], [name]) VALUES (1, N'nguyenthanhlam1070@gmail.com', 36, 3000000, CAST(N'2023-05-29' AS Date), N'Khóa học N3', N'0385981070', N'asdsad', NULL)
INSERT [dbo].[Payment] ([payment_id], [email], [course_id], [amount], [created_date], [course_name], [phone], [address], [name]) VALUES (2, N'nguyenthanhlam1070@gmail.com', 35, 2000000, CAST(N'2023-05-29' AS Date), N'Khóa học N4', N'0385981070', N'Hải Dương', N'Nguyễn Thành Lâm ')
INSERT [dbo].[Payment] ([payment_id], [email], [course_id], [amount], [created_date], [course_name], [phone], [address], [name]) VALUES (3, N'nguyenthanhlam1070@gmail.com', 39, 10000000, CAST(N'2023-05-29' AS Date), N'Khóa học N1 nâng cao', N'0385981070', N'Hải Dương', N'Nguyễn Thành Lâm ')
INSERT [dbo].[Payment] ([payment_id], [email], [course_id], [amount], [created_date], [course_name], [phone], [address], [name]) VALUES (4, N'nguyenduyphuong7070@gmail.com', 35, 2000000, CAST(N'2023-05-29' AS Date), N'Khóa học N4', N'0385981072', N'Hải Dương', N'Nguyễn Duy Phương')
INSERT [dbo].[Payment] ([payment_id], [email], [course_id], [amount], [created_date], [course_name], [phone], [address], [name]) VALUES (5, N'nguyenduyphuong7070@gmail.com', 36, 3000000, CAST(N'2023-05-29' AS Date), N'Khóa học N3', N'0385981072', N'Hải Dương', N'Nguyễn Duy Phương')
INSERT [dbo].[Payment] ([payment_id], [email], [course_id], [amount], [created_date], [course_name], [phone], [address], [name]) VALUES (6, N'nguyenthanhlam1070@gmail.com', 38, 7000000, CAST(N'2023-05-29' AS Date), N'Khóa học N1', N'0385981070', N'Hải Dương', N'Nguyễn Thành Lâm ')
INSERT [dbo].[Payment] ([payment_id], [email], [course_id], [amount], [created_date], [course_name], [phone], [address], [name]) VALUES (7, N'nguyenduyphuong7070@gmail.com', 38, 7000000, CAST(N'2023-05-29' AS Date), N'Khóa học N1', N'0385981072', N'Hải Dương', N'Nguyễn Duy Phương')
SET IDENTITY_INSERT [dbo].[Payment] OFF
GO
SET IDENTITY_INSERT [dbo].[Question] ON 

INSERT [dbo].[Question] ([question_id], [description], [answer_1], [answer_2], [answer_3], [answer_4], [correct_answer], [test_id], [explaination]) VALUES (10, N'ざっし', N'Bút chì', N'Bút chì', N'Bút chì', N'Bút chì', 1, 23, N'Giải thích câu 1')
INSERT [dbo].[Question] ([question_id], [description], [answer_1], [answer_2], [answer_3], [answer_4], [correct_answer], [test_id], [explaination]) VALUES (11, N'かばん', N'Đồng hồ', N'Ví da', N'Vali', N'Cặp sách', 2, 23, N'')
INSERT [dbo].[Question] ([question_id], [description], [answer_1], [answer_2], [answer_3], [answer_4], [correct_answer], [test_id], [explaination]) VALUES (12, N'ノート', N'Sách', N'Vở', N'Báo', N' Sổ tay', 2, 23, N'')
INSERT [dbo].[Question] ([question_id], [description], [answer_1], [answer_2], [answer_3], [answer_4], [correct_answer], [test_id], [explaination]) VALUES (13, N'かぎ', N'Chìa khoá', N'Cửa', N'Ổ khoá', N'Cây đủ', 2, 23, N'')
INSERT [dbo].[Question] ([question_id], [description], [answer_1], [answer_2], [answer_3], [answer_4], [correct_answer], [test_id], [explaination]) VALUES (14, N'てちょう', N'Tạp chí', N'Nhật ký', N'Sổ tay', N'Bản kế hoạch', 2, 23, N'')
INSERT [dbo].[Question] ([question_id], [description], [answer_1], [answer_2], [answer_3], [answer_4], [correct_answer], [test_id], [explaination]) VALUES (15, N'asdasd', N'asa', N'aa', N'aaa', N'aaa', 2, 23, N'')
INSERT [dbo].[Question] ([question_id], [description], [answer_1], [answer_2], [answer_3], [answer_4], [correct_answer], [test_id], [explaination]) VALUES (23, N'Chọn đáp án sai', N'1 + 1 = 3', N'1 + 1 = 2', N'1 + 1 = 20', N'1 + 1 = 10', 3, 25, N'Đáp án này sai là vì nó sai')
SET IDENTITY_INSERT [dbo].[Question] OFF
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([role_id], [role_name]) VALUES (1, N'admin')
INSERT [dbo].[Role] ([role_id], [role_name]) VALUES (2, N'user')
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
SET IDENTITY_INSERT [dbo].[Support] ON 

INSERT [dbo].[Support] ([support_id], [support_name], [message]) VALUES (14, N'THÔNG TIN KHÓA HỌC N5, N4', N'Mình giới thiệu qua về khoá của mình chút nha 😉
Khoá online của mình là bạn vào học theo sự hướng dẫn của giáo viên trên những video quay sẵn chi tiết như khi đi học trên lớp, có bài tập đầy đủ 😉 Bạn có thể xem lại nhiều lần và học bất cứ lúc nào 😉 Trong khoá học sẽ có đủ các nội dung sau: từ vựng, ngữ pháp, hội thoại, chữ Kanji (dưới dạng video) và bài tập nghe hiểu có giải đáp, phần đọc hiểu cùng các bài tập trắc nghiệm khác ^^ Bạn vào link sau để xem mẫu các bài học thử nha😉 
🌸N5: https://tiengnhatcolam.vn/khoa-hoc/17-khoa-hoc-n5
 
🌸N4: https://tiengnhatcolam.vn/khoa-hoc/18-khoa-hoc-n4
Về học phí thì hiện bên mình có các gói sau:
👉🏻Gói N5 full từ Nhập môn đến Bài 25 đang có chương trình ưu đãi giảm từ 800 còn 500 😉 
👉🏻Gói N4 từ Bài 26-50 thì đang giảm từ 1.200 còn 700 😉
Sẽ là rẻ nhất nếu bạn mua combo N5+N4 thì giảm chỉ còn 1 triệu cho cả 2 khoá thôi ạ 😊')
INSERT [dbo].[Support] ([support_id], [support_name], [message]) VALUES (15, N'VỀ VẤN ĐỀ GIA HẠN KHÓA HỌC ONLINE', N'Từ ngày 24/05.2020, các khóa học trên Website sẽ áp dụng tính phí gia hạn khi hết thời hạn.

Mức phí gia hạn:

- Nộp phí 200.000 gia hạn 6 tháng/ khóa học đã mua.
- Nộp phí 350.000 gia hạn 1 năm/ khóa học đã mua.
- Nộp phí 500.000 gia hạn 18 tháng/ khóa học đã mua.

Mức phí trên áp dụng chung cho tất cả các khóa học/ combo. 
 

 
Cách thức gia hạn:

- Khi khóa học bạn đã mua nhưng vì lí do nào đó chưa học xong, hãy liên hệ qua fanpage: https://www.facebook.com/hoctiengnhatcolamđể gia hạn khóa học. 

- Hình thức chuyển khoản: Bạn chỉ cần ghi nội dung chuyển khoản như sau: "Giahan +mail mà bạn đã đăng ký khóa học trên Web"
Ví dụ: mail bạn đăng ký khóa học trên web là Thuhana123@gmail.com ==> Bạn cần gia hạn khóa đã mua thêm 6 tháng thì bạn Chuyển khoản 200.000 vào 1 trong các số tài khoản của cô Lam, ghi nội dung chuyển khoản là "Giahan Thuhana123gmail.com" là bên Web sẽ tự gia hạn.

- Trường hợp bạn đã chuyển khoản gia hạn nhưng chưa được gia hạn thì hãy liên hệ qua fanpage hoặc Hotline để được hỗ trợ nhé.')
INSERT [dbo].[Support] ([support_id], [support_name], [message]) VALUES (16, N'HƯỚNG DẪN THANH TOÁN KHÓA HỌC', N'Bước 1: Bạn đăng ký nick học online bằng cách: ấn nút đăng ký, rồi bạn chỉ cần gõ tên, sau đó nhập địa chỉ mail rồi nhập mật khẩu 2 lần là tạo xong nick 😉

Tạo nick xong thì bạn gửi chuyển khoản học phí rồi báo qua hotline 0372232268 hoặc fanpage https://www.facebook.com/hoctiengnhatcolam để bên mình kiểm tra và kích hoạt sớm nhất có thể😉

Lưu ý phần nội dung chuyển khoản thì bạn ghi mail mà bạn đăng ký trên web hoặc mã đơn hàng nha 😉 

Trường hợp bạn không ghi được nội dung chuyển khoản thì hãy chụp lại ảnh bill chuyển nhé 😉

 

🏦Vietcombank 

Số tài khoản: 0541000319729

Chủ TK: Dao Thanh Lam

Chi nhánh: Chương Dương (Hà Nội)

 

🏦BIDV

Số tài khoản: 15110000800839

Chủ TK: Dao Thanh Lam

Chi nhánh: Thành Đô (Hà Nội)

 

🏦Agribank 

Số tài khoản: 2200205413647

Chủ TK: Dao Thanh Lam

Chi nhánh: Hà Tây

 

🏦Vietinbank

Số tài khoản: 103872706595

Chủ TK: Dao Thanh Lam

Chi nhánh: Bắc Hà Nội

 

🏦Techcombank

Số tài khoản: 19034580790014

Chủ TK: Dao Thanh Lam

 

Chi nhánh: Sài Đồng (Hà Nội)')
SET IDENTITY_INSERT [dbo].[Support] OFF
GO
SET IDENTITY_INSERT [dbo].[Test] ON 

INSERT [dbo].[Test] ([test_id], [test_name], [chapter_id], [course_id], [description], [duration]) VALUES (23, N'Bài kiểm tra 1', 37, 31, N'Mô tả bài kiểm tra 1', 30)
INSERT [dbo].[Test] ([test_id], [test_name], [chapter_id], [course_id], [description], [duration]) VALUES (25, N'Bài kiểm tra 2', 37, 31, N'Mô tả bài kiểm tra 2', 11)
INSERT [dbo].[Test] ([test_id], [test_name], [chapter_id], [course_id], [description], [duration]) VALUES (26, N'Bài kiểm tra 3', 38, 31, N'Mô tả bài kiểm tra 3', 11)
SET IDENTITY_INSERT [dbo].[Test] OFF
GO
INSERT [dbo].[Test_Done] ([email], [test_id], [course_id]) VALUES (N'nguyenduyphuong7070@gmail.com', 23, 31)
INSERT [dbo].[Test_Done] ([email], [test_id], [course_id]) VALUES (N'nguyenthanhlam1070@gmail.com', 23, 31)
INSERT [dbo].[Test_Done] ([email], [test_id], [course_id]) VALUES (N'nguyenthanhlam1070@gmail.com', 25, 31)
INSERT [dbo].[Test_Done] ([email], [test_id], [course_id]) VALUES (N'nguyenthanhlam1070@gmail.com', 26, 31)
GO
INSERT [dbo].[User_Course] ([course_id], [email], [enrolled_date]) VALUES (35, N'nguyenduyphuong7070@gmail.com', CAST(N'2023-05-29' AS Date))
INSERT [dbo].[User_Course] ([course_id], [email], [enrolled_date]) VALUES (35, N'nguyenthanhlam1070@gmail.com', CAST(N'2023-05-29' AS Date))
INSERT [dbo].[User_Course] ([course_id], [email], [enrolled_date]) VALUES (36, N'nguyenduyphuong7070@gmail.com', CAST(N'2023-05-29' AS Date))
INSERT [dbo].[User_Course] ([course_id], [email], [enrolled_date]) VALUES (36, N'nguyenthanhlam1070@gmail.com', CAST(N'2023-05-29' AS Date))
INSERT [dbo].[User_Course] ([course_id], [email], [enrolled_date]) VALUES (38, N'nguyenduyphuong7070@gmail.com', CAST(N'2023-05-29' AS Date))
INSERT [dbo].[User_Course] ([course_id], [email], [enrolled_date]) VALUES (38, N'nguyenthanhlam1070@gmail.com', CAST(N'2023-05-29' AS Date))
INSERT [dbo].[User_Course] ([course_id], [email], [enrolled_date]) VALUES (39, N'nguyenthanhlam1070@gmail.com', CAST(N'2023-05-29' AS Date))
GO
ALTER TABLE [dbo].[Account]  WITH CHECK ADD FOREIGN KEY([role_id])
REFERENCES [dbo].[Role] ([role_id])
GO
ALTER TABLE [dbo].[Blog]  WITH CHECK ADD FOREIGN KEY([blog_category_id])
REFERENCES [dbo].[Blog_Category] ([blog_category_id])
GO
ALTER TABLE [dbo].[Blog_Details]  WITH CHECK ADD FOREIGN KEY([blog_id])
REFERENCES [dbo].[Blog] ([blog_id])
GO
ALTER TABLE [dbo].[Chapter]  WITH CHECK ADD FOREIGN KEY([course_id])
REFERENCES [dbo].[Course] ([course_id])
GO
ALTER TABLE [dbo].[Feedback]  WITH CHECK ADD FOREIGN KEY([email])
REFERENCES [dbo].[Account] ([email])
GO
ALTER TABLE [dbo].[Feedback]  WITH CHECK ADD  CONSTRAINT [FK_Feedback_Course] FOREIGN KEY([course_id])
REFERENCES [dbo].[Course] ([course_id])
GO
ALTER TABLE [dbo].[Feedback] CHECK CONSTRAINT [FK_Feedback_Course]
GO
ALTER TABLE [dbo].[Lesson]  WITH CHECK ADD FOREIGN KEY([chapter_id])
REFERENCES [dbo].[Chapter] ([chapter_id])
GO
ALTER TABLE [dbo].[Lesson_Done]  WITH CHECK ADD FOREIGN KEY([course_id])
REFERENCES [dbo].[Course] ([course_id])
GO
ALTER TABLE [dbo].[Lesson_Done]  WITH CHECK ADD FOREIGN KEY([email])
REFERENCES [dbo].[Account] ([email])
GO
ALTER TABLE [dbo].[Lesson_Done]  WITH CHECK ADD FOREIGN KEY([lesson_id])
REFERENCES [dbo].[Lesson] ([lesson_id])
GO
ALTER TABLE [dbo].[Payment]  WITH CHECK ADD FOREIGN KEY([course_id])
REFERENCES [dbo].[Course] ([course_id])
GO
ALTER TABLE [dbo].[Payment]  WITH CHECK ADD FOREIGN KEY([email])
REFERENCES [dbo].[Account] ([email])
GO
ALTER TABLE [dbo].[Question]  WITH CHECK ADD FOREIGN KEY([test_id])
REFERENCES [dbo].[Test] ([test_id])
GO
ALTER TABLE [dbo].[Test]  WITH CHECK ADD FOREIGN KEY([chapter_id])
REFERENCES [dbo].[Chapter] ([chapter_id])
GO
ALTER TABLE [dbo].[Test_Done]  WITH CHECK ADD FOREIGN KEY([course_id])
REFERENCES [dbo].[Course] ([course_id])
GO
ALTER TABLE [dbo].[Test_Done]  WITH CHECK ADD FOREIGN KEY([email])
REFERENCES [dbo].[Account] ([email])
GO
ALTER TABLE [dbo].[Test_Done]  WITH CHECK ADD FOREIGN KEY([test_id])
REFERENCES [dbo].[Test] ([test_id])
GO
ALTER TABLE [dbo].[User_Course]  WITH CHECK ADD FOREIGN KEY([course_id])
REFERENCES [dbo].[Course] ([course_id])
GO
ALTER TABLE [dbo].[User_Course]  WITH CHECK ADD FOREIGN KEY([email])
REFERENCES [dbo].[Account] ([email])
GO
