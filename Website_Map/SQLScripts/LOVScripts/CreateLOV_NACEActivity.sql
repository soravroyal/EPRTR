-- TOP LEVEL ------------------------------------------------------------------
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '01', 'Crop and animal production, hunting and related service activities', 2007, NULL
  UNION ALL
 SELECT '02', 'Forestry and logging', 2007, NULL
  UNION ALL
 SELECT '03', 'Fishing and aquaculture', 2007, NULL
  UNION ALL
 SELECT '05', 'Mining of coal and lignite', 2007, NULL
  UNION ALL
 SELECT '06', 'Extraction of crude petroleum and natural gas', 2007, NULL
  UNION ALL
 SELECT '07', 'Mining of metal ores', 2007, NULL
  UNION ALL
 SELECT '08', 'Other mining and quarrying', 2007, NULL
  UNION ALL
 SELECT '09', 'Mining support service activities', 2007, NULL
  UNION ALL
 SELECT '10', 'Manufacture of food products', 2007, NULL
  UNION ALL
 SELECT '11', 'Manufacture of beverages', 2007, NULL
  UNION ALL
 SELECT '12', 'Manufacture of tobacco products', 2007, NULL
  UNION ALL
 SELECT '13', 'Manufacture of textiles', 2007, NULL
  UNION ALL
 SELECT '14', 'Manufacture of wearing apparel', 2007, NULL
  UNION ALL
 SELECT '15', 'Manufacture of leather and related products', 2007, NULL
  UNION ALL
 SELECT '16', 'Manufacture of wood and of products of wood and cork, except furniture; manufacture of articles of straw and plaiting materials', 2007, NULL
  UNION ALL
 SELECT '17', 'Manufacture of paper and paper products', 2007, NULL
  UNION ALL
 SELECT '18', 'Printing and reproduction of recorded media', 2007, NULL
  UNION ALL
 SELECT '19', 'Manufacture of coke and reined petroleum products', 2007, NULL
  UNION ALL
 SELECT '20', 'Manufacture of chemicals and chemical products', 2007, NULL
  UNION ALL
 SELECT '21', 'Manufacture of basic pharmaceutical products and pharmaceutical preparations', 2007, NULL
  UNION ALL
 SELECT '22', 'Manufacture of rubber and plastic products', 2007, NULL
  UNION ALL
 SELECT '23', 'Manufacture of other non-metallic mineral products', 2007, NULL
  UNION ALL
 SELECT '24', 'Manufacture of basic metals', 2007, NULL
  UNION ALL
 SELECT '25', 'Manufacture of fabricated metal products, except machinery and equipment', 2007, NULL
  UNION ALL
 SELECT '26', 'Manufacture of computer, electronic and optical products', 2007, NULL
  UNION ALL
 SELECT '27', 'Manufacture of electrical equipment', 2007, NULL
  UNION ALL
 SELECT '28', 'Manufacture of machinery and equipment n.e.c.', 2007, NULL
  UNION ALL
 SELECT '29', 'Manufacture of motor vehicles, trailers and semi-trailers', 2007, NULL
  UNION ALL
 SELECT '30', 'Manufacture of other transport equipment', 2007, NULL
  UNION ALL
 SELECT '31', 'Manufacture of furniture', 2007, NULL
  UNION ALL
 SELECT '32', 'Other manufacturing', 2007, NULL
  UNION ALL
 SELECT '33', 'Repair and installation of machinery and equipment', 2007, NULL
  UNION ALL
 SELECT '35', 'Electricity, gas, steam and air conditioning supply', 2007, NULL
  UNION ALL
 SELECT '36', 'Water collection, treatment and supply', 2007, NULL
  UNION ALL
 SELECT '37', 'Sewerage', 2007, NULL
  UNION ALL
 SELECT '38', 'Waste collection, treatment and disposal activities; materials recovery', 2007, NULL
  UNION ALL
 SELECT '39', 'Remediation activities and other waste management services', 2007, NULL
  UNION ALL
 SELECT '41', 'Construction of buildings', 2007, NULL
  UNION ALL
 SELECT '42', 'Civil engineering', 2007, NULL
  UNION ALL
 SELECT '43', 'Specialised construction activities', 2007, NULL
  UNION ALL
 SELECT '45', 'Wholesale and retail trade and repair of motor vehicles and motorcycles', 2007, NULL
  UNION ALL
 SELECT '46', 'Wholesale trade, except of motor vehicles and motorcycles', 2007, NULL
  UNION ALL
 SELECT '47', 'Retail trade, except of motor vehicles and motorcycles', 2007, NULL
  UNION ALL
 SELECT '49', 'Land transport and transport via pipelines', 2007, NULL
  UNION ALL
 SELECT '50', 'Water transport', 2007, NULL
  UNION ALL
 SELECT '51', 'Air transport', 2007, NULL
  UNION ALL
 SELECT '52', 'Warehousing and support activities for transportation', 2007, NULL
  UNION ALL
 SELECT '53', 'Postal and courier activities', 2007, NULL
  UNION ALL
 SELECT '55', 'Accommodation', 2007, NULL
  UNION ALL
 SELECT '56', 'Food and beverage service activities', 2007, NULL
  UNION ALL
 SELECT '58', 'Publishing activities', 2007, NULL
  UNION ALL
 SELECT '59', 'Motion picture, video and television programme production, sound recording and music publishing activities', 2007, NULL
  UNION ALL
 SELECT '60', 'Programming and broadcasting activities', 2007, NULL
  UNION ALL
 SELECT '61', 'Telecommunications', 2007, NULL
  UNION ALL
 SELECT '62', 'Computer programming, consultancy and related activities', 2007, NULL
  UNION ALL
 SELECT '63', 'Information service activities', 2007, NULL
  UNION ALL
 SELECT '64', 'Financial service activities, except insurance and pension funding', 2007, NULL
  UNION ALL
 SELECT '65', 'Insurance, reinsurance and pension funding, except compulsory social security', 2007, NULL
  UNION ALL
 SELECT '66', 'Activities auxiliary to financial services and insurance activities', 2007, NULL
  UNION ALL
 SELECT '68', 'Real estate activities', 2007, NULL
  UNION ALL
 SELECT '69', 'Legal and accounting activities', 2007, NULL
  UNION ALL
 SELECT '70', 'Activities of head offices; management consultancy activities', 2007, NULL
  UNION ALL
 SELECT '71', 'Architectural and engineering activities; technical testing and analysis', 2007, NULL
  UNION ALL
 SELECT '72', 'Scientific research and development', 2007, NULL
  UNION ALL
 SELECT '73', 'Advertising and market research', 2007, NULL
  UNION ALL
 SELECT '74', 'Other professional, scientiic and technical activities', 2007, NULL
  UNION ALL
 SELECT '75', 'Veterinary activities', 2007, NULL
  UNION ALL
 SELECT '77', 'Rental and leasing activities', 2007, NULL
  UNION ALL
 SELECT '78', 'Employment activities', 2007, NULL
  UNION ALL
 SELECT '79', 'Travel agency, tour operator and other reservation service and related activities', 2007, NULL
  UNION ALL
 SELECT '80', 'Security and investigation activities', 2007, NULL
  UNION ALL
 SELECT '81', 'Services to buildings and landscape activities', 2007, NULL
  UNION ALL
 SELECT '82', 'Office administrative, office support and other business support activities', 2007, NULL
  UNION ALL
 SELECT '84', 'Public administration and defence; compulsory social security', 2007, NULL
  UNION ALL
 SELECT '85', 'Education', 2007, NULL
  UNION ALL
 SELECT '86', 'Human health activities', 2007, NULL
  UNION ALL
 SELECT '87', 'Residential care activities', 2007, NULL
  UNION ALL
 SELECT '88', 'Social work activities without accommodation', 2007, NULL
  UNION ALL
 SELECT '90', 'Creative, arts and entertainment activities', 2007, NULL
  UNION ALL
 SELECT '91', 'Libraries, archives, museums and other cultural activities', 2007, NULL
  UNION ALL
 SELECT '92', 'Gambling and betting activities', 2007, NULL
  UNION ALL
 SELECT '93', 'Sports activities and amusement and recreation activities', 2007, NULL
  UNION ALL
 SELECT '94', 'Activities of membership organisations', 2007, NULL
  UNION ALL
 SELECT '95', 'Repair of computers and personal and household goods', 2007, NULL
  UNION ALL
 SELECT '96', 'Other personal service activities', 2007, NULL
  UNION ALL
 SELECT '97', 'Activities of households as employers of domestic personnel', 2007, NULL
  UNION ALL
 SELECT '98', 'Undifferentiated goods- and services-producing activities of private households for own use', 2007, NULL
  UNION ALL
 SELECT '99', 'Activities of extraterritorial organisations and bodies', 2007, NULL
GO

-- SECOND LEVEL ---------------------------------------------------------------
DECLARE @NACE INT
SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='01'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '01.1', 'Growing of non-perennial crops', 2007, @NACE
  UNION ALL
 SELECT '01.2', 'Growing of perennial crops', 2007, @NACE
  UNION ALL
 SELECT '01.3', 'Plant propagation', 2007, @NACE
  UNION ALL
 SELECT '01.4', 'Animal Production', 2007, @NACE
  UNION ALL
 SELECT '01.5', 'Mixed farming', 2007, @NACE
  UNION ALL
 SELECT '01.6', 'Support activities to agriculture and post-harvest crop activities', 2007, @NACE
  UNION ALL
 SELECT '01.7', 'Hunting, trapping and related service activities', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='02'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '02.1', 'Silviculture and other forestry activities', 2007, @NACE
  UNION ALL
 SELECT '02.2', 'Logging', 2007, @NACE
  UNION ALL
 SELECT '02.3', 'Gathering of wild growing non-wood products', 2007, @NACE
  UNION ALL
 SELECT '02.4', 'Support services to forestry', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='03'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '03.1', 'Fishing', 2007, @NACE
  UNION ALL
 SELECT '03.2', 'Aquaculture', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='05'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '05.1', 'Mining of hard coal', 2007, @NACE
  UNION ALL
 SELECT '05.2', 'Mining of lignite', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='06'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '06.1', 'Extraction of crude petroleum', 2007, @NACE
  UNION ALL
 SELECT '06.2', 'Extraction of natural gas', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='07'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '07.1', 'Mining of iron ores', 2007, @NACE
  UNION ALL
 SELECT '07.2', 'Mining of non-ferrous metal ores', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='08'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '08.1', 'Quarrying of stone, sand and clay', 2007, @NACE
  UNION ALL
 SELECT '08.9', 'Mining and quarrying n.e.c.', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='09'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '09.1', 'Support activities for petroleum and natural gas extraction', 2007, @NACE
  UNION ALL
 SELECT '09.9', 'Support activities for other mining and quarrying', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='10'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '10.1', 'Processing and preserving of meat and production of meat products', 2007, @NACE
  UNION ALL
 SELECT '10.2', 'Processing and preserving of ish, crustaceans and molluscs', 2007, @NACE
  UNION ALL
 SELECT '10.3', 'Processing and preserving of fruit and vegetables', 2007, @NACE
  UNION ALL
 SELECT '10.4', 'Manufacture of vegetable and animal oils and fats', 2007, @NACE
  UNION ALL
 SELECT '10.5', 'Manufacture of dairy products', 2007, @NACE
  UNION ALL
 SELECT '10.6', 'Manufacture of grain mill products, starches and starch products', 2007, @NACE
  UNION ALL
 SELECT '10.7', 'Manufacture of bakery and farinaceous products', 2007, @NACE
  UNION ALL
 SELECT '10.8', 'Manufacture of other food products', 2007, @NACE
  UNION ALL
 SELECT '10.9', 'Manufacture of prepared animal feeds', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='11'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '11.0', 'Manufacture of beverages', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='12'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '12.0', 'Manufacture of tobacco products', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='13'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '13.1', 'Preparation and spinning of textile fibres', 2007, @NACE
  UNION ALL
 SELECT '13.2', 'Weaving of textiles', 2007, @NACE
  UNION ALL
 SELECT '13.3', 'Finishing of textiles', 2007, @NACE
  UNION ALL
 SELECT '13.9', 'Manufacture of other textiles', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='14'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '14.1', 'Manufacture of wearing apparel, except fur apparel', 2007, @NACE
  UNION ALL
 SELECT '14.2', 'Manufacture of articles of fur', 2007, @NACE
  UNION ALL
 SELECT '14.3', 'Manufacture of knitted and crocheted apparel', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='15'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '15.1', 'Tanning and dressing of leather; manufacture of luggage, handbags, saddlery and harness; dressing and dyeing of fur', 2007, @NACE
  UNION ALL
 SELECT '15.2', 'Manufacture of footwear', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='16'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '16.1', 'Sawmilling and planing of wood', 2007, @NACE
  UNION ALL
 SELECT '16.2', 'Manufacture of products of wood, cork, straw and plaiting materials', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='17'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '17.1', 'Manufacture of pulp, paper and paperboard', 2007, @NACE
  UNION ALL
 SELECT '17.2', 'Manufacture of articles of paper and paperboard', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='18'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '18.1', 'Printing and service activities related to printing', 2007, @NACE
  UNION ALL
 SELECT '18.2', 'Reproduction of recorded media', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='19'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '19.1', 'Manufacture of coke oven products', 2007, @NACE
  UNION ALL
 SELECT '19.2', 'Manufacture of refined petroleum products', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='20'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '20.1', 'Manufacture of basic chemicals, fertilisers and nitrogen compounds, plastics and synthetic rubber in primary forms', 2007, @NACE
  UNION ALL
 SELECT '20.2', 'Manufacture of pesticides and other agrochemical products', 2007, @NACE
  UNION ALL
 SELECT '20.3', 'Manufacture of paints, varnishes and similar coatings, printing ink and mastics', 2007, @NACE
  UNION ALL
 SELECT '20.4', 'Manufacture of soap and detergents, cleaning and polishing preparations, perfumes ', 2007, @NACE
  UNION ALL
 SELECT '20.5', 'Manufacture of other chemical products', 2007, @NACE
  UNION ALL
 SELECT '20.6', 'Manufacture of man-made fibres', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='21'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '21.1', 'Manufacture of basic pharmaceutical products', 2007, @NACE
  UNION ALL
 SELECT '21.2', 'Manufacture of pharmaceutical preparations', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='22'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '22.1', 'Manufacture of rubber products', 2007, @NACE
  UNION ALL
 SELECT '22.2', 'Manufacture of plastics products', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='23'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '23.1', 'Manufacture of glass and glass products', 2007, @NACE
  UNION ALL
 SELECT '23.2', 'Manufacture of refractory products', 2007, @NACE
  UNION ALL
 SELECT '23.3', 'Manufacture of clay building materials', 2007, @NACE
  UNION ALL
 SELECT '23.4', 'Manufacture of other porcelain and ceramic products', 2007, @NACE
  UNION ALL
 SELECT '23.5', 'Manufacture of cement, lime and plaster', 2007, @NACE
  UNION ALL
 SELECT '23.6', 'Manufacture of articles of concrete, cement and plaster', 2007, @NACE
  UNION ALL
 SELECT '23.7', 'Cutting, shaping and finishing of stone', 2007, @NACE
  UNION ALL
 SELECT '23.9', 'Manufacture of abrasive products and non-metallic mineral products n.e.c.', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='24'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '24.1', 'Manufacture of basic iron and steel and of ferro-alloys', 2007, @NACE
  UNION ALL
 SELECT '24.2', 'Manufacture of tubes, pipes, hollow profiles and related fittings, of steel', 2007, @NACE
  UNION ALL
 SELECT '24.3', 'Manufacture of other products of first processing of steel', 2007, @NACE
  UNION ALL
 SELECT '24.4', 'Manufacture of basic precious and other non-ferrous metals', 2007, @NACE
  UNION ALL
 SELECT '24.5', 'Casting of metals', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='25'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '25.1', 'Manufacture of structural metal products', 2007, @NACE
  UNION ALL
 SELECT '25.2', 'Manufacture of tanks, reservoirs and containers of metal', 2007, @NACE
  UNION ALL
 SELECT '25.3', 'Manufacture of steam generators, except central heating hot water boilers', 2007, @NACE
  UNION ALL
 SELECT '25.4', 'Manufacture of weapons and ammunition', 2007, @NACE
  UNION ALL
 SELECT '25.5', 'Forging, pressing, stamping and roll-forming of metal; powder metallurgy', 2007, @NACE
  UNION ALL
 SELECT '25.6', 'Treatment and coating of metals; machining', 2007, @NACE
  UNION ALL
 SELECT '25.7', 'Manufacture of cutlery, tools and general hardware', 2007, @NACE
  UNION ALL
 SELECT '25.9', 'Manufacture of other fabricated metal products', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='26'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '26.1', 'Manufacture of electronic components and boards', 2007, @NACE
  UNION ALL
 SELECT '26.2', 'Manufacture of computers and peripheral equipment', 2007, @NACE
  UNION ALL
 SELECT '26.3', 'Manufacture of communication equipment', 2007, @NACE
  UNION ALL
 SELECT '26.4', 'Manufacture of consumer electronics', 2007, @NACE
  UNION ALL
 SELECT '26.5', 'Manufacture of instruments and appliances for measuring, testing and navigation; watches and clocks', 2007, @NACE
  UNION ALL
 SELECT '26.6', 'Manufacture of irradiation, electromedical and electrotherapeutic equipment', 2007, @NACE
  UNION ALL
 SELECT '26.7', 'Manufacture of optical instruments and photographic equipment', 2007, @NACE
  UNION ALL
 SELECT '26.8', 'Manufacture of magnetic and optical media', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='27'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '27.1', 'Manufacture of electric motors, generators, transformers and electricity distribution and control apparatus', 2007, @NACE
  UNION ALL
 SELECT '27.2', 'Manufacture of batteries and accumulators', 2007, @NACE
  UNION ALL
 SELECT '27.3', 'Manufacture of wiring and wiring devices', 2007, @NACE
  UNION ALL
 SELECT '27.4', 'Manufacture of electric lighting equipment', 2007, @NACE
  UNION ALL
 SELECT '27.5', 'Manufacture of domestic appliances', 2007, @NACE
  UNION ALL
 SELECT '27.9', 'Manufacture of other electrical equipment', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='28'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '28.1', 'Manufacture of general-purpose machinery', 2007, @NACE
  UNION ALL
 SELECT '28.2', 'Manufacture of other general-purpose machinery', 2007, @NACE
  UNION ALL
 SELECT '28.3', 'Manufacture of agricultural and forestry machinery', 2007, @NACE
  UNION ALL
 SELECT '28.4', 'Manufacture of metal forming machinery and machine tools', 2007, @NACE
  UNION ALL
 SELECT '28.9', 'Manufacture of other special-purpose machinery', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='29'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '29.1', 'Manufacture of motor vehicles', 2007, @NACE
  UNION ALL
 SELECT '29.2', 'Manufacture of bodies (coachwork) for motor vehicles; manufacture of trailers and semi trailers', 2007, @NACE
  UNION ALL
 SELECT '29.3', 'Manufacture of parts and accessories for motor vehicles', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='30'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '30.1', 'Building of ships and boats', 2007, @NACE
  UNION ALL
 SELECT '30.2', 'Manufacture of railway locomotives and rolling stock', 2007, @NACE
  UNION ALL
 SELECT '30.3', 'Manufacture of air and spacecraft and related machinery', 2007, @NACE
  UNION ALL
 SELECT '30.4', 'Manufacture of military fighting vehicles', 2007, @NACE
  UNION ALL
 SELECT '30.9', 'Manufacture of transport equipment n.e.c.', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='31'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '31.0', 'Manufacture of furniture', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='32'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '32.1', 'Manufacture of jewellery, bijouterie and related articles', 2007, @NACE
  UNION ALL
 SELECT '32.2', 'Manufacture of musical instruments', 2007, @NACE
  UNION ALL
 SELECT '32.3', 'Manufacture of sports goods', 2007, @NACE
  UNION ALL
 SELECT '32.4', 'Manufacture of games and toys', 2007, @NACE
  UNION ALL
 SELECT '32.5', 'Manufacture of medical and dental instruments and supplies', 2007, @NACE
  UNION ALL
 SELECT '32.9', 'Manufacturing n.e.c.', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='33'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '33.1', 'Repair of fabricated metal products, machinery and equipment', 2007, @NACE
  UNION ALL
 SELECT '33.2', 'Installation of industrial machinery and equipment', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='35'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '35.1', 'Electric power generation, transmission and distribution', 2007, @NACE
  UNION ALL
 SELECT '35.2', 'Manufacture of gas; distribution of gaseous fuels through mains', 2007, @NACE
  UNION ALL
 SELECT '35.3', 'Steam and air conditioning supply', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='36'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '36.0', 'Water collection, treatment and supply', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='37'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '37.0', 'Sewerage', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='38'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '38.1', 'Waste collection', 2007, @NACE
  UNION ALL
 SELECT '38.2', 'Waste treatment and disposal', 2007, @NACE
  UNION ALL
 SELECT '38.3', 'Materials recovery', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='39'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '39.0', 'Remediation activities and other waste management services', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='41'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '41.1', 'Development of building projects', 2007, @NACE
  UNION ALL
 SELECT '41.2', 'Construction of residential and non-residential buildings', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='42'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '42.1', 'Construction of roads and railways', 2007, @NACE
  UNION ALL
 SELECT '42.2', 'Construction of utility projects', 2007, @NACE
  UNION ALL
 SELECT '42.9', 'Construction of other civil engineering projects', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='43'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '43.1', 'Demolition and site preparation', 2007, @NACE
  UNION ALL
 SELECT '43.2', 'Electrical, plumbing and other construction installation activities', 2007, @NACE
  UNION ALL
 SELECT '43.3', 'Building completion and finishing', 2007, @NACE
  UNION ALL
 SELECT '43.9', 'Other specialised construction activities', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='45'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '45.1', 'Sale of motor vehicles', 2007, @NACE
  UNION ALL
 SELECT '45.2', 'Maintenance and repair of motor vehicles', 2007, @NACE
  UNION ALL
 SELECT '45.3', 'Sale of motor vehicle parts and accessories', 2007, @NACE
  UNION ALL
 SELECT '45.4', 'Sale, maintenance and repair of motorcycles and related parts and accessories', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='46'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '46.1', 'Wholesale on a fee or contract basis', 2007, @NACE
  UNION ALL
 SELECT '46.2', 'Wholesale of agricultural raw materials and live animals', 2007, @NACE
  UNION ALL
 SELECT '46.3', 'Wholesale of food, beverages and tobacco', 2007, @NACE
  UNION ALL
 SELECT '46.4', 'Wholesale of household goods', 2007, @NACE
  UNION ALL
 SELECT '46.5', 'Wholesale of information and communication equipment', 2007, @NACE
  UNION ALL
 SELECT '46.6', 'Wholesale of other machinery, equipment and supplies', 2007, @NACE
  UNION ALL
 SELECT '46.7', 'Other specialised wholesale', 2007, @NACE
  UNION ALL
 SELECT '46.9', 'Non-specialised wholesale trade', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='47'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '47.1', 'Retail sale in non-specialised stores', 2007, @NACE
  UNION ALL
 SELECT '47.2', 'Retail sale of food, beverages and tobacco in specialised stores', 2007, @NACE
  UNION ALL
 SELECT '47.3', 'Retail sale of automotive fuel in specialised stores', 2007, @NACE
  UNION ALL
 SELECT '47.4', 'Retail sale of information and communication equipment in specialised stores', 2007, @NACE
  UNION ALL
 SELECT '47.5', 'Retail sale of other household equipment in specialised stores', 2007, @NACE
  UNION ALL
 SELECT '47.6', 'Retail sale of cultural and recreation goods in specialised stores', 2007, @NACE
  UNION ALL
 SELECT '47.7', 'Retail sale of other goods in specialised stores', 2007, @NACE
  UNION ALL
 SELECT '47.8', 'Retail sale via stalls and markets', 2007, @NACE
  UNION ALL
 SELECT '47.9', 'Retail trade not in stores, stalls or markets', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='49'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '49.1', 'Passenger rail transport, interurban', 2007, @NACE
  UNION ALL
 SELECT '49.2', 'Freight rail transport', 2007, @NACE
  UNION ALL
 SELECT '49.3', 'Other passenger land transport', 2007, @NACE
  UNION ALL
 SELECT '49.4', 'Freight transport by road and removal services', 2007, @NACE
  UNION ALL
 SELECT '49.5', 'Transport via pipeline', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='50'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '50.1', 'Sea and coastal passenger water transport', 2007, @NACE
  UNION ALL
 SELECT '50.2', 'Sea and coastal freight water transport', 2007, @NACE
  UNION ALL
 SELECT '50.3', 'Inland passenger water transport', 2007, @NACE
  UNION ALL
 SELECT '50.4', 'Inland freight water transport', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='51'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '51.1', 'Passenger air transport', 2007, @NACE
  UNION ALL
 SELECT '51.2', 'Freight air transport and space transport', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='52'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '52.1', 'Warehousing and storage', 2007, @NACE
  UNION ALL
 SELECT '52.2', 'Support activities for transportation', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='53'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '53.1', 'Postal activities under universal service obligation', 2007, @NACE
  UNION ALL
 SELECT '53.2', 'Other postal and courier activities', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='55'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '55.1', 'Hotels and similar accommodation', 2007, @NACE
  UNION ALL
 SELECT '55.2', 'Holiday and other short-stay accommodation', 2007, @NACE
  UNION ALL
 SELECT '55.3', 'Camping grounds, recreational vehicle parks and trailer parks', 2007, @NACE
  UNION ALL
 SELECT '55.9', 'Other accommodation', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='56'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '56.1', 'Restaurants and mobile food service activities', 2007, @NACE
  UNION ALL
 SELECT '56.2', 'Event catering and other food service activities', 2007, @NACE
  UNION ALL
 SELECT '56.3', 'Beverage serving activities', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='58'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '58.1', 'Publishing of books, periodicals and other publishing activities', 2007, @NACE
  UNION ALL
 SELECT '58.2', 'Software publishing', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='59'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '59.1', 'Motion picture, video and television programme activities', 2007, @NACE
  UNION ALL
 SELECT '59.2', 'Sound recording and music publishing activities', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='60'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '60.1', 'Radio broadcasting', 2007, @NACE
  UNION ALL
 SELECT '60.2', 'Television programming and broadcasting activities', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='61'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '61.1', 'Wired telecommunications activities', 2007, @NACE
  UNION ALL
 SELECT '61.2', 'Wireless telecommunications activities', 2007, @NACE
  UNION ALL
 SELECT '61.3', 'Satellite telecommunications activities', 2007, @NACE
  UNION ALL
 SELECT '61.9', 'Other telecommunications activities', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='62'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '62.0', 'Computer programming, consultancy and related activities', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='63'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '63.1', 'Data processing, hosting and related activities; web portals', 2007, @NACE
  UNION ALL
 SELECT '63.9', 'Other information service activities', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='64'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '64.1', 'Monetary intermediation', 2007, @NACE
  UNION ALL
 SELECT '64.2', 'Activities of holding companies', 2007, @NACE
  UNION ALL
 SELECT '64.3', 'Trusts, funds and similar financial entities', 2007, @NACE
  UNION ALL
 SELECT '64.9', 'Other financial service activities, except insurance and pension funding', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='65'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '65.1', 'Insurance', 2007, @NACE
  UNION ALL
 SELECT '65.2', 'Reinsurance', 2007, @NACE
  UNION ALL
 SELECT '65.3', 'Pension funding', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='66'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '66.1', 'Activities auxiliary to financial services, except insurance and pension funding', 2007, @NACE
  UNION ALL
 SELECT '66.2', 'Activities auxiliary to insurance and pension funding', 2007, @NACE
  UNION ALL
 SELECT '66.3', 'Fund management activities', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='68'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '68.1', 'Buying and selling of own real estate', 2007, @NACE
  UNION ALL
 SELECT '68.2', 'Renting and operating of own or leased real estate', 2007, @NACE
  UNION ALL
 SELECT '68.3', 'Real estate activities on a fee or contract basis', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='69'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '69.1', 'Legal activities', 2007, @NACE
  UNION ALL
 SELECT '69.2', 'Accounting, bookkeeping and auditing activities; tax consultancy', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='70'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '70.1', 'Activities of head offices', 2007, @NACE
  UNION ALL
 SELECT '70.2', 'Management consultancy activities', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='71'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '71.1', 'Architectural and engineering activities and related technical consultancy', 2007, @NACE
  UNION ALL
 SELECT '71.2', 'Technical testing and analysis', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='72'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '72.1', 'Research and experimental development on natural sciences and engineering', 2007, @NACE
  UNION ALL
 SELECT '72.2', 'Research and experimental development on social sciences and humanities', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='73'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '73.1', 'Advertising', 2007, @NACE
  UNION ALL
 SELECT '73.2', 'Market research and public opinion polling', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='74'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '74.1', 'Specialised design activities', 2007, @NACE
  UNION ALL
 SELECT '74.2', 'Photographic activities', 2007, @NACE
  UNION ALL
 SELECT '74.3', 'Translation and interpretation activities', 2007, @NACE
  UNION ALL
 SELECT '74.9', 'Other professional, scientific and technical activities n.e.c.', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='75'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '75.0', 'Veterinary activities', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='77'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '77.1', 'Renting and leasing of motor vehicles', 2007, @NACE
  UNION ALL
 SELECT '77.2', 'Renting and leasing of personal and household goods', 2007, @NACE
  UNION ALL
 SELECT '77.3', 'Renting and leasing of other machinery, equipment and tangible goods', 2007, @NACE
  UNION ALL
 SELECT '77.4', 'Leasing of intellectual property and similar products, except copyrighted works', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='78'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '78.1', 'Activities of employment placement agencies', 2007, @NACE
  UNION ALL
 SELECT '78.2', 'Temporary employment agency activities', 2007, @NACE
  UNION ALL
 SELECT '78.3', 'Other human resources provision', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='79'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '79.1', 'Travel agency and tour operator activities', 2007, @NACE
  UNION ALL
 SELECT '79.9', 'Other reservation service and related activities', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='80'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '80.1', 'Private security activities', 2007, @NACE
  UNION ALL
 SELECT '80.2', 'Security systems service activities', 2007, @NACE
  UNION ALL
 SELECT '80.3', 'Investigation activities', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='81'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '81.1', 'Combined facilities support activities', 2007, @NACE
  UNION ALL
 SELECT '81.2', 'Cleaning activities', 2007, @NACE
  UNION ALL
 SELECT '81.3', 'Landscape service activities', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='82'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '82.1', 'Office administrative and support activities', 2007, @NACE
  UNION ALL
 SELECT '82.2', 'Activities of call centres', 2007, @NACE
  UNION ALL
 SELECT '82.3', 'Organisation of conventions and trade shows', 2007, @NACE
  UNION ALL
 SELECT '82.9', 'Business support service activities n.e.c.', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='84'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '84.1', 'Administration of the State and the economic and social policy of the community', 2007, @NACE
  UNION ALL
 SELECT '84.2', 'Provision of services to the community as a whole', 2007, @NACE
  UNION ALL
 SELECT '84.3', 'Compulsory social security activities', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='85'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '85.1', 'Pre-primary education', 2007, @NACE
  UNION ALL
 SELECT '85.2', 'Primary education', 2007, @NACE
  UNION ALL
 SELECT '85.3', 'Secondary education', 2007, @NACE
  UNION ALL
 SELECT '85.4', 'Higher education', 2007, @NACE
  UNION ALL
 SELECT '85.5', 'Other education', 2007, @NACE
  UNION ALL
 SELECT '85.6', 'Educational support activities', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='86'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '86.1', 'Hospital activities', 2007, @NACE
  UNION ALL
 SELECT '86.2', 'Medical and dental practice activities', 2007, @NACE
  UNION ALL
 SELECT '86.9', 'Other human health activities', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='87'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '87.1', 'Residential nursing care activities', 2007, @NACE
  UNION ALL
 SELECT '87.2', 'Residential care activities for mental retardation, mental health and substance abuse', 2007, @NACE
  UNION ALL
 SELECT '87.3', 'Residential care activities for the elderly and disabled', 2007, @NACE
  UNION ALL
 SELECT '87.9', 'Other residential care activities', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='88'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '88.1', 'Social work activities without accommodation for the elderly and disabled', 2007, @NACE
  UNION ALL
 SELECT '88.9', 'Other social work activities without accommodation', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='90'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '90.0', 'Creative, arts and entertainment activities', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='91'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '91.0', 'Libraries, archives, museums and other cultural activities', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='92'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '92.0', 'Gambling and betting activities', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='93'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '93.1', 'Sports activities', 2007, @NACE
  UNION ALL
 SELECT '93.2', 'Amusement and recreation activities', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='94'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '94.1', 'Activities of business, employers and professional membership organisations', 2007, @NACE
  UNION ALL
 SELECT '94.2', 'Activities of trade unions', 2007, @NACE
  UNION ALL
 SELECT '94.9', 'Activities of other membership organisations', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='95'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '95.1', 'Repair of computers and communication equipment', 2007, @NACE
  UNION ALL
 SELECT '95.2', 'Repair of personal and household goods', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='96'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '96.0', 'Other personal service activities', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='97'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '97.0', 'Activities of households as employers of domestic personnel', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='98'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '98.1', 'Undifferentiated goods-producing activities of private households for own use', 2007, @NACE
  UNION ALL
 SELECT '98.2', 'Undifferentiated service-producing activities of private households for own use', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='99'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '99.0', 'Activities of extraterritorial organisations and bodies', 2007, @NACE

GO

-- THIRD LEVEL ---------------------------------------------------------------
DECLARE @NACE INT
SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='01.1'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '01.11', 'Growing of cereals (except rice), leguminous crops and oil seeds', 2007, @NACE
  UNION ALL
 SELECT '01.12', 'Growing of rice', 2007, @NACE
  UNION ALL
 SELECT '01.13', 'Growing of vegetables and melons, roots and tubers', 2007, @NACE
  UNION ALL
 SELECT '01.14', 'Growing of sugar cane', 2007, @NACE
  UNION ALL
 SELECT '01.15', 'Growing of tobacco', 2007, @NACE
  UNION ALL
 SELECT '01.16', 'Growing of fibre crops', 2007, @NACE
  UNION ALL
 SELECT '01.19', 'Growing of other non-perennial crops', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='01.2'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '01.21', 'Growing of grapes', 2007, @NACE
  UNION ALL
 SELECT '01.22', 'Growing of tropical and subtropical fruits', 2007, @NACE
  UNION ALL
 SELECT '01.23', 'Growing of citrus fruits', 2007, @NACE
  UNION ALL
 SELECT '01.24', 'Growing of pome fruits and stone fruits', 2007, @NACE
  UNION ALL
 SELECT '01.25', 'Growing of other tree and bush fruits and nuts', 2007, @NACE
  UNION ALL
 SELECT '01.26', 'Growing of oleaginous fruits', 2007, @NACE
  UNION ALL
 SELECT '01.27', 'Growing of beverage crops', 2007, @NACE
  UNION ALL
 SELECT '01.28', 'Growing of spices, aromatic, drug and pharmaceutical crops', 2007, @NACE
  UNION ALL
 SELECT '01.29', 'Growing of other perennial crops', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='01.3'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '01.30', 'Plant propagation', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='01.4'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '01.41', 'Raising of dairy cattle', 2007, @NACE
  UNION ALL
 SELECT '01.42', 'Raising of other cattle and buffaloes', 2007, @NACE
  UNION ALL
 SELECT '01.43', 'Raising of horses and other equines', 2007, @NACE
  UNION ALL
 SELECT '01.44', 'Raising of camels and camelids', 2007, @NACE
  UNION ALL
 SELECT '01.45', 'Raising of sheep and goats', 2007, @NACE
  UNION ALL
 SELECT '01.46', 'Raising of swine/pigs', 2007, @NACE
  UNION ALL
 SELECT '01.47', 'Raising of poultry', 2007, @NACE
  UNION ALL
 SELECT '01.49', 'Raising of other animals', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='01.5'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '01.50', 'Mixed farming', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='01.6'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '01.61', 'Support activities for crop production', 2007, @NACE
  UNION ALL
 SELECT '01.62', 'Support activities for animal production', 2007, @NACE
  UNION ALL
 SELECT '01.63', 'Post-harvest crop activities', 2007, @NACE
  UNION ALL
 SELECT '01.64', 'Seed processing for propagation', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='01.7'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '01.70', 'Hunting, trapping and related service activities', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='02.1'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '02.10', 'Silviculture and other forestry activities', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='02.2'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '02.20', 'Logging', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='02.3'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '02.30', 'Gathering of wild growing non-wood products', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='02.4'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '02.40', 'Support services to forestry', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='03.1'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '03.11', 'Marine fishing', 2007, @NACE
  UNION ALL
 SELECT '03.12', 'Freshwater fishing', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='03.2'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '03.21', 'Marine aquaculture', 2007, @NACE
  UNION ALL
 SELECT '03.22', 'Freshwater aquaculture', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='05.1'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '05.10', 'Mining of hard coal', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='05.2'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '05.20', 'Mining of lignite', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='06.1'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '06.10', 'Extraction of crude petroleum', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='06.2'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '06.20', 'Extraction of natural gas', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='07.1'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '07.10', 'Mining of iron ores', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='07.2'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '07.21', 'Mining of uranium and thorium ores', 2007, @NACE
  UNION ALL
 SELECT '07.29', 'Mining of other non-ferrous metal ores', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='08.1'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '08.11', 'Quarrying of ornamental and building stone, limestone, gypsum, chalk and slate', 2007, @NACE
  UNION ALL
 SELECT '08.12', 'Operation of gravel and sand pits; mining of clays and kaolin', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='08.9'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '08.91', 'Mining of chemical and fertiliser minerals', 2007, @NACE
  UNION ALL
 SELECT '08.92', 'Extraction of peat', 2007, @NACE
  UNION ALL
 SELECT '08.93', 'Extraction of salt', 2007, @NACE
  UNION ALL
 SELECT '08.99', 'Other mining and quarrying n.e.c.', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='09.1'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '09.10', 'Support activities for petroleum and natural gas extraction', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='09.9'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '09.90', 'Support activities for other mining and quarrying', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='10.1'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '10.11', 'Processing and preserving of meat', 2007, @NACE
  UNION ALL
 SELECT '10.12', 'Processing and preserving of poultry meat', 2007, @NACE
  UNION ALL
 SELECT '10.13', 'Production of meat and poultry meat products', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='10.2'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '10.20', 'Processing and preserving of ish, crustaceans and molluscs', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='10.3'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '10.31', 'Processing and preserving of potatoes', 2007, @NACE
  UNION ALL
 SELECT '10.32', 'Manufacture of fruit and vegetable juice', 2007, @NACE
  UNION ALL
 SELECT '10.39', 'Other processing and preserving of fruit and vegetables', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='10.4'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '10.41', 'Manufacture of oils and fats', 2007, @NACE
  UNION ALL
 SELECT '10.42', 'Manufacture of margarine and similar edible fats', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='10.5'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '10.51', 'Operation of dairies and cheese making', 2007, @NACE
  UNION ALL
 SELECT '10.52', 'Manufacture of ice cream', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='10.6'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '10.61', 'Manufacture of grain mill products', 2007, @NACE
  UNION ALL
 SELECT '10.62', 'Manufacture of starches and starch products', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='10.7'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '10.71', 'Manufacture of bread; manufacture of fresh pastry goods and cakes', 2007, @NACE
  UNION ALL
 SELECT '10.72', 'Manufacture of rusks and biscuits; manufacture of preserved pastry goods and cakes', 2007, @NACE
  UNION ALL
 SELECT '10.73', 'Manufacture of macaroni, noodles, couscous and similar farinaceous products', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='10.8'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '10.81', 'Manufacture of sugar', 2007, @NACE
  UNION ALL
 SELECT '10.82', 'Manufacture of cocoa, chocolate and sugar confectionery', 2007, @NACE
  UNION ALL
 SELECT '10.83', 'Processing of tea and cofee', 2007, @NACE
  UNION ALL
 SELECT '10.84', 'Manufacture of condiments and seasonings', 2007, @NACE
  UNION ALL
 SELECT '10.85', 'Manufacture of prepared meals and dishes', 2007, @NACE
  UNION ALL
 SELECT '10.86', 'Manufacture of homogenised food preparations and dietetic food', 2007, @NACE
  UNION ALL
 SELECT '10.89', 'Manufacture of other food products n.e.c.', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='10.9'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '10.91', 'Manufacture of prepared feeds for farm animals', 2007, @NACE
  UNION ALL
 SELECT '10.92', 'Manufacture of prepared pet foods', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='11.0'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '11.01', 'Distilling, rectifying and blending of spirits', 2007, @NACE
  UNION ALL
 SELECT '11.02', 'Manufacture of wine from grape', 2007, @NACE
  UNION ALL
 SELECT '11.03', 'Manufacture of cider and other fruit wines', 2007, @NACE
  UNION ALL
 SELECT '11.04', 'Manufacture of other non-distilled fermented beverages', 2007, @NACE
  UNION ALL
 SELECT '11.05', 'Manufacture of beer', 2007, @NACE
  UNION ALL
 SELECT '11.06', 'Manufacture of malt', 2007, @NACE
  UNION ALL
 SELECT '11.07', 'Manufacture of soft drinks; production of mineral waters and other bottled waters', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='12.0'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '12.00', 'Manufacture of tobacco products', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='13.1'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '13.10', 'Preparation and spinning of textile fibres', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='13.2'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '13.20', 'Weaving of textiles', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='13.3'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '13.30', 'Finishing of textiles', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='13.9'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '13.91', 'Manufacture of knitted and crocheted fabrics', 2007, @NACE
  UNION ALL
 SELECT '13.92', 'Manufacture of made-up textile articles, except apparel', 2007, @NACE
  UNION ALL
 SELECT '13.93', 'Manufacture of carpets and rugs', 2007, @NACE
  UNION ALL
 SELECT '13.94', 'Manufacture of cordage, rope, twine and netting', 2007, @NACE
  UNION ALL
 SELECT '13.95', 'Manufacture of non-wovens and articles made from non-wovens, except apparel', 2007, @NACE
  UNION ALL
 SELECT '13.96', 'Manufacture of other technical and industrial textiles', 2007, @NACE
  UNION ALL
 SELECT '13.99', 'Manufacture of other textiles n.e.c.', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='14.1'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '14.11', 'Manufacture of leather clothes', 2007, @NACE
  UNION ALL
 SELECT '14.12', 'Manufacture of workwear', 2007, @NACE
  UNION ALL
 SELECT '14.13', 'Manufacture of other outerwear', 2007, @NACE
  UNION ALL
 SELECT '14.14', 'Manufacture of underwear', 2007, @NACE
  UNION ALL
 SELECT '14.19', 'Manufacture of other wearing apparel and accessories', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='14.2'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '14.20', 'Manufacture of articles of fur', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='14.3'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '14.31', 'Manufacture of knitted and crocheted hosiery', 2007, @NACE
  UNION ALL
 SELECT '14.39', 'Manufacture of other knitted and crocheted apparel', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='15.1'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '15.11', 'Tanning and dressing of leather; dressing and dyeing of fur', 2007, @NACE
  UNION ALL
 SELECT '15.12', 'Manufacture of luggage, handbags and the like, saddlery and harness', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='15.2'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '15.20', 'Manufacture of footwear', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='16.1'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '16.10', 'Sawmilling and planing of wood', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='16.2'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '16.21', 'Manufacture of veneer sheets and wood-based panels', 2007, @NACE
  UNION ALL
 SELECT '16.22', 'Manufacture of assembled parquet loors', 2007, @NACE
  UNION ALL
 SELECT '16.23', 'Manufacture of other builders'' carpentry and joinery', 2007, @NACE
  UNION ALL
 SELECT '16.24', 'Manufacture of wooden containers', 2007, @NACE
  UNION ALL
 SELECT '16.29', 'Manufacture of other products of wood; manufacture of articles of cork, straw and plaiting ', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='17.1'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '17.11', 'Manufacture of pulp', 2007, @NACE
  UNION ALL
 SELECT '17.12', 'Manufacture of paper and paperboard', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='17.2'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '17.21', 'Manufacture of corrugated paper and paperboard and of containers of paper and paperboard', 2007, @NACE
  UNION ALL
 SELECT '17.22', 'Manufacture of household and sanitary goods and of toilet requisites', 2007, @NACE
  UNION ALL
 SELECT '17.23', 'Manufacture of paper stationery', 2007, @NACE
  UNION ALL
 SELECT '17.24', 'Manufacture of wallpaper', 2007, @NACE
  UNION ALL
 SELECT '17.29', 'Manufacture of other articles of paper and paperboard', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='18.1'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '18.11', 'Printing of newspapers', 2007, @NACE
  UNION ALL
 SELECT '18.12', 'Other printing', 2007, @NACE
  UNION ALL
 SELECT '18.13', 'Pre-press and pre-media services', 2007, @NACE
  UNION ALL
 SELECT '18.14', 'Binding and related services', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='18.2'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '18.20', 'Reproduction of recorded media', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='19.1'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '19.10', 'Manufacture of coke oven products', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='19.2'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '19.20', 'Manufacture of refined petroleum products', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='20.1'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '20.11', 'Manufacture of industrial gases', 2007, @NACE
  UNION ALL
 SELECT '20.12', 'Manufacture of dyes and pigments', 2007, @NACE
  UNION ALL
 SELECT '20.13', 'Manufacture of other inorganic basic chemicals', 2007, @NACE
  UNION ALL
 SELECT '20.14', 'Manufacture of other organic basic chemicals', 2007, @NACE
  UNION ALL
 SELECT '20.15', 'Manufacture of fertilisers and nitrogen compounds', 2007, @NACE
  UNION ALL
 SELECT '20.16', 'Manufacture of plastics in primary forms', 2007, @NACE
  UNION ALL
 SELECT '20.17', 'Manufacture of synthetic rubber in primary forms', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='20.2'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '20.20', 'Manufacture of pesticides and other agrochemical products', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='20.3'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '20.30', 'Manufacture of paints, varnishes and similar coatings, printing ink and mastics', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='20.4'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '20.41', 'Manufacture of soap and detergents, cleaning and polishing preparations', 2007, @NACE
  UNION ALL
 SELECT '20.42', 'Manufacture of perfumes and toilet preparations', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='20.5'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '20.51', 'Manufacture of explosives', 2007, @NACE
  UNION ALL
 SELECT '20.52', 'Manufacture of glues', 2007, @NACE
  UNION ALL
 SELECT '20.53', 'Manufacture of essential oils', 2007, @NACE
  UNION ALL
 SELECT '20.59', 'Manufacture of other chemical products n.e.c.', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='20.6'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '20.60', 'Manufacture of man-made fibres', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='21.1'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '21.10', 'Manufacture of basic pharmaceutical products', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='21.2'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '21.20', 'Manufacture of pharmaceutical preparations', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='22.1'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '22.11', 'Manufacture of rubber tyres and tubes; retreading and rebuilding of rubber tyres', 2007, @NACE
  UNION ALL
 SELECT '22.19', 'Manufacture of other rubber products', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='22.2'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '22.21', 'Manufacture of plastic plates, sheets, tubes and proiles', 2007, @NACE
  UNION ALL
 SELECT '22.22', 'Manufacture of plastic packing goods', 2007, @NACE
  UNION ALL
 SELECT '22.23', 'Manufacture of builders'' ware of plastic', 2007, @NACE
  UNION ALL
 SELECT '22.29', 'Manufacture of other plastic products', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='23.1'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '23.11', 'Manufacture of flat glass', 2007, @NACE
  UNION ALL
 SELECT '23.12', 'Shaping and processing of flat glass', 2007, @NACE
  UNION ALL
 SELECT '23.13', 'Manufacture of hollow glass', 2007, @NACE
  UNION ALL
 SELECT '23.14', 'Manufacture of glass fibres', 2007, @NACE
  UNION ALL
 SELECT '23.19', 'Manufacture and processing of other glass, including technical glassware', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='23.2'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '23.20', 'Manufacture of refractory products', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='23.3'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '23.31', 'Manufacture of ceramic tiles and flags', 2007, @NACE
  UNION ALL
 SELECT '23.32', 'Manufacture of bricks, tiles and construction products, in baked clay', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='23.4'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '23.41', 'Manufacture of ceramic household and ornamental articles', 2007, @NACE
  UNION ALL
 SELECT '23.42', 'Manufacture of ceramic sanitary fixtures', 2007, @NACE
  UNION ALL
 SELECT '23.43', 'Manufacture of ceramic insulators and insulating fittings', 2007, @NACE
  UNION ALL
 SELECT '23.44', 'Manufacture of other technical ceramic products', 2007, @NACE
  UNION ALL
 SELECT '23.49', 'Manufacture of other ceramic products', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='23.5'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '23.51', 'Manufacture of cement', 2007, @NACE
  UNION ALL
 SELECT '23.52', 'Manufacture of lime and plaster', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='23.6'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '23.61', 'Manufacture of concrete products for construction purposes', 2007, @NACE
  UNION ALL
 SELECT '23.62', 'Manufacture of plaster products for construction purposes', 2007, @NACE
  UNION ALL
 SELECT '23.63', 'Manufacture of ready-mixed concrete', 2007, @NACE
  UNION ALL
 SELECT '23.64', 'Manufacture of mortars', 2007, @NACE
  UNION ALL
 SELECT '23.65', 'Manufacture of fibre cement', 2007, @NACE
  UNION ALL
 SELECT '23.69', 'Manufacture of other articles of concrete, plaster and cement', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='23.7'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '23.70', 'Cutting, shaping and finishing of stone', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='23.9'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '23.91', 'Production of abrasive products', 2007, @NACE
  UNION ALL
 SELECT '23.99', 'Manufacture of other non-metallic mineral products n.e.c.', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='24.1'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '24.10', 'Manufacture of basic iron and steel and of ferro-alloys', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='24.2'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '24.20', 'Manufacture of tubes, pipes, hollow profiles and related fittings, of steel', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='24.3'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '24.31', 'Cold drawing of bars', 2007, @NACE
  UNION ALL
 SELECT '24.32', 'Cold rolling of narrow strip', 2007, @NACE
  UNION ALL
 SELECT '24.33', 'Cold forming or folding', 2007, @NACE
  UNION ALL
 SELECT '24.34', 'Cold drawing of wire', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='24.4'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '24.41', 'Precious metals production', 2007, @NACE
  UNION ALL
 SELECT '24.42', 'Aluminium production', 2007, @NACE
  UNION ALL
 SELECT '24.43', 'Lead, zinc and tin production', 2007, @NACE
  UNION ALL
 SELECT '24.44', 'Copper production', 2007, @NACE
  UNION ALL
 SELECT '24.45', 'Other non-ferrous metal production', 2007, @NACE
  UNION ALL
 SELECT '24.46', 'Processing of nuclear fuel', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='24.5'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '24.51', 'Casting of iron', 2007, @NACE
  UNION ALL
 SELECT '24.52', 'Casting of steel', 2007, @NACE
  UNION ALL
 SELECT '24.53', 'Casting of light metals', 2007, @NACE
  UNION ALL
 SELECT '24.54', 'Casting of other non-ferrous metals', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='25.1'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '25.11', 'Manufacture of metal structures and parts of structures', 2007, @NACE
  UNION ALL
 SELECT '25.12', 'Manufacture of doors and windows of metal', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='25.2'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '25.21', 'Manufacture of central heating radiators and boilers', 2007, @NACE
  UNION ALL
 SELECT '25.29', 'Manufacture of other tanks, reservoirs and containers of metal', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='25.3'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '25.30', 'Manufacture of steam generators, except central heating hot water boilers', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='25.4'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '25.40', 'Manufacture of weapons and ammunition', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='25.5'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '25.50', 'Forging, pressing, stamping and roll-forming of metal; powder metallurgy', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='25.6'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '25.61', 'Treatment and coating of metals', 2007, @NACE
  UNION ALL
 SELECT '25.62', 'Machining', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='25.7'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '25.71', 'Manufacture of cutlery', 2007, @NACE
  UNION ALL
 SELECT '25.72', 'Manufacture of locks and hinges', 2007, @NACE
  UNION ALL
 SELECT '25.73', 'Manufacture of tools', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='25.9'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '25.91', 'Manufacture of steel drums and similar containers', 2007, @NACE
  UNION ALL
 SELECT '25.92', 'Manufacture of light metal packaging', 2007, @NACE
  UNION ALL
 SELECT '25.93', 'Manufacture of wire products, chain and springs', 2007, @NACE
  UNION ALL
 SELECT '25.94', 'Manufacture of fasteners and screw machine products', 2007, @NACE
  UNION ALL
 SELECT '25.99', 'Manufacture of other fabricated metal products n.e.c.', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='26.1'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '26.11', 'Manufacture of electronic components', 2007, @NACE
  UNION ALL
 SELECT '26.12', 'Manufacture of loaded electronic boards', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='26.2'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '26.20', 'Manufacture of computers and peripheral equipment', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='26.3'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '26.30', 'Manufacture of communication equipment', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='26.4'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '26.40', 'Manufacture of consumer electronics', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='26.5'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '26.51', 'Manufacture of instruments and appliances for measuring, testing and navigation', 2007, @NACE
  UNION ALL
 SELECT '26.52', 'Manufacture of watches and clocks', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='26.6'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '26.60', 'Manufacture of irradiation, electromedical and electrotherapeutic equipment', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='26.7'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '26.70', 'Manufacture of optical instruments and photographic equipment', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='26.8'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '26.80', 'Manufacture of magnetic and optical media', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='27.1'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '27.11', 'Manufacture of electric motors, generators and transformers', 2007, @NACE
  UNION ALL
 SELECT '27.12', 'Manufacture of electricity distribution and control apparatus', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='27.2'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '27.20', 'Manufacture of batteries and accumulators', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='27.3'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '27.31', 'Manufacture of fibre optic cables', 2007, @NACE
  UNION ALL
 SELECT '27.32', 'Manufacture of other electronic and electric wires and cables', 2007, @NACE
  UNION ALL
 SELECT '27.33', 'Manufacture of wiring devices', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='27.4'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '27.40', 'Manufacture of electric lighting equipment', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='27.5'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '27.51', 'Manufacture of electric domestic appliances', 2007, @NACE
  UNION ALL
 SELECT '27.52', 'Manufacture of non-electric domestic appliances', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='27.9'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '27.90', 'Manufacture of other electrical equipment', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='28.1'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '28.11', 'Manufacture of engines and turbines, except aircraft, vehicle and cycle engines', 2007, @NACE
  UNION ALL
 SELECT '28.12', 'Manufacture of fluid power equipment', 2007, @NACE
  UNION ALL
 SELECT '28.13', 'Manufacture of other pumps and compressors', 2007, @NACE
  UNION ALL
 SELECT '28.14', 'Manufacture of other taps and valves', 2007, @NACE
  UNION ALL
 SELECT '28.15', 'Manufacture of bearings, gears, gearing and driving elements', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='28.2'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '28.21', 'Manufacture of ovens, furnaces and furnace burners', 2007, @NACE
  UNION ALL
 SELECT '28.22', 'Manufacture of lifting and handling equipment', 2007, @NACE
  UNION ALL
 SELECT '28.23', 'Manufacture of office machinery and equipment (except computers and peripheral equipment)', 2007, @NACE
  UNION ALL
 SELECT '28.24', 'Manufacture of power-driven hand tools', 2007, @NACE
  UNION ALL
 SELECT '28.25', 'Manufacture of non-domestic cooling and ventilation equipment', 2007, @NACE
  UNION ALL
 SELECT '28.29', 'Manufacture of other general-purpose machinery n.e.c.', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='28.3'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '28.30', 'Manufacture of agricultural and forestry machinery', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='28.4'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '28.41', 'Manufacture of metal forming machinery', 2007, @NACE
  UNION ALL
 SELECT '28.49', 'Manufacture of other machine tools', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='28.9'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '28.91', 'Manufacture of machinery for metallurgy', 2007, @NACE
  UNION ALL
 SELECT '28.92', 'Manufacture of machinery for mining, quarrying and construction', 2007, @NACE
  UNION ALL
 SELECT '28.93', 'Manufacture of machinery for food, beverage and tobacco processing', 2007, @NACE
  UNION ALL
 SELECT '28.94', 'Manufacture of machinery for textile, apparel and leather production', 2007, @NACE
  UNION ALL
 SELECT '28.95', 'Manufacture of machinery for paper and paperboard production', 2007, @NACE
  UNION ALL
 SELECT '28.96', 'Manufacture of plastics and rubber machinery', 2007, @NACE
  UNION ALL
 SELECT '28.99', 'Manufacture of other special-purpose machinery n.e.c.', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='29.1'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '29.10', 'Manufacture of motor vehicles', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='29.2'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '29.20', 'Manufacture of bodies (coachwork) for motor vehicles; manufacture of trailers and semi trailers', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='29.3'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '29.31', 'Manufacture of electrical and electronic equipment for motor vehicles', 2007, @NACE
  UNION ALL
 SELECT '29.32', 'Manufacture of other parts and accessories for motor vehicles', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='30.1'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '30.11', 'Building of ships and floating structures', 2007, @NACE
  UNION ALL
 SELECT '30.12', 'Building of pleasure and sporting boats', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='30.2'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '30.20', 'Manufacture of railway locomotives and rolling stock', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='30.3'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '30.30', 'Manufacture of air and spacecraft and related machinery', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='30.4'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '30.40', 'Manufacture of military fighting vehicles', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='30.9'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '30.91', 'Manufacture of motorcycles', 2007, @NACE
  UNION ALL
 SELECT '30.92', 'Manufacture of bicycles and invalid carriages', 2007, @NACE
  UNION ALL
 SELECT '30.99', 'Manufacture of other transport equipment n.e.c.', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='31.0'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '31.01', 'Manufacture of office and shop furniture', 2007, @NACE
  UNION ALL
 SELECT '31.02', 'Manufacture of kitchen furniture', 2007, @NACE
  UNION ALL
 SELECT '31.03', 'Manufacture of mattresses', 2007, @NACE
  UNION ALL
 SELECT '31.09', 'Manufacture of other furniture', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='32.1'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '32.11', 'Striking of coins', 2007, @NACE
  UNION ALL
 SELECT '32.12', 'Manufacture of jewellery and related articles', 2007, @NACE
  UNION ALL
 SELECT '32.13', 'Manufacture of imitation jewellery and related articles', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='32.2'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '32.20', 'Manufacture of musical instruments', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='32.3'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '32.30', 'Manufacture of sports goods', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='32.4'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '32.40', 'Manufacture of games and toys', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='32.5'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '32.50', 'Manufacture of medical and dental instruments and supplies', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='32.9'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '32.91', 'Manufacture of brooms and brushes', 2007, @NACE
  UNION ALL
 SELECT '32.99', 'Other manufacturing n.e.c.', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='33.1'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '33.11', 'Repair of fabricated metal products', 2007, @NACE
  UNION ALL
 SELECT '33.12', 'Repair of machinery', 2007, @NACE
  UNION ALL
 SELECT '33.13', 'Repair of electronic and optical equipment', 2007, @NACE
  UNION ALL
 SELECT '33.14', 'Repair of electrical equipment', 2007, @NACE
  UNION ALL
 SELECT '33.15', 'Repair and maintenance of ships and boats', 2007, @NACE
  UNION ALL
 SELECT '33.16', 'Repair and maintenance of aircraft and spacecraft', 2007, @NACE
  UNION ALL
 SELECT '33.17', 'Repair and maintenance of other transport equipment', 2007, @NACE
  UNION ALL
 SELECT '33.19', 'Repair of other equipment', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='33.2'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '33.20', 'Installation of industrial machinery and equipment', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='35.1'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '35.11', 'Production of electricity', 2007, @NACE
  UNION ALL
 SELECT '35.12', 'Transmission of electricity', 2007, @NACE
  UNION ALL
 SELECT '35.13', 'Distribution of electricity', 2007, @NACE
  UNION ALL
 SELECT '35.14', 'Trade of electricity', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='35.2'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '35.21', 'Manufacture of gas', 2007, @NACE
  UNION ALL
 SELECT '35.22', 'Distribution of gaseous fuels through mains', 2007, @NACE
  UNION ALL
 SELECT '35.23', 'Trade of gas through mains', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='35.3'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '35.30', 'Steam and air conditioning supply', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='36.0'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '36.00', 'Water collection, treatment and supply', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='37.0'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '37.00', 'Sewerage', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='38.1'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '38.11', 'Collection of non-hazardous waste', 2007, @NACE
  UNION ALL
 SELECT '38.12', 'Collection of hazardous waste', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='38.2'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '38.21', 'Treatment and disposal of non-hazardous waste', 2007, @NACE
  UNION ALL
 SELECT '38.22', 'Treatment and disposal of hazardous waste', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='38.3'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '38.31', 'Dismantling of wrecks', 2007, @NACE
  UNION ALL
 SELECT '38.32', 'Recovery of sorted materials', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='39.0'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '39.00', 'Remediation activities and other waste management services', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='41.1'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '41.10', 'Development of building projects', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='41.2'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '41.20', 'Construction of residential and non-residential buildings', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='42.1'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '42.11', 'Construction of roads and motorways', 2007, @NACE
  UNION ALL
 SELECT '42.12', 'Construction of railways and underground railways', 2007, @NACE
  UNION ALL
 SELECT '42.13', 'Construction of bridges and tunnels', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='42.2'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '42.21', 'Construction of utility projects for fluids', 2007, @NACE
  UNION ALL
 SELECT '42.22', 'Construction of utility projects for electricity and telecommunications', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='42.9'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '42.91', 'Construction of water projects', 2007, @NACE
  UNION ALL
 SELECT '42.99', 'Construction of other civil engineering projects n.e.c.', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='43.1'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '43.11', 'Demolition', 2007, @NACE
  UNION ALL
 SELECT '43.12', 'Site preparation', 2007, @NACE
  UNION ALL
 SELECT '43.13', 'Test drilling and boring', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='43.2'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '43.21', 'Electrical installation', 2007, @NACE
  UNION ALL
 SELECT '43.22', 'Plumbing, heat and air-conditioning installation', 2007, @NACE
  UNION ALL
 SELECT '43.29', 'Other construction installation', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='43.3'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '43.31', 'Plastering', 2007, @NACE
  UNION ALL
 SELECT '43.32', 'Joinery installation', 2007, @NACE
  UNION ALL
 SELECT '43.33', 'Floor and wall covering', 2007, @NACE
  UNION ALL
 SELECT '43.34', 'Painting and glazing', 2007, @NACE
  UNION ALL
 SELECT '43.39', 'Other building completion and finishing', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='43.9'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '43.91', 'Roofing activities', 2007, @NACE
  UNION ALL
 SELECT '43.99', 'Other specialised construction activities n.e.c.', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='45.1'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '45.11', 'Sale of cars and light motor vehicles', 2007, @NACE
  UNION ALL
 SELECT '45.19', 'Sale of other motor vehicles', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='45.2'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '45.20', 'Maintenance and repair of motor vehicles', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='45.3'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '45.31', 'Wholesale trade of motor vehicle parts and accessories', 2007, @NACE
  UNION ALL
 SELECT '45.32', 'Retail trade of motor vehicle parts and accessories', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='45.4'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '45.40', 'Sale, maintenance and repair of motorcycles and related parts and accessories', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='46.1'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '46.11', 'Agents involved in the sale of agricultural raw materials, live animals, textile raw materials and semi-finished goods', 2007, @NACE
  UNION ALL
 SELECT '46.12', 'Agents involved in the sale of fuels, ores, metals and industrial chemicals', 2007, @NACE
  UNION ALL
 SELECT '46.13', 'Agents involved in the sale of timber and building materials', 2007, @NACE
  UNION ALL
 SELECT '46.14', 'Agents involved in the sale of machinery, industrial equipment, ships and aircraft', 2007, @NACE
  UNION ALL
 SELECT '46.15', 'Agents involved in the sale of furniture, household goods, hardware and ironmongery', 2007, @NACE
  UNION ALL
 SELECT '46.16', 'Agents involved in the sale of textiles, clothing, fur, footwear and leather goods', 2007, @NACE
  UNION ALL
 SELECT '46.17', 'Agents involved in the sale of food, beverages and tobacco', 2007, @NACE
  UNION ALL
 SELECT '46.18', 'Agents specialised in the sale of other particular products', 2007, @NACE
  UNION ALL
 SELECT '46.19', 'Agents involved in the sale of a variety of goods', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='46.2'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '46.21', 'Wholesale of grain, unmanufactured tobacco, seeds and animal feeds', 2007, @NACE
  UNION ALL
 SELECT '46.22', 'Wholesale of flowers and plants', 2007, @NACE
  UNION ALL
 SELECT '46.23', 'Wholesale of live animals', 2007, @NACE
  UNION ALL
 SELECT '46.24', 'Wholesale of hides, skins and leather', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='46.3'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '46.31', 'Wholesale of fruit and vegetables', 2007, @NACE
  UNION ALL
 SELECT '46.32', 'Wholesale of meat and meat products', 2007, @NACE
  UNION ALL
 SELECT '46.33', 'Wholesale of dairy products, eggs and edible oils and fats', 2007, @NACE
  UNION ALL
 SELECT '46.34', 'Wholesale of beverages', 2007, @NACE
  UNION ALL
 SELECT '46.35', 'Wholesale of tobacco products', 2007, @NACE
  UNION ALL
 SELECT '46.36', 'Wholesale of sugar and chocolate and sugar confectionery', 2007, @NACE
  UNION ALL
 SELECT '46.37', 'Wholesale of cofee, tea, cocoa and spices', 2007, @NACE
  UNION ALL
 SELECT '46.38', 'Wholesale of other food, including fish, crustaceans and molluscs', 2007, @NACE
  UNION ALL
 SELECT '46.39', 'Non-specialised wholesale of food, beverages and tobacco', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='46.4'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '46.41', 'Wholesale of textiles', 2007, @NACE
  UNION ALL
 SELECT '46.42', 'Wholesale of clothing and footwear', 2007, @NACE
  UNION ALL
 SELECT '46.43', 'Wholesale of electrical household appliances', 2007, @NACE
  UNION ALL
 SELECT '46.44', 'Wholesale of china and glassware and cleaning materials', 2007, @NACE
  UNION ALL
 SELECT '46.45', 'Wholesale of perfume and cosmetics', 2007, @NACE
  UNION ALL
 SELECT '46.46', 'Wholesale of pharmaceutical goods', 2007, @NACE
  UNION ALL
 SELECT '46.47', 'Wholesale of furniture, carpets and lighting equipment', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='46.5'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '46.51', 'Wholesale of computers, computer peripheral equipment and software', 2007, @NACE
  UNION ALL
 SELECT '46.52', 'Wholesale of electronic and telecommunications equipment and parts', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='46.6'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '46.61', 'Wholesale of agricultural machinery, equipment and supplies', 2007, @NACE
  UNION ALL
 SELECT '46.62', 'Wholesale of machine tools', 2007, @NACE
  UNION ALL
 SELECT '46.65', 'Wholesale of office furniture', 2007, @NACE
  UNION ALL
 SELECT '46.66', 'Wholesale of other office machinery and equipment', 2007, @NACE
  UNION ALL
 SELECT '46.69', 'Wholesale of other machinery and equipment', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='46.7'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '46.71', 'Wholesale of solid, liquid and gaseous fuels and related products', 2007, @NACE
  UNION ALL
 SELECT '46.72', 'Wholesale of metals and metal ores', 2007, @NACE
  UNION ALL
 SELECT '46.73', 'Wholesale of wood, construction materials and sanitary equipment', 2007, @NACE
  UNION ALL
 SELECT '46.74', 'Wholesale of hardware, plumbing and heating equipment and supplies', 2007, @NACE
  UNION ALL
 SELECT '46.75', 'Wholesale of chemical products', 2007, @NACE
  UNION ALL
 SELECT '46.76', 'Wholesale of other intermediate products', 2007, @NACE
  UNION ALL
 SELECT '46.77', 'Wholesale of waste and scrap', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='46.9'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '46.90', 'Non-specialised wholesale trade', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='47.1'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '47.11', 'Retail sale in non-specialised stores with food, beverages or tobacco predominating', 2007, @NACE
  UNION ALL
 SELECT '47.19', 'Other retail sale in non-specialised stores', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='47.2'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '47.21', 'Retail sale of fruit and vegetables in specialised stores', 2007, @NACE
  UNION ALL
 SELECT '47.22', 'Retail sale of meat and meat products in specialised stores', 2007, @NACE
  UNION ALL
 SELECT '47.23', 'Retail sale of fish, crustaceans and molluscs in specialised stores', 2007, @NACE
  UNION ALL
 SELECT '47.26', 'Retail sale of tobacco products in specialised stores', 2007, @NACE
  UNION ALL
 SELECT '47.29', 'Other retail sale of food in specialised stores', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='47.3'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '47.30', 'Retail sale of automotive fuel in specialised stores', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='47.4'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '47.41', 'Retail sale of computers, peripheral units and software in specialised stores', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='47.5'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '47.51', 'Retail sale of textiles in specialised stores', 2007, @NACE
  UNION ALL
 SELECT '47.52', 'Retail sale of hardware, paints and glass in specialised stores', 2007, @NACE
  UNION ALL
 SELECT '47.53', 'Retail sale of carpets, rugs, wall and floor coverings in specialised stores', 2007, @NACE
  UNION ALL
 SELECT '47.54', 'Retail sale of electrical household appliances in specialised stores', 2007, @NACE
  UNION ALL
 SELECT '47.59', 'Retail sale of furniture, lighting equipment and other household articles in specialised stores', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='47.6'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '47.61', 'Retail sale of books in specialised stores', 2007, @NACE
  UNION ALL
 SELECT '47.62', 'Retail sale of newspapers and stationery in specialised stores', 2007, @NACE
  UNION ALL
 SELECT '47.63', 'Retail sale of music and video recordings in specialised stores', 2007, @NACE
  UNION ALL
 SELECT '47.64', 'Retail sale of sporting equipment in specialised stores', 2007, @NACE
  UNION ALL
 SELECT '47.65', 'Retail sale of games and toys in specialised stores', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='47.7'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '47.71', 'Retail sale of clothing in specialised stores', 2007, @NACE
  UNION ALL
 SELECT '47.72', 'Retail sale of footwear and leather goods in specialised stores', 2007, @NACE
  UNION ALL
 SELECT '47.73', 'Dispensing chemist in specialised stores', 2007, @NACE
  UNION ALL
 SELECT '47.74', 'Retail sale of medical and orthopaedic goods in specialised stores', 2007, @NACE
  UNION ALL
 SELECT '47.75', 'Retail sale of cosmetic and toilet articles in specialised stores', 2007, @NACE
  UNION ALL
 SELECT '47.76', 'Retail sale of flowers, plants, seeds, fertilisers, pet animals and pet food in specialised stores', 2007, @NACE
  UNION ALL
 SELECT '47.77', 'Retail sale of watches and jewellery in specialised stores', 2007, @NACE
  UNION ALL
 SELECT '47.78', 'Other retail sale of new goods in specialised stores', 2007, @NACE
  UNION ALL
 SELECT '47.79', 'Retail sale of second-hand goods in stores', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='47.8'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '47.81', 'Retail sale via stalls and markets of food, beverages and tobacco products', 2007, @NACE
  UNION ALL
 SELECT '47.82', 'Retail sale via stalls and markets of textiles, clothing and footwear', 2007, @NACE
  UNION ALL
 SELECT '47.89', 'Retail sale via stalls and markets of other goods', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='47.9'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '47.91', 'Retail sale via mail order houses or via Internet', 2007, @NACE
  UNION ALL
 SELECT '47.99', 'Other retail sale not in stores, stalls or markets', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='49.1'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '49.10', 'Passenger rail transport, interurban', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='49.2'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '49.20', 'Freight rail transport', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='49.3'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '49.31', 'Urban and suburban passenger land transport', 2007, @NACE
  UNION ALL
 SELECT '49.32', 'Taxi operation', 2007, @NACE
  UNION ALL
 SELECT '49.39', 'Other passenger land transport n.e.c.', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='49.4'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '49.41', 'Freight transport by road', 2007, @NACE
  UNION ALL
 SELECT '49.42', 'Removal services', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='49.5'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '49.50', 'Transport via pipeline', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='50.1'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '50.10', 'Sea and coastal passenger water transport', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='50.2'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '50.20', 'Sea and coastal freight water transport', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='50.3'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '50.30', 'Inland passenger water transport', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='50.4'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '50.40', 'Inland freight water transport', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='51.1'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '51.10', 'Passenger air transport', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='51.2'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '51.21', 'Freight air transport', 2007, @NACE
  UNION ALL
 SELECT '51.22', 'Space transport', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='52.1'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '52.10', 'Warehousing and storage', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='52.2'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '52.21', 'Service activities incidental to land transportation', 2007, @NACE
  UNION ALL
 SELECT '52.22', 'Service activities incidental to water transportation', 2007, @NACE
  UNION ALL
 SELECT '52.23', 'Service activities incidental to air transportation', 2007, @NACE
  UNION ALL
 SELECT '52.24', 'Cargo handling', 2007, @NACE
  UNION ALL
 SELECT '52.29', 'Other transportation support activities', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='53.1'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '53.10', 'Postal activities under universal service obligation', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='53.2'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '53.20', 'Other postal and courier activities', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='55.1'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '55.10', 'Hotels and similar accommodation', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='55.2'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '55.20', 'Holiday and other short-stay accommodation', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='55.3'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '55.30', 'Camping grounds, recreational vehicle parks and trailer parks', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='55.9'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '55.90', 'Other accommodation', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='56.1'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '56.10', 'Restaurants and mobile food service activities', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='56.2'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '56.21', 'Event catering activities', 2007, @NACE
  UNION ALL
 SELECT '56.29', 'Other food service activities', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='56.3'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '56.30', 'Beverage serving activities', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='58.1'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '58.11', 'Book publishing', 2007, @NACE
  UNION ALL
 SELECT '58.12', 'Publishing of directories and mailing lists', 2007, @NACE
  UNION ALL
 SELECT '58.13', 'Publishing of newspapers', 2007, @NACE
  UNION ALL
 SELECT '58.14', 'Publishing of journals and periodicals', 2007, @NACE
  UNION ALL
 SELECT '58.19', 'Other publishing activities', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='58.2'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '58.21', 'Publishing of computer games', 2007, @NACE
  UNION ALL
 SELECT '58.29', 'Other software publishing', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='59.1'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '59.11', 'Motion picture, video and television programme production activities', 2007, @NACE
  UNION ALL
 SELECT '59.12', 'Motion picture, video and television programme post-production activities', 2007, @NACE
  UNION ALL
 SELECT '59.13', 'Motion picture, video and television programme distribution activities', 2007, @NACE
  UNION ALL
 SELECT '59.14', 'Motion picture projection activities', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='59.2'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '59.20', 'Sound recording and music publishing activities', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='60.1'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '60.10', 'Radio broadcasting', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='60.2'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '60.20', 'Television programming and broadcasting activities', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='61.1'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '61.10', 'Wired telecommunications activities', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='61.2'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '61.20', 'Wireless telecommunications activities', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='61.3'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '61.30', 'Satellite telecommunications activities', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='61.9'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '61.90', 'Other telecommunications activities', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='62.0'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '62.01', 'Computer programming activities', 2007, @NACE
  UNION ALL
 SELECT '62.02', 'Computer consultancy activities', 2007, @NACE
  UNION ALL
 SELECT '62.03', 'Computer facilities management activities', 2007, @NACE
  UNION ALL
 SELECT '62.09', 'Other information technology and computer service activities', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='63.1'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '63.11', 'Data processing, hosting and related activities', 2007, @NACE
  UNION ALL
 SELECT '63.12', 'Web portals', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='63.9'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '63.91', 'News agency activities', 2007, @NACE
  UNION ALL
 SELECT '63.99', 'Other information service activities n.e.c.', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='64.1'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '64.11', 'Central banking', 2007, @NACE
  UNION ALL
 SELECT '64.19', 'Other monetary intermediation', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='64.2'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '64.20', 'Activities of holding companies', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='64.3'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '64.30', 'Trusts, funds and similar financial entities', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='64.9'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '64.91', 'Financial leasing', 2007, @NACE
  UNION ALL
 SELECT '64.92', 'Other credit granting', 2007, @NACE
  UNION ALL
 SELECT '64.99', 'Other financial service activities, except insurance and pension funding n.e.c.', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='65.1'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '65.11', 'Life insurance', 2007, @NACE
  UNION ALL
 SELECT '65.12', 'Non-life insurance', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='65.2'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '65.20', 'Reinsurance', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='65.3'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '65.30', 'Pension funding', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='66.1'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '66.11', 'Administration of financial markets', 2007, @NACE
  UNION ALL
 SELECT '66.12', 'Security and commodity contracts brokerage', 2007, @NACE
  UNION ALL
 SELECT '66.19', 'Other activities auxiliary to financial services, except insurance and pension funding', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='66.2'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '66.21', 'Risk and damage evaluation', 2007, @NACE
  UNION ALL
 SELECT '66.22', 'Activities of insurance agents and brokers', 2007, @NACE
  UNION ALL
 SELECT '66.29', 'Other activities auxiliary to insurance and pension funding', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='66.3'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '66.30', 'Fund management activities', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='68.1'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '68.10', 'Buying and selling of own real estate', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='68.2'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '68.20', 'Renting and operating of own or leased real estate', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='68.3'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '68.31', 'Real estate agencies', 2007, @NACE
  UNION ALL
 SELECT '68.32', 'Management of real estate on a fee or contract basis', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='69.1'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '69.10', 'Legal activities', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='69.2'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '69.20', 'Accounting, bookkeeping and auditing activities; tax consultancy', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='70.1'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '70.10', 'Activities of head offices', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='70.2'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '70.21', 'Public relations and communication activities', 2007, @NACE
  UNION ALL
 SELECT '70.22', 'Business and other management consultancy activities', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='71.1'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '71.11', 'Architectural activities', 2007, @NACE
  UNION ALL
 SELECT '71.12', 'Engineering activities and related technical consultancy', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='71.2'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '71.20', 'Technical testing and analysis', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='72.1'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '72.11', 'Research and experimental development on biotechnology', 2007, @NACE
  UNION ALL
 SELECT '72.19', 'Other research and experimental development on natural sciences and engineering', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='72.2'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '72.20', 'Research and experimental development on social sciences and humanities', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='73.1'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '73.11', 'Advertising agencies', 2007, @NACE
  UNION ALL
 SELECT '73.12', 'Media representation', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='73.2'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '73.20', 'Market research and public opinion polling', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='74.1'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '74.10', 'Specialised design activities', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='74.2'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '74.20', 'Photographic activities', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='74.3'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '74.30', 'Translation and interpretation activities', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='74.9'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '74.90', 'Other professional, scientific and technical activities n.e.c.', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='75.0'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '75.00', 'Veterinary activities', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='77.1'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '77.11', 'Renting and leasing of cars and light motor vehicles', 2007, @NACE
  UNION ALL
 SELECT '77.12', 'Renting and leasing of trucks', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='77.2'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '77.21', 'Renting and leasing of recreational and sports goods', 2007, @NACE
  UNION ALL
 SELECT '77.22', 'Renting of video tapes and disks', 2007, @NACE
  UNION ALL
 SELECT '77.29', 'Renting and leasing of other personal and household goods', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='77.3'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '77.31', 'Renting and leasing of agricultural machinery and equipment', 2007, @NACE
  UNION ALL
 SELECT '77.32', 'Renting and leasing of construction and civil engineering machinery and equipment', 2007, @NACE
  UNION ALL
 SELECT '77.33', 'Renting and leasing of office machinery and equipment (including computers)', 2007, @NACE
  UNION ALL
 SELECT '77.34', 'Renting and leasing of water transport equipment', 2007, @NACE
  UNION ALL
 SELECT '77.35', 'Renting and leasing of air transport equipment', 2007, @NACE
  UNION ALL
 SELECT '77.39', 'Renting and leasing of other machinery, equipment and tangible goods n.e.c.', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='77.4'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '77.40', 'Leasing of intellectual property and similar products, except copyrighted works', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='78.1'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '78.10', 'Activities of employment placement agencies', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='78.2'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '78.20', 'Temporary employment agency activities', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='78.3'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '78.30', 'Other human resources provision', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='79.1'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '79.11', 'Travel agency activities', 2007, @NACE
  UNION ALL
 SELECT '79.12', 'Tour operator activities', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='79.9'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '79.90', 'Other reservation service and related activities', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='80.1'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '80.10', 'Private security activities', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='80.2'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '80.20', 'Security systems service activities', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='80.3'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '80.30', 'Investigation activities', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='81.1'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '81.10', 'Combined facilities support activities', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='81.2'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '81.21', 'General cleaning of buildings', 2007, @NACE
  UNION ALL
 SELECT '81.22', 'Other building and industrial cleaning activities', 2007, @NACE
  UNION ALL
 SELECT '81.29', 'Other cleaning activities', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='81.3'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '81.30', 'Landscape service activities', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='82.1'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '82.11', 'Combined office administrative service activities', 2007, @NACE
  UNION ALL
 SELECT '82.19', 'Photocopying, document preparation and other specialised office support activities', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='82.2'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '82.20', 'Activities of call centres', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='82.3'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '82.30', 'Organisation of conventions and trade shows', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='82.9'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '82.91', 'Activities of collection agencies and credit bureaus', 2007, @NACE
  UNION ALL
 SELECT '82.92', 'Packaging activities', 2007, @NACE
  UNION ALL
 SELECT '82.99', 'Other business support service activities n.e.c.', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='84.1'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '84.11', 'General public administration activities', 2007, @NACE
  UNION ALL
 SELECT '84.12', 'Regulation of the activities of providing health care, education, cultural services and other social services, excluding social security', 2007, @NACE
  UNION ALL
 SELECT '84.13', 'Regulation of and contribution to more efficient operation of businesses', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='84.2'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '84.21', 'Foreign affairs', 2007, @NACE
  UNION ALL
 SELECT '84.22', 'Defence activities', 2007, @NACE
  UNION ALL
 SELECT '84.23', 'Justice and judicial activities', 2007, @NACE
  UNION ALL
 SELECT '84.24', 'Public order and safety activities', 2007, @NACE
  UNION ALL
 SELECT '84.25', 'Fire service activities', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='84.3'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '84.30', 'Compulsory social security activities', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='85.1'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '85.10', 'Pre-primary education', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='85.2'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '85.20', 'Primary education', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='85.3'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '85.31', 'General secondary education', 2007, @NACE
  UNION ALL
 SELECT '85.32', 'Technical and vocational secondary education', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='85.4'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '85.41', 'Post-secondary non-tertiary education', 2007, @NACE
  UNION ALL
 SELECT '85.42', 'Tertiary education', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='85.5'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '85.51', 'Sports and recreation education', 2007, @NACE
  UNION ALL
 SELECT '85.52', 'Cultural education', 2007, @NACE
  UNION ALL
 SELECT '85.53', 'Driving school activities', 2007, @NACE
  UNION ALL
 SELECT '85.59', 'Other education n.e.c.', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='85.6'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '85.60', 'Educational support activities', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='86.1'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '86.10', 'Hospital activities', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='86.2'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '86.21', 'General medical practice activities', 2007, @NACE
  UNION ALL
 SELECT '86.22', 'Specialist medical practice activities', 2007, @NACE
  UNION ALL
 SELECT '86.23', 'Dental practice activities', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='86.9'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '86.90', 'Other human health activities', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='87.1'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '87.10', 'Residential nursing care activities', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='87.2'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '87.20', 'Residential care activities for mental retardation, mental health and substance abuse', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='87.3'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '87.30', 'Residential care activities for the elderly and disabled', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='87.9'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '87.90', 'Other residential care activities', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='88.1'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '88.10', 'Social work activities without accommodation for the elderly and disabled', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='88.9'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '88.91', 'Child day-care activities', 2007, @NACE
  UNION ALL
 SELECT '88.99', 'Other social work activities without accommodation n.e.c.', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='90.0'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '90.01', 'Performing arts', 2007, @NACE
  UNION ALL
 SELECT '90.02', 'Support activities to performing arts', 2007, @NACE
  UNION ALL
 SELECT '90.03', 'Artistic creation', 2007, @NACE
  UNION ALL
 SELECT '90.04', 'Operation of arts facilities', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='91.0'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '91.01', 'Library and archives activities', 2007, @NACE
  UNION ALL
 SELECT '91.02', 'Museums activities', 2007, @NACE
  UNION ALL
 SELECT '91.03', 'Operation of historical sites and buildings and similar visitor attractions', 2007, @NACE
  UNION ALL
 SELECT '91.04', 'Botanical and zoological gardens and nature reserves activities', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='92.0'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '92.00', 'Gambling and betting activities', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='93.1'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '93.11', 'Operation of sports facilities', 2007, @NACE
  UNION ALL
 SELECT '93.12', 'Activities of sport clubs', 2007, @NACE
  UNION ALL
 SELECT '93.13', 'Fitness facilities', 2007, @NACE
  UNION ALL
 SELECT '93.19', 'Other sports activities', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='93.2'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '93.21', 'Activities of amusement parks and theme parks', 2007, @NACE
  UNION ALL
 SELECT '93.29', 'Other amusement and recreation activities', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='94.1'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '94.11', 'Activities of business and employers membership organisations', 2007, @NACE
  UNION ALL
 SELECT '94.12', 'Activities of professional membership organisations', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='94.2'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '94.20', 'Activities of trade unions', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='94.9'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '94.91', 'Activities of religious organisations', 2007, @NACE
  UNION ALL
 SELECT '94.92', 'Activities of political organisations', 2007, @NACE
  UNION ALL
 SELECT '94.99', 'Activities of other membership organisations n.e.c.', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='95.1'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '95.11', 'Repair of computers and peripheral equipment', 2007, @NACE
  UNION ALL
 SELECT '95.12', 'Repair of communication equipment', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='95.2'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '95.21', 'Repair of consumer electronics', 2007, @NACE
  UNION ALL
 SELECT '95.22', 'Repair of household appliances and home and garden equipment', 2007, @NACE
  UNION ALL
 SELECT '95.23', 'Repair of footwear and leather goods', 2007, @NACE
  UNION ALL
 SELECT '95.24', 'Repair of furniture and home furnishings', 2007, @NACE
  UNION ALL
 SELECT '95.25', 'Repair of watches, clocks and jewellery', 2007, @NACE
  UNION ALL
 SELECT '95.29', 'Repair of other personal and household goods', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='96.0'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '96.01', 'Washing and (dry-)cleaning of textile and fur products', 2007, @NACE
  UNION ALL
 SELECT '96.02', 'Hairdressing and other beauty treatment', 2007, @NACE
  UNION ALL
 SELECT '96.03', 'Funeral and related activities', 2007, @NACE
  UNION ALL
 SELECT '96.04', 'Physical well-being activities', 2007, @NACE
  UNION ALL
 SELECT '96.09', 'Other personal service activities n.e.c.', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='97.0'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '97.00', 'Activities of households as employers of domestic personnel', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='98.1'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '98.10', 'Undifferentiated goods-producing activities of private households for own use', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='98.2'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '98.20', 'Undifferentiated service-producing activities of private households for own use', 2007, @NACE

SELECT @NACE=[LOV_NACEActivityID] FROM [dbo].[LOV_NACEACTIVITY] WHERE [Code]='99.0'
INSERT INTO [dbo].[LOV_NACEACTIVITY] (
    [Code],
    [Name],
    [StartYear],
    [ParentID]
)
 SELECT '99.00', 'Activities of extraterritorial organisations and bodies', 2007, @NACE

GO

