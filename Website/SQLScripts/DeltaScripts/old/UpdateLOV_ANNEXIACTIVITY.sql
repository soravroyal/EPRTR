---------------------------------------------------------------------------------------
--	Delta script updating table LOV_ANNEXIACTIVITY with a new
--	and shorter text for column name
---------------------------------------------------------------------------------------

--update [EPRTRmaster].[dbo].LOV_ANNEXIACTIVITY
--set Name = substring( [1 Energy sector],len(F1)+2,255)
--from [EPRTRmaster].[dbo].[Activity$] a
--inner join [EPRTRmaster].[dbo].LOV_ANNEXIACTIVITY lov
--on lov.[Code] = a.F1

--select 'update [EPRTRmaster].[dbo].LOV_ANNEXIACTIVITY set Name = '''+ Name+ 
--''' where Code = '''+ Code + '''' 
--from [EPRTRmaster].[dbo].LOV_ANNEXIACTIVITY

update [EPRTRmaster].[dbo].LOV_ANNEXIACTIVITY set Name = 'Energy sector' where Code = '1'
update [EPRTRmaster].[dbo].LOV_ANNEXIACTIVITY set Name = 'Productiona and processing of metals' where Code = '2'
update [EPRTRmaster].[dbo].LOV_ANNEXIACTIVITY set Name = 'Mineral industry' where Code = '3'
update [EPRTRmaster].[dbo].LOV_ANNEXIACTIVITY set Name = 'Chemical industry' where Code = '4'
update [EPRTRmaster].[dbo].LOV_ANNEXIACTIVITY set Name = 'Waste and waste water management' where Code = '5'
update [EPRTRmaster].[dbo].LOV_ANNEXIACTIVITY set Name = 'Paper and wood production processing' where Code = '6'
update [EPRTRmaster].[dbo].LOV_ANNEXIACTIVITY set Name = 'Intensive livestock production and aquaculture' where Code = '7'
update [EPRTRmaster].[dbo].LOV_ANNEXIACTIVITY set Name = 'Animal and vegetable products from the food and beverage sector' where Code = '8'
update [EPRTRmaster].[dbo].LOV_ANNEXIACTIVITY set Name = 'Other activities' where Code = '9'
update [EPRTRmaster].[dbo].LOV_ANNEXIACTIVITY set Name = 'Mineral oil and gas refineries' where Code = '1.(a)'
update [EPRTRmaster].[dbo].LOV_ANNEXIACTIVITY set Name = 'Gasification and liquefaction' where Code = '1.(b)'
update [EPRTRmaster].[dbo].LOV_ANNEXIACTIVITY set Name = 'Thermal power stations and other combustion installations' where Code = '1.(c)'
update [EPRTRmaster].[dbo].LOV_ANNEXIACTIVITY set Name = 'Coke ovens' where Code = '1.(d)'
update [EPRTRmaster].[dbo].LOV_ANNEXIACTIVITY set Name = 'Coal rolling mills' where Code = '1.(e)'
update [EPRTRmaster].[dbo].LOV_ANNEXIACTIVITY set Name = 'Manufacture of coal products and solid smokeless fuel' where Code = '1.(f)'
update [EPRTRmaster].[dbo].LOV_ANNEXIACTIVITY set Name = 'Metal ore (including sulphide ore) roasting or sintering installations' where Code = '2.(a)'
update [EPRTRmaster].[dbo].LOV_ANNEXIACTIVITY set Name = 'Production of pig iron or steel including continuous casting' where Code = '2.(b)'
update [EPRTRmaster].[dbo].LOV_ANNEXIACTIVITY set Name = 'Processing of ferrous metals' where Code = '2.(c)'
update [EPRTRmaster].[dbo].LOV_ANNEXIACTIVITY set Name = 'Ferrous metal foundries' where Code = '2.(d)'
update [EPRTRmaster].[dbo].LOV_ANNEXIACTIVITY set Name = 'Production of non-ferrous crude metals from ore, concentrates or secondary raw materials' where Code = '2.(e)'
update [EPRTRmaster].[dbo].LOV_ANNEXIACTIVITY set Name = 'Surface treatment of metals and plastics using electrolytic or chemical processes' where Code = '2.(f)'
update [EPRTRmaster].[dbo].LOV_ANNEXIACTIVITY set Name = 'Underground mining and related operations' where Code = '3.(a)'
update [EPRTRmaster].[dbo].LOV_ANNEXIACTIVITY set Name = 'Opencast mining and quarrying' where Code = '3.(b)'
update [EPRTRmaster].[dbo].LOV_ANNEXIACTIVITY set Name = 'Production of cement clinker or lime in rotary kilns or other furnaces ' where Code = '3.(c)'
update [EPRTRmaster].[dbo].LOV_ANNEXIACTIVITY set Name = 'Production of asbestos and the manufacture of asbestos based products ' where Code = '3.(d)'
update [EPRTRmaster].[dbo].LOV_ANNEXIACTIVITY set Name = 'Manufacture of glass, including glass fibre ' where Code = '3.(e)'
update [EPRTRmaster].[dbo].LOV_ANNEXIACTIVITY set Name = 'Melting mineral substances, including the production of mineral fibres ' where Code = '3.(f)'
update [EPRTRmaster].[dbo].LOV_ANNEXIACTIVITY set Name = 'Manufacture of ceramic products including tiles, bricks, stoneware or porcelain ' where Code = '3.(g)'
update [EPRTRmaster].[dbo].LOV_ANNEXIACTIVITY set Name = 'Industrial scale production of basic organic chemicals' where Code = '4.(a)'
update [EPRTRmaster].[dbo].LOV_ANNEXIACTIVITY set Name = 'Industrial scale production of basic inorganic chemicals' where Code = '4.(b)'
update [EPRTRmaster].[dbo].LOV_ANNEXIACTIVITY set Name = 'Industrial scale production of phosphorous, nitrogen or potassium based fertilizers' where Code = '4.(c)'
update [EPRTRmaster].[dbo].LOV_ANNEXIACTIVITY set Name = 'Industrial scale production of basic plant health products and of biocides ' where Code = '4.(d)'
update [EPRTRmaster].[dbo].LOV_ANNEXIACTIVITY set Name = 'Industrial scale production of basic pharmaceutical products ' where Code = '4.(e)'
update [EPRTRmaster].[dbo].LOV_ANNEXIACTIVITY set Name = 'Industrial scale production of explosives and pyrotechnic products ' where Code = '4.(f)'
update [EPRTRmaster].[dbo].LOV_ANNEXIACTIVITY set Name = 'Disposal or recovery of hazardous waste' where Code = '5.(a)'
update [EPRTRmaster].[dbo].LOV_ANNEXIACTIVITY set Name = 'Incineration of non-hazardous waste included in Directive 2000/76/EC - waste incineration ' where Code = '5.(b)'
update [EPRTRmaster].[dbo].LOV_ANNEXIACTIVITY set Name = 'Disposal of non-hazardous waste' where Code = '5.(c)'
update [EPRTRmaster].[dbo].LOV_ANNEXIACTIVITY set Name = 'Landfills (excluding landfills closed before the 16.7.2001)' where Code = '5.(d)'
update [EPRTRmaster].[dbo].LOV_ANNEXIACTIVITY set Name = 'Disposal or recycling of animal carcasses and animal waste' where Code = '5.(e)'
update [EPRTRmaster].[dbo].LOV_ANNEXIACTIVITY set Name = 'Urban waste-water treatment plants' where Code = '5.(f)'
update [EPRTRmaster].[dbo].LOV_ANNEXIACTIVITY set Name = 'Independently operated industrial waste-water treatment plants serving a listed activity' where Code = '5.(g)'
update [EPRTRmaster].[dbo].LOV_ANNEXIACTIVITY set Name = 'Production of pulp from timber or similar fibrous materials' where Code = '6.(a)'
update [EPRTRmaster].[dbo].LOV_ANNEXIACTIVITY set Name = 'Production of paper and board and other primary wood products ' where Code = '6.(b)'
update [EPRTRmaster].[dbo].LOV_ANNEXIACTIVITY set Name = 'Preservation of wood and wood products with chemicals ' where Code = '6.(c)'
update [EPRTRmaster].[dbo].LOV_ANNEXIACTIVITY set Name = 'Intensive rearing of poultry or pigs' where Code = '7.(a)'
update [EPRTRmaster].[dbo].LOV_ANNEXIACTIVITY set Name = 'Intensive aquaculture' where Code = '7.(b)'
update [EPRTRmaster].[dbo].LOV_ANNEXIACTIVITY set Name = 'Slaughterhouses' where Code = '8.(a)'
update [EPRTRmaster].[dbo].LOV_ANNEXIACTIVITY set Name = 'Treatment and processing of animal and vegetable materials in food and drink production ' where Code = '8.(b)'
update [EPRTRmaster].[dbo].LOV_ANNEXIACTIVITY set Name = 'Treatment and processing of milk' where Code = '8.(c)'
update [EPRTRmaster].[dbo].LOV_ANNEXIACTIVITY set Name = 'Pretreatment or dyeing of fibres or textiles ' where Code = '9.(a)'
update [EPRTRmaster].[dbo].LOV_ANNEXIACTIVITY set Name = 'Tanning of hides and skins' where Code = '9.(b)'
update [EPRTRmaster].[dbo].LOV_ANNEXIACTIVITY set Name = 'Surface treatment of substances, objects or products using organic solvents' where Code = '9.(c)'
update [EPRTRmaster].[dbo].LOV_ANNEXIACTIVITY set Name = 'Production of carbon or electro-graphite through incineration or graphitization ' where Code = '9.(d)'
update [EPRTRmaster].[dbo].LOV_ANNEXIACTIVITY set Name = 'Building of, painting or removal of paint from ships ' where Code = '9.(e)'
update [EPRTRmaster].[dbo].LOV_ANNEXIACTIVITY set Name = 'Hot-rolling mills' where Code = '2.(c).(i)'
update [EPRTRmaster].[dbo].LOV_ANNEXIACTIVITY set Name = 'Smitheries with hammers' where Code = '2.(c).(ii)'
update [EPRTRmaster].[dbo].LOV_ANNEXIACTIVITY set Name = 'Application of protective fused metal coats' where Code = '2.(c).(iii)'
update [EPRTRmaster].[dbo].LOV_ANNEXIACTIVITY set Name = 'Metallurgical, chemical or electrolytic production of non ferrous metals' where Code = '2.(e).(i)'
update [EPRTRmaster].[dbo].LOV_ANNEXIACTIVITY set Name = 'Smelting of non-ferrous metals including recovered products' where Code = '2.(e).(ii)'
update [EPRTRmaster].[dbo].LOV_ANNEXIACTIVITY set Name = 'Cement clinker in rotary kilns' where Code = '3.(c).(i)'
update [EPRTRmaster].[dbo].LOV_ANNEXIACTIVITY set Name = 'Lime in rotary kilns' where Code = '3.(c).(ii)'
update [EPRTRmaster].[dbo].LOV_ANNEXIACTIVITY set Name = 'Cement clinker or lime in other furnaces' where Code = '3.(c).(iii)'
update [EPRTRmaster].[dbo].LOV_ANNEXIACTIVITY set Name = 'Simple hydrocarbons (linear or cyclic, saturated or unsaturated, aliphatic or aromatic)' where Code = '4.(a).(i)'
update [EPRTRmaster].[dbo].LOV_ANNEXIACTIVITY set Name = 'Oxygen-containing hydrocarbons' where Code = '4.(a).(ii)'
update [EPRTRmaster].[dbo].LOV_ANNEXIACTIVITY set Name = 'Sulphurous hydrocarbons' where Code = '4.(a).(iii)'
update [EPRTRmaster].[dbo].LOV_ANNEXIACTIVITY set Name = 'Nitrogenous hydrocarbons' where Code = '4.(a).(iv)'
update [EPRTRmaster].[dbo].LOV_ANNEXIACTIVITY set Name = 'Phosphorus-containing hydrocarbons' where Code = '4.(a).(v)'
update [EPRTRmaster].[dbo].LOV_ANNEXIACTIVITY set Name = 'Halogenic hydrocarbons' where Code = '4.(a).(vi)'
update [EPRTRmaster].[dbo].LOV_ANNEXIACTIVITY set Name = 'Organometallic compounds' where Code = '4.(a).(vii)'
update [EPRTRmaster].[dbo].LOV_ANNEXIACTIVITY set Name = 'Basic plastic materials (polymers, synthetic fibres and cellulose-based fibres)' where Code = '4.(a).(viii)'
update [EPRTRmaster].[dbo].LOV_ANNEXIACTIVITY set Name = 'Synthetic rubbers' where Code = '4.(a).(ix)'
update [EPRTRmaster].[dbo].LOV_ANNEXIACTIVITY set Name = 'Dyes and pigments' where Code = '4.(a).(x)'
update [EPRTRmaster].[dbo].LOV_ANNEXIACTIVITY set Name = 'Surface-active agents and surfactants' where Code = '4.(a).(xi)'
update [EPRTRmaster].[dbo].LOV_ANNEXIACTIVITY set Name = 'Gases' where Code = '4.(b).(i)'
update [EPRTRmaster].[dbo].LOV_ANNEXIACTIVITY set Name = 'Acids' where Code = '4.(b).(ii)'
update [EPRTRmaster].[dbo].LOV_ANNEXIACTIVITY set Name = 'Bases' where Code = '4.(b).(iii)'
update [EPRTRmaster].[dbo].LOV_ANNEXIACTIVITY set Name = 'Salts' where Code = '4.(b).(iv)'
update [EPRTRmaster].[dbo].LOV_ANNEXIACTIVITY set Name = 'Non-metals, metal oxides or other inorganic compounds' where Code = '4.(b).(v)'
update [EPRTRmaster].[dbo].LOV_ANNEXIACTIVITY set Name = 'With 40 000 places for poultry' where Code = '7.(a).(i)'
update [EPRTRmaster].[dbo].LOV_ANNEXIACTIVITY set Name = 'With 2 000 places for production pigs (over 30kg)' where Code = '7.(a).(ii)'
update [EPRTRmaster].[dbo].LOV_ANNEXIACTIVITY set Name = 'With 750 places for sows' where Code = '7.(a).(iii)'
update [EPRTRmaster].[dbo].LOV_ANNEXIACTIVITY set Name = 'Animal raw materials (other than milk)' where Code = '8.(b).(i)'
update [EPRTRmaster].[dbo].LOV_ANNEXIACTIVITY set Name = 'Vegetable raw materials' where Code = '8.(b).(ii)'
update [EPRTRmaster].[dbo].LOV_ANNEXIACTIVITY set Name = 'Energy industries' where Code = 'EPER_1'
update [EPRTRmaster].[dbo].LOV_ANNEXIACTIVITY set Name = 'Production and processing of metals' where Code = 'EPER_2'
update [EPRTRmaster].[dbo].LOV_ANNEXIACTIVITY set Name = 'Mineral Industry' where Code = 'EPER_3'
update [EPRTRmaster].[dbo].LOV_ANNEXIACTIVITY set Name = 'Chemical industry' where Code = 'EPER_4'
update [EPRTRmaster].[dbo].LOV_ANNEXIACTIVITY set Name = 'Waste management' where Code = 'EPER_5'
update [EPRTRmaster].[dbo].LOV_ANNEXIACTIVITY set Name = 'Other Annex I activities' where Code = 'EPER_6'
update [EPRTRmaster].[dbo].LOV_ANNEXIACTIVITY set Name = 'Combustion installations > 50 MW' where Code = 'EPER_1.1'
update [EPRTRmaster].[dbo].LOV_ANNEXIACTIVITY set Name = 'Mineral oil and gas refineries' where Code = 'EPER_1.2'
update [EPRTRmaster].[dbo].LOV_ANNEXIACTIVITY set Name = 'Coke ovens' where Code = 'EPER_1.3'
update [EPRTRmaster].[dbo].LOV_ANNEXIACTIVITY set Name = 'Coal gasification and liquefaction plants' where Code = 'EPER_1.4'
update [EPRTRmaster].[dbo].LOV_ANNEXIACTIVITY set Name = 'Metal industry' where Code = 'EPER_2.1/2.2/2.3/2.4/2.5/2.6'
update [EPRTRmaster].[dbo].LOV_ANNEXIACTIVITY set Name = 'Cement, lime, glass, mineral substances or ceramic products ' where Code = 'EPER_3.1/3.3/3.4/3.5'
update [EPRTRmaster].[dbo].LOV_ANNEXIACTIVITY set Name = 'Production of asbestos and asbestos based products' where Code = 'EPER_3.2'
update [EPRTRmaster].[dbo].LOV_ANNEXIACTIVITY set Name = 'Basic organic chemicals' where Code = 'EPER_4.1'
update [EPRTRmaster].[dbo].LOV_ANNEXIACTIVITY set Name = 'Basic inorganic chemicals or fertilisers' where Code = 'EPER_4.2/4.3'
update [EPRTRmaster].[dbo].LOV_ANNEXIACTIVITY set Name = 'Biocides and explosives' where Code = 'EPER_4.4/4.6'
update [EPRTRmaster].[dbo].LOV_ANNEXIACTIVITY set Name = 'Pharmaceutical products' where Code = 'EPER_4.5'
update [EPRTRmaster].[dbo].LOV_ANNEXIACTIVITY set Name = 'Disposal/recovery of hazardous or municipal waste ' where Code = 'EPER_5.1/5.2'
update [EPRTRmaster].[dbo].LOV_ANNEXIACTIVITY set Name = 'Disposal of non-hazardous waste and landfills ' where Code = 'EPER_5.3/5.4'
update [EPRTRmaster].[dbo].LOV_ANNEXIACTIVITY set Name = 'Pulp, paper or board production' where Code = 'EPER_6.1'
update [EPRTRmaster].[dbo].LOV_ANNEXIACTIVITY set Name = 'Pretreatment of fibres or textiles' where Code = 'EPER_6.2'
update [EPRTRmaster].[dbo].LOV_ANNEXIACTIVITY set Name = 'Tanning of hides and skins' where Code = 'EPER_6.3'
update [EPRTRmaster].[dbo].LOV_ANNEXIACTIVITY set Name = 'Slaughterhouses, milk, animal and vegetable raw materials' where Code = 'EPER_6.4'
update [EPRTRmaster].[dbo].LOV_ANNEXIACTIVITY set Name = 'Disposal or recycling of animal carcasses and animal waste' where Code = 'EPER_6.5'
update [EPRTRmaster].[dbo].LOV_ANNEXIACTIVITY set Name = 'Poultry, pigs and sows ' where Code = 'EPER_6.6'
update [EPRTRmaster].[dbo].LOV_ANNEXIACTIVITY set Name = 'Surface treatment or products using organic solvents ' where Code = 'EPER_6.7'
update [EPRTRmaster].[dbo].LOV_ANNEXIACTIVITY set Name = 'Production of carbon or graphite ' where Code = 'EPER_6.8'