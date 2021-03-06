USE EPRTRmaster 
GO

set ANSI_NULLS ON
set QUOTED_IDENTIFIER ON
go


/***** ES  -  207 - 2001 and 2004 ***/


		INSERT INTO [EPRTRmaster].[dbo].[ADDRESS] 
		([StreetName], [City], [PostalCode], LOV_CountryID) 
		VALUES ('Agustín de Betancourt, 25','Madrid','28003', 207)
			
		Begin Transaction TranImportacion
		Commit Transaction TranImportacion
		
		INSERT INTO [EPRTRmaster].[dbo].[COMPETENTAUTHORITYPARTY] 
		([Name],[TelephoneCommunication] 
			  ,[FaxCommunication]  
			  ,[EmailCommunication]  
			  ,[ContactPersonName]  
			  ,[ReportingYear]
			  ,[LOV_CountryID] 
			  ,[AddressID])
		VALUES
		('Ministerio de medio ambiente y medio rural y marino-área de medio ambiente industrial', '+34902545350', '+ 34915348609', 'info@prtr-es.es', 'PRTR-España, Registro Estatal de Emisiones y Fuentes Contaminantes', 2004, 207,
		(Select MAX(AddressID) from [EPRTRmaster].[dbo].[ADDRESS] where LOV_CountryID = 207))
		
		Begin Transaction TranImportacion

		Commit Transaction TranImportacion
		
	/*	INSERT INTO [EPRTRmaster].[dbo].[COMPETENTAUTHORITYPARTY] 
		([Name],[TelephoneCommunication] 
			  ,[FaxCommunication]  
			  ,[EmailCommunication]  
			  ,[ContactPersonName]  
			  ,[ReportingYear]
			  ,[LOV_CountryID] 
			  ,[AddressID])
		VALUES
		('Ministerio de medio ambiente y medio rural y marino-área de medio ambiente industrial', '+34902545350', '+ 34915348609', 'info@prtr-es.es', 'PRTR-España, Registro Estatal de Emisiones y Fuentes Contaminantes', 2001, 207,
		(Select MAX(AddressID) from [EPRTRmaster].[dbo].[ADDRESS] where LOV_CountryID = 207))
		
		Begin Transaction TranImportacion

		Commit Transaction TranImportacion*/
		
	
	/*****END  ES  -  207 - 2001 and 2004 ***/		
	
	/***** SE  -  213 - 2001 and 2004 ***/


		INSERT INTO [EPRTRmaster].[dbo].[ADDRESS] 
		([StreetName], [City], [PostalCode], LOV_CountryID) 
		VALUES ('','Stockholm','106 48', 213)
		
		
		Begin Transaction TranImportacion
		Commit Transaction TranImportacion
		
		INSERT INTO [EPRTRmaster].[dbo].[COMPETENTAUTHORITYPARTY] 
		([Name],[TelephoneCommunication] 
			  ,[FaxCommunication]  
			  ,[EmailCommunication]  
			  ,[ContactPersonName]  
			  ,[ReportingYear]
			  ,[LOV_CountryID] 
			  ,[AddressID])
		VALUES
		('Swedish Environmental Protection Agency', '+46 86981000', '+46 8202925', 'registrator@naturvardsverket.se', '', 2004, 213,
		(Select MAX(AddressID) from [EPRTRmaster].[dbo].[ADDRESS] where LOV_CountryID = 213))
		
		Begin Transaction TranImportacion

		Commit Transaction TranImportacion
		
		/*INSERT INTO [EPRTRmaster].[dbo].[COMPETENTAUTHORITYPARTY] 
		([Name],[TelephoneCommunication] 
			  ,[FaxCommunication]  
			  ,[EmailCommunication]  
			  ,[ContactPersonName]  
			  ,[ReportingYear]
			  ,[LOV_CountryID] 
			  ,[AddressID])
		VALUES
		('Swedish Environmental Protection Agency', '+46 86981000', '+46 8202925', 'registrator@naturvardsverket.se', '', 2001, 213,
		(Select MAX(AddressID) from [EPRTRmaster].[dbo].[ADDRESS] where LOV_CountryID = 213))
		
		Begin Transaction TranImportacion

		Commit Transaction TranImportacion*/

	
/***** END - SE  -  213 - 2001 and 2004 ***/
	
	
/***** BE  -  22 - 2004 ***/
	
		INSERT INTO [EPRTRmaster].[dbo].[ADDRESS] 
		([StreetName], [City], [PostalCode], LOV_CountryID) 
		VALUES ('A.Van de Maelestraat 96','Erembodegem','9320', 22)
		
		
		Begin Transaction TranImportacion
		Commit Transaction TranImportacion
		
		INSERT INTO [EPRTRmaster].[dbo].[COMPETENTAUTHORITYPARTY] 
		([Name],[TelephoneCommunication] 
			  ,[FaxCommunication]  
			  ,[EmailCommunication]  
			  ,[ContactPersonName]  
			  ,[ReportingYear]
			  ,[LOV_CountryID] 
			  ,[AddressID])
		VALUES
		('VMM', '+32 53 72 64 45', '+32 53 71 10 78', 'info@vmm.be', 'Info', 2004, 22,
		(Select MAX(AddressID) from [EPRTRmaster].[dbo].[ADDRESS] where LOV_CountryID = 22))
		
		Begin Transaction TranImportacion

		Commit Transaction TranImportacion
		
	
		UPDATE [EPRTRmaster].[dbo].[COMPETENTAUTHORITYPARTY]
		   SET [Name] = 'VMM'
			  ,[TelephoneCommunication] = '+32 53 72 64 45'
			  ,[FaxCommunication] = '+32 53 71 10 78'
			  ,[EmailCommunication] = 'info@vmm.be'
			  ,[ContactPersonName] = 'Info'
			  ,[ReportingYear] = 2001
		      
		  where LOV_CountryID = 22 and ReportingYear = 2001
		  
		  Begin Transaction TranImportacion

		Commit Transaction TranImportacion

		UPDATE [EPRTRmaster].[dbo].[ADDRESS]
		   SET [StreetName] = 'A.Van de Maelestraat 96'
			  ,[City] = 'Erembodegem'
			  ,[PostalCode] = '9320'
		  FROM [EPRTRmaster].[dbo].[ADDRESS] INNER JOIN [EPRTRmaster].[dbo].[COMPETENTAUTHORITYPARTY]	on ([EPRTRmaster].[dbo].[COMPETENTAUTHORITYPARTY].AddressID = [EPRTRmaster].[dbo].[ADDRESS].AddressID)
		   Where [EPRTRmaster].[dbo].[COMPETENTAUTHORITYPARTY].LOV_CountryID = 22 and ReportingYear = 2001

-- END BE --

/***** EE  -  68 - 2004 ***/
		
		INSERT INTO [EPRTRmaster].[dbo].[ADDRESS] 
		([StreetName], [City], [PostalCode], LOV_CountryID) 
		VALUES ('Mustamäe tee 33','Tallinn','10616', 68)
		
		
		Begin Transaction TranImportacion
		Commit Transaction TranImportacion
		
		INSERT INTO [EPRTRmaster].[dbo].[COMPETENTAUTHORITYPARTY] 
		([Name],[TelephoneCommunication] 
			  ,[FaxCommunication]  
			  ,[EmailCommunication]  
			  ,[ContactPersonName]  
			  ,[ReportingYear]
			  ,[LOV_CountryID] 
			  ,[AddressID])
		VALUES
		('Estonian Environment Information Centre', '+372 673 7577', '+372 673 7599', 'EE-PRTR@ic.envir.ee', 'Estonian National PRTR', 2004, 68,
		(Select MAX(AddressID) from [EPRTRmaster].[dbo].[ADDRESS] where LOV_CountryID = 68))
		
		Begin Transaction TranImportacion

		Commit Transaction TranImportacion
		
		/*INSERT INTO [EPRTRmaster].[dbo].[COMPETENTAUTHORITYPARTY] 
		([Name],[TelephoneCommunication] 
			  ,[FaxCommunication]  
			  ,[EmailCommunication]  
			  ,[ContactPersonName]  
			  ,[ReportingYear]
			  ,[LOV_CountryID] 
			  ,[AddressID])
		VALUES
		('Estonian Environment Information Centre', '+372 673 7577', '+372 673 7599', 'EE-PRTR@ic.envir.ee', 'Estonian National PRTR', 2001, 68,
		(Select MAX(AddressID) from [EPRTRmaster].[dbo].[ADDRESS] where LOV_CountryID = 68))
		
		Begin Transaction TranImportacion

		Commit Transaction TranImportacion*/


-- END EE --






/*** UPDATE - Exist in the table COMPETENTAUTHORITYPARTY ***/

-- START AT = 15 --

UPDATE [EPRTRmaster].[dbo].[COMPETENTAUTHORITYPARTY]
   SET [Name] = 'BMLFUW'
      ,[TelephoneCommunication] = '+ 431 711 00 - 0'
      ,[FaxCommunication] = '+ 43 1 51522-7122'
      ,[EmailCommunication] = 'office@lebensministerium.at'
      ,[ContactPersonName] = 'Barbara Reiter-Tlapek'
      ,[ReportingYear] = 2004
  where LOV_CountryID = 15 and (ReportingYear = 2001 or ReportingYear = 2004)
	
	Begin Transaction TranImportacion
	Commit Transaction TranImportacion

UPDATE [EPRTRmaster].[dbo].[ADDRESS]
   SET [StreetName] = 'Stubenring 1'
      ,[City] = 'Wien'
      ,[PostalCode] = 'A-1012'
  FROM [EPRTRmaster].[dbo].[ADDRESS] INNER JOIN [EPRTRmaster].[dbo].[COMPETENTAUTHORITYPARTY]	on ([EPRTRmaster].[dbo].[COMPETENTAUTHORITYPARTY].AddressID = [EPRTRmaster].[dbo].[ADDRESS].AddressID)
   Where [EPRTRmaster].[dbo].[COMPETENTAUTHORITYPARTY].LOV_CountryID = 15 and (ReportingYear = 2001 or ReportingYear = 2004)

-- END AT --


-- START CY = 57 --

UPDATE [EPRTRmaster].[dbo].[COMPETENTAUTHORITYPARTY]
   SET [Name] = 'Department of Labour Inspection'
      ,[TelephoneCommunication] = '+357 22405635'
      ,[FaxCommunication] = '+357 22663788'
      ,[EmailCommunication] = 'pvassiliou@dli.mlsi.gov.cy'
      ,[ContactPersonName] = 'Mr. Philippos Vassiliou'
      ,[ReportingYear] = 2004
 
  where LOV_CountryID = 57 and (ReportingYear = 2001 or ReportingYear = 2004)

	Begin Transaction TranImportacion
	Commit Transaction TranImportacion
  
  UPDATE [EPRTRmaster].[dbo].[ADDRESS]
   SET [StreetName] = 'Appeli 12'
      ,[City] = 'Nicosia'
      ,[PostalCode] = '1493'
      
  FROM [EPRTRmaster].[dbo].[ADDRESS] INNER JOIN [EPRTRmaster].[dbo].[COMPETENTAUTHORITYPARTY]	on ([EPRTRmaster].[dbo].[COMPETENTAUTHORITYPARTY].AddressID = [EPRTRmaster].[dbo].[ADDRESS].AddressID)
   Where [EPRTRmaster].[dbo].[COMPETENTAUTHORITYPARTY].LOV_CountryID = 57 and (ReportingYear = 2001 or ReportingYear = 2004)

-- END CY --

  
  
  
-- START CZ = 58 --  

UPDATE [EPRTRmaster].[dbo].[COMPETENTAUTHORITYPARTY]
   SET [Name] = 'Ministry of the Environment of the Czech Republic'
      ,[TelephoneCommunication] = '+420 267 122 739'
      ,[FaxCommunication] = '+420 267 126 739'
      ,[EmailCommunication] = 'Jan.Marsak@mzp.cz'
      ,[ContactPersonName] = 'Jan Maršák'
      ,[ReportingYear] = 2004
   
  where LOV_CountryID = 58 and (ReportingYear = 2001 or ReportingYear = 2004)
  
 	Begin Transaction TranImportacion
	Commit Transaction TranImportacion
   
  UPDATE [EPRTRmaster].[dbo].[ADDRESS]
   SET [StreetName] = 'Vršovická 1442/65'
      ,[City] = 'Prague'
      ,[PostalCode] = '10010'
      
  FROM [EPRTRmaster].[dbo].[ADDRESS] INNER JOIN [EPRTRmaster].[dbo].[COMPETENTAUTHORITYPARTY]	on ([EPRTRmaster].[dbo].[COMPETENTAUTHORITYPARTY].AddressID = [EPRTRmaster].[dbo].[ADDRESS].AddressID)
   Where [EPRTRmaster].[dbo].[COMPETENTAUTHORITYPARTY].LOV_CountryID = 58 and (ReportingYear = 2001 or ReportingYear = 2004)

-- END CZ --

  
  
   
-- START DE = 81 --

UPDATE [EPRTRmaster].[dbo].[COMPETENTAUTHORITYPARTY]
   SET [Name] = 'Umweltbundesamt'
      ,[TelephoneCommunication] = '+49 (0)340 2103-2780'
      ,[FaxCommunication] = '+49 (0)340 2104-2780'
      ,[EmailCommunication] = 'joachim.heidemeier@uba.de'
      ,[ContactPersonName] = 'Joachim Heidemeier'
      ,[ReportingYear] = 2004
  where LOV_CountryID = 81 and (ReportingYear = 2001 or ReportingYear = 2004)

	Begin Transaction TranImportacion
	Commit Transaction TranImportacion

UPDATE [EPRTRmaster].[dbo].[ADDRESS]
   SET [StreetName] = 'Wörlitzer Platz 1'
      ,[City] = 'Dessau-Roßlau'
      ,[PostalCode] = 'D-06844'
      
  FROM [EPRTRmaster].[dbo].[ADDRESS] INNER JOIN [EPRTRmaster].[dbo].[COMPETENTAUTHORITYPARTY]	on ([EPRTRmaster].[dbo].[COMPETENTAUTHORITYPARTY].AddressID = [EPRTRmaster].[dbo].[ADDRESS].AddressID)
   Where [EPRTRmaster].[dbo].[COMPETENTAUTHORITYPARTY].LOV_CountryID = 81 and (ReportingYear = 2001 or ReportingYear = 2004)

-- END DE --


-- START DK = 59 --
 
UPDATE [EPRTRmaster].[dbo].[COMPETENTAUTHORITYPARTY]
   SET [Name] = 'Miljøstyrelsen'
      ,[TelephoneCommunication] = '+45 7254 4242'
      ,[FaxCommunication] = '+45 32660479'
      ,[EmailCommunication] = 'cht@mst.dk'
      ,[ContactPersonName] = 'Camilla Trolle'
      ,[ReportingYear] = 2004
  where LOV_CountryID = 59 and (ReportingYear = 2001 or ReportingYear = 2004)

	Begin Transaction TranImportacion
	Commit Transaction TranImportacion

UPDATE [EPRTRmaster].[dbo].[ADDRESS]
   SET [StreetName] = 'Strandgade 29'
      ,[City] = 'Copenhagen'
      ,[PostalCode] = '1401'
      
  FROM [EPRTRmaster].[dbo].[ADDRESS] INNER JOIN [EPRTRmaster].[dbo].[COMPETENTAUTHORITYPARTY]	on ([EPRTRmaster].[dbo].[COMPETENTAUTHORITYPARTY].AddressID = [EPRTRmaster].[dbo].[ADDRESS].AddressID)
   Where [EPRTRmaster].[dbo].[COMPETENTAUTHORITYPARTY].LOV_CountryID = 59 and (ReportingYear = 2001 or ReportingYear = 2004)

-- END DK --



-- START FI = 73 --
  
UPDATE [EPRTRmaster].[dbo].[COMPETENTAUTHORITYPARTY]
   SET [Name] = 'Keski-Suomen ympäristökeskus'
      ,[TelephoneCommunication] = '+358 20 490 110'
      ,[FaxCommunication] = '+358 20 490 5811'
      ,[EmailCommunication] = 'ksu@ymparisto.fi'
      ,[ContactPersonName] = ''
      ,[ReportingYear] = 2004
  where LOV_CountryID = 73 and (ReportingYear = 2001 or ReportingYear = 2004)

	Begin Transaction TranImportacion
	Commit Transaction TranImportacion

UPDATE [EPRTRmaster].[dbo].[ADDRESS]
   SET [StreetName] = 'PL 110'
      ,[City] = 'Jyväskylä'
      ,[PostalCode] = '40101'
      
  FROM [EPRTRmaster].[dbo].[ADDRESS] INNER JOIN [EPRTRmaster].[dbo].[COMPETENTAUTHORITYPARTY]	on ([EPRTRmaster].[dbo].[COMPETENTAUTHORITYPARTY].AddressID = [EPRTRmaster].[dbo].[ADDRESS].AddressID)
   Where [EPRTRmaster].[dbo].[COMPETENTAUTHORITYPARTY].LOV_CountryID = 73 and (ReportingYear = 2001 or ReportingYear = 2004)

-- END FI --



-- START FR = 74 --
  
UPDATE [EPRTRmaster].[dbo].[COMPETENTAUTHORITYPARTY]
   SET [Name] = 'Ministere de l´Ecologie, de l´Energie, du Developpement Durable et de la Mer'
      ,[TelephoneCommunication] = '+33 140819171'
      ,[FaxCommunication] = '+33 140819039'
      ,[EmailCommunication] = 'irep@developpement-durable.gouv.fr'
      ,[ContactPersonName] = ''
      ,[ReportingYear] = 2004
  where LOV_CountryID = 74 and (ReportingYear = 2001 or ReportingYear = 2004)
 
 	Begin Transaction TranImportacion
	Commit Transaction TranImportacion
  
  UPDATE [EPRTRmaster].[dbo].[ADDRESS]
   SET [StreetName] = 'la Grande Arche Paroi Nord'
      ,[City] = 'La Defense cedex'
      ,[PostalCode] = ''
      
  FROM [EPRTRmaster].[dbo].[ADDRESS] INNER JOIN [EPRTRmaster].[dbo].[COMPETENTAUTHORITYPARTY]	on ([EPRTRmaster].[dbo].[COMPETENTAUTHORITYPARTY].AddressID = [EPRTRmaster].[dbo].[ADDRESS].AddressID)
   Where [EPRTRmaster].[dbo].[COMPETENTAUTHORITYPARTY].LOV_CountryID = 74 and (ReportingYear = 2001 or ReportingYear = 2004)

-- END FR --

   
  
-- START HU = 100 --

UPDATE [EPRTRmaster].[dbo].[COMPETENTAUTHORITYPARTY]
   SET [Name] = 'Vidékfejlesztési Minisztérium'
      ,[TelephoneCommunication] = '+36 1 457 33 00'
      ,[FaxCommunication] = '+36 1 201 37 64'
      ,[EmailCommunication] = 'akos.fehervary@kvvm.gov.hu'
      ,[ContactPersonName] = ''
      ,[ReportingYear] = 2004
  where LOV_CountryID = 100 and (ReportingYear = 2001 or ReportingYear = 2004)
 
 	Begin Transaction TranImportacion
	Commit Transaction TranImportacion
 
 UPDATE [EPRTRmaster].[dbo].[ADDRESS]
   SET [StreetName] = 'Fő u. 44-50'
      ,[City] = ''
      ,[PostalCode] = '1011'
      
  FROM [EPRTRmaster].[dbo].[ADDRESS] INNER JOIN [EPRTRmaster].[dbo].[COMPETENTAUTHORITYPARTY]	on ([EPRTRmaster].[dbo].[COMPETENTAUTHORITYPARTY].AddressID = [EPRTRmaster].[dbo].[ADDRESS].AddressID)
   Where [EPRTRmaster].[dbo].[COMPETENTAUTHORITYPARTY].LOV_CountryID = 100 and (ReportingYear = 2001 or ReportingYear = 2004)

-- END HU --

 
 
 
-- START IE = 106 --

UPDATE [EPRTRmaster].[dbo].[COMPETENTAUTHORITYPARTY]
   SET [Name] = 'Environmental Protection Agency'
      ,[TelephoneCommunication] = '+353-53-9160600'
      ,[FaxCommunication] = '+353-53-9160699'
      ,[EmailCommunication] = 'aerreturns@epa.ie'
      ,[ContactPersonName] = 'Peter Cunningham'
      ,[ReportingYear] = 2004
  where LOV_CountryID = 106 and (ReportingYear = 2001 or ReportingYear = 2004)

	Begin Transaction TranImportacion
	Commit Transaction TranImportacion

UPDATE [EPRTRmaster].[dbo].[ADDRESS]
   SET [StreetName] = 'PO Box 3000 Johnstown Castle Estate'
      ,[City] = 'Co. Wexford'
      ,[PostalCode] = ''
      
  FROM [EPRTRmaster].[dbo].[ADDRESS] INNER JOIN [EPRTRmaster].[dbo].[COMPETENTAUTHORITYPARTY]	on ([EPRTRmaster].[dbo].[COMPETENTAUTHORITYPARTY].AddressID = [EPRTRmaster].[dbo].[ADDRESS].AddressID)
   Where [EPRTRmaster].[dbo].[COMPETENTAUTHORITYPARTY].LOV_CountryID = 106 and (ReportingYear = 2001 or ReportingYear = 2004)

-- END IE --



-- START IT = 109 --

UPDATE [EPRTRmaster].[dbo].[COMPETENTAUTHORITYPARTY]
   SET [Name] = 'ISPRA, Institute for Environment Protection and Research'
      ,[TelephoneCommunication] = '+39 (0)650072590'
      ,[FaxCommunication] = '+39 (0)650072657'
      ,[EmailCommunication] = 'andrea.gagna@isprambiente.it'
      ,[ContactPersonName] = 'Andrea Gagna'
      ,[ReportingYear] = 2004
  where LOV_CountryID = 109 and (ReportingYear = 2001 or ReportingYear = 2004)
  
  	Begin Transaction TranImportacion
	Commit Transaction TranImportacion
  
  UPDATE [EPRTRmaster].[dbo].[ADDRESS]
   SET [StreetName] = 'via Cesare Pavese 305'
      ,[City] = 'Roma'
      ,[PostalCode] = '00144'
      
  FROM [EPRTRmaster].[dbo].[ADDRESS] INNER JOIN [EPRTRmaster].[dbo].[COMPETENTAUTHORITYPARTY]	on ([EPRTRmaster].[dbo].[COMPETENTAUTHORITYPARTY].AddressID = [EPRTRmaster].[dbo].[ADDRESS].AddressID)
   Where [EPRTRmaster].[dbo].[COMPETENTAUTHORITYPARTY].LOV_CountryID = 109 and (ReportingYear = 2001 or ReportingYear = 2004)

-- END IT --

  

-- START LT = 128 --
 
UPDATE [EPRTRmaster].[dbo].[COMPETENTAUTHORITYPARTY]
   SET [Name] = 'Environmental Protection Agency'
      ,[TelephoneCommunication] = '+370 (5)2662808'
      ,[FaxCommunication] = '+370 (5)2662800'
      ,[EmailCommunication] = 'aaa@aaa.am.lt'
      ,[ContactPersonName] = ''
      ,[ReportingYear] = 2004
  where LOV_CountryID = 128 and (ReportingYear = 2001 or ReportingYear = 2004)

	Begin Transaction TranImportacion
	Commit Transaction TranImportacion

UPDATE [EPRTRmaster].[dbo].[ADDRESS]
   SET [StreetName] = 'Juozapaviciaus 9'
      ,[City] = 'Vilnius'
      ,[PostalCode] = ''
      
  FROM [EPRTRmaster].[dbo].[ADDRESS] INNER JOIN [EPRTRmaster].[dbo].[COMPETENTAUTHORITYPARTY]	on ([EPRTRmaster].[dbo].[COMPETENTAUTHORITYPARTY].AddressID = [EPRTRmaster].[dbo].[ADDRESS].AddressID)
   Where [EPRTRmaster].[dbo].[COMPETENTAUTHORITYPARTY].LOV_CountryID = 128 and (ReportingYear = 2001 or ReportingYear = 2004)

-- END LT --



-- START LU = 129 --

UPDATE [EPRTRmaster].[dbo].[COMPETENTAUTHORITYPARTY]
   SET [Name] = 'Administration de l´Environnement'
      ,[TelephoneCommunication] = '+352 405656648'
      ,[FaxCommunication] = '+352 485078'
      ,[EmailCommunication] = 'pierre.dornseiffer@aev.etat.lu'
      ,[ContactPersonName] = 'Pierre Dornseiffer'
      ,[ReportingYear] = 2004
   where LOV_CountryID = 129 and (ReportingYear = 2001 or ReportingYear = 2004)
 
 	Begin Transaction TranImportacion
	Commit Transaction TranImportacion
  
  UPDATE [EPRTRmaster].[dbo].[ADDRESS]
   SET [StreetName] = 'rue Ruppert 16'
      ,[City] = 'Luxembourg'
      ,[PostalCode] = '2453'
      
  FROM [EPRTRmaster].[dbo].[ADDRESS] INNER JOIN [EPRTRmaster].[dbo].[COMPETENTAUTHORITYPARTY]	on ([EPRTRmaster].[dbo].[COMPETENTAUTHORITYPARTY].AddressID = [EPRTRmaster].[dbo].[ADDRESS].AddressID)
   Where [EPRTRmaster].[dbo].[COMPETENTAUTHORITYPARTY].LOV_CountryID = 129 and (ReportingYear = 2001 or ReportingYear = 2004)

-- END LU --

  
  
-- START LV = 122 --

UPDATE [EPRTRmaster].[dbo].[COMPETENTAUTHORITYPARTY]
   SET [Name] = 'LVGMC'
      ,[TelephoneCommunication] = '+371 67032600'
      ,[FaxCommunication] = '+371 67145154'
      ,[EmailCommunication] = 'jelena.lazdane@lvgmc.lv'
      ,[ContactPersonName] = 'Jelena Lazdane'
      ,[ReportingYear] = 2004
   where LOV_CountryID = 122 and (ReportingYear = 2001 or ReportingYear = 2004)

	Begin Transaction TranImportacion
	Commit Transaction TranImportacion

UPDATE [EPRTRmaster].[dbo].[ADDRESS]
   SET [StreetName] = 'Maskavas iela 165'
      ,[City] = 'Rīga'
      ,[PostalCode] = 'LV-1019'
      
  FROM [EPRTRmaster].[dbo].[ADDRESS] INNER JOIN [EPRTRmaster].[dbo].[COMPETENTAUTHORITYPARTY]	on ([EPRTRmaster].[dbo].[COMPETENTAUTHORITYPARTY].AddressID = [EPRTRmaster].[dbo].[ADDRESS].AddressID)
   Where [EPRTRmaster].[dbo].[COMPETENTAUTHORITYPARTY].LOV_CountryID = 122 and (ReportingYear = 2001 or ReportingYear = 2004)

-- END LV --




-- START MT = 137 --

UPDATE [EPRTRmaster].[dbo].[COMPETENTAUTHORITYPARTY]
   SET [Name] = 'Malta Environment and Planning Authority'
      ,[TelephoneCommunication] = '+356 22900000'
      ,[FaxCommunication] = '+356 22902295'
      ,[EmailCommunication] = 'eprtr@mepa.org.mt'
      ,[ContactPersonName] = 'Rachel Decelis'
      ,[ReportingYear] = 2004
   where LOV_CountryID = 137 and (ReportingYear = 2001 or ReportingYear = 2004)

	Begin Transaction TranImportacion
	Commit Transaction TranImportacion

UPDATE [EPRTRmaster].[dbo].[ADDRESS]
   SET [StreetName] = 'St. Francis Ravelin'
      ,[City] = 'Floriana'
      ,[PostalCode] = 'Frn 1230'
      
  FROM [EPRTRmaster].[dbo].[ADDRESS] INNER JOIN [EPRTRmaster].[dbo].[COMPETENTAUTHORITYPARTY]	on ([EPRTRmaster].[dbo].[COMPETENTAUTHORITYPARTY].AddressID = [EPRTRmaster].[dbo].[ADDRESS].AddressID)
   Where [EPRTRmaster].[dbo].[COMPETENTAUTHORITYPARTY].LOV_CountryID = 137 and (ReportingYear = 2001 or ReportingYear = 2004)

-- END MT --




-- START NL = 156 --

UPDATE [EPRTRmaster].[dbo].[COMPETENTAUTHORITYPARTY]
   SET [Name] = 'The National Institute for Public Health and the Environment (RIVM)'
      ,[TelephoneCommunication] = '+31 (0)30-2743526'
      ,[FaxCommunication] = ''
      ,[EmailCommunication] = 'emissieregistratie@rivm.nl'
      ,[ContactPersonName] = ''
      ,[ReportingYear] = 2004
   where LOV_CountryID = 156 and (ReportingYear = 2001 or ReportingYear = 2004)
   
  	Begin Transaction TranImportacion
	Commit Transaction TranImportacion
  
  UPDATE [EPRTRmaster].[dbo].[ADDRESS]
   SET [StreetName] = 'Antonie van Leeuwenhoeklaan 9'
      ,[City] = 'Bilthoven'
      ,[PostalCode] = '3721MA'
      
  FROM [EPRTRmaster].[dbo].[ADDRESS] INNER JOIN [EPRTRmaster].[dbo].[COMPETENTAUTHORITYPARTY]	on ([EPRTRmaster].[dbo].[COMPETENTAUTHORITYPARTY].AddressID = [EPRTRmaster].[dbo].[ADDRESS].AddressID)
   Where [EPRTRmaster].[dbo].[COMPETENTAUTHORITYPARTY].LOV_CountryID = 156 and (ReportingYear = 2001 or ReportingYear = 2004)

-- END NL --

  
  
-- START NO = 166 --

UPDATE [EPRTRmaster].[dbo].[COMPETENTAUTHORITYPARTY]
   SET [Name] = 'Climate and Pollution Agency'
      ,[TelephoneCommunication] = '+47 22573400'
      ,[FaxCommunication] = '+47 22676706'
      ,[EmailCommunication] = 'postmottak@klif.no'
      ,[ContactPersonName] = ''
      ,[ReportingYear] = 2004
  where LOV_CountryID = 166 and (ReportingYear = 2001 or ReportingYear = 2004)

	Begin Transaction TranImportacion
	Commit Transaction TranImportacion

UPDATE [EPRTRmaster].[dbo].[ADDRESS]
   SET [StreetName] = 'PO Box 8100 Dep'
      ,[City] = 'Oslo'
      ,[PostalCode] = 'N-0032'
      
  FROM [EPRTRmaster].[dbo].[ADDRESS] INNER JOIN [EPRTRmaster].[dbo].[COMPETENTAUTHORITYPARTY]	on ([EPRTRmaster].[dbo].[COMPETENTAUTHORITYPARTY].AddressID = [EPRTRmaster].[dbo].[ADDRESS].AddressID)
   Where [EPRTRmaster].[dbo].[COMPETENTAUTHORITYPARTY].LOV_CountryID = 166 and (ReportingYear = 2001 or ReportingYear = 2004)

-- END NO --



-- START PL = 177 --
  
UPDATE [EPRTRmaster].[dbo].[COMPETENTAUTHORITYPARTY]
   SET [Name] = 'Ministry of the Environment'
      ,[TelephoneCommunication] = '+48 225792831'
      ,[FaxCommunication] = '+48 225792217'
      ,[EmailCommunication] = 'monika.kosinska@mos.gov.pl'
      ,[ContactPersonName] = 'Monika Kosińska'
      ,[ReportingYear] = 2004
  where LOV_CountryID = 177 and (ReportingYear = 2001 or ReportingYear = 2004)
  
  	Begin Transaction TranImportacion
	Commit Transaction TranImportacion
  
  UPDATE [EPRTRmaster].[dbo].[ADDRESS]
   SET [StreetName] = 'ul. Wawelska 52/54'
      ,[City] = 'Warszawa'
      ,[PostalCode] = '00-922'
      
  FROM [EPRTRmaster].[dbo].[ADDRESS] INNER JOIN [EPRTRmaster].[dbo].[COMPETENTAUTHORITYPARTY]	on ([EPRTRmaster].[dbo].[COMPETENTAUTHORITYPARTY].AddressID = [EPRTRmaster].[dbo].[ADDRESS].AddressID)
   Where [EPRTRmaster].[dbo].[COMPETENTAUTHORITYPARTY].LOV_CountryID = 177 and (ReportingYear = 2001 or ReportingYear = 2004)

-- END PL --

  
  
-- START PT = 178 --

UPDATE [EPRTRmaster].[dbo].[COMPETENTAUTHORITYPARTY]
   SET [Name] = 'Agencia Portuguesa do Ambiente'
     ,[TelephoneCommunication] = '+351 214728200'
      ,[FaxCommunication] = '+351 214719074'
      ,[EmailCommunication] = 'julieta.marcos@apambiente.pt'
      ,[ContactPersonName] = 'Julieta São Marcos'
      ,[ReportingYear] = 2004
   where LOV_CountryID = 178 and (ReportingYear = 2001 or ReportingYear = 2004)
  
  	Begin Transaction TranImportacion
	Commit Transaction TranImportacion
  
  UPDATE [EPRTRmaster].[dbo].[ADDRESS]
   SET [StreetName] = 'Rua da Murgueira 9/9A'
      ,[City] = 'Amadora'
      ,[PostalCode] = '2611-865'
      
  FROM [EPRTRmaster].[dbo].[ADDRESS] INNER JOIN [EPRTRmaster].[dbo].[COMPETENTAUTHORITYPARTY]	on ([EPRTRmaster].[dbo].[COMPETENTAUTHORITYPARTY].AddressID = [EPRTRmaster].[dbo].[ADDRESS].AddressID)
   Where [EPRTRmaster].[dbo].[COMPETENTAUTHORITYPARTY].LOV_CountryID = 178 and (ReportingYear = 2001 or ReportingYear = 2004)

-- END PT --

  


-- START SI = 202 --

UPDATE [EPRTRmaster].[dbo].[COMPETENTAUTHORITYPARTY]
   SET [Name] = 'Environmental Agency of the Republic of Slovenia'
      ,[TelephoneCommunication] = '+386 (0)14784000'
      ,[FaxCommunication] = '+386 (0)14784052'
      ,[EmailCommunication] = 'tone.kvasic@gov.si'
      ,[ContactPersonName] = 'Tone Kvasič'
      ,[ReportingYear] = 2004
  where LOV_CountryID = 202 and (ReportingYear = 2001 or ReportingYear = 2004)
  
  	Begin Transaction TranImportacion
	Commit Transaction TranImportacion
  
  UPDATE [EPRTRmaster].[dbo].[ADDRESS]
   SET [StreetName] = 'Vojkova cesta 1b'
      ,[City] = 'Ljubljana'
      ,[PostalCode] = 'SI-1001'
      
  FROM [EPRTRmaster].[dbo].[ADDRESS] INNER JOIN [EPRTRmaster].[dbo].[COMPETENTAUTHORITYPARTY]	on ([EPRTRmaster].[dbo].[COMPETENTAUTHORITYPARTY].AddressID = [EPRTRmaster].[dbo].[ADDRESS].AddressID)
   Where [EPRTRmaster].[dbo].[COMPETENTAUTHORITYPARTY].LOV_CountryID = 202 and (ReportingYear = 2001 or ReportingYear = 2004)

-- END SI --

  

-- START SK = 201 --

UPDATE [EPRTRmaster].[dbo].[COMPETENTAUTHORITYPARTY]
   SET [Name] = 'Slovenský hydrometeorologický ústav'
      ,[TelephoneCommunication] = '+421 259415291'
      ,[FaxCommunication] = '+421 254773602'
      ,[EmailCommunication] = 'daniela.durkovicova@shmu.sk'
      ,[ContactPersonName] = 'Daniela Ďurkovičová'
      ,[ReportingYear] = 2004
  where LOV_CountryID = 201 and (ReportingYear = 2001 or ReportingYear = 2004)
 
 	Begin Transaction TranImportacion
	Commit Transaction TranImportacion
  
  UPDATE [EPRTRmaster].[dbo].[ADDRESS]
   SET [StreetName] = 'Jeséniova 17'
      ,[City] = 'Bratislava'
      ,[PostalCode] = '83315'
 
   FROM [EPRTRmaster].[dbo].[ADDRESS] INNER JOIN [EPRTRmaster].[dbo].[COMPETENTAUTHORITYPARTY]	on ([EPRTRmaster].[dbo].[COMPETENTAUTHORITYPARTY].AddressID = [EPRTRmaster].[dbo].[ADDRESS].AddressID)
   Where [EPRTRmaster].[dbo].[COMPETENTAUTHORITYPARTY].LOV_CountryID = 201 and (ReportingYear = 2001 or ReportingYear = 2004)

GO
-- END SK --

 

/******INSERT not exist in table COMPETENTAUTHORITYPARTY for year 2001 or 2004*****/


-- START RO = 182 --

		INSERT INTO [EPRTRmaster].[dbo].[ADDRESS] 
		([StreetName], [City], [PostalCode], LOV_CountryID) 
		VALUES ('Splaiul Independenţei  294','Bucureşti, România','060031', 182)
		
		
		Begin Transaction TranImportacion
		Commit Transaction TranImportacion
		
		INSERT INTO [EPRTRmaster].[dbo].[COMPETENTAUTHORITYPARTY] 
		([Name],[TelephoneCommunication] 
			  ,[FaxCommunication]  
			  ,[EmailCommunication]  
			  ,[ContactPersonName]  
			  ,[ReportingYear]
			  ,[LOV_CountryID] 
			  ,[AddressID])
		VALUES
		('Agenţia Naţională pentru Protecţia Mediului', '+40 21 2071109', '+40 212071103', 'office@anpm.ro', 'Daniela Mocanu - Sanda Bichir', 2004, 182,
		(Select MAX(AddressID) from [EPRTRmaster].[dbo].[ADDRESS] where LOV_CountryID = 182))
		
		Begin Transaction TranImportacion

		Commit Transaction TranImportacion
		
	/*	INSERT INTO [EPRTRmaster].[dbo].[COMPETENTAUTHORITYPARTY] 
		([Name],[TelephoneCommunication] 
			  ,[FaxCommunication]  
			  ,[EmailCommunication]  
			  ,[ContactPersonName]  
			  ,[ReportingYear]
			  ,[LOV_CountryID] 
			  ,[AddressID])
		VALUES
		('Agenţia Naţională pentru Protecţia Mediului', '+40 21 2071109', '+40 212071103', 'office@anpm.ro', 'Daniela Mocanu - Sanda Bichir', 2001, 182,
		(Select MAX(AddressID) from [EPRTRmaster].[dbo].[ADDRESS] where LOV_CountryID = 182))
		
		Begin Transaction TranImportacion

		Commit Transaction TranImportacion*/


-- END RO --

 -- START UK = 234 --

		INSERT INTO [EPRTRmaster].[dbo].[ADDRESS] 
		([StreetName], [City], [PostalCode], LOV_CountryID) 
		VALUES ('Heriot Watt Research Park, Avenue North','Riccarton Clearwater House','', 234)
		
		
		Begin Transaction TranImportacion
		Commit Transaction TranImportacion
		
		INSERT INTO [EPRTRmaster].[dbo].[COMPETENTAUTHORITYPARTY] 
		([Name],[TelephoneCommunication] 
			  ,[FaxCommunication]  
			  ,[EmailCommunication]  
			  ,[ContactPersonName]  
			  ,[ReportingYear]
			  ,[LOV_CountryID] 
			  ,[AddressID])
		VALUES
		('SEPA', '+44 131 273 7242', '+44 131 449 7277', 'bob.boyce@sepa.org.uk', 'Bob.boyce', 2004, 234,
		(Select MAX(AddressID) from [EPRTRmaster].[dbo].[ADDRESS] where LOV_CountryID = 234))
		
		Begin Transaction TranImportacion

		Commit Transaction TranImportacion
		
		UPDATE [EPRTRmaster].[dbo].[COMPETENTAUTHORITYPARTY]
		   SET [Name] = 'SEPA'
			  ,[TelephoneCommunication] = '+44 131 273 7242'
			  ,[FaxCommunication] = '+44 131 449 7277'
			  ,[EmailCommunication] = 'bob.boyce@sepa.org.uk'
			  ,[ContactPersonName] = 'Bob.boyce'
			  ,[ReportingYear] = 2001
		  where LOV_CountryID = 234 and ReportingYear = 2001
		
	Begin Transaction TranImportacion
	Commit Transaction TranImportacion
		  
		  UPDATE [EPRTRmaster].[dbo].[ADDRESS]
		   SET [StreetName] = 'Heriot Watt Research Park, Avenue North'
			  ,[City] = 'Riccarton Clearwater House'
			  ,[PostalCode] = ''
		      
		  FROM [EPRTRmaster].[dbo].[ADDRESS] INNER JOIN [EPRTRmaster].[dbo].[COMPETENTAUTHORITYPARTY]	on ([EPRTRmaster].[dbo].[COMPETENTAUTHORITYPARTY].AddressID = [EPRTRmaster].[dbo].[ADDRESS].AddressID)
		   Where [EPRTRmaster].[dbo].[COMPETENTAUTHORITYPARTY].LOV_CountryID = 234 and ReportingYear = 2001

	


-- END UK --



-- START BG = 34 --

		INSERT INTO [EPRTRmaster].[dbo].[ADDRESS] 
		([StreetName], [City], [PostalCode], LOV_CountryID) 
		VALUES ('136 Tzar Boris III blvd.','Sofia','1618', 34)
		
		
		Begin Transaction TranImportacion
		Commit Transaction TranImportacion
		
		INSERT INTO [EPRTRmaster].[dbo].[COMPETENTAUTHORITYPARTY] 
		([Name],[TelephoneCommunication] 
			  ,[FaxCommunication]  
			  ,[EmailCommunication]  
			  ,[ContactPersonName]  
			  ,[ReportingYear]
			  ,[LOV_CountryID] 
			  ,[AddressID])
		VALUES
		('Executive Environment Agency', '+359 2 9559011', '+359 2 9559015', 'ncesd@nfp-bg.eionet.eu.int', '', 2004, 34,
		(Select MAX(AddressID) from [EPRTRmaster].[dbo].[ADDRESS] where LOV_CountryID = 34))
		
		Begin Transaction TranImportacion

		Commit Transaction TranImportacion
		
	/*	INSERT INTO [EPRTRmaster].[dbo].[COMPETENTAUTHORITYPARTY] 
		([Name],[TelephoneCommunication] 
			  ,[FaxCommunication]  
			  ,[EmailCommunication]  
			  ,[ContactPersonName]  
			  ,[ReportingYear]
			  ,[LOV_CountryID] 
			  ,[AddressID])
		VALUES
		('Executive Environment Agency', '+359 2 9559011', '+359 2 9559015', 'ncesd@nfp-bg.eionet.eu.int', '', 2001, 34,
		(Select MAX(AddressID) from [EPRTRmaster].[dbo].[ADDRESS] where LOV_CountryID = 34))
		
		Begin Transaction TranImportacion

		Commit Transaction TranImportacion*/
		


-- END BG --