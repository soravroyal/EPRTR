/****** Script for SelectTopNRows command from SSMS  ******/
SELECT p.PollutantReleaseAndTransferReportID
      ,p.ReportingYear
      ,c.Code as COUNTRY
      ,p.CdrUrl
      ,p.CdrReleased
	  ,COUNT(f.FacilityReportID)
      ,p.ForReview
      ,p.Published
      ,p.Imported
  FROM [EPRTRMaster].[dbo].[POLLUTANTRELEASEANDTRANSFERREPORT] p
  JOIN EPRTRMaster.dbo.LOV_COUNTRY c on p.LOV_CountryID = c.LOV_CountryID
  JOIN EPRTRMaster.dbo.FACILITYREPORT f on f.PollutantReleaseAndTransferReportID = p.PollutantReleaseAndTransferReportID
  where Imported > '2012-04-15'
  group by p.PollutantReleaseAndTransferReportID
      ,p.ReportingYear
      ,c.Code
      ,p.CdrUrl
      ,p.CdrReleased
      ,p.ForReview
      ,p.Published
      ,p.Imported
   order by imported