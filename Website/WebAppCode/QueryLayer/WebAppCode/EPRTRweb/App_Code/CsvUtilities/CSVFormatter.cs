﻿using System;
using System.Collections.Generic;
using System.Globalization;
using System.Text;
using System.Threading;
using EPRTR.Formatters;
using EPRTR.Localization;
using QueryLayer;
using QueryLayer.Filters;
using QueryLayer.Utilities;
using System.Text.RegularExpressions;
using QueryLayer.Enums;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Linq;

namespace EPRTR.CsvUtilities
{
    /// <summary>
    /// Summary description for CSVFormatter
    /// </summary>
	public class CSVFormatter
	{
		private string listSeparator;
		private CultureInfo csvCulture;

		private const string NOTHING_REPORTED = "-";
		private const string QUANTITY_KEY_STR = "Quantity";
		private const string QUANTITY_ACCIDENTAL_KEY_STR = "AccidentalQuantity";
		private const string UNIT_KEY_STR = "QuantityUnit";

		private const int NUMBER_ACTIVITYCOLS = 3;
		private const int NUMBER_AREACOLS = 4;


		//public CSVFormatter(string delimiter)
		//{
		//    this.listSeparator = delimiter;
		//}

		public CSVFormatter(CultureInfo csvCulture)
		{
			if (csvCulture == null)
			{
				this.csvCulture = Thread.CurrentThread.CurrentCulture;
			}
			else
			{
				this.csvCulture = csvCulture;
			}

			listSeparator = this.csvCulture.TextInfo.ListSeparator;
		}

		/// <summary>
		/// Create csv header according to dictionary
		/// </summary>
		public string CreateHeader(Dictionary<string, string> headerContent)
		{
			string result = String.Empty;
			foreach (KeyValuePair<string, string> kvp in headerContent)
				result += kvp.Key + listSeparator + kvp.Value + Environment.NewLine;

			// add space after header
			result += Environment.NewLine;
			return result;
		}

		/// <summary>
		/// Facility Row
		/// </summary>
		/// <param name="r"></param>
		/// <returns>Returns the Facility row.</returns>
		public string GetFacilityRow(Facility.FacilityCSV r)
		{
			string result = AddValue(r.Year);
			result += AddValue(r.FacilityReportID);
			result += AddValue(r.NationalID);
			result += AddValue(r.EPRTRFacilityID);
			result += AddText(r.FacilityName);
			result += AddText(r.ParentCompany);
			result += AddValue(r.PostalCode);
			result += AddText(r.Address);
			result += AddSimple(r.City);
			result += AddSimple(r.ActivityCode);
			result += AddText(r.ActivityName);
			result += AddSimple(r.CountryCode);
			result += AddText(r.CountryName);
			result += AddSimple(r.RiverBasinCode);
			result += AddText(r.RiverBasinName);
			result += AddSimple(r.NutsRegionCode);
			result += AddText(r.NutsRegionName);
			result += AddSimple(r.URL);
			result += Environment.NewLine;
			return result;
		}

		/// <summary>
		/// Facility Header
		/// </summary>
		/// <returns>Returns the Facility header.</returns>
		public string GetFacilityHeader()
		{
			string result = Resources.GetGlobal("Common", "Year") + listSeparator;
			result += Resources.GetGlobal("Common", "FacilityReportID") + listSeparator;
			result += Resources.GetGlobal("Common", "NationalID") + listSeparator;
			result += Resources.GetGlobal("Facility", "EPRTRFacilityID") + listSeparator;
			result += Resources.GetGlobal("Common", "FacilityName") + listSeparator;
			result += Resources.GetGlobal("Facility", "ParentCompanyName") + listSeparator;
			result += Resources.GetGlobal("Facility", "PostalCode") + listSeparator;
			result += Resources.GetGlobal("Common", "Address") + listSeparator;
			result += Resources.GetGlobal("Common", "TownVillage") + listSeparator;
			result += Resources.GetGlobal("Common", "ActivityCode") + listSeparator;
			result += Resources.GetGlobal("Common", "ActivityName") + listSeparator;
			result += Resources.GetGlobal("Common", "CountryCode") + listSeparator;
			result += Resources.GetGlobal("Common", "CountryName") + listSeparator;
			result += Resources.GetGlobal("Common", "RiverBasinDistrictCode") + listSeparator;
			result += Resources.GetGlobal("Common", "RiverBasinDistrictName") + listSeparator;
			result += Resources.GetGlobal("Common", "NUTSRegionCode") + listSeparator;
			result += Resources.GetGlobal("Common", "NUTSRegionName") + listSeparator;
			result += Resources.GetGlobal("Common", "URL") + listSeparator;
			result += Environment.NewLine;
			return result;
		}

		/// <summary>
		/// WasteTransfer row
		/// </summary>
		/// <param name="r"></param>
		/// <returns>Returns WasteTransfer row</returns>
		public string GetWasteRow(WasteTransfers.TransboundaryHazardousWasteData r)
		{
			string result = AddValue(r.Year);
			result += AddSimple(r.TransferFrom);
			result += AddText(LOVResources.CountryName(r.TransferFrom));
			result += AddSimple(r.TransferTo);
			result += AddText(LOVResources.CountryName(r.TransferTo));
			result += AddValue(r.Total);
			result += AddUnit(r.Unit);
			result += AddValue(r.Recovery);
			result += AddUnit(r.Unit);
			result += AddValue(r.Disposal);
			result += AddUnit(r.Unit);
			result += AddValue(r.UnSpecified);
			result += AddUnit(r.Unit);
			result += AddSimple(r.Facilities);
			result += Environment.NewLine;
			return result;
		}

		#region CSV header rows for waste related CSV

		public string GetWasteHeader()
		{
			string result = Resources.GetGlobal("Common", "Year") + listSeparator;
			result += Resources.GetGlobal("Common", "FromCountryCode") + listSeparator;
			result += Resources.GetGlobal("Common", "FromCountryName") + listSeparator;
			result += Resources.GetGlobal("Common", "ToCountryCode") + listSeparator;
			result += Resources.GetGlobal("Common", "ToCountryName") + listSeparator;
			result += Resources.GetGlobal("Common", "TotalHW") + listSeparator;
			result += Resources.GetGlobal("Common", "TotalUnit") + listSeparator;
			result += Resources.GetGlobal("Common", "Recovery") + listSeparator;
			result += Resources.GetGlobal("Common", "RecoveryUnit") + listSeparator;
			result += Resources.GetGlobal("Common", "Disposal") + listSeparator;
			result += Resources.GetGlobal("Common", "DisposalUnit") + listSeparator;
			result += Resources.GetGlobal("Common", "Unspecified") + listSeparator;
			result += Resources.GetGlobal("Common", "UnspecifiedUnit") + listSeparator;
			result += Resources.GetGlobal("Common", "Numberoffacilities") + listSeparator;
			result += Environment.NewLine;
			return result;
		}

		public string GetWasteActivitiesHeader()
		{
			string result = Resources.GetGlobal("Common", "Year") + listSeparator;
			result += Resources.GetGlobal("Common", "FromCountryCode") + listSeparator;
			result += Resources.GetGlobal("Common", "FromCountryName") + listSeparator;
			result += Resources.GetGlobal("Common", "ToCountryCode") + listSeparator;
			result += Resources.GetGlobal("Common", "ToCountryName") + listSeparator;
			result += Resources.GetGlobal("Common", "TotalHW") + listSeparator;
			result += Resources.GetGlobal("Common", "TotalUnit") + listSeparator;
			result += Resources.GetGlobal("Common", "Recovery") + listSeparator;
			result += Resources.GetGlobal("Common", "RecoveryUnit") + listSeparator;
			result += Resources.GetGlobal("Common", "Disposal") + listSeparator;
			result += Resources.GetGlobal("Common", "DisposalUnit") + listSeparator;
			result += Resources.GetGlobal("Common", "Unspecified") + listSeparator;
			result += Resources.GetGlobal("Common", "UnspecifiedUnit") + listSeparator;
			result += Resources.GetGlobal("Common", "Numberoffacilities") + listSeparator;
			result += Environment.NewLine;
			return result;
		}

		#endregion

		#region Time Series - used for separate Time Series menu items

		/// <summary>
		/// Pollutant Release Time Series row
		/// </summary>
		public string GetPollutantReleasesTimeSeriesRow(TimeSeriesClasses.PollutantReleases r, string pollutantName, string medium)
		{
			string result = AddValue(r.Year);
			result += AddText(pollutantName);
			result += AddSimple(medium);
			result += AddValue(r.Quantity);
			result += AddUnit(r.QuantityUnit);
			result += AddValue(r.QuantityAccidental);
			result += AddUnit(r.QuantityAccidentalUnit);
			result += AddPercentage(r.AccidentalPercent);
			result += AddValue(r.Facilities);
			result += AddValue(r.Countries);
			result += Environment.NewLine;
			return result;
		}

		/// <summary>
		/// Pollutant Release Trend Header
		/// </summary>
		/// <returns></returns>
		public string GetPollutantReleasesTimeSeriesHeader()
		{
			string result = Resources.GetGlobal("Common", "Year") + listSeparator;
			result += Resources.GetGlobal("Pollutant", "PollutantName") + listSeparator;
			result += Resources.GetGlobal("Common", "Medium") + listSeparator;
			result += Resources.GetGlobal("Common", "TotalQuantity") + listSeparator;
			result += Resources.GetGlobal("Common", "TotalQuantityUnit") + listSeparator;
			result += Resources.GetGlobal("Common", "AccidentalQuantity") + listSeparator;
			result += Resources.GetGlobal("Common", "AccidentalUnit") + listSeparator;
			result += Resources.GetGlobal("Common", "AccidentalPercent") + listSeparator;
			result += Resources.GetGlobal("Common", "Numberoffacilities") + listSeparator;
			result += Resources.GetGlobal("Common", "EPRTRCountries") + listSeparator;
			result += Environment.NewLine;
			return result;
		}

		/// <summary>
		/// Pollutant Release Time Series row
		/// </summary>
		public string GetPollutantTransfersTimeSeriesRow(TimeSeriesClasses.PollutantTransfers r, string pollutantName)
		{
			string result = AddValue(r.Year);
			result += AddText(pollutantName);
			result += AddValue(r.Quantity);
			result += AddUnit(r.QuantityUnit);
			result += AddValue(r.Facilities);
			result += AddValue(r.Countries);
			result += Environment.NewLine;
			return result;
		}

		/// <summary>
		/// Pollutant Release Trend Header
		/// </summary>
		/// <returns></returns>
		public string GetPollutantTransfersTimeSeriesHeader()
		{
			string result = Resources.GetGlobal("Common", "Year") + listSeparator;
			result += Resources.GetGlobal("Pollutant", "PollutantName") + listSeparator;
			result += Resources.GetGlobal("Pollutant", "Quantity") + listSeparator;
			result += Resources.GetGlobal("Common", "QuantityUnit") + listSeparator;
			result += Resources.GetGlobal("Common", "Numberoffacilities") + listSeparator;
			result += Resources.GetGlobal("Common", "EPRTRCountries") + listSeparator;
			result += Environment.NewLine;
			return result;
		}

		/// <summary>
		/// Pollutant Release Time Series row
		/// </summary>
		public string GetWasteTransfersTimeSeriesRow(TimeSeriesClasses.WasteTransfer r)
		{
			string result = AddValue(r.Year);
			result += AddText(LOVResources.WasteTypeName(EnumUtil.GetStringValue(r.WasteType)));
			result += AddValue(r.QuantityTotal);
			result += AddUnit(r.QuantityUnit);
			result += AddValue(r.QuantityRecovery);
			result += AddUnit(r.QuantityUnit);
			result += AddValue(r.QuantityDisposal);
			result += AddUnit(r.QuantityUnit);
			result += AddValue(r.QuantityUnspec);
			result += AddUnit(r.QuantityUnit);
			result += AddValue(r.Facilities);
			result += AddValue(r.Countries);
			result += Environment.NewLine;
			return result;
		}

		/// <summary>
		/// Pollutant Release Trend Header
		/// </summary>
		/// <returns></returns>
		public string GetWasteTransfersTimeSeriesHeader()
		{
			string result = Resources.GetGlobal("Common", "Year") + listSeparator;
			result += Resources.GetGlobal("Common", "WasteType") + listSeparator;
			result += Resources.GetGlobal("Common", "Total") + listSeparator;
			result += Resources.GetGlobal("Common", "Unit") + listSeparator;
			result += Resources.GetGlobal("Common", "Recovery") + listSeparator;
			result += Resources.GetGlobal("Common", "Unit") + listSeparator;
			result += Resources.GetGlobal("Common", "Disposal") + listSeparator;
			result += Resources.GetGlobal("Common", "Unit") + listSeparator;
			result += Resources.GetGlobal("Common", "Unspec") + listSeparator;
			result += Resources.GetGlobal("Common", "Unit") + listSeparator;
			result += Resources.GetGlobal("Common", "Numberoffacilities") + listSeparator;
			result += Resources.GetGlobal("Common", "EPRTRCountries") + listSeparator;
			result += Environment.NewLine;
			return result;
		}

		#endregion //Time Series - used for separate Time Series menu items


		#region Time Series - used under facility search

		/// <summary>
		/// Pollutant Release Trend row
		/// </summary>
		/// <param name="r"></param>
		/// <param name="pollutantName"></param>
		/// <param name="medium"></param>
		/// <returns>Returns Pollutant Release Trend row</returns>
		public string GetPollutantReleaseTrendRow(TimeSeriesClasses.PollutantReleases r, string pollutantName, string medium)
		{
			string result = AddValue(r.Year);
			result += AddText(pollutantName);
			result += AddSimple(medium);
			result += AddValue(r.Quantity);
			result += AddUnit(r.QuantityUnit);
			result += AddValue(r.QuantityAccidental);
			result += AddUnit(r.QuantityAccidentalUnit);
			result += AddPercentage(r.AccidentalPercent);
			result += Environment.NewLine;
			return result;
		}

		/// <summary>
		/// Pollutant Release Trend Header
		/// </summary>
		/// <returns></returns>
		public string GetPollutantReleaseTrendHeader()
		{
			string result = Resources.GetGlobal("Common", "Year") + listSeparator;
			result += Resources.GetGlobal("Pollutant", "PollutantName") + listSeparator;
			result += Resources.GetGlobal("Common", "Medium") + listSeparator;
			result += Resources.GetGlobal("Common", "TotalQuantity") + listSeparator;
			result += Resources.GetGlobal("Common", "TotalQuantityUnit") + listSeparator;
			result += Resources.GetGlobal("Common", "AccidentalQuantity") + listSeparator;
			result += Resources.GetGlobal("Common", "AccidentalUnit") + listSeparator;
			result += Resources.GetGlobal("Common", "AccidentalPercent") + listSeparator;
			result += Environment.NewLine;
			return result;
		}

		/// <summary>
		/// GetPollutantTransfersTrendRow
		/// </summary>
		public string GetPollutantTransfersTrendRow(TimeSeriesClasses.PollutantTransfers r, string pollutantName)
		{
			string result = AddValue(r.Year);
			result += AddText(pollutantName);
			result += AddValue(r.Quantity);
			result += AddUnit(r.QuantityUnit);
			result += Environment.NewLine;
			return result;
		}

		/// <summary>
		/// GetPollutantTransfersTrendHeader
		/// </summary>
		public string GetPollutantTransfersTrendHeader()
		{
			string result = Resources.GetGlobal("Common", "Year") + listSeparator;
			result += Resources.GetGlobal("Pollutant", "PollutantName") + listSeparator;
			result += Resources.GetGlobal("Pollutant", "Quantity") + listSeparator;
			result += Resources.GetGlobal("Common", "QuantityUnit") + listSeparator;
			result += Environment.NewLine;
			return result;
		}

		/// <summary>
		/// Get Waste Transfer Header
		/// </summary>
		public string GetWasteTransferTrendHeader()
		{
			string result = Resources.GetGlobal("Common", "Year") + listSeparator;
			result += Resources.GetGlobal("Common", "WasteType") + listSeparator;
			result += Resources.GetGlobal("Common", "Total") + listSeparator;
			result += Resources.GetGlobal("Common", "Unit") + listSeparator;
			result += Resources.GetGlobal("Common", "Recovery") + listSeparator;
			result += Resources.GetGlobal("Common", "Unit") + listSeparator;
			result += Resources.GetGlobal("Common", "Disposal") + listSeparator;
			result += Resources.GetGlobal("Common", "Unit") + listSeparator;
			result += Resources.GetGlobal("Common", "Unspec") + listSeparator;
			result += Resources.GetGlobal("Common", "Unit") + listSeparator;
			result += Environment.NewLine;
			return result;
		}

		/// <summary>
		/// GetWasteTransferTrendRow
		/// </summary>
		public string GetWasteTransferTrendRow(TimeSeriesClasses.WasteTransfer r)
		{
			string result = AddValue(r.Year);
			result += AddText(LOVResources.WasteTypeName(EnumUtil.GetStringValue(r.WasteType)));
			result += AddValue(r.QuantityTotal);
			result += AddSimple(r.QuantityUnit);
			result += AddValue(r.QuantityRecovery);
			result += AddUnit(r.QuantityUnit);
			result += AddValue(r.QuantityDisposal);
			result += AddUnit(r.QuantityUnit);
			result += AddValue(r.QuantityUnspec);
			result += AddUnit(r.QuantityUnit);
			result += Environment.NewLine;
			return result;
		}
		#endregion // Time Series under facility search


		#region Facility lists for PR, PT and WT
		public string GetPollutantReleaseFacilityHeader()
		{
			string result = Resources.GetGlobal("Common", "FacilityReportID") + listSeparator;
			result += Resources.GetGlobal("Facility", "EPRTRFacilityID") + listSeparator;
			result += Resources.GetGlobal("Common", "FacilityName") + listSeparator;
			result += Resources.GetGlobal("Common", "ActivityCode") + listSeparator;
			result += Resources.GetGlobal("Common", "ActivityName") + listSeparator;
			result += Resources.GetGlobal("Common", "CountryCode") + listSeparator;
			result += Resources.GetGlobal("Common", "CountryName") + listSeparator;

			result += Resources.GetGlobal("Common", "TotalQuantity") + listSeparator;
			result += Resources.GetGlobal("Common", "TotalQuantityUnit") + listSeparator;
			result += Resources.GetGlobal("Common", "AccidentalQuantity") + listSeparator;
			result += Resources.GetGlobal("Common", "AccidentalUnit") + listSeparator;
			result += Resources.GetGlobal("Common", "AccidentalPercent") + listSeparator;

			result += Resources.GetGlobal("Common", "MethodBasisCode") + listSeparator;
			result += Resources.GetGlobal("Common", "MethodBasisName") + listSeparator;
			result += Resources.GetGlobal("Common", "MethodTypeCode") + listSeparator;
			result += Resources.GetGlobal("Common", "MethodTypeName") + listSeparator;
			result += Resources.GetGlobal("Common", "MethodDesignation") + listSeparator;

			result += Resources.GetGlobal("Common", "URL") + listSeparator;
			result += Environment.NewLine;
			return result;
		}

		public string GetPollutantReleaseFacilityRow(PollutantReleases.ResultFacilityCSV r)
		{
			string result = AddValue(r.FacilityReportId);
			result += AddValue(r.FacilityId);
			result += AddText(ConfidentialFormat.Format(r.FacilityName, r.ConfidentialIndicatorFacility));
			result += AddSimple(r.ActivityCode);
			result += AddText(LOVResources.AnnexIActivityName(r.ActivityCode));
			result += AddSimple(r.CountryCode);
			result += AddText(LOVResources.CountryName(r.CountryCode));

			result += AddValue(r.QuantityTotal, r.ConfidentialIndicator);
			result += AddUnit(r.Unit);
			result += AddValue(r.QuantityAccidental, r.ConfidentialIndicator);
			result += AddUnit(r.Unit);
			result += AddPercentage(r.PercentageAccidental, r.ConfidentialIndicator);

			result += AddSimple(r.MethodBasisCode);
			result += AddText(LOVResources.MethodBasisName(r.MethodBasisCode));
			result += AddMethodUsed(r.MethodTypeCode, r.MethodDesignation, r.ConfidentialIndicator);

			result += AddSimple(r.Url);
			result += Environment.NewLine;
			return result;
		}

		//multiple methods can be reported per pollutant. In this case they are sepeareted by | in the Database
		private string AddMethodUsed(string methodTypeCodes, string methodDesignations, bool confidential)
		{
			string[] codeDelimiter = { "|" };
			string csvDelimiter = " " + ASCIIEncoding.ASCII.GetString(new byte[] { 0010 });  //will cause linebreak when csv opens in Excel

			string result = string.Empty;

			string[] designationSplit = null;
			string[] typecodeSplit = null;

			string resultTypeCode = string.Empty;
			string resultTypeName = string.Empty;
			string resultDesignation = string.Empty;


			//designations will never be given without type codes.
			if (String.IsNullOrEmpty(methodTypeCodes))
			{
				resultTypeCode = ConfidentialFormat.Format(null, confidential);
				resultTypeName = ConfidentialFormat.Format(null, confidential);
				resultDesignation = ConfidentialFormat.Format(null, confidential); ;
			}
			else
			{

				typecodeSplit = methodTypeCodes.Split(codeDelimiter, StringSplitOptions.None);

				if (!String.IsNullOrEmpty(methodDesignations))
				{
					designationSplit = methodDesignations.Split(codeDelimiter, StringSplitOptions.None);
				}


				for (int i = 0; i < typecodeSplit.Length; i++)
				{
					string prefix = typecodeSplit.Length > 1 ? i + 1 + ": " : "";

					string typeCode = typecodeSplit[i];
					string designation = (designationSplit != null && i < designationSplit.Length) ? designationSplit[i] : null;

					if (!String.IsNullOrEmpty(typeCode))
					{
                        if (i == 0 && typecodeSplit.Length > 1)
                        {
                            resultTypeCode += Resources.GetGlobal("Common", "MULTIPLE") + csvDelimiter;
                            resultTypeName += Resources.GetGlobal("Common", "MULTIPLE") + csvDelimiter;
                            resultDesignation += Resources.GetGlobal("Common", "MULTIPLE") + csvDelimiter;
                        }

						resultTypeCode += prefix + typeCode;
						resultTypeName += prefix + LOVResources.MethodTypeName(typeCode);
						resultDesignation += prefix + (!String.IsNullOrEmpty(designation) ? designation : "");

						if (i != typecodeSplit.Length - 1)
						{
							resultTypeCode += csvDelimiter;
							resultTypeName += csvDelimiter;
							resultDesignation += csvDelimiter;
						}
					}
				}
			}

			result += AddText(resultTypeCode);
			result += AddText(resultTypeName);
			result += AddText(resultDesignation);

			return result;
		}


		public string GetPollutantTranfersFacilityHeader()
		{

			string result = Resources.GetGlobal("Common", "FacilityReportID") + listSeparator;
			result += Resources.GetGlobal("Facility", "EPRTRFacilityID") + listSeparator;
			result += Resources.GetGlobal("Common", "FacilityName") + listSeparator;
			result += Resources.GetGlobal("Common", "ActivityCode") + listSeparator;
			result += Resources.GetGlobal("Common", "ActivityName") + listSeparator;
			result += Resources.GetGlobal("Common", "CountryCode") + listSeparator;
			result += Resources.GetGlobal("Common", "CountryName") + listSeparator;

			result += Resources.GetGlobal("Common", "Quantity") + listSeparator;
			result += Resources.GetGlobal("Common", "QuantityUnit") + listSeparator;

			result += Resources.GetGlobal("Common", "MethodBasisCode") + listSeparator;
			result += Resources.GetGlobal("Common", "MethodBasisName") + listSeparator;
			result += Resources.GetGlobal("Common", "MethodTypeCode") + listSeparator;
			result += Resources.GetGlobal("Common", "MethodTypeName") + listSeparator;
			result += Resources.GetGlobal("Common", "MethodDesignation") + listSeparator;

			result += Resources.GetGlobal("Common", "URL") + listSeparator;
			result += Environment.NewLine;
			return result;
		}

		public string GetPollutantTransfersFacilityRow(PollutantTransfers.ResultFacilityCSV r)
		{
			string result = AddValue(r.FacilityReportId);
			result += AddValue(r.FacilityId);
			result += AddText(ConfidentialFormat.Format(r.FacilityName, r.ConfidentialIndicatorFacility));
			result += AddSimple(r.ActivityCode);
			result += AddText(LOVResources.AnnexIActivityName(r.ActivityCode));
			result += AddSimple(r.CountryCode);
			result += AddText(LOVResources.CountryName(r.CountryCode));

			result += AddValue(r.Quantity, r.ConfidentialIndicator);
			result += AddUnit(r.QuantityUnit);

			result += AddSimple(r.MethodBasisCode);
			result += AddText(LOVResources.MethodBasisName(r.MethodBasisCode));
			result += AddMethodUsed(r.MethodTypeCode, r.MethodDesignation, r.ConfidentialIndicator);

			result += AddSimple(r.Url);
			result += Environment.NewLine;
			return result;
		}

		public string GetWasteTransfersFacilityHeader()
		{
			string result = Resources.GetGlobal("Common", "FacilityReportID") + listSeparator;
			result += Resources.GetGlobal("Facility", "EPRTRFacilityID") + listSeparator;
			result += Resources.GetGlobal("Common", "FacilityName") + listSeparator;
			result += Resources.GetGlobal("Common", "ActivityCode") + listSeparator;
			result += Resources.GetGlobal("Common", "ActivityName") + listSeparator;
			result += Resources.GetGlobal("Common", "CountryCode") + listSeparator;
			result += Resources.GetGlobal("Common", "CountryName") + listSeparator;

			result += Resources.GetGlobal("Common", "Total") + listSeparator;
			result += Resources.GetGlobal("Common", "TotalUnit") + listSeparator;
			result += Resources.GetGlobal("Common", "Recovery") + listSeparator;
			result += Resources.GetGlobal("Common", "RecoveryUnit") + listSeparator;
			result += Resources.GetGlobal("Common", "Disposal") + listSeparator;
			result += Resources.GetGlobal("Common", "DisposalUnit") + listSeparator;
			result += Resources.GetGlobal("Common", "Unspecified") + listSeparator;
			result += Resources.GetGlobal("Common", "UnspecifiedUnit") + listSeparator;

			result += Resources.GetGlobal("Common", "URL") + listSeparator;
			result += Environment.NewLine;
			return result;
		}

		public string GetWasteTransfersFacilityRow(WasteTransfers.ResultFacility r)
		{

			string result = AddValue(r.FacilityReportId);
			result += AddValue(r.FacilityId);
			result += AddText(ConfidentialFormat.Format(r.FacilityName, r.ConfidentialIndicatorFacility));
			result += AddSimple(r.ActivityCode);
			result += AddText(LOVResources.AnnexIActivityName(r.ActivityCode));
			result += AddSimple(r.CountryCode);
			result += AddText(LOVResources.CountryName(r.CountryCode));


			// if one column is confidential the total column must be as well 
			result += AddValue(r.QuantityTotal,
					r.ConfidentialIndicatorRecovery ||
					r.ConfidentialIndicatorDisposal ||
					r.ConfidentialIndicatorUnspecified);

			result += AddUnit(r.QuantityCommonUnit);
			result += AddValue(r.QuantityRecovery, r.ConfidentialIndicatorRecovery);
			result += AddUnit(r.QuantityCommonUnit);
			result += AddValue(r.QuantityDisposal, r.ConfidentialIndicatorDisposal);
			result += AddUnit(r.QuantityCommonUnit);
			result += AddValue(r.QuantityUnspecified, r.ConfidentialIndicatorUnspecified);
			result += AddUnit(r.QuantityCommonUnit);

			result += AddSimple(r.Url);
			result += Environment.NewLine;
			return result;
		}

		#endregion // Facility lists for PR, PT and WT


		#region  Industrial Activiy

		public string GetIndustrialActivityPollutantReleasesHeader()
		{
			string result = "";
			result += Resources.GetGlobal("Common", "Level") + listSeparator;

			result += Resources.GetGlobal("Common", "PollutantGroupCode") + listSeparator;
			result += Resources.GetGlobal("Common", "PollutantGroup") + listSeparator;
			result += Resources.GetGlobal("Common", "PollutantCode") + listSeparator;
			result += Resources.GetGlobal("Common", "Pollutant") + listSeparator;

			result += Resources.GetGlobal("Common", "Numberoffacilities") + listSeparator;

			foreach (var medium in new List<MediumFilter.Medium>() { 
                MediumFilter.Medium.Air, 
                MediumFilter.Medium.Water, 
                MediumFilter.Medium.Soil
            })
			{
				result += AddSimple(GetColumnHeaderByMedium(QUANTITY_KEY_STR, medium));
				result += AddSimple(GetColumnHeaderByMedium(QUANTITY_ACCIDENTAL_KEY_STR, medium));
				result += AddSimple(GetColumnHeaderByMedium(UNIT_KEY_STR, medium));
			}

			result += Environment.NewLine;
			return result;
		}

		/// <summary>
		/// Concat two strings to form e.g. "Accidental Quantity Air"
		/// </summary>
		/// <param name="quatityType">Use specific resource key "AccidentalQuantity"</param>
		/// <param name="medium">Use either air, water or soil</param>
		/// <returns>The concatenation e.g. "Accidental Quantity Air"</returns>
		private string GetColumnHeaderByMedium(string quantityTypeKeyStr, MediumFilter.Medium medium)
		{
			string mediumStr = Resources.GetGlobal("Common", medium.ToString());
			string quantityTypeStr = Resources.GetGlobal("Common", quantityTypeKeyStr);
			return string.Format("{0} - {1}", quantityTypeStr, mediumStr);
		}

		public string GetIndustrialActivityPollutantReleasesRow(IndustrialActivity.IAReleasesTreeListRow r)
		{
			string result = GetIAPollutantBasicInfo(r);

			result += AddValue(r.Facilities);

			// add actual values
			result += AddValue(r.QuantityAir);
			result += AddValue(r.AccidentalAir);
			result += AddUnit(r.UnitAir);
			result += AddValue(r.QuantityWater);
			result += AddValue(r.AccidentalWater);
			result += AddUnit(r.UnitWater);
			result += AddValue(r.QuantitySoil);
			result += AddValue(r.AccidentalSoil);
			result += AddUnit(r.UnitSoil);

			result += Environment.NewLine;
			return result;
		}

		public string GetIndustrialActivityPollutantTransfersHeader()
		{
			string result = "";

			result += Resources.GetGlobal("Common", "Level") + listSeparator;
			result += Resources.GetGlobal("Common", "PollutantGroupCode") + listSeparator;
			result += Resources.GetGlobal("Common", "PollutantGroup") + listSeparator;
			result += Resources.GetGlobal("Common", "PollutantCode") + listSeparator;
			result += Resources.GetGlobal("Common", "Pollutant") + listSeparator;
			result += Resources.GetGlobal("Common", "Numberoffacilities") + listSeparator;
			result += Resources.GetGlobal("Common", "Quantity") + listSeparator;
			result += Resources.GetGlobal("Common", "QuantityUnit") + listSeparator;

			result += Environment.NewLine;
			return result;
		}

		public string GetIndustrialActivityPollutantTransfersRow(IndustrialActivity.IATransfersTreeListRow r)
		{
			string result = GetIAPollutantBasicInfo(r);

			result += AddValue(r.Facilities);

			// add actual values
			result += AddValue(r.Quantity);
			result += AddUnit(r.Unit);

			result += Environment.NewLine;
			return result;
		}

		private string GetIAPollutantBasicInfo(TreeListRow r)
		{
			string result = "";

			// Level 0: Pollutant Group
			// Level 1: Pollutant
			string pollutantLevelStr = (r.Level == 0) ? "PollutantGroup" : "Pollutant";
			result += AddSimple(Resources.GetGlobal("Common", pollutantLevelStr));

			string groupName = LOVResources.PollutantGroupName(r.ParentCode);
			string pollutantName = string.Format("   {0}", LOVResources.PollutantName(r.Code));

			// always add group code and group name
			result += AddSimple(r.ParentCode);
			result += AddSimple(groupName);

			// add group name or pollutant name
			result += AddSimple(r.Code);
			result += AddSimple((r.Level == 0) ? groupName : pollutantName);

			return result;
		}

		public string GetIndustrialActivityWasteTransfersHeader()
		{
			string result = "";

			result += Resources.GetGlobal("Common", "Level") + listSeparator;
			result += Resources.GetGlobal("Common", "WasteTypeCode") + listSeparator;
			result += Resources.GetGlobal("Common", "WasteType") + listSeparator;
			result += Resources.GetGlobal("Common", "Numberoffacilities") + listSeparator;

			foreach (var treatment in new List<string>() { 
                "Recovery", "Disposal", "Unspecified"
            })
			{
				result += GetColumnHeadersByTreatment(treatment);
			}

			result += Resources.GetGlobal("Common", "TotalQuantity") + listSeparator;
			result += Resources.GetGlobal("Common", "Unit") + listSeparator;

			result += Environment.NewLine;
			return result;
		}

		private string GetColumnHeadersByTreatment(string treatmentTypeKey)
		{
			string percentStr = Resources.GetGlobal("Common", "WasteTreatmentPercentage");
			string quantityStr = Resources.GetGlobal("Common", "Quantity");
			string treatmentTypeStr = Resources.GetGlobal("Common", treatmentTypeKey);

			string result = string.Empty;
			result += string.Format("{0} - {1}", treatmentTypeStr, quantityStr) + listSeparator;
			result += string.Format("{0} - {1}", treatmentTypeStr, percentStr) + listSeparator;

			return result;
		}

		public string GetIndustrialActivityWasteTransfersRow(Summary.WasteSummaryTreeListRow r)
		{
			string result = string.Empty;

			result += AddSimple(Resources.GetGlobal("Common", r.Level == 0 ? "WasteGroup" : "WasteSubgroup"));
			result += AddSimple(r.Code);

			// add indentation before subgroups
			string indentation = r.Level == 0 ? "" : "   ";
			result += AddSimple(indentation + LOVResources.WasteTypeName(r.Code));

			result += AddValue(r.Facilities);

			result += AddValue(r.Recovery);
			result += AddPercentage(r.RecoveryPercent);
			result += AddValue(r.Disposal);
			result += AddPercentage(r.DisposalPercent);
			result += AddValue(r.Unspecified);
			result += AddPercentage(r.UnspecifiedPercent);
			result += AddValue(r.TotalQuantity);

			result += AddUnit(r.Unit);

			result += Environment.NewLine;
			return result;
		}

		#endregion

		#region Areaoverview


		/**
         * return header with additional info (e.g. CAS number) of pollutants
         */
		public string GetAreaOverviewPollutantInfoHeader(List<LOV_POLLUTANT> pollutants)
		{
			string result = string.Empty;

			int noAcivityCols = 2;

			//pollutant names
			result += addEmptyCols(noAcivityCols); //to align with pollutant data below
			result += AddSimple(Resources.GetGlobal("Pollutant", "PollutantName") + ":");
			foreach (LOV_POLLUTANT pollutant in pollutants)
			{
				result += AddSimple(LOVResources.PollutantName(pollutant.Code));
				result += listSeparator;
				result += listSeparator;
			}
			result += Environment.NewLine;

			//CAS number
			result += addEmptyCols(noAcivityCols); //to align with pollutant data below
			result += AddSimple(Resources.GetGlobal("Pollutant", "CASnumber") + ":");
			foreach (LOV_POLLUTANT pollutant in pollutants)
			{
				result += AddValue(pollutant.CAS);
				result += listSeparator;
				result += listSeparator;
			}
			result += Environment.NewLine;


			return result;
		}


		/**
		 * return header for pollutant data columns incl. activity tree headers
		 */
		public string GetAreaOverviewPollutantDataHeader(List<LOV_POLLUTANT> pollutants)
		{
			string result = string.Empty;

			//column headers for activity and pollutant data
			result += Environment.NewLine;

			result += addActivityTreeHeaderCols();

			string quantityStr = Resources.GetGlobal("Common", QUANTITY_KEY_STR);
			string unitStr = Resources.GetGlobal("Common", "Unit");
			string facilitiesStr = Resources.GetGlobal("Common", "Facilities");

			foreach (LOV_POLLUTANT pollutant in pollutants)
			{
				string shortName = LOVResources.PollutantNameShort(pollutant.Code);

				//remove html formatting
				Regex regex = new Regex("<[^<>]*>", RegexOptions.IgnoreCase | RegexOptions.Multiline);
				shortName = regex.Replace(shortName, "").Trim();

				result += AddSimple(string.Format("{0} - {1}", shortName, facilitiesStr));
				result += AddSimple(string.Format("{0} - {1}", shortName, quantityStr));
				result += AddSimple(string.Format("{0} - {1}", shortName, unitStr));
			}
			result += Environment.NewLine;

			return result;
		}


		public string GetAreaOverviewPollutantsRow(AreaOverview.AOPollutantTreeListRow r)
		{

			string result = string.Empty;

			result += addActivityTreeCols(r);

			foreach (var p in r.PollutantList)
			{
				result += AddValue(p.Facilities);
				result += AddValue(p.Quantity);
				result += AddUnit(p.Unit);
			}

			result += Environment.NewLine;
			return result;
		}


		public string GetAreaOverviewWasteTransferHeader()
		{
			string result = string.Empty;

			//activity tree headers
			result += addActivityTreeHeaderCols();


			string quantityStr = Resources.GetGlobal("Common", QUANTITY_KEY_STR);
			string unitStr = Resources.GetGlobal("Common", UNIT_KEY_STR);
			string facilityStr = Resources.GetGlobal("Common", "Facilities");


			foreach (var type in new List<WasteTypeFilter.Type>() { 
                WasteTypeFilter.Type.HazardousCountry, 
                WasteTypeFilter.Type.HazardousTransboundary, 
                WasteTypeFilter.Type.Hazardous,
                WasteTypeFilter.Type.NonHazardous
            })
			{
				string typeStr = Resources.GetGlobal("LOV_WASTETYPE", EnumUtil.GetStringValue(type));
				result += AddText(string.Format("{0} - {1}", typeStr, facilityStr));
				result += AddText(string.Format("{0} - {1}", typeStr, quantityStr));
				result += AddText(string.Format("{0} - {1}", typeStr, unitStr));
			}

			result += Environment.NewLine;
			return result;
		}

		public string GetAreaOverviewWasteTransferRow(AreaOverview.AOWasteTreeListRow r)
		{

			string result = string.Empty;

			result += addActivityTreeCols(r);

			result += AddValue(r.GetFacilities(AreaOverview.CODE_HWIC));
			result += AddValue(r.GetQuantity(AreaOverview.CODE_HWIC));
			result += AddUnit(r.GetUnit(AreaOverview.CODE_HWIC));

			result += AddValue(r.GetFacilities(AreaOverview.CODE_HWOC));
			result += AddValue(r.GetQuantity(AreaOverview.CODE_HWOC));
			result += AddUnit(r.GetUnit(AreaOverview.CODE_HWOC));

			result += AddValue(r.GetFacilities(AreaOverview.CODE_HW));
			result += AddValue(r.GetQuantity(AreaOverview.CODE_HW));
			result += AddUnit(r.GetUnit(AreaOverview.CODE_HW));

			result += AddValue(r.GetFacilities(AreaOverview.CODE_NONHW));
			result += AddValue(r.GetQuantity(AreaOverview.CODE_NONHW));
			result += AddUnit(r.GetUnit(AreaOverview.CODE_NONHW));

			result += Environment.NewLine;
			return result;
		}


		#endregion

		#region pollutant release activity / area

		/// <summary>
		/// returns an array with two rows containing column headers for pollutant releases activity CSV columns.
		/// </summary>
		public string[] GetPollutantReleaseActivityColHeaderRows(PollutantReleaseSearchFilter filter)
		{
			string[] colHeaders = new string[] { string.Empty, string.Empty };

			string[] prColRows = getPollutantReleaseColHeaderRows(filter.MediumFilter);

			//first row
            colHeaders[0] += addEmptyCols(NUMBER_ACTIVITYCOLS);
			colHeaders[0] += prColRows[0] + Environment.NewLine;

			//second row
			colHeaders[1] += addActivityTreeHeaderCols();
			colHeaders[1] += prColRows[1] + Environment.NewLine;

			return colHeaders;
		}


		public string GetPollutantReleaseActivityRow(PollutantReleases.ActivityTreeListRow r, PollutantReleaseSearchFilter filter)
		{

			string result = string.Empty;

			result += addActivityTreeCols(r);
			result += addPollutantReleaseCols(r, filter.MediumFilter);

			result += Environment.NewLine;
			return result;
		}

		/// <summary>
		/// returns an array with two rows containing column headers for pollutant releases area CSV columns.
		/// </summary>
		public string[] GetPollutantReleaseAreaColHeaderRows(PollutantReleaseSearchFilter filter)
		{

			string[] colHeaders = new string[] { string.Empty, string.Empty };
			string[] prColRows = getPollutantReleaseColHeaderRows(filter.MediumFilter);

			//first row
            colHeaders[0] += addEmptyCols(NUMBER_AREACOLS);
            colHeaders[0] += prColRows[0] + Environment.NewLine;


			//second row
            colHeaders[1] += addAreaTreeHeaderCols(filter.AreaFilter);
			colHeaders[1] += prColRows[1] + Environment.NewLine;

			return colHeaders;
		}


		public string GetPollutantReleaseAreaRow(PollutantReleases.AreaTreeListRow r, PollutantReleaseSearchFilter filter)
		{

			string result = string.Empty;

			result += addAreaTreeCols(r, filter.AreaFilter);
			result += addPollutantReleaseCols(r, filter.MediumFilter);

			result += Environment.NewLine;
			return result;
		}


		/// <summary>
		/// returns an array with two rows containing column headers for pollutant releases columns.
		/// </summary>
		private string[] getPollutantReleaseColHeaderRows(MediumFilter filter)
		{
			string[] colHeaders = new string[] { string.Empty, string.Empty };

			//facility headers
			string facilities = Resources.GetGlobal("Common", "Facilities");
			string accidental = Resources.GetGlobal("Common", "Accidental");

			colHeaders[0] += addEmptyCols(2); //facility cols
			colHeaders[1] += facilities + listSeparator;
			colHeaders[1] += string.Format("{0} - {1}", facilities, accidental) + listSeparator;

			//pollutant data headers
			foreach (var medium in new List<MediumFilter.Medium>() { 
                MediumFilter.Medium.Air, 
                MediumFilter.Medium.Water, 
                MediumFilter.Medium.Soil
            })
			{
				if (filter.InludesMedium(medium))
				{
					string mediumStr = LOVResources.MediumName(EnumUtil.GetStringValue(medium));

					colHeaders[0] += AddSimple(mediumStr);
					colHeaders[1] += AddSimple(GetColumnHeaderByMedium(QUANTITY_KEY_STR, medium));

					colHeaders[0] += AddSimple(mediumStr);
					colHeaders[1] += AddSimple(GetColumnHeaderByMedium(QUANTITY_ACCIDENTAL_KEY_STR, medium));

					colHeaders[0] += AddSimple(mediumStr);
					colHeaders[1] += AddSimple(GetColumnHeaderByMedium(UNIT_KEY_STR, medium));
				}
			}
			return colHeaders;
		}



		private string addPollutantReleaseCols(PollutantReleases.PollutantReleaseRow r, MediumFilter filter)
		{
			string result = "";

			result += AddValue(r.Facilities);
			result += AddValue(r.AccidentalFacilities);

			// add actual values

			if (filter.ReleasesToAir)
			{
				result += AddValue(r.QuantityAir);
				result += AddValue(r.AccidentalAir);
				result += AddUnit(r.UnitAir);
			}
			if (filter.ReleasesToWater)
			{
				result += AddValue(r.QuantityWater);
				result += AddValue(r.AccidentalWater);
				result += AddUnit(r.UnitWater);
			}
			if (filter.ReleasesToSoil)
			{
				result += AddValue(r.QuantitySoil);
				result += AddValue(r.AccidentalSoil);
				result += AddUnit(r.UnitSoil);
			}

			return result;
		}



		private string addActivityTreeHeaderCols()
		{
			string result = string.Empty;

			result += Resources.GetGlobal("Common", "Sector") + listSeparator;
			result += Resources.GetGlobal("Common", "Activity") + listSeparator;
			result += Resources.GetGlobal("Common", "Subactivity") + listSeparator;

			return result;
		}


		private string addActivityTreeCols(ActivityTreeListRow r)
		{
			string result = string.Empty;

			// always add sector 
			result += AddSimple(LOVResources.AnnexIActivityName(r.SectorCode));


			if (r.ActivityCode != null)
			{
				result += AddSimple(LOVResources.AnnexIActivityName(r.ActivityCode));

				if (r.SubactivityCode != null)
				{
					result += AddSimple("      " + LOVResources.AnnexIActivityName(r.SubactivityCode));
				}
				else
				{
					// if no subactivity code is present (level == 1) 
					// add empty cols for activity
					result += AddSimple(" ");
				}
			}
			else
			{
				// if no activity code present (level == 0) 
				// add empty cols for activity and subactivity
				result += AddSimple(" ");
				result += AddSimple(" ");

			}
			return result;

		}


		private string addAreaTreeHeaderCols(AreaFilter filter)
		{
			string result = string.Empty;

			result += Resources.GetGlobal("Common", "CountryCode") + listSeparator;
			result += Resources.GetGlobal("Common", "Country") + listSeparator;

			if (filter.TypeRegion.Equals(AreaFilter.RegionType.RiverBasinDistrict))
			{
				result += Resources.GetGlobal("Common", "RiverBasinDistrictCode") + listSeparator;
				result += Resources.GetGlobal("Common", "RiverBasinDistrict") + listSeparator;
			}
			else
			{
				result += Resources.GetGlobal("Common", "NUTSRegionCode") + listSeparator;
				result += Resources.GetGlobal("Common", "NUTSRegion") + listSeparator;
			}

			return result;
		}


		private string addAreaTreeCols(AreaTreeListRow r, AreaFilter filter)//int level, string countryCode, string regionCode)
		{
			string result = string.Empty;

			bool isRbd = filter.TypeRegion.Equals(AreaFilter.RegionType.RiverBasinDistrict);

			// always add country code and name
			result += AddSimple(r.CountryCode);
			result += AddSimple(LOVResources.CountryName(r.CountryCode));


			if (r.RegionCode != null)
			{
                if (isRbd)
                {
				    result += AddSimple(r.RegionCode);
					result += AddSimple(LOVResources.RiverBasinDistrictName(r.RegionCode));
				}
				else
				{
                    // IF UNKNOWN CODE add "-"
                    if (r.RegionCode.ToLower().Equals("unknown"))
                    {
                        result += AddSimple("-");
                    }
                    else
                    {
                        result += AddSimple(r.RegionCode);
                    }
					result += AddSimple(LOVResources.NutsRegionName(r.RegionCode));
				}

			}
			else
			{
				// if no country code present (level == 0) 
				// add empty cols for region (code and name)
				result += AddSimple(" ");
				result += AddSimple(" ");

			}

			return result;

		}

		#endregion

		#region pollutant transfer activity/ area


		/// <summary>
		/// returns an array with two rows containing column headers for pollutant transfer activity CSV columns.
		/// </summary>
		public string[] GetPollutantTransferActivityColHeaderRows()
		{
			string[] colHeaders = new string[] { string.Empty, string.Empty };

			string[] ptColRows = getPollutanTransferColHeaderRows();

			//first row
			colHeaders[0] += addEmptyCols(NUMBER_ACTIVITYCOLS);
			colHeaders[0] += ptColRows[0] + Environment.NewLine;

			//second row
			colHeaders[1] += addActivityTreeHeaderCols();
			colHeaders[1] += ptColRows[1] + Environment.NewLine;

			return colHeaders;

		}

		public string GetPollutantTransferActivityRow(PollutantTransfers.ActivityTreeListRow r)
		{

			string result = string.Empty;

			result += addActivityTreeCols(r);
			result += addPollutantTransferCols(r);

			result += Environment.NewLine;
			return result;
		}


		/// <summary>
		/// returns an array with two rows containing column headers for pollutant transfer area CSV columns.
		/// </summary>
		public string[] GetPollutantTransferAreaColHeaderRows(PollutantTransfersSearchFilter filter)
		{
			string[] colHeaders = new string[] { string.Empty, string.Empty };

			string[] ptColRows = getPollutanTransferColHeaderRows();

			//first row
			colHeaders[0] += addEmptyCols(NUMBER_AREACOLS);
			colHeaders[0] += ptColRows[0] + Environment.NewLine;

			//second row
			colHeaders[1] += addAreaTreeHeaderCols(filter.AreaFilter);
			colHeaders[1] += ptColRows[1] + Environment.NewLine;

			return colHeaders;
		}


		public string GetPollutantTransferAreaRow(PollutantTransfers.AreaTreeListRow r, PollutantTransfersSearchFilter filter)
		{

			string result = string.Empty;

			result += addAreaTreeCols(r, filter.AreaFilter);
			result += addPollutantTransferCols(r);

			result += Environment.NewLine;
			return result;
		}

		private string[] getPollutanTransferColHeaderRows()
		{
			string[] colHeaders = new string[] { string.Empty, string.Empty };
            string mediumStr = Resources.GetGlobal("Common", "PollutantTransfers");

			colHeaders[0] += addEmptyCols(1);
			colHeaders[1] += Resources.GetGlobal("Common", "Facilities") + listSeparator;

			colHeaders[0] += AddSimple(mediumStr);
			colHeaders[1] += Resources.GetGlobal("Common", "Quantity") + listSeparator;

			colHeaders[0] += AddSimple(mediumStr);
			colHeaders[1] += Resources.GetGlobal("Common", "QuantityUnit") + listSeparator;

			return colHeaders;
		}

		private string addPollutantTransferCols(PollutantTransfers.PollutantTransferRow r)
		{
			string result = AddValue(r.Facilities);

			// add actual values
			result += AddValue(r.Quantity);
			result += AddUnit(r.Unit);

			return result;
		}


		#endregion

		#region waste transfer activity / area

		/// <summary>
		/// returns an array with three rows containing column headers for pollutant transfer activity CSV columns.
		/// </summary>
		public string[] GetWasteTransferActivityColHeaderRows(WasteTransferSearchFilter filter)
		{
			string[] colHeaders = new string[] { string.Empty, string.Empty, string.Empty };

			string[] wtColrows = getWasteTransferColHeaderRows(filter.WasteTypeFilter, filter.WasteTreatmentFilter);

			colHeaders[0] += addEmptyCols(NUMBER_ACTIVITYCOLS); //activity cols.
			colHeaders[0] += wtColrows[0] + Environment.NewLine;

			colHeaders[1] += addEmptyCols(NUMBER_ACTIVITYCOLS); //activity cols.
			colHeaders[1] += wtColrows[1] + Environment.NewLine;

			//activity tree headers
			colHeaders[2] += addActivityTreeHeaderCols();
			colHeaders[2] += wtColrows[2] + Environment.NewLine;

			return colHeaders;
		}

		public string GetWasteTransferActivityRow(WasteTransfers.ActivityTreeListRow r, WasteTransferSearchFilter filter)
		{

			string result = string.Empty;

			result += addActivityTreeCols(r);
			result += addWasteTransferCols(r, filter.WasteTypeFilter, filter.WasteTreatmentFilter);

			result += Environment.NewLine;
			return result;
		}

		/// <summary>
		/// returns an array with three rows containing column headers for pollutant transfer area CSV columns.
		/// </summary>
		public string[] GetWasteTransferAreaColHeaderRows(WasteTransferSearchFilter filter)
		{
			string[] colHeaders = new string[] { string.Empty, string.Empty, string.Empty };

			string[] wtColrows = getWasteTransferColHeaderRows(filter.WasteTypeFilter, filter.WasteTreatmentFilter);

			colHeaders[0] += addEmptyCols(NUMBER_AREACOLS); //area cols.
			colHeaders[0] += wtColrows[0] + Environment.NewLine;

			colHeaders[1] += addEmptyCols(NUMBER_AREACOLS); //area cols.
			colHeaders[1] += wtColrows[1] + Environment.NewLine;


			colHeaders[2] += addAreaTreeHeaderCols(filter.AreaFilter);
			colHeaders[2] += wtColrows[2] + Environment.NewLine;

			return colHeaders;
		}


		public string GetWasteTransferAreaRow(WasteTransfers.AreaTreeListRow r, WasteTransferSearchFilter filter)
		{

			string result = string.Empty;

			result += addAreaTreeCols(r, filter.AreaFilter);
			result += addWasteTransferCols(r, filter.WasteTypeFilter, filter.WasteTreatmentFilter);

			result += Environment.NewLine;
			return result;
		}



		private string[] getWasteTransferColHeaderRows(WasteTypeFilter typeFilter, WasteTreatmentFilter treatmentFilter)
		{
			string header1 = string.Empty;
			string header2 = string.Empty;
			string header3 = string.Empty;

			//facility headers
			header1 += addEmptyCols(1);
			header2 += addEmptyCols(1);
			header3 += AddSimple(Resources.GetGlobal("Common", "Facilities"));

			//waste headers
			foreach (var type in new List<WasteTypeFilter.Type>() { 
                WasteTypeFilter.Type.HazardousCountry, 
                WasteTypeFilter.Type.HazardousTransboundary, 
                WasteTypeFilter.Type.Hazardous,
                WasteTypeFilter.Type.NonHazardous
            })
			{
				if (typeFilter.InludesWasteType(type))
				{
					string strType = EnumUtil.GetStringValue(type);
					strType = Resources.GetGlobal("LOV_WASTETYPE", strType);

					if (type.Equals(WasteTypeFilter.Type.Hazardous) && !typeFilter.InludesAllHazardousWasteType())
					{
						continue;
					}

					//add total col per type
					if (treatmentFilter.IncludesAll())
					{
						header1 += AddSimple(strType);
						header2 += AddSimple(Resources.GetGlobal("Common", "Total"));
						header3 += AddSimple(getQuantityHeaderWaste(type, null));
					}

					//add treatment col for type 
					foreach (var treatment in new List<WasteTreatmentFilter.Treatment>() { 
                        WasteTreatmentFilter.Treatment.Recovery, 
                        WasteTreatmentFilter.Treatment.Disposal, 
                        WasteTreatmentFilter.Treatment.Unspecified
                        })
					{
						if (treatmentFilter.InludesTreatment(treatment))
						{
							string strTreatment = LOVResources.WasteTreatmentName(EnumUtil.GetStringValue(treatment));

							header1 += AddSimple(strType);
							header2 += AddSimple(strTreatment);
							header3 += AddSimple(getQuantityHeaderWaste(type, treatment));
						}

					}

					//unit
					header1 += AddSimple(strType);
					header2 += AddSimple(Resources.GetGlobal("Common", "Unit"));
					header3 += AddSimple(getUnitHeaderWaste(type));
				}
			}

			return new string[] { header1, header2, header3 };
		}

		/// <summary>
		/// Concat two strings to form e.g. "Hazardous Domestic Quantity Recovery"
		/// </summary>
		/// <param name="keyStr">Use specific resource key "Quantity"</param>
		/// <param name="treatment">Use either disposal, recovery, unspecified</param>
		/// <returns>The concatenation</returns>
		private string getQuantityHeaderWaste(WasteTypeFilter.Type type, WasteTreatmentFilter.Treatment? treatment)
		{
			string typeStr = Resources.GetGlobal("LOV_WASTETYPE", EnumUtil.GetStringValue(type));

			string treatmentStr = string.Empty;
			if (treatment == null)
			{
				treatmentStr = Resources.GetGlobal("Common", "Total");
			}
			else
			{
				treatmentStr = Resources.GetGlobal("LOV_WASTETREATMENT", EnumUtil.GetStringValue(treatment));
			}

			string quantityTypeStr = Resources.GetGlobal("Common", QUANTITY_KEY_STR);

			return string.Format("{0} - {1} - {2}", quantityTypeStr, typeStr, treatmentStr);
		}

		private string getUnitHeaderWaste(WasteTypeFilter.Type type)
		{
			string typeStr = Resources.GetGlobal("LOV_WASTETYPE", EnumUtil.GetStringValue(type));
			string quantityTypeStr = Resources.GetGlobal("Common", UNIT_KEY_STR);
			return string.Format("{0} - {1}", quantityTypeStr, typeStr);
		}


		private string addWasteTransferCols(WasteTransfers.WasteTransferRow r, WasteTypeFilter typeFilter, WasteTreatmentFilter treatmentFilter)
		{
			string result = AddValue(r.Facilities);

			//HWIC
			if (typeFilter.HazardousWasteCountry)
			{
				if (treatmentFilter.IncludesAll())
				{
					result += AddValue(r.TotalHWIC);
				}
				if (treatmentFilter.Recovery)
				{
					result += AddValue(r.QuantityRecoveryHWIC);
				}
				if (treatmentFilter.Disposal)
				{
					result += AddValue(r.QuantityDisposalHWIC);
				}
				if (treatmentFilter.Unspecified)
				{
					result += AddValue(r.QuantityUnspecHWIC);
				}
				result += AddUnit(r.UnitCodeHWIC);
			}

			//HWOC
			if (typeFilter.HazardousWasteTransboundary)
			{
				if (treatmentFilter.IncludesAll())
				{
					result += AddValue(r.TotalHWOC);
				}
				if (treatmentFilter.Recovery)
				{
					result += AddValue(r.QuantityRecoveryHWOC);
				}
				if (treatmentFilter.Disposal)
				{
					result += AddValue(r.QuantityDisposalHWOC);
				}
				if (treatmentFilter.Unspecified)
				{
					result += AddValue(r.QuantityUnspecHWOC);
				}
				result += AddUnit(r.UnitCodeHWOC);
			}

			//HW total
			if (typeFilter.HazardousWasteCountry && typeFilter.HazardousWasteTransboundary)
			{
				if (treatmentFilter.IncludesAll())
				{
					result += AddValue(r.TotalSum);
				}
				if (treatmentFilter.Recovery)
				{
					result += AddValue(r.QuantityRecoverySum);
				}
				if (treatmentFilter.Disposal)
				{
					result += AddValue(r.QuantityDisposalSum);
				}
				if (treatmentFilter.Unspecified)
				{
					result += AddValue(r.QuantityUnspecSum);
				}
				result += AddUnit(r.UnitCodeSum);
			}

			//NON-HW
			if (typeFilter.NonHazardousWaste)
			{
				if (treatmentFilter.IncludesAll())
				{
					result += AddValue(r.TotalNONHW);
				}
				if (treatmentFilter.Recovery)
				{
					result += AddValue(r.QuantityRecoveryNONHW);
				}
				if (treatmentFilter.Disposal)
				{
					result += AddValue(r.QuantityDisposalNONHW);
				}
				if (treatmentFilter.Unspecified)
				{
					result += AddValue(r.QuantityUnspecNONHW);
				}
				result += AddUnit(r.UnitCodeNONHW);
			}


			return result;
		}


		#endregion

		#region helper methods
		private string AddSimple(object element)
		{
			return string.Format("{0}", element) + listSeparator;
		}

		private string AddValue(object element)
		{
			if (element == null)
			{
				return NOTHING_REPORTED + listSeparator;
			}
			else
			{
				return string.Format(csvCulture, "{0}", element) + listSeparator;
			}
		}

		private string AddValue(object element, bool confidential)
		{
			string result;

			if (confidential && element == null)
			{
				result = ConfidentialFormat.Format(null, confidential) + listSeparator;
			}
			else
			{
				if (element == null)
				{
					result = NOTHING_REPORTED + listSeparator;
				}
				else
				{
					result = AddValue(element);
				}
			}

			return result;
		}

		private string AddPercentage(double? element)
		{
			return String.Format(csvCulture, "{0:F5}", element) + listSeparator;
		}

		private string AddPercentage(double? element, bool confidential)
		{
			string result;

			if (confidential && element == null)
			{
				result = result = ConfidentialFormat.Format(null, confidential) + listSeparator;
			}
			else
			{
				result = AddPercentage(element);
			}

			return result;
		}


		private string AddUnit(QuantityUnit element)
		{
			return AddUnit(EnumUtil.GetStringValue(element));
		}

		private string AddUnit(string unitCode)
		{
			return string.Format("{0}", LOVResources.UnitName(unitCode)) + listSeparator;
		}


		public string AddText(string element)
		{
			return string.Format("\"{0}\"", element) + listSeparator;
		}

		//adds empty columns
		private string addEmptyCols(int noColumns)
		{
			string result = string.Empty;
			for (int i = 0; i < noColumns; i++)
			{
				result += listSeparator;
			}

			return result;
		}

		# endregion
	}
}