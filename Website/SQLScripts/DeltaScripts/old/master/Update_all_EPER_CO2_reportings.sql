use EPRTRmaster
--------------------------------------------------------------------------------------
--	Ticket #879: Add new pollutants:
--	Remove link between CO2 in EPER and:E-PRTR in time series: 
--	Update all EPER reportings of CO2 to this pollutant in databases.
--	Coordinate with Bilbomatica of how to handle EPER resubmission 
--------------------------------------------------------------------------------------
           
declare @LOV_PollutantID int
set @LOV_PollutantID = (
	select LOV_PollutantID 
	from [EPRTRmaster].[dbo].[LOV_POLLUTANT] 
	where Code = 'CO2 in EPER'
)

update POLLUTANTRELEASE
set LOV_PollutantID = @LOV_PollutantID
from POLLUTANTRELEASE p 
inner join	
	LOV_POLLUTANT lp
on	p.LOV_PollutantID = lp.LOV_PollutantID
and Code = 'CO2'
inner join 
	FACILITYREPORT fr
on fr.FacilityReportID = p.FacilityReportID
inner join 
	POLLUTANTRELEASEANDTRANSFERREPORT prtr
on	prtr.PollutantReleaseAndTransferReportID = fr.PollutantReleaseAndTransferReportID
and prtr.ReportingYear <= 2004

------Controll SQL
----select lp.Code,prtr.ReportingYear, p.* from POLLUTANTRELEASE p 
----inner join LOV_POLLUTANT lp
----on	p.LOV_PollutantID = lp.LOV_PollutantID
----and Code = 'CO2 in EPER'
----inner join FACILITYREPORT fr
----on	fr.FacilityReportID = p.FacilityReportID
----inner join POLLUTANTRELEASEANDTRANSFERREPORT prtr
----on	prtr.PollutantReleaseAndTransferReportID = fr.PollutantReleaseAndTransferReportID
----and prtr.ReportingYear <= 2004


