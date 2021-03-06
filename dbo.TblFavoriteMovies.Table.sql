USE [OpenAplLab]
GO
/****** Object:  Table [dbo].[TblFavoriteMovies]    Script Date: 2022-06-11 오전 11:42:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblFavoriteMovies](
	[Idx] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](1000) NOT NULL,
	[Link] [varchar](500) NULL,
	[Image] [varchar](500) NULL,
	[SubTitle] [varchar](1000) NULL,
	[PubDate] [varchar](20) NULL,
	[Director] [nvarchar](1000) NULL,
	[Actor] [nvarchar](1000) NULL,
	[UserRating] [varchar](10) NULL,
	[RegDate] [datetime] NOT NULL,
 CONSTRAINT [PK_TblFavoriteMovies] PRIMARY KEY CLUSTERED 
(
	[Idx] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[TblFavoriteMovies] ON 

INSERT [dbo].[TblFavoriteMovies] ([Idx], [Title], [Link], [Image], [SubTitle], [PubDate], [Director], [Actor], [UserRating], [RegDate]) VALUES (1, N'매트릭스: 리저렉션', N'https://movie.naver.com/movie/bi/mi/basic.nhn?code=191600', N'https://ssl.pstatic.net/imgmovie/mdi/mit110/1916/191600_P02_174552.jpg', N'The Matrix Resurrections', N'2021', N'라나 워쇼스키, ', N'키아누 리브스, 캐리 앤 모스, ', N'5.46', CAST(N'2022-06-03T12:49:31.663' AS DateTime))
INSERT [dbo].[TblFavoriteMovies] ([Idx], [Title], [Link], [Image], [SubTitle], [PubDate], [Director], [Actor], [UserRating], [RegDate]) VALUES (2, N'매트릭스 3 - 레볼루션', N'https://movie.naver.com/movie/bi/mi/basic.nhn?code=12954', N'https://ssl.pstatic.net/imgmovie/mdi/mit110/0129/A2954-00.jpg', N'The Matrix Revolutions', N'2003', N'릴리 워쇼스키, 라나 워쇼스키, ', N'키아누 리브스, 로렌스 피시번, 캐리 앤 모스, 휴고 위빙, 제이다 핀켓 스미스, 마리 앨리스, 해롤드 페리뉴, 모니카 벨루치, 해리 레닉스, 램버트 윌슨, ', N'8.65', CAST(N'2022-06-03T12:49:31.663' AS DateTime))
INSERT [dbo].[TblFavoriteMovies] ([Idx], [Title], [Link], [Image], [SubTitle], [PubDate], [Director], [Actor], [UserRating], [RegDate]) VALUES (3, N'매트릭스 2 - 리로디드', N'https://movie.naver.com/movie/bi/mi/basic.nhn?code=31464', N'https://ssl.pstatic.net/imgmovie/mdi/mit110/0314/C1464-00.jpg', N'The Matrix Reloaded', N'2003', N'릴리 워쇼스키, 라나 워쇼스키, ', N'키아누 리브스, 로렌스 피시번, 캐리 앤 모스, 휴고 위빙, 제이다 핀켓 스미스, 글로리아 포스터, 해롤드 페리뉴, 모니카 벨루치, 해리 레닉스, 램버트 윌슨, 랜달 덕 김, ', N'8.84', CAST(N'2022-06-03T12:49:31.663' AS DateTime))
SET IDENTITY_INSERT [dbo].[TblFavoriteMovies] OFF
GO
