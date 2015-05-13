/*
Navicat SQL Server Data Transfer

Source Server         : station
Source Server Version : 90000
Source Host           : 159.226.50.241:1433
Source Database       : monitor
Source Schema         : dbo

Target Server Type    : SQL Server
Target Server Version : 90000
File Encoding         : 65001

Date: 2014-10-30 17:04:55
*/


-- ----------------------------
-- Table structure for AB01
-- ----------------------------
CREATE TABLE [dbo].[AB01] (
[KKKKKK] int NOT NULL IDENTITY(1,1) ,
[YEAR00] int NOT NULL ,
[SSS000] nvarchar(3) NOT NULL ,
[YYYY00] int NOT NULL ,
[MM0000] int NOT NULL ,
[DD0000] int NOT NULL ,
[SSCODE] nvarchar(13) NOT NULL ,
[SSNAME] nvarchar(40) NOT NULL ,
[PLOTNO] nvarchar(20) NOT NULL ,
[PLOTEX] nvarchar(40) NOT NULL ,
[STYP00] nvarchar(20) NOT NULL ,
[SPAR00] nvarchar(20) NOT NULL ,
[CROP00] nvarchar(20) NOT NULL ,
[DEPTH0] nvarchar(20) NULL ,
[YPBH00] nvarchar(40) NULL ,
[AB0102] float(53) NULL ,
[AB0104] float(53) NULL ,
[AB0106] float(53) NULL ,
[AB0108] float(53) NULL ,
[AB0110] float(53) NULL ,
[AB0112] float(53) NULL ,
[AB0114] float(53) NULL ,
[AB0116] float(53) NULL ,
[MEM000] nvarchar(40) NULL 
);



-- ----------------------------
-- Records of AB01
-- ----------------------------

-- ----------------------------
-- Table structure for AB02
-- ----------------------------
CREATE TABLE [dbo].[AB02] (
[KKKKKK] int NOT NULL IDENTITY(1,1) ,
[YEAR00] int NOT NULL ,
[SSS000] nvarchar(3) NOT NULL ,
[YYYY00] int NOT NULL ,
[MM0000] int NOT NULL ,
[DD0000] int NOT NULL ,
[SSCODE] nvarchar(13) NOT NULL ,
[SSNAME] nvarchar(40) NOT NULL ,
[PLOTNO] nvarchar(20) NOT NULL ,
[PLOTEX] nvarchar(40) NOT NULL ,
[STYP00] nvarchar(20) NOT NULL ,
[SPAR00] nvarchar(20) NOT NULL ,
[CROP00] nvarchar(20) NOT NULL ,
[DEPTH0] nvarchar(20) NULL ,
[YPBH00] nvarchar(40) NULL ,
[AB0202] float(53) NULL ,
[AB0204] float(53) NULL ,
[AB0206] float(53) NULL ,
[AB0208] float(53) NULL ,
[AB0210] float(53) NULL ,
[AB0212] float(53) NULL ,
[AB0214] float(53) NULL ,
[AB0216] float(53) NULL ,
[AB0218] float(53) NULL ,
[MEM000] nvarchar(40) NULL 
);
-- ----------------------------
-- Records of AB02
-- ----------------------------
-- ----------------------------
-- Table structure for AB03
-- ----------------------------
CREATE TABLE [dbo].[AB03] (
[KKKKKK] int NOT NULL IDENTITY(1,1) ,
[YEAR00] int NOT NULL ,
[SSS000] nvarchar(3) NOT NULL ,
[YYYY00] int NOT NULL ,
[MM0000] int NOT NULL ,
[DD0000] int NOT NULL ,
[SSCODE] nvarchar(13) NOT NULL ,
[SSNAME] nvarchar(40) NOT NULL ,
[PLOTNO] nvarchar(20) NOT NULL ,
[PLOTEX] nvarchar(40) NOT NULL ,
[STYP00] nvarchar(20) NOT NULL ,
[SPAR00] nvarchar(20) NOT NULL ,
[CROP00] nvarchar(20) NOT NULL ,
[DEPTH0] nvarchar(20) NULL ,
[YPBH00] nvarchar(40) NOT NULL ,
[AB0302] float(53) NULL ,
[AB0304] float(53) NULL ,
[AB0306] float(53) NULL ,
[AB0308] float(53) NULL ,
[AB0310] float(53) NULL ,
[AB0312] float(53) NULL ,
[AB0314] float(53) NULL ,
[AB0316] float(53) NULL ,
[AB0318] float(53) NULL ,
[AB0320] float(53) NULL ,
[AB0322] float(53) NULL ,
[AB0324] float(53) NULL ,
[MEM000] nvarchar(40) NULL 
);

-- ----------------------------
-- Records of AB03
-- ----------------------------

-- ----------------------------
-- Table structure for AB04
-- ----------------------------
CREATE TABLE [dbo].[AB04] (
[KKKKKK] int NOT NULL IDENTITY(1,1) ,
[YEAR00] int NOT NULL ,
[SSS000] nvarchar(3) NOT NULL ,
[YYYY00] int NOT NULL ,
[MM0000] int NOT NULL ,
[DD0000] int NOT NULL ,
[SSCODE] nvarchar(13) NOT NULL ,
[SSNAME] nvarchar(40) NULL ,
[PLOTNO] nvarchar(20) NULL ,
[PLOTEX] nvarchar(40) NULL ,
[STYP00] nvarchar(20) NULL ,
[SPAR00] nvarchar(20) NULL ,
[CROP00] nvarchar(20) NULL ,
[DEPTH0] nvarchar(20) NULL ,
[YPBH00] nvarchar(40) NOT NULL ,
[AB0402] float(53) NULL ,
[AB0404] float(53) NULL ,
[AB0406] float(53) NULL ,
[AB0408] float(53) NULL ,
[AB0410] float(53) NULL ,
[AB0412] float(53) NULL ,
[AB0414] float(53) NULL ,
[AB0416] float(53) NULL ,
[AB0418] float(53) NULL ,
[AB0420] float(53) NULL ,
[AB0422] float(53) NULL ,
[AB0424] float(53) NULL ,
[AB0426] float(53) NULL ,
[AB0428] float(53) NULL ,
[MEM000] nvarchar(40) NULL 
);


-- ----------------------------
-- Table structure for AB06
-- ----------------------------
CREATE TABLE [dbo].[AB06] (
[KKKKKK] int NOT NULL IDENTITY(1,1) ,
[YEAR00] int NOT NULL ,
[SSS000] nvarchar(3) NOT NULL ,
[YYYY00] int NOT NULL ,
[MM0000] int NOT NULL ,
[DD0000] int NOT NULL ,
[SSCODE] nvarchar(13) NOT NULL ,
[SSNAME] nvarchar(40) NOT NULL ,
[PLOTNO] nvarchar(20) NOT NULL ,
[PLOTEX] nvarchar(40) NOT NULL ,
[TREAT0] nvarchar(20) NOT NULL ,
[STYP00] nvarchar(20) NOT NULL ,
[SPAR00] nvarchar(20) NOT NULL ,
[CROP00] nvarchar(20) NOT NULL ,
[DEPTH0] nvarchar(20) NULL ,
[YPBH00] nvarchar(40) NOT NULL ,
[AB0602] float(53) NULL ,
[AB0604] float(53) NULL ,
[MEM000] nvarchar(40) NULL 
);
-- ----------------------------
-- Table structure for AB07
-- ----------------------------
CREATE TABLE [dbo].[AB07] (
[KKKKKK] int NOT NULL IDENTITY(1,1) ,
[YEAR00] int NOT NULL ,
[SSS000] nvarchar(3) NOT NULL ,
[YYYY00] int NOT NULL ,
[MM0000] int NOT NULL ,
[DD0000] int NOT NULL ,
[SSCODE] nvarchar(13) NOT NULL ,
[SSNAME] nvarchar(40) NOT NULL ,
[PLOTNO] nvarchar(20) NOT NULL ,
[PLOTEX] nvarchar(40) NOT NULL ,
[STYP00] nvarchar(20) NOT NULL ,
[SPAR00] nvarchar(20) NOT NULL ,
[CROP00] nvarchar(20) NOT NULL ,
[DEPTH0] nvarchar(20) NULL ,
[YPBH00] nvarchar(40) NOT NULL ,
[AB0702] float(53) NULL ,
[AB0703] nvarchar(80) NULL ,
[AB0704] float(53) NULL ,
[AB0705] nvarchar(80) NULL ,
[AB0706] float(53) NULL ,
[AB0707] nvarchar(80) NULL ,
[AB0708] float(53) NULL ,
[AB0709] nvarchar(80) NULL ,
[AB0710] float(53) NULL ,
[AB0711] nvarchar(80) NULL ,
[AB0712] float(53) NULL ,
[AB0713] nvarchar(80) NULL ,
[AB0714] float(53) NULL ,
[AB0715] nvarchar(80) NULL ,
[MEM000] nvarchar(40) NULL 
);

-- ----------------------------
-- Records of AB07
-- ----------------------------

-- ----------------------------
-- Table structure for AB08
-- ----------------------------
CREATE TABLE [dbo].[AB08] (
[KKKKKK] int NOT NULL IDENTITY(1,1) ,
[YEAR00] int NOT NULL ,
[SSS000] nvarchar(3) NOT NULL ,
[YYYY00] int NOT NULL ,
[MM0000] int NOT NULL ,
[DD0000] int NOT NULL ,
[SSCODE] nvarchar(13) NOT NULL ,
[SSNAME] nvarchar(60) NOT NULL ,
[PLOTNO] nvarchar(20) NOT NULL ,
[PLOTEX] nvarchar(40) NOT NULL ,
[STYP00] nvarchar(20) NOT NULL ,
[SPAR00] nvarchar(20) NOT NULL ,
[CROP00] nvarchar(20) NOT NULL ,
[DEPTH0] nvarchar(20) NULL ,
[YPBH00] nvarchar(40) NOT NULL ,
[AB0802] float(53) NULL ,
[AB0804] float(53) NULL ,
[AB0806] float(53) NULL ,
[AB0808] nvarchar(20) NOT NULL ,
[MEM000] nvarchar(60) NULL 
);



-- ----------------------------
-- Table structure for AB09
-- ----------------------------
CREATE TABLE [dbo].[AB09] (
[KKKKKK] int NOT NULL IDENTITY(1,1) ,
[YEAR00] int NOT NULL ,
[SSS000] nvarchar(3) NOT NULL ,
[YYYY00] int NOT NULL ,
[MM0000] int NOT NULL ,
[DD0000] int NOT NULL ,
[SSCODE] nvarchar(13) NOT NULL ,
[SSNAME] nvarchar(60) NOT NULL ,
[PLOTNO] nvarchar(20) NOT NULL ,
[PLOTEX] nvarchar(40) NOT NULL ,
[STYP00] nvarchar(20) NOT NULL ,
[SPAR00] nvarchar(20) NOT NULL ,
[CROP00] nvarchar(20) NOT NULL ,
[DEPTH0] nvarchar(20) NULL ,
[YPBH00] nvarchar(40) NOT NULL ,
[AB0902] float(53) NULL ,
[AB0904] float(53) NULL ,
[AB0906] int NULL ,
[MEM000] nvarchar(40) NULL 
);

-- ----------------------------
-- Records of AB09
-- ----------------------------
-- ----------------------------
-- Table structure for AB10
-- ----------------------------

CREATE TABLE [dbo].[AB10] (
[KKKKKK] int NOT NULL IDENTITY(1,1) ,
[YEAR00] int NOT NULL ,
[SSS000] nvarchar(3) NOT NULL ,
[YYYY00] int NOT NULL ,
[MM0000] int NOT NULL ,
[DD0000] int NOT NULL ,
[SSCODE] nvarchar(13) NOT NULL ,
[SSNAME] nvarchar(60) NOT NULL ,
[PLOTNO] nvarchar(20) NOT NULL ,
[PLOTEX] nvarchar(40) NOT NULL ,
[STYP00] nvarchar(20) NOT NULL ,
[SPAR00] nvarchar(20) NOT NULL ,
[CROP00] nvarchar(20) NOT NULL ,
[DEPTH0] nvarchar(20) NULL ,
[YPBH00] nvarchar(40) NOT NULL ,
[AB1002] float(53) NULL ,
[AB1004] float(53) NULL ,
[AB1006] float(53) NULL ,
[AB1008] float(53) NULL ,
[AB1010] float(53) NULL ,
[AB1012] float(53) NULL ,
[AB1014] float(53) NULL ,
[AB1016] float(53) NULL ,
[AB1018] float(53) NULL ,
[AB1020] float(53) NULL ,
[MEM000] nvarchar(40) NULL 
);

-- ----------------------------
-- Table structure for AB16
-- ----------------------------
CREATE TABLE [dbo].[AB16] (
[KKKKKK] int NOT NULL IDENTITY(1,1) ,
[YEAR00] int NOT NULL ,
[SSS000] nvarchar(3) NOT NULL ,
[YYYY00] int NULL ,
[MM0000] int NULL ,
[DD0000] int NULL ,
[SSCODE] nvarchar(13) NOT NULL ,
[SSNAME] nvarchar(100) NULL ,
[AB1602] nvarchar(20) NULL ,
[AB1604] nvarchar(20) NULL ,
[AB1606] nvarchar(20) NULL ,
[STYP00] nvarchar(20) NULL ,
[AB1608] nvarchar(20) NULL ,
[SPAR00] nvarchar(20) NULL ,
[CROP00] nvarchar(20) NULL ,
[YPBH00] nvarchar(40) NULL ,
[AB1610] nvarchar(20) NULL ,
[AB1612] nvarchar(40) NULL ,
[AB1614] nvarchar(40) NULL ,
[AB1616] nvarchar(60) NULL ,
[AB1618] nvarchar(80) NULL ,
[MEM000] nvarchar(40) NULL 
);
-- ----------------------------
-- Table structure for AB17
-- ----------------------------
CREATE TABLE [dbo].[AB17] (
[KKKKKK] int NOT NULL IDENTITY(1,1) ,
[YEAR00] int NOT NULL ,
[SSS000] nvarchar(3) NOT NULL ,
[YYYY00] int NOT NULL ,
[MM0000] int NULL ,
[DD0000] int NULL ,
[SSCODE] nvarchar(13) NOT NULL ,
[SSNAME] nvarchar(100) NULL ,
[PLOTNO] nvarchar(20) NULL ,
[PLOTEX] nvarchar(20) NULL ,
[STYP00] nvarchar(20) NULL ,
[SPAR00] nvarchar(20) NULL ,
[CROP00] nvarchar(20) NULL ,
[DEPTH0] float(53) NULL ,
[YPBH00] nvarchar(40) NULL ,
[AB1702] float(53) NULL ,
[AB1704] float(53) NULL ,
[AB1706] int NULL ,
[MEM000] nvarchar(40) NULL 
);

-- ----------------------------
-- Table structure for ABMethod
-- ----------------------------
CREATE TABLE [dbo].[ABMethod] (
[KKKKKK] int NOT NULL IDENTITY(1,1) ,
[YEAR00] int NOT NULL ,
[SSS000] nvarchar(3) NOT NULL ,
[YYYY00] int NOT NULL ,
[T_CODE] nvarchar(20) NOT NULL ,
[T_NAME] nvarchar(40) NOT NULL ,
[VAR_NAME] nvarchar(20) NOT NULL ,
[VAR_METHOD] nvarchar(40) NOT NULL ,
[VAR_STANDARD] nvarchar(40) NULL ,
[MEM000] nvarchar(80) NULL 
);
-- ----------------------------
-- Table structure for TEMP_AB01
-- ----------------------------
CREATE TABLE [dbo].[TEMP_AB01] (
[KKKKKK] int NOT NULL IDENTITY(1,1) ,
[YEAR00] int NOT NULL ,
[SSS000] nvarchar(3) NOT NULL ,
[YYYY00] int NOT NULL ,
[MM0000] int NOT NULL ,
[DD0000] int NOT NULL ,
[SSCODE] nvarchar(13) NOT NULL ,
[SSNAME] nvarchar(40) NOT NULL ,
[PLOTNO] nvarchar(20) NOT NULL ,
[PLOTEX] nvarchar(40) NOT NULL ,
[STYP00] nvarchar(20) NOT NULL ,
[SPAR00] nvarchar(20) NOT NULL ,
[CROP00] nvarchar(20) NOT NULL ,
[DEPTH0] nvarchar(20) NULL ,
[YPBH00] nvarchar(40) NULL ,
[AB0102] float(53) NULL ,
[AB0104] float(53) NULL ,
[AB0106] float(53) NULL ,
[AB0108] float(53) NULL ,
[AB0110] float(53) NULL ,
[AB0112] float(53) NULL ,
[AB0114] float(53) NULL ,
[AB0116] float(53) NULL ,
[MEM000] nvarchar(40) NULL 
);

-- ----------------------------
-- Table structure for TEMP_AB02
-- ----------------------------
CREATE TABLE [dbo].[TEMP_AB02] (
[KKKKKK] int NOT NULL IDENTITY(1,1) ,
[YEAR00] int NOT NULL ,
[SSS000] nvarchar(3) NOT NULL ,
[YYYY00] int NOT NULL ,
[MM0000] int NOT NULL ,
[DD0000] int NOT NULL ,
[SSCODE] nvarchar(13) NOT NULL ,
[SSNAME] nvarchar(40) NOT NULL ,
[PLOTNO] nvarchar(20) NOT NULL ,
[PLOTEX] nvarchar(40) NOT NULL ,
[STYP00] nvarchar(20) NOT NULL ,
[SPAR00] nvarchar(20) NOT NULL ,
[CROP00] nvarchar(20) NOT NULL ,
[DEPTH0] nvarchar(20) NULL ,
[YPBH00] nvarchar(40) NULL ,
[AB0202] float(53) NULL ,
[AB0204] float(53) NULL ,
[AB0206] float(53) NULL ,
[AB0208] float(53) NULL ,
[AB0210] float(53) NULL ,
[AB0212] float(53) NULL ,
[AB0214] float(53) NULL ,
[AB0216] float(53) NULL ,
[AB0218] float(53) NULL ,
[MEM000] nvarchar(40) NULL 
);
-- ----------------------------
-- Records of TEMP_AB02
-- ----------------------------

-- ----------------------------
-- Table structure for TEMP_AB03
-- ----------------------------
CREATE TABLE [dbo].[TEMP_AB03] (
[KKKKKK] int NOT NULL IDENTITY(1,1) ,
[YEAR00] int NOT NULL ,
[SSS000] nvarchar(3) NOT NULL ,
[YYYY00] int NOT NULL ,
[MM0000] int NOT NULL ,
[DD0000] int NOT NULL ,
[SSCODE] nvarchar(13) NOT NULL ,
[SSNAME] nvarchar(40) NOT NULL ,
[PLOTNO] nvarchar(20) NOT NULL ,
[PLOTEX] nvarchar(40) NOT NULL ,
[STYP00] nvarchar(20) NOT NULL ,
[SPAR00] nvarchar(20) NOT NULL ,
[CROP00] nvarchar(20) NOT NULL ,
[DEPTH0] nvarchar(20) NULL ,
[YPBH00] nvarchar(40) NOT NULL ,
[AB0302] float(53) NULL ,
[AB0304] float(53) NULL ,
[AB0306] float(53) NULL ,
[AB0308] float(53) NULL ,
[AB0310] float(53) NULL ,
[AB0312] float(53) NULL ,
[AB0314] float(53) NULL ,
[AB0316] float(53) NULL ,
[AB0318] float(53) NULL ,
[AB0320] float(53) NULL ,
[AB0322] float(53) NULL ,
[AB0324] float(53) NULL ,
[MEM000] nvarchar(40) NULL 
);


CREATE TABLE [dbo].[TEMP_AB04] (
[KKKKKK] int NOT NULL IDENTITY(1,1) ,
[YEAR00] int NOT NULL ,
[SSS000] nvarchar(3) NOT NULL ,
[YYYY00] int NOT NULL ,
[MM0000] int NOT NULL ,
[DD0000] int NOT NULL ,
[SSCODE] nvarchar(13) NOT NULL ,
[SSNAME] nvarchar(40) NULL ,
[PLOTNO] nvarchar(20) NULL ,
[PLOTEX] nvarchar(40) NULL ,
[STYP00] nvarchar(20) NULL ,
[SPAR00] nvarchar(20) NULL ,
[CROP00] nvarchar(20) NULL ,
[DEPTH0] nvarchar(20) NULL ,
[YPBH00] nvarchar(40) NOT NULL ,
[AB0402] float(53) NULL ,
[AB0404] float(53) NULL ,
[AB0406] float(53) NULL ,
[AB0408] float(53) NULL ,
[AB0410] float(53) NULL ,
[AB0412] float(53) NULL ,
[AB0414] float(53) NULL ,
[AB0416] float(53) NULL ,
[AB0418] float(53) NULL ,
[AB0420] float(53) NULL ,
[AB0422] float(53) NULL ,
[AB0424] float(53) NULL ,
[AB0426] float(53) NULL ,
[AB0428] float(53) NULL ,
[MEM000] nvarchar(40) NULL 
);

-- ----------------------------
-- Table structure for TEMP_AB06
-- ----------------------------
CREATE TABLE [dbo].[TEMP_AB06] (
[KKKKKK] int NOT NULL IDENTITY(1,1) ,
[YEAR00] int NOT NULL ,
[SSS000] nvarchar(3) NOT NULL ,
[YYYY00] int NOT NULL ,
[MM0000] int NOT NULL ,
[DD0000] int NOT NULL ,
[SSCODE] nvarchar(13) NOT NULL ,
[SSNAME] nvarchar(40) NOT NULL ,
[PLOTNO] nvarchar(20) NOT NULL ,
[PLOTEX] nvarchar(40) NOT NULL ,
[TREAT0] nvarchar(20) NOT NULL ,
[STYP00] nvarchar(20) NOT NULL ,
[SPAR00] nvarchar(20) NOT NULL ,
[CROP00] nvarchar(20) NOT NULL ,
[DEPTH0] nvarchar(20) NULL ,
[YPBH00] nvarchar(40) NOT NULL ,
[AB0602] float(53) NULL ,
[AB0604] float(53) NULL ,
[MEM000] nvarchar(40) NULL 
);

-- ----------------------------
-- Table structure for TEMP_AB07
-- ----------------------------
CREATE TABLE [dbo].[TEMP_AB07] (
[KKKKKK] int NOT NULL IDENTITY(1,1) ,
[YEAR00] int NOT NULL ,
[SSS000] nvarchar(3) NOT NULL ,
[YYYY00] int NOT NULL ,
[MM0000] int NOT NULL ,
[DD0000] int NOT NULL ,
[SSCODE] nvarchar(13) NOT NULL ,
[SSNAME] nvarchar(40) NOT NULL ,
[PLOTNO] nvarchar(20) NOT NULL ,
[PLOTEX] nvarchar(40) NOT NULL ,
[STYP00] nvarchar(20) NOT NULL ,
[SPAR00] nvarchar(20) NOT NULL ,
[CROP00] nvarchar(20) NOT NULL ,
[DEPTH0] nvarchar(20) NULL ,
[YPBH00] nvarchar(40) NOT NULL ,
[AB0702] float(53) NULL ,
[AB0703] nvarchar(80) NULL ,
[AB0704] float(53) NULL ,
[AB0705] nvarchar(80) NULL ,
[AB0706] float(53) NULL ,
[AB0707] nvarchar(80) NULL ,
[AB0708] float(53) NULL ,
[AB0709] nvarchar(80) NULL ,
[AB0710] float(53) NULL ,
[AB0711] nvarchar(80) NULL ,
[AB0712] float(53) NULL ,
[AB0713] nvarchar(80) NULL ,
[AB0714] float(53) NULL ,
[AB0715] nvarchar(80) NULL ,
[MEM000] nvarchar(40) NULL 
);


CREATE TABLE [dbo].[TEMP_AB08] (
[KKKKKK] int NOT NULL IDENTITY(1,1) ,
[YEAR00] int NOT NULL ,
[SSS000] nvarchar(3) NOT NULL ,
[YYYY00] int NOT NULL ,
[MM0000] int NOT NULL ,
[DD0000] int NOT NULL ,
[SSCODE] nvarchar(13) NOT NULL ,
[SSNAME] nvarchar(60) NOT NULL ,
[PLOTNO] nvarchar(20) NOT NULL ,
[PLOTEX] nvarchar(40) NOT NULL ,
[STYP00] nvarchar(20) NOT NULL ,
[SPAR00] nvarchar(20) NOT NULL ,
[CROP00] nvarchar(20) NOT NULL ,
[DEPTH0] nvarchar(20) NULL ,
[YPBH00] nvarchar(40) NOT NULL ,
[AB0802] float(53) NULL ,
[AB0804] float(53) NULL ,
[AB0806] float(53) NULL ,
[AB0808] nvarchar(20) NOT NULL ,
[MEM000] nvarchar(60) NULL 
);


CREATE TABLE [dbo].[TEMP_AB09] (
[KKKKKK] int NOT NULL IDENTITY(1,1) ,
[YEAR00] int NOT NULL ,
[SSS000] nvarchar(3) NOT NULL ,
[YYYY00] int NOT NULL ,
[MM0000] int NOT NULL ,
[DD0000] int NOT NULL ,
[SSCODE] nvarchar(13) NOT NULL ,
[SSNAME] nvarchar(60) NOT NULL ,
[PLOTNO] nvarchar(20) NOT NULL ,
[PLOTEX] nvarchar(40) NOT NULL ,
[STYP00] nvarchar(20) NOT NULL ,
[SPAR00] nvarchar(20) NOT NULL ,
[CROP00] nvarchar(20) NOT NULL ,
[DEPTH0] nvarchar(20) NULL ,
[YPBH00] nvarchar(40) NOT NULL ,
[AB0902] float(53) NULL ,
[AB0904] float(53) NULL ,
[AB0906] int NULL ,
[MEM000] nvarchar(40) NULL 
);

CREATE TABLE [dbo].[TEMP_AB10] (
[KKKKKK] int NOT NULL IDENTITY(1,1) ,
[YEAR00] int NOT NULL ,
[SSS000] nvarchar(3) NOT NULL ,
[YYYY00] int NOT NULL ,
[MM0000] int NOT NULL ,
[DD0000] int NOT NULL ,
[SSCODE] nvarchar(13) NOT NULL ,
[SSNAME] nvarchar(60) NOT NULL ,
[PLOTNO] nvarchar(20) NOT NULL ,
[PLOTEX] nvarchar(40) NOT NULL ,
[STYP00] nvarchar(20) NOT NULL ,
[SPAR00] nvarchar(20) NOT NULL ,
[CROP00] nvarchar(20) NOT NULL ,
[DEPTH0] nvarchar(20) NULL ,
[YPBH00] nvarchar(40) NOT NULL ,
[AB1002] float(53) NULL ,
[AB1004] float(53) NULL ,
[AB1006] float(53) NULL ,
[AB1008] float(53) NULL ,
[AB1010] float(53) NULL ,
[AB1012] float(53) NULL ,
[AB1014] float(53) NULL ,
[AB1016] float(53) NULL ,
[AB1018] float(53) NULL ,
[AB1020] float(53) NULL ,
[MEM000] nvarchar(40) NULL 
);


CREATE TABLE [dbo].[TEMP_AB16] (
[KKKKKK] int NOT NULL IDENTITY(1,1) ,
[YEAR00] int NOT NULL ,
[SSS000] nvarchar(3) NOT NULL ,
[YYYY00] int NULL ,
[MM0000] int NULL ,
[DD0000] int NULL ,
[SSCODE] nvarchar(13) NOT NULL ,
[SSNAME] nvarchar(100) NULL ,
[AB1602] nvarchar(20) NULL ,
[AB1604] nvarchar(20) NULL ,
[AB1606] nvarchar(20) NULL ,
[STYP00] nvarchar(20) NULL ,
[AB1608] nvarchar(20) NULL ,
[SPAR00] nvarchar(20) NULL ,
[CROP00] nvarchar(20) NULL ,
[YPBH00] nvarchar(40) NULL ,
[AB1610] nvarchar(20) NULL ,
[AB1612] nvarchar(40) NULL ,
[AB1614] nvarchar(40) NULL ,
[AB1616] nvarchar(60) NULL ,
[AB1618] nvarchar(80) NULL ,
[MEM000] nvarchar(40) NULL 
);


CREATE TABLE [dbo].[TEMP_AB17] (
[KKKKKK] int NOT NULL IDENTITY(1,1) ,
[YEAR00] int NOT NULL ,
[SSS000] nvarchar(3) NOT NULL ,
[YYYY00] int NOT NULL ,
[MM0000] int NULL ,
[DD0000] int NULL ,
[SSCODE] nvarchar(13) NOT NULL ,
[SSNAME] nvarchar(100) NULL ,
[PLOTNO] nvarchar(20) NULL ,
[PLOTEX] nvarchar(20) NULL ,
[STYP00] nvarchar(20) NULL ,
[SPAR00] nvarchar(20) NULL ,
[CROP00] nvarchar(20) NULL ,
[DEPTH0] float(53) NULL ,
[YPBH00] nvarchar(40) NULL ,
[AB1702] float(53) NULL ,
[AB1704] float(53) NULL ,
[AB1706] int NULL ,
[MEM000] nvarchar(40) NULL 
);



CREATE TABLE [dbo].[TEMP_ABMethod] (
[KKKKKK] int NOT NULL IDENTITY(1,1) ,
[YEAR00] int NOT NULL ,
[SSS000] nvarchar(3) NOT NULL ,
[YYYY00] int NOT NULL ,
[T_CODE] nvarchar(20) NOT NULL ,
[T_NAME] nvarchar(40) NOT NULL ,
[VAR_NAME] nvarchar(20) NOT NULL ,
[VAR_METHOD] nvarchar(40) NOT NULL ,
[VAR_STANDARD] nvarchar(40) NULL ,
[MEM000] nvarchar(80) NULL 
);



-- ----------------------------
ALTER TABLE [dbo].[AB01] ADD PRIMARY KEY ([KKKKKK]);


-- ----------------------------
-- Indexes structure for table AB02
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table AB02
-- ----------------------------
ALTER TABLE [dbo].[AB02] ADD PRIMARY KEY ([KKKKKK]);


-- ----------------------------
-- Indexes structure for table AB03
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table AB03
-- ----------------------------
ALTER TABLE [dbo].[AB03] ADD PRIMARY KEY ([KKKKKK]);


-- ----------------------------
-- Indexes structure for table AB04
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table AB04
-- ----------------------------
ALTER TABLE [dbo].[AB04] ADD PRIMARY KEY ([KKKKKK]);


-- ----------------------------
-- Indexes structure for table AB06
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table AB06
-- ----------------------------
ALTER TABLE [dbo].[AB06] ADD PRIMARY KEY ([KKKKKK]);


-- ----------------------------
-- Indexes structure for table AB07
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table AB07
-- ----------------------------
ALTER TABLE [dbo].[AB07] ADD PRIMARY KEY ([KKKKKK]);


-- ----------------------------
-- Indexes structure for table AB08
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table AB08
-- ----------------------------
ALTER TABLE [dbo].[AB08] ADD PRIMARY KEY ([KKKKKK]);


-- ----------------------------
-- Indexes structure for table AB09
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table AB09
-- ----------------------------
ALTER TABLE [dbo].[AB09] ADD PRIMARY KEY ([KKKKKK]);


-- ----------------------------
-- Indexes structure for table AB10
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table AB10
-- ----------------------------
ALTER TABLE [dbo].[AB10] ADD PRIMARY KEY ([KKKKKK]);


-- ----------------------------
-- Indexes structure for table AB16
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table AB16
-- ----------------------------
ALTER TABLE [dbo].[AB16] ADD PRIMARY KEY ([KKKKKK]);


-- ----------------------------
-- Indexes structure for table AB17
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table AB17
-- ----------------------------
ALTER TABLE [dbo].[AB17] ADD PRIMARY KEY ([KKKKKK]);


-- ----------------------------
-- Indexes structure for table ABMethod
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table ABMethod
-- ----------------------------
ALTER TABLE [dbo].[ABMethod] ADD PRIMARY KEY ([KKKKKK]);


-- ----------------------------
-- Indexes structure for table TEMP_AB01
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table TEMP_AB01
-- ----------------------------
ALTER TABLE [dbo].[TEMP_AB01] ADD PRIMARY KEY ([KKKKKK]);


-- ----------------------------
-- Indexes structure for table TEMP_AB02
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table TEMP_AB02
-- ----------------------------
ALTER TABLE [dbo].[TEMP_AB02] ADD PRIMARY KEY ([KKKKKK]);


-- ----------------------------
-- Indexes structure for table TEMP_AB03
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table TEMP_AB03
-- ----------------------------
ALTER TABLE [dbo].[TEMP_AB03] ADD PRIMARY KEY ([KKKKKK]);


-- ----------------------------
-- Indexes structure for table TEMP_AB04
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table TEMP_AB04
-- ----------------------------
ALTER TABLE [dbo].[TEMP_AB04] ADD PRIMARY KEY ([KKKKKK]);


-- ----------------------------
-- Indexes structure for table TEMP_AB06
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table TEMP_AB06
-- ----------------------------
ALTER TABLE [dbo].[TEMP_AB06] ADD PRIMARY KEY ([KKKKKK]);


-- ----------------------------
-- Indexes structure for table TEMP_AB07
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table TEMP_AB07
-- ----------------------------
ALTER TABLE [dbo].[TEMP_AB07] ADD PRIMARY KEY ([KKKKKK]);


-- ----------------------------
-- Indexes structure for table TEMP_AB08
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table TEMP_AB08
-- ----------------------------
ALTER TABLE [dbo].[TEMP_AB08] ADD PRIMARY KEY ([KKKKKK]);


-- ----------------------------
-- Indexes structure for table TEMP_AB09
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table TEMP_AB09
-- ----------------------------
ALTER TABLE [dbo].[TEMP_AB09] ADD PRIMARY KEY ([KKKKKK]);


-- ----------------------------
-- Indexes structure for table TEMP_AB10
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table TEMP_AB10
-- ----------------------------
ALTER TABLE [dbo].[TEMP_AB10] ADD PRIMARY KEY ([KKKKKK]);


-- ----------------------------
-- Indexes structure for table TEMP_AB16
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table TEMP_AB16
-- ----------------------------
ALTER TABLE [dbo].[TEMP_AB16] ADD PRIMARY KEY ([KKKKKK]);


-- ----------------------------
-- Indexes structure for table TEMP_AB17
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table TEMP_AB17
-- ----------------------------
ALTER TABLE [dbo].[TEMP_AB17] ADD PRIMARY KEY ([KKKKKK]);


-- ----------------------------
-- Indexes structure for table TEMP_ABMethod
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table TEMP_ABMethod
-- ----------------------------
ALTER TABLE [dbo].[TEMP_ABMethod] ADD PRIMARY KEY ([KKKKKK]);

