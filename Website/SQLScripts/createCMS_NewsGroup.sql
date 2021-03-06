USE EPRTRcms
GO

--------------------------------------------------------------------------------------
--	Script updating the CMS database:
--	1.	The structure and contents of table "news_item"
--		gets reconstrucetd by using the multi language tables "NewsValue" and "NewsKey".
--	2.	A new view "News" is build presenting the data as in table "news_item".
--	3.	Constraints are created.
--	4.	All test data are copied.
--------------------------------------------------------------------------------------

IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'dbo.NewsValue') AND type in (N'U'))
	drop TABLE dbo.NewsValue
go
CREATE TABLE dbo.NewsValue(
	NewsValueID int IDENTITY(1,1) NOT NULL,
	NewsKeyID int NOT NULL,
	CultureCode nvarchar(10) not NULL,
	HeaderText nvarchar(max) not NULL,
	BodyText nvarchar(max) not NULL,
	AuthorName nvarchar(max) NULL,
	CreateDate datetime null,
	CONSTRAINT NewsValueID PRIMARY KEY CLUSTERED (NewsValueID)
)

IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'dbo.NewsKey') AND type in (N'U'))
	drop TABLE dbo.NewsKey
go
CREATE TABLE dbo.NewsKey(
	NewsKeyID int IDENTITY(1,1) NOT NULL,
	TopNewsIndicator bit not NULL,
	NewsDate datetime not null,
	CONSTRAINT NewsKeyID PRIMARY KEY CLUSTERED (NewsKeyID)
)

IF EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'dbo.FK_NewsValue_NewsKey') AND parent_object_id = OBJECT_ID(N'dbo.NewsValue'))
	ALTER TABLE dbo.NewsValue drop CONSTRAINT FK_NewsValue_NewsKey
ALTER TABLE dbo.NewsValue WITH CHECK 
ADD CONSTRAINT FK_NewsValue_NewsKey
FOREIGN KEY(NewsKeyID)
REFERENCES dbo.NewsKey (NewsKeyID)

IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'dbo.News'))
drop view News
go
CREATE VIEW News
AS
select 
	k.NewsKeyID, 
	k.TopNewsIndicator, 
	v.CultureCode, 
    v.HeaderText,
    v.BodyText,
    v.AuthorName,
    v.CreateDate
FROM         
	NewsKey k
INNER JOIN
	NewsValue v 
ON	k.NewsKeyID = v.NewsKeyID
go


declare	@NewsKeyID int
declare	@BodyText nvarchar(max)
declare	@HeaderText nvarchar(max)
declare @AuthorName nvarchar(255)
declare @TimeStamp datetime
declare	@TopNewsIndicator bit

declare row_cur cursor for 
	select BodyText,HeaderText,AuthorName,TimeStamp,TopNewsIndicator
	from EPRTRcms.dbo.news_item

begin transaction
begin try
	open row_cur
	fetch next from row_cur into @BodyText,@HeaderText,@AuthorName,@TimeStamp,@TopNewsIndicator
	while @@FETCH_STATUS = 0
	begin
		insert into EPRTRcms.dbo.NewsKey
		values (@TopNewsIndicator, @TimeStamp)
		select @NewsKeyID = (select MAX(NewsKeyID) from EPRTRcms.dbo.NewsKey)
		
		insert into EPRTRcms.dbo.NewsValue
		values(
			@NewsKeyID,
			'en-GB',
			@HeaderText,
			@BodyText,
			@AuthorName,
			@TimeStamp
			)
		fetch next from row_cur into @BodyText,@HeaderText,@AuthorName,@TimeStamp,@TopNewsIndicator
	end
	close row_cur
	deallocate row_cur
	commit transaction
end try
begin catch
    print ERROR_MESSAGE()
    rollback
end catch

select * from News