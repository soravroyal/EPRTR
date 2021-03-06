--------------------------------------------------------------------------------------
--	Remove link between CO2 in EPER and:E-PRTR in time series: 
--	Update all EPER reportings of CO2 to this pollutant in databases.
--------------------------------------------------------------------------------------
           
declare @LOV_CO2EPER_ID int
set @LOV_CO2EPER_ID = (
	select LOV_PollutantID 
	from [dbo].[LOV_POLLUTANT] 
	where Code = 'CO2 in EPER'
)

update POLLUTANTRELEASE
set LOV_PollutantID = @LOV_CO2EPER_ID
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


