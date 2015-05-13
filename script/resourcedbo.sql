/*
Navicat SQL Server Data Transfer

Source Server         : station
Source Server Version : 90000
Source Host           : 159.226.50.241:1433
Source Database       : resource
Source Schema         : dbo

Target Server Type    : SQL Server
Target Server Version : 90000
File Encoding         : 65001

Date: 2014-09-22 17:07:08
*/


-- ----------------------------
-- Table structure for A_11
-- ----------------------------

CREATE TABLE [dbo].[A_11] (
[YYYY00] decimal(4) NOT NULL ,
[SSS000] nvarchar(3) NOT NULL ,
[A_1106] nvarchar(20) NOT NULL ,
[A_1108] nvarchar(200) NOT NULL ,
[A_1110] nvarchar(40) NOT NULL ,
[A_1112] nvarchar(10) NOT NULL ,
[A_1114] nvarchar(100) NULL ,
[A_1116] decimal(12) NOT NULL ,
[A_1118] nvarchar(100) NULL ,
[A_1120] nvarchar(1000) NOT NULL ,
[A_1122] nvarchar(1000) NULL ,
[A_1124] nvarchar(100) NOT NULL ,
[A_1126] nvarchar(200) NOT NULL ,
[A_1128] decimal(16,4) NOT NULL ,
[A_1130] decimal(16,4) NOT NULL ,
[A_1132] nvarchar(20) NOT NULL ,
[A_1134] nvarchar(100) NOT NULL ,
[A_1136] nvarchar(200) NOT NULL ,
[A_1138] nvarchar(100) NOT NULL ,
[A_1140] nvarchar(1000) NOT NULL ,
[A_1142] nvarchar(1000) NOT NULL ,
[A_1144] nvarchar(2) NOT NULL ,
[A_1146] nvarchar(500) NULL ,
[LASTMOD] datetime NOT NULL ,
[KKKKKK] decimal(32) NOT NULL IDENTITY(1,1) 
);


-- ----------------------------
-- Table structure for A_21
-- ----------------------------


CREATE TABLE [dbo].[A_21] (
[YYYY00] decimal(4) NOT NULL ,
[SSS000] nvarchar(3) NOT NULL ,
[A_2106] nvarchar(200) NOT NULL ,
[A_2108] nvarchar(40) NOT NULL ,
[A_2110] nvarchar(100) NOT NULL ,
[A_2112] nvarchar(100) NULL ,
[A_2114] nvarchar(200) NOT NULL ,
[A_2116] nvarchar(20) NULL ,
[A_2118] nvarchar(100) NULL ,
[A_2120] nvarchar(60) NOT NULL ,
[A_2122] nvarchar(20) NOT NULL ,
[A_2124] nvarchar(1000) NULL ,
[A_2126] nvarchar(20) NULL ,
[A_2128] nvarchar(500) NOT NULL ,
[A_2130] decimal(6) NOT NULL ,
[A_2132] nvarchar(100) NOT NULL ,
[A_2134] nvarchar(2) NOT NULL ,
[A_2136] nvarchar(500) NULL ,
[LASTMOD] datetime NOT NULL ,
[KKKKKK] decimal(32) NOT NULL IDENTITY(1,1) 
);




-- ----------------------------
-- Table structure for A_22
-- ----------------------------

CREATE TABLE [dbo].[A_22] (
[YYYY00] decimal(4) NOT NULL ,
[SSS000] nvarchar(3) NOT NULL ,
[A_2206] nvarchar(40) NOT NULL ,
[A_2208] nvarchar(100) NOT NULL ,
[A_2210] nvarchar(500) NOT NULL ,
[A_2212] nvarchar(100) NULL ,
[A_2214] nvarchar(500) NULL ,
[A_2216] nvarchar(20) NOT NULL ,
[A_2218] nvarchar(20) NOT NULL ,
[A_2220] nvarchar(100) NOT NULL ,
[A_2222] nvarchar(20) NULL ,
[A_2224] nvarchar(1000) NOT NULL ,
[A_2226] nvarchar(1000) NOT NULL ,
[A_2228] nvarchar(20) NOT NULL ,
[A_2230] decimal(6) NOT NULL ,
[A_2232] nvarchar(500) NOT NULL ,
[A_2234] nvarchar(200) NOT NULL ,
[A_2236] nvarchar(2) NOT NULL ,
[A_2238] nvarchar(500) NULL ,
[LASTMOD] datetime NOT NULL ,
[KKKKKK] decimal(32) NOT NULL IDENTITY(1,1) 
);



-- ----------------------------
-- Table structure for A_23
-- ----------------------------
CREATE TABLE [dbo].[A_23] (
[YYYY00] decimal(4) NOT NULL ,
[SSS000] nvarchar(3) NOT NULL ,
[A_2306] nvarchar(40) NOT NULL ,
[A_2308] nvarchar(200) NOT NULL ,
[A_2310] nvarchar(20) NOT NULL ,
[A_2312] nvarchar(100) NOT NULL ,
[A_2314] nvarchar(20) NULL ,
[A_2316] nvarchar(1000) NULL ,
[A_2318] nvarchar(1000) NOT NULL ,
[A_2320] nvarchar(20) NOT NULL ,
[A_2322] nvarchar(100) NOT NULL ,
[A_2324] nvarchar(500) NOT NULL ,
[A_2326] nvarchar(200) NOT NULL ,
[A_2328] nvarchar(2) NOT NULL ,
[A_2330] nvarchar(500) NULL ,
[LASTMOD] datetime NOT NULL ,
[KKKKKK] decimal(32) NOT NULL IDENTITY(1,1) 
);



-- ----------------------------
-- Table structure for A_24
-- ----------------------------

CREATE TABLE [dbo].[A_24] (
[YYYY00] decimal(4) NOT NULL ,
[SSS000] nvarchar(3) NOT NULL ,
[A_2406] nvarchar(40) NOT NULL ,
[A_2408] nvarchar(200) NOT NULL ,
[A_2410] nvarchar(500) NOT NULL ,
[A_2412] nvarchar(100) NULL ,
[A_2414] nvarchar(500) NULL ,
[A_2416] nvarchar(20) NOT NULL ,
[A_2418] nvarchar(100) NOT NULL ,
[A_2420] nvarchar(100) NOT NULL ,
[A_2422] nvarchar(20) NULL ,
[A_2424] nvarchar(1000) NOT NULL ,
[A_2426] nvarchar(100) NOT NULL ,
[A_2428] nvarchar(20) NOT NULL ,
[A_2430] nvarchar(100) NOT NULL ,
[A_2432] nvarchar(20) NOT NULL ,
[A_2434] nvarchar(200) NOT NULL ,
[A_2436] nvarchar(2) NOT NULL ,
[A_2438] nvarchar(500) NULL ,
[LASTMOD] datetime NOT NULL ,
[KKKKKK] decimal(32) NOT NULL IDENTITY(1,1) 
);



-- ----------------------------
-- Table structure for A_25
-- ----------------------------

CREATE TABLE [dbo].[A_25] (
[YYYY00] decimal(4) NOT NULL ,
[SSS000] nvarchar(3) NOT NULL ,
[A_2506] nvarchar(40) NOT NULL ,
[A_2508] nvarchar(200) NOT NULL ,
[A_2510] nvarchar(500) NOT NULL ,
[A_2512] nvarchar(100) NULL ,
[A_2514] nvarchar(500) NULL ,
[A_2516] nvarchar(20) NOT NULL ,
[A_2518] nvarchar(100) NOT NULL ,
[A_2520] nvarchar(100) NOT NULL ,
[A_2522] nvarchar(20) NULL ,
[A_2524] nvarchar(1000) NOT NULL ,
[A_2526] nvarchar(100) NOT NULL ,
[A_2528] nvarchar(20) NOT NULL ,
[A_2530] nvarchar(20) NOT NULL ,
[A_2532] nvarchar(200) NOT NULL ,
[A_2534] nvarchar(2) NOT NULL ,
[A_2536] nvarchar(500) NULL ,
[LASTMOD] datetime NOT NULL ,
[KKKKKK] decimal(32) NOT NULL IDENTITY(1,1) 
);



-- ----------------------------
-- Table structure for A_26
-- ----------------------------
CREATE TABLE [dbo].[A_26] (
[YYYY00] decimal(4) NOT NULL ,
[SSS000] nvarchar(3) NOT NULL ,
[A_2606] nvarchar(200) NOT NULL ,
[A_2608] nvarchar(40) NOT NULL ,
[A_2610] nvarchar(100) NOT NULL ,
[A_2612] nvarchar(100) NULL ,
[A_2614] nvarchar(200) NOT NULL ,
[A_2616] nvarchar(20) NULL ,
[A_2618] nvarchar(60) NOT NULL ,
[A_2620] nvarchar(1000) NOT NULL ,
[A_2622] nvarchar(20) NOT NULL ,
[A_2624] nvarchar(500) NOT NULL ,
[A_2626] nvarchar(200) NOT NULL ,
[A_2628] nvarchar(2) NOT NULL ,
[A_2630] nvarchar(500) NULL ,
[LASTMOD] datetime NOT NULL ,
[KKKKKK] decimal(32) NOT NULL IDENTITY(1,1) 
);



-- ----------------------------
-- Table structure for A_27
-- ----------------------------

CREATE TABLE [dbo].[A_27] (
[YYYY00] decimal(4) NOT NULL ,
[SSS000] nvarchar(3) NOT NULL ,
[A_2706] nvarchar(40) NOT NULL ,
[A_2708] nvarchar(200) NOT NULL ,
[A_2710] nvarchar(20) NOT NULL ,
[A_2712] nvarchar(200) NOT NULL ,
[A_2714] nvarchar(20) NULL ,
[A_2716] nvarchar(1000) NOT NULL ,
[A_2718] nvarchar(600) NOT NULL ,
[A_2720] nvarchar(100) NOT NULL ,
[A_2722] nvarchar(500) NULL ,
[A_2724] nvarchar(200) NOT NULL ,
[A_2726] nvarchar(2) NOT NULL ,
[A_2728] nvarchar(500) NULL ,
[LASTMOD] datetime NOT NULL ,
[KKKKKK] decimal(32) NOT NULL IDENTITY(1,1) 
);



-- ----------------------------
-- Table structure for A_28
-- ----------------------------

CREATE TABLE [dbo].[A_28] (
[YYYY00] decimal(4) NOT NULL ,
[SSS000] nvarchar(3) NOT NULL ,
[A_2806] nvarchar(20) NULL ,
[A_2808] decimal(12,2) NULL ,
[A_2810] decimal(10,2) NULL ,
[A_2812] nvarchar(500) NULL ,
[LASTMOD] datetime NOT NULL ,
[KKKKKK] decimal(32) NOT NULL IDENTITY(1,1) 
);


-- ----------------------------
-- Table structure for A_31
-- ----------------------------

CREATE TABLE [dbo].[A_31] (
[YYYY00] decimal(4) NOT NULL ,
[SSS000] nvarchar(3) NOT NULL ,
[A_3106] nvarchar(200) NOT NULL ,
[A_3108] nvarchar(500) NULL ,
[A_3110] decimal(12,2) NOT NULL ,
[A_3112] nvarchar(100) NULL ,
[A_3114] nvarchar(600) NOT NULL ,
[A_3116] nvarchar(20) NOT NULL ,
[A_3118] nvarchar(200) NOT NULL ,
[A_3120] nvarchar(4) NULL ,
[A_3122] nvarchar(60) NOT NULL ,
[A_3124] nvarchar(20) NOT NULL ,
[A_3126] nvarchar(2) NOT NULL ,
[A_3128] nvarchar(500) NULL ,
[LASTMOD] datetime NOT NULL ,
[KKKKKK] decimal(32) NOT NULL IDENTITY(1,1) 
);



-- ----------------------------
-- Table structure for A_41


CREATE TABLE [dbo].[A_41] (
[YYYY00] decimal(4) NOT NULL ,
[SSS000] nvarchar(3) NOT NULL ,
[A_4106] nvarchar(100) NOT NULL ,
[A_4108] nvarchar(20) NOT NULL ,
[A_4110] nvarchar(20) NOT NULL ,
[A_4112] nvarchar(6) NOT NULL ,
[A_4114] nvarchar(100) NULL ,
[A_4116] decimal(12) NULL ,
[A_4118] nvarchar(1000) NULL ,
[A_4120] nvarchar(1000) NOT NULL ,
[A_4122] nvarchar(1000) NOT NULL ,
[A_4124] nvarchar(100) NOT NULL ,
[A_4126] nvarchar(20) NULL ,
[A_4128] decimal(16,4) NULL ,
[A_4130] decimal(16,4) NULL ,
[A_4132] decimal(20) NOT NULL ,
[A_4134] nvarchar(100) NULL ,
[A_4136] nvarchar(100) NULL ,
[A_4138] nvarchar(2) NOT NULL ,
[A_4140] nvarchar(500) NULL ,
[LASTMOD] datetime NOT NULL ,
[KKKKKK] decimal(32) NOT NULL IDENTITY(1,1) 
);



-- ----------------------------
-- Table structure for A_51
-- ----------------------------
CREATE TABLE [dbo].[A_51] (
[YYYY00] decimal(4) NOT NULL ,
[SSS000] nvarchar(3) NOT NULL ,
[A_5106] nvarchar(200) NOT NULL ,
[A_5108] nvarchar(100) NOT NULL ,
[A_5110] nvarchar(500) NULL ,
[A_5112] decimal(16,2) NOT NULL ,
[A_5114] nvarchar(20) NULL ,
[A_5116] decimal(16,2) NULL ,
[A_5118] nvarchar(400) NULL ,
[A_5120] decimal(16,2) NULL ,
[A_5122] nvarchar(400) NULL ,
[LASTMOD] datetime NOT NULL ,
[KKKKKK] decimal(32) NOT NULL IDENTITY(1,1) 
);



-- ----------------------------
-- Table structure for A_52
-- ----------------------------

CREATE TABLE [dbo].[A_52] (
[YYYY00] decimal(4) NOT NULL ,
[SSS000] nvarchar(3) NOT NULL ,
[A_5206] nvarchar(200) NOT NULL ,
[A_5208] nvarchar(40) NOT NULL ,
[A_5210] nvarchar(500) NULL ,
[A_5212] decimal(16,2) NOT NULL ,
[A_5214] nvarchar(20) NULL ,
[A_5216] decimal(16,2) NULL ,
[A_5218] nvarchar(400) NULL ,
[A_5220] decimal(16,2) NULL ,
[A_5222] nvarchar(400) NULL ,
[LASTMOD] datetime NOT NULL ,
[KKKKKK] decimal(32) NOT NULL IDENTITY(1,1) 
);



-- ----------------------------
-- Table structure for A_53
-- ----------------------------
CREATE TABLE [dbo].[A_53] (
[YYYY00] decimal(4) NOT NULL ,
[SSS000] nvarchar(3) NOT NULL ,
[A_5306] nvarchar(200) NOT NULL ,
[A_5308] nvarchar(500) NULL ,
[A_5310] nvarchar(20) NOT NULL ,
[A_5312] decimal(16,2) NULL ,
[A_5314] nvarchar(400) NULL ,
[LASTMOD] datetime NOT NULL ,
[KKKKKK] decimal(32) NOT NULL IDENTITY(1,1) 
);



-- ----------------------------
-- Table structure for B_11
-- ----------------------------

CREATE TABLE [dbo].[B_11] (
[YYYY00] decimal(4) NOT NULL ,
[SSS000] nvarchar(3) NOT NULL ,
[B_1106] nvarchar(30) NOT NULL ,
[B_1108] nvarchar(30) NOT NULL ,
[B_1110] nvarchar(30) NOT NULL ,
[B_1112] datetime NOT NULL ,
[B_1114] nvarchar(30) NOT NULL ,
[B_1116] nvarchar(30) NOT NULL ,
[B_1118] nvarchar(100) NULL ,
[B_1120] nvarchar(30) NOT NULL ,
[B_1122] nvarchar(300) NOT NULL ,
[B_1124] nvarchar(100) NULL ,
[B_1126] datetime NOT NULL ,
[LASTMOD] datetime NOT NULL ,
[KKKKKK] decimal(32) NOT NULL IDENTITY(1,1) 
);



-- ----------------------------
-- Table structure for B_12
-- ----------------------------
CREATE TABLE [dbo].[B_12] (
[YYYY00] decimal(4) NOT NULL ,
[SSS000] nvarchar(3) NOT NULL ,
[B_1206] nvarchar(30) NOT NULL ,
[B_1208] nvarchar(30) NOT NULL ,
[B_1210] datetime NOT NULL ,
[B_1212] nvarchar(100) NOT NULL ,
[B_1214] nvarchar(300) NOT NULL ,
[B_1216] nvarchar(100) NOT NULL ,
[B_1218] decimal(4) NULL ,
[B_1220] nvarchar(100) NULL ,
[LASTMOD] datetime NOT NULL ,
[KKKKKK] decimal(32) NOT NULL IDENTITY(1,1) 
);



-- ----------------------------
-- Table structure for B_13
-- ----------------------------

CREATE TABLE [dbo].[B_13] (
[YYYY00] decimal(4) NOT NULL ,
[SSS000] nvarchar(3) NOT NULL ,
[B_1306] nvarchar(30) NOT NULL ,
[B_1308] nvarchar(30) NOT NULL ,
[B_1310] nvarchar(300) NOT NULL ,
[B_1312] nvarchar(100) NULL ,
[B_1314] nvarchar(100) NOT NULL ,
[B_1316] nvarchar(30) NOT NULL ,
[B_1318] datetime NOT NULL ,
[B_1320] datetime NULL ,
[B_1322] nvarchar(100) NOT NULL ,
[B_1324] nvarchar(300) NULL ,
[B_1326] nvarchar(300) NULL ,
[B_1328] nvarchar(100) NOT NULL ,
[LASTMOD] datetime NOT NULL ,
[KKKKKK] decimal(32) NOT NULL IDENTITY(1,1) 
);


-- ----------------------------
-- Table structure for B_14
-- ----------------------------

CREATE TABLE [dbo].[B_14] (
[YYYY00] decimal(4) NOT NULL ,
[SSS000] nvarchar(3) NOT NULL ,
[B_1406] nvarchar(30) NOT NULL ,
[B_1408] nvarchar(30) NOT NULL ,
[B_1410] datetime NULL ,
[B_1412] nvarchar(300) NULL ,
[B_1414] nvarchar(100) NOT NULL ,
[B_1416] nvarchar(100) NULL ,
[B_1418] nvarchar(300) NULL ,
[B_1420] nvarchar(100) NULL ,
[B_1422] decimal(4) NOT NULL ,
[LASTMOD] datetime NOT NULL ,
[KKKKKK] decimal(32) NOT NULL IDENTITY(1,1) 
);



-- ----------------------------
-- Table structure for B_21
-- ----------------------------

CREATE TABLE [dbo].[B_21] (
[YYYY00] decimal(4) NOT NULL ,
[SSS000] nvarchar(3) NOT NULL ,
[B_2106] nvarchar(300) NOT NULL ,
[B_2108] nvarchar(100) NOT NULL ,
[B_2110] nvarchar(100) NOT NULL ,
[B_2112] nvarchar(30) NOT NULL ,
[B_2114] decimal(16,3) NOT NULL ,
[B_2116] decimal(16,3) NOT NULL ,
[B_2118] decimal(16,3) NULL ,
[B_2120] nvarchar(500) NOT NULL ,
[B_2122] nvarchar(300) NOT NULL ,
[B_2124] nvarchar(100) NOT NULL ,
[B_2126] nvarchar(100) NOT NULL ,
[B_2128] nvarchar(100) NOT NULL ,
[B_2130] nvarchar(100) NOT NULL ,
[B_2132] nvarchar(500) NULL ,
[B_2134] datetime NOT NULL ,
[B_2136] datetime NOT NULL ,
[B_2138] nvarchar(30) NOT NULL ,
[B_2140] decimal(4) NULL ,
[LASTMOD] datetime NOT NULL ,
[KKKKKK] decimal(32) NOT NULL IDENTITY(1,1) 
);


-- ----------------------------
-- Table structure for B_22
-- ----------------------------

CREATE TABLE [dbo].[B_22] (
[YYYY00] decimal(4) NOT NULL ,
[SSS000] nvarchar(3) NOT NULL ,
[B_2206] nvarchar(300) NOT NULL ,
[B_2208] nvarchar(100) NULL ,
[B_2210] nvarchar(30) NOT NULL ,
[B_2212] nvarchar(300) NOT NULL ,
[B_2214] nvarchar(100) NOT NULL ,
[B_2216] nvarchar(30) NOT NULL ,
[B_2218] datetime NULL ,
[B_2220] datetime NULL ,
[B_2222] decimal(16,3) NOT NULL ,
[B_2224] decimal(16,3) NOT NULL ,
[LASTMOD] datetime NOT NULL ,
[KKKKKK] decimal(32) NOT NULL IDENTITY(1,1) 
);



-- ----------------------------
-- Table structure for B_31
-- ----------------------------
CREATE TABLE [dbo].[B_31] (
[YYYY00] decimal(4) NOT NULL ,
[SSS000] nvarchar(3) NOT NULL ,
[B_3106] nvarchar(300) NOT NULL ,
[B_3108] nvarchar(300) NOT NULL ,
[B_3110] nvarchar(100) NULL ,
[B_3112] decimal(4) NOT NULL ,
[B_3114] decimal(4) NOT NULL ,
[B_3116] decimal(4) NOT NULL ,
[B_3118] nvarchar(100) NOT NULL ,
[B_3120] decimal(2) NOT NULL ,
[B_3122] nvarchar(500) NOT NULL ,
[B_3124] nvarchar(100) NULL ,
[B_3126] decimal(2) NOT NULL ,
[B_3128] nvarchar(30) NOT NULL ,
[B_3130] decimal(6,2) NULL ,
[B_3132] nvarchar(30) NOT NULL ,
[B_3134] nvarchar(300) NULL ,
[B_3136] nvarchar(500) NULL ,
[LASTMOD] datetime NULL ,
[KKKKKK] decimal(32) NOT NULL IDENTITY(1,1) 
);



-- ----------------------------
-- Table structure for B_32
-- ----------------------------
CREATE TABLE [dbo].[B_32] (
[YYYY00] decimal(4) NOT NULL ,
[SSS000] nvarchar(3) NOT NULL ,
[B_3206] nvarchar(300) NOT NULL ,
[B_3208] nvarchar(30) NOT NULL ,
[B_3210] nvarchar(30) NOT NULL ,
[B_3212] decimal(16,3) NULL ,
[B_3214] nvarchar(100) NOT NULL ,
[B_3216] nvarchar(100) NOT NULL ,
[B_3218] decimal(4) NOT NULL ,
[B_3220] decimal(2) NOT NULL ,
[B_3222] nvarchar(500) NOT NULL ,
[B_3224] decimal(2) NOT NULL ,
[B_3226] nvarchar(300) NULL ,
[LASTMOD] datetime NULL ,
[KKKKKK] decimal(32) NOT NULL IDENTITY(1,1) 
);



-- ----------------------------
-- Table structure for B_33
-- ----------------------------

CREATE TABLE [dbo].[B_33] (
[YYYY00] decimal(4) NOT NULL ,
[SSS000] nvarchar(3) NOT NULL ,
[B_3306] nvarchar(300) NOT NULL ,
[B_3308] nvarchar(300) NOT NULL ,
[B_3310] nvarchar(30) NOT NULL ,
[B_3312] datetime NOT NULL ,
[B_3314] nvarchar(500) NOT NULL ,
[B_3316] decimal(2) NOT NULL ,
[B_3318] nvarchar(300) NULL ,
[LASTMOD] datetime NOT NULL ,
[KKKKKK] decimal(32) NOT NULL IDENTITY(1,1) 
);




-- ----------------------------
-- Table structure for B_34
-- ----------------------------

CREATE TABLE [dbo].[B_34] (
[YYYY00] decimal(4) NOT NULL ,
[SSS000] nvarchar(3) NOT NULL ,
[B_3406] nvarchar(300) NOT NULL ,
[B_3408] nvarchar(100) NULL ,
[B_3410] nvarchar(300) NOT NULL ,
[B_3412] nvarchar(30) NOT NULL ,
[B_3414] datetime NOT NULL ,
[B_3416] decimal(2) NOT NULL ,
[B_3418] nvarchar(500) NOT NULL ,
[B_3420] decimal(2) NOT NULL ,
[B_3422] nvarchar(300) NULL ,
[LASTMOD] datetime NOT NULL ,
[KKKKKK] decimal(32) NOT NULL IDENTITY(1,1) 
);




-- ----------------------------
-- Table structure for B_35
-- ----------------------------

CREATE TABLE [dbo].[B_35] (
[YYYY00] decimal(4) NOT NULL ,
[SSS000] nvarchar(3) NOT NULL ,
[B_3506] nvarchar(300) NOT NULL ,
[B_3508] nvarchar(100) NOT NULL ,
[B_3510] nvarchar(30) NOT NULL ,
[B_3512] nvarchar(30) NOT NULL ,
[B_3514] nvarchar(300) NOT NULL ,
[B_3516] decimal(4) NOT NULL ,
[B_3518] nvarchar(4) NOT NULL ,
[B_3520] nvarchar(500) NULL ,
[B_3522] decimal(2) NULL ,
[B_3524] nvarchar(500) NULL ,
[B_3526] decimal(2) NULL ,
[B_3528] nvarchar(300) NULL ,
[B_3530] nvarchar(500) NULL ,
[LASTMOD] datetime NOT NULL ,
[KKKKKK] decimal(32) NOT NULL IDENTITY(1,1) 
);




-- ----------------------------
-- Table structure for B_36
-- ----------------------------
CREATE TABLE [dbo].[B_36] (
[YYYY00] decimal(4) NOT NULL ,
[SSS000] nvarchar(3) NOT NULL ,
[B_3606] nvarchar(300) NOT NULL ,
[B_3608] nvarchar(100) NULL ,
[B_3610] datetime NULL ,
[B_3612] nvarchar(100) NULL ,
[B_3614] datetime NULL ,
[B_3616] nvarchar(30) NOT NULL ,
[B_3618] nvarchar(30) NOT NULL ,
[B_3620] nvarchar(100) NOT NULL ,
[B_3622] nvarchar(500) NOT NULL ,
[B_3624] decimal(2) NOT NULL ,
[B_3626] nvarchar(500) NOT NULL ,
[B_3628] decimal(2) NOT NULL ,
[B_3630] nvarchar(300) NULL ,
[LASTMOD] datetime NULL ,
[KKKKKK] decimal(32) NOT NULL IDENTITY(1,1) 
);


-- ----------------------------
-- Table structure for B_37
-- ----------------------------

CREATE TABLE [dbo].[B_37] (
[YYYY00] decimal(4) NOT NULL ,
[SSS000] nvarchar(3) NOT NULL ,
[B_3706] nvarchar(300) NOT NULL ,
[B_3708] nvarchar(100) NULL ,
[B_3710] datetime NULL ,
[B_3712] nvarchar(30) NOT NULL ,
[B_3714] nvarchar(100) NULL ,
[B_3716] datetime NULL ,
[B_3718] nvarchar(500) NOT NULL ,
[B_3720] decimal(2) NOT NULL ,
[B_3722] nvarchar(500) NOT NULL ,
[B_3724] decimal(2) NOT NULL ,
[B_3726] nvarchar(300) NULL ,
[LASTMOD] datetime NULL ,
[KKKKKK] decimal(32) NOT NULL IDENTITY(1,1) 
);



-- ----------------------------
-- Table structure for B_38
-- ----------------------------

CREATE TABLE [dbo].[B_38] (
[YYYY00] decimal(4) NOT NULL ,
[SSS000] nvarchar(3) NOT NULL ,
[B_3806] nvarchar(300) NOT NULL ,
[B_3808] nvarchar(100) NOT NULL ,
[B_3810] nvarchar(300) NOT NULL ,
[B_3812] nvarchar(30) NOT NULL ,
[B_3814] datetime NOT NULL ,
[B_3816] nvarchar(500) NOT NULL ,
[B_3818] decimal(2) NOT NULL ,
[B_3820] nvarchar(500) NOT NULL ,
[B_3822] decimal(2) NOT NULL ,
[B_3824] nvarchar(30) NOT NULL ,
[B_3826] nvarchar(100) NULL ,
[B_3828] nvarchar(500) NULL ,
[B_3830] nvarchar(300) NULL ,
[LASTMOD] datetime NOT NULL ,
[KKKKKK] decimal(32) NOT NULL IDENTITY(1,1) 
);


-- ----------------------------
-- Table structure for B_39
-- ----------------------------

CREATE TABLE [dbo].[B_39] (
[YYYY00] decimal(4) NOT NULL ,
[SSS000] nvarchar(3) NOT NULL ,
[B_3906] nvarchar(300) NOT NULL ,
[B_3908] nvarchar(100) NOT NULL ,
[B_3910] nvarchar(30) NOT NULL ,
[B_3912] nvarchar(100) NOT NULL ,
[B_3914] datetime NOT NULL ,
[B_3916] nvarchar(100) NULL ,
[B_3918] datetime NULL ,
[B_3920] nvarchar(500) NOT NULL ,
[B_3922] decimal(2) NOT NULL ,
[B_3924] nvarchar(500) NOT NULL ,
[B_3926] decimal(2) NOT NULL ,
[B_3928] nvarchar(300) NULL ,
[LASTMOD] datetime NOT NULL ,
[KKKKKK] decimal(32) NOT NULL IDENTITY(1,1) 
);


-- ----------------------------
-- Table structure for B_3A
-- ----------------------------

CREATE TABLE [dbo].[B_3A] (
[YYYY00] decimal(4) NOT NULL ,
[SSS000] nvarchar(3) NOT NULL ,
[B_3A06] nvarchar(300) NOT NULL ,
[B_3A08] nvarchar(500) NOT NULL ,
[B_3A10] nvarchar(500) NOT NULL ,
[B_3A12] decimal(2) NOT NULL ,
[B_3A14] nvarchar(500) NOT NULL ,
[B_3A16] decimal(2) NOT NULL ,
[B_3A18] nvarchar(300) NULL ,
[LASTMOD] datetime NOT NULL ,
[KKKKKK] decimal(32) NOT NULL IDENTITY(1,1) 
);




-- ----------------------------
-- Table structure for B_3B
-- ----------------------------
CREATE TABLE [dbo].[B_3B] (
[YYYY00] decimal(4) NOT NULL ,
[SSS000] nvarchar(3) NOT NULL ,
[B_3B06] nvarchar(300) NOT NULL ,
[B_3B08] nvarchar(30) NOT NULL ,
[B_3B10] nvarchar(2000) NOT NULL ,
[B_3B12] nvarchar(2000) NOT NULL ,
[B_3B14] nvarchar(300) NOT NULL ,
[B_3B16] nvarchar(300) NULL ,
[LASTMOD] datetime NOT NULL ,
[KKKKKK] decimal(32) NOT NULL IDENTITY(1,1) 
);


-- ----------------------------
-- Table structure for B_51
-- ----------------------------
CREATE TABLE [dbo].[B_51] (
[YYYY00] decimal(4) NOT NULL ,
[SSS000] nvarchar(3) NOT NULL ,
[B_5106] nvarchar(30) NOT NULL ,
[B_5108] datetime NOT NULL ,
[B_5110] datetime NOT NULL ,
[B_5112] nvarchar(300) NOT NULL ,
[B_5114] decimal(4) NOT NULL ,
[B_5116] nvarchar(30) NOT NULL ,
[B_5118] nvarchar(300) NOT NULL ,
[B_5120] nvarchar(500) NULL ,
[B_5122] nvarchar(500) NOT NULL ,
[B_5124] nvarchar(30) NOT NULL ,
[B_5126] nvarchar(300) NULL ,
[LASTMOD] datetime NOT NULL ,
[KKKKKK] decimal(32) NOT NULL IDENTITY(1,1) 
);




-- ----------------------------
-- Table structure for B_52
-- ----------------------------

CREATE TABLE [dbo].[B_52] (
[YYYY00] decimal(4) NOT NULL ,
[SSS000] nvarchar(3) NOT NULL ,
[B_5206] nvarchar(300) NOT NULL ,
[B_5208] nvarchar(30) NOT NULL ,
[B_5210] nvarchar(30) NOT NULL ,
[B_5212] nvarchar(300) NOT NULL ,
[B_5214] nvarchar(100) NOT NULL ,
[B_5216] nvarchar(300) NOT NULL ,
[B_5218] nvarchar(30) NOT NULL ,
[B_5220] nvarchar(300) NULL ,
[B_5222] nvarchar(100) NULL ,
[B_5224] nvarchar(500) NULL ,
[LASTMOD] datetime NOT NULL ,
[KKKKKK] decimal(32) NOT NULL IDENTITY(1,1) 
);




-- ----------------------------
-- Table structure for B_53
-- ----------------------------

CREATE TABLE [dbo].[B_53] (
[YYYY00] decimal(4) NOT NULL ,
[SSS000] nvarchar(3) NOT NULL ,
[B_5306] nvarchar(300) NOT NULL ,
[B_5308] nvarchar(30) NOT NULL ,
[B_5310] nvarchar(30) NOT NULL ,
[B_5312] nvarchar(300) NOT NULL ,
[B_5314] nvarchar(300) NULL ,
[B_5316] nvarchar(300) NULL ,
[B_5318] nvarchar(100) NULL ,
[B_5320] nvarchar(100) NOT NULL ,
[B_5322] nvarchar(100) NOT NULL ,
[B_5324] decimal(4) NOT NULL ,
[B_5326] decimal(4) NOT NULL ,
[LASTMOD] datetime NOT NULL ,
[KKKKKK] decimal(32) NOT NULL IDENTITY(1,1) 
);




-- ----------------------------
-- Table structure for B_54
-- ----------------------------

CREATE TABLE [dbo].[B_54] (
[YYYY00] decimal(4) NOT NULL ,
[SSS000] nvarchar(3) NOT NULL ,
[B_5406] nvarchar(300) NOT NULL ,
[B_5408] nvarchar(300) NOT NULL ,
[B_5410] nvarchar(30) NOT NULL ,
[B_5412] nvarchar(30) NOT NULL ,
[B_5414] decimal(4) NOT NULL ,
[B_5416] datetime NOT NULL ,
[B_5418] nvarchar(300) NULL ,
[B_5420] nvarchar(500) NULL ,
[LASTMOD] datetime NOT NULL ,
[KKKKKK] decimal(32) NOT NULL IDENTITY(1,1) 
);




-- ----------------------------
-- Table structure for B_55
-- ----------------------------

CREATE TABLE [dbo].[B_55] (
[YYYY00] decimal(4) NOT NULL ,
[SSS000] nvarchar(3) NOT NULL ,
[B_5506] nvarchar(30) NOT NULL ,
[B_5508] nvarchar(300) NOT NULL ,
[B_5510] nvarchar(30) NOT NULL ,
[B_5512] nvarchar(100) NOT NULL ,
[B_5514] datetime NOT NULL ,
[B_5516] datetime NULL ,
[LASTMOD] datetime NOT NULL ,
[KKKKKK] decimal(32) NOT NULL IDENTITY(1,1) 
);




-- ----------------------------
-- Table structure for B_56
-- ----------------------------
CREATE TABLE [dbo].[B_56] (
[YYYY00] decimal(4) NOT NULL ,
[SSS000] nvarchar(3) NOT NULL ,
[B_5606] nvarchar(30) NOT NULL ,
[B_5608] nvarchar(300) NOT NULL ,
[B_5610] nvarchar(30) NOT NULL ,
[B_5612] nvarchar(100) NOT NULL ,
[B_5614] datetime NOT NULL ,
[B_5616] datetime NULL ,
[LASTMOD] datetime NOT NULL ,
[KKKKKK] decimal(32) NOT NULL IDENTITY(1,1) 
);




-- ----------------------------
-- Table structure for T_DATA_IMAGES
-- ----------------------------

CREATE TABLE [dbo].[T_DATA_IMAGES] (
[SOURCE_ID] nvarchar(100) NOT NULL ,
[TABLE_ID] nvarchar(100) NOT NULL ,
[IMAGE_PATH] nvarchar(200) NOT NULL ,
[IMAGE_TYPE] int NULL ,
[IMAGE_EXPLAIN] nvarchar(255) NULL ,
[IMAGE_STATION] nvarchar(50) NULL ,
[IMAGE_ID] int NOT NULL IDENTITY(1,1) 
);



-- ----------------------------
-- Table structure for T_DICTIONARY
-- ----------------------------

CREATE TABLE [dbo].[T_DICTIONARY] (
[PID] int NULL ,
[ID] int NULL ,
[DNAME] nvarchar(100) NULL 
);


-- ----------------------------
-- Table structure for T_ENUM
-- ----------------------------
DROP TABLE [dbo].[T_ENUM]

CREATE TABLE [dbo].[T_ENUM] (
[ENUMID] varchar(36) NOT NULL ,
[ENUMNAME] varchar(100) NOT NULL ,
[ENUMSEQ] numeric(5) NOT NULL ,
[ENUMVALUE] varchar(100) NOT NULL ,
[ENUMCOMMENT] varchar(200) NULL 
)




-- ----------------------------
-- Table structure for T_MATERIALTYPE
-- ----------------------------
DROP TABLE [dbo].[T_MATERIALTYPE]

CREATE TABLE [dbo].[T_MATERIALTYPE] (
[ID] int NULL ,
[RESOURCETYPECODE] varchar(40) NULL ,
[RESOURCETYPENAME] varchar(40) NULL ,
[SORTORDER] int NULL 
);



-- ----------------------------
-- Table structure for T_MCATEGORY
-- ----------------------------
DROP TABLE [dbo].[T_MCATEGORY]

CREATE TABLE [dbo].[T_MCATEGORY] (
[ID] int NULL ,
[RESOURCETYPECODE] varchar(40) NULL ,
[ENTID] varchar(40) NULL ,
[ENTNAME] varchar(60) NULL 
);



-- ----------------------------
-- Table structure for T_PDICTIONARY
-- ----------------------------

CREATE TABLE [dbo].[T_PDICTIONARY] (
[PID] int NULL ,
[PNAMECN] nvarchar(200) NULL ,
[PNAMEEN] nvarchar(200) NULL 
);



-- ----------------------------
-- Table structure for T_RANK
-- ----------------------------
DROP TABLE [dbo].[T_RANK]

CREATE TABLE [dbo].[T_RANK] (
[ENTID] varchar(20) NULL ,
[ENTNAME] varchar(200) NULL ,
[CLASS1ID] varchar(20) NULL ,
[CLASS1NAME] varchar(60) NULL ,
[CLASS2ID] varchar(20) NULL ,
[CLASS2NAME] varchar(60) NULL ,
[CLASS3ID] varchar(20) NULL ,
[CLASS3NAME] varchar(60) NULL ,
[HASHISTORY] numeric(38) NULL 
)




-- ----------------------------
-- Table structure for T_RESOURCECATEGORY
-- ----------------------------

CREATE TABLE [dbo].[T_RESOURCECATEGORY] (
[ID] int NOT NULL ,
[TABLECODE] varchar(20) NULL ,
[TYPENAME] varchar(50) NULL ,
[FIELDCODE] varchar(40) NULL ,
[FIELDNAME] varchar(50) NULL ,
[SORTORDER] int NULL ,
[FIELDREMARK] varchar(60) NULL ,
[LISTSHOW] int NULL ,
[TYPESORT] int NULL ,
[SHOWORDER] int NULL ,
[TITLEORDER] int NULL 
);



-- ----------------------------
-- Table structure for T_REVIEW
-- ----------------------------

CREATE TABLE [dbo].[T_REVIEW] (
[ID] int NOT NULL ,
[GRADE] int NULL ,
[REMARKCONTENT] varchar(400) NULL ,
[CREATEDATE] varchar(32) NULL ,
[PATTERN] int NULL ,
[REMARKER] varchar(100) NULL ,
[ORDERNO] varchar(32) NULL ,
[APPLYNO] varchar(52) NULL ,
[RESOURCENO] varchar(80) NULL ,
[ISVISIBLE] varchar(10) NULL ,
[PROVIDERSTATIONCODE] varchar(20) NULL ,
[RESOURCENAME] varchar(600) NULL ,
[DATARESOURCEID] int NULL ,
[RESOURCETYPE] varchar(20) NULL 
);



-- ----------------------------
-- Table structure for T_SERVICE_FEEDBACK
-- ----------------------------

CREATE TABLE [dbo].[T_SERVICE_FEEDBACK] (
[ID] decimal(38,4) NOT NULL ,
[ORDERID] decimal(38,4) NULL ,
[SERVICESCORE] decimal(38,4) NULL ,
[USERID] varchar(100) NULL ,
[EVALTIME] datetime NULL ,
[PATTERN] decimal(38,4) NULL ,
[ISVISIBLE] varchar(2) NULL ,
[PROVIDERSTATIONCODE] varchar(20) NULL ,
[ORDERNO] varchar(32) NULL ,
[RESOURCETYPE] varchar(20) NULL 
);

-- ----------------------------
-- Table structure for T_STATION
-- ----------------------------

CREATE TABLE [dbo].[T_STATION] (
[STATION_CODE] nvarchar(20) NOT NULL ,
[STATIONNAME] nvarchar(200) NULL ,
[LONGITUDE] nvarchar(20) NULL ,
[LATITUDE] nvarchar(20) NULL ,
[CENTER_ID] nvarchar(200) NULL ,
[DEPARTMENT] nvarchar(200) NULL ,
[UNIT_S] nvarchar(200) NULL ,
[S_SIGN] nvarchar(50) NULL ,
[STATION_P] nvarchar(30) NULL ,
[CONTACT_P] nvarchar(30) NULL ,
[PHONE] nvarchar(20) NULL ,
[EMAIL] nvarchar(30) NULL ,
[REMARK_S] nvarchar(300) NULL ,
[URL] nvarchar(300) NULL ,
[STATION_ADD] nvarchar(300) NULL ,
[POSTCODE] nvarchar(20) NULL ,
[STATION_ABB] nvarchar(50) NULL ,
[PROVINCE_ID] nvarchar(50) NULL ,
[ALTITUDE] nvarchar(20) NULL ,
[DB_URL] nvarchar(200) NULL ,
[DB_USER] nvarchar(100) NULL ,
[DB_PWD] nvarchar(100) NULL ,
[LAST_SYNC] datetime NULL ,
[SYNC_STATE] int NULL 
);

-- ----------------------------
-- Table structure for T_TABLE_FIELDS
-- ----------------------------

CREATE TABLE [dbo].[T_TABLE_FIELDS] (
[ENTID] varchar(36) NOT NULL ,
[ATTRSEQ] numeric(38) NOT NULL ,
[ATTRID] varchar(36) NOT NULL ,
[ATTRNAME] varchar(100) NOT NULL ,
[ATTRTYPE] varchar(20) NOT NULL ,
[ATTRLENGTH] numeric(38) NOT NULL ,
[ATTRDOT] numeric(38) NULL ,
[ATTRUNIT] varchar(100) NULL ,
[ATTRCLASS] varchar(100) NULL ,
[ATTRMEMO] varchar(2000) NULL ,
[MUSTIN] numeric(2) NOT NULL ,
[TEMPLETIN] numeric(2) NOT NULL ,
[SINGENUM] varchar(36) NULL ,
[AUTOIN] varchar(20) NULL ,
[PK] numeric(2) NULL ,
[CHKRANGE] varchar(100) NULL ,
[LISTSHOW] numeric(2) NULL ,
[QUERYSHOW] numeric(2) NULL ,
[ATTACHMARK] numeric(2) NULL ,
[SORTCOLUMN] numeric(2) NULL 
);

-- ----------------------------
-- Table structure for T_WORKMODE
-- ----------------------------

CREATE TABLE [dbo].[T_WORKMODE] (
[ID] int NOT NULL ,
[RESOURCETYPE] varchar(40) NULL ,
[WORKMODENAME] varchar(40) NULL ,
[SORTORDER] int NULL 
);

-- ----------------------------
-- Indexes structure for table A_11
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table A_11
-- ----------------------------
ALTER TABLE [dbo].[A_11] ADD PRIMARY KEY ([KKKKKK]);


-- ----------------------------
-- Indexes structure for table A_21
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table A_21
-- ----------------------------
ALTER TABLE [dbo].[A_21] ADD PRIMARY KEY ([KKKKKK]);


-- ----------------------------
-- Indexes structure for table A_22
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table A_22
-- ----------------------------
ALTER TABLE [dbo].[A_22] ADD PRIMARY KEY ([KKKKKK]);


-- ----------------------------
-- Indexes structure for table A_23
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table A_23
-- ----------------------------
ALTER TABLE [dbo].[A_23] ADD PRIMARY KEY ([KKKKKK]);


-- ----------------------------
-- Indexes structure for table A_24
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table A_24
-- ----------------------------
ALTER TABLE [dbo].[A_24] ADD PRIMARY KEY ([KKKKKK]);


-- ----------------------------
-- Indexes structure for table A_25
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table A_25
-- ----------------------------
ALTER TABLE [dbo].[A_25] ADD PRIMARY KEY ([KKKKKK]);


-- ----------------------------
-- Indexes structure for table A_26
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table A_26
-- ----------------------------
ALTER TABLE [dbo].[A_26] ADD PRIMARY KEY ([KKKKKK]);


-- ----------------------------
-- Indexes structure for table A_27
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table A_27
-- ----------------------------
ALTER TABLE [dbo].[A_27] ADD PRIMARY KEY ([KKKKKK]);


-- ----------------------------
-- Indexes structure for table A_28
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table A_28
-- ----------------------------
ALTER TABLE [dbo].[A_28] ADD PRIMARY KEY ([KKKKKK]);


-- ----------------------------
-- Indexes structure for table A_31
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table A_31
-- ----------------------------
ALTER TABLE [dbo].[A_31] ADD PRIMARY KEY ([KKKKKK]);


-- ----------------------------
-- Indexes structure for table A_41
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table A_41
-- ----------------------------
ALTER TABLE [dbo].[A_41] ADD PRIMARY KEY ([KKKKKK]);


-- ----------------------------
-- Indexes structure for table A_51
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table A_51
-- ----------------------------
ALTER TABLE [dbo].[A_51] ADD PRIMARY KEY ([KKKKKK]);


-- ----------------------------
-- Indexes structure for table A_52
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table A_52
-- ----------------------------
ALTER TABLE [dbo].[A_52] ADD PRIMARY KEY ([KKKKKK]);


-- ----------------------------
-- Indexes structure for table A_53
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table A_53
-- ----------------------------
ALTER TABLE [dbo].[A_53] ADD PRIMARY KEY ([KKKKKK]);


-- ----------------------------
-- Indexes structure for table B_11
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table B_11
-- ----------------------------
ALTER TABLE [dbo].[B_11] ADD PRIMARY KEY ([KKKKKK]);


-- ----------------------------
-- Indexes structure for table B_12
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table B_12
-- ----------------------------
ALTER TABLE [dbo].[B_12] ADD PRIMARY KEY ([KKKKKK]);


-- ----------------------------
-- Indexes structure for table B_13
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table B_13
-- ----------------------------
ALTER TABLE [dbo].[B_13] ADD PRIMARY KEY ([KKKKKK]);


-- ----------------------------
-- Indexes structure for table B_14
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table B_14
-- ----------------------------
ALTER TABLE [dbo].[B_14] ADD PRIMARY KEY ([KKKKKK]);


-- ----------------------------
-- Indexes structure for table B_21
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table B_21
-- ----------------------------
ALTER TABLE [dbo].[B_21] ADD PRIMARY KEY ([KKKKKK]);


-- ----------------------------
-- Indexes structure for table B_22
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table B_22
-- ----------------------------
ALTER TABLE [dbo].[B_22] ADD PRIMARY KEY ([KKKKKK]);


-- ----------------------------
-- Indexes structure for table B_31
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table B_31
-- ----------------------------
ALTER TABLE [dbo].[B_31] ADD PRIMARY KEY ([KKKKKK]);


-- ----------------------------
-- Indexes structure for table B_32
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table B_32
-- ----------------------------
ALTER TABLE [dbo].[B_32] ADD PRIMARY KEY ([KKKKKK]);


-- ----------------------------
-- Indexes structure for table B_33
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table B_33
-- ----------------------------
ALTER TABLE [dbo].[B_33] ADD PRIMARY KEY ([KKKKKK]);


-- ----------------------------
-- Indexes structure for table B_34
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table B_34
-- ----------------------------
ALTER TABLE [dbo].[B_34] ADD PRIMARY KEY ([KKKKKK]);


-- ----------------------------
-- Indexes structure for table B_35
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table B_35
-- ----------------------------
ALTER TABLE [dbo].[B_35] ADD PRIMARY KEY ([KKKKKK]);


-- ----------------------------
-- Indexes structure for table B_36
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table B_36
-- ----------------------------
ALTER TABLE [dbo].[B_36] ADD PRIMARY KEY ([KKKKKK]);


-- ----------------------------
-- Indexes structure for table B_37
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table B_37
-- ----------------------------
ALTER TABLE [dbo].[B_37] ADD PRIMARY KEY ([KKKKKK]);


-- ----------------------------
-- Indexes structure for table B_38
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table B_38
-- ----------------------------
ALTER TABLE [dbo].[B_38] ADD PRIMARY KEY ([KKKKKK]);


-- ----------------------------
-- Indexes structure for table B_39
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table B_39
-- ----------------------------
ALTER TABLE [dbo].[B_39] ADD PRIMARY KEY ([KKKKKK]);


-- ----------------------------
-- Indexes structure for table B_3A
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table B_3A
-- ----------------------------
ALTER TABLE [dbo].[B_3A] ADD PRIMARY KEY ([KKKKKK]);


-- ----------------------------
-- Indexes structure for table B_3B
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table B_3B
-- ----------------------------
ALTER TABLE [dbo].[B_3B] ADD PRIMARY KEY ([KKKKKK]);


-- ----------------------------
-- Indexes structure for table B_51
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table B_51
-- ----------------------------
ALTER TABLE [dbo].[B_51] ADD PRIMARY KEY ([KKKKKK]);


-- ----------------------------
-- Indexes structure for table B_52
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table B_52
-- ----------------------------
ALTER TABLE [dbo].[B_52] ADD PRIMARY KEY ([KKKKKK]);


-- ----------------------------
-- Indexes structure for table B_53
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table B_53
-- ----------------------------
ALTER TABLE [dbo].[B_53] ADD PRIMARY KEY ([KKKKKK]);


-- ----------------------------
-- Indexes structure for table B_54
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table B_54
-- ----------------------------
ALTER TABLE [dbo].[B_54] ADD PRIMARY KEY ([KKKKKK]);


-- ----------------------------
-- Indexes structure for table B_55
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table B_55
-- ----------------------------
ALTER TABLE [dbo].[B_55] ADD PRIMARY KEY ([KKKKKK]);


-- ----------------------------
-- Indexes structure for table B_56
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table B_56
-- ----------------------------
ALTER TABLE [dbo].[B_56] ADD PRIMARY KEY ([KKKKKK]);


-- ----------------------------
-- Indexes structure for table T_DATA_IMAGES
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table T_DATA_IMAGES
-- ----------------------------
ALTER TABLE [dbo].[T_DATA_IMAGES] ADD PRIMARY KEY ([IMAGE_ID]);


-- ----------------------------
-- Indexes structure for table T_RESOURCECATEGORY
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table T_RESOURCECATEGORY
-- ----------------------------
ALTER TABLE [dbo].[T_RESOURCECATEGORY] ADD PRIMARY KEY ([ID]);


-- ----------------------------
-- Indexes structure for table T_REVIEW
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table T_REVIEW
-- ----------------------------
ALTER TABLE [dbo].[T_REVIEW] ADD PRIMARY KEY ([ID]);


-- ----------------------------
-- Indexes structure for table T_SERVICE_FEEDBACK
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table T_SERVICE_FEEDBACK
-- ----------------------------
ALTER TABLE [dbo].[T_SERVICE_FEEDBACK] ADD PRIMARY KEY ([ID]);


-- ----------------------------
-- Indexes structure for table T_STATION
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table T_STATION
-- ----------------------------
ALTER TABLE [dbo].[T_STATION] ADD PRIMARY KEY ([STATION_CODE]);


-- ----------------------------
-- Indexes structure for table T_WORKMODE
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table T_WORKMODE
-- ----------------------------
ALTER TABLE [dbo].[T_WORKMODE] ADD PRIMARY KEY ([ID]);

