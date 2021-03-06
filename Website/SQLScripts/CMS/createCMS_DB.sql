USE [EPRTRcms]
GO
/****** Object:  Role [aspnet_ChangeNotification_ReceiveNotificationsOnlyAccess]    Script Date: 08/28/2009 16:16:34 ******/
CREATE ROLE [aspnet_ChangeNotification_ReceiveNotificationsOnlyAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Schema [aspnet_ChangeNotification_ReceiveNotificationsOnlyAccess]    Script Date: 08/28/2009 16:16:34 ******/
CREATE SCHEMA [aspnet_ChangeNotification_ReceiveNotificationsOnlyAccess] AUTHORIZATION [aspnet_ChangeNotification_ReceiveNotificationsOnlyAccess]
GO

CREATE TABLE [dbo].[StringResourceKey_old](
	[StringResourceKeyID] [int] IDENTITY(1,1) NOT NULL,
	[ResourceType] [nvarchar](255) NOT NULL,
	[ResourceKey] [nvarchar](255) NOT NULL
) ON [PRIMARY]
GO


EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Category for each resource. It can be used to distinguish local resources for different pages, or global resource types by a user-defined name' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StringResourceKey_old', @level2type=N'COLUMN',@level2name=N'ResourceType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Resource key used to retrieve resources.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StringResourceKey_old', @level2type=N'COLUMN',@level2name=N'ResourceKey'
GO


--drop TABLE [dbo].[tAT_ResourceValue]
CREATE TABLE [dbo].[tAT_ResourceValue](
	[ResourceValueID] [int] IDENTITY(1,1) NOT NULL,
	[ResourceKeyID] [int] NOT NULL,
	[CultureCode] [nvarchar](10) NULL,
	[ResourceValue] [nvarchar](max) NULL
	CONSTRAINT [tAT_ResourceValueID] PRIMARY KEY CLUSTERED (ResourceValueID)
) ON [PRIMARY]
GO

--drop TABLE [dbo].[tAT_ResourceKey]
CREATE TABLE [dbo].[tAT_ResourceKey](
	[ResourceKeyID] [int] IDENTITY(1,1) NOT NULL,
	[ResourceKey] [nvarchar](255) NULL,
	[ResourceType] [nvarchar](255) NULL,
	[AllowHTML] [bit] NULL,
	[EditCMS] [bit] NULL,
	[KeyDescription] [nvarchar](255) NULL
	CONSTRAINT [tAT_ResourceKeyID] PRIMARY KEY CLUSTERED ([ResourceKeyID])
) ON [PRIMARY]
GO

--IF EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'dbo.FK_tAT_ResourceValue_tAT_ResourceKey') AND parent_object_id = OBJECT_ID(N'dbo.tAT_ResourceValue'))
--	ALTER TABLE dbo.tAT_ResourceValue drop CONSTRAINT FK_tAT_ResourceValue_tAT_ResourceKey
--ALTER TABLE dbo.tAT_ResourceValue with check
--	ADD CONSTRAINT FK_tAT_ResourceValue_tAT_ResourceKey
--	FOREIGN KEY(ResourceKeyID)
--	REFERENCES dbo.tAT_ResourceKey (ResourceKeyID)
GO

CREATE TABLE [dbo].[AspNet_SqlCacheTablesForChangeNotification](
	[tableName] [nvarchar](450) NOT NULL,
	[notificationCreated] [datetime] NOT NULL,
	[changeId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[tableName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


CREATE TABLE [dbo].[DBResourcesImport](
	[ResourceType] [nvarchar](255) NOT NULL,
	[ResourceKey] [nvarchar](255) NOT NULL,
	[CultureCode] [nvarchar](50) NULL,
	[ResourceValue] [nvarchar](4000) NULL
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[news_item](
	[Id] [nchar](10) NOT NULL,
	[BodyText] [nvarchar](4000) NULL,
	[HeaderText] [nvarchar](255) NULL,
	[AuthorName] [nvarchar](255) NULL,
	[TimeStamp] [datetime] NULL,
	[TopNewsIndicator] [int] NULL
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[LOV_ContentsGroup](
	[LOV_ContentsGroupID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](255) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[StartYear] [int] NULL,
	[EndYear] [int] NULL,
 CONSTRAINT [LOV_ContentsGroupID] PRIMARY KEY CLUSTERED 
(
	[LOV_ContentsGroupID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

------------------------------------------------------------------------------
--	Distribute import file in CMD database
------------------------------------------------------------------------------

CREATE procedure [dbo].[ImportResourceFile]
as
begin

	declare	@ResourceType nvarchar(255)
	declare	@ResourceKey nvarchar(255)
	declare @CultureCode nvarchar(10)
	declare	@ResourceValue nvarchar(4000)

	declare	@ResourceKeyID int
	truncate table EPRTRcms.dbo.tAT_ResourceKey
	truncate table EPRTRcms.dbo.tAT_ResourceValue

	declare row_cur cursor for 
		select ResourceType, ResourceKey, CultureCode, ResourceValue
		from EPRTRcms.dbo.DBResourcesImport

    begin transaction
    begin try
		open row_cur
		fetch next from row_cur into @ResourceType, @ResourceKey, @CultureCode, @ResourceValue
		while @@FETCH_STATUS = 0
		begin
			select @ResourceKeyID = 
				case when (
					select COUNT(*)
					from EPRTRcms.dbo.tAT_ResourceKey 
					where 
						ResourceKey = @ResourceKey
					and ResourceType = @ResourceType
					) > 0
				then 
					(select top 1 ResourceKeyID
					from EPRTRcms.dbo.tAT_ResourceKey 
					where 
						ResourceKey = @ResourceKey
					and ResourceType = @ResourceType)
				else
					0
				end		 
			if @ResourceKeyID = 0
			begin
				insert into EPRTRcms.dbo.tAT_ResourceKey
				values (@ResourceKey, @ResourceType, 0, 0, '')
				select @ResourceKeyID = (select MAX(ResourceKeyID) from EPRTRcms.dbo.tAT_ResourceKey)
			end
			insert into EPRTRcms.dbo.tAT_ResourceValue
			values(
				@ResourceKeyID,
				@CultureCode,
				@ResourceValue
				)
			fetch next from row_cur into @ResourceType, @ResourceKey, @CultureCode, @ResourceValue
		end
		close row_cur
		deallocate row_cur
		commit transaction
    end try
    begin catch
        -- Something went bad - dunno how to report....
        print ERROR_MESSAGE()
        rollback
    end catch
end
GO
/****** Object:  StoredProcedure [dbo].[AspNet_SqlCacheUpdateChangeIdStoredProcedure]    Script Date: 08/28/2009 16:16:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AspNet_SqlCacheUpdateChangeIdStoredProcedure] 
             @tableName NVARCHAR(450) 
         AS

         BEGIN 
             UPDATE dbo.AspNet_SqlCacheTablesForChangeNotification WITH (ROWLOCK) SET changeId = changeId + 1 
             WHERE tableName = @tableName
         END
GO
/****** Object:  StoredProcedure [dbo].[AspNet_SqlCacheUnRegisterTableStoredProcedure]    Script Date: 08/28/2009 16:16:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AspNet_SqlCacheUnRegisterTableStoredProcedure] 
             @tableName NVARCHAR(450) 
         AS
         BEGIN

         BEGIN TRAN
         DECLARE @triggerName AS NVARCHAR(3000) 
         DECLARE @fullTriggerName AS NVARCHAR(3000)
         SET @triggerName = REPLACE(@tableName, '[', '__o__') 
         SET @triggerName = REPLACE(@triggerName, ']', '__c__') 
         SET @triggerName = @triggerName + '_AspNet_SqlCacheNotification_Trigger' 
         SET @fullTriggerName = 'dbo.[' + @triggerName + ']' 

         /* Remove the table-row from the notification table */ 
         IF EXISTS (SELECT name FROM sysobjects WITH (NOLOCK) WHERE name = 'AspNet_SqlCacheTablesForChangeNotification' AND type = 'U') 
             IF EXISTS (SELECT name FROM sysobjects WITH (TABLOCKX) WHERE name = 'AspNet_SqlCacheTablesForChangeNotification' AND type = 'U') 
             DELETE FROM dbo.AspNet_SqlCacheTablesForChangeNotification WHERE tableName = @tableName 

         /* Remove the trigger */ 
         IF EXISTS (SELECT name FROM sysobjects WITH (NOLOCK) WHERE name = @triggerName AND type = 'TR') 
             IF EXISTS (SELECT name FROM sysobjects WITH (TABLOCKX) WHERE name = @triggerName AND type = 'TR') 
             EXEC('DROP TRIGGER ' + @fullTriggerName) 

         COMMIT TRAN
         END
GO
/****** Object:  StoredProcedure [dbo].[AspNet_SqlCacheRegisterTableStoredProcedure]    Script Date: 08/28/2009 16:16:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AspNet_SqlCacheRegisterTableStoredProcedure] 
             @tableName NVARCHAR(450) 
         AS
         BEGIN

         DECLARE @triggerName AS NVARCHAR(3000) 
         DECLARE @fullTriggerName AS NVARCHAR(3000)
         DECLARE @canonTableName NVARCHAR(3000) 
         DECLARE @quotedTableName NVARCHAR(3000) 

         /* Create the trigger name */ 
         SET @triggerName = REPLACE(@tableName, '[', '__o__') 
         SET @triggerName = REPLACE(@triggerName, ']', '__c__') 
         SET @triggerName = @triggerName + '_AspNet_SqlCacheNotification_Trigger' 
         SET @fullTriggerName = 'dbo.[' + @triggerName + ']' 

         /* Create the cannonicalized table name for trigger creation */ 
         /* Do not touch it if the name contains other delimiters */ 
         IF (CHARINDEX('.', @tableName) <> 0 OR 
             CHARINDEX('[', @tableName) <> 0 OR 
             CHARINDEX(']', @tableName) <> 0) 
             SET @canonTableName = @tableName 
         ELSE 
             SET @canonTableName = '[' + @tableName + ']' 

         /* First make sure the table exists */ 
         IF (SELECT OBJECT_ID(@tableName, 'U')) IS NULL 
         BEGIN 
             RAISERROR ('00000001', 16, 1) 
             RETURN 
         END 

         BEGIN TRAN
         /* Insert the value into the notification table */ 
         IF NOT EXISTS (SELECT tableName FROM dbo.AspNet_SqlCacheTablesForChangeNotification WITH (NOLOCK) WHERE tableName = @tableName) 
             IF NOT EXISTS (SELECT tableName FROM dbo.AspNet_SqlCacheTablesForChangeNotification WITH (TABLOCKX) WHERE tableName = @tableName) 
                 INSERT  dbo.AspNet_SqlCacheTablesForChangeNotification 
                 VALUES (@tableName, GETDATE(), 0)

         /* Create the trigger */ 
         SET @quotedTableName = QUOTENAME(@tableName, '''') 
         IF NOT EXISTS (SELECT name FROM sysobjects WITH (NOLOCK) WHERE name = @triggerName AND type = 'TR') 
             IF NOT EXISTS (SELECT name FROM sysobjects WITH (TABLOCKX) WHERE name = @triggerName AND type = 'TR') 
                 EXEC('CREATE TRIGGER ' + @fullTriggerName + ' ON ' + @canonTableName +'
                       FOR INSERT, UPDATE, DELETE AS BEGIN
                       SET NOCOUNT ON
                       EXEC dbo.AspNet_SqlCacheUpdateChangeIdStoredProcedure N' + @quotedTableName + '
                       END
                       ')
         COMMIT TRAN
         END
GO
/****** Object:  StoredProcedure [dbo].[AspNet_SqlCacheQueryRegisteredTablesStoredProcedure]    Script Date: 08/28/2009 16:16:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AspNet_SqlCacheQueryRegisteredTablesStoredProcedure] 
         AS
         SELECT tableName FROM dbo.AspNet_SqlCacheTablesForChangeNotification
GO
/****** Object:  StoredProcedure [dbo].[AspNet_SqlCachePollingStoredProcedure]    Script Date: 08/28/2009 16:16:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AspNet_SqlCachePollingStoredProcedure] AS
         SELECT tableName, changeId FROM dbo.AspNet_SqlCacheTablesForChangeNotification
         RETURN 0
GO
/****** Object:  Table [dbo].[ReviseResourceKey]    Script Date: 08/28/2009 16:16:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReviseResourceKey](
	[ResourceKeyID] [int] IDENTITY(1,1) NOT NULL,
	[ResourceKey] [nvarchar](200) NULL,
	[ResourceType] [nvarchar](250) NULL,
	[AllowHTML] [bit] NOT NULL,
	[KeyDescription] [nvarchar](255) NULL,
	[KeyTitle] [nvarchar](255) NULL,
	[ContentsGroupID] [int] NULL,
 CONSTRAINT [ResourceKeyID] PRIMARY KEY CLUSTERED 
(
	[ResourceKeyID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [ResourceKeyTypeUnique] UNIQUE NONCLUSTERED 
(
	[ResourceKey] ASC,
	[ResourceType] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StringResourceValue_old]    Script Date: 08/28/2009 16:16:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StringResourceValue_old](
	[StringResourceValueID] [int] IDENTITY(1,1) NOT NULL,
	[CultureCode] [nvarchar](10) NULL,
	[ResourceValue] [nvarchar](max) NOT NULL,
	[StringResourceKeyID] [int] NOT NULL
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Culture code from supported CultureInfo codes used by .NET, based on ISO standards.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StringResourceValue_old', @level2type=N'COLUMN',@level2name=N'CultureCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The resource value.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StringResourceValue_old', @level2type=N'COLUMN',@level2name=N'ResourceValue'
GO
/****** Object:  Table [dbo].[ReviseResourceValue]    Script Date: 08/28/2009 16:16:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReviseResourceValue](
	[ResourceValueID] [int] IDENTITY(1,1) NOT NULL,
	[ResourceKeyID] [int] NOT NULL,
	[CultureCode] [nvarchar](10) NULL,
	[ResourceValue] [nvarchar](max) NULL,
 CONSTRAINT [ResourceValueID] PRIMARY KEY CLUSTERED 
(
	[ResourceValueID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[StringResource]    Script Date: 08/28/2009 16:16:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[StringResource]
AS
SELECT     
	tAT_ResourceKey.ResourceType, 
	tAT_ResourceKey.ResourceKey, 
	tAT_ResourceValue.CultureCode, 
    tAT_ResourceValue.ResourceValue
FROM         
	tAT_ResourceKey 
INNER JOIN
	tAT_ResourceValue 
ON	tAT_ResourceKey.ResourceKeyID = tAT_ResourceValue.ResourceKeyID
union
select 
	ReviseResourceKey.ResourceType, 
	ReviseResourceKey.ResourceKey, 
	ReviseResourceValue.CultureCode, 
    ReviseResourceValue.ResourceValue
FROM         
	ReviseResourceKey 
INNER JOIN
	ReviseResourceValue 
ON	ReviseResourceKey.ResourceKeyID = ReviseResourceValue.ResourceKeyID
GO
/****** Object:  Default [DF__AspNet_Sq__notif__6EC0713C]    Script Date: 08/28/2009 16:16:36 ******/
ALTER TABLE [dbo].[AspNet_SqlCacheTablesForChangeNotification] ADD  DEFAULT (getdate()) FOR [notificationCreated]
GO
/****** Object:  Default [DF__AspNet_Sq__chang__6FB49575]    Script Date: 08/28/2009 16:16:36 ******/
ALTER TABLE [dbo].[AspNet_SqlCacheTablesForChangeNotification] ADD  DEFAULT ((0)) FOR [changeId]
GO
/****** Object:  ForeignKey [FK_ReviseResourceKey_LOV_WASTETYPE_LOV_ContentsGroup]    Script Date: 08/28/2009 16:16:38 ******/
ALTER TABLE [dbo].[ReviseResourceKey]  WITH CHECK ADD  CONSTRAINT [FK_ReviseResourceKey_LOV_WASTETYPE_LOV_ContentsGroup] FOREIGN KEY([ContentsGroupID])
REFERENCES [dbo].[LOV_ContentsGroup] ([LOV_ContentsGroupID])
GO
ALTER TABLE [dbo].[ReviseResourceKey] CHECK CONSTRAINT [FK_ReviseResourceKey_LOV_WASTETYPE_LOV_ContentsGroup]
GO
