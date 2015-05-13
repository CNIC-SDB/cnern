/*
Navicat SQL Server Data Transfer

Source Server         : station
Source Server Version : 90000
Source Host           : 159.226.50.241:1433
Source Database       : metadata
Source Schema         : dbo

Target Server Type    : SQL Server
Target Server Version : 90000
File Encoding         : 65001

Date: 2014-09-22 16:44:03
*/


-- ----------------------------
-- Table structure for A1N
-- ----------------------------
CREATE TABLE [dbo].[A1N] (
[ATTRNAME] nvarchar(255) NULL ,
[ATTRTYPE] nvarchar(255) NULL ,
[ATTRLENGTH] int NULL ,
[ATTRDOT] int NULL ,
[ATTRUNIT] nvarchar(255) NULL ,
[MUSTIN] int NULL ,
[ATTRCLASS] nvarchar(255) NULL ,
[ATTRMEMO] nvarchar(255) NULL ,
[TEMPLETIN] int NULL ,
[AUTOIN] nvarchar(255) NULL ,
[PK] int NULL ,
[CHKRANGE] nvarchar(255) NULL ,
[LISTSHOW] int NULL ,
[QUERYSHOW] int NULL ,
[ENTID] nvarchar(200) NULL ,
[SORTCOLUMN] int NULL ,
[ATTRSEQ] int NULL ,
[ATTRID] nvarchar(20) NULL ,
[KKKKKK] int NOT NULL IDENTITY(1,1) 
);


-- ----------------------------
-- Table structure for ARTICLE
-- ----------------------------

CREATE TABLE [dbo].[ARTICLE] (
[ID] varchar(10) NOT NULL DEFAULT ('0') ,
[TITLE] varchar(250) NOT NULL DEFAULT '' ,
[CONTENT] text NULL ,
[CLICKS] int NOT NULL DEFAULT ('0') ,
[AUTHOR] varchar(200) NULL DEFAULT NULL ,
[ADD_DATE] datetime NOT NULL DEFAULT ('0000-00-00 00:00:00') ,
[SOURCE] varchar(250) NULL DEFAULT NULL ,
[RELEASE_STATE] varchar(20) NOT NULL DEFAULT '' ,
[IS_COMMENT] varchar(10) NULL DEFAULT ('0') ,
[IS_DEL] varchar(10) NULL DEFAULT ('0') ,
[SPECIAL_ID] text NOT NULL ,
[ACTION_ID] int NOT NULL DEFAULT ('1') ,
[RESTRICT_ID] int NOT NULL DEFAULT ('1') ,
[ARTICLE_CLASS_ID] varchar(60) NULL DEFAULT NULL ,
[PAGINATION_ID] int NOT NULL DEFAULT ('0') ,
[COLOR_TEMPLET_ID] int NOT NULL DEFAULT ('0') ,
[FRAME_TEMPLET_ID] int NOT NULL DEFAULT ('0') ,
[KEY_WORD] varchar(60) NOT NULL DEFAULT '' ,
[LINK_TO_EXTERIOR] varchar(250) NULL DEFAULT NULL ,
[HOMEPAGE_IMAGE] varchar(200) NULL DEFAULT NULL ,
[SAVE_DATE] datetime NOT NULL DEFAULT ('0000-00-00 00:00:00') ,
[IS_HOT] varchar(10) NULL DEFAULT NULL ,
[IS_ONTOP] varchar(10) NULL DEFAULT NULL ,
[IS_ELITE] varchar(10) NULL DEFAULT NULL ,
[IS_COMMEND] varchar(10) NULL DEFAULT NULL ,
[ADD_USER] varchar(20) NOT NULL DEFAULT '' ,
[SUMMARY] varchar(2000) NULL ,
[CURR_AUDIT_LEVEL] int NOT NULL DEFAULT ('1') ,
[HTML_SAVE_PATH] text NULL ,
[LAST_INDEX_DATETIME] datetime NULL DEFAULT NULL ,
[NODE_ID] varchar(30) NULL DEFAULT NULL ,
[SOURCE_NODE_ID] varchar(30) NULL DEFAULT NULL ,
[BEGIN_DATE] datetime NULL DEFAULT NULL ,
[END_DATE] datetime NULL DEFAULT NULL ,
[HOME_TITLE] varchar(250) NULL DEFAULT NULL ,
[ARTICLE_IMAGE] varchar(200) NULL DEFAULT NULL ,
[CLASS_IMAGE_1] varchar(200) NULL DEFAULT NULL ,
[CLASS_IMAGE_2] varchar(200) NULL DEFAULT NULL ,
[CLASS_IMAGE_3] varchar(200) NULL DEFAULT NULL ,
[ATTRIBUTE] varchar(20) NULL DEFAULT NULL ,
[EXT_1] varchar(200) NULL DEFAULT NULL ,
[EXT_2] varchar(200) NULL DEFAULT NULL ,
[EXT_3] varchar(200) NULL DEFAULT NULL ,
[LAST_COMMENT_DATETIME] datetime NULL DEFAULT NULL ,
[TITLE2] varchar(250) NULL DEFAULT NULL ,
[LAST_MODIFY_UID] varchar(20) NULL DEFAULT NULL ,
[BIND_KEY_ARTICLE] varchar(250) NULL DEFAULT NULL ,
[IS_HIDDEN] varchar(10) NOT NULL ,
[PUBLISHER] varchar(150) NULL DEFAULT NULL ,
[IS_FIRST] varchar(20) NULL DEFAULT NULL ,
[ORDER_NUM] int NULL DEFAULT NULL 
);




-- ----------------------------
-- Table structure for ARTICLE_CLASS
-- ----------------------------
CREATE TABLE [dbo].[ARTICLE_CLASS] (
[ARTICLE_CLASS_ID] varchar(60) NOT NULL DEFAULT '' ,
[CLASS_NAME] varchar(60) NOT NULL DEFAULT '' ,
[CLASS_NAME2] varchar(40) NULL DEFAULT NULL ,
[CLASS_REMARK] varchar(250) NULL DEFAULT NULL ,
[CLASS_REMARK2] varchar(250) NULL DEFAULT NULL ,
[CLASS_REMARK3] varchar(250) NULL DEFAULT NULL ,
[CLASS_TYPE] varchar(20) NOT NULL DEFAULT ('article') ,
[CLASS_STATE] int NOT NULL DEFAULT ('1') ,
[CLASS_STATE2] int DEFAULT ('1'),
[PARENT_ID] varchar(60) NULL DEFAULT NULL ,
[DEPTH] int NOT NULL DEFAULT ('0') ,
[RESTRICT_ID] int NOT NULL DEFAULT ('1') ,
[ACTION_ID] int NOT NULL DEFAULT ('1') ,
[REVIEW_RESTRICT_ID] int NOT NULL DEFAULT ('1') ,
[OUTSIDE_URL] varchar(100) NULL DEFAULT NULL ,
[ORDER_NUM] int NOT NULL DEFAULT ('0') ,
[ROOT_ID] varchar(60) NOT NULL DEFAULT '' ,
[PREV_ID] varchar(60) NULL DEFAULT NULL ,
[NEXT_ID] varchar(60) NULL DEFAULT NULL ,
[PATH] varchar(250) NOT NULL DEFAULT '' ,
[CUSTOM_LINK] varchar(200) NULL DEFAULT ('1') ,
[IS_SHOW] int NULL DEFAULT ('1') ,
[SHOW_TYPE] varchar(10) NOT NULL DEFAULT ('jsp') ,
[SYS_RESTRICT_ID] int NULL DEFAULT NULL ,
[SYS_ACTION_ID] int NULL DEFAULT NULL ,
[CONTENT_TYPE] varchar(20) NOT NULL DEFAULT ('article') ,
[PURVIEW_TYPE] int NOT NULL DEFAULT ('0') ,
[INDEX_DB_ID] varchar(50) NULL DEFAULT NULL ,
[LAST_INDEX_DATETIME] datetime NULL DEFAULT NULL ,
[NODE_ID] varchar(30) NULL DEFAULT NULL ,
[CLASS_SHOW_TYPE] varchar(10) NULL DEFAULT NULL ,
[ARTICLE_CLICK_COUNT] int NOT NULL DEFAULT ('0') ,
[VIEW_COUNT] int NOT NULL DEFAULT ('0') ,
[ARTICLE_TEMPLET_URL] varchar(250) NULL DEFAULT NULL ,
[TEMPLET_ID] int NULL DEFAULT NULL ,
[CLASS_HTML_CFG_ID] int NULL DEFAULT NULL ,
[ARTICLE_HTML_CFG_ID] int NULL DEFAULT NULL ,
[AUTO_RELEASE] int NULL DEFAULT NULL ,
[IS_KEY] int NULL DEFAULT NULL ,
[IS_RSS] int NULL DEFAULT NULL ,
[BIND_ARTICLE_ID] int NULL DEFAULT NULL ,
[TARGET] varchar(30) NULL DEFAULT NULL ,
[PIC_1] varchar(250) NULL DEFAULT NULL ,
[PIC_2] varchar(250) NULL DEFAULT NULL ,
[PIC_3] varchar(250) NULL DEFAULT NULL ,
[AUDIT_DATETIME] datetime NULL DEFAULT NULL ,
[EXPIRE_DATETIME] datetime NULL DEFAULT NULL ,
[KEY_WORD] varchar(250) NULL DEFAULT NULL ,
[EXT_1] varchar(250) NULL DEFAULT NULL ,
[EXT_2] varchar(250) NULL DEFAULT NULL ,
[EXT_3] varchar(250) NULL DEFAULT NULL ,
[SUMMARY_IMAGE] varchar(250) NULL DEFAULT NULL ,
[ADD_UID] varchar(20) NULL DEFAULT NULL ,
[CLASS_EDITOR] varchar(100) NULL DEFAULT NULL ,
[ADD_DATETIME] datetime NULL DEFAULT NULL ,
[MODIFY_DATETIME] datetime NULL DEFAULT NULL ,
[MENUKIND_ID] int NULL DEFAULT NULL ,
[ATTACHDEPT] varchar(250) NULL DEFAULT NULL ,
[DEPARTMENT] varchar(250) NULL DEFAULT NULL 
);




-- ----------------------------
-- Table structure for D1
-- ----------------------------

CREATE TABLE [dbo].[D1] (
[KKKKKK] int NOT NULL IDENTITY(1,1) ,
[ONLINE] nvarchar(200) NULL ,
[YEAR00] int NOT NULL ,
[ENTID] nvarchar(20) NOT NULL ,
[ORDINSTR] nvarchar(200) NOT NULL ,
[DISTRIBUTOR] nvarchar(20) NOT NULL 
);




-- ----------------------------
-- Table structure for E1N
-- ----------------------------
CREATE TABLE [dbo].[E1N] (
[KKKKKK] int NOT NULL IDENTITY(1,1) ,
[KEYWORDS] nvarchar(2000) NOT NULL ,
[CREATOR] nvarchar(200) NOT NULL ,
[CONTRI] nvarchar(200) NULL ,
[BTIME] nvarchar(50) NULL ,
[ETIME] nvarchar(50) NULL ,
[YEAR00] int NOT NULL ,
[SPATIALCOV_GEONAME] nvarchar(2000) NULL ,
[RESTRCATEGORY] nvarchar(50) NOT NULL ,
[RECENTDATETIME] nvarchar(50) NOT NULL ,
[DATACATEGORY] nvarchar(50) NOT NULL ,
[ENTTYPE] nvarchar(50) NOT NULL ,
[ENTID] nvarchar(200) NOT NULL ,
[ENTNAME] nvarchar(200) NOT NULL ,
[ABS] nvarchar(2000) NOT NULL 
);


-- ----------------------------
-- Table structure for E1N1
-- ----------------------------
CREATE TABLE [dbo].[E1N1] (
[KKKKKK] int NOT NULL IDENTITY(1,1) ,
[STORAGE_T] nvarchar(200) NULL ,
[RECORDNUM_T] int NULL ,
[URL] nvarchar(200) NULL ,
[YEAR00] int NOT NULL ,
[ENTID] nvarchar(200) NOT NULL ,
[ENTNAME] nvarchar(300) NOT NULL ,
[FORMATNAME_T] nvarchar(200) NULL 
);


-- ----------------------------
-- Table structure for E1N2
-- ----------------------------
CREATE TABLE [dbo].[E1N2] (
[KKKKKK] int NOT NULL IDENTITY(1,1) ,
[DATASOURCE] nvarchar(200) NULL ,
[RESOLTIONSPA_S] nvarchar(200) NULL ,
[RESOLTIONTIME_S] nvarchar(200) NULL ,
[PROJECTION_S] nvarchar(200) NULL ,
[UNIT1_S] nvarchar(200) NULL ,
[YEAR00] int NOT NULL ,
[PROCESS_S] nvarchar(200) NULL ,
[FORMATNAME_S] nvarchar(200) NULL ,
[STORAGE_S] int NULL ,
[URL1] nvarchar(200) NULL ,
[URL2] nvarchar(200) NULL ,
[ENTID] nvarchar(200) NOT NULL ,
[ENTNAME] nvarchar(300) NOT NULL ,
[NAMINGRULE] nvarchar(200) NULL 
);


-- ----------------------------
-- Table structure for E1N3
-- ----------------------------
CREATE TABLE [dbo].[E1N3] (
[KKKKKK] int NOT NULL IDENTITY(1,1) ,
[STORAGE_O] nvarchar(200) NULL ,
[FILEPATH_O] nvarchar(200) NULL ,
[FILENAME_O] nvarchar(200) NULL ,
[URL] nvarchar(200) NULL ,
[YEAR00] int NOT NULL ,
[ENTID] nvarchar(200) NOT NULL ,
[ENTNAME] nvarchar(300) NOT NULL ,
[FORMATNAME_O] nvarchar(200) NOT NULL 
);
-- ----------------------------
-- Table structure for I1N
-- ----------------------------

CREATE TABLE [dbo].[I1N] (
[KKKKKK] int NOT NULL IDENTITY(1,1) ,
[CLASS5] nvarchar(200) NOT NULL ,
[CLASS5ID] nvarchar(200) NOT NULL ,
[CLASS5NO] int NOT NULL ,
[CLASS4] nvarchar(200) NOT NULL ,
[CLASS4ID] nvarchar(200) NOT NULL ,
[CLASS4NO] int NOT NULL ,
[YEAR00] int NULL 
);


-- ----------------------------
-- Table structure for I2N
-- ----------------------------
CREATE TABLE [dbo].[I2N] (
[KKKKKK] int NOT NULL IDENTITY(1,1) ,
[ENTNAME] nvarchar(200) NOT NULL ,
[CLASS4ID] nvarchar(200) NOT NULL ,
[CLASS5ID] nvarchar(200) NOT NULL ,
[ENTID] nvarchar(200) NOT NULL ,
[YEAR00] int NULL 
);


-- ----------------------------
-- Table structure for M1
-- ----------------------------

CREATE TABLE [dbo].[M1] (
[KKKKKK] int NOT NULL IDENTITY(1,1) ,
[SAMPSITECODE] nvarchar(20) NULL ,
[SAMPSITENAME] nvarchar(20) NULL ,
[METHBEGINTM] nvarchar(20) NULL ,
[METHENDTM] nvarchar(20) NULL ,
[METHDESIGNDESC] nvarchar(500) NULL ,
[YEAR00] int NOT NULL ,
[METHTYPE] nvarchar(20) NULL ,
[METHSEQ1] int NOT NULL ,
[METHCODE] nvarchar(20) NOT NULL ,
[METHNAME] nvarchar(200) NOT NULL 
);




-- ----------------------------
-- Table structure for M10
-- ----------------------------

CREATE TABLE [dbo].[M10] (
[KKKKKK] int NOT NULL IDENTITY(1,1) ,
[CALIPERSON] nvarchar(200) NULL ,
[CALIORG] nvarchar(200) NULL ,
[VALIDPERIOD] nvarchar(200) NULL ,
[NOTE] nvarchar(200) NULL ,
[YEAR00] int NOT NULL ,
[INSTRCODENAME] nvarchar(200) NOT NULL ,
[CALIMETH] nvarchar(200) NULL ,
[CALIDATETIME] datetime NULL 
);




-- ----------------------------
-- Table structure for M11
-- ----------------------------

CREATE TABLE [dbo].[M11] (
[KKKKKK] int NOT NULL IDENTITY(1,1) ,
[INSTRTYPE] nvarchar(200) NULL ,
[INSTRPROD] nvarchar(200) NULL ,
[INSTRPRODDATETIME] nvarchar(20) NULL ,
[INSTRPARA] nvarchar(500) NULL ,
[INSTRNOTE] nvarchar(200) NULL ,
[YEAR00] int NOT NULL ,
[INSTRCODENAME] nvarchar(200) NOT NULL 
);




-- ----------------------------
-- Table structure for M2
-- ----------------------------

CREATE TABLE [dbo].[M2] (
[KKKKKK] int NOT NULL IDENTITY(1,1) ,
[SAMPINSTR] nvarchar(200) NULL ,
[SAMPSTAND] nvarchar(200) NULL ,
[SAMPCITEINFO] nvarchar(200) NULL ,
[SAMPTEMPEXTENT] nvarchar(200) NULL ,
[SAMPPERSON] nvarchar(200) NULL ,
[YEAR00] int NOT NULL ,
[ANAITEMS] nvarchar(200) NULL ,
[SAMPIFSTORE] nvarchar(20) NULL ,
[SAMSTOREINFO] nvarchar(200) NULL ,
[METHCODE] nvarchar(20) NOT NULL ,
[SAMPITEM] nvarchar(200) NOT NULL ,
[SAMPMETHDESC] nvarchar(200) NOT NULL 
);




-- ----------------------------
-- Table structure for M3
-- ----------------------------
CREATE TABLE [dbo].[M3] (
[KKKKKK] int NOT NULL IDENTITY(1,1) ,
[OBSINSTR] nvarchar(200) NULL ,
[OBSSTAND] nvarchar(200) NULL ,
[OBSCITEINFO] nvarchar(200) NULL ,
[OBSTEMPEXTENT] nvarchar(200) NULL ,
[OBSPERSON] nvarchar(200) NULL ,
[YEAR00] int NOT NULL ,
[METHCODE] nvarchar(20) NOT NULL ,
[OBSITEM] nvarchar(200) NOT NULL ,
[OBSMETHDESC] nvarchar(200) NOT NULL 
);




-- ----------------------------
-- Table structure for M4
-- ----------------------------

CREATE TABLE [dbo].[M4] (
[KKKKKK] int NOT NULL IDENTITY(1,1) ,
[INVINSTR] nvarchar(200) NULL ,
[INVSTAND] nvarchar(200) NULL ,
[INVCITEINFO] nvarchar(200) NULL ,
[INVTEMPEXTENT] nvarchar(200) NULL ,
[INVPERSON] nvarchar(200) NULL ,
[YEAR00] int NOT NULL ,
[METHCODE] nvarchar(20) NOT NULL ,
[INVITEM] nvarchar(200) NOT NULL ,
[INVMETHDESC] nvarchar(200) NOT NULL 
);




-- ----------------------------
-- Table structure for M5
-- ----------------------------

CREATE TABLE [dbo].[M5] (
[KKKKKK] int NOT NULL IDENTITY(1,1) ,
[METHSTEP2DESC] nvarchar(500) NULL ,
[METHSTEP3DESC] nvarchar(500) NULL ,
[METHSTEPNOTE] nvarchar(500) NULL ,
[YEAR00] int NOT NULL ,
[ENTID] nvarchar(20) NOT NULL ,
[DATASOURCE] nvarchar(500) NULL ,
[METHSTEP1DESC] nvarchar(500) NULL 
);




-- ----------------------------
-- Table structure for M6
-- ----------------------------
CREATE TABLE [dbo].[M6] (
[KKKKKK] int NOT NULL IDENTITY(1,1) ,
[STANDSAMPLENAME] nvarchar(200) NULL ,
[ANAREPEATNUM] int NULL ,
[ANAMETH] nvarchar(200) NULL ,
[ANAINSTR] nvarchar(200) NULL ,
[ANASTAND] nvarchar(200) NULL ,
[YEAR00] int NOT NULL ,
[ANACITEINFO] nvarchar(200) NULL ,
[ANAPERSON] nvarchar(200) NULL ,
[ANATEMPEXTENT] nvarchar(200) NULL ,
[ANANOTE] nvarchar(200) NULL ,
[ANAITEM] nvarchar(500) NOT NULL ,
[ANASUBITEM] nvarchar(200) NOT NULL ,
[STANDSAMPLENO] nvarchar(200) NULL 
);




-- ----------------------------
-- Table structure for M7
-- ----------------------------
CREATE TABLE [dbo].[M7] (
[KKKKKK] int NOT NULL IDENTITY(1,1) ,
[ENTID_ARR] nvarchar(500) NULL ,
[YEAR00] int NOT NULL ,
[SAMPSITECODE] nvarchar(20) NOT NULL ,
[METHCODE] nvarchar(20) NOT NULL ,
[METHNAME] nvarchar(200) NOT NULL 
);




-- ----------------------------
-- Table structure for M8
-- ----------------------------
CREATE TABLE [dbo].[M8] (
[KKKKKK] int NOT NULL IDENTITY(1,1) ,
[METHQCSTEP1DESC] nvarchar(500) NULL ,
[METHQCSTEP2DESC] nvarchar(500) NULL ,
[METHQCSTEP3DESC] nvarchar(500) NULL ,
[METHQCSTEPNOTE] nvarchar(500) NULL ,
[YEAR00] int NOT NULL ,
[ENTID] nvarchar(20) NOT NULL ,
[ERRDATANOTE] nvarchar(500) NULL ,
[NULLDATANOTE] nvarchar(500) NULL 
);




-- ----------------------------
-- Table structure for M9
-- ----------------------------
CREATE TABLE [dbo].[M9] (
[KKKKKK] int NOT NULL IDENTITY(1,1) ,
[ANAITEM] nvarchar(200) NULL ,
[RESULTUNIT] nvarchar(200) NULL ,
[SAMPLEVAL] float(53) NULL ,
[SAMPLESDVAL] float(53) NULL ,
[SAMPLEREPEATNUM] int NULL ,
[YEAR00] int NOT NULL ,
[SAMPLEANAMETH] nvarchar(200) NULL ,
[MESUVAL] float(53) NULL ,
[MESUSDVAL] float(53) NULL ,
[MESUREPEATNUM] int NULL ,
[MESUANAMETH] nvarchar(200) NULL ,
[MESUINSTR] nvarchar(200) NULL ,
[MESUPERSON] nvarchar(200) NULL ,
[CHECKPERSON] nvarchar(200) NULL ,
[NOTE] nvarchar(200) NULL ,
[STANDSAMPLENO] nvarchar(200) NOT NULL ,
[STANDSAMPLENAME] nvarchar(200) NOT NULL 
);




-- ----------------------------
-- Table structure for Q1
-- ----------------------------
CREATE TABLE [dbo].[Q1] (
[KKKKKK] int NOT NULL IDENTITY(1,1) ,
[DQSCOPECODE] nvarchar(200) NULL ,
[ENTNAME] nvarchar(200) NULL ,
[ATTRIBNAME] nvarchar(200) NULL ,
[DIMNAME] nvarchar(200) NULL ,
[DQBEGINTM] nvarchar(200) NULL ,
[YEAR00] int NOT NULL ,
[DQENDTM] nvarchar(200) NULL ,
[EVALMETHDESC] nvarchar(200) NULL ,
[EVALDATETIME] nvarchar(200) NULL ,
[EVALPERSON] nvarchar(200) NULL ,
[EVALRESULT] nvarchar(200) NULL ,
[ENTID] nvarchar(20) NOT NULL ,
[DQCODE] nvarchar(200) NULL ,
[DQNAME] nvarchar(200) NULL 
);




-- ----------------------------
-- Table structure for S1
-- ----------------------------

CREATE TABLE [dbo].[S1] (
[KKKKKK] int NOT NULL IDENTITY(1,1) ,
[SITEBEGINTM] datetime NULL ,
[SITEENDTM] datetime NULL ,
[SITESIZE] float(53) NULL ,
[SITESHAPE] nvarchar(200) NULL ,
[SITE_CENTEREL] float(53) NULL ,
[YEAR00] int NOT NULL ,
[SITE_CENTERNL] float(53) NULL ,
[SITESAMSITECONF] nvarchar(200) NULL ,
[SITEBEFOREMANA] nvarchar(200) NULL ,
[SITEAFTERMANA] nvarchar(200) NULL ,
[TYPIAREANAME] nvarchar(200) NULL ,
[SITECODE] nvarchar(20) NOT NULL ,
[SITENAME] nvarchar(200) NOT NULL ,
[SITEECOTYPE] nvarchar(200) NULL 
);




-- ----------------------------
-- Table structure for S3
-- ----------------------------
CREATE TABLE [dbo].[S3] (
[KKKKKK] int NOT NULL IDENTITY(1,1) ,
[SITENONFROST] nvarchar(200) NULL ,
[SITEPRECI] nvarchar(200) NULL ,
[SITESUNHOUR] nvarchar(200) NULL ,
[SITEOTHERWEA] nvarchar(200) NULL ,
[SITESOILTYPE] nvarchar(200) NULL ,
[YEAR00] int NOT NULL ,
[SITESOILPARENT] nvarchar(200) NULL ,
[SITEEROSION] nvarchar(200) NULL ,
[SITESLOPE] nvarchar(200) NULL ,
[SITEIFIRRIGATION] nvarchar(200) NULL ,
[SITEIRRITYPE] nvarchar(200) NULL ,
[SITEIRRICAPA] nvarchar(200) NULL ,
[SITEDRAINCAPA] nvarchar(200) NULL ,
[SITEWATERTABLE] nvarchar(200) NULL ,
[SITERUNOFF] nvarchar(200) NULL ,
[SITEVEGITYPE] nvarchar(200) NULL ,
[SITECODE] nvarchar(20) NOT NULL ,
[SITENOTE] nvarchar(200) NULL ,
[SITEGEOMORPH] nvarchar(200) NULL ,
[SITETEMP] nvarchar(200) NULL 
);




-- ----------------------------
-- Table structure for S4
-- ----------------------------

CREATE TABLE [dbo].[S4] (
[KKKKKK] int NOT NULL IDENTITY(1,1) ,
[SAMPSITETYPE] nvarchar(200) NULL ,
[SAMPSITEBEGINTM] datetime NULL ,
[SAMPSITEENDTM] datetime NULL ,
[SAMPSITESIZE] float(53) NULL ,
[SAMPSITESHAPE] nvarchar(200) NULL ,
[YEAR00] int NOT NULL ,
[SAMPSITE_CENTEREL] float(53) NULL ,
[SAMPSITE_CENTERNL] float(53) NULL ,
[SAMPSITENOTE] nvarchar(200) NULL ,
[SITECODE] nvarchar(20) NOT NULL ,
[SAMPSITECODE] nvarchar(20) NOT NULL ,
[SAMPSITENAME] nvarchar(200) NOT NULL 
);




-- ----------------------------
-- Table structure for S6
-- ----------------------------

CREATE TABLE [dbo].[S6] (
[KKKKKK] int NOT NULL IDENTITY(1,1) ,
[YEAR00] int NOT NULL ,
[SAMPSITECODE] nvarchar(20) NOT NULL ,
[CURRYEAR] int NOT NULL ,
[SAMPSITEMANA] nvarchar(500) NULL 
);




-- ----------------------------
-- Table structure for S7
-- ----------------------------

CREATE TABLE [dbo].[S7] (
[KKKKKK] int NOT NULL IDENTITY(1,1) ,
[FORMATNAME] nvarchar(200) NULL ,
[FORMATVER] nvarchar(200) NULL ,
[FORMATNOTE] nvarchar(200) NULL ,
[YEAR00] int NOT NULL ,
[RELOBJTYPE] nvarchar(200) NOT NULL ,
[RELOBJCODE] nvarchar(200) NULL ,
[OUTFILENAME] nvarchar(200) NULL 
);




-- ----------------------------
-- Table structure for T_ENUM
-- ----------------------------
CREATE TABLE [dbo].[T_ENUM] (
[ENUMID] nvarchar(255) NULL ,
[ENUMNAME] nvarchar(255) NULL ,
[ENUMSEQ] nvarchar(255) NULL ,
[ENUMVALUE] nvarchar(255) NULL ,
[ENUMCOMMENT] nvarchar(255) NULL 
);




-- ----------------------------
-- Table structure for T_RANK
-- ----------------------------

CREATE TABLE [dbo].[T_RANK] (
[ENTID] varchar(255) NULL ,
[ENTNAME] varchar(255) NULL ,
[CLASS1ID] varchar(255) NULL ,
[CLASS1NAME] varchar(255) NULL ,
[CLASS2ID] varchar(255) NULL ,
[CLASS2NAME] varchar(255) NULL ,
[CLASS3ID] varchar(255) NULL ,
[CLASS3NAME] varchar(255) NULL ,
[HASHISTORY] varchar(255) NULL ,
[SORT] int NULL 
);




-- ----------------------------
-- Table structure for T_TABLE_FIELDS
-- ----------------------------

CREATE TABLE [dbo].[T_TABLE_FIELDS] (
[ENTID] nvarchar(255) NULL ,
[ATTRSEQ] int NULL ,
[ATTRID] nvarchar(255) NULL ,
[ATTRNAME] nvarchar(255) NULL ,
[ATTRTYPE] nvarchar(255) NULL ,
[ATTRLENGTH] nvarchar(255) NULL ,
[ATTRDOT] nvarchar(255) NULL ,
[ATTRUNIT] nvarchar(255) NULL ,
[ATTRCLASS] nvarchar(255) NULL ,
[ATTRMEMO] nvarchar(255) NULL ,
[MUSTIN] nvarchar(255) NULL ,
[TEMPLETIN] nvarchar(255) NULL ,
[SINGENUM] nvarchar(255) NULL ,
[AUTOIN] nvarchar(255) NULL ,
[PK] nvarchar(255) NULL ,
[CHKRANGE] nvarchar(255) NULL ,
[LISTSHOW] nvarchar(255) NULL ,
[QUERYSHOW] nvarchar(255) NULL ,
[ATTACHMARK] nvarchar(255) NULL ,
[SORTCOLUMN] nvarchar(255) NULL 
);




-- ----------------------------
-- Table structure for T_TEMPLET_INFO
-- ----------------------------

CREATE TABLE [dbo].[T_TEMPLET_INFO] (
[TID] int NOT NULL IDENTITY(1,1) ,
[CLID] nvarchar(150) NOT NULL ,
[TEMPLET_NAME] nvarchar(300) NOT NULL ,
[TEMPLET_PATH] nvarchar(600) NOT NULL ,
[VERSION] nvarchar(150) NULL 
);




-- ----------------------------
-- Indexes structure for table D1
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table D1
-- ----------------------------
ALTER TABLE [dbo].[D1] ADD PRIMARY KEY ([KKKKKK]);


-- ----------------------------
-- Indexes structure for table E1N
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table E1N
-- ----------------------------
ALTER TABLE [dbo].[E1N] ADD PRIMARY KEY ([KKKKKK]);


-- ----------------------------
-- Indexes structure for table E1N1
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table E1N1
-- ----------------------------
ALTER TABLE [dbo].[E1N1] ADD PRIMARY KEY ([KKKKKK]);


-- ----------------------------
-- Indexes structure for table E1N2
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table E1N2
-- ----------------------------
ALTER TABLE [dbo].[E1N2] ADD PRIMARY KEY ([KKKKKK]);


-- ----------------------------
-- Indexes structure for table E1N3
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table E1N3
-- ----------------------------
ALTER TABLE [dbo].[E1N3] ADD PRIMARY KEY ([KKKKKK]);


-- ----------------------------
-- Indexes structure for table I1N
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table I1N
-- ----------------------------
ALTER TABLE [dbo].[I1N] ADD PRIMARY KEY ([KKKKKK]);


-- ----------------------------
-- Indexes structure for table I2N
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table I2N
-- ----------------------------
ALTER TABLE [dbo].[I2N] ADD PRIMARY KEY ([KKKKKK]);


-- ----------------------------
-- Indexes structure for table M1
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table M1
-- ----------------------------
ALTER TABLE [dbo].[M1] ADD PRIMARY KEY ([KKKKKK]);


-- ----------------------------
-- Indexes structure for table M10
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table M10
-- ----------------------------
ALTER TABLE [dbo].[M10] ADD PRIMARY KEY ([KKKKKK]);


-- ----------------------------
-- Indexes structure for table M11
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table M11
-- ----------------------------
ALTER TABLE [dbo].[M11] ADD PRIMARY KEY ([KKKKKK]);


-- ----------------------------
-- Indexes structure for table M2
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table M2
-- ----------------------------
ALTER TABLE [dbo].[M2] ADD PRIMARY KEY ([KKKKKK]);


-- ----------------------------
-- Indexes structure for table M3
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table M3
-- ----------------------------
ALTER TABLE [dbo].[M3] ADD PRIMARY KEY ([KKKKKK]);


-- ----------------------------
-- Indexes structure for table M4
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table M4
-- ----------------------------
ALTER TABLE [dbo].[M4] ADD PRIMARY KEY ([KKKKKK]);


-- ----------------------------
-- Indexes structure for table M5
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table M5
-- ----------------------------
ALTER TABLE [dbo].[M5] ADD PRIMARY KEY ([KKKKKK]);


-- ----------------------------
-- Indexes structure for table M6
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table M6
-- ----------------------------
ALTER TABLE [dbo].[M6] ADD PRIMARY KEY ([KKKKKK]);


-- ----------------------------
-- Indexes structure for table M7
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table M7
-- ----------------------------
ALTER TABLE [dbo].[M7] ADD PRIMARY KEY ([KKKKKK]);


-- ----------------------------
-- Indexes structure for table M8
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table M8
-- ----------------------------
ALTER TABLE [dbo].[M8] ADD PRIMARY KEY ([KKKKKK]);


-- ----------------------------
-- Indexes structure for table M9
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table M9
-- ----------------------------
ALTER TABLE [dbo].[M9] ADD PRIMARY KEY ([KKKKKK]);


-- ----------------------------
-- Indexes structure for table Q1
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table Q1
-- ----------------------------
ALTER TABLE [dbo].[Q1] ADD PRIMARY KEY ([KKKKKK]);


-- ----------------------------
-- Indexes structure for table S1
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table S1
-- ----------------------------
ALTER TABLE [dbo].[S1] ADD PRIMARY KEY ([KKKKKK]);


-- ----------------------------
-- Indexes structure for table S3
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table S3
-- ----------------------------
ALTER TABLE [dbo].[S3] ADD PRIMARY KEY ([KKKKKK]);


-- ----------------------------
-- Indexes structure for table S4
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table S4
-- ----------------------------
ALTER TABLE [dbo].[S4] ADD PRIMARY KEY ([KKKKKK]);


-- ----------------------------
-- Indexes structure for table S6
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table S6
-- ----------------------------
ALTER TABLE [dbo].[S6] ADD PRIMARY KEY ([KKKKKK]);


-- ----------------------------
-- Indexes structure for table S7
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table S7
-- ----------------------------
ALTER TABLE [dbo].[S7] ADD PRIMARY KEY ([KKKKKK]);


-- ----------------------------
-- Indexes structure for table T_TEMPLET_INFO
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table T_TEMPLET_INFO
-- ----------------------------
ALTER TABLE [dbo].[T_TEMPLET_INFO] ADD PRIMARY KEY ([TID]);




INSERT INTO [dbo].[T_ENUM] ([ENUMID], [ENUMNAME], [ENUMSEQ], [ENUMVALUE], [ENUMCOMMENT]) VALUES (N'dataCateCode', N'实体数据大类类别', N'1', N'表格类', N'db');


INSERT INTO [dbo].[T_ENUM] ([ENUMID], [ENUMNAME], [ENUMSEQ], [ENUMVALUE], [ENUMCOMMENT]) VALUES (N'dataCateCode', N'实体数据大类类别', N'2', N'空间类', N'map');


INSERT INTO [dbo].[T_ENUM] ([ENUMID], [ENUMNAME], [ENUMSEQ], [ENUMVALUE], [ENUMCOMMENT]) VALUES (N'dataCateCode', N'实体数据大类类别', N'3', N'其它类', N'other');


INSERT INTO [dbo].[T_ENUM] ([ENUMID], [ENUMNAME], [ENUMSEQ], [ENUMVALUE], [ENUMCOMMENT]) VALUES (N'restrCateCode', N'数据共享级别', N'1', N'公开共享', N'shareable');


INSERT INTO [dbo].[T_ENUM] ([ENUMID], [ENUMNAME], [ENUMSEQ], [ENUMVALUE], [ENUMCOMMENT]) VALUES (N'restrCateCode', N'数据共享级别', N'2', N'协议共享', N'authorized');


INSERT INTO [dbo].[T_ENUM] ([ENUMID], [ENUMNAME], [ENUMSEQ], [ENUMVALUE], [ENUMCOMMENT]) VALUES (N'restrCateCode', N'数据共享级别', N'3', N'限制共享', N'limited');


INSERT INTO [dbo].[T_ENUM] ([ENUMID], [ENUMNAME], [ENUMSEQ], [ENUMVALUE], [ENUMCOMMENT]) VALUES (N'entTypeCode', N'实体类型', N'1', N'关系数据库数据表', N'dbtable');


INSERT INTO [dbo].[T_ENUM] ([ENUMID], [ENUMNAME], [ENUMSEQ], [ENUMVALUE], [ENUMCOMMENT]) VALUES (N'entTypeCode', N'实体类型', N'2', N'关系数据库视图', N'dbview');


INSERT INTO [dbo].[T_ENUM] ([ENUMID], [ENUMNAME], [ENUMSEQ], [ENUMVALUE], [ENUMCOMMENT]) VALUES (N'entTypeCode', N'实体类型', N'3', N'电子表格', N'esheet');


INSERT INTO [dbo].[T_ENUM] ([ENUMID], [ENUMNAME], [ENUMSEQ], [ENUMVALUE], [ENUMCOMMENT]) VALUES (N'entTypeCode', N'实体类型', N'4', N'电子文本', N'etext');


INSERT INTO [dbo].[T_ENUM] ([ENUMID], [ENUMNAME], [ENUMSEQ], [ENUMVALUE], [ENUMCOMMENT]) VALUES (N'entTypeCode', N'实体类型', N'5', N'栅格图像', N'raster');


INSERT INTO [dbo].[T_ENUM] ([ENUMID], [ENUMNAME], [ENUMSEQ], [ENUMVALUE], [ENUMCOMMENT]) VALUES (N'entTypeCode', N'实体类型', N'6', N'矢量图形', N'vector');


INSERT INTO [dbo].[T_ENUM] ([ENUMID], [ENUMNAME], [ENUMSEQ], [ENUMVALUE], [ENUMCOMMENT]) VALUES (N'entTypeCode', N'实体类型', N'7', N'数字模型', N'model');


INSERT INTO [dbo].[T_ENUM] ([ENUMID], [ENUMNAME], [ENUMSEQ], [ENUMVALUE], [ENUMCOMMENT]) VALUES (N'entTypeCode', N'实体类型', N'8', N'数字视频', N'video');


INSERT INTO [dbo].[T_ENUM] ([ENUMID], [ENUMNAME], [ENUMSEQ], [ENUMVALUE], [ENUMCOMMENT]) VALUES (N'entTypeCode', N'实体类型', N'9', N'数字音频', N'audio');


INSERT INTO [dbo].[T_ENUM] ([ENUMID], [ENUMNAME], [ENUMSEQ], [ENUMVALUE], [ENUMCOMMENT]) VALUES (N'dbTypeCode', N'数据库存储格式类型', N'1', N'Oracle', N'Oracle');


INSERT INTO [dbo].[T_ENUM] ([ENUMID], [ENUMNAME], [ENUMSEQ], [ENUMVALUE], [ENUMCOMMENT]) VALUES (N'dbTypeCode', N'数据库存储格式类型', N'2', N'SQLServer', N'SQLServer');


INSERT INTO [dbo].[T_ENUM] ([ENUMID], [ENUMNAME], [ENUMSEQ], [ENUMVALUE], [ENUMCOMMENT]) VALUES (N'dbTypeCode', N'数据库存储格式类型', N'3', N'MySQL', N'MySQL');


INSERT INTO [dbo].[T_ENUM] ([ENUMID], [ENUMNAME], [ENUMSEQ], [ENUMVALUE], [ENUMCOMMENT]) VALUES (N'othFileTypeCode', N'非空间型文件格式名称类别', N'1', N'Excel', N'Excel');


INSERT INTO [dbo].[T_ENUM] ([ENUMID], [ENUMNAME], [ENUMSEQ], [ENUMVALUE], [ENUMCOMMENT]) VALUES (N'othFileTypeCode', N'非空间型文件格式名称类别', N'2', N'Word', N'Word');


INSERT INTO [dbo].[T_ENUM] ([ENUMID], [ENUMNAME], [ENUMSEQ], [ENUMVALUE], [ENUMCOMMENT]) VALUES (N'othFileTypeCode', N'非空间型文件格式名称类别', N'3', N'WritePad', N'WritePad');


INSERT INTO [dbo].[T_ENUM] ([ENUMID], [ENUMNAME], [ENUMSEQ], [ENUMVALUE], [ENUMCOMMENT]) VALUES (N'othFileTypeCode', N'非空间型文件格式名称类别', N'4', N'NotePad', N'NotePad');


INSERT INTO [dbo].[T_ENUM] ([ENUMID], [ENUMNAME], [ENUMSEQ], [ENUMVALUE], [ENUMCOMMENT]) VALUES (N'othFileTypeCode', N'非空间型文件格式名称类别', N'5', N'DEM', N'DEM');


INSERT INTO [dbo].[T_ENUM] ([ENUMID], [ENUMNAME], [ENUMSEQ], [ENUMVALUE], [ENUMCOMMENT]) VALUES (N'othFileTypeCode', N'非空间型文件格式名称类别', N'6', N'avi', N'avi');


INSERT INTO [dbo].[T_ENUM] ([ENUMID], [ENUMNAME], [ENUMSEQ], [ENUMVALUE], [ENUMCOMMENT]) VALUES (N'othFileTypeCode', N'非空间型文件格式名称类别', N'7', N'mov', N'mov');


INSERT INTO [dbo].[T_ENUM] ([ENUMID], [ENUMNAME], [ENUMSEQ], [ENUMVALUE], [ENUMCOMMENT]) VALUES (N'othFileTypeCode', N'非空间型文件格式名称类别', N'8', N'rm', N'rm');


INSERT INTO [dbo].[T_ENUM] ([ENUMID], [ENUMNAME], [ENUMSEQ], [ENUMVALUE], [ENUMCOMMENT]) VALUES (N'othFileTypeCode', N'非空间型文件格式名称类别', N'9', N'rmb', N'rmb');


INSERT INTO [dbo].[T_ENUM] ([ENUMID], [ENUMNAME], [ENUMSEQ], [ENUMVALUE], [ENUMCOMMENT]) VALUES (N'othFileTypeCode', N'非空间型文件格式名称类别', N'10', N'mp4', N'mp4');


INSERT INTO [dbo].[T_ENUM] ([ENUMID], [ENUMNAME], [ENUMSEQ], [ENUMVALUE], [ENUMCOMMENT]) VALUES (N'othFileTypeCode', N'非空间型文件格式名称类别', N'11', N'wmv', N'wmv');


INSERT INTO [dbo].[T_ENUM] ([ENUMID], [ENUMNAME], [ENUMSEQ], [ENUMVALUE], [ENUMCOMMENT]) VALUES (N'othFileTypeCode', N'非空间型文件格式名称类别', N'12', N'mp3', N'mp3');


INSERT INTO [dbo].[T_ENUM] ([ENUMID], [ENUMNAME], [ENUMSEQ], [ENUMVALUE], [ENUMCOMMENT]) VALUES (N'othFileTypeCode', N'非空间型文件格式名称类别', N'13', N'wma', N'wma');


INSERT INTO [dbo].[T_ENUM] ([ENUMID], [ENUMNAME], [ENUMSEQ], [ENUMVALUE], [ENUMCOMMENT]) VALUES (N'othFileTypeCode', N'非空间型文件格式名称类别', N'14', N'mpeg', N'mpeg');


INSERT INTO [dbo].[T_ENUM] ([ENUMID], [ENUMNAME], [ENUMSEQ], [ENUMVALUE], [ENUMCOMMENT]) VALUES (N'othFileTypeCode', N'非空间型文件格式名称类别', N'15', N'rar', N'rar');


INSERT INTO [dbo].[T_ENUM] ([ENUMID], [ENUMNAME], [ENUMSEQ], [ENUMVALUE], [ENUMCOMMENT]) VALUES (N'othFileTypeCode', N'非空间型文件格式名称类别', N'16', N'zip', N'zip');


INSERT INTO [dbo].[T_ENUM] ([ENUMID], [ENUMNAME], [ENUMSEQ], [ENUMVALUE], [ENUMCOMMENT]) VALUES (N'spaFileTypeCode', N'空间型文件格式名称类别', N'1', N'TIF', N'TIF');


INSERT INTO [dbo].[T_ENUM] ([ENUMID], [ENUMNAME], [ENUMSEQ], [ENUMVALUE], [ENUMCOMMENT]) VALUES (N'spaFileTypeCode', N'空间型文件格式名称类别', N'2', N'arcIMS', N'arcIMS');


INSERT INTO [dbo].[T_ENUM] ([ENUMID], [ENUMNAME], [ENUMSEQ], [ENUMVALUE], [ENUMCOMMENT]) VALUES (N'spaFileTypeCode', N'空间型文件格式名称类别', N'3', N'jpg', N'jpg');


INSERT INTO [dbo].[T_ENUM] ([ENUMID], [ENUMNAME], [ENUMSEQ], [ENUMVALUE], [ENUMCOMMENT]) VALUES (N'spaFileTypeCode', N'空间型文件格式名称类别', N'4', N'gif', N'gif');


INSERT INTO [dbo].[T_ENUM] ([ENUMID], [ENUMNAME], [ENUMSEQ], [ENUMVALUE], [ENUMCOMMENT]) VALUES (N'methTypeCode', N'方法类别', N'1', N'采样', N'采样');


INSERT INTO [dbo].[T_ENUM] ([ENUMID], [ENUMNAME], [ENUMSEQ], [ENUMVALUE], [ENUMCOMMENT]) VALUES (N'methTypeCode', N'方法类别', N'2', N'观测', N'观测');


INSERT INTO [dbo].[T_ENUM] ([ENUMID], [ENUMNAME], [ENUMSEQ], [ENUMVALUE], [ENUMCOMMENT]) VALUES (N'methTypeCode', N'方法类别', N'3', N'调查', N'调查');

INSERT INTO [dbo].[T_RANK] ([ENTID], [ENTNAME], [CLASS1ID], [CLASS1NAME], [CLASS2ID], [CLASS2NAME], [CLASS3ID], [CLASS3NAME], [HASHISTORY], [SORT]) VALUES (N'A1N', N'属性信息表', N'C1_E', N'元数据类', N'C2_E1', N'台站元数据', N'C3_E11', N'标识与实体信息类', N'1', N'5');


INSERT INTO [dbo].[T_RANK] ([ENTID], [ENTNAME], [CLASS1ID], [CLASS1NAME], [CLASS2ID], [CLASS2NAME], [CLASS3ID], [CLASS3NAME], [HASHISTORY], [SORT]) VALUES (N'I1N', N'分类系统表', N'C1_E', N'元数据类', N'C2_E1', N'台站元数据', N'C3_E11', N'标识与实体信息类', N'1', N'1');


INSERT INTO [dbo].[T_RANK] ([ENTID], [ENTNAME], [CLASS1ID], [CLASS1NAME], [CLASS2ID], [CLASS2NAME], [CLASS3ID], [CLASS3NAME], [HASHISTORY], [SORT]) VALUES (N'I2N', N'实体分类表', N'C1_E', N'元数据类', N'C2_E1', N'台站元数据', N'C3_E11', N'标识与实体信息类', N'1', N'2');


INSERT INTO [dbo].[T_RANK] ([ENTID], [ENTNAME], [CLASS1ID], [CLASS1NAME], [CLASS2ID], [CLASS2NAME], [CLASS3ID], [CLASS3NAME], [HASHISTORY], [SORT]) VALUES (N'E1N', N'实体概要元数据表', N'C1_E', N'元数据类', N'C2_E1', N'台站元数据', N'C3_E11', N'标识与实体信息类', N'1', N'3');


INSERT INTO [dbo].[T_RANK] ([ENTID], [ENTNAME], [CLASS1ID], [CLASS1NAME], [CLASS2ID], [CLASS2NAME], [CLASS3ID], [CLASS3NAME], [HASHISTORY], [SORT]) VALUES (N'E1N1', N'表格型实体详细元数据表', N'C1_E', N'元数据类', N'C2_E1', N'台站元数据', N'C3_E11', N'标识与实体信息类', N'1', N'4');


INSERT INTO [dbo].[T_RANK] ([ENTID], [ENTNAME], [CLASS1ID], [CLASS1NAME], [CLASS2ID], [CLASS2NAME], [CLASS3ID], [CLASS3NAME], [HASHISTORY], [SORT]) VALUES (N'E1N2', N'空间型实体详细元数据表', N'C1_E', N'元数据类', N'C2_E1', N'台站元数据', N'C3_E11', N'标识与实体信息类', N'1', N'4');


INSERT INTO [dbo].[T_RANK] ([ENTID], [ENTNAME], [CLASS1ID], [CLASS1NAME], [CLASS2ID], [CLASS2NAME], [CLASS3ID], [CLASS3NAME], [HASHISTORY], [SORT]) VALUES (N'E1N3', N'其它类型实体详细元数据表', N'C1_E', N'元数据类', N'C2_E1', N'台站元数据', N'C3_E11', N'标识与实体信息类', N'1', N'4');


INSERT INTO [dbo].[T_RANK] ([ENTID], [ENTNAME], [CLASS1ID], [CLASS1NAME], [CLASS2ID], [CLASS2NAME], [CLASS3ID], [CLASS3NAME], [HASHISTORY], [SORT]) VALUES (N'S1', N'观测场基本信息表', N'C1_E', N'元数据类', N'C2_E1', N'台站元数据', N'C3_E12', N'场地信息类', N'1', null);


INSERT INTO [dbo].[T_RANK] ([ENTID], [ENTNAME], [CLASS1ID], [CLASS1NAME], [CLASS2ID], [CLASS2NAME], [CLASS3ID], [CLASS3NAME], [HASHISTORY], [SORT]) VALUES (N'S3', N'观测场自然背景信息表', N'C1_E', N'元数据类', N'C2_E1', N'台站元数据', N'C3_E12', N'场地信息类', N'1', null);


INSERT INTO [dbo].[T_RANK] ([ENTID], [ENTNAME], [CLASS1ID], [CLASS1NAME], [CLASS2ID], [CLASS2NAME], [CLASS3ID], [CLASS3NAME], [HASHISTORY], [SORT]) VALUES (N'S4', N'观测场样地配置信息表', N'C1_E', N'元数据类', N'C2_E1', N'台站元数据', N'C3_E12', N'场地信息类', N'1', null);


INSERT INTO [dbo].[T_RANK] ([ENTID], [ENTNAME], [CLASS1ID], [CLASS1NAME], [CLASS2ID], [CLASS2NAME], [CLASS3ID], [CLASS3NAME], [HASHISTORY], [SORT]) VALUES (N'S6', N'样地管理信息表', N'C1_E', N'元数据类', N'C2_E1', N'台站元数据', N'C3_E12', N'场地信息类', N'1', null);


INSERT INTO [dbo].[T_RANK] ([ENTID], [ENTNAME], [CLASS1ID], [CLASS1NAME], [CLASS2ID], [CLASS2NAME], [CLASS3ID], [CLASS3NAME], [HASHISTORY], [SORT]) VALUES (N'S7', N'外部链接文件信息表', N'C1_E', N'元数据类', N'C2_E1', N'台站元数据', N'C3_E12', N'场地信息类', N'1', null);


INSERT INTO [dbo].[T_RANK] ([ENTID], [ENTNAME], [CLASS1ID], [CLASS1NAME], [CLASS2ID], [CLASS2NAME], [CLASS3ID], [CLASS3NAME], [HASHISTORY], [SORT]) VALUES (N'M10', N'仪器标定记录表', N'C1_E', N'元数据类', N'C2_E1', N'台站元数据', N'C3_E13', N'方法信息类', N'1', null);


INSERT INTO [dbo].[T_RANK] ([ENTID], [ENTNAME], [CLASS1ID], [CLASS1NAME], [CLASS2ID], [CLASS2NAME], [CLASS3ID], [CLASS3NAME], [HASHISTORY], [SORT]) VALUES (N'M11', N'仪器信息表', N'C1_E', N'元数据类', N'C2_E1', N'台站元数据', N'C3_E13', N'方法信息类', N'1', null);


INSERT INTO [dbo].[T_RANK] ([ENTID], [ENTNAME], [CLASS1ID], [CLASS1NAME], [CLASS2ID], [CLASS2NAME], [CLASS3ID], [CLASS3NAME], [HASHISTORY], [SORT]) VALUES (N'M1', N'方法基本信息表', N'C1_E', N'元数据类', N'C2_E1', N'台站元数据', N'C3_E13', N'方法信息类', N'1', null);


INSERT INTO [dbo].[T_RANK] ([ENTID], [ENTNAME], [CLASS1ID], [CLASS1NAME], [CLASS2ID], [CLASS2NAME], [CLASS3ID], [CLASS3NAME], [HASHISTORY], [SORT]) VALUES (N'M2', N'采样记录表', N'C1_E', N'元数据类', N'C2_E1', N'台站元数据', N'C3_E13', N'方法信息类', N'1', null);


INSERT INTO [dbo].[T_RANK] ([ENTID], [ENTNAME], [CLASS1ID], [CLASS1NAME], [CLASS2ID], [CLASS2NAME], [CLASS3ID], [CLASS3NAME], [HASHISTORY], [SORT]) VALUES (N'M3', N'观测记录表', N'C1_E', N'元数据类', N'C2_E1', N'台站元数据', N'C3_E13', N'方法信息类', N'1', null);


INSERT INTO [dbo].[T_RANK] ([ENTID], [ENTNAME], [CLASS1ID], [CLASS1NAME], [CLASS2ID], [CLASS2NAME], [CLASS3ID], [CLASS3NAME], [HASHISTORY], [SORT]) VALUES (N'M4', N'调查记录表', N'C1_E', N'元数据类', N'C2_E1', N'台站元数据', N'C3_E13', N'方法信息类', N'1', null);


INSERT INTO [dbo].[T_RANK] ([ENTID], [ENTNAME], [CLASS1ID], [CLASS1NAME], [CLASS2ID], [CLASS2NAME], [CLASS3ID], [CLASS3NAME], [HASHISTORY], [SORT]) VALUES (N'M5', N'其它方法记录表', N'C1_E', N'元数据类', N'C2_E1', N'台站元数据', N'C3_E13', N'方法信息类', N'1', null);


INSERT INTO [dbo].[T_RANK] ([ENTID], [ENTNAME], [CLASS1ID], [CLASS1NAME], [CLASS2ID], [CLASS2NAME], [CLASS3ID], [CLASS3NAME], [HASHISTORY], [SORT]) VALUES (N'M6', N'分析记录表', N'C1_E', N'元数据类', N'C2_E1', N'台站元数据', N'C3_E13', N'方法信息类', N'1', null);


INSERT INTO [dbo].[T_RANK] ([ENTID], [ENTNAME], [CLASS1ID], [CLASS1NAME], [CLASS2ID], [CLASS2NAME], [CLASS3ID], [CLASS3NAME], [HASHISTORY], [SORT]) VALUES (N'M7', N'场地方法和实体关联信息表', N'C1_E', N'元数据类', N'C2_E1', N'台站元数据', N'C3_E13', N'方法信息类', N'1', null);


INSERT INTO [dbo].[T_RANK] ([ENTID], [ENTNAME], [CLASS1ID], [CLASS1NAME], [CLASS2ID], [CLASS2NAME], [CLASS3ID], [CLASS3NAME], [HASHISTORY], [SORT]) VALUES (N'M8', N'质控方法基本信息表', N'C1_E', N'元数据类', N'C2_E1', N'台站元数据', N'C3_E13', N'方法信息类', N'1', null);


INSERT INTO [dbo].[T_RANK] ([ENTID], [ENTNAME], [CLASS1ID], [CLASS1NAME], [CLASS2ID], [CLASS2NAME], [CLASS3ID], [CLASS3NAME], [HASHISTORY], [SORT]) VALUES (N'M9', N'标样测定记录表', N'C1_E', N'元数据类', N'C2_E1', N'台站元数据', N'C3_E13', N'方法信息类', N'1', null);


INSERT INTO [dbo].[T_RANK] ([ENTID], [ENTNAME], [CLASS1ID], [CLASS1NAME], [CLASS2ID], [CLASS2NAME], [CLASS3ID], [CLASS3NAME], [HASHISTORY], [SORT]) VALUES (N'D1', N'分发信息表', N'C1_E', N'元数据类', N'C2_E1', N'台站元数据', N'C3_E14', N'其他信息类', N'1', null);


INSERT INTO [dbo].[T_RANK] ([ENTID], [ENTNAME], [CLASS1ID], [CLASS1NAME], [CLASS2ID], [CLASS2NAME], [CLASS3ID], [CLASS3NAME], [HASHISTORY], [SORT]) VALUES (N'Q1', N'数据质量信息表', N'C1_E', N'元数据类', N'C2_E1', N'台站元数据', N'C3_E14', N'其他信息类', N'1', null);




INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'A1N', N'0', N'KKKKKK', N'GUID', N'int', N'32', N'0', null, null, null, N'1', N'0', null, null, N'2', null, null, null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'A1N', N'2', N'YEAR00', N'填报年份', N'int', N'32', N'0', null, null, null, N'1', N'0', null, N'cyear', null, N'#>2012 and #<2048', null, null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'A1N', N'4', N'entID', N'实体代码', N'nvarchar', N'200', N'0', null, null, null, N'1', N'1', null, null, null, null, N'1', null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'A1N', N'6', N'attrSeq', N'字段序号', N'int', N'4', N'0', null, null, null, N'1', N'1', null, null, null, null, N'1', null, null, N'1');


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'A1N', N'8', N'attrID', N'字段代码', N'nvarchar', N'20', N'0', null, null, null, N'1', N'1', null, null, null, null, N'1', N'1', null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'A1N', N'10', N'attrName', N'字段名称', N'nvarchar', N'200', N'0', null, null, null, N'1', N'1', null, null, null, null, N'1', N'2', null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'A1N', N'12', N'attrType', N'字段类型', N'nvarchar', N'20', N'0', null, null, null, N'1', N'1', null, null, null, null, N'1', N'3', null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'A1N', N'14', N'attrLength', N'字段长度', N'int', N'4', N'0', null, null, null, N'1', N'1', null, null, null, null, N'1', null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'A1N', N'16', N'attrDot', N'小数位', N'int', N'4', N'0', null, null, null, N'1', N'1', null, null, null, null, N'1', null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'A1N', N'18', N'attrUnit', N'单位', N'nvarchar', N'200', N'0', null, null, null, N'0', N'1', null, null, null, null, N'1', null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'A1N', N'20', N'mustIn', N'必填项', N'int', N'32', N'0', null, null, null, N'1', N'1', null, null, null, null, N'1', null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'A1N', N'22', N'attrClass', N'字段分类名称', N'nvarchar', N'200', N'0', null, null, null, N'0', N'1', null, null, null, null, null, null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'A1N', N'24', N'attrMemo', N'字段填报说明或备注', N'nvarchar', N'200', N'0', null, null, null, N'0', N'1', null, null, null, null, null, null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'A1N', N'26', N'templetIn', N'模板录入项', N'int', N'32', N'0', null, null, null, N'0', N'1', null, null, null, null, null, null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'A1N', N'28', N'singEnum', N'单选枚举', N'nvarchar', N'200', N'0', null, null, null, N'0', N'1', null, null, null, null, null, null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'A1N', N'30', N'autoIn', N'自动录入', N'nvarchar', N'200', N'0', null, null, null, N'0', N'1', null, null, null, null, null, null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'A1N', N'32', N'PK', N'主键标识', N'int', N'32', N'0', null, null, null, N'0', N'1', null, null, null, null, null, null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'A1N', N'34', N'chkRange', N'校验范围', N'int', N'32', N'0', null, null, null, N'0', N'1', null, null, null, null, null, null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'A1N', N'36', N'listShow', N'列表显示', N'int', N'32', N'0', null, null, null, N'0', N'1', null, null, null, null, null, null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'A1N', N'38', N'queryShow', N'查询列', N'int', N'32', N'0', null, null, null, N'0', N'1', null, null, null, null, null, null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'A1N', N'40', N'attachMark', N'附件标识', N'int', N'32', N'0', null, null, null, N'0', N'1', null, null, null, null, null, null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'A1N', N'42', N'sortColumn', N'排序列', N'int', N'32', N'0', null, null, null, N'0', N'1', null, null, null, null, null, null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'I1N', N'0', N'KKKKKK', N'GUID', N'int', N'32', N'0', null, null, null, N'1', N'0', null, null, N'2', null, null, null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'I1N', N'2', N'YEAR00', N'填报年份', N'int', N'32', N'0', null, null, null, N'1', N'0', null, N'cyear', null, N'#>2012 and #<2048', null, null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'I1N', N'4', N'class4', N'数据一级分类名称', N'nvarchar', N'200', N'0', null, null, null, N'1', N'1', null, null, null, null, N'1', N'4', null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'I1N', N'6', N'class4id', N'数据一级分类代码', N'nvarchar', N'200', N'0', null, null, null, N'1', N'1', null, null, null, null, N'1', N'5', null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'I1N', N'8', N'class4no', N'数据一级分类排序', N'int', N'32', N'0', null, null, null, N'1', N'1', null, null, null, null, N'1', N'6', null, N'2');


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'I1N', N'10', N'class5', N'数据二级分类名称', N'nvarchar', N'200', N'0', null, null, null, N'1', N'1', null, null, null, null, N'1', N'7', null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'I1N', N'12', N'class5id', N'数据二级分类代码', N'nvarchar', N'200', N'0', null, null, null, N'1', N'1', null, null, null, null, N'1', N'8', null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'I1N', N'14', N'class5no', N'数据二级分类排序', N'int', N'32', N'0', null, null, null, N'1', N'1', null, null, null, null, N'1', N'9', null, N'3');


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'I2N', N'0', N'KKKKKK', N'GUID', N'int', N'32', N'0', null, null, null, N'1', N'0', null, null, N'2', null, null, null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'I2N', N'2', N'YEAR00', N'填报年份', N'int', N'32', N'0', null, null, null, N'1', N'0', null, N'cyear', null, N'#>2012 and #<2048', null, null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'I2N', N'4', N'class4id', N'数据一级分类代码', N'nvarchar', N'200', N'0', null, null, null, N'1', N'1', null, null, null, null, N'1', N'2', null, N'2');


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'I2N', N'6', N'class5id', N'数据二级分类代码', N'nvarchar', N'200', N'0', null, null, null, N'1', N'1', null, null, null, null, N'1', N'3', null, N'3');


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'I2N', N'8', N'entid', N'实体代码', N'nvarchar', N'200', N'0', null, null, null, N'1', N'1', null, null, null, null, N'1', N'4', null, N'4');


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'I2N', N'10', N'entname', N'实体名称', N'nvarchar', N'200', N'0', null, null, null, N'1', N'1', null, null, null, null, N'1', N'5', null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'E1N', N'0', N'KKKKKK', N'GUID', N'int', N'32', N'0', null, null, null, N'1', N'0', null, null, N'2', null, null, null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'E1N', N'2', N'YEAR00', N'填报年份', N'int', N'32', N'0', null, null, null, N'1', N'0', null, N'cyear', null, N'#>2012 and #<2048', null, null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'E1N', N'4', N'entid', N'实体代码', N'nvarchar', N'200', N'0', null, null, null, N'1', N'1', null, null, null, null, N'1', N'1', null, N'1');


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'E1N', N'6', N'entname', N'实体名称', N'nvarchar', N'200', N'0', null, null, null, N'1', N'1', null, null, null, null, N'1', N'2', null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'E1N', N'8', N'abs', N'摘要', N'nvarchar', N'2000', N'0', null, null, null, N'1', N'1', null, null, null, null, N'1', N'3', null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'E1N', N'10', N'keywords', N'关键词', N'nvarchar', N'2000', N'0', null, null, null, N'1', N'1', null, null, null, null, N'1', N'4', null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'E1N', N'12', N'creator', N'创建者', N'nvarchar', N'200', N'0', null, null, null, N'1', N'1', null, null, null, null, N'1', null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'E1N', N'14', N'contri', N'贡献者', N'nvarchar', N'200', N'0', null, null, null, N'0', N'1', null, null, null, null, null, null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'E1N', N'16', N'btime', N'开始时间', N'nvarchar', N'50', N'0', null, null, null, N'1', N'1', null, null, null, null, null, null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'E1N', N'18', N'etime', N'结束时间', N'nvarchar', N'50', N'0', null, null, null, N'1', N'1', null, null, null, null, null, null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'E1N', N'20', N'spatialCov_GeoName', N'空间覆盖范围', N'nvarchar', N'2000', N'0', null, null, null, N'0', N'1', null, null, null, null, null, null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'E1N', N'22', N'restrCategory', N'数据共享级别', N'nvarchar', N'50', N'0', null, null, null, N'1', N'1', N'restrCateCode', null, null, null, N'1', N'4', null, N'2');


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'E1N', N'24', N'Recentdatetime', N'实体最近更新日期', N'nvarchar', N'50', N'0', N'YYYY-MM-DD', null, null, N'1', N'1', null, null, null, null, N'1', null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'E1N', N'26', N'dataCategory', N'实体数据大类类别', N'nvarchar', N'50', N'0', null, null, null, N'1', N'1', N'dataCateCode', null, null, null, null, N'3', null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'E1N', N'28', N'entType', N'实体类型', N'nvarchar', N'50', N'0', null, null, null, N'1', N'1', N'entTypeCode', null, null, null, null, null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'E1N1', N'0', N'KKKKKK', N'GUID', N'int', N'32', N'0', null, null, null, N'1', N'0', null, null, N'2', null, null, null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'E1N1', N'2', N'YEAR00', N'填报年份', N'int', N'32', N'0', null, null, null, N'1', N'0', null, N'cyear', null, N'#>2012 and #<2048', null, null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'E1N1', N'4', N'entid', N'实体代码', N'nvarchar', N'200', N'0', null, null, null, N'1', N'1', null, null, null, null, N'1', N'1', null, N'1');


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'E1N1', N'6', N'entname', N'实体名称', N'nvarchar', N'300', N'0', null, null, null, N'1', N'1', null, null, null, null, N'1', N'2', null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'E1N1', N'8', N'formatName_T', N'数据库存储格式类型', N'nvarchar', N'200', N'0', null, null, null, N'1', N'1', N'dbTypeCode', null, null, null, N'1', null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'E1N1', N'10', N'storage_T', N'数据表文件存储大小', N'nvarchar', N'200', N'0', null, null, null, N'0', N'1', null, null, null, null, N'1', null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'E1N1', N'12', N'recordNum_T', N'数据库表记录数', N'int', N'32', N'0', null, null, null, N'0', N'1', null, null, null, null, N'1', null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'E1N1', N'14', N'url', N'数据库表数据访问地址', N'nvarchar', N'200', N'0', null, null, null, N'0', N'1', null, null, null, null, null, null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'E1N3', N'0', N'KKKKKK', N'GUID', N'int', N'32', N'0', null, null, null, N'1', N'0', null, null, N'2', null, null, null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'E1N3', N'2', N'YEAR00', N'填报年份', N'int', N'32', N'0', null, null, null, N'1', N'0', null, N'cyear', null, N'#>2012 and #<2048', null, null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'E1N3', N'4', N'entid', N'实体代码', N'nvarchar', N'200', N'0', null, null, null, N'1', N'1', null, null, null, null, N'1', N'1', null, N'1');


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'E1N3', N'6', N'entname', N'实体名称', N'nvarchar', N'300', N'0', null, null, null, N'1', N'1', null, null, null, null, N'1', N'2', null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'E1N3', N'8', N'formatName_O', N'非空间型文件格式名称', N'nvarchar', N'200', N'0', null, null, null, N'1', N'1', N'othFileTypeCode', null, null, null, N'1', null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'E1N3', N'10', N'storage_O', N'非空间型文件存储大小', N'nvarchar', N'200', N'0', null, null, null, N'0', N'1', null, null, null, null, N'1', null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'E1N3', N'12', N'filePath_O', N'非空间型文件存储路径', N'nvarchar', N'200', N'0', null, null, null, N'0', N'1', null, null, null, null, null, null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'E1N3', N'14', N'fileName_O', N'非空间型文件存储名称', N'nvarchar', N'200', N'0', null, null, null, N'0', N'1', null, null, null, null, null, null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'E1N3', N'16', N'url', N'非空间型文件数据访问地址', N'nvarchar', N'200', N'0', null, null, null, N'0', N'1', null, null, null, null, null, null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'E1N2', N'0', N'KKKKKK', N'GUID', N'int', N'32', N'0', null, null, null, N'1', N'0', null, null, N'2', null, null, null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'E1N2', N'2', N'YEAR00', N'填报年份', N'int', N'32', N'0', null, null, null, N'1', N'0', null, N'cyear', null, N'#>2012 and #<2048', null, null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'E1N2', N'4', N'entid', N'实体代码', N'nvarchar', N'200', N'0', null, null, null, N'1', N'1', null, null, null, null, N'1', N'1', null, N'1');


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'E1N2', N'6', N'entname', N'实体名称', N'nvarchar', N'300', N'0', null, null, null, N'1', N'1', null, null, null, null, N'1', N'2', null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'E1N2', N'8', N'namingRule', N'实体命名规则', N'nvarchar', N'200', N'0', null, null, null, N'0', N'1', null, null, null, null, null, null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'E1N2', N'10', N'dataSource', N'数据源自', N'nvarchar', N'200', N'0', null, null, null, N'0', N'1', null, null, null, null, null, null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'E1N2', N'12', N'resoltionSpa_S', N'空间分辨率', N'nvarchar', N'200', N'0', null, null, null, N'0', N'1', null, null, null, null, N'1', null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'E1N2', N'14', N'resoltionTime_S', N'时间分辨率', N'nvarchar', N'200', N'0', null, null, null, N'0', N'1', null, null, null, null, N'1', null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'E1N2', N'16', N'projection_S', N'投影方式', N'nvarchar', N'200', N'0', null, null, null, N'1', N'1', null, null, null, null, N'1', null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'E1N2', N'18', N'unit1_S', N'数据单位', N'nvarchar', N'200', N'0', null, null, null, N'0', N'1', null, null, null, null, null, null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'E1N2', N'20', N'process_S', N'数据处理过程', N'nvarchar', N'200', N'0', null, null, null, N'0', N'1', null, null, null, null, null, null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'E1N2', N'22', N'formatName_S', N'空间数据存储格式名称', N'nvarchar', N'200', N'0', null, null, null, N'1', N'1', N'spaFileTypeCode', null, null, null, null, null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'E1N2', N'24', N'storage_S', N'空间数据文件存储大小', N'int', N'32', N'0', N'M', null, null, N'0', N'1', null, null, null, null, null, null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'E1N2', N'26', N'url1', N'空间数据展示地址', N'nvarchar', N'200', N'0', null, null, null, N'0', N'1', null, null, null, null, null, null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'E1N2', N'28', N'url2', N'空间数据下载地址', N'nvarchar', N'200', N'0', null, null, null, N'0', N'1', null, null, null, null, null, null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'M10', N'0', N'KKKKKK', N'GUID', N'int', N'32', N'0', null, null, null, N'1', N'0', null, null, N'2', null, null, null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'M10', N'2', N'YEAR00', N'填报年份', N'int', N'32', N'0', null, null, null, N'1', N'0', null, N'cyear', null, N'#>2012 and #<2048', null, null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'M10', N'4', N'InstrCodeName', N'仪器代码及名称', N'nvarchar', N'200', N'0', null, null, null, N'1', N'1', null, null, null, null, N'1', N'1', null, N'1');


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'M10', N'6', N'CaliMeth', N'标定方法', N'nvarchar', N'200', N'0', null, null, null, N'0', N'1', null, null, null, null, N'1', N'2', null, N'2');


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'M10', N'8', N'Calidatetime', N'标定日期', N'datetime', N'8', N'3', N'YYYY-MM-DD', null, null, N'0', N'1', null, null, null, null, N'1', N'3', null, N'3');


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'M10', N'10', N'CaliPerson', N'标定人', N'nvarchar', N'200', N'0', null, null, null, N'0', N'1', null, null, null, null, null, null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'M10', N'12', N'CaliOrg', N'标定单位', N'nvarchar', N'200', N'0', null, null, null, N'0', N'1', null, null, null, null, null, null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'M10', N'14', N'ValidPeriod', N'标定有效期', N'nvarchar', N'200', N'0', null, null, null, N'0', N'1', null, null, null, null, null, null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'M10', N'16', N'Note', N'备注信息', N'nvarchar', N'200', N'0', null, null, null, N'0', N'1', null, null, null, null, null, null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'M11', N'0', N'KKKKKK', N'GUID', N'int', N'32', N'0', null, null, null, N'1', N'0', null, null, N'2', null, null, null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'M11', N'2', N'YEAR00', N'填报年份', N'int', N'32', N'0', null, null, null, N'1', N'0', null, N'cyear', null, N'#>2012 and #<2048', null, null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'M11', N'4', N'InstrCodeName', N'仪器代码及名称', N'nvarchar', N'200', N'0', null, null, null, N'1', N'1', null, null, null, null, N'1', N'1', null, N'1');


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'M11', N'10', N'InstrType', N'仪器型号', N'nvarchar', N'200', N'0', null, null, null, N'0', N'1', null, null, null, null, N'1', N'2', null, N'2');


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'M11', N'12', N'InstrProd', N'生产厂家', N'nvarchar', N'200', N'0', null, null, null, N'0', N'1', null, null, null, null, N'1', N'3', null, N'3');


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'M11', N'14', N'InstrProddatetime', N'生产日期', N'nvarchar', N'20', N'0', N'YYYY-MM-DD', null, null, N'0', N'1', null, null, null, null, null, null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'M11', N'16', N'InstrPara', N'仪器参数', N'nvarchar', N'500', N'0', null, null, null, N'0', N'1', null, null, null, null, null, null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'M11', N'18', N'InstrNote', N'备注信息', N'nvarchar', N'200', N'0', null, null, null, N'0', N'1', null, null, null, null, null, null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'M1', N'0', N'KKKKKK', N'GUID', N'int', N'32', N'0', null, null, null, N'1', N'0', null, null, N'2', null, null, null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'M1', N'2', N'YEAR00', N'填报年份', N'int', N'32', N'0', null, null, null, N'1', N'0', null, N'cyear', null, N'#>2012 and #<2048', null, null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'M1', N'4', N'methSeq1', N'方法序号', N'int', N'4', N'0', null, null, null, N'1', N'1', null, null, null, null, N'1', N'1', null, N'1');


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'M1', N'6', N'methCode', N'方法编码', N'nvarchar', N'20', N'0', null, null, null, N'1', N'1', null, null, null, null, N'1', N'2', null, N'2');


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'M1', N'8', N'methName', N'方法名称', N'nvarchar', N'200', N'0', null, null, null, N'1', N'1', null, null, null, null, N'1', N'3', null, N'3');


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'M1', N'10', N'SampSiteCode', N'样地代码', N'nvarchar', N'20', N'0', null, null, null, N'0', N'1', null, null, null, null, N'1', null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'M1', N'12', N'SampSiteName', N'样地名称', N'nvarchar', N'20', N'0', null, null, null, N'0', N'1', null, null, null, null, N'1', null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'M1', N'14', N'methBeginTm', N'方法开始时间', N'nvarchar', N'20', N'0', null, null, null, N'0', N'1', null, null, null, null, N'1', null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'M1', N'16', N'methEndTm', N'方法结束时间', N'nvarchar', N'20', N'0', N'YYYY-MM-DD', null, null, N'0', N'1', null, null, null, null, null, null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'M1', N'18', N'methDesignDesc', N'方法设计或试验设计描述', N'nvarchar', N'500', N'0', N'YYYY-MM-DD', null, null, N'0', N'1', null, null, null, null, null, null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'M1', N'20', N'methType', N'方法类别', N'nvarchar', N'20', N'0', null, null, null, N'0', N'1', N'methTypeCode', null, null, null, null, null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'M2', N'0', N'KKKKKK', N'GUID', N'int', N'32', N'0', null, null, null, N'1', N'0', null, null, N'2', null, null, null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'M2', N'2', N'YEAR00', N'填报年份', N'int', N'32', N'0', null, null, null, N'1', N'0', null, N'cyear', null, N'#>2012 and #<2048', null, null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'M2', N'4', N'methCode', N'方法编码', N'nvarchar', N'20', N'0', null, null, null, N'1', N'1', null, null, null, null, N'1', N'1', null, N'1');


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'M2', N'6', N'SampItem', N'采样项', N'nvarchar', N'200', N'0', null, null, null, N'1', N'1', null, null, null, null, N'1', N'2', null, N'2');


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'M2', N'8', N'SampMethDesc', N'采样方法描述', N'nvarchar', N'200', N'0', null, null, null, N'1', N'1', null, null, null, null, N'1', N'3', null, N'3');


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'M2', N'10', N'SampInstr', N'采样仪器', N'nvarchar', N'200', N'0', null, null, null, N'0', N'1', null, null, null, null, null, null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'M2', N'12', N'SampStand', N'采样标准规范', N'nvarchar', N'200', N'0', null, null, null, N'0', N'1', null, null, null, null, null, null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'M2', N'14', N'SampCiteInfo', N'采样引用信息', N'nvarchar', N'200', N'0', null, null, null, N'0', N'1', null, null, null, null, null, null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'M2', N'16', N'SampTempExtent', N'采样时间范围', N'nvarchar', N'200', N'0', null, null, null, N'0', N'1', null, null, null, null, null, null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'M2', N'18', N'SampPerson', N'采样人', N'nvarchar', N'200', N'0', null, null, null, N'0', N'1', null, null, null, null, null, null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'M2', N'20', N'AnaItems', N'待分析项目', N'nvarchar', N'200', N'0', null, null, null, N'0', N'1', null, null, null, null, N'1', null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'M2', N'22', N'SampIfStore', N'样品是否保存', N'nvarchar', N'20', N'0', null, null, null, N'0', N'1', null, null, null, null, null, null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'M2', N'24', N'samStoreInfo', N'保存样品说明', N'nvarchar', N'200', N'0', null, null, null, N'0', N'1', null, null, null, null, null, null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'M3', N'0', N'KKKKKK', N'GUID', N'int', N'32', N'0', null, null, null, N'1', N'0', null, null, N'2', null, null, null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'M3', N'2', N'YEAR00', N'填报年份', N'int', N'32', N'0', null, null, null, N'1', N'0', null, N'cyear', null, N'#>2012 and #<2048', null, null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'M3', N'4', N'methCode', N'方法编码', N'nvarchar', N'20', N'0', null, null, null, N'1', N'1', null, null, null, null, N'1', N'1', null, N'1');


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'M3', N'6', N'obsItem', N'观测项', N'nvarchar', N'200', N'0', null, null, null, N'1', N'1', null, null, null, null, N'1', N'2', null, N'2');


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'M3', N'8', N'obsMethDesc', N'观测方法描述', N'nvarchar', N'200', N'0', null, null, null, N'1', N'1', null, null, null, null, N'1', N'3', null, N'3');


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'M3', N'10', N'obsInstr', N'观测仪器', N'nvarchar', N'200', N'0', null, null, null, N'0', N'1', null, null, null, null, null, null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'M3', N'12', N'obsStand', N'观测标准规范', N'nvarchar', N'200', N'0', null, null, null, N'0', N'1', null, null, null, null, null, null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'M3', N'14', N'obsCiteInfo', N'观测引用信息', N'nvarchar', N'200', N'0', null, null, null, N'0', N'1', null, null, null, null, null, null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'M3', N'16', N'obsTempExtent', N'观测时间范围', N'nvarchar', N'200', N'0', null, null, null, N'0', N'1', null, null, null, null, null, null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'M3', N'18', N'obsPerson', N'观测人', N'nvarchar', N'200', N'0', null, null, null, N'0', N'1', null, null, null, null, null, null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'M4', N'0', N'KKKKKK', N'GUID', N'int', N'32', N'0', null, null, null, N'1', N'0', null, null, N'2', null, null, null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'M4', N'2', N'YEAR00', N'填报年份', N'int', N'32', N'0', null, null, null, N'1', N'0', null, N'cyear', null, N'#>2012 and #<2048', null, null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'M4', N'4', N'methCode', N'方法编码', N'nvarchar', N'20', N'0', null, null, null, N'1', N'1', null, null, null, null, N'1', N'1', null, N'1');


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'M4', N'6', N'invItem', N'调查项', N'nvarchar', N'200', N'0', null, null, null, N'1', N'1', null, null, null, null, N'1', N'2', null, N'2');


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'M4', N'8', N'invMethDesc', N'调查方法描述', N'nvarchar', N'200', N'0', null, null, null, N'1', N'1', null, null, null, null, N'1', N'3', null, N'3');


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'M4', N'10', N'invInstr', N'调查仪器', N'nvarchar', N'200', N'0', null, null, null, N'0', N'1', null, null, null, null, null, null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'M4', N'12', N'invStand', N'调查标准规范', N'nvarchar', N'200', N'0', null, null, null, N'0', N'1', null, null, null, null, null, null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'M4', N'14', N'invCiteInfo', N'调查引用信息', N'nvarchar', N'200', N'0', null, null, null, N'0', N'1', null, null, null, null, null, null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'M4', N'16', N'invTempExtent', N'调查时间范围', N'nvarchar', N'200', N'0', null, null, null, N'0', N'1', null, null, null, null, null, null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'M4', N'18', N'invPerson', N'调查人', N'nvarchar', N'200', N'0', null, null, null, N'0', N'1', null, null, null, null, null, null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'M5', N'0', N'KKKKKK', N'GUID', N'int', N'32', N'0', null, null, null, N'1', N'0', null, null, N'2', null, null, null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'M5', N'2', N'YEAR00', N'填报年份', N'int', N'32', N'0', null, null, null, N'1', N'0', null, N'cyear', null, N'#>2012 and #<2048', null, null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'M5', N'4', N'entid', N'实体代码', N'nvarchar', N'20', N'0', null, null, null, N'1', N'1', null, null, null, null, N'1', N'1', null, N'1');


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'M5', N'6', N'dataSource', N'数据来源', N'nvarchar', N'500', N'0', null, null, null, N'0', N'1', null, null, null, null, N'1', N'2', null, N'2');


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'M5', N'8', N'methStep1Desc', N'处理方法步骤一描述', N'nvarchar', N'500', N'0', null, null, null, N'0', N'1', null, null, null, null, N'1', N'3', null, N'3');


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'M5', N'10', N'methStep2Desc', N'处理方法步骤二描述', N'nvarchar', N'500', N'0', null, null, null, N'0', N'1', null, null, null, null, null, null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'M5', N'12', N'methStep3Desc', N'处理方法步骤三描述', N'nvarchar', N'500', N'0', null, null, null, N'0', N'1', null, null, null, null, null, null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'M5', N'14', N'methStepNote', N'备注信息', N'nvarchar', N'500', N'0', null, null, null, N'0', N'1', null, null, null, null, null, null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'M6', N'0', N'KKKKKK', N'GUID', N'int', N'32', N'0', null, null, null, N'1', N'0', null, null, N'2', null, null, null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'M6', N'2', N'YEAR00', N'填报年份', N'int', N'32', N'0', null, null, null, N'1', N'0', null, N'cyear', null, N'#>2012 and #<2048', null, null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'M6', N'4', N'anaItem', N'待分析项目', N'nvarchar', N'500', N'0', null, null, null, N'1', N'1', null, null, null, null, N'1', N'1', null, N'1');


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'M6', N'6', N'anaSubItem', N'分析小项', N'nvarchar', N'200', N'0', null, null, null, N'1', N'1', null, null, null, null, N'1', N'2', null, N'2');


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'M6', N'8', N'standSampleNo', N'标样号', N'nvarchar', N'200', N'0', null, null, null, N'0', N'1', null, null, null, null, N'1', N'3', null, N'3');


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'M6', N'10', N'standSampleName', N'标准样品名称', N'nvarchar', N'200', N'0', null, null, null, N'0', N'1', null, null, null, null, N'1', null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'M6', N'12', N'anaRepeatNum', N'测定重复数', N'int', N'4', N'0', null, null, null, N'0', N'1', null, null, null, null, N'1', null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'M6', N'14', N'anaMeth', N'分析方法名称', N'nvarchar', N'200', N'0', null, null, null, N'0', N'1', null, null, null, null, null, null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'M6', N'16', N'anaInstr', N'分析仪器', N'nvarchar', N'200', N'0', null, null, null, N'0', N'1', null, null, null, null, null, null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'M6', N'18', N'anaStand', N'分析标准规范', N'nvarchar', N'200', N'0', null, null, null, N'0', N'1', null, null, null, null, null, null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'M6', N'20', N'anaCiteInfo', N'分析方法引用信息', N'nvarchar', N'200', N'0', null, null, null, N'0', N'1', null, null, null, null, null, null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'M6', N'22', N'anaPerson', N'分析人', N'nvarchar', N'200', N'0', null, null, null, N'0', N'1', null, null, null, null, null, null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'M6', N'24', N'anaTempExtent', N'分析时间', N'nvarchar', N'200', N'0', null, null, null, N'0', N'1', null, null, null, null, null, null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'M6', N'26', N'anaNote', N'备注信息', N'nvarchar', N'200', N'0', null, null, null, N'0', N'1', null, null, null, null, null, null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'M7', N'0', N'KKKKKK', N'GUID', N'int', N'32', N'0', null, null, null, N'1', N'0', null, null, N'2', null, null, null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'M7', N'2', N'YEAR00', N'填报年份', N'int', N'32', N'0', null, null, null, N'1', N'0', null, N'cyear', null, N'#>2012 and #<2048', null, null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'M7', N'4', N'SampSiteCode', N'样地代码', N'nvarchar', N'20', N'0', null, null, null, N'1', N'1', null, null, null, null, N'1', N'1', null, N'1');


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'M7', N'6', N'methCode', N'方法编码', N'nvarchar', N'20', N'0', null, null, null, N'1', N'1', null, null, null, null, N'1', N'2', null, N'2');


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'M7', N'8', N'methName', N'方法名称', N'nvarchar', N'200', N'0', null, null, null, N'1', N'1', null, null, null, null, N'1', N'3', null, N'3');


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'M7', N'10', N'entid_arr', N'实体代码序列', N'nvarchar', N'500', N'0', null, null, null, N'0', N'1', null, null, null, null, N'1', null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'M8', N'0', N'KKKKKK', N'GUID', N'int', N'32', N'0', null, null, null, N'1', N'0', null, null, N'2', null, null, null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'M8', N'2', N'YEAR00', N'填报年份', N'int', N'32', N'0', null, null, null, N'1', N'0', null, N'cyear', null, N'#>2012 and #<2048', null, null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'M8', N'4', N'entid', N'实体代码', N'nvarchar', N'20', N'0', null, null, null, N'1', N'1', null, null, null, null, N'1', N'1', null, N'1');


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'M8', N'6', N'ErrDataNote', N'异常数据说明', N'nvarchar', N'500', N'0', null, null, null, N'0', N'1', null, null, null, null, N'1', N'2', null, N'2');


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'M8', N'8', N'NullDataNote', N'缺失数据说明', N'nvarchar', N'500', N'0', null, null, null, N'0', N'1', null, null, null, null, N'1', N'3', null, N'3');


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'M8', N'10', N'methQCStep1Desc', N'质控方法步骤一描述', N'nvarchar', N'500', N'0', null, null, null, N'0', N'1', null, null, null, null, N'1', null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'M8', N'12', N'methQCStep2Desc', N'质控方法步骤二描述', N'nvarchar', N'500', N'0', null, null, null, N'0', N'1', null, null, null, null, N'1', null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'M8', N'14', N'methQCStep3Desc', N'质控方法步骤三描述', N'nvarchar', N'500', N'0', null, null, null, N'0', N'1', null, null, null, null, null, null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'M8', N'16', N'methQCStepNote', N'质控方法备注信息', N'nvarchar', N'500', N'0', null, null, null, N'0', N'1', null, null, null, null, null, null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'M9', N'0', N'KKKKKK', N'GUID', N'int', N'32', N'0', null, null, null, N'1', N'0', null, null, N'2', null, null, null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'M9', N'2', N'YEAR00', N'填报年份', N'int', N'32', N'0', null, null, null, N'1', N'0', null, N'cyear', null, N'#>2012 and #<2048', null, null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'M9', N'6', N'standSampleNo', N'标样号', N'nvarchar', N'200', N'0', null, null, null, N'1', N'1', null, null, null, null, N'1', N'1', null, N'1');


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'M9', N'8', N'standSampleName', N'标准样品名称', N'nvarchar', N'200', N'0', null, null, null, N'1', N'1', null, null, null, null, N'1', N'2', null, N'2');


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'M9', N'10', N'AnaItem', N'分析项', N'nvarchar', N'200', N'0', null, null, null, N'0', N'1', null, null, null, null, N'1', N'3', null, N'3');


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'M9', N'12', N'ResultUnit', N'结果单位', N'nvarchar', N'200', N'0', null, null, null, N'0', N'1', null, null, null, null, N'1', null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'M9', N'14', N'SampleVal', N'标样真值', N'float', N'13', N'3', null, null, null, N'0', N'1', null, null, null, null, N'1', null, null, null);

INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'M9', N'16', N'SampleSDVal', N'标样真值的标准差', N'float', N'13', N'3', null, null, null, N'0', N'1', null, null, null, null, null, null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'M9', N'18', N'SampleRepeatNum', N'标样真值的重复数', N'int', N'4', N'0', null, null, null, N'0', N'1', null, null, null, null, null, null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'M9', N'20', N'SampleAnaMeth', N'标样真值分析方法', N'nvarchar', N'200', N'0', null, null, null, N'0', N'1', null, null, null, null, null, null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'M9', N'22', N'MesuVal', N'标样实际测定值', N'float', N'13', N'3', null, null, null, N'0', N'1', null, null, null, null, null, null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'M9', N'24', N'MesuSDVal', N'标样实测值的标准差', N'float', N'13', N'3', null, null, null, N'0', N'1', null, null, null, null, null, null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'M9', N'26', N'MesuRepeatNum', N'标样实际测定重复次数', N'int', N'4', N'0', null, null, null, N'0', N'1', null, null, null, null, null, null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'M9', N'28', N'MesuAnaMeth', N'标样实际测定分析方法', N'nvarchar', N'200', N'0', null, null, null, N'0', N'1', null, null, null, null, null, null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'M9', N'30', N'MesuInstr', N'标样实际测定所用仪器名', N'nvarchar', N'200', N'0', null, null, null, N'0', N'1', null, null, null, null, null, null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'M9', N'32', N'MesuPerson', N'测定人', N'nvarchar', N'200', N'0', null, null, null, N'0', N'1', null, null, null, null, null, null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'M9', N'34', N'CheckPerson', N'审核人', N'nvarchar', N'200', N'0', null, null, null, N'0', N'1', null, null, null, null, null, null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'M9', N'36', N'Note', N'备注信息', N'nvarchar', N'200', N'0', null, null, null, N'0', N'1', null, null, null, null, null, null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'Q1', N'0', N'KKKKKK', N'GUID', N'int', N'32', N'0', null, null, null, N'1', N'0', null, null, N'2', null, null, null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'Q1', N'2', N'YEAR00', N'填报年份', N'int', N'32', N'0', null, null, null, N'1', N'0', null, N'cyear', null, N'#>2012 and #<2048', null, null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'Q1', N'4', N'entid', N'实体代码', N'nvarchar', N'20', N'0', null, null, null, N'1', N'1', null, null, null, null, N'1', N'1', null, N'1');


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'Q1', N'6', N'DQCode', N'数据质量信息序号', N'nvarchar', N'200', N'0', null, null, null, N'0', N'1', null, null, null, null, N'1', N'2', null, N'2');


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'Q1', N'8', N'DQName', N'数据质量信息名称', N'nvarchar', N'200', N'0', null, null, null, N'0', N'1', null, null, null, null, N'1', N'3', null, N'3');


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'Q1', N'10', N'DQScopeCode', N'数据范围代码', N'nvarchar', N'200', N'0', null, null, null, N'0', N'1', null, null, null, null, N'1', null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'Q1', N'12', N'entName', N'数据实体名称', N'nvarchar', N'200', N'0', null, null, null, N'0', N'1', null, null, null, null, N'1', null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'Q1', N'14', N'AttribName', N'数据属性名称', N'nvarchar', N'200', N'0', null, null, null, N'0', N'1', null, null, null, null, null, null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'Q1', N'16', N'DimName', N'维的名称', N'nvarchar', N'200', N'0', null, null, null, N'0', N'1', null, null, null, null, null, null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'Q1', N'18', N'DQBeginTm', N'数据质量开始时间', N'nvarchar', N'200', N'0', null, null, null, N'0', N'1', null, null, null, null, null, null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'Q1', N'20', N'DQEndTm', N'数据质量结束时间', N'nvarchar', N'200', N'0', null, null, null, N'0', N'1', null, null, null, null, null, null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'Q1', N'22', N'evalMethDesc', N'评价方法说明', N'nvarchar', N'200', N'0', null, null, null, N'0', N'1', null, null, null, null, null, null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'Q1', N'24', N'evaldatetime', N'评价日期', N'nvarchar', N'200', N'0', N'YYYY-MM-DD', null, null, N'0', N'1', null, null, null, null, null, null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'Q1', N'26', N'evalPerson', N'评价者', N'nvarchar', N'200', N'0', null, null, null, N'0', N'1', null, null, null, null, null, null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'Q1', N'28', N'evalResult', N'定性评价结果', N'nvarchar', N'200', N'0', null, null, null, N'0', N'1', null, null, null, null, null, null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'S1', N'0', N'KKKKKK', N'GUID', N'int', N'32', N'0', null, null, null, N'1', N'0', null, null, N'2', null, null, null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'S1', N'2', N'YEAR00', N'填报年份', N'int', N'32', N'0', null, null, null, N'1', N'0', null, N'cyear', null, N'#>2012 and #<2048', null, null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'S1', N'4', N'SiteCode', N'观测场代码', N'nvarchar', N'20', N'0', null, null, null, N'1', N'1', null, null, null, null, N'1', N'1', null, N'1');


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'S1', N'6', N'SiteName', N'观测场名称', N'nvarchar', N'200', N'0', null, null, null, N'1', N'1', null, null, null, null, N'1', N'2', null, N'2');


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'S1', N'8', N'siteEcoType', N'观测场生态系统类型', N'nvarchar', N'200', N'0', null, null, null, N'0', N'1', null, null, null, null, N'1', N'3', null, N'3');


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'S1', N'10', N'sitebeginTm', N'观测场开始时间', N'datetime', N'8', N'3', N'YYYY-MM-DD', null, null, N'0', N'1', null, null, null, null, N'1', null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'S1', N'12', N'siteEndTm', N'观测场结束时间', N'datetime', N'8', N'3', N'YYYY-MM-DD', null, null, N'0', N'1', null, null, null, null, N'1', null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'S1', N'14', N'siteSize', N'观测场面积', N'float', N'13', N'3', null, null, null, N'0', N'1', null, null, null, null, N'1', null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'S1', N'16', N'siteShape', N'观测场形状', N'nvarchar', N'200', N'0', null, null, null, N'0', N'1', null, null, null, null, N'1', null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'S1', N'18', N'site_centerEL', N'观测场中心点东经度', N'float', N'13', N'3', null, null, null, N'0', N'1', null, null, null, null, N'1', null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'S1', N'20', N'site_centerNL', N'观测场中心点北纬度', N'float', N'13', N'3', null, null, null, N'0', N'1', null, null, null, null, N'1', null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'S1', N'22', N'sitesamSiteConf', N'样地综合配置说明', N'nvarchar', N'200', N'0', null, null, null, N'0', N'1', null, null, null, null, null, null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'S1', N'24', N'siteBeforeMana', N'观测场建立前的管理方式', N'nvarchar', N'200', N'0', null, null, null, N'0', N'1', null, null, null, null, null, null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'S1', N'26', N'siteAfterMana', N'观测场建立后的管理方式', N'nvarchar', N'200', N'0', null, null, null, N'0', N'1', null, null, null, null, null, null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'S1', N'28', N'typiAreaName', N'典型区域地理名称', N'nvarchar', N'200', N'0', null, null, null, N'0', N'1', null, null, null, null, null, null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'S3', N'0', N'KKKKKK', N'GUID', N'int', N'32', N'0', null, null, null, N'1', N'0', null, null, N'2', null, null, null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'S3', N'2', N'YEAR00', N'填报年份', N'int', N'32', N'0', null, null, null, N'1', N'0', null, N'cyear', null, N'#>2012 and #<2048', null, null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'S3', N'4', N'siteCode', N'观测场代码', N'nvarchar', N'20', N'0', null, null, null, N'1', N'1', null, null, null, null, N'1', N'1', null, N'1');


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'S3', N'6', N'siteGeomorph', N'地形地貌', N'nvarchar', N'200', N'0', null, null, null, N'0', N'1', null, null, null, null, N'1', N'2', null, N'2');


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'S3', N'8', N'siteTemp', N'多年平均温度', N'nvarchar', N'200', N'0', N'度', null, null, N'0', N'1', null, null, null, null, N'1', N'3', null, N'3');


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'S3', N'10', N'siteNonFrost', N'多年平均无霜期', N'nvarchar', N'200', N'0', N'天', null, null, N'0', N'1', null, null, null, null, N'1', null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'S3', N'12', N'sitePreci', N'多年平均降水总量', N'nvarchar', N'200', N'0', N'mm', null, null, N'0', N'1', null, null, null, null, N'1', null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'S3', N'14', N'siteSunhour', N'多年平均日照时数', N'nvarchar', N'200', N'0', N'小时', null, null, N'0', N'1', null, null, null, null, N'1', null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'S3', N'16', N'siteOtherWea', N'其它气候要素名称及背景', N'nvarchar', N'200', N'0', null, null, null, N'0', N'1', null, null, null, null, null, null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'S3', N'18', N'siteSoilType', N'土壤类型', N'nvarchar', N'200', N'0', null, null, null, N'0', N'1', null, null, null, null, null, null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'S3', N'20', N'siteSoilParent', N'土壤母质', N'nvarchar', N'200', N'0', null, null, null, N'0', N'1', null, null, null, null, null, null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'S3', N'22', N'siteErosion', N'土壤侵蚀程度', N'nvarchar', N'200', N'0', null, null, null, N'0', N'1', null, null, null, null, null, null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'S3', N'24', N'siteSlope', N'坡度坡向描述', N'nvarchar', N'200', N'0', null, null, null, N'0', N'1', null, null, null, null, null, null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'S3', N'26', N'siteIfIrrigation', N'是否灌溉', N'nvarchar', N'200', N'0', null, null, null, N'0', N'1', null, null, null, null, null, null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'S3', N'28', N'siteIrriType', N'灌溉水源类型', N'nvarchar', N'200', N'0', null, null, null, N'0', N'1', null, null, null, null, null, null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'S3', N'30', N'siteIrriCapa', N'灌溉能力', N'nvarchar', N'200', N'0', null, null, null, N'0', N'1', null, null, null, null, null, null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'S3', N'32', N'siteDrainCapa', N'排水能力', N'nvarchar', N'200', N'0', null, null, null, N'0', N'1', null, null, null, null, null, null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'S3', N'34', N'siteWaterTable', N'多年平均地下水位', N'nvarchar', N'200', N'0', null, null, null, N'0', N'1', null, null, null, null, null, null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'S3', N'36', N'siteRunoff', N'多年平均径流量', N'nvarchar', N'200', N'0', N'mm', null, null, N'0', N'1', null, null, null, null, null, null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'S3', N'38', N'siteVegiType', N'植被类型描述', N'nvarchar', N'200', N'0', null, null, null, N'0', N'1', null, null, null, null, null, null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'S3', N'40', N'siteNote', N'其它备注信息', N'nvarchar', N'200', N'0', null, null, null, N'0', N'1', null, null, null, null, null, null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'S4', N'0', N'KKKKKK', N'GUID', N'int', N'32', N'0', null, null, null, N'1', N'0', null, null, N'2', null, null, null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'S4', N'2', N'YEAR00', N'填报年份', N'int', N'32', N'0', null, null, null, N'1', N'0', null, N'cyear', null, N'#>2012 and #<2048', null, null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'S4', N'4', N'siteCode', N'观测场代码', N'nvarchar', N'20', N'0', null, null, null, N'1', N'1', null, null, null, null, N'1', N'1', null, N'1');


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'S4', N'6', N'SampSiteCode', N'样地代码', N'nvarchar', N'20', N'0', null, null, null, N'1', N'1', null, null, null, null, N'1', N'2', null, N'2');


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'S4', N'8', N'SampSiteName', N'样地名称', N'nvarchar', N'200', N'0', null, null, null, N'1', N'1', null, null, null, null, N'1', N'3', null, N'3');


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'S4', N'10', N'SampSiteType', N'样地类型', N'nvarchar', N'200', N'0', null, null, null, N'0', N'1', null, null, null, null, N'1', null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'S4', N'12', N'SampSiteBeginTm', N'样地开始时间', N'datetime', N'8', N'3', null, null, null, N'0', N'1', null, null, null, null, N'1', null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'S4', N'14', N'SampSiteEndTm', N'样地结束时间', N'datetime', N'8', N'3', null, null, null, N'0', N'1', null, null, null, null, N'1', null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'S4', N'16', N'SampSiteSize', N'样地面积', N'float', N'13', N'3', null, null, null, N'0', N'1', null, null, null, null, null, null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'S4', N'18', N'SampSiteShape', N'样地形状', N'nvarchar', N'200', N'0', null, null, null, N'0', N'1', null, null, null, null, null, null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'S4', N'20', N'SampSite_centerEL', N'样地中心点东经度', N'float', N'13', N'3', null, null, null, N'0', N'1', null, null, null, null, null, null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'S4', N'22', N'SampSite_centerNL', N'样地中心点北纬度', N'float', N'13', N'3', null, null, null, N'0', N'1', null, null, null, null, null, null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'S4', N'24', N'SampSiteNote', N'样地补充信息', N'nvarchar', N'200', N'0', null, null, null, N'0', N'1', null, null, null, null, null, null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'S6', N'0', N'KKKKKK', N'GUID', N'int', N'32', N'0', null, null, null, N'1', N'0', null, null, N'2', null, null, null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'S6', N'2', N'YEAR00', N'填报年份', N'int', N'32', N'0', null, null, null, N'1', N'0', null, N'cyear', null, N'#>2012 and #<2048', null, null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'S6', N'4', N'SampSiteCode', N'样地代码', N'nvarchar', N'20', N'0', null, null, null, N'1', N'1', null, null, null, null, N'1', N'1', null, N'1');


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'S6', N'6', N'currYear', N'年份', N'int', N'4', N'0', null, null, null, N'1', N'1', null, null, null, null, N'1', N'2', null, N'2');


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'S6', N'8', N'SampSiteMana', N'管理活动或发生事件描述', N'nvarchar', N'500', N'0', null, null, null, N'0', N'1', null, null, null, null, N'1', N'3', null, N'3');


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'S7', N'0', N'KKKKKK', N'GUID', N'int', N'32', N'0', null, null, null, N'1', N'0', null, null, N'2', null, null, null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'S7', N'2', N'YEAR00', N'填报年份', N'int', N'32', N'0', null, null, null, N'1', N'0', null, N'cyear', null, N'#>2012 and #<2048', null, null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'S7', N'4', N'relObjType', N'关联对象所属类别', N'nvarchar', N'200', N'0', null, null, null, N'1', N'1', null, null, null, null, N'1', N'1', null, N'1');


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'S7', N'6', N'relObjCode', N'关联对象的代码', N'nvarchar', N'200', N'0', null, null, null, N'0', N'1', null, null, null, null, N'1', N'2', null, N'2');


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'S7', N'8', N'outFileName', N'外部文件名称', N'nvarchar', N'200', N'0', null, null, null, N'0', N'1', null, null, null, null, N'1', N'3', null, N'3');


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'S7', N'10', N'formatName', N'外部文件格式名称', N'nvarchar', N'200', N'0', null, null, null, N'0', N'1', null, null, null, null, N'1', null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'S7', N'12', N'formatVer', N'外部文件格式版本', N'nvarchar', N'200', N'0', null, null, null, N'0', N'1', null, null, null, null, N'1', null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'S7', N'14', N'formatNote', N'备注', N'nvarchar', N'200', N'0', null, null, null, N'0', N'1', null, null, null, null, N'1', null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'D1', N'0', N'KKKKKK', N'GUID', N'int', N'32', N'0', null, null, null, N'1', N'0', null, null, N'2', null, null, null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'D1', N'2', N'YEAR00', N'填报年份', N'int', N'32', N'0', null, null, null, N'1', N'0', null, N'cyear', null, N'#>2012 and #<2048', null, null, null, null);


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'D1', N'4', N'entid', N'实体代码', N'nvarchar', N'20', N'0', null, null, null, N'1', N'1', null, null, null, null, N'1', N'1', null, N'1');


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'D1', N'6', N'ordInstr', N'订购指南', N'nvarchar', N'200', N'0', null, null, null, N'1', N'1', null, null, null, null, N'1', N'2', null, N'2');


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'D1', N'8', N'Distributor', N'分发联系者', N'nvarchar', N'20', N'0', null, null, null, N'1', N'1', null, null, null, null, N'1', N'3', null, N'3');


INSERT INTO [dbo].[T_TABLE_FIELDS] ([ENTID], [ATTRSEQ], [ATTRID], [ATTRNAME], [ATTRTYPE], [ATTRLENGTH], [ATTRDOT], [ATTRUNIT], [ATTRCLASS], [ATTRMEMO], [MUSTIN], [TEMPLETIN], [SINGENUM], [AUTOIN], [PK], [CHKRANGE], [LISTSHOW], [QUERYSHOW], [ATTACHMARK], [SORTCOLUMN]) VALUES (N'D1', N'10', N'online', N'在线传送', N'nvarchar', N'200', N'0', null, null, null, N'0', N'1', null, null, null, null, null, null, null, null);


