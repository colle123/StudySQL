USE [OpenAplLab]
GO
/****** Object:  Table [dbo].[TblEmployees]    Script Date: 2022-06-11 오전 11:42:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblEmployees](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EmpName] [nvarchar](50) NOT NULL,
	[Salary] [numeric](18, 0) NOT NULL,
	[DeptName] [nvarchar](50) NOT NULL,
	[Destination] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_TblEmployees] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[TblEmployees] ON 

INSERT [dbo].[TblEmployees] ([Id], [EmpName], [Salary], [DeptName], [Destination]) VALUES (1, N'윤수한', CAST(200000 AS Numeric(18, 0)), N'IOT', N'부산')
INSERT [dbo].[TblEmployees] ([Id], [EmpName], [Salary], [DeptName], [Destination]) VALUES (3, N'가나다', CAST(120400 AS Numeric(18, 0)), N'마바사', N'아자차')
SET IDENTITY_INSERT [dbo].[TblEmployees] OFF
GO
