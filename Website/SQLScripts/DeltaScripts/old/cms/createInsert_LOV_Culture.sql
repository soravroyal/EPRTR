if object_id('EPRTRcms.dbo.LOV_Culture')is not null DROP TABLE [EPRTRcms].[dbo].[LOV_Culture]
go
create table [EPRTRcms].[dbo].[LOV_Culture](
	LOV_CultureID [int] IDENTITY(1,1) NOT NULL,
	EnglishName [nvarchar](255) NOT NULL,
	Code [nvarchar](255) NOT NULL,
	CodeXliff [nvarchar](255) NULL,
	CodeAEAT [nvarchar](255) NULL,
	Name [nvarchar](255) null,
	CONSTRAINT [LOV_CultureID] PRIMARY KEY CLUSTERED (LOV_CultureID) 
)
 
insert into [EPRTRcms].[dbo].[LOV_Culture]
values( 
'Bulgarian',
'bg-BG',
'bg',
'bg',
N'Български'
)
insert into [EPRTRcms].[dbo].[LOV_Culture]
values( 
'Czech',
'cs-CZ',
'cs',
'cs',
N'Čeština'
)
insert into [EPRTRcms].[dbo].[LOV_Culture]
values( 
'Danish',
'da-DK',
'da',
'da',
N'Dansk'
)
insert into [EPRTRcms].[dbo].[LOV_Culture]
values( 
'Dutch',
'nl-NL',
'nl',
'nl',
N'Nederlandse'
)
insert into [EPRTRcms].[dbo].[LOV_Culture]
values( 
'English',
'en-GB',
'en',
'en',
N'English'
)
insert into [EPRTRcms].[dbo].[LOV_Culture]
values( 
'Estonian',
'et-EE',
'et',
'et',
N'Eesti'
)
insert into [EPRTRcms].[dbo].[LOV_Culture]
values( 
'Finnish',
'fi-FI',
'fi',
'fi',
N'Suomi'
)
insert into [EPRTRcms].[dbo].[LOV_Culture]
values( 
'French',
'fr-FR',
'fr',
'fr',
N'Français'
)
insert into [EPRTRcms].[dbo].[LOV_Culture]
values( 
'German',
'de-DE',
'de',
'de',
N'Deutsch'
)
insert into [EPRTRcms].[dbo].[LOV_Culture]
values( 
'Greek',
'el-GR',
'el',
'el',
N'Ελληνικά'
)
insert into [EPRTRcms].[dbo].[LOV_Culture]
values( 
'Hungarian',
'hu-HU',
'hu',
'hu',
N'Magyar'
)
insert into [EPRTRcms].[dbo].[LOV_Culture]
values( 
'Italian',
'it-IT',
'it',
'it',
N'Italiano'
)
insert into [EPRTRcms].[dbo].[LOV_Culture]
values( 
'Latvian',
'lv-LV',
'lv',
'lv',
N'Latviešu'
)
insert into [EPRTRcms].[dbo].[LOV_Culture]
values( 
'Lithuanian',
'lt-LT',
'lt',
'lt',
'Lietuviškai'
)
insert into [EPRTRcms].[dbo].[LOV_Culture]
values( 
'Maltese',
'mt-MT',
'mt',
'mt',
'Malti'
)
insert into [EPRTRcms].[dbo].[LOV_Culture]
values( 
'Polish',
'pl-PL',
'pl',
'pl',
'Polska'
)
insert into [EPRTRcms].[dbo].[LOV_Culture]
values( 
'Portuguese',
'pt-BR',
'pt',
'pt',
'Português'
)
insert into [EPRTRcms].[dbo].[LOV_Culture]
values( 
'Romanian',
'ro-RO',
'ro',
'ro',
'Român'
)
insert into [EPRTRcms].[dbo].[LOV_Culture]
values( 
'Slovak',
'sk-SK',
'sk',
'sk',
N'Slovenčina'
)
insert into [EPRTRcms].[dbo].[LOV_Culture]
values( 
'Slovene',
'sl-SI',
'sl',
'sl',
'Slovenski'
)
insert into [EPRTRcms].[dbo].[LOV_Culture]
values( 
'Spanish',
'es-ES',
'es',
'es',
'Español
'
)
insert into [EPRTRcms].[dbo].[LOV_Culture]
values( 
'Swedish',
'sv-SE',
'sv',
'sv',
'Svenska'
)

--select * from [EPRTRcms].[dbo].[LOV_Culture]

 

 

