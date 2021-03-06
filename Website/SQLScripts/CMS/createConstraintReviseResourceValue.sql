USE EPRTRcms
GO

--------------------------------------------------------------------------------------
-- Updating the CMS database:
-- The following script puts a foreign key constraint on table ReviseResourceValue
--------------------------------------------------------------------------------------


	if object_id('tempReviseResourceValue')is not null DROP TABLE tempReviseResourceValue
	go
	select * into tempReviseResourceValue
	from ReviseResourceValue
	go

	if object_id('tempReviseResourceKey')is not null DROP TABLE tempReviseResourceKey
	go
	select * into tempReviseResourceKey
	from ReviseResourceKey
	go

	IF EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'dbo.FK_ReviseResourceValue_ReviseResourceKey') AND parent_object_id = OBJECT_ID(N'dbo.ReviseResourceValue'))
		ALTER TABLE dbo.ReviseResourceValue drop CONSTRAINT FK_ReviseResourceValue_ReviseResourceKey
	go

	truncate table ReviseResourceValue
	truncate table ReviseResourceKey
	go

	ALTER TABLE dbo.ReviseResourceValue with check
		ADD CONSTRAINT FK_ReviseResourceValue_ReviseResourceKey
		FOREIGN KEY(ResourceKeyID)
		REFERENCES dbo.ReviseResourceKey (ResourceKeyID)
	go

	insert into ReviseResourceKey
	select [ResourceKey]
		  ,[ResourceType]
		  ,[AllowHTML]
		  ,[KeyDescription]
		  ,[KeyTitle]
		  ,[ContentsGroupID] 
	from tempReviseResourceKey

	insert into ReviseResourceValue
	select r.[ResourceKeyID]
		  ,v.[CultureCode]
		  ,v.[ResourceValue]
	from tempReviseResourceValue v
	inner join
		tempReviseResourceKey k
	on v.ResourceKeyID = k.ResourceKeyID
	inner join
		ReviseResourceKey r
	on r.ResourceKey = k.ResourceKey

	drop table tempReviseResourceValue
	drop table tempReviseResourceKey
	
