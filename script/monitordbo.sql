CREATE TABLE [dbo].[T_CERN_PARA] (
[C_TYPE] nvarchar(150) NOT NULL ,
[TITLE_ROW] numeric(5) NULL ,
[START_ROW] numeric(5) NULL ,
[START_COL] numeric(5) NULL 
);
CREATE TABLE [dbo].[T_CERN_RC] (
[SHEET_NAME] nvarchar(150) NOT NULL ,
[END_ROW] numeric(5) NULL ,
[END_COL] numeric(5) NULL 
);
CREATE TABLE [dbo].[T_COUNT] (
[ENTID] varchar(20) NULL ,
[ENTNAME] varchar(200) NULL ,
[ROWTOTAL] int NULL ,
[ROWERROR] int NULL ,
[IMPORTDATE] datetime NULL ,
[INPUTYEAR] int NULL ,
[DATASTATUS] int NULL ,
[CHECKTDATE] datetime NULL ,
[TOFORMALTDATE] datetime NULL 
);
CREATE TABLE [dbo].[T_DICTIONARY] (
[PID] float(53) NOT NULL ,
[ID] nvarchar(53) NULL ,
[DNAME] nvarchar(300) NULL 
);
CREATE TABLE [dbo].[T_PDICTIONARY] (
[PID] float(53) NOT NULL ,
[PNAMECN] nvarchar(600) NULL ,
[PNAMEEN] nvarchar(600) NULL 
);
CREATE TABLE [dbo].[T_ROLE] (
[R_ID] int NOT NULL ,
[R_NAME] varchar(50) NULL ,
[R_NAME_CN] varchar(50) NULL 
);
INSERT INTO [dbo].[T_ROLE] ([R_ID], [R_NAME], [R_NAME_CN]) VALUES (N'0', N'USER', N'普通用户');
INSERT INTO [dbo].[T_ROLE] ([R_ID], [R_NAME], [R_NAME_CN]) VALUES (N'1', N'SYSTEM', N'系统管理员');
INSERT INTO [dbo].[T_ROLE] ([R_ID], [R_NAME], [R_NAME_CN]) VALUES (N'2', N'DATA', N'数据管理员');
CREATE TABLE [dbo].[T_RULE] (
[RULE_CONDITIONS] varchar(300) NULL ,
[RULE_DESCRIPTION] varchar(200) NULL ,
[ID] int NULL ,
[RULE_NAME] varchar(64) NOT NULL 
);
CREATE TABLE [dbo].[T_RULE_RANK] (
[ENTID] varchar(20) NOT NULL ,
[R_ID] int NULL 
);
CREATE TABLE [dbo].[T_TEMPLET_INFO] (
[TID] int NOT NULL IDENTITY(1,1) ,
[CLID] nvarchar(150) NOT NULL ,
[TEMPLET_NAME] nvarchar(300) NOT NULL ,
[TEMPLET_PATH] nvarchar(600) NOT NULL ,
[VERSION] nvarchar(150) NULL 
);
CREATE TABLE [dbo].[T_USER] (
[LOGONNAME] nvarchar(90) NULL ,
[NAME] nvarchar(150) NULL ,
[SEX] int NULL ,
[BIRTHDATE] datetime NULL ,
[PHONE] nvarchar(45) NULL ,
[EMAIL] nvarchar(120) NULL ,
[PROFESSION] nvarchar(900) NULL ,
[ROLE_ID] int NULL ,
[U_SIGN] int NULL ,
[STATION_CODE] nvarchar(60) NULL ,
[REGISTERT] datetime NULL ,
[USER_ID] int NOT NULL IDENTITY(1,1) 
);
ALTER TABLE [dbo].[T_ROLE] ADD PRIMARY KEY ([R_ID]);
ALTER TABLE [dbo].[T_TEMPLET_INFO] ADD PRIMARY KEY ([TID]);
ALTER TABLE [dbo].[T_USER] ADD PRIMARY KEY ([USER_ID]);