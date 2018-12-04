/*
 Navicat SQL Server Data Transfer

 Source Server         : localhost
 Source Server Type    : SQL Server
 Source Server Version : 10501600
 Source Host           : (local)\SQLEXPRESS:1433
 Source Catalog        : HGSMS
 Source Schema         : dbo

 Target Server Type    : SQL Server
 Target Server Version : 10501600
 File Encoding         : 65001

 Date: 04/12/2018 15:35:27
*/


-- ----------------------------
-- Table structure for base_element
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[base_element]') AND type IN ('U'))
	DROP TABLE [dbo].[base_element]
GO

CREATE TABLE [dbo].[base_element] (
  [id] int  IDENTITY(1,1) NOT NULL,
  [code] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT NULL NULL,
  [type] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT NULL NULL,
  [name] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT NULL NULL,
  [uri] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT NULL NULL,
  [menu_id] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT NULL NULL,
  [parent_id] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT NULL NULL,
  [path] varchar(2000) COLLATE Chinese_PRC_CI_AS DEFAULT NULL NULL,
  [method] varchar(10) COLLATE Chinese_PRC_CI_AS DEFAULT NULL NULL,
  [description] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT NULL NULL,
  [crt_time] datetime DEFAULT NULL NULL,
  [crt_user] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT NULL NULL,
  [crt_name] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT NULL NULL,
  [crt_host] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT NULL NULL,
  [attr1] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT NULL NULL,
  [attr2] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT NULL NULL,
  [attr3] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT NULL NULL,
  [attr4] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT NULL NULL,
  [attr5] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT NULL NULL,
  [attr6] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT NULL NULL,
  [attr7] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT NULL NULL,
  [attr8] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT NULL NULL
)
GO

ALTER TABLE [dbo].[base_element] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'资源编码',
'SCHEMA', N'dbo',
'TABLE', N'base_element',
'COLUMN', N'code'
GO

EXEC sp_addextendedproperty
'MS_Description', N'资源类型',
'SCHEMA', N'dbo',
'TABLE', N'base_element',
'COLUMN', N'type'
GO

EXEC sp_addextendedproperty
'MS_Description', N'资源名称',
'SCHEMA', N'dbo',
'TABLE', N'base_element',
'COLUMN', N'name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'资源路径',
'SCHEMA', N'dbo',
'TABLE', N'base_element',
'COLUMN', N'uri'
GO

EXEC sp_addextendedproperty
'MS_Description', N'资源关联菜单',
'SCHEMA', N'dbo',
'TABLE', N'base_element',
'COLUMN', N'menu_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'资源树状检索路径',
'SCHEMA', N'dbo',
'TABLE', N'base_element',
'COLUMN', N'path'
GO

EXEC sp_addextendedproperty
'MS_Description', N'资源请求类型',
'SCHEMA', N'dbo',
'TABLE', N'base_element',
'COLUMN', N'method'
GO

EXEC sp_addextendedproperty
'MS_Description', N'描述',
'SCHEMA', N'dbo',
'TABLE', N'base_element',
'COLUMN', N'description'
GO


-- ----------------------------
-- Records of base_element
-- ----------------------------
SET IDENTITY_INSERT [dbo].[base_element] ON
GO

INSERT INTO [dbo].[base_element] ([id], [code], [type], [name], [uri], [menu_id], [parent_id], [path], [method], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'3', N'userManager:btn_add', N'button', N'新增', N'/admin/user', N'1', NULL, NULL, N'POST', N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_element] ([id], [code], [type], [name], [uri], [menu_id], [parent_id], [path], [method], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'4', N'userManager:btn_edit', N'button', N'编辑', N'/admin/user/{*}', N'1', NULL, NULL, N'PUT', N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_element] ([id], [code], [type], [name], [uri], [menu_id], [parent_id], [path], [method], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'5', N'userManager:btn_del', N'button', N'删除', N'/admin/user/{*}', N'1', NULL, NULL, N'DELETE', N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_element] ([id], [code], [type], [name], [uri], [menu_id], [parent_id], [path], [method], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'9', N'menuManager:element', N'uri', N'按钮页面', N'/admin/element', N'6', NULL, NULL, N'GET', N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_element] ([id], [code], [type], [name], [uri], [menu_id], [parent_id], [path], [method], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'10', N'menuManager:btn_add', N'button', N'新增', N'/admin/menu/{*}', N'6', NULL, NULL, N'POST', N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_element] ([id], [code], [type], [name], [uri], [menu_id], [parent_id], [path], [method], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'11', N'menuManager:btn_edit', N'button', N'编辑', N'/admin/menu/{*}', N'6', N'', N'', N'PUT', N'', N'2017-06-24 00:00:00.000', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'')
GO

INSERT INTO [dbo].[base_element] ([id], [code], [type], [name], [uri], [menu_id], [parent_id], [path], [method], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'12', N'menuManager:btn_del', N'button', N'删除', N'/admin/menu/{*}', N'6', N'', N'', N'DELETE', N'', N'2017-06-24 00:00:00.000', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'')
GO

INSERT INTO [dbo].[base_element] ([id], [code], [type], [name], [uri], [menu_id], [parent_id], [path], [method], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'13', N'menuManager:btn_element_add', N'button', N'新增元素', N'/admin/element', N'6', NULL, NULL, N'POST', N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_element] ([id], [code], [type], [name], [uri], [menu_id], [parent_id], [path], [method], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'14', N'menuManager:btn_element_edit', N'button', N'编辑元素', N'/admin/element/{*}', N'6', NULL, NULL, N'PUT', N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_element] ([id], [code], [type], [name], [uri], [menu_id], [parent_id], [path], [method], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'15', N'menuManager:btn_element_del', N'button', N'删除元素', N'/admin/element/{*}', N'6', NULL, NULL, N'DELETE', N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_element] ([id], [code], [type], [name], [uri], [menu_id], [parent_id], [path], [method], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'16', N'groupManager:btn_add', N'button', N'新增', N'/admin/group', N'7', NULL, NULL, N'POST', N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_element] ([id], [code], [type], [name], [uri], [menu_id], [parent_id], [path], [method], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'17', N'groupManager:btn_edit', N'button', N'编辑', N'/admin/group/{*}', N'7', NULL, NULL, N'PUT', N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_element] ([id], [code], [type], [name], [uri], [menu_id], [parent_id], [path], [method], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'18', N'groupManager:btn_del', N'button', N'删除', N'/admin/group/{*}', N'7', NULL, NULL, N'DELETE', N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_element] ([id], [code], [type], [name], [uri], [menu_id], [parent_id], [path], [method], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'19', N'groupManager:btn_userManager', N'button', N'分配用户', N'/admin/group/{*}/user', N'7', NULL, NULL, N'PUT', N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_element] ([id], [code], [type], [name], [uri], [menu_id], [parent_id], [path], [method], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'20', N'groupManager:btn_resourceManager', N'button', N'分配权限', N'/admin/group/{*}/authority', N'7', NULL, NULL, N'GET', N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_element] ([id], [code], [type], [name], [uri], [menu_id], [parent_id], [path], [method], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'21', N'groupManager:menu', N'uri', N'分配菜单', N'/admin/group/{*}/authority/menu', N'7', NULL, NULL, N'POST', N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_element] ([id], [code], [type], [name], [uri], [menu_id], [parent_id], [path], [method], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'22', N'groupManager:element', N'uri', N'分配资源', N'/admin/group/{*}/authority/element', N'7', NULL, NULL, N'POST', N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_element] ([id], [code], [type], [name], [uri], [menu_id], [parent_id], [path], [method], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'24', N'menuManager:view', N'uri', N'查看', N'/admin/menu/{*}', N'6', N'', N'', N'GET', N'', N'2017-06-26 00:00:00.000', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'')
GO

INSERT INTO [dbo].[base_element] ([id], [code], [type], [name], [uri], [menu_id], [parent_id], [path], [method], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'27', N'menuManager:element_view', N'uri', N'查看', N'/admin/element/{*}', N'6', NULL, NULL, N'GET', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_element] ([id], [code], [type], [name], [uri], [menu_id], [parent_id], [path], [method], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'28', N'groupManager:view', N'uri', N'查看', N'/admin/group/{*}', N'7', NULL, NULL, N'GET', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_element] ([id], [code], [type], [name], [uri], [menu_id], [parent_id], [path], [method], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'32', N'groupTypeManager:view', N'uri', N'查看', N'/admin/groupType/{*}', N'8', NULL, NULL, N'GET', N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_element] ([id], [code], [type], [name], [uri], [menu_id], [parent_id], [path], [method], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'33', N'groupTypeManager:btn_add', N'button', N'新增', N'/admin/groupType', N'8', NULL, NULL, N'POST', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_element] ([id], [code], [type], [name], [uri], [menu_id], [parent_id], [path], [method], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'34', N'groupTypeManager:btn_edit', N'button', N'编辑', N'/admin/groupType/{*}', N'8', NULL, NULL, N'PUT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_element] ([id], [code], [type], [name], [uri], [menu_id], [parent_id], [path], [method], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'35', N'groupTypeManager:btn_del', N'button', N'删除', N'/admin/groupType/{*}', N'8', NULL, NULL, N'DELETE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_element] ([id], [code], [type], [name], [uri], [menu_id], [parent_id], [path], [method], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'41', N'gateLogManager:view', N'button', N'查看', N'/admin/gateLog', N'27', NULL, NULL, N'GET', N'', N'2017-07-01 00:00:00.000', N'1', N'admin', N'0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_element] ([id], [code], [type], [name], [uri], [menu_id], [parent_id], [path], [method], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'42', N'serviceManager:view', N'URI', N'查看', N'/auth/service/{*}', N'30', NULL, NULL, N'GET', NULL, N'2017-12-26 20:17:42.000', N'1', N'Mr.AG', N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_element] ([id], [code], [type], [name], [uri], [menu_id], [parent_id], [path], [method], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'43', N'serviceManager:btn_add', N'button', N'新增', N'/auth/service', N'30', NULL, NULL, N'POST', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_element] ([id], [code], [type], [name], [uri], [menu_id], [parent_id], [path], [method], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'44', N'serviceManager:btn_edit', N'button', N'编辑', N'/auth/service/{*}', N'30', NULL, NULL, N'PUT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_element] ([id], [code], [type], [name], [uri], [menu_id], [parent_id], [path], [method], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'45', N'serviceManager:btn_del', N'button', N'删除', N'/auth/service/{*}', N'30', NULL, NULL, N'DELETE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_element] ([id], [code], [type], [name], [uri], [menu_id], [parent_id], [path], [method], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'46', N'serviceManager:btn_clientManager', N'button', N'服务授权', N'/auth/service/{*}/client', N'30', NULL, NULL, N'POST', NULL, N'2017-12-30 16:32:48.000', N'1', N'Mr.AG', N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_element] ([id], [code], [type], [name], [uri], [menu_id], [parent_id], [path], [method], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'47', N'userManager:btn_reset', N'button', N'修改密码', N'/admin/user', N'1', NULL, NULL, N'POST', NULL, N'2018-11-19 20:07:57.000', N'1', N'admin', N'192.168.249.174', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_element] ([id], [code], [type], [name], [uri], [menu_id], [parent_id], [path], [method], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'48', N'userManager:btn_stop', N'button', N'状态停用', N'/admin/user', N'1', NULL, NULL, N'POST', NULL, N'2018-11-19 20:11:20.633', N'1', N'admin', N'192.168.249.174', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_element] ([id], [code], [type], [name], [uri], [menu_id], [parent_id], [path], [method], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'49', N'maintainManager:btn_add', N'button', N'新增', N'/process/maintain', N'36', NULL, NULL, N'POST', NULL, N'2018-11-26 10:41:22.000', N'1', N'admin', N'192.168.249.174', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_element] ([id], [code], [type], [name], [uri], [menu_id], [parent_id], [path], [method], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'50', N'maintainManager:btn_edit', N'button', N'编辑', N'/process/maintain/{*}', N'36', NULL, NULL, N'PUT', NULL, N'2018-11-26 10:42:41.000', N'1', N'admin', N'192.168.249.174', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_element] ([id], [code], [type], [name], [uri], [menu_id], [parent_id], [path], [method], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'51', N'maintainManager:btn_del', N'button', N'作废/启用', N'/process/maintain/{*}', N'36', NULL, NULL, N'PUT', NULL, N'2018-11-26 10:43:27.000', N'1', N'admin', N'192.168.249.174', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_element] ([id], [code], [type], [name], [uri], [menu_id], [parent_id], [path], [method], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'52', N'maintainManager:btn_batchdel', N'button', N'批量作废', N'/process/maintain/{*}', N'36', NULL, NULL, N'PUT', NULL, N'2018-11-26 10:44:16.000', N'1', N'admin', N'192.168.249.174', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_element] ([id], [code], [type], [name], [uri], [menu_id], [parent_id], [path], [method], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'53', N'maintainManager:btn_import', N'button', N'导入', N'/process/maintain/{*}', N'36', NULL, NULL, N'POST', NULL, N'2018-11-26 10:45:04.000', N'1', N'admin', N'192.168.249.174', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_element] ([id], [code], [type], [name], [uri], [menu_id], [parent_id], [path], [method], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'54', N'maintainManager:btn_download', N'button', N'下载', N'/process/maintain/{*}', N'36', NULL, NULL, N'GET', NULL, N'2018-11-26 10:46:23.000', N'1', N'admin', N'192.168.249.174', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_element] ([id], [code], [type], [name], [uri], [menu_id], [parent_id], [path], [method], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'55', N'maintainManager:btn_upload', N'button', N'上传', N'/process/maintain/{*}', N'36', NULL, NULL, N'POST', NULL, N'2018-11-26 10:47:30.000', N'1', N'admin', N'192.168.249.174', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_element] ([id], [code], [type], [name], [uri], [menu_id], [parent_id], [path], [method], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'56', N'maintainManager:btn_resotre', N'button', N'恢复版本', N'/process/maintain/{*}', N'36', NULL, NULL, N'GET', NULL, N'2018-11-26 10:48:07.000', N'1', N'admin', N'192.168.249.174', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_element] ([id], [code], [type], [name], [uri], [menu_id], [parent_id], [path], [method], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'57', N'maintainManager:btn_info', N'button', N'明细', N'/process/maintain/{*}', N'36', NULL, NULL, N'GET', NULL, N'2018-11-26 10:48:30.000', N'1', N'admin', N'192.168.249.174', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_element] ([id], [code], [type], [name], [uri], [menu_id], [parent_id], [path], [method], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'58', N'maintainManager:btn_version', N'button', N'历史版本', N'/process/maintain/{*}', N'36', NULL, NULL, N'GET', NULL, N'2018-11-26 10:48:53.000', N'1', N'admin', N'192.168.249.174', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_element] ([id], [code], [type], [name], [uri], [menu_id], [parent_id], [path], [method], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'59', N'maintainManager:view', N'uri', N'查看', N'/process/maintain/{*}', N'36', NULL, NULL, N'GET', NULL, N'2018-11-26 11:17:28.000', N'1', N'admin', N'192.168.249.174', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_element] ([id], [code], [type], [name], [uri], [menu_id], [parent_id], [path], [method], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'60', N'viewManager:view', N'uri', N'查看', N'/process/view/{*}', N'38', NULL, NULL, N'GET', NULL, N'2018-11-26 11:36:32.800', N'1', N'admin', N'192.168.249.174', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_element] ([id], [code], [type], [name], [uri], [menu_id], [parent_id], [path], [method], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'61', N'viewManager:btn_info', N'button', N'明细', N'/process/view/{*}', N'38', NULL, NULL, N'GET', NULL, N'2018-11-26 11:37:34.677', N'1', N'admin', N'192.168.249.174', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_element] ([id], [code], [type], [name], [uri], [menu_id], [parent_id], [path], [method], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'62', N'versionManager:view', N'uri', N'查看', N'/process/view/{*}', N'39', NULL, NULL, N'GET', NULL, N'2018-11-26 11:40:36.573', N'1', N'admin', N'192.168.249.174', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_element] ([id], [code], [type], [name], [uri], [menu_id], [parent_id], [path], [method], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'63', N'viewManager:btn_info', N'button', N'明细', N'/process/view/{*}', N'39', NULL, NULL, N'GET', NULL, N'2018-11-26 11:41:10.423', N'1', N'admin', N'192.168.249.174', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_element] ([id], [code], [type], [name], [uri], [menu_id], [parent_id], [path], [method], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'64', N'userManager:view', N'uri', N'查看', N'/admin/user/{*}', N'1', NULL, NULL, N'GET', NULL, N'2018-11-26 11:56:41.043', N'1', N'admin', N'192.168.249.174', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

SET IDENTITY_INSERT [dbo].[base_element] OFF
GO


-- ----------------------------
-- Table structure for base_group
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[base_group]') AND type IN ('U'))
	DROP TABLE [dbo].[base_group]
GO

CREATE TABLE [dbo].[base_group] (
  [id] int  IDENTITY(1,1) NOT NULL,
  [code] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT NULL NULL,
  [name] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT NULL NULL,
  [parent_id] int  NOT NULL,
  [path] varchar(2000) COLLATE Chinese_PRC_CI_AS DEFAULT NULL NULL,
  [type] char(1) COLLATE Chinese_PRC_CI_AS DEFAULT NULL NULL,
  [group_type] int  NOT NULL,
  [description] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT NULL NULL,
  [crt_time] datetime DEFAULT NULL NULL,
  [crt_user] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT NULL NULL,
  [crt_name] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT NULL NULL,
  [crt_host] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT NULL NULL,
  [upd_time] datetime DEFAULT NULL NULL,
  [upd_user] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT NULL NULL,
  [upd_name] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT NULL NULL,
  [upd_host] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT NULL NULL,
  [attr1] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT NULL NULL,
  [attr2] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT NULL NULL,
  [attr3] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT NULL NULL,
  [attr4] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT NULL NULL,
  [attr5] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT NULL NULL,
  [attr6] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT NULL NULL,
  [attr7] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT NULL NULL,
  [attr8] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT NULL NULL
)
GO

ALTER TABLE [dbo].[base_group] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'角色编码',
'SCHEMA', N'dbo',
'TABLE', N'base_group',
'COLUMN', N'code'
GO

EXEC sp_addextendedproperty
'MS_Description', N'角色名称',
'SCHEMA', N'dbo',
'TABLE', N'base_group',
'COLUMN', N'name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'上级节点',
'SCHEMA', N'dbo',
'TABLE', N'base_group',
'COLUMN', N'parent_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'树状关系',
'SCHEMA', N'dbo',
'TABLE', N'base_group',
'COLUMN', N'path'
GO

EXEC sp_addextendedproperty
'MS_Description', N'类型',
'SCHEMA', N'dbo',
'TABLE', N'base_group',
'COLUMN', N'type'
GO

EXEC sp_addextendedproperty
'MS_Description', N'角色组类型',
'SCHEMA', N'dbo',
'TABLE', N'base_group',
'COLUMN', N'group_type'
GO


-- ----------------------------
-- Records of base_group
-- ----------------------------
SET IDENTITY_INSERT [dbo].[base_group] ON
GO

INSERT INTO [dbo].[base_group] ([id], [code], [name], [parent_id], [path], [type], [group_type], [description], [crt_time], [crt_user], [crt_name], [crt_host], [upd_time], [upd_user], [upd_name], [upd_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'1', N'adminRole', N'管理员', N'-1', N'/adminRole', NULL, N'1', N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_group] ([id], [code], [name], [parent_id], [path], [type], [group_type], [description], [crt_time], [crt_user], [crt_name], [crt_host], [upd_time], [upd_user], [upd_name], [upd_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'3', N'testGroup', N'体验组', N'-1', N'/testGroup', NULL, N'1', N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_group] ([id], [code], [name], [parent_id], [path], [type], [group_type], [description], [crt_time], [crt_user], [crt_name], [crt_host], [upd_time], [upd_user], [upd_name], [upd_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'4', N'visitorRole', N'游客', N'3', N'/testGroup/visitorRole', NULL, N'1', N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_group] ([id], [code], [name], [parent_id], [path], [type], [group_type], [description], [crt_time], [crt_user], [crt_name], [crt_host], [upd_time], [upd_user], [upd_name], [upd_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'6', N'company', N'--公司', N'-1', N'/company', NULL, N'2', N'', NULL, NULL, NULL, NULL, N'2018-11-20 19:35:21.583', N'1', N'admin', N'192.168.249.174', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_group] ([id], [code], [name], [parent_id], [path], [type], [group_type], [description], [crt_time], [crt_user], [crt_name], [crt_host], [upd_time], [upd_user], [upd_name], [upd_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'7', N'financeDepart', N'财务部', N'6', N'/company/financeDepart', NULL, N'2', N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_group] ([id], [code], [name], [parent_id], [path], [type], [group_type], [description], [crt_time], [crt_user], [crt_name], [crt_host], [upd_time], [upd_user], [upd_name], [upd_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'8', N'hrDepart', N'人力资源部', N'6', N'/company/hrDepart', NULL, N'2', N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_group] ([id], [code], [name], [parent_id], [path], [type], [group_type], [description], [crt_time], [crt_user], [crt_name], [crt_host], [upd_time], [upd_user], [upd_name], [upd_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'9', N'userRole', N'客户', N'-1', N'/blogAdmin', NULL, N'1', N'', N'2017-07-16 16:59:30.000', N'1', N'Mr.AG', N'0:0:0:0:0:0:0:1', N'2018-11-20 18:11:33.550', N'1', N'admin', N'192.168.249.174', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

SET IDENTITY_INSERT [dbo].[base_group] OFF
GO


-- ----------------------------
-- Table structure for base_group_leader
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[base_group_leader]') AND type IN ('U'))
	DROP TABLE [dbo].[base_group_leader]
GO

CREATE TABLE [dbo].[base_group_leader] (
  [id] int  IDENTITY(1,1) NOT NULL,
  [group_id] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT NULL NULL,
  [user_id] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT NULL NULL,
  [description] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT NULL NULL,
  [crt_time] datetime DEFAULT NULL NULL,
  [crt_user] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT NULL NULL,
  [crt_name] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT NULL NULL,
  [crt_host] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT NULL NULL,
  [upd_time] datetime DEFAULT NULL NULL,
  [upd_user] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT NULL NULL,
  [upd_name] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT NULL NULL,
  [upd_host] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT NULL NULL,
  [attr1] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT NULL NULL,
  [attr2] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT NULL NULL,
  [attr3] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT NULL NULL,
  [attr4] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT NULL NULL,
  [attr5] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT NULL NULL,
  [attr6] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT NULL NULL,
  [attr7] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT NULL NULL,
  [attr8] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT NULL NULL
)
GO

ALTER TABLE [dbo].[base_group_leader] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of base_group_leader
-- ----------------------------
SET IDENTITY_INSERT [dbo].[base_group_leader] ON
GO

INSERT INTO [dbo].[base_group_leader] ([id], [group_id], [user_id], [description], [crt_time], [crt_user], [crt_name], [crt_host], [upd_time], [upd_user], [upd_name], [upd_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'22', N'4', N'5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_group_leader] ([id], [group_id], [user_id], [description], [crt_time], [crt_user], [crt_name], [crt_host], [upd_time], [upd_user], [upd_name], [upd_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'23', N'9', N'5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_group_leader] ([id], [group_id], [user_id], [description], [crt_time], [crt_user], [crt_name], [crt_host], [upd_time], [upd_user], [upd_name], [upd_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'24', N'1', N'1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_group_leader] ([id], [group_id], [user_id], [description], [crt_time], [crt_user], [crt_name], [crt_host], [upd_time], [upd_user], [upd_name], [upd_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'25', N'1', N'9', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

SET IDENTITY_INSERT [dbo].[base_group_leader] OFF
GO


-- ----------------------------
-- Table structure for base_group_member
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[base_group_member]') AND type IN ('U'))
	DROP TABLE [dbo].[base_group_member]
GO

CREATE TABLE [dbo].[base_group_member] (
  [id] int  IDENTITY(1,1) NOT NULL,
  [group_id] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT NULL NULL,
  [user_id] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT NULL NULL,
  [description] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT NULL NULL,
  [crt_time] datetime DEFAULT NULL NULL,
  [crt_user] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT NULL NULL,
  [crt_name] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT NULL NULL,
  [crt_host] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT NULL NULL,
  [upd_time] datetime DEFAULT NULL NULL,
  [upd_user] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT NULL NULL,
  [upd_name] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT NULL NULL,
  [upd_host] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT NULL NULL,
  [attr1] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT NULL NULL,
  [attr2] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT NULL NULL,
  [attr3] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT NULL NULL,
  [attr4] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT NULL NULL,
  [attr5] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT NULL NULL,
  [attr6] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT NULL NULL,
  [attr7] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT NULL NULL,
  [attr8] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT NULL NULL
)
GO

ALTER TABLE [dbo].[base_group_member] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of base_group_member
-- ----------------------------
SET IDENTITY_INSERT [dbo].[base_group_member] ON
GO

INSERT INTO [dbo].[base_group_member] ([id], [group_id], [user_id], [description], [crt_time], [crt_user], [crt_name], [crt_host], [upd_time], [upd_user], [upd_name], [upd_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'14', N'9', N'4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

SET IDENTITY_INSERT [dbo].[base_group_member] OFF
GO


-- ----------------------------
-- Table structure for base_group_type
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[base_group_type]') AND type IN ('U'))
	DROP TABLE [dbo].[base_group_type]
GO

CREATE TABLE [dbo].[base_group_type] (
  [id] int  IDENTITY(1,1) NOT NULL,
  [code] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT NULL NULL,
  [name] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT NULL NULL,
  [description] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT NULL NULL,
  [crt_time] datetime DEFAULT NULL NULL,
  [crt_user] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT NULL NULL,
  [crt_name] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT NULL NULL,
  [crt_host] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT NULL NULL,
  [upd_time] datetime DEFAULT NULL NULL,
  [upd_user] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT NULL NULL,
  [upd_name] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT NULL NULL,
  [upd_host] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT NULL NULL,
  [attr1] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT NULL NULL,
  [attr2] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT NULL NULL,
  [attr3] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT NULL NULL,
  [attr4] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT NULL NULL,
  [attr5] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT NULL NULL,
  [attr6] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT NULL NULL,
  [attr7] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT NULL NULL,
  [attr8] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT NULL NULL
)
GO

ALTER TABLE [dbo].[base_group_type] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'编码',
'SCHEMA', N'dbo',
'TABLE', N'base_group_type',
'COLUMN', N'code'
GO

EXEC sp_addextendedproperty
'MS_Description', N'类型名称',
'SCHEMA', N'dbo',
'TABLE', N'base_group_type',
'COLUMN', N'name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'描述',
'SCHEMA', N'dbo',
'TABLE', N'base_group_type',
'COLUMN', N'description'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'base_group_type',
'COLUMN', N'crt_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建人ID',
'SCHEMA', N'dbo',
'TABLE', N'base_group_type',
'COLUMN', N'crt_user'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建人',
'SCHEMA', N'dbo',
'TABLE', N'base_group_type',
'COLUMN', N'crt_name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建主机',
'SCHEMA', N'dbo',
'TABLE', N'base_group_type',
'COLUMN', N'crt_host'
GO

EXEC sp_addextendedproperty
'MS_Description', N'最后更新时间',
'SCHEMA', N'dbo',
'TABLE', N'base_group_type',
'COLUMN', N'upd_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'最后更新人ID',
'SCHEMA', N'dbo',
'TABLE', N'base_group_type',
'COLUMN', N'upd_user'
GO

EXEC sp_addextendedproperty
'MS_Description', N'最后更新人',
'SCHEMA', N'dbo',
'TABLE', N'base_group_type',
'COLUMN', N'upd_name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'最后更新主机',
'SCHEMA', N'dbo',
'TABLE', N'base_group_type',
'COLUMN', N'upd_host'
GO


-- ----------------------------
-- Records of base_group_type
-- ----------------------------
SET IDENTITY_INSERT [dbo].[base_group_type] ON
GO

INSERT INTO [dbo].[base_group_type] ([id], [code], [name], [description], [crt_time], [crt_user], [crt_name], [crt_host], [upd_time], [upd_user], [upd_name], [upd_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'1', N'role', N'角色类型', N'role', NULL, NULL, NULL, NULL, N'2017-08-25 17:52:37.000', N'1', N'Mr.AG', N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_group_type] ([id], [code], [name], [description], [crt_time], [crt_user], [crt_name], [crt_host], [upd_time], [upd_user], [upd_name], [upd_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'2', N'depart', N'部门类型', N'按部分门配角色', NULL, NULL, NULL, NULL, N'2018-11-22 09:15:24.370', N'1', N'admin', N'192.168.249.174', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_group_type] ([id], [code], [name], [description], [crt_time], [crt_user], [crt_name], [crt_host], [upd_time], [upd_user], [upd_name], [upd_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'3', N'free', N'自定义类型', N'sadf', NULL, NULL, NULL, NULL, N'2017-08-26 08:22:25.000', N'1', N'Mr.AG', N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

SET IDENTITY_INSERT [dbo].[base_group_type] OFF
GO


-- ----------------------------
-- Table structure for base_menu
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[base_menu]') AND type IN ('U'))
	DROP TABLE [dbo].[base_menu]
GO

CREATE TABLE [dbo].[base_menu] (
  [id] int  IDENTITY(1,1) NOT NULL,
  [code] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT NULL NULL,
  [title] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT NULL NULL,
  [parent_id] int  NOT NULL,
  [href] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT NULL NULL,
  [icon] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT NULL NULL,
  [type] char(10) COLLATE Chinese_PRC_CI_AS DEFAULT NULL NULL,
  [order_num] int DEFAULT ('0') NOT NULL,
  [description] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT NULL NULL,
  [path] varchar(500) COLLATE Chinese_PRC_CI_AS DEFAULT NULL NULL,
  [enabled] char(1) COLLATE Chinese_PRC_CI_AS DEFAULT NULL NULL,
  [crt_time] datetime DEFAULT NULL NULL,
  [crt_user] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT NULL NULL,
  [crt_name] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT NULL NULL,
  [crt_host] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT NULL NULL,
  [upd_time] datetime DEFAULT NULL NULL,
  [upd_user] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT NULL NULL,
  [upd_name] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT NULL NULL,
  [upd_host] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT NULL NULL,
  [attr1] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT NULL NULL,
  [attr2] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT NULL NULL,
  [attr3] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT NULL NULL,
  [attr4] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT NULL NULL,
  [attr5] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT NULL NULL,
  [attr6] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT NULL NULL,
  [attr7] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT NULL NULL,
  [attr8] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT NULL NULL
)
GO

ALTER TABLE [dbo].[base_menu] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'路径编码',
'SCHEMA', N'dbo',
'TABLE', N'base_menu',
'COLUMN', N'code'
GO

EXEC sp_addextendedproperty
'MS_Description', N'标题',
'SCHEMA', N'dbo',
'TABLE', N'base_menu',
'COLUMN', N'title'
GO

EXEC sp_addextendedproperty
'MS_Description', N'父级节点',
'SCHEMA', N'dbo',
'TABLE', N'base_menu',
'COLUMN', N'parent_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'资源路径',
'SCHEMA', N'dbo',
'TABLE', N'base_menu',
'COLUMN', N'href'
GO

EXEC sp_addextendedproperty
'MS_Description', N'图标',
'SCHEMA', N'dbo',
'TABLE', N'base_menu',
'COLUMN', N'icon'
GO

EXEC sp_addextendedproperty
'MS_Description', N'排序',
'SCHEMA', N'dbo',
'TABLE', N'base_menu',
'COLUMN', N'order_num'
GO

EXEC sp_addextendedproperty
'MS_Description', N'描述',
'SCHEMA', N'dbo',
'TABLE', N'base_menu',
'COLUMN', N'description'
GO

EXEC sp_addextendedproperty
'MS_Description', N'菜单上下级关系',
'SCHEMA', N'dbo',
'TABLE', N'base_menu',
'COLUMN', N'path'
GO

EXEC sp_addextendedproperty
'MS_Description', N'启用禁用',
'SCHEMA', N'dbo',
'TABLE', N'base_menu',
'COLUMN', N'enabled'
GO


-- ----------------------------
-- Records of base_menu
-- ----------------------------
SET IDENTITY_INSERT [dbo].[base_menu] ON
GO

INSERT INTO [dbo].[base_menu] ([id], [code], [title], [parent_id], [href], [icon], [type], [order_num], [description], [path], [enabled], [crt_time], [crt_user], [crt_name], [crt_host], [upd_time], [upd_user], [upd_name], [upd_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'1', N'userManager', N'用户管理', N'5', N'/admin/user', N'fa-user', N'menu      ', N'0', N'', N'/adminSys/baseManager/userManager', NULL, NULL, NULL, NULL, NULL, N'2017-09-05 21:06:51.000', N'1', N'Mr.AG', N'127.0.0.1', N'_import(''admin/user/index'')', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_menu] ([id], [code], [title], [parent_id], [href], [icon], [type], [order_num], [description], [path], [enabled], [crt_time], [crt_user], [crt_name], [crt_host], [upd_time], [upd_user], [upd_name], [upd_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'5', N'baseManager', N'基础配置管理', N'13', N'/admin', N'setting', N'menu      ', N'0', N'', N'/adminSys/baseManager', NULL, NULL, NULL, NULL, NULL, N'2018-11-19 15:13:04.273', N'1', N'admin', N'192.168.249.174', N'Layout', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_menu] ([id], [code], [title], [parent_id], [href], [icon], [type], [order_num], [description], [path], [enabled], [crt_time], [crt_user], [crt_name], [crt_host], [upd_time], [upd_user], [upd_name], [upd_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'6', N'menuManager', N'菜单管理', N'5', N'/admin/menu', N'category', N'menu      ', N'0', N'', N'/adminSys/baseManager/menuManager', NULL, NULL, NULL, NULL, NULL, N'2017-09-05 21:10:25.000', N'1', N'Mr.AG', N'127.0.0.1', N'_import(''admin/menu/index'')', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_menu] ([id], [code], [title], [parent_id], [href], [icon], [type], [order_num], [description], [path], [enabled], [crt_time], [crt_user], [crt_name], [crt_host], [upd_time], [upd_user], [upd_name], [upd_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'7', N'groupManager', N'角色权限管理', N'5', N'/admin/group', N'group_fill', N'menu      ', N'0', N'', N'/adminSys/baseManager/groupManager', NULL, NULL, NULL, NULL, NULL, N'2017-09-05 21:11:34.000', N'1', N'Mr.AG', N'127.0.0.1', N'import(''admin/group/index'')', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_menu] ([id], [code], [title], [parent_id], [href], [icon], [type], [order_num], [description], [path], [enabled], [crt_time], [crt_user], [crt_name], [crt_host], [upd_time], [upd_user], [upd_name], [upd_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'8', N'groupTypeManager', N'角色类型管理', N'5', N'/admin/groupType', N'fa-users', N'menu      ', N'0', N'', N'/adminSys/baseManager/groupTypeManager', NULL, NULL, NULL, NULL, NULL, N'2017-09-05 21:12:28.000', N'1', N'Mr.AG', N'127.0.0.1', N'_import(''admin/groupType/index'')', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_menu] ([id], [code], [title], [parent_id], [href], [icon], [type], [order_num], [description], [path], [enabled], [crt_time], [crt_user], [crt_name], [crt_host], [upd_time], [upd_user], [upd_name], [upd_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'13', N'adminSys', N'权限管理系统', N'-1', N'/base', N'setting', N'dirt      ', N'0', N'', N'/adminSys', NULL, NULL, NULL, NULL, NULL, N'2017-09-28 12:09:22.000', N'1', N'Mr.AG', N'127.0.0.1', N'Layout', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_menu] ([id], [code], [title], [parent_id], [href], [icon], [type], [order_num], [description], [path], [enabled], [crt_time], [crt_user], [crt_name], [crt_host], [upd_time], [upd_user], [upd_name], [upd_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'21', N'dictManager', N'数据字典', N'5', N'', N'fa fa-book', NULL, N'0', N'', N'/adminSys/baseManager/dictManager', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_menu] ([id], [code], [title], [parent_id], [href], [icon], [type], [order_num], [description], [path], [enabled], [crt_time], [crt_user], [crt_name], [crt_host], [upd_time], [upd_user], [upd_name], [upd_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'27', N'gateLogManager', N'操作日志', N'5', N'/admin/gateLog', N'viewlist', N'menu      ', N'0', N'', N'/adminSys/baseManager/gateLogManager', NULL, N'2017-07-01 00:00:00.000', N'1', N'admin', N'0:0:0:0:0:0:0:1', N'2017-09-05 22:32:55.000', N'1', N'Mr.AG', N'127.0.0.1', N'_import(''admin/gateLog/index'')', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_menu] ([id], [code], [title], [parent_id], [href], [icon], [type], [order_num], [description], [path], [enabled], [crt_time], [crt_user], [crt_name], [crt_host], [upd_time], [upd_user], [upd_name], [upd_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'30', N'serviceManager', N'服务管理', N'29', N'/auth/service', N'client', NULL, N'0', N'服务管理', N'/adminSys/authManager/serviceManager', NULL, N'2017-12-26 19:56:06.000', N'1', N'Mr.AG', N'127.0.0.1', N'2017-12-26 19:56:06.000', N'1', N'Mr.AG', N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_menu] ([id], [code], [title], [parent_id], [href], [icon], [type], [order_num], [description], [path], [enabled], [crt_time], [crt_user], [crt_name], [crt_host], [upd_time], [upd_user], [upd_name], [upd_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'32', N'serviceEurekaManager', N'服务注册中心', N'31', NULL, N'client', NULL, N'0', NULL, N'/adminSys/monitorManager/serviceEurekaManager', NULL, N'2018-02-25 09:37:04.000', N'1', N'Mr.AG', N'127.0.0.1', N'2018-02-25 09:37:41.000', N'1', N'Mr.AG', N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_menu] ([id], [code], [title], [parent_id], [href], [icon], [type], [order_num], [description], [path], [enabled], [crt_time], [crt_user], [crt_name], [crt_host], [upd_time], [upd_user], [upd_name], [upd_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'33', N'serviceMonitorManager', N'服务状态监控', N'31', NULL, N'client', NULL, N'0', NULL, N'/adminSys/monitorManager/serviceEurekaManager', NULL, N'2018-02-25 09:37:05.000', N'1', N'Mr.AG', N'127.0.0.1', N'2018-02-25 09:37:35.000', N'1', N'Mr.AG', N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_menu] ([id], [code], [title], [parent_id], [href], [icon], [type], [order_num], [description], [path], [enabled], [crt_time], [crt_user], [crt_name], [crt_host], [upd_time], [upd_user], [upd_name], [upd_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'34', N'serviceZipkinManager', N'服务链路监控', N'31', NULL, N'client', NULL, N'0', NULL, N'/adminSys/monitorManager/serviceZipkinManager', NULL, N'2018-02-25 09:38:05.000', N'1', N'Mr.AG', N'127.0.0.1', N'2018-02-25 09:38:05.000', N'1', N'Mr.AG', N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_menu] ([id], [code], [title], [parent_id], [href], [icon], [type], [order_num], [description], [path], [enabled], [crt_time], [crt_user], [crt_name], [crt_host], [upd_time], [upd_user], [upd_name], [upd_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'35', N'processManager', N'工艺管理', N'13', N'/process', N'setting', NULL, N'0', NULL, N'/adminSys/processNabager', NULL, N'2018-11-19 14:49:55.000', N'1', N'admin', N'192.168.249.174', N'2018-11-19 14:56:04.863', N'1', N'admin', N'192.168.249.174', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_menu] ([id], [code], [title], [parent_id], [href], [icon], [type], [order_num], [description], [path], [enabled], [crt_time], [crt_user], [crt_name], [crt_host], [upd_time], [upd_user], [upd_name], [upd_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'36', N'maintainManager', N'工艺信息维护', N'35', N'process/maintain', N'setting', N'menu      ', N'0', NULL, N'/adminSys/processNabager/process', NULL, N'2018-11-19 14:54:09.000', N'1', N'admin', N'192.168.249.174', N'2018-11-20 20:10:39.713', N'1', N'admin', N'192.168.249.174', N'_import(''process/maintain/index'')', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_menu] ([id], [code], [title], [parent_id], [href], [icon], [type], [order_num], [description], [path], [enabled], [crt_time], [crt_user], [crt_name], [crt_host], [upd_time], [upd_user], [upd_name], [upd_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'38', N'viewManager', N'工艺信息查询', N'35', N'process/proView', N'setting', NULL, N'0', NULL, N'/adminSys/processNabager/viewManager', NULL, N'2018-11-20 19:59:49.297', N'1', N'admin', N'192.168.249.174', N'2018-11-20 19:59:49.297', N'1', N'admin', N'192.168.249.174', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_menu] ([id], [code], [title], [parent_id], [href], [icon], [type], [order_num], [description], [path], [enabled], [crt_time], [crt_user], [crt_name], [crt_host], [upd_time], [upd_user], [upd_name], [upd_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'39', N'versionManager', N'历史版本查看', N'35', N'process/proVersion', N'setting', NULL, N'0', NULL, N'/adminSys/processNabager/versionManager', NULL, N'2018-11-20 20:01:00.247', N'1', N'admin', N'192.168.249.174', N'2018-11-20 20:01:00.247', N'1', N'admin', N'192.168.249.174', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

SET IDENTITY_INSERT [dbo].[base_menu] OFF
GO


-- ----------------------------
-- Table structure for base_resource_authority
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[base_resource_authority]') AND type IN ('U'))
	DROP TABLE [dbo].[base_resource_authority]
GO

CREATE TABLE [dbo].[base_resource_authority] (
  [id] int  IDENTITY(1,1) NOT NULL,
  [authority_id] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT NULL NULL,
  [authority_type] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT NULL NULL,
  [resource_id] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT NULL NULL,
  [resource_type] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT NULL NOT NULL,
  [parent_id] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT NULL NULL,
  [path] varchar(2000) COLLATE Chinese_PRC_CI_AS DEFAULT NULL NULL,
  [description] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT NULL NULL,
  [crt_time] datetime DEFAULT NULL NULL,
  [crt_user] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT NULL NULL,
  [crt_name] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT NULL NULL,
  [crt_host] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT NULL NULL,
  [attr1] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT NULL NULL,
  [attr2] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT NULL NULL,
  [attr3] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT NULL NULL,
  [attr4] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT NULL NULL,
  [attr5] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT NULL NULL,
  [attr6] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT NULL NULL,
  [attr7] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT NULL NULL,
  [attr8] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT NULL NULL
)
GO

ALTER TABLE [dbo].[base_resource_authority] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'角色ID',
'SCHEMA', N'dbo',
'TABLE', N'base_resource_authority',
'COLUMN', N'authority_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'角色类型',
'SCHEMA', N'dbo',
'TABLE', N'base_resource_authority',
'COLUMN', N'authority_type'
GO

EXEC sp_addextendedproperty
'MS_Description', N'资源ID',
'SCHEMA', N'dbo',
'TABLE', N'base_resource_authority',
'COLUMN', N'resource_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'资源类型',
'SCHEMA', N'dbo',
'TABLE', N'base_resource_authority',
'COLUMN', N'resource_type'
GO


-- ----------------------------
-- Records of base_resource_authority
-- ----------------------------
SET IDENTITY_INSERT [dbo].[base_resource_authority] ON
GO

INSERT INTO [dbo].[base_resource_authority] ([id], [authority_id], [authority_type], [resource_id], [resource_type], [parent_id], [path], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'287', N'1', N'group', N'5', N'button', N'-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_resource_authority] ([id], [authority_id], [authority_type], [resource_id], [resource_type], [parent_id], [path], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'288', N'1', N'group', N'9', N'button', N'-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_resource_authority] ([id], [authority_id], [authority_type], [resource_id], [resource_type], [parent_id], [path], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'289', N'1', N'group', N'10', N'button', N'-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_resource_authority] ([id], [authority_id], [authority_type], [resource_id], [resource_type], [parent_id], [path], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'290', N'1', N'group', N'11', N'button', N'-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_resource_authority] ([id], [authority_id], [authority_type], [resource_id], [resource_type], [parent_id], [path], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'291', N'1', N'group', N'12', N'button', N'-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_resource_authority] ([id], [authority_id], [authority_type], [resource_id], [resource_type], [parent_id], [path], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'294', N'1', N'group', N'5', N'button', N'-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_resource_authority] ([id], [authority_id], [authority_type], [resource_id], [resource_type], [parent_id], [path], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'295', N'1', N'group', N'9', N'button', N'-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_resource_authority] ([id], [authority_id], [authority_type], [resource_id], [resource_type], [parent_id], [path], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'296', N'1', N'group', N'10', N'button', N'-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_resource_authority] ([id], [authority_id], [authority_type], [resource_id], [resource_type], [parent_id], [path], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'297', N'1', N'group', N'11', N'button', N'-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_resource_authority] ([id], [authority_id], [authority_type], [resource_id], [resource_type], [parent_id], [path], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'298', N'1', N'group', N'12', N'button', N'-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_resource_authority] ([id], [authority_id], [authority_type], [resource_id], [resource_type], [parent_id], [path], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'299', N'1', N'group', N'9', N'button', N'-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_resource_authority] ([id], [authority_id], [authority_type], [resource_id], [resource_type], [parent_id], [path], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'300', N'1', N'group', N'12', N'button', N'-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_resource_authority] ([id], [authority_id], [authority_type], [resource_id], [resource_type], [parent_id], [path], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'301', N'1', N'group', N'10', N'button', N'-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_resource_authority] ([id], [authority_id], [authority_type], [resource_id], [resource_type], [parent_id], [path], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'302', N'1', N'group', N'11', N'button', N'-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_resource_authority] ([id], [authority_id], [authority_type], [resource_id], [resource_type], [parent_id], [path], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'303', N'1', N'group', N'13', N'button', N'-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_resource_authority] ([id], [authority_id], [authority_type], [resource_id], [resource_type], [parent_id], [path], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'304', N'1', N'group', N'14', N'button', N'-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_resource_authority] ([id], [authority_id], [authority_type], [resource_id], [resource_type], [parent_id], [path], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'305', N'1', N'group', N'15', N'button', N'-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_resource_authority] ([id], [authority_id], [authority_type], [resource_id], [resource_type], [parent_id], [path], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'306', N'1', N'group', N'10', N'button', N'-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_resource_authority] ([id], [authority_id], [authority_type], [resource_id], [resource_type], [parent_id], [path], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'307', N'1', N'group', N'11', N'button', N'-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_resource_authority] ([id], [authority_id], [authority_type], [resource_id], [resource_type], [parent_id], [path], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'308', N'1', N'group', N'12', N'button', N'-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_resource_authority] ([id], [authority_id], [authority_type], [resource_id], [resource_type], [parent_id], [path], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'309', N'1', N'group', N'13', N'button', N'-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_resource_authority] ([id], [authority_id], [authority_type], [resource_id], [resource_type], [parent_id], [path], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'310', N'1', N'group', N'14', N'button', N'-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_resource_authority] ([id], [authority_id], [authority_type], [resource_id], [resource_type], [parent_id], [path], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'311', N'1', N'group', N'9', N'button', N'-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_resource_authority] ([id], [authority_id], [authority_type], [resource_id], [resource_type], [parent_id], [path], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'312', N'1', N'group', N'15', N'button', N'-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_resource_authority] ([id], [authority_id], [authority_type], [resource_id], [resource_type], [parent_id], [path], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'313', N'1', N'group', N'16', N'button', N'-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_resource_authority] ([id], [authority_id], [authority_type], [resource_id], [resource_type], [parent_id], [path], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'314', N'1', N'group', N'17', N'button', N'-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_resource_authority] ([id], [authority_id], [authority_type], [resource_id], [resource_type], [parent_id], [path], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'315', N'1', N'group', N'18', N'button', N'-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_resource_authority] ([id], [authority_id], [authority_type], [resource_id], [resource_type], [parent_id], [path], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'317', N'1', N'group', N'20', N'button', N'-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_resource_authority] ([id], [authority_id], [authority_type], [resource_id], [resource_type], [parent_id], [path], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'318', N'1', N'group', N'21', N'button', N'-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_resource_authority] ([id], [authority_id], [authority_type], [resource_id], [resource_type], [parent_id], [path], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'319', N'1', N'group', N'22', N'button', N'-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_resource_authority] ([id], [authority_id], [authority_type], [resource_id], [resource_type], [parent_id], [path], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'349', N'4', N'group', N'9', N'button', N'-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_resource_authority] ([id], [authority_id], [authority_type], [resource_id], [resource_type], [parent_id], [path], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'371', N'1', N'group', N'23', N'button', N'-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_resource_authority] ([id], [authority_id], [authority_type], [resource_id], [resource_type], [parent_id], [path], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'372', N'1', N'group', N'24', N'button', N'-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_resource_authority] ([id], [authority_id], [authority_type], [resource_id], [resource_type], [parent_id], [path], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'373', N'1', N'group', N'27', N'button', N'-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_resource_authority] ([id], [authority_id], [authority_type], [resource_id], [resource_type], [parent_id], [path], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'374', N'1', N'group', N'28', N'button', N'-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_resource_authority] ([id], [authority_id], [authority_type], [resource_id], [resource_type], [parent_id], [path], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'375', N'1', N'group', N'23', N'button', N'-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_resource_authority] ([id], [authority_id], [authority_type], [resource_id], [resource_type], [parent_id], [path], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'378', N'1', N'group', N'5', N'button', N'-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_resource_authority] ([id], [authority_id], [authority_type], [resource_id], [resource_type], [parent_id], [path], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'379', N'1', N'group', N'9', N'button', N'-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_resource_authority] ([id], [authority_id], [authority_type], [resource_id], [resource_type], [parent_id], [path], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'380', N'1', N'group', N'11', N'button', N'-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_resource_authority] ([id], [authority_id], [authority_type], [resource_id], [resource_type], [parent_id], [path], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'381', N'1', N'group', N'14', N'button', N'-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_resource_authority] ([id], [authority_id], [authority_type], [resource_id], [resource_type], [parent_id], [path], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'382', N'1', N'group', N'13', N'button', N'-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_resource_authority] ([id], [authority_id], [authority_type], [resource_id], [resource_type], [parent_id], [path], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'383', N'1', N'group', N'15', N'button', N'-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_resource_authority] ([id], [authority_id], [authority_type], [resource_id], [resource_type], [parent_id], [path], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'384', N'1', N'group', N'12', N'button', N'-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_resource_authority] ([id], [authority_id], [authority_type], [resource_id], [resource_type], [parent_id], [path], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'385', N'1', N'group', N'24', N'button', N'-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_resource_authority] ([id], [authority_id], [authority_type], [resource_id], [resource_type], [parent_id], [path], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'386', N'1', N'group', N'10', N'button', N'-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_resource_authority] ([id], [authority_id], [authority_type], [resource_id], [resource_type], [parent_id], [path], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'387', N'1', N'group', N'27', N'button', N'-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_resource_authority] ([id], [authority_id], [authority_type], [resource_id], [resource_type], [parent_id], [path], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'388', N'1', N'group', N'16', N'button', N'-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_resource_authority] ([id], [authority_id], [authority_type], [resource_id], [resource_type], [parent_id], [path], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'389', N'1', N'group', N'18', N'button', N'-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_resource_authority] ([id], [authority_id], [authority_type], [resource_id], [resource_type], [parent_id], [path], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'390', N'1', N'group', N'17', N'button', N'-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_resource_authority] ([id], [authority_id], [authority_type], [resource_id], [resource_type], [parent_id], [path], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'392', N'1', N'group', N'20', N'button', N'-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_resource_authority] ([id], [authority_id], [authority_type], [resource_id], [resource_type], [parent_id], [path], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'393', N'1', N'group', N'28', N'button', N'-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_resource_authority] ([id], [authority_id], [authority_type], [resource_id], [resource_type], [parent_id], [path], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'394', N'1', N'group', N'22', N'button', N'-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_resource_authority] ([id], [authority_id], [authority_type], [resource_id], [resource_type], [parent_id], [path], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'395', N'1', N'group', N'21', N'button', N'-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_resource_authority] ([id], [authority_id], [authority_type], [resource_id], [resource_type], [parent_id], [path], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'396', N'4', N'group', N'23', N'button', N'-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_resource_authority] ([id], [authority_id], [authority_type], [resource_id], [resource_type], [parent_id], [path], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'397', N'4', N'group', N'9', N'button', N'-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_resource_authority] ([id], [authority_id], [authority_type], [resource_id], [resource_type], [parent_id], [path], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'398', N'4', N'group', N'27', N'button', N'-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_resource_authority] ([id], [authority_id], [authority_type], [resource_id], [resource_type], [parent_id], [path], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'399', N'4', N'group', N'24', N'button', N'-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_resource_authority] ([id], [authority_id], [authority_type], [resource_id], [resource_type], [parent_id], [path], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'400', N'4', N'group', N'28', N'button', N'-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_resource_authority] ([id], [authority_id], [authority_type], [resource_id], [resource_type], [parent_id], [path], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'401', N'1', N'group', N'30', N'button', N'-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_resource_authority] ([id], [authority_id], [authority_type], [resource_id], [resource_type], [parent_id], [path], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'402', N'1', N'group', N'30', N'button', N'-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_resource_authority] ([id], [authority_id], [authority_type], [resource_id], [resource_type], [parent_id], [path], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'403', N'1', N'group', N'31', N'button', N'-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_resource_authority] ([id], [authority_id], [authority_type], [resource_id], [resource_type], [parent_id], [path], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'421', N'1', N'group', N'31', N'button', N'-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_resource_authority] ([id], [authority_id], [authority_type], [resource_id], [resource_type], [parent_id], [path], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'422', N'1', N'group', N'30', N'button', N'-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_resource_authority] ([id], [authority_id], [authority_type], [resource_id], [resource_type], [parent_id], [path], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'423', N'4', N'group', N'31', N'button', N'-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_resource_authority] ([id], [authority_id], [authority_type], [resource_id], [resource_type], [parent_id], [path], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'424', N'4', N'group', N'30', N'button', N'-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_resource_authority] ([id], [authority_id], [authority_type], [resource_id], [resource_type], [parent_id], [path], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'437', N'1', N'group', N'33', N'button', N'-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_resource_authority] ([id], [authority_id], [authority_type], [resource_id], [resource_type], [parent_id], [path], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'438', N'1', N'group', N'34', N'button', N'-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_resource_authority] ([id], [authority_id], [authority_type], [resource_id], [resource_type], [parent_id], [path], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'439', N'1', N'group', N'35', N'button', N'-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_resource_authority] ([id], [authority_id], [authority_type], [resource_id], [resource_type], [parent_id], [path], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'440', N'4', N'group', N'32', N'button', N'-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_resource_authority] ([id], [authority_id], [authority_type], [resource_id], [resource_type], [parent_id], [path], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'464', N'1', N'group', N'30', N'button', N'-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_resource_authority] ([id], [authority_id], [authority_type], [resource_id], [resource_type], [parent_id], [path], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'465', N'1', N'group', N'31', N'button', N'-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_resource_authority] ([id], [authority_id], [authority_type], [resource_id], [resource_type], [parent_id], [path], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'466', N'1', N'group', N'30', N'button', N'-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_resource_authority] ([id], [authority_id], [authority_type], [resource_id], [resource_type], [parent_id], [path], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'467', N'1', N'group', N'31', N'button', N'-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_resource_authority] ([id], [authority_id], [authority_type], [resource_id], [resource_type], [parent_id], [path], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'468', N'1', N'group', N'30', N'button', N'-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_resource_authority] ([id], [authority_id], [authority_type], [resource_id], [resource_type], [parent_id], [path], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'469', N'1', N'group', N'31', N'button', N'-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_resource_authority] ([id], [authority_id], [authority_type], [resource_id], [resource_type], [parent_id], [path], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'470', N'1', N'group', N'30', N'button', N'-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_resource_authority] ([id], [authority_id], [authority_type], [resource_id], [resource_type], [parent_id], [path], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'471', N'1', N'group', N'31', N'button', N'-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_resource_authority] ([id], [authority_id], [authority_type], [resource_id], [resource_type], [parent_id], [path], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'472', N'1', N'group', N'40', N'button', N'-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_resource_authority] ([id], [authority_id], [authority_type], [resource_id], [resource_type], [parent_id], [path], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'492', N'1', N'group', N'30', N'button', N'-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_resource_authority] ([id], [authority_id], [authority_type], [resource_id], [resource_type], [parent_id], [path], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'493', N'1', N'group', N'31', N'button', N'-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_resource_authority] ([id], [authority_id], [authority_type], [resource_id], [resource_type], [parent_id], [path], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'494', N'1', N'group', N'40', N'button', N'-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_resource_authority] ([id], [authority_id], [authority_type], [resource_id], [resource_type], [parent_id], [path], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'516', N'4', N'group', N'41', N'button', N'-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_resource_authority] ([id], [authority_id], [authority_type], [resource_id], [resource_type], [parent_id], [path], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'517', N'4', N'group', N'30', N'button', N'-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_resource_authority] ([id], [authority_id], [authority_type], [resource_id], [resource_type], [parent_id], [path], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'518', N'4', N'group', N'31', N'button', N'-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_resource_authority] ([id], [authority_id], [authority_type], [resource_id], [resource_type], [parent_id], [path], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'519', N'4', N'group', N'40', N'button', N'-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_resource_authority] ([id], [authority_id], [authority_type], [resource_id], [resource_type], [parent_id], [path], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'611', N'4', N'group', N'42', N'button', N'-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_resource_authority] ([id], [authority_id], [authority_type], [resource_id], [resource_type], [parent_id], [path], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'612', N'4', N'group', N'36', N'button', N'-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_resource_authority] ([id], [authority_id], [authority_type], [resource_id], [resource_type], [parent_id], [path], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'666', N'1', N'group', N'41', N'button', N'-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_resource_authority] ([id], [authority_id], [authority_type], [resource_id], [resource_type], [parent_id], [path], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'689', N'1', N'group', N'43', N'button', N'-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_resource_authority] ([id], [authority_id], [authority_type], [resource_id], [resource_type], [parent_id], [path], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'691', N'1', N'group', N'44', N'button', N'-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_resource_authority] ([id], [authority_id], [authority_type], [resource_id], [resource_type], [parent_id], [path], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'710', N'9', N'group', N'42', N'button', N'-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_resource_authority] ([id], [authority_id], [authority_type], [resource_id], [resource_type], [parent_id], [path], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'711', N'9', N'group', N'43', N'button', N'-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_resource_authority] ([id], [authority_id], [authority_type], [resource_id], [resource_type], [parent_id], [path], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'712', N'9', N'group', N'44', N'button', N'-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_resource_authority] ([id], [authority_id], [authority_type], [resource_id], [resource_type], [parent_id], [path], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'713', N'9', N'group', N'45', N'button', N'-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_resource_authority] ([id], [authority_id], [authority_type], [resource_id], [resource_type], [parent_id], [path], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'718', N'9', N'group', N'42', N'button', N'-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_resource_authority] ([id], [authority_id], [authority_type], [resource_id], [resource_type], [parent_id], [path], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'719', N'9', N'group', N'44', N'button', N'-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_resource_authority] ([id], [authority_id], [authority_type], [resource_id], [resource_type], [parent_id], [path], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'720', N'9', N'group', N'45', N'button', N'-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_resource_authority] ([id], [authority_id], [authority_type], [resource_id], [resource_type], [parent_id], [path], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'721', N'9', N'group', N'43', N'button', N'-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_resource_authority] ([id], [authority_id], [authority_type], [resource_id], [resource_type], [parent_id], [path], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'722', N'1', N'group', N'41', N'button', N'-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_resource_authority] ([id], [authority_id], [authority_type], [resource_id], [resource_type], [parent_id], [path], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'749', N'10', N'group', N'13', N'menu', N'-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_resource_authority] ([id], [authority_id], [authority_type], [resource_id], [resource_type], [parent_id], [path], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'750', N'10', N'group', N'14', N'menu', N'-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_resource_authority] ([id], [authority_id], [authority_type], [resource_id], [resource_type], [parent_id], [path], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'751', N'10', N'group', N'-1', N'menu', N'-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_resource_authority] ([id], [authority_id], [authority_type], [resource_id], [resource_type], [parent_id], [path], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'752', N'10', N'group', N'5', N'menu', N'-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_resource_authority] ([id], [authority_id], [authority_type], [resource_id], [resource_type], [parent_id], [path], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'753', N'10', N'group', N'6', N'menu', N'-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_resource_authority] ([id], [authority_id], [authority_type], [resource_id], [resource_type], [parent_id], [path], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'754', N'10', N'group', N'17', N'menu', N'-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_resource_authority] ([id], [authority_id], [authority_type], [resource_id], [resource_type], [parent_id], [path], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'755', N'10', N'group', N'20', N'menu', N'-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_resource_authority] ([id], [authority_id], [authority_type], [resource_id], [resource_type], [parent_id], [path], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'774', N'1', N'group', N'3', N'button', N'-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_resource_authority] ([id], [authority_id], [authority_type], [resource_id], [resource_type], [parent_id], [path], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'775', N'1', N'group', N'4', N'button', N'-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_resource_authority] ([id], [authority_id], [authority_type], [resource_id], [resource_type], [parent_id], [path], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'812', N'1', N'group', N'19', N'button', N'-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_resource_authority] ([id], [authority_id], [authority_type], [resource_id], [resource_type], [parent_id], [path], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'924', N'1', N'group', N'42', N'button', N'-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_resource_authority] ([id], [authority_id], [authority_type], [resource_id], [resource_type], [parent_id], [path], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'945', N'1', N'group', N'45', N'button', N'-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_resource_authority] ([id], [authority_id], [authority_type], [resource_id], [resource_type], [parent_id], [path], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'956', N'1', N'group', N'46', N'button', N'-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_resource_authority] ([id], [authority_id], [authority_type], [resource_id], [resource_type], [parent_id], [path], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'981', N'9', N'group', N'23', N'button', N'-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_resource_authority] ([id], [authority_id], [authority_type], [resource_id], [resource_type], [parent_id], [path], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'1080', N'-1', N'group', N'13', N'menu', N'-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_resource_authority] ([id], [authority_id], [authority_type], [resource_id], [resource_type], [parent_id], [path], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'1081', N'-1', N'group', N'35', N'menu', N'-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_resource_authority] ([id], [authority_id], [authority_type], [resource_id], [resource_type], [parent_id], [path], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'1082', N'-1', N'group', N'-1', N'menu', N'-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_resource_authority] ([id], [authority_id], [authority_type], [resource_id], [resource_type], [parent_id], [path], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'1188', N'1', N'group', N'47', N'button', N'-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_resource_authority] ([id], [authority_id], [authority_type], [resource_id], [resource_type], [parent_id], [path], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'1189', N'1', N'group', N'48', N'button', N'-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_resource_authority] ([id], [authority_id], [authority_type], [resource_id], [resource_type], [parent_id], [path], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'1202', N'1', N'group', N'32', N'button', N'-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_resource_authority] ([id], [authority_id], [authority_type], [resource_id], [resource_type], [parent_id], [path], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'1215', N'4', N'group', N'13', N'menu', N'-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_resource_authority] ([id], [authority_id], [authority_type], [resource_id], [resource_type], [parent_id], [path], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'1216', N'4', N'group', N'35', N'menu', N'-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_resource_authority] ([id], [authority_id], [authority_type], [resource_id], [resource_type], [parent_id], [path], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'1217', N'4', N'group', N'36', N'menu', N'-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_resource_authority] ([id], [authority_id], [authority_type], [resource_id], [resource_type], [parent_id], [path], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'1218', N'4', N'group', N'-1', N'menu', N'-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_resource_authority] ([id], [authority_id], [authority_type], [resource_id], [resource_type], [parent_id], [path], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'1219', N'4', N'group', N'27', N'menu', N'-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_resource_authority] ([id], [authority_id], [authority_type], [resource_id], [resource_type], [parent_id], [path], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'1220', N'4', N'group', N'38', N'menu', N'-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_resource_authority] ([id], [authority_id], [authority_type], [resource_id], [resource_type], [parent_id], [path], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'1221', N'4', N'group', N'39', N'menu', N'-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_resource_authority] ([id], [authority_id], [authority_type], [resource_id], [resource_type], [parent_id], [path], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'1222', N'4', N'group', N'1', N'menu', N'-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_resource_authority] ([id], [authority_id], [authority_type], [resource_id], [resource_type], [parent_id], [path], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'1223', N'4', N'group', N'5', N'menu', N'-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_resource_authority] ([id], [authority_id], [authority_type], [resource_id], [resource_type], [parent_id], [path], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'1224', N'4', N'group', N'6', N'menu', N'-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_resource_authority] ([id], [authority_id], [authority_type], [resource_id], [resource_type], [parent_id], [path], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'1225', N'4', N'group', N'7', N'menu', N'-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_resource_authority] ([id], [authority_id], [authority_type], [resource_id], [resource_type], [parent_id], [path], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'1226', N'4', N'group', N'8', N'menu', N'-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_resource_authority] ([id], [authority_id], [authority_type], [resource_id], [resource_type], [parent_id], [path], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'1227', N'4', N'group', N'21', N'menu', N'-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_resource_authority] ([id], [authority_id], [authority_type], [resource_id], [resource_type], [parent_id], [path], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'1228', N'9', N'group', N'13', N'menu', N'-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_resource_authority] ([id], [authority_id], [authority_type], [resource_id], [resource_type], [parent_id], [path], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'1229', N'9', N'group', N'35', N'menu', N'-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_resource_authority] ([id], [authority_id], [authority_type], [resource_id], [resource_type], [parent_id], [path], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'1230', N'9', N'group', N'36', N'menu', N'-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_resource_authority] ([id], [authority_id], [authority_type], [resource_id], [resource_type], [parent_id], [path], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'1231', N'9', N'group', N'-1', N'menu', N'-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_resource_authority] ([id], [authority_id], [authority_type], [resource_id], [resource_type], [parent_id], [path], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'1232', N'9', N'group', N'27', N'menu', N'-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_resource_authority] ([id], [authority_id], [authority_type], [resource_id], [resource_type], [parent_id], [path], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'1233', N'9', N'group', N'38', N'menu', N'-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_resource_authority] ([id], [authority_id], [authority_type], [resource_id], [resource_type], [parent_id], [path], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'1234', N'9', N'group', N'39', N'menu', N'-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_resource_authority] ([id], [authority_id], [authority_type], [resource_id], [resource_type], [parent_id], [path], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'1235', N'9', N'group', N'1', N'menu', N'-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_resource_authority] ([id], [authority_id], [authority_type], [resource_id], [resource_type], [parent_id], [path], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'1236', N'9', N'group', N'5', N'menu', N'-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_resource_authority] ([id], [authority_id], [authority_type], [resource_id], [resource_type], [parent_id], [path], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'1237', N'9', N'group', N'6', N'menu', N'-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_resource_authority] ([id], [authority_id], [authority_type], [resource_id], [resource_type], [parent_id], [path], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'1238', N'9', N'group', N'7', N'menu', N'-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_resource_authority] ([id], [authority_id], [authority_type], [resource_id], [resource_type], [parent_id], [path], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'1239', N'9', N'group', N'8', N'menu', N'-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_resource_authority] ([id], [authority_id], [authority_type], [resource_id], [resource_type], [parent_id], [path], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'1240', N'9', N'group', N'21', N'menu', N'-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_resource_authority] ([id], [authority_id], [authority_type], [resource_id], [resource_type], [parent_id], [path], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'1253', N'1', N'group', N'49', N'button', N'-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_resource_authority] ([id], [authority_id], [authority_type], [resource_id], [resource_type], [parent_id], [path], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'1254', N'1', N'group', N'50', N'button', N'-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_resource_authority] ([id], [authority_id], [authority_type], [resource_id], [resource_type], [parent_id], [path], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'1255', N'1', N'group', N'51', N'button', N'-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_resource_authority] ([id], [authority_id], [authority_type], [resource_id], [resource_type], [parent_id], [path], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'1256', N'1', N'group', N'52', N'button', N'-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_resource_authority] ([id], [authority_id], [authority_type], [resource_id], [resource_type], [parent_id], [path], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'1258', N'1', N'group', N'54', N'button', N'-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_resource_authority] ([id], [authority_id], [authority_type], [resource_id], [resource_type], [parent_id], [path], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'1260', N'1', N'group', N'56', N'button', N'-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_resource_authority] ([id], [authority_id], [authority_type], [resource_id], [resource_type], [parent_id], [path], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'1261', N'1', N'group', N'57', N'button', N'-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_resource_authority] ([id], [authority_id], [authority_type], [resource_id], [resource_type], [parent_id], [path], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'1262', N'1', N'group', N'58', N'button', N'-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_resource_authority] ([id], [authority_id], [authority_type], [resource_id], [resource_type], [parent_id], [path], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'1276', N'1', N'group', N'64', N'button', N'-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_resource_authority] ([id], [authority_id], [authority_type], [resource_id], [resource_type], [parent_id], [path], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'1301', N'1', N'group', N'60', N'button', N'-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_resource_authority] ([id], [authority_id], [authority_type], [resource_id], [resource_type], [parent_id], [path], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'1302', N'1', N'group', N'61', N'button', N'-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_resource_authority] ([id], [authority_id], [authority_type], [resource_id], [resource_type], [parent_id], [path], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'1303', N'1', N'group', N'62', N'button', N'-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_resource_authority] ([id], [authority_id], [authority_type], [resource_id], [resource_type], [parent_id], [path], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'1304', N'1', N'group', N'63', N'button', N'-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_resource_authority] ([id], [authority_id], [authority_type], [resource_id], [resource_type], [parent_id], [path], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'1305', N'1', N'group', N'1', N'menu', N'-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_resource_authority] ([id], [authority_id], [authority_type], [resource_id], [resource_type], [parent_id], [path], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'1306', N'1', N'group', N'13', N'menu', N'-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_resource_authority] ([id], [authority_id], [authority_type], [resource_id], [resource_type], [parent_id], [path], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'1307', N'1', N'group', N'35', N'menu', N'-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_resource_authority] ([id], [authority_id], [authority_type], [resource_id], [resource_type], [parent_id], [path], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'1308', N'1', N'group', N'36', N'menu', N'-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_resource_authority] ([id], [authority_id], [authority_type], [resource_id], [resource_type], [parent_id], [path], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'1309', N'1', N'group', N'-1', N'menu', N'-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_resource_authority] ([id], [authority_id], [authority_type], [resource_id], [resource_type], [parent_id], [path], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'1310', N'1', N'group', N'5', N'menu', N'-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_resource_authority] ([id], [authority_id], [authority_type], [resource_id], [resource_type], [parent_id], [path], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'1311', N'1', N'group', N'27', N'menu', N'-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_resource_authority] ([id], [authority_id], [authority_type], [resource_id], [resource_type], [parent_id], [path], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'1312', N'1', N'group', N'38', N'menu', N'-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_resource_authority] ([id], [authority_id], [authority_type], [resource_id], [resource_type], [parent_id], [path], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'1313', N'1', N'group', N'6', N'menu', N'-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_resource_authority] ([id], [authority_id], [authority_type], [resource_id], [resource_type], [parent_id], [path], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'1314', N'1', N'group', N'39', N'menu', N'-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_resource_authority] ([id], [authority_id], [authority_type], [resource_id], [resource_type], [parent_id], [path], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'1315', N'1', N'group', N'7', N'menu', N'-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_resource_authority] ([id], [authority_id], [authority_type], [resource_id], [resource_type], [parent_id], [path], [description], [crt_time], [crt_user], [crt_name], [crt_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'1316', N'1', N'group', N'8', N'menu', N'-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

SET IDENTITY_INSERT [dbo].[base_resource_authority] OFF
GO


-- ----------------------------
-- Table structure for base_user
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[base_user]') AND type IN ('U'))
	DROP TABLE [dbo].[base_user]
GO

CREATE TABLE [dbo].[base_user] (
  [id] int  IDENTITY(1,1) NOT NULL,
  [username] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT NULL NULL,
  [password] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT NULL NULL,
  [name] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT NULL NULL,
  [birthday] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT NULL NULL,
  [address] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT NULL NULL,
  [mobile_phone] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT NULL NULL,
  [tel_phone] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT NULL NULL,
  [email] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT NULL NULL,
  [sex] varchar(10) COLLATE Chinese_PRC_CI_AS DEFAULT NULL NULL,
  [type] char(10) COLLATE Chinese_PRC_CI_AS DEFAULT NULL NULL,
  [status] int DEFAULT ((1)) NULL,
  [description] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT NULL NULL,
  [crt_time] datetime DEFAULT NULL NULL,
  [crt_user] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT NULL NULL,
  [crt_name] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT NULL NULL,
  [crt_host] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT NULL NULL,
  [upd_time] datetime DEFAULT NULL NULL,
  [upd_user] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT NULL NULL,
  [upd_name] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT NULL NULL,
  [upd_host] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT NULL NULL,
  [attr1] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT NULL NULL,
  [attr2] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT NULL NULL,
  [attr3] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT NULL NULL,
  [attr4] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT NULL NULL,
  [attr5] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT NULL NULL,
  [attr6] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT NULL NULL,
  [attr7] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT NULL NULL,
  [attr8] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT NULL NULL
)
GO

ALTER TABLE [dbo].[base_user] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of base_user
-- ----------------------------
SET IDENTITY_INSERT [dbo].[base_user] ON
GO

INSERT INTO [dbo].[base_user] ([id], [username], [password], [name], [birthday], [address], [mobile_phone], [tel_phone], [email], [sex], [type], [status], [description], [crt_time], [crt_user], [crt_name], [crt_host], [upd_time], [upd_user], [upd_name], [upd_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'1', N'admin', N'$2a$10$1Jbkef8L5w7bDyRUrZL.wOllWvLWVjIDw54BOSNjRodyE8qt37TMa', N'Mr.AG', N'', NULL, N'', N'123123', N'', N'男        ', NULL, N'1', N'', NULL, NULL, NULL, NULL, N'2018-11-21 17:17:33.547', N'1', N'admin', N'192.168.249.174', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_user] ([id], [username], [password], [name], [birthday], [address], [mobile_phone], [tel_phone], [email], [sex], [type], [status], [description], [crt_time], [crt_user], [crt_name], [crt_host], [upd_time], [upd_user], [upd_name], [upd_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'2', N'test', N'$2a$12$zWe6knO6rGp15UVfdWTTxu.Ykt.k3QnD5FPoj6a1cnL63csHY2A1S', N'测试账户', N'', NULL, N'', NULL, N'', N'男        ', NULL, N'1', N'', NULL, NULL, NULL, NULL, N'2018-11-20 18:03:08.380', N'1', N'管理员', N'192.168.249.174', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_user] ([id], [username], [password], [name], [birthday], [address], [mobile_phone], [tel_phone], [email], [sex], [type], [status], [description], [crt_time], [crt_user], [crt_name], [crt_host], [upd_time], [upd_user], [upd_name], [upd_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'4', N'blog', N'$2a$12$S/yLlj9kzi5Dgsz97H4rAekxrPlk/10eXp1lUJcAVAx.2M9tOpWie', N'Mr.AG（测试2）', N'', NULL, N'', NULL, N'', N'女        ', NULL, N'0', N'12', NULL, NULL, NULL, NULL, N'2018-11-21 14:58:48.273', N'1', N'Mr.AG', N'192.168.249.174', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_user] ([id], [username], [password], [name], [birthday], [address], [mobile_phone], [tel_phone], [email], [sex], [type], [status], [description], [crt_time], [crt_user], [crt_name], [crt_host], [upd_time], [upd_user], [upd_name], [upd_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'5', N'btz', N'$2a$12$MsW632qzQwxlJ9OJB0L3s.6oDw7.Od8EUMyrTFKDclONlBKP.lEeG', N'btz', NULL, NULL, NULL, N'22222221', NULL, NULL, NULL, N'1', NULL, N'2018-11-20 16:04:52.000', N'1', N'admin', N'192.168.249.174', N'2018-11-22 09:28:23.517', N'1', N'admin', N'192.168.249.174', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[base_user] ([id], [username], [password], [name], [birthday], [address], [mobile_phone], [tel_phone], [email], [sex], [type], [status], [description], [crt_time], [crt_user], [crt_name], [crt_host], [upd_time], [upd_user], [upd_name], [upd_host], [attr1], [attr2], [attr3], [attr4], [attr5], [attr6], [attr7], [attr8]) VALUES (N'9', N'gongyi', N'$2a$12$sqBbtImn1I1t3dIZK879Je2Tq3UHSm0Ao11P6spCBrXwW/imd5ZvC', N'工艺超级管理员', NULL, NULL, NULL, N'15767062559', NULL, NULL, NULL, N'1', NULL, N'2018-11-26 16:50:54.000', NULL, NULL, N'192.168.249.211', N'2018-11-26 16:51:14.290', NULL, NULL, N'192.168.249.211', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

SET IDENTITY_INSERT [dbo].[base_user] OFF
GO


-- ----------------------------
-- Table structure for gate_log
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[gate_log]') AND type IN ('U'))
	DROP TABLE [dbo].[gate_log]
GO

CREATE TABLE [dbo].[gate_log] (
  [id] int  IDENTITY(1,1) NOT NULL,
  [menu] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT NULL NULL,
  [opt] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT NULL NULL,
  [uri] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT NULL NULL,
  [crt_time] datetime DEFAULT NULL NULL,
  [crt_user] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT NULL NULL,
  [crt_name] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT NULL NULL,
  [crt_host] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT NULL NULL
)
GO

ALTER TABLE [dbo].[gate_log] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'序号',
'SCHEMA', N'dbo',
'TABLE', N'gate_log',
'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'菜单',
'SCHEMA', N'dbo',
'TABLE', N'gate_log',
'COLUMN', N'menu'
GO

EXEC sp_addextendedproperty
'MS_Description', N'操作',
'SCHEMA', N'dbo',
'TABLE', N'gate_log',
'COLUMN', N'opt'
GO

EXEC sp_addextendedproperty
'MS_Description', N'资源路径',
'SCHEMA', N'dbo',
'TABLE', N'gate_log',
'COLUMN', N'uri'
GO

EXEC sp_addextendedproperty
'MS_Description', N'操作时间',
'SCHEMA', N'dbo',
'TABLE', N'gate_log',
'COLUMN', N'crt_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'操作人ID',
'SCHEMA', N'dbo',
'TABLE', N'gate_log',
'COLUMN', N'crt_user'
GO

EXEC sp_addextendedproperty
'MS_Description', N'操作人',
'SCHEMA', N'dbo',
'TABLE', N'gate_log',
'COLUMN', N'crt_name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'操作主机',
'SCHEMA', N'dbo',
'TABLE', N'gate_log',
'COLUMN', N'crt_host'
GO


-- ----------------------------
-- Records of gate_log
-- ----------------------------
SET IDENTITY_INSERT [dbo].[gate_log] ON
GO

INSERT INTO [dbo].[gate_log] ([id], [menu], [opt], [uri], [crt_time], [crt_user], [crt_name], [crt_host]) VALUES (N'1', N'菜单管理', N'新增', N'/admin/menu', N'2018-02-25 09:36:35.000', N'1', N'Mr.AG', N'127.0.0.1')
GO

INSERT INTO [dbo].[gate_log] ([id], [menu], [opt], [uri], [crt_time], [crt_user], [crt_name], [crt_host]) VALUES (N'2', N'菜单管理', N'新增', N'/admin/menu', N'2018-02-25 09:37:04.000', N'1', N'Mr.AG', N'127.0.0.1')
GO

INSERT INTO [dbo].[gate_log] ([id], [menu], [opt], [uri], [crt_time], [crt_user], [crt_name], [crt_host]) VALUES (N'3', N'菜单管理', N'新增', N'/admin/menu', N'2018-02-25 09:37:04.000', N'1', N'Mr.AG', N'127.0.0.1')
GO

INSERT INTO [dbo].[gate_log] ([id], [menu], [opt], [uri], [crt_time], [crt_user], [crt_name], [crt_host]) VALUES (N'4', N'菜单管理', N'编辑', N'/admin/menu', N'2018-02-25 09:37:20.000', N'1', N'Mr.AG', N'127.0.0.1')
GO

INSERT INTO [dbo].[gate_log] ([id], [menu], [opt], [uri], [crt_time], [crt_user], [crt_name], [crt_host]) VALUES (N'5', N'菜单管理', N'编辑', N'/admin/menu', N'2018-02-25 09:37:32.000', N'1', N'Mr.AG', N'127.0.0.1')
GO

INSERT INTO [dbo].[gate_log] ([id], [menu], [opt], [uri], [crt_time], [crt_user], [crt_name], [crt_host]) VALUES (N'6', N'菜单管理', N'编辑', N'/admin/menu', N'2018-02-25 09:37:35.000', N'1', N'Mr.AG', N'127.0.0.1')
GO

INSERT INTO [dbo].[gate_log] ([id], [menu], [opt], [uri], [crt_time], [crt_user], [crt_name], [crt_host]) VALUES (N'7', N'菜单管理', N'编辑', N'/admin/menu', N'2018-02-25 09:37:40.000', N'1', N'Mr.AG', N'127.0.0.1')
GO

INSERT INTO [dbo].[gate_log] ([id], [menu], [opt], [uri], [crt_time], [crt_user], [crt_name], [crt_host]) VALUES (N'8', N'菜单管理', N'新增', N'/admin/menu', N'2018-02-25 09:38:04.000', N'1', N'Mr.AG', N'127.0.0.1')
GO

INSERT INTO [dbo].[gate_log] ([id], [menu], [opt], [uri], [crt_time], [crt_user], [crt_name], [crt_host]) VALUES (N'9', N'角色权限管理', N'新增', N'/admin/group', N'2018-02-25 09:38:21.000', N'1', N'Mr.AG', N'127.0.0.1')
GO

INSERT INTO [dbo].[gate_log] ([id], [menu], [opt], [uri], [crt_time], [crt_user], [crt_name], [crt_host]) VALUES (N'10', N'菜单管理', N'编辑', N'/admin/menu', N'2018-02-25 09:38:55.000', N'1', N'Mr.AG', N'127.0.0.1')
GO

INSERT INTO [dbo].[gate_log] ([id], [menu], [opt], [uri], [crt_time], [crt_user], [crt_name], [crt_host]) VALUES (N'11', N'用户管理', N'编辑', N'/admin/user', N'2018-03-06 11:26:28.000', N'1', N'Mr.AG', N'127.0.0.1')
GO

INSERT INTO [dbo].[gate_log] ([id], [menu], [opt], [uri], [crt_time], [crt_user], [crt_name], [crt_host]) VALUES (N'12', N'用户管理', N'编辑', N'/admin/user', N'2018-03-06 11:26:34.000', N'1', N'Mr.AG', N'127.0.0.1')
GO

INSERT INTO [dbo].[gate_log] ([id], [menu], [opt], [uri], [crt_time], [crt_user], [crt_name], [crt_host]) VALUES (N'13', N'用户管理', N'编辑', N'/admin/user', N'2018-03-07 11:21:10.000', N'1', N'Mr.AG', N'127.0.0.1')
GO

SET IDENTITY_INSERT [dbo].[gate_log] OFF
GO


-- ----------------------------
-- Primary Key structure for table base_group
-- ----------------------------
ALTER TABLE [dbo].[base_group] ADD CONSTRAINT [PK__base_gro__3213E83F60FC61CA] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table base_group_leader
-- ----------------------------
ALTER TABLE [dbo].[base_group_leader] ADD CONSTRAINT [PK__base_gro__3213E83F78D3EB5B] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table base_group_member
-- ----------------------------
ALTER TABLE [dbo].[base_group_member] ADD CONSTRAINT [PK__base_gro__3213E83F0FB750B3] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table base_group_type
-- ----------------------------
ALTER TABLE [dbo].[base_group_type] ADD CONSTRAINT [PK__base_gro__3213E83F25A691D2] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table base_menu
-- ----------------------------
ALTER TABLE [dbo].[base_menu] ADD CONSTRAINT [PK__base_men__3213E83F3B95D2F1] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table base_resource_authority
-- ----------------------------
ALTER TABLE [dbo].[base_resource_authority] ADD CONSTRAINT [PK__base_res__3213E83F5832119F] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table base_user
-- ----------------------------
ALTER TABLE [dbo].[base_user] ADD CONSTRAINT [PK__base_use__3213E83F6E2152BE] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table gate_log
-- ----------------------------
ALTER TABLE [dbo].[gate_log] ADD CONSTRAINT [PK__gate_log__3213E83F0CA5D9DE] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO

