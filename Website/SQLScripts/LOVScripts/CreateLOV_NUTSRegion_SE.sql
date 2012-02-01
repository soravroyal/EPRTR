-- NUTS 1 ---------------------------------------------------------------------
DECLARE @COUNTRY INT
SELECT @COUNTRY=[LOV_CountryID] FROM [dbo].[LOV_COUNTRY] WHERE [Code]='SE'
INSERT INTO [dbo].[LOV_NUTSREGION] (
    [Code],
    [Name],
    [StartYear],
    [ParentID],
	[LOV_CountryID]
)
 SELECT 'SE1', '�stra Sverige', 2007, NULL, @COUNTRY
  UNION ALL
 SELECT 'SE2', 'S�dra Sverige', 2007, NULL, @COUNTRY
  UNION ALL
 SELECT 'SE3', 'Norra Sverige', 2007, NULL, @COUNTRY
  UNION ALL
 SELECT 'SEZ', 'EXTRA-REGIO', 2007, NULL, @COUNTRY
GO

-- NUTS 2 ---------------------------------------------------------------------
DECLARE @COUNTRY INT, @NUTSSE1 INT, @NUTSSE2 INT, @NUTSSE3 INT, @NUTSSEZ INT
SELECT @COUNTRY=[LOV_CountryID] FROM [dbo].[LOV_COUNTRY] WHERE [Code]='SE'
SELECT @NUTSSE1=[LOV_NUTSRegionID] FROM [dbo].[LOV_NUTSREGION] WHERE [Code]='SE1'
SELECT @NUTSSE2=[LOV_NUTSRegionID] FROM [dbo].[LOV_NUTSREGION] WHERE [Code]='SE2'
SELECT @NUTSSE3=[LOV_NUTSRegionID] FROM [dbo].[LOV_NUTSREGION] WHERE [Code]='SE3'
SELECT @NUTSSEZ=[LOV_NUTSRegionID] FROM [dbo].[LOV_NUTSREGION] WHERE [Code]='SEZ'
INSERT INTO [dbo].[LOV_NUTSREGION] (
    [Code],
    [Name],
    [StartYear],
    [ParentID],
	[LOV_CountryID]
)
 SELECT 'SE11', 'Stockholm', 2007, @NUTSSE1, @COUNTRY
  UNION ALL
 SELECT 'SE12', '�stra Mellansverige', 2007, @NUTSSE1, @COUNTRY
  UNION ALL
 SELECT 'SE21', 'Sm�land med �arna', 2007, @NUTSSE2, @COUNTRY
  UNION ALL
 SELECT 'SE22', 'Sydsverige', 2007, @NUTSSE2, @COUNTRY
  UNION ALL
 SELECT 'SE23', 'V�stsverige', 2007, @NUTSSE2, @COUNTRY
  UNION ALL
 SELECT 'SE31', 'Norra Mellansverige', 2007, @NUTSSE3, @COUNTRY
  UNION ALL
 SELECT 'SE32', 'Mellersta Norrland', 2007, @NUTSSE3, @COUNTRY
  UNION ALL
 SELECT 'SE33', '�vre Norrland', 2007, @NUTSSE3, @COUNTRY
  UNION ALL
 SELECT 'SEZZ', 'Extra-Regio', 2007, @NUTSSEZ, @COUNTRY
GO

-- NUTS 3 ---------------------------------------------------------------------
DECLARE @COUNTRY INT, @NUTS2 INT
SELECT @COUNTRY=[LOV_CountryID] FROM [dbo].[LOV_COUNTRY] WHERE [Code]='SE'
SELECT @NUTS2=[LOV_NUTSRegionID] FROM [dbo].[LOV_NUTSREGION] WHERE [Code]='SE11'
INSERT INTO [dbo].[LOV_NUTSREGION] (
    [Code],
    [Name],
    [StartYear],
    [ParentID],
	[LOV_CountryID]
)
 SELECT 'SE110', 'Stockholms l�n', 2007, @NUTS2, @COUNTRY

SELECT @NUTS2=[LOV_NUTSRegionID] FROM [dbo].[LOV_NUTSREGION] WHERE [Code]='SE12'
INSERT INTO [dbo].[LOV_NUTSREGION] (
    [Code],
    [Name],
    [StartYear],
    [ParentID],
	[LOV_CountryID]
)
 SELECT 'SE121', 'Uppsala l�n', 2007, @NUTS2, @COUNTRY
  UNION ALL
 SELECT 'SE122', 'S�dermanlands l�n', 2007, @NUTS2, @COUNTRY
  UNION ALL
 SELECT 'SE123', '�sterg�tlands l�n', 2007, @NUTS2, @COUNTRY
  UNION ALL
 SELECT 'SE124', '�rebro l�n', 2007, @NUTS2, @COUNTRY
  UNION ALL
 SELECT 'SE125', 'V�stmanlands l�n', 2007, @NUTS2, @COUNTRY

SELECT @NUTS2=[LOV_NUTSRegionID] FROM [dbo].[LOV_NUTSREGION] WHERE [Code]='SE21'
INSERT INTO [dbo].[LOV_NUTSREGION] (
    [Code],
    [Name],
    [StartYear],
    [ParentID],
	[LOV_CountryID]
)
 SELECT 'SE211', 'J�nk�pings l�n', 2007, @NUTS2, @COUNTRY
  UNION ALL
 SELECT 'SE212', 'Kronobergs l�n', 2007, @NUTS2, @COUNTRY
  UNION ALL
 SELECT 'SE213', 'Kalmar l�n', 2007, @NUTS2, @COUNTRY
  UNION ALL
 SELECT 'SE214', 'Gotlands l�n', 2007, @NUTS2, @COUNTRY

SELECT @NUTS2=[LOV_NUTSRegionID] FROM [dbo].[LOV_NUTSREGION] WHERE [Code]='SE22'
INSERT INTO [dbo].[LOV_NUTSREGION] (
    [Code],
    [Name],
    [StartYear],
    [ParentID],
	[LOV_CountryID]
)
 SELECT 'SE221', 'Blekinge l�n', 2007, @NUTS2, @COUNTRY
  UNION ALL
 SELECT 'SE224', 'Sk�ne l�n', 2007, @NUTS2, @COUNTRY

SELECT @NUTS2=[LOV_NUTSRegionID] FROM [dbo].[LOV_NUTSREGION] WHERE [Code]='SE23'
INSERT INTO [dbo].[LOV_NUTSREGION] (
    [Code],
    [Name],
    [StartYear],
    [ParentID],
	[LOV_CountryID]
)
 SELECT 'SE231', 'Hallands l�n', 2007, @NUTS2, @COUNTRY
  UNION ALL
 SELECT 'SE232', 'V�stra G�talands l�n', 2007, @NUTS2, @COUNTRY

SELECT @NUTS2=[LOV_NUTSRegionID] FROM [dbo].[LOV_NUTSREGION] WHERE [Code]='SE31'
INSERT INTO [dbo].[LOV_NUTSREGION] (
    [Code],
    [Name],
    [StartYear],
    [ParentID],
	[LOV_CountryID]
)
 SELECT 'SE311', 'V�rmlands l�n', 2007, @NUTS2, @COUNTRY
  UNION ALL
 SELECT 'SE312', 'Dalarnas l�n', 2007, @NUTS2, @COUNTRY
  UNION ALL
 SELECT 'SE313', 'G�vleborgs l�n', 2007, @NUTS2, @COUNTRY

SELECT @NUTS2=[LOV_NUTSRegionID] FROM [dbo].[LOV_NUTSREGION] WHERE [Code]='SE32'
INSERT INTO [dbo].[LOV_NUTSREGION] (
    [Code],
    [Name],
    [StartYear],
    [ParentID],
	[LOV_CountryID]
)
 SELECT 'SE321', 'V�sternorrlands l�n', 2007, @NUTS2, @COUNTRY
  UNION ALL
 SELECT 'SE322', 'J�mtlands l�n', 2007, @NUTS2, @COUNTRY

SELECT @NUTS2=[LOV_NUTSRegionID] FROM [dbo].[LOV_NUTSREGION] WHERE [Code]='SE33'
INSERT INTO [dbo].[LOV_NUTSREGION] (
    [Code],
    [Name],
    [StartYear],
    [ParentID],
	[LOV_CountryID]
)
 SELECT 'SE331', 'V�sterbottens l�n', 2007, @NUTS2, @COUNTRY
  UNION ALL
 SELECT 'SE332', 'Norrbottens l�n', 2007, @NUTS2, @COUNTRY

SELECT @NUTS2=[LOV_NUTSRegionID] FROM [dbo].[LOV_NUTSREGION] WHERE [Code]='SEZZ'
INSERT INTO [dbo].[LOV_NUTSREGION] (
    [Code],
    [Name],
    [StartYear],
    [ParentID],
	[LOV_CountryID]
)
 SELECT 'SEZZZ', 'Extra-Regio', 2007, @NUTS2, @COUNTRY

GO
