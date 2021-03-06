
---Set up versioning of cms texts
use testeprtrcms
go

--/*
ALTER TABLE dbo.ReviseResourceKey ADD CreatedDate datetime NULL
ALTER TABLE dbo.tAT_ResourceKey ADD CreatedDate datetime NULL
ALTER TABLE dbo.NewsKey ADD CreatedDate datetime NULL

ALTER TABLE dbo.ReviseResourceValue ADD ChangedDate datetime NULL
ALTER TABLE dbo.tAT_ResourceValue ADD ChangedDate datetime NULL
ALTER TABLE dbo.NewsValue ADD ChangedDate datetime NULL

--(ID,TABLEID,RESOURCEVALUEID,RESOURCEKEY(textvalue),CULTURECODE,RESOURCEVALUE,BODYTEXT,CHANGEDDATE)
if object_id('testEPRTRcms.dbo.ResourceValue_Historic')is not null DROP table ResourceValue_Historic
go
CREATE TABLE [dbo].[ResourceValue_Historic](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TableID] [int] NULL,
	[ResourceKey] [nvarchar](max) NULL,
	[CultureCode] [nvarchar](10) NULL,
	[ResourceValue] [nvarchar](max) NULL,
    [BodyText] [nvarchar](max) NULL,
    [ChangedDate] [datetime] NULL,
 CONSTRAINT [ResourceValue_Historic_ID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
go

if object_id('testEPRTRcms.dbo.xliff_impexp_tracking')is not null DROP table xliff_impexp_tracking
go
CREATE TABLE [dbo].[xliff_impexp_tracking](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ImportExport] [nvarchar](10) NULL,
	[xliff_Code] [nvarchar](10) NULL,
    [Date] [datetime] NULL,
 CONSTRAINT [xliff_impexp_tracking_ID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
go




---NewsValue table
---Update trigger
if object_id('testEPRTRcms.dbo.tr_NewsValue_UPDATE')is not null DROP trigger tr_NewsValue_UPDATE
go
CREATE TRIGGER tr_NewsValue_UPDATE
ON dbo.NewsValue
AFTER UPDATE
AS

--Make sure the column HeaderText or BodyText is updated
IF NOT UPDATE(HeaderText) AND NOT UPDATE(BodyText)
 RETURN

--Determine if HeaderText or BodyText was changed
  insert into dbo.ResourceValue_Historic 
  (TableID,ResourceKey,CultureCode,ResourceValue,BodyText,ChangedDate)
  select 1,b.NewsKeyID,b.CultureCode,b.HeaderText,b.BodyText,b.ChangedDate
  from inserted a
  inner join deleted b 
  on a.NewsValueID=b.NewsValueID
  WHERE b.HeaderText COLLATE Latin1_General_CS_AS <> a.HeaderText COLLATE Latin1_General_CS_AS
  or b.BodyText COLLATE Latin1_General_CS_AS <> a.BodyText COLLATE Latin1_General_CS_AS
  
  update dbo.NewsValue set changeddate = GETDATE() 
  where NewsValueID in (select a.NewsValueID from inserted a
  inner join deleted b 
  on a.NewsValueID=b.NewsValueID
  WHERE b.HeaderText COLLATE Latin1_General_CS_AS <> a.HeaderText COLLATE Latin1_General_CS_AS
  or b.BodyText COLLATE Latin1_General_CS_AS <> a.BodyText COLLATE Latin1_General_CS_AS)
 
go

---Insert trigger
IF EXISTS (SELECT name FROM sysobjects
      WHERE name = 'tr_NewsValue_ins' AND type = 'TR')
   DROP TRIGGER tr_NewsValue_ins
GO
-- Creating a trigger on a table.
CREATE TRIGGER tr_NewsValue_ins
on dbo.NewsValue
FOR INSERT
AS 
update dbo.NewsValue set changeddate = GETDATE()
where NewsValueID in (select NewsValueID from inserted)
GO






---ReviseResourceValue table
---update trigger
if object_id('testEPRTRcms.dbo.tr_ReviseResourceValue_UPDATE')is not null DROP trigger tr_ReviseResourceValue_UPDATE
go
CREATE TRIGGER tr_ReviseResourceValue_UPDATE
ON dbo.ReviseResourceValue
AFTER UPDATE
AS

--Make sure the column ResourceValue is updated
IF NOT UPDATE(ResourceValue)
 RETURN

--Determine if ResourceValue was changed
  insert into dbo.ResourceValue_Historic 
  (TableID,ResourceKey,CultureCode,ResourceValue,ChangedDate)
  select 2,c.ResourceKey,b.CultureCode,b.ResourceValue,b.ChangedDate
  from inserted a
  inner join deleted b 
  on a.ResourceValueID=b.ResourceValueID
  inner join dbo.reviseresourcekey c
  on c.resourcekeyid = b.resourcekeyid 
  WHERE b.ResourceValue COLLATE Latin1_General_CS_AS <> a.ResourceValue COLLATE Latin1_General_CS_AS
    
  update dbo.reviseresourcevalue set changeddate = GETDATE() 
  where resourcevalueid in (select b.resourcevalueid from inserted a
  inner join deleted b 
  on a.ResourceValueID=b.ResourceValueID
  WHERE b.ResourceValue COLLATE Latin1_General_CS_AS <> a.ResourceValue COLLATE Latin1_General_CS_AS)

go

---insert trigger
IF EXISTS (SELECT name FROM sysobjects
      WHERE name = 'tr_ReviseResourceValue_ins' AND type = 'TR')
   DROP TRIGGER tr_ReviseResourceValue_ins
GO
-- Creating a trigger on a table
CREATE TRIGGER tr_ReviseResourceValue_ins
on dbo.ReviseResourceValue
FOR INSERT
AS 
update dbo.ReviseResourceValue set changeddate = GETDATE()
where resourcevalueid in (select resourcevalueid from inserted)
GO






---tAT_ResourceValue table
--update trigger
if object_id('testEPRTRcms.dbo.tr_tAT_ResourceValue_UPDATE')is not null DROP trigger tr_tAT_ResourceValue_UPDATE
go
CREATE TRIGGER tr_tAT_ResourceValue_UPDATE
ON dbo.tAT_ResourceValue
AFTER UPDATE
AS

--Make sure the column ResourceValue is updated
IF NOT UPDATE(ResourceValue)
 RETURN

--Determine if ResourceValue was changed
IF EXISTS (SELECT *
           FROM inserted a
	   JOIN deleted b ON a.ResourceValueID=b.ResourceValueID
	   WHERE b.ResourceValue COLLATE Latin1_General_CS_AS <> a.ResourceValue COLLATE Latin1_General_CS_AS)
 
  insert into dbo.ResourceValue_Historic 
  (TableID,ResourceKey,CultureCode,ResourceValue,ChangedDate)
  select 3,c.ResourceKey,b.CultureCode,b.ResourceValue,b.ChangedDate
  from inserted a
  inner join deleted b 
  on a.ResourceValueID=b.ResourceValueID 
  inner join dbo.tAT_resourcekey c
  on c.resourcekeyid = b.resourcekeyid
  WHERE b.ResourceValue COLLATE Latin1_General_CS_AS <> a.ResourceValue COLLATE Latin1_General_CS_AS
  
  update dbo.tAT_resourcevalue set changeddate = GETDATE() 
  where resourcevalueid in (select b.resourcevalueid from inserted a
  inner join deleted b 
  on a.ResourceValueID=b.ResourceValueID
  WHERE b.ResourceValue COLLATE Latin1_General_CS_AS <> a.ResourceValue COLLATE Latin1_General_CS_AS)
 
go

---insert trigger
IF EXISTS (SELECT name FROM sysobjects
      WHERE name = 'tr_tAT_ResourceValue_ins' AND type = 'TR')
   DROP TRIGGER tr_tAT_ResourceValue_ins
GO
-- Creating a trigger on a nonexistent table.
CREATE TRIGGER tr_tAT_ResourceValue_ins
on dbo.tAT_ResourceValue
FOR INSERT
AS 
update dbo.tAT_ResourceValue set changeddate = GETDATE()
where resourcevalueid in (select resourcevalueid from inserted)
GO




---insert triggers on key tables
IF EXISTS (SELECT name FROM sysobjects
      WHERE name = 'tr_ReviseResourceKey' AND type = 'TR')
   DROP TRIGGER tr_ReviseResourceKey
GO
-- Creating a trigger on a table.
CREATE TRIGGER tr_ReviseResourceKey
on dbo.ReviseResourceKey
FOR INSERT
AS 
update dbo.ReviseResourceKey set createddate = GETDATE()
where resourcekeyid in (select resourcekeyid from inserted)
GO

IF EXISTS (SELECT name FROM sysobjects
      WHERE name = 'tr_tAT_ResourceKey' AND type = 'TR')
   DROP TRIGGER tr_tAT_ResourceKey
GO
-- Creating a trigger on a table.
CREATE TRIGGER tr_tAT_ResourceKey
on dbo.tAT_ResourceKey
FOR INSERT
AS 
update dbo.tAT_ResourceKey set createddate = GETDATE()
where resourcekeyid in (select resourcekeyid from inserted)
GO

IF EXISTS (SELECT name FROM sysobjects
      WHERE name = 'tr_NewsKey' AND type = 'TR')
   DROP TRIGGER tr_NewsKey
GO
-- Creating a trigger on a table.
CREATE TRIGGER tr_NewsKey
on dbo.NewsKey
FOR INSERT
AS 
update dbo.NewsKey set createddate = GETDATE()
where newskeyid in (select newskeyid from inserted)
GO




--Updating existing data with necessary values
update ReviseResourceKey set createddate = '2010/03/17'
update tAT_ResourceKey set createddate = '2010/03/17'
update NewsKey set createddate = '2010/03/17'
update ReviseResourceValue set changeddate = '2010/03/17'
update tAT_ResourceValue set changeddate = '2010/03/17'
update NewsValue set changeddate = '2010/03/17'




--update dbo.ReviseResourceValue set changeddate = null