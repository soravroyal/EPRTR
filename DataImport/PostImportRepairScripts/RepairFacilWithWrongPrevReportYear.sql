use [EPRTRMaster]


/* 
   This script selects all the facilities with NationalId's 
   reported with a previous reporting year which does not 
   exist. This is caused by wrong input data  
 */

if object_id('WrongPreviousReportingYear')is not null DROP TABLE WrongPreviousReportingYear ;

select MIN(s1.FacilityID) as FacilityID, s1.NationalID, s1.LOV_CountryID
into WrongPreviousReportingYear
from
(select 
	FacilityID,
	NationalID,
	pr.LOV_CountryID,
	PrevReportingYear
  FROM [FACILITYREPORT] as fr
	inner join POLLUTANTRELEASEANDTRANSFERREPORT as pr
	on pr.PollutantReleaseAndTransferReportID = fr.PollutantReleaseAndTransferReportID		
  where PrevNationalID is not null And PrevReportingYear is not Null and
		(PrevReportingYear <> ReportingYear and NationalID = PrevNationalID)) as s1
		left outer join
(select 
	FacilityID, NationalID,pr.LOV_CountryID, ReportingYear
  FROM [FACILITYREPORT] as fr
	inner join POLLUTANTRELEASEANDTRANSFERREPORT as pr
	on pr.PollutantReleaseAndTransferReportID = fr.PollutantReleaseAndTransferReportID
 ) as s2		
 on s1.FacilityID = s2.FacilityID and s1.LOV_CountryID = s2.LOV_CountryID 
	and s1.NationalID = s2.NationalID and s1.PrevReportingYear = s2.ReportingYear
where s2.FacilityID is Null
group by s1.NationalID, s1.LOV_CountryID 
order by s1.LOV_CountryID, s1.NationalID
;

/*
*	In this selection we assume that the facilityid's up to the 2012 imports are correct 
*	meaning that we select the highest/latest FacilityID's - 
*   We identify pre 2012 facilities by PrevNationalID and PrevReportingYear beeing Null
*/
DECLARE @Pre2012Facilities2bUsed TABLE (max_FacilityID int, NationalID nvarchar(255), LOV_CountryID int);

insert into @Pre2012Facilities2bUsed(max_FacilityID, NationalID, LOV_CountryID)
(select Max(s1.FacilityID) as max_FacilityID, s1.NationalID, s1.LOV_CountryID
from
(select 
	FacilityID,
	NationalID,
	pr.LOV_CountryID
  FROM [FACILITYREPORT] as fr
	inner join POLLUTANTRELEASEANDTRANSFERREPORT as pr
	on pr.PollutantReleaseAndTransferReportID = fr.PollutantReleaseAndTransferReportID		
  where PrevNationalID is null And PrevReportingYear is Null ) as s1
group by s1.NationalID, s1.LOV_CountryID )
;

/*
*	In the next update we assume that the facilityid's up to the 2012 imports are correct 
*	meaning that we select the highest/latest FacilityID's - see previous selections
*	For new facilities added in 2012, we select the first / lowest FacilityID's
*/
update WrongPreviousReportingYear
set FacilityID = f2bu.Max_FacilityID
from WrongPreviousReportingYear as wry inner join 
	@Pre2012Facilities2bUsed as f2bu
	on wry.NationalID = f2bu.NationalID and wry.Lov_countryId = f2bu.Lov_countryId
;
/*
* Now we just need to update FACILITYREPORT and FACILITYLOG
*/
	--	column xmlFacilityReportID has no function and is used to hold
	--	a temporary copy of the original FacilityID. This is done for test purpose only.
	--	The column can be deleted after the validation of the update operation.

	--Clean up before we use the column
	update FACILITYREPORT
	set xmlFacilityReportID = Null
;
	-- we backup the existing Facilityid's
	update FACILITYREPORT
	set xmlFacilityReportID = FacilityID
	where isnull(xmlFacilityReportID,0) = 0
;


-- Here we update the FacilityID's in FACILITYREPORT
-- This reflects 80073 rows where 19696 get's a new FacilityID
update FACILITYREPORT
set FacilityID = wpry.FacilityID
from FACILITYREPORT fr
inner join 
	POLLUTANTRELEASEANDTRANSFERREPORT prtr 
on	fr.PollutantReleaseAndTransferReportID = prtr.PollutantReleaseAndTransferReportID
inner join
	WrongPreviousReportingYear wpry
on	wpry.NationalID = fr.NationalID
and wpry.LOV_CountryID = prtr.LOV_CountryID
;


----------------------------------------------------------------------------------------------
--	Update of FACILITYLOG table.
--	An extra column is added to table FACILITYLOG. This column is used to hold a copy
--	of the original FacilityID (the FacilityID generated by the import procedure)

--alter table FACILITYLOG drop column OldFacilityID
--This reflects 467020 rows where 19696 get's a new FacilityID

if not exists ( select * from INFORMATION_SCHEMA.COLUMNS
	where TABLE_NAME='FACILITYLOG' and COLUMN_NAME='OldFacilityID' )
alter table FACILITYLOG add OldFacilityID int
;
update FACILITYLOG
set OldFacilityID = Null
;
update FACILITYLOG
set OldFacilityID = FacilityID
where isnull(OldFacilityID,0) = 0
;
update FACILITYLOG
set FacilityID = fr.FacilityID
from FACILITYLOG f
inner join
	FACILITYREPORT fr
on	fr.FacilityReportID = f.FacilityReportID
;
/*
----------------------------------------------------------------------------------------------
--	Clean up of help tables

DROP TABLE WrongPreviousReportingYear

--SELECT * FROM FACILITYLOG ORDER BY 2 ASC

*/




