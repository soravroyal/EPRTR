--------------------------------------------------------------------------------------
--	Ticket #879: Add new pollutants:
--	Remove link between CO2 in EPER and:E-PRTR in time series: Add new pollutant for CO2 
--	in EPER (like PAHs in EPER). 
--	Coordinate with Bilbomatica of how to handle EPER resubmission 
--------------------------------------------------------------------------------------

DECLARE @GROUP INT
SELECT @GROUP=[LOV_PollutantID] FROM [dbo].[LOV_POLLUTANT] WHERE [Code]='GRHGAS'

INSERT INTO [EPRTRmaster].[dbo].[LOV_POLLUTANT]
           ([Code]
           ,[Name]
           ,[StartYear]
           ,[EndYear]
           ,[ParentID]
           ,[CAS]
           ,[eperPollutant_ID])
     VALUES
           ('CO2 in EPER'
           ,'Carbon dioxide (CO2)'
           ,2001
           ,2004
           ,@GROUP
           ,'124-38-9'
           ,5)
           

