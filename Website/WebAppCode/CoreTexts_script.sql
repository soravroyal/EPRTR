
/*
use EPRTRcms
go

--The following example shows how to enable OLE Automation procedures.
use eprtrcms
go
sp_configure 'show advanced options', 1;
GO
RECONFIGURE;
GO
sp_configure 'Ole Automation Procedures', 1;
GO
RECONFIGURE;
GO

Create FUNCTION [dbo].[uftReadfileAsTable]
(
@Path VARCHAR(255),
@Filename VARCHAR(100)
)
RETURNS 
@File TABLE
(
[LineNo] int identity(1,1), 
line varchar(8000)) 

AS
BEGIN

DECLARE  @objFileSystem int
        ,@objTextStream int,
		@objErrorObject int,
		@strErrorMessage Varchar(1000),
	    @Command varchar(1000),
	    @hr int,
		@String VARCHAR(8000),
		@YesOrNo INT

select @strErrorMessage='opening the File System Object'
EXECUTE @hr = sp_OACreate  'Scripting.FileSystemObject' , @objFileSystem OUT


if @HR=0 Select @objErrorObject=@objFileSystem, @strErrorMessage='Opening file "'+@path+'\'+@filename+'"',@command=@path+'\'+@filename

if @HR=0 execute @hr = sp_OAMethod   @objFileSystem  , 'OpenTextFile'
	, @objTextStream OUT, @command,1,false,0--for reading, FormatASCII

WHILE @hr=0
	BEGIN
	if @HR=0 Select @objErrorObject=@objTextStream, 
		@strErrorMessage='finding out if there is more to read in "'+@filename+'"'
	if @HR=0 execute @hr = sp_OAGetProperty @objTextStream, 'AtEndOfStream', @YesOrNo OUTPUT

	IF @YesOrNo<>0  break
	if @HR=0 Select @objErrorObject=@objTextStream, 
		@strErrorMessage='reading from the output file "'+@filename+'"'
	if @HR=0 execute @hr = sp_OAMethod  @objTextStream, 'Readline', @String OUTPUT
	INSERT INTO @file(line) SELECT @String
	END

if @HR=0 Select @objErrorObject=@objTextStream, 
	@strErrorMessage='closing the output file "'+@filename+'"'
if @HR=0 execute @hr = sp_OAMethod  @objTextStream, 'Close'


if @hr<>0
	begin
	Declare 
		@Source varchar(255),
		@Description Varchar(255),
		@Helpfile Varchar(255),
		@HelpID int
	
	EXECUTE sp_OAGetErrorInfo  @objErrorObject, 
		@source output,@Description output,@Helpfile output,@HelpID output
	Select @strErrorMessage='Error whilst '
			+coalesce(@strErrorMessage,'doing something')
			+', '+coalesce(@Description,'')
	insert into @File(line) select @strErrorMessage
	end
EXECUTE  sp_OADestroy @objTextStream
	-- Fill the table variable with the rows for your result set
	
	RETURN 
END
go


use eprtrcms
go
drop function dbo.Split
go
CREATE FUNCTION [dbo].[Split](@String varchar(8000), @Delimiter char(1))        
returns @temptable TABLE (items varchar(8000))        
as        
begin        
    declare @idx int        
    declare @slice varchar(8000)        
    --Returns a character string after truncating all trailing blanks.
    set @String = RTRIM(@String)   
    select @idx = 1        
        if len(@String)<1 or @String is null  return        
       
    while @idx!= 0        
    begin
    --Searches expression2 for expression1 and returns its starting position if found        
        set @idx = charindex(@Delimiter,@String)        
        if @idx!=0 
        --Returns the left part of a character string with the specified number of characters.       
            set @slice = left(@String,@idx - 1)        
        else        
            set @slice = @String        
           
        if(len(@slice)>0)   
            insert into @temptable(Items) values(@slice)        
  --right returns the right part of a character string with the specified number of characters.
        --len returns the number of characters of the specified string expression, excluding trailing blanks.
        set @String = right(@String,len(@String) - @idx)        
        if len(@String) = 0 break        
    end    
return        
end  
GO




*/


use EPRTRcms
go

if object_id('[dbo].[import_coretexts_from_textfile]')is not null DROP PROCEDURE [dbo].[import_coretexts_from_textfile]
GO
create procedure [dbo].[import_coretexts_from_textfile]
	@ppath nvarchar(250),
	@pfile nvarchar(250)
as
begin
declare @String nvarchar(max)
declare @Command nvarchar(255)
declare @ResourceType_in nvarchar(255)
declare @ResourceKey_in nvarchar(255)
declare @CultureCode_in nvarchar(10)
declare @ResourceValue_in nvarchar(max)
declare @startloc int
set @startloc = 0
declare @ncount int
declare @taeller int
set @taeller = 0
print('-----------------------------')
print('Importing texts from textfile')
if object_id('tempdb..#temp1')is not null DROP TABLE #temp1
Select line into #temp1 from
 Dbo.uftReadfileAsTable(@ppath ,@pfile)
where line not like '--%' 

set @ncount = (select COUNT(*) from #temp1)

DECLARE CoreText_Cursor CURSOR FOR
SELECT line 
FROM #temp1;
OPEN CoreText_Cursor;
FETCH NEXT FROM CoreText_Cursor into @String;
WHILE @@FETCH_STATUS = 0
BEGIN
set @taeller = @taeller + 1
--select name from tempdb..sysobjects where name like '#tmp%'


if object_id('tempdb..#tmp')is not null drop table #tmp
select IDENTITY(int, 1, 1) AS RowNumber ,* INTO #tmp from dbo.split(@String,'|')  
set @Command = (select items from #tmp where rownumber = 1)
set @ResourceType_in = (select items from #tmp where rownumber = 2)
set @ResourceKey_in = (select items from #tmp where rownumber = 3)
set @CultureCode_in = (select items from #tmp where rownumber = 4)
set @ResourceValue_in = (select items from #tmp where rownumber = 5)
if upper(@Command) = 'INSERTUPDATE'
begin
if (select COUNT(*) from dbo.tAT_ResourceKey where ResourceType = @ResourceType_in and ResourceKey = @ResourceKey_in) = 0
begin
--print ('insert')
insert into dbo.tAT_ResourceKey (ResourceType,ResourceKey,AllowHTML,EditCMS,KeyDescription) values(@ResourceType_in,@ResourceKey_in,0,0,'')
insert into dbo.tAT_ResourceValue(ResourceKeyID,CultureCode,ResourceValue)
values((select resourcekeyid from dbo.tAT_ResourceKey where ResourceType = @ResourceType_in and ResourceKey = @ResourceKey_in),
@CultureCode_in,@ResourceValue_in)
end
else
--print ('update')
update dbo.tAT_ResourceValue set ResourceValue = @ResourceValue_in 
where ResourceKeyID = (select resourcekeyid from dbo.tAT_ResourceKey where ResourceType = @ResourceType_in and ResourceKey = @ResourceKey_in)
and CultureCode = @CultureCode_in
end
else if upper(@Command) = 'DELETE'
begin
--print ('delete')
delete dbo.tAT_ResourceValue where resourcekeyid = (select resourcekeyid from dbo.tAT_ResourceKey where ResourceType = @ResourceType_in and ResourceKey = @ResourceKey_in) 
delete dbo.tAT_ResourceKey where ResourceType = @ResourceType_in and ResourceKey = @ResourceKey_in
end
if @taeller%1000 = 0 
print('Executing row ' + cast(@taeller as nvarchar) + ' of ' + cast(@ncount as nvarchar))
FETCH NEXT FROM CoreText_Cursor into @String;
END;
print('Executing row ' + cast(@taeller as nvarchar) + ' of ' + cast(@ncount as nvarchar))
CLOSE CoreText_Cursor;
DEALLOCATE CoreText_Cursor
end

