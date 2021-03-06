------------------------------------------------------------------------------------------
--	The following script copys EPER NACE Coder into the EPRTR Database                  --
--                                                                                      --
--  Source tables in EPER:	sdeims_eper.dbo.NACE										--
--  Target tables in EPRTR:	EPRTRmaster.dbo.LOV_NACEACTIVITY							--
------------------------------------------------------------------------------------------

if not exists ( select * from EPRTRmaster.INFORMATION_SCHEMA.COLUMNS
	where TABLE_NAME='LOV_NACEACTIVITY' and COLUMN_NAME='NaceCodeID' )
alter table EPRTRmaster.dbo.LOV_NACEACTIVITY add NaceCodeID int
if not exists ( select * from EPRTRmaster.INFORMATION_SCHEMA.COLUMNS
	where TABLE_NAME='LOV_NACEACTIVITY' and COLUMN_NAME='Section' )
alter table EPRTRmaster.dbo.LOV_NACEACTIVITY add Section nvarchar (255)
if not exists ( select * from EPRTRmaster.INFORMATION_SCHEMA.COLUMNS
	where TABLE_NAME='LOV_NACEACTIVITY' and COLUMN_NAME='SubSection' )
alter table EPRTRmaster.dbo.LOV_NACEACTIVITY add SubSection nvarchar (255)
go

delete from EPRTRmaster.dbo.LOV_NACEACTIVITY
where Code like 'NACE_1.1%'

insert into EPRTRmaster.dbo.LOV_NACEACTIVITY
SELECT 
	'NACE_1.1:OTHER' as Code,
	' OTHER' as Name,
	2001 as StartYear,
	2004 as EndYear,
	null as ParentID,
	null,
	null,
	null

insert into EPRTRmaster.dbo.LOV_NACEACTIVITY
SELECT 
	'NACE_1.1:' + Section as Code,
	Text as Name,
	2001 as StartYear,
	2004 as EndYear,
	null as ParentID,
	NaceCodeID,
	Section,
	null
FROM sdeims_eper.dbo.NACE
WHERE 
	SubSection is null 
and Code is null
go

insert into EPRTRmaster.dbo.LOV_NACEACTIVITY
SELECT 
	'NACE_1.1:' + n.SubSection as Code,
	Text as Name,
	2001 as StartYear,
	2004 as EndYear,
	e.LOV_NACEActivityID as ParentID,
	n.NaceCodeID,
	null,
	n.SubSection
FROM sdeims_eper.dbo.NACE n
inner join EPRTRmaster.dbo.LOV_NACEACTIVITY e
on	e.Section collate database_default = n.Section
WHERE 
	n.SubSection is not null 
and n.Code is null

insert into EPRTRmaster.dbo.LOV_NACEACTIVITY
SELECT 
	'NACE_1.1:' + n.Code as Code,
	Text as Name,
	2001 as StartYear,
	2004 as EndYear,
	e.LOV_NACEActivityID as ParentID,
	n.NaceCodeID,
	n.Section,
	n.SubSection
FROM sdeims_eper.dbo.NACE n
inner join EPRTRmaster.dbo.LOV_NACEACTIVITY e
on	e.SubSection collate database_default = n.SubSection
WHERE 
	n.Code is not null
and n.SubSection is not null

insert into EPRTRmaster.dbo.LOV_NACEACTIVITY
SELECT 
	'NACE_1.1:' + n.Code as Code,
	Text as Name,
	2001 as StartYear,
	2004 as EndYear,
	e.LOV_NACEActivityID as ParentID,
	n.NaceCodeID,
	n.Section,
	n.SubSection
FROM sdeims_eper.dbo.NACE n
inner join EPRTRmaster.dbo.LOV_NACEACTIVITY e
on	e.Section collate database_default = n.Section
WHERE 
	n.Code is not null
and n.Section is not null
and n.SubSection is null

insert into EPRTRmaster.dbo.LOV_NACEACTIVITY
SELECT 
	'NACE_1.1:' + n.Code as Code,
	Text as Name,
	2001 as StartYear,
	2004 as EndYear,
	e.LOV_NACEActivityID as ParentID,
	n.NaceCodeID,
	null,
	n.SubSection
FROM sdeims_eper.dbo.NACE n
inner join EPRTRmaster.dbo.LOV_NACEACTIVITY e
on	e.Name = ' OTHER'
WHERE 
	n.Section is null
and n.SubSection is null

--drop table EPRTRmaster.dbo.NACEEXPORT
--create table EPRTRmaster.dbo.NACEEXPORT(TableName nvarchar(255),Code nvarchar(255),Culture nvarchar(255),Name nvarchar(255))
--insert into EPRTRmaster.dbo.NACEEXPORT
--select 
--	'LOV_NACEACTIVITY',
--	Code,
--	'',
--	Code + ' ' + ltrim(Name)
--from EPRTRmaster.dbo.LOV_NACEACTIVITY
--where NaceCodeID > ''