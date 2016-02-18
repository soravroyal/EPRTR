
USE [EPRTRcms]
GO

/*
* APPEND ContentsGroups
*/

declare @temp table (ResourceKey varchar(max), ResourceType varchar(max), KeyTitle varchar(max), ResourceValue varchar(max), lang nvarchar(10));

INSERT INTO @temp (ResourceKey, ResourceType, KeyTitle, ResourceValue, lang)
 VALUES
('HR0','LOV_NUTSREGION','Label, NUTSREGION','HRVATSKA','hr-HR'),
('HR03','LOV_NUTSREGION','Label, NUTSREGION','Jadranska Hrvatska','hr-HR'),
('HR031','LOV_NUTSREGION','Label, NUTSREGION','Primorsko-goranska županija','hr-HR'),
('HR032','LOV_NUTSREGION','Label, NUTSREGION','Licko-senjska županija','hr-HR'),
('HR033','LOV_NUTSREGION','Label, NUTSREGION','Zadarska županija','hr-HR'),
('HR034','LOV_NUTSREGION','Label, NUTSREGION','Šibensko-kninska županija','hr-HR'),
('HR035','LOV_NUTSREGION','Label, NUTSREGION','Splitsko-dalmatinska županija','hr-HR'),
('HR036','LOV_NUTSREGION','Label, NUTSREGION','Istarska županija','hr-HR'),
('HR037','LOV_NUTSREGION','Label, NUTSREGION','Dubrovacko-neretvanska županija','hr-HR'),
('HR04','LOV_NUTSREGION','Label, NUTSREGION','Kontinentalna Hrvatska','hr-HR'),
('HR041','LOV_NUTSREGION','Label, NUTSREGION','Grad Zagreb','hr-HR'),
('HR042','LOV_NUTSREGION','Label, NUTSREGION','Zagrebacka županija','hr-HR'),
('HR043','LOV_NUTSREGION','Label, NUTSREGION','Krapinsko-zagorska županija','hr-HR'),
('HR044','LOV_NUTSREGION','Label, NUTSREGION','Varaždinska županija','hr-HR'),
('HR045','LOV_NUTSREGION','Label, NUTSREGION','Koprivnicko-križevacka županija','hr-HR'),
('HR046','LOV_NUTSREGION','Label, NUTSREGION','Medimurska županija','hr-HR'),
('HR047','LOV_NUTSREGION','Label, NUTSREGION','Bjelovarsko-bilogorska županija','hr-HR'),
('HR048','LOV_NUTSREGION','Label, NUTSREGION','Viroviticko-podravska županija','hr-HR'),
('HR049','LOV_NUTSREGION','Label, NUTSREGION','Požeško-slavonska županija','hr-HR'),
('HR04A','LOV_NUTSREGION','Label, NUTSREGION','Brodsko-posavska županija','hr-HR'),
('HR04B','LOV_NUTSREGION','Label, NUTSREGION','Osjecko-baranjska županija','hr-HR'),
('HR04C','LOV_NUTSREGION','Label, NUTSREGION','Vukovarsko-srijemska županija','hr-HR'),
('HR04D','LOV_NUTSREGION','Label, NUTSREGION','Karlovacka županija','hr-HR'),
('HR04E','LOV_NUTSREGION','Label, NUTSREGION','Sisacko-moslavacka županija','hr-HR'),
('HRZ','LOV_NUTSREGION','Label, NUTSREGION','EXTRA-REGIO NUTS 1','hr-HR'),
('HRZZ','LOV_NUTSREGION','Label, NUTSREGION','Extra-Regio NUTS 2','hr-HR')

DECLARE @rrkid int
DECLARE @rrk varchar(max)
DECLARE @rrt varchar(max)
DECLARE @rval varchar(max)
DECLARE @rttl varchar(max)
DECLARE @lcg varchar(max)
Declare @rlng nvarchar(10)
/*
* APPEND ReviseResourceKeys with correct LOV_ContentsGroupIDs
*/

DECLARE cur CURSOR FOR SELECT ResourceKey, ResourceType, KeyTitle FROM @temp
OPEN cur

FETCH NEXT FROM cur INTO @rrk, @rrt, @rttl

WHILE @@FETCH_STATUS = 0 BEGIN
    --EXEC mysp @rkey, @rval ... -- call your sp here
	SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;
	BEGIN TRANSACTION;


INSERT INTO [dbo].[tAT_ResourceKey]
           ([ResourceKey],[ResourceType],[AllowHTML],[EditCMS],[KeyDescription])
	   VALUES
			(@rrk,@rrt,'1','0',@rttl);

	COMMIT TRANSACTION;

	FETCH NEXT FROM cur INTO @rrk, @rrt, @rttl
END

CLOSE cur    
DEALLOCATE cur


DECLARE cur CURSOR FOR SELECT ResourceKey, ResourceType, ResourceValue, lang FROM @temp
OPEN cur

FETCH NEXT FROM cur INTO @rrk, @rrt, @rval, @rlng

WHILE @@FETCH_STATUS = 0 BEGIN
    --EXEC mysp @rkey, @rval ... -- call your sp here

	SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;
	BEGIN TRANSACTION;
		SET @rrkid = (SELECT ResourceKeyID FROM [dbo].[tAT_ResourceKey] where [ResourceKey] = @rrk and [ResourceType] = @rrt);

		UPDATE [dbo].[tAT_ResourceValue]
			SET [ResourceValue] = @rval 
			WHERE [ResourceKeyID] = @rrkid and [CultureCode] = @rlng;

		IF @@ROWCOUNT = 0
		BEGIN
		
			INSERT INTO [dbo].[tAT_ResourceValue]
			([ResourceKeyID],[CultureCode],[ResourceValue])
				VALUES (@rrkid,@rlng,@rval);
		END
	COMMIT TRANSACTION;

	FETCH NEXT FROM cur INTO  @rrk, @rrt, @rval, @rlng
END

CLOSE cur    
DEALLOCATE cur