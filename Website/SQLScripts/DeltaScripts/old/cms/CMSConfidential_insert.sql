/****** Script for SelectTopNRows command from SSMS  ******/
/*
SELECT *
  FROM [EPRTRcms].[dbo].[ReviseResourceKey] 
  --where resourcekey = 'ConfidentialityExplanationTrendPR1' 
  --resourcekeyid in (65,66,67);
  
  SELECT *
  FROM [EPRTRcms].[dbo].[ReviseResourceValue] where resourcekeyid in (65,66,67);
  
  SELECT count(1) ---*
  FROM [EPRTRcms].[dbo].[ReviseResourceValue] where CultureCode = 'en-GB'
  */

  INSERT INTO [ReviseResourceKey]([ResourceKey],[ResourceType],[AllowHTML],[KeyDescription],[KeyTitle],[ContentsGroupID])
     VALUES('ConfidentialityExplanationTrendPR1','Facility',1,'Short description of confidentiality. Will be shown in facility level time series for Pollutant Releases, Sheet: Confidentiality.','Time series - Facility level - Pollutant release',3)

 INSERT INTO [ReviseResourceKey]([ResourceKey],[ResourceType],[AllowHTML],[KeyDescription],[KeyTitle],[ContentsGroupID])
     VALUES('ConfidentialityExplanationTrendPT1','Facility',1,'Short description of confidentiality. Will be shown in facility level time series for PollutantTransfers, Sheet: Confidentiality.','Time series - Facility level - Pollutant transfer',3)

 INSERT INTO [ReviseResourceKey]([ResourceKey],[ResourceType],[AllowHTML],[KeyDescription],[KeyTitle],[ContentsGroupID])
     VALUES('ConfidentialityExplanationTrendWT1','Facility',1,'Short description of confidentiality. Will be shown in facility level time series for WasteTransfers, Sheet: Confidentiality.','Time series - Facility level - Waste transfer',3)

INSERT INTO [ReviseResourceValue]([ResourceKeyID],[CultureCode],[ResourceValue])
	VALUES((select ResourceKeyID from [dbo].[ReviseResourceKey] where ResourceType='Facility' and ResourceKey='ConfidentialityExplanationTrendPR1'),
	'en-GB','To be delivered by COM')
	
	INSERT INTO [ReviseResourceValue]([ResourceKeyID],[CultureCode],[ResourceValue])
	VALUES((select ResourceKeyID from [dbo].[ReviseResourceKey] where ResourceType='Facility' and ResourceKey='ConfidentialityExplanationTrendPT1'),
	'en-GB','To be delivered by COM')
	
	INSERT INTO [ReviseResourceValue]([ResourceKeyID],[CultureCode],[ResourceValue])
	VALUES((select ResourceKeyID from [dbo].[ReviseResourceKey] where ResourceType='Facility' and ResourceKey='ConfidentialityExplanationTrendWT1'),
	'en-GB','To be delivered by COM')
	
	
	
	