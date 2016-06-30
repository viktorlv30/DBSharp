--
-- Скрипт сгенерирован Devart dbForge Studio for SQL Server, Версия 5.1.178.0
-- Домашняя страница продукта: http://www.devart.com/ru/dbforge/sql/studio
-- Дата скрипта: 29.06.2016 12:01:52
-- Версия сервера: 12.00.2000
-- Версия клиента: 
--


USE master
GO

IF DB_NAME() <> N'master' SET NOEXEC ON

--
-- Создать базу данных "Organization"
--
PRINT (N'Создать базу данных "Organization"')
GO
CREATE DATABASE Organization
GO

USE Organization
GO

IF DB_NAME() <> N'Organization' SET NOEXEC ON
GO

--
-- Создать таблицу "dbo.Positions"
--
PRINT (N'Создать таблицу "dbo.Positions"')
GO
CREATE TABLE dbo.Positions (
  Id int IDENTITY,
  Name nvarchar(30) NOT NULL,
  CONSTRAINT PK_Positions PRIMARY KEY CLUSTERED (Id)
)
ON [PRIMARY]
GO

--
-- Создать таблицу "dbo.Employees"
--
PRINT (N'Создать таблицу "dbo.Employees"')
GO
CREATE TABLE dbo.Employees (
  Id int NOT NULL,
  Name nvarchar(30) NOT NULL,
  Birthday date NULL,
  Email nvarchar(30) NULL,
  PositionId int NULL,
  DepartmentId int NULL,
  ManagerId int NULL,
  HireDate datetime2 NULL DEFAULT (getdate()),
  Salary int NULL
)
ON [PRIMARY]
GO

--
-- Создать таблицу "dbo.Departments"
--
PRINT (N'Создать таблицу "dbo.Departments"')
GO
CREATE TABLE dbo.Departments (
  Id int IDENTITY,
  Name nvarchar(30) NOT NULL,
  CONSTRAINT PK_Departments PRIMARY KEY CLUSTERED (Id)
)
ON [PRIMARY]
GO
-- 
-- Вывод данных для таблицы Departments
--
SET IDENTITY_INSERT dbo.Departments ON
GO
INSERT dbo.Departments(Id, Name) VALUES (1, N'Администрация')
INSERT dbo.Departments(Id, Name) VALUES (2, N'ИТ')
INSERT dbo.Departments(Id, Name) VALUES (3, N'Бухгалтерия')
GO
SET IDENTITY_INSERT dbo.Departments OFF
GO
-- 
-- Вывод данных для таблицы Employees
--
INSERT dbo.Employees(Id, Name, Birthday, Email, PositionId, DepartmentId, ManagerId, HireDate, Salary) VALUES (100, N'Пушкин Александр', '2016-06-04', NULL, 10, 1, NULL, '2016-04-25 19:06:22.5130000', 1000)
INSERT dbo.Employees(Id, Name, Birthday, Email, PositionId, DepartmentId, ManagerId, HireDate, Salary) VALUES (101, N'Волков Владислав', '2016-06-03', NULL, 13, 2, NULL, '2016-04-25 19:06:22.5130000', 2000)
INSERT dbo.Employees(Id, Name, Birthday, Email, PositionId, DepartmentId, ManagerId, HireDate, Salary) VALUES (102, N'Сидоров Дмитрий', '2016-09-19', NULL, 12, 3, NULL, '2016-04-25 19:06:22.5130000', 1500)
INSERT dbo.Employees(Id, Name, Birthday, Email, PositionId, DepartmentId, ManagerId, HireDate, Salary) VALUES (103, N'Чухов Юрий', NULL, NULL, 11, 2, 101, '2016-04-25 19:06:22.5130000', 3000)
INSERT dbo.Employees(Id, Name, Birthday, Email, PositionId, DepartmentId, ManagerId, HireDate, Salary) VALUES (104, N'Bla bla', NULL, NULL, 11, 2, 101, '2016-04-25 19:17:46.8630000', 2000)
INSERT dbo.Employees(Id, Name, Birthday, Email, PositionId, DepartmentId, ManagerId, HireDate, Salary) VALUES (105, N'Test testovich', NULL, NULL, 11, 3, NULL, '2016-04-25 19:44:36.1600000', 2000)
INSERT dbo.Employees(Id, Name, Birthday, Email, PositionId, DepartmentId, ManagerId, HireDate, Salary) VALUES (106, N'Иванов Александр Алексеевич', '2016-06-01', NULL, 10, 1, NULL, '2016-05-25 19:44:36.0000000', 1000)
INSERT dbo.Employees(Id, Name, Birthday, Email, PositionId, DepartmentId, ManagerId, HireDate, Salary) VALUES (107, N'Иванов Александр Васильевич', '2016-06-05', NULL, 13, 2, NULL, '2016-06-25 19:44:35.9950000', 2000)
INSERT dbo.Employees(Id, Name, Birthday, Email, PositionId, DepartmentId, ManagerId, HireDate, Salary) VALUES (108, N'Иванов Василий Маркович', '2016-06-13', NULL, 12, 3, NULL, '2016-07-25 19:44:35.9950000', 1500)
INSERT dbo.Employees(Id, Name, Birthday, Email, PositionId, DepartmentId, ManagerId, HireDate, Salary) VALUES (109, N'Иванова Елизавета Николаевна', '1995-06-23', NULL, 11, 2, NULL, '2016-08-25 19:44:35.9950000', 3000)
INSERT dbo.Employees(Id, Name, Birthday, Email, PositionId, DepartmentId, ManagerId, HireDate, Salary) VALUES (110, N'Иванова Наталья Ивановна', '2002-08-23', NULL, 11, 2, NULL, '2016-09-25 19:44:35.9950000', 2000)
INSERT dbo.Employees(Id, Name, Birthday, Email, PositionId, DepartmentId, ManagerId, HireDate, Salary) VALUES (111, N'Чухов Юрий', NULL, NULL, 11, 3, NULL, '2016-10-25 19:44:35.9950000', 2000)
INSERT dbo.Employees(Id, Name, Birthday, Email, PositionId, DepartmentId, ManagerId, HireDate, Salary) VALUES (112, N'Bla bla', NULL, NULL, 10, 1, NULL, '2016-11-25 19:44:35.9950000', 1000)
INSERT dbo.Employees(Id, Name, Birthday, Email, PositionId, DepartmentId, ManagerId, HireDate, Salary) VALUES (113, N'Test testovich', NULL, NULL, 13, 2, NULL, '2016-12-25 19:44:35.9950000', 2000)
INSERT dbo.Employees(Id, Name, Birthday, Email, PositionId, DepartmentId, ManagerId, HireDate, Salary) VALUES (114, N'Иванов Александр Алексеевич', '2016-06-01', NULL, 12, 3, NULL, '2017-01-25 19:44:35.9950000', 1500)
INSERT dbo.Employees(Id, Name, Birthday, Email, PositionId, DepartmentId, ManagerId, HireDate, Salary) VALUES (115, N'Иванов Александр Васильевич', '2016-06-05', NULL, 11, 2, NULL, '2017-02-25 19:44:35.9950000', 3000)
INSERT dbo.Employees(Id, Name, Birthday, Email, PositionId, DepartmentId, ManagerId, HireDate, Salary) VALUES (116, N'Иванов Василий Маркович', '2016-06-13', NULL, 11, 2, NULL, '2017-03-25 19:44:35.9950000', 2000)
INSERT dbo.Employees(Id, Name, Birthday, Email, PositionId, DepartmentId, ManagerId, HireDate, Salary) VALUES (117, N'Иванова Елизавета Николаевна', '1995-06-23', NULL, 11, 3, NULL, '2017-04-25 19:44:35.9950000', 2000)
INSERT dbo.Employees(Id, Name, Birthday, Email, PositionId, DepartmentId, ManagerId, HireDate, Salary) VALUES (118, N'Иванова Наталья Ивановна', '2002-08-23', NULL, 10, 1, NULL, '2017-05-25 19:44:35.9950000', 1000)
INSERT dbo.Employees(Id, Name, Birthday, Email, PositionId, DepartmentId, ManagerId, HireDate, Salary) VALUES (119, N'Чухов Юрий', NULL, NULL, 13, 2, NULL, '2017-06-25 19:44:35.9950000', 2000)
INSERT dbo.Employees(Id, Name, Birthday, Email, PositionId, DepartmentId, ManagerId, HireDate, Salary) VALUES (120, N'Bla bla', NULL, NULL, 12, 3, NULL, '2017-07-25 19:44:35.9950000', 1918)
INSERT dbo.Employees(Id, Name, Birthday, Email, PositionId, DepartmentId, ManagerId, HireDate, Salary) VALUES (121, N'Test testovich', NULL, NULL, 11, 2, NULL, '2017-08-25 19:44:35.9950000', 1922)
INSERT dbo.Employees(Id, Name, Birthday, Email, PositionId, DepartmentId, ManagerId, HireDate, Salary) VALUES (122, N'Иванов Александр Алексеевич', '2016-06-01', NULL, 11, 2, NULL, '2017-09-25 19:44:35.9950000', 1926)
INSERT dbo.Employees(Id, Name, Birthday, Email, PositionId, DepartmentId, ManagerId, HireDate, Salary) VALUES (123, N'Иванов Александр Васильевич', '2016-06-05', NULL, 11, 3, NULL, '2017-10-25 19:44:35.9950000', 1930)
INSERT dbo.Employees(Id, Name, Birthday, Email, PositionId, DepartmentId, ManagerId, HireDate, Salary) VALUES (124, N'Иванов Василий Маркович', '2016-06-13', NULL, 10, 1, NULL, '2017-11-25 19:44:35.9950000', 1934)
INSERT dbo.Employees(Id, Name, Birthday, Email, PositionId, DepartmentId, ManagerId, HireDate, Salary) VALUES (125, N'Иванова Елизавета Николаевна', '1995-06-23', NULL, 13, 2, NULL, '2017-12-25 19:44:35.9950000', 1939)
INSERT dbo.Employees(Id, Name, Birthday, Email, PositionId, DepartmentId, ManagerId, HireDate, Salary) VALUES (126, N'Иванова Наталья Ивановна', '2002-08-23', NULL, 12, 3, NULL, '2018-01-25 19:44:35.9950000', 1943)
INSERT dbo.Employees(Id, Name, Birthday, Email, PositionId, DepartmentId, ManagerId, HireDate, Salary) VALUES (127, N'Чухов Юрий', NULL, NULL, 11, 2, NULL, '2018-02-25 19:44:35.9950000', 1947)
INSERT dbo.Employees(Id, Name, Birthday, Email, PositionId, DepartmentId, ManagerId, HireDate, Salary) VALUES (128, N'Bla bla', NULL, NULL, 11, 2, NULL, '2018-03-25 19:44:35.9950000', 1951)
INSERT dbo.Employees(Id, Name, Birthday, Email, PositionId, DepartmentId, ManagerId, HireDate, Salary) VALUES (129, N'Test testovich', NULL, NULL, 11, 3, NULL, '2018-04-25 19:44:35.9950000', 1955)
INSERT dbo.Employees(Id, Name, Birthday, Email, PositionId, DepartmentId, ManagerId, HireDate, Salary) VALUES (130, N'Иванов Александр Алексеевич', '2016-06-01', NULL, 10, 1, NULL, '2018-05-25 19:44:35.9950000', 1959)
INSERT dbo.Employees(Id, Name, Birthday, Email, PositionId, DepartmentId, ManagerId, HireDate, Salary) VALUES (131, N'Иванов Александр Васильевич', '2016-06-05', NULL, 13, 2, NULL, '2018-06-25 19:44:35.9950000', 1963)
INSERT dbo.Employees(Id, Name, Birthday, Email, PositionId, DepartmentId, ManagerId, HireDate, Salary) VALUES (132, N'Иванов Василий Маркович', '2016-06-13', NULL, 12, 3, NULL, '2018-07-25 19:44:35.9950000', 1968)
INSERT dbo.Employees(Id, Name, Birthday, Email, PositionId, DepartmentId, ManagerId, HireDate, Salary) VALUES (133, N'Иванова Елизавета Николаевна', '1995-06-23', NULL, 11, 2, NULL, '2018-08-25 19:44:35.9950000', 1972)
INSERT dbo.Employees(Id, Name, Birthday, Email, PositionId, DepartmentId, ManagerId, HireDate, Salary) VALUES (134, N'Иванова Наталья Ивановна', '2002-08-23', NULL, 11, 2, NULL, '2018-09-25 19:44:35.9950000', 1976)
GO
-- 
-- Вывод данных для таблицы Positions
--
SET IDENTITY_INSERT dbo.Positions ON
GO
INSERT dbo.Positions(Id, Name) VALUES (10, N'Директор')
INSERT dbo.Positions(Id, Name) VALUES (11, N'Программист')
INSERT dbo.Positions(Id, Name) VALUES (12, N'Бухгалтер')
INSERT dbo.Positions(Id, Name) VALUES (13, N'Старший программист')
GO
SET IDENTITY_INSERT dbo.Positions OFF
GO

USE Organization
GO

IF DB_NAME() <> N'Organization' SET NOEXEC ON
GO

--
-- Создать внешний ключ "FK_Employees_DepartmentId" для объекта типа таблица "dbo.Employees"
--
PRINT (N'Создать внешний ключ "FK_Employees_DepartmentId" для объекта типа таблица "dbo.Employees"')
GO
ALTER TABLE dbo.Employees
  ADD CONSTRAINT FK_Employees_DepartmentId FOREIGN KEY (DepartmentId) REFERENCES dbo.Departments (Id)
GO

--
-- Создать внешний ключ "FK_Employees_PositionId" для объекта типа таблица "dbo.Employees"
--
PRINT (N'Создать внешний ключ "FK_Employees_PositionId" для объекта типа таблица "dbo.Employees"')
GO
ALTER TABLE dbo.Employees
  ADD CONSTRAINT FK_Employees_PositionId FOREIGN KEY (PositionId) REFERENCES dbo.Positions (Id)
GO
SET NOEXEC OFF
GO