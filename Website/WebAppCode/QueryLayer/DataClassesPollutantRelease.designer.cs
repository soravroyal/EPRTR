﻿#pragma warning disable 1591
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:2.0.50727.4952
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace QueryLayer
{
	using System.Data.Linq;
	using System.Data.Linq.Mapping;
	using System.Data;
	using System.Collections.Generic;
	using System.Reflection;
	using System.Linq;
	using System.Linq.Expressions;
	using System.ComponentModel;
	using System;
	
	
	[System.Data.Linq.Mapping.DatabaseAttribute(Name="EPRTRweb")]
	public partial class DataClassesPollutantReleaseDataContext : System.Data.Linq.DataContext
	{
		
		private static System.Data.Linq.Mapping.MappingSource mappingSource = new AttributeMappingSource();
		
    #region Extensibility Method Definitions
    partial void OnCreated();
    #endregion
		
		
		public DataClassesPollutantReleaseDataContext(string connection) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public DataClassesPollutantReleaseDataContext(System.Data.IDbConnection connection) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public DataClassesPollutantReleaseDataContext(string connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public DataClassesPollutantReleaseDataContext(System.Data.IDbConnection connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public System.Data.Linq.Table<POLLUTANTRELEASE> POLLUTANTRELEASEs
		{
			get
			{
				return this.GetTable<POLLUTANTRELEASE>();
			}
		}
	}
	
	[Table(Name="dbo.POLLUTANTRELEASE")]
	public partial class POLLUTANTRELEASE
	{
		
		private System.Nullable<int> _FacilityReportID;
		
		private string _FacilityName;
		
		private int _FacilityID;
		
		private int _ReportingYear;
		
		private string _PollutantCode;
		
		private string _PollutantGroupCode;
		
		private int _LOV_PollutantID;
		
		private int _LOV_PollutantGroupID;
		
		private string _CAS;
		
		private System.Nullable<double> _QuantityAir;
		
		private System.Nullable<double> _QuantityAccidentalAir;
		
		private System.Nullable<double> _PercentAccidentalAir;
		
		private string _MethodTypeDesignationAir;
		
		private string _MethodTypeCodeAir;
		
		private string _MethodCodeAir;
		
		private System.Nullable<double> _QuantityWater;
		
		private System.Nullable<double> _QuantityAccidentalWater;
		
		private System.Nullable<double> _PercentAccidentalWater;
		
		private string _MethodTypeDesignationWater;
		
		private string _MethodTypeCodeWater;
		
		private string _MethodCodeWater;
		
		private System.Nullable<double> _QuantitySoil;
		
		private System.Nullable<double> _QuantityAccidentalSoil;
		
		private System.Nullable<double> _PercentAccidentalSoil;
		
		private string _MethodTypeDesignationSoil;
		
		private string _MethodTypeCodeSoil;
		
		private string _MethodCodeSoil;
		
		private string _UnitAir;
		
		private string _UnitAccidentalAir;
		
		private string _UnitWater;
		
		private string _UnitAccidentalWater;
		
		private string _UnitSoil;
		
		private string _UnitAccidentalSoil;
		
		private string _CountryCode;
		
		private int _LOV_CountryID;
		
		private string _RiverBasinDistrictCode;
		
		private int _LOV_RiverBasinDistrictID;
		
		private string _NUTSLevel2RegionCode;
		
		private System.Nullable<int> _LOV_NUTSRLevel1ID;
		
		private System.Nullable<int> _LOV_NUTSRLevel2ID;
		
		private System.Nullable<int> _LOV_NUTSRLevel3ID;
		
		private string _IASectorCode;
		
		private string _IAActivityCode;
		
		private string _IASubActivityCode;
		
		private string _IPPCSectorCode;
		
		private string _IPPCActivityCode;
		
		private string _IPPCSubActivityCode;
		
		private System.Nullable<int> _LOV_IASectorID;
		
		private System.Nullable<int> _LOV_IAActivityID;
		
		private System.Nullable<int> _LOV_IASubActivityID;
		
		private string _NACESectorCode;
		
		private string _NACEActivityCode;
		
		private string _NACESubActivityCode;
		
		private System.Nullable<int> _LOV_NACESectorID;
		
		private System.Nullable<int> _LOV_NACEActivityID;
		
		private System.Nullable<int> _LOV_NACESubActivityID;
		
		private System.Nullable<int> _LOV_ConfidentialityIDAir;
		
		private System.Nullable<int> _LOV_ConfidentialityIDWater;
		
		private System.Nullable<int> _LOV_ConfidentialityIDSoil;
		
		private string _ConfidentialCodeAir;
		
		private string _ConfidentialCodeWater;
		
		private string _ConfidentialCodeSoil;
		
		private bool _ConfidentialIndicator;
		
		private bool _ConfidentialIndicatorFacility;
		
		public POLLUTANTRELEASE()
		{
		}
		
		[Column(Storage="_FacilityReportID", DbType="Int")]
		public System.Nullable<int> FacilityReportID
		{
			get
			{
				return this._FacilityReportID;
			}
			set
			{
				if ((this._FacilityReportID != value))
				{
					this._FacilityReportID = value;
				}
			}
		}
		
		[Column(Storage="_FacilityName", DbType="NVarChar(255)")]
		public string FacilityName
		{
			get
			{
				return this._FacilityName;
			}
			set
			{
				if ((this._FacilityName != value))
				{
					this._FacilityName = value;
				}
			}
		}
		
		[Column(Storage="_FacilityID", DbType="Int NOT NULL")]
		public int FacilityID
		{
			get
			{
				return this._FacilityID;
			}
			set
			{
				if ((this._FacilityID != value))
				{
					this._FacilityID = value;
				}
			}
		}
		
		[Column(Storage="_ReportingYear", DbType="Int NOT NULL")]
		public int ReportingYear
		{
			get
			{
				return this._ReportingYear;
			}
			set
			{
				if ((this._ReportingYear != value))
				{
					this._ReportingYear = value;
				}
			}
		}
		
		[Column(Storage="_PollutantCode", DbType="NVarChar(255) NOT NULL", CanBeNull=false)]
		public string PollutantCode
		{
			get
			{
				return this._PollutantCode;
			}
			set
			{
				if ((this._PollutantCode != value))
				{
					this._PollutantCode = value;
				}
			}
		}
		
		[Column(Storage="_PollutantGroupCode", DbType="NVarChar(255) NOT NULL", CanBeNull=false)]
		public string PollutantGroupCode
		{
			get
			{
				return this._PollutantGroupCode;
			}
			set
			{
				if ((this._PollutantGroupCode != value))
				{
					this._PollutantGroupCode = value;
				}
			}
		}
		
		[Column(Storage="_LOV_PollutantID", DbType="Int NOT NULL")]
		public int LOV_PollutantID
		{
			get
			{
				return this._LOV_PollutantID;
			}
			set
			{
				if ((this._LOV_PollutantID != value))
				{
					this._LOV_PollutantID = value;
				}
			}
		}
		
		[Column(Storage="_LOV_PollutantGroupID", DbType="Int NOT NULL")]
		public int LOV_PollutantGroupID
		{
			get
			{
				return this._LOV_PollutantGroupID;
			}
			set
			{
				if ((this._LOV_PollutantGroupID != value))
				{
					this._LOV_PollutantGroupID = value;
				}
			}
		}
		
		[Column(Storage="_CAS", DbType="NVarChar(20)")]
		public string CAS
		{
			get
			{
				return this._CAS;
			}
			set
			{
				if ((this._CAS != value))
				{
					this._CAS = value;
				}
			}
		}
		
		[Column(Storage="_QuantityAir", DbType="Float")]
		public System.Nullable<double> QuantityAir
		{
			get
			{
				return this._QuantityAir;
			}
			set
			{
				if ((this._QuantityAir != value))
				{
					this._QuantityAir = value;
				}
			}
		}
		
		[Column(Storage="_QuantityAccidentalAir", DbType="Float")]
		public System.Nullable<double> QuantityAccidentalAir
		{
			get
			{
				return this._QuantityAccidentalAir;
			}
			set
			{
				if ((this._QuantityAccidentalAir != value))
				{
					this._QuantityAccidentalAir = value;
				}
			}
		}
		
		[Column(Storage="_PercentAccidentalAir", DbType="Float")]
		public System.Nullable<double> PercentAccidentalAir
		{
			get
			{
				return this._PercentAccidentalAir;
			}
			set
			{
				if ((this._PercentAccidentalAir != value))
				{
					this._PercentAccidentalAir = value;
				}
			}
		}
		
		[Column(Storage="_MethodTypeDesignationAir", DbType="NVarChar(4000)")]
		public string MethodTypeDesignationAir
		{
			get
			{
				return this._MethodTypeDesignationAir;
			}
			set
			{
				if ((this._MethodTypeDesignationAir != value))
				{
					this._MethodTypeDesignationAir = value;
				}
			}
		}
		
		[Column(Storage="_MethodTypeCodeAir", DbType="NVarChar(255)")]
		public string MethodTypeCodeAir
		{
			get
			{
				return this._MethodTypeCodeAir;
			}
			set
			{
				if ((this._MethodTypeCodeAir != value))
				{
					this._MethodTypeCodeAir = value;
				}
			}
		}
		
		[Column(Storage="_MethodCodeAir", DbType="NVarChar(255)")]
		public string MethodCodeAir
		{
			get
			{
				return this._MethodCodeAir;
			}
			set
			{
				if ((this._MethodCodeAir != value))
				{
					this._MethodCodeAir = value;
				}
			}
		}
		
		[Column(Storage="_QuantityWater", DbType="Float")]
		public System.Nullable<double> QuantityWater
		{
			get
			{
				return this._QuantityWater;
			}
			set
			{
				if ((this._QuantityWater != value))
				{
					this._QuantityWater = value;
				}
			}
		}
		
		[Column(Storage="_QuantityAccidentalWater", DbType="Float")]
		public System.Nullable<double> QuantityAccidentalWater
		{
			get
			{
				return this._QuantityAccidentalWater;
			}
			set
			{
				if ((this._QuantityAccidentalWater != value))
				{
					this._QuantityAccidentalWater = value;
				}
			}
		}
		
		[Column(Storage="_PercentAccidentalWater", DbType="Float")]
		public System.Nullable<double> PercentAccidentalWater
		{
			get
			{
				return this._PercentAccidentalWater;
			}
			set
			{
				if ((this._PercentAccidentalWater != value))
				{
					this._PercentAccidentalWater = value;
				}
			}
		}
		
		[Column(Storage="_MethodTypeDesignationWater", DbType="NVarChar(4000)")]
		public string MethodTypeDesignationWater
		{
			get
			{
				return this._MethodTypeDesignationWater;
			}
			set
			{
				if ((this._MethodTypeDesignationWater != value))
				{
					this._MethodTypeDesignationWater = value;
				}
			}
		}
		
		[Column(Storage="_MethodTypeCodeWater", DbType="NVarChar(255)")]
		public string MethodTypeCodeWater
		{
			get
			{
				return this._MethodTypeCodeWater;
			}
			set
			{
				if ((this._MethodTypeCodeWater != value))
				{
					this._MethodTypeCodeWater = value;
				}
			}
		}
		
		[Column(Storage="_MethodCodeWater", DbType="NVarChar(255)")]
		public string MethodCodeWater
		{
			get
			{
				return this._MethodCodeWater;
			}
			set
			{
				if ((this._MethodCodeWater != value))
				{
					this._MethodCodeWater = value;
				}
			}
		}
		
		[Column(Storage="_QuantitySoil", DbType="Float")]
		public System.Nullable<double> QuantitySoil
		{
			get
			{
				return this._QuantitySoil;
			}
			set
			{
				if ((this._QuantitySoil != value))
				{
					this._QuantitySoil = value;
				}
			}
		}
		
		[Column(Storage="_QuantityAccidentalSoil", DbType="Float")]
		public System.Nullable<double> QuantityAccidentalSoil
		{
			get
			{
				return this._QuantityAccidentalSoil;
			}
			set
			{
				if ((this._QuantityAccidentalSoil != value))
				{
					this._QuantityAccidentalSoil = value;
				}
			}
		}
		
		[Column(Storage="_PercentAccidentalSoil", DbType="Float")]
		public System.Nullable<double> PercentAccidentalSoil
		{
			get
			{
				return this._PercentAccidentalSoil;
			}
			set
			{
				if ((this._PercentAccidentalSoil != value))
				{
					this._PercentAccidentalSoil = value;
				}
			}
		}
		
		[Column(Storage="_MethodTypeDesignationSoil", DbType="NVarChar(4000)")]
		public string MethodTypeDesignationSoil
		{
			get
			{
				return this._MethodTypeDesignationSoil;
			}
			set
			{
				if ((this._MethodTypeDesignationSoil != value))
				{
					this._MethodTypeDesignationSoil = value;
				}
			}
		}
		
		[Column(Storage="_MethodTypeCodeSoil", DbType="NVarChar(255)")]
		public string MethodTypeCodeSoil
		{
			get
			{
				return this._MethodTypeCodeSoil;
			}
			set
			{
				if ((this._MethodTypeCodeSoil != value))
				{
					this._MethodTypeCodeSoil = value;
				}
			}
		}
		
		[Column(Storage="_MethodCodeSoil", DbType="NVarChar(255)")]
		public string MethodCodeSoil
		{
			get
			{
				return this._MethodCodeSoil;
			}
			set
			{
				if ((this._MethodCodeSoil != value))
				{
					this._MethodCodeSoil = value;
				}
			}
		}
		
		[Column(Storage="_UnitAir", DbType="NVarChar(255)")]
		public string UnitAir
		{
			get
			{
				return this._UnitAir;
			}
			set
			{
				if ((this._UnitAir != value))
				{
					this._UnitAir = value;
				}
			}
		}
		
		[Column(Storage="_UnitAccidentalAir", DbType="NVarChar(255)")]
		public string UnitAccidentalAir
		{
			get
			{
				return this._UnitAccidentalAir;
			}
			set
			{
				if ((this._UnitAccidentalAir != value))
				{
					this._UnitAccidentalAir = value;
				}
			}
		}
		
		[Column(Storage="_UnitWater", DbType="NVarChar(255)")]
		public string UnitWater
		{
			get
			{
				return this._UnitWater;
			}
			set
			{
				if ((this._UnitWater != value))
				{
					this._UnitWater = value;
				}
			}
		}
		
		[Column(Storage="_UnitAccidentalWater", DbType="NVarChar(255)")]
		public string UnitAccidentalWater
		{
			get
			{
				return this._UnitAccidentalWater;
			}
			set
			{
				if ((this._UnitAccidentalWater != value))
				{
					this._UnitAccidentalWater = value;
				}
			}
		}
		
		[Column(Storage="_UnitSoil", DbType="NVarChar(255)")]
		public string UnitSoil
		{
			get
			{
				return this._UnitSoil;
			}
			set
			{
				if ((this._UnitSoil != value))
				{
					this._UnitSoil = value;
				}
			}
		}
		
		[Column(Storage="_UnitAccidentalSoil", DbType="NVarChar(255)")]
		public string UnitAccidentalSoil
		{
			get
			{
				return this._UnitAccidentalSoil;
			}
			set
			{
				if ((this._UnitAccidentalSoil != value))
				{
					this._UnitAccidentalSoil = value;
				}
			}
		}
		
		[Column(Storage="_CountryCode", DbType="NVarChar(255)")]
		public string CountryCode
		{
			get
			{
				return this._CountryCode;
			}
			set
			{
				if ((this._CountryCode != value))
				{
					this._CountryCode = value;
				}
			}
		}
		
		[Column(Storage="_LOV_CountryID", DbType="Int NOT NULL")]
		public int LOV_CountryID
		{
			get
			{
				return this._LOV_CountryID;
			}
			set
			{
				if ((this._LOV_CountryID != value))
				{
					this._LOV_CountryID = value;
				}
			}
		}
		
		[Column(Storage="_RiverBasinDistrictCode", DbType="NVarChar(255) NOT NULL", CanBeNull=false)]
		public string RiverBasinDistrictCode
		{
			get
			{
				return this._RiverBasinDistrictCode;
			}
			set
			{
				if ((this._RiverBasinDistrictCode != value))
				{
					this._RiverBasinDistrictCode = value;
				}
			}
		}
		
		[Column(Storage="_LOV_RiverBasinDistrictID", DbType="Int NOT NULL")]
		public int LOV_RiverBasinDistrictID
		{
			get
			{
				return this._LOV_RiverBasinDistrictID;
			}
			set
			{
				if ((this._LOV_RiverBasinDistrictID != value))
				{
					this._LOV_RiverBasinDistrictID = value;
				}
			}
		}
		
		[Column(Storage="_NUTSLevel2RegionCode", DbType="NVarChar(255)")]
		public string NUTSLevel2RegionCode
		{
			get
			{
				return this._NUTSLevel2RegionCode;
			}
			set
			{
				if ((this._NUTSLevel2RegionCode != value))
				{
					this._NUTSLevel2RegionCode = value;
				}
			}
		}
		
		[Column(Storage="_LOV_NUTSRLevel1ID", DbType="Int")]
		public System.Nullable<int> LOV_NUTSRLevel1ID
		{
			get
			{
				return this._LOV_NUTSRLevel1ID;
			}
			set
			{
				if ((this._LOV_NUTSRLevel1ID != value))
				{
					this._LOV_NUTSRLevel1ID = value;
				}
			}
		}
		
		[Column(Storage="_LOV_NUTSRLevel2ID", DbType="Int")]
		public System.Nullable<int> LOV_NUTSRLevel2ID
		{
			get
			{
				return this._LOV_NUTSRLevel2ID;
			}
			set
			{
				if ((this._LOV_NUTSRLevel2ID != value))
				{
					this._LOV_NUTSRLevel2ID = value;
				}
			}
		}
		
		[Column(Storage="_LOV_NUTSRLevel3ID", DbType="Int")]
		public System.Nullable<int> LOV_NUTSRLevel3ID
		{
			get
			{
				return this._LOV_NUTSRLevel3ID;
			}
			set
			{
				if ((this._LOV_NUTSRLevel3ID != value))
				{
					this._LOV_NUTSRLevel3ID = value;
				}
			}
		}
		
		[Column(Storage="_IASectorCode", DbType="NVarChar(255)")]
		public string IASectorCode
		{
			get
			{
				return this._IASectorCode;
			}
			set
			{
				if ((this._IASectorCode != value))
				{
					this._IASectorCode = value;
				}
			}
		}
		
		[Column(Storage="_IAActivityCode", DbType="NVarChar(255)")]
		public string IAActivityCode
		{
			get
			{
				return this._IAActivityCode;
			}
			set
			{
				if ((this._IAActivityCode != value))
				{
					this._IAActivityCode = value;
				}
			}
		}
		
		[Column(Storage="_IASubActivityCode", DbType="NVarChar(255)")]
		public string IASubActivityCode
		{
			get
			{
				return this._IASubActivityCode;
			}
			set
			{
				if ((this._IASubActivityCode != value))
				{
					this._IASubActivityCode = value;
				}
			}
		}
		
		[Column(Storage="_IPPCSectorCode", DbType="NVarChar(255)")]
		public string IPPCSectorCode
		{
			get
			{
				return this._IPPCSectorCode;
			}
			set
			{
				if ((this._IPPCSectorCode != value))
				{
					this._IPPCSectorCode = value;
				}
			}
		}
		
		[Column(Storage="_IPPCActivityCode", DbType="NVarChar(255)")]
		public string IPPCActivityCode
		{
			get
			{
				return this._IPPCActivityCode;
			}
			set
			{
				if ((this._IPPCActivityCode != value))
				{
					this._IPPCActivityCode = value;
				}
			}
		}
		
		[Column(Storage="_IPPCSubActivityCode", DbType="NVarChar(255)")]
		public string IPPCSubActivityCode
		{
			get
			{
				return this._IPPCSubActivityCode;
			}
			set
			{
				if ((this._IPPCSubActivityCode != value))
				{
					this._IPPCSubActivityCode = value;
				}
			}
		}
		
		[Column(Storage="_LOV_IASectorID", DbType="Int")]
		public System.Nullable<int> LOV_IASectorID
		{
			get
			{
				return this._LOV_IASectorID;
			}
			set
			{
				if ((this._LOV_IASectorID != value))
				{
					this._LOV_IASectorID = value;
				}
			}
		}
		
		[Column(Storage="_LOV_IAActivityID", DbType="Int")]
		public System.Nullable<int> LOV_IAActivityID
		{
			get
			{
				return this._LOV_IAActivityID;
			}
			set
			{
				if ((this._LOV_IAActivityID != value))
				{
					this._LOV_IAActivityID = value;
				}
			}
		}
		
		[Column(Storage="_LOV_IASubActivityID", DbType="Int")]
		public System.Nullable<int> LOV_IASubActivityID
		{
			get
			{
				return this._LOV_IASubActivityID;
			}
			set
			{
				if ((this._LOV_IASubActivityID != value))
				{
					this._LOV_IASubActivityID = value;
				}
			}
		}
		
		[Column(Storage="_NACESectorCode", DbType="NVarChar(255)")]
		public string NACESectorCode
		{
			get
			{
				return this._NACESectorCode;
			}
			set
			{
				if ((this._NACESectorCode != value))
				{
					this._NACESectorCode = value;
				}
			}
		}
		
		[Column(Storage="_NACEActivityCode", DbType="NVarChar(255)")]
		public string NACEActivityCode
		{
			get
			{
				return this._NACEActivityCode;
			}
			set
			{
				if ((this._NACEActivityCode != value))
				{
					this._NACEActivityCode = value;
				}
			}
		}
		
		[Column(Storage="_NACESubActivityCode", DbType="NVarChar(255)")]
		public string NACESubActivityCode
		{
			get
			{
				return this._NACESubActivityCode;
			}
			set
			{
				if ((this._NACESubActivityCode != value))
				{
					this._NACESubActivityCode = value;
				}
			}
		}
		
		[Column(Storage="_LOV_NACESectorID", DbType="Int")]
		public System.Nullable<int> LOV_NACESectorID
		{
			get
			{
				return this._LOV_NACESectorID;
			}
			set
			{
				if ((this._LOV_NACESectorID != value))
				{
					this._LOV_NACESectorID = value;
				}
			}
		}
		
		[Column(Storage="_LOV_NACEActivityID", DbType="Int")]
		public System.Nullable<int> LOV_NACEActivityID
		{
			get
			{
				return this._LOV_NACEActivityID;
			}
			set
			{
				if ((this._LOV_NACEActivityID != value))
				{
					this._LOV_NACEActivityID = value;
				}
			}
		}
		
		[Column(Storage="_LOV_NACESubActivityID", DbType="Int")]
		public System.Nullable<int> LOV_NACESubActivityID
		{
			get
			{
				return this._LOV_NACESubActivityID;
			}
			set
			{
				if ((this._LOV_NACESubActivityID != value))
				{
					this._LOV_NACESubActivityID = value;
				}
			}
		}
		
		[Column(Storage="_LOV_ConfidentialityIDAir", DbType="Int")]
		public System.Nullable<int> LOV_ConfidentialityIDAir
		{
			get
			{
				return this._LOV_ConfidentialityIDAir;
			}
			set
			{
				if ((this._LOV_ConfidentialityIDAir != value))
				{
					this._LOV_ConfidentialityIDAir = value;
				}
			}
		}
		
		[Column(Storage="_LOV_ConfidentialityIDWater", DbType="Int")]
		public System.Nullable<int> LOV_ConfidentialityIDWater
		{
			get
			{
				return this._LOV_ConfidentialityIDWater;
			}
			set
			{
				if ((this._LOV_ConfidentialityIDWater != value))
				{
					this._LOV_ConfidentialityIDWater = value;
				}
			}
		}
		
		[Column(Storage="_LOV_ConfidentialityIDSoil", DbType="Int")]
		public System.Nullable<int> LOV_ConfidentialityIDSoil
		{
			get
			{
				return this._LOV_ConfidentialityIDSoil;
			}
			set
			{
				if ((this._LOV_ConfidentialityIDSoil != value))
				{
					this._LOV_ConfidentialityIDSoil = value;
				}
			}
		}
		
		[Column(Storage="_ConfidentialCodeAir", DbType="NVarChar(255)")]
		public string ConfidentialCodeAir
		{
			get
			{
				return this._ConfidentialCodeAir;
			}
			set
			{
				if ((this._ConfidentialCodeAir != value))
				{
					this._ConfidentialCodeAir = value;
				}
			}
		}
		
		[Column(Storage="_ConfidentialCodeWater", DbType="NVarChar(255)")]
		public string ConfidentialCodeWater
		{
			get
			{
				return this._ConfidentialCodeWater;
			}
			set
			{
				if ((this._ConfidentialCodeWater != value))
				{
					this._ConfidentialCodeWater = value;
				}
			}
		}
		
		[Column(Storage="_ConfidentialCodeSoil", DbType="NVarChar(255)")]
		public string ConfidentialCodeSoil
		{
			get
			{
				return this._ConfidentialCodeSoil;
			}
			set
			{
				if ((this._ConfidentialCodeSoil != value))
				{
					this._ConfidentialCodeSoil = value;
				}
			}
		}
		
		[Column(Storage="_ConfidentialIndicator", DbType="Bit NOT NULL")]
		public bool ConfidentialIndicator
		{
			get
			{
				return this._ConfidentialIndicator;
			}
			set
			{
				if ((this._ConfidentialIndicator != value))
				{
					this._ConfidentialIndicator = value;
				}
			}
		}
		
		[Column(Storage="_ConfidentialIndicatorFacility", DbType="Bit NOT NULL")]
		public bool ConfidentialIndicatorFacility
		{
			get
			{
				return this._ConfidentialIndicatorFacility;
			}
			set
			{
				if ((this._ConfidentialIndicatorFacility != value))
				{
					this._ConfidentialIndicatorFacility = value;
				}
			}
		}
	}
}
#pragma warning restore 1591
