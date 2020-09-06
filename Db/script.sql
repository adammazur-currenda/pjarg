CREATE DATABASE employment;
GO

USE employment;
GO

CREATE TABLE [dbo].[company](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Company] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[employee](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[Age] [int] NULL,
	[CompanyId] [int] NULL,
 CONSTRAINT [PK_employee] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[employee]  WITH CHECK ADD  CONSTRAINT [FK_employee_company] FOREIGN KEY([CompanyId])
REFERENCES [dbo].[company] ([Id])
GO

ALTER TABLE [dbo].[employee] CHECK CONSTRAINT [FK_employee_company]
GO

INSERT INTO company (Name) VALUES ('Currenda Sp. z o.o.');
GO

INSERT INTO employee (FirstName, LastName, Age, CompanyId) VALUES ('Jan', 'Kowalski', 36, (select top 1 Id from company order by Id desc));
GO

INSERT INTO employee (FirstName, LastName, Age, CompanyId) VALUES ('Jan', 'Nowak', 25, (select top 1 Id from company order by Id desc));
GO

INSERT INTO company (Name) VALUES ('NoName Sp. z o.o.');
GO

INSERT INTO employee (FirstName, LastName, Age, CompanyId) VALUES ('Jan', 'Malinowski', 42, (select top 1 Id from company order by Id desc));
GO

INSERT INTO employee (FirstName, LastName, Age, CompanyId) VALUES ('Jan', 'Mazur', 53, (select top 1 Id from company order by Id desc));
GO

INSERT INTO employee (FirstName, LastName, Age, CompanyId) VALUES ('Piotr', 'Mazur', 39, (select top 1 Id from company order by Id desc));
GO