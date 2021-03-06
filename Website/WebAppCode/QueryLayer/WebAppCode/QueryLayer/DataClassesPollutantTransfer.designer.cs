﻿#pragma warning disable 1591
//------------------------------------------------------------------------------
// <auto-generated>
//     Este código fue generado por una herramienta.
//     Versión de runtime:4.0.30319.18052
//
//     Los cambios en este archivo podrían causar un comportamiento incorrecto y se perderán si
//     se vuelve a generar el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace QueryLayer.WebAppCode.QueryLayer
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
	
	
	[global::System.Data.Linq.Mapping.DatabaseAttribute(Name="EPRTRweb")]
	public partial class DataClasses1DataContext : System.Data.Linq.DataContext
	{
		
		private static System.Data.Linq.Mapping.MappingSource mappingSource = new AttributeMappingSource();
		
    #region Definiciones de métodos de extensibilidad
    partial void OnCreated();
    #endregion
		
		public DataClasses1DataContext() : 
				base(global::QueryLayer.Properties.Settings.Default.EPRTRwebConnectionString1, mappingSource)
		{
			OnCreated();
		}
		
		public DataClasses1DataContext(string connection) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public DataClasses1DataContext(System.Data.IDbConnection connection) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public DataClasses1DataContext(string connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public DataClasses1DataContext(System.Data.IDbConnection connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public System.Data.Linq.Table<POLLUTANTTRANSFER> POLLUTANTTRANSFERs
		{
			get
			{
				return this.GetTable<POLLUTANTTRANSFER>();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.POLLUTANTTRANSFER")]
	public partial class POLLUTANTTRANSFER
	{
		
		private int _FacilityReportID;
		
		private string _FacilityName;
		
		private int _FacilityID;
		
		private int _ReportingYear;
		
		private string _MethodCode;
		
		private double _Quantity;
		
		private string _MethodTypeDesignation;
		
		private string _MethodTypeCode;
		
		private string _UnitCode;
		
		private string _PollutantGroupCode;
		
		private string _PollutantCode;
		
		private string _CAS;
		
		private int _LOV_PollutantGroupID;
		
		private int _LOV_PollutantID;
		
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
		
		private System.Nullable<int> _LOV_ConfidentialityID;
		
		private string _ConfidentialCode;
		
		private bool _ConfidentialIndicator;
		
		private bool _ConfidentialIndicatorFacility;
		
		public POLLUTANTTRANSFER()
		{
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_FacilityReportID", DbType="Int NOT NULL")]
		public int FacilityReportID
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
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_FacilityName", DbType="NVarChar(255)")]
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
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_FacilityID", DbType="Int NOT NULL")]
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
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_ReportingYear", DbType="Int NOT NULL")]
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
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_MethodCode", DbType="NVarChar(255) NOT NULL", CanBeNull=false)]
		public string MethodCode
		{
			get
			{
				return this._MethodCode;
			}
			set
			{
				if ((this._MethodCode != value))
				{
					this._MethodCode = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Quantity", DbType="Float NOT NULL")]
		public double Quantity
		{
			get
			{
				return this._Quantity;
			}
			set
			{
				if ((this._Quantity != value))
				{
					this._Quantity = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_MethodTypeDesignation", DbType="NVarChar(4000)")]
		public string MethodTypeDesignation
		{
			get
			{
				return this._MethodTypeDesignation;
			}
			set
			{
				if ((this._MethodTypeDesignation != value))
				{
					this._MethodTypeDesignation = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_MethodTypeCode", DbType="NVarChar(255)")]
		public string MethodTypeCode
		{
			get
			{
				return this._MethodTypeCode;
			}
			set
			{
				if ((this._MethodTypeCode != value))
				{
					this._MethodTypeCode = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_UnitCode", DbType="NVarChar(255) NOT NULL", CanBeNull=false)]
		public string UnitCode
		{
			get
			{
				return this._UnitCode;
			}
			set
			{
				if ((this._UnitCode != value))
				{
					this._UnitCode = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_PollutantGroupCode", DbType="NVarChar(255) NOT NULL", CanBeNull=false)]
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
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_PollutantCode", DbType="NVarChar(255) NOT NULL", CanBeNull=false)]
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
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_CAS", DbType="NVarChar(20)")]
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
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_LOV_PollutantGroupID", DbType="Int NOT NULL")]
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
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_LOV_PollutantID", DbType="Int NOT NULL")]
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
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_CountryCode", DbType="NVarChar(255)")]
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
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_LOV_CountryID", DbType="Int NOT NULL")]
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
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_RiverBasinDistrictCode", DbType="NVarChar(255) NOT NULL", CanBeNull=false)]
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
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_LOV_RiverBasinDistrictID", DbType="Int NOT NULL")]
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
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_NUTSLevel2RegionCode", DbType="NVarChar(255)")]
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
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_LOV_NUTSRLevel1ID", DbType="Int")]
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
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_LOV_NUTSRLevel2ID", DbType="Int")]
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
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_LOV_NUTSRLevel3ID", DbType="Int")]
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
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_IASectorCode", DbType="NVarChar(255)")]
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
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_IAActivityCode", DbType="NVarChar(255)")]
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
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_IASubActivityCode", DbType="NVarChar(255)")]
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
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_IPPCSectorCode", DbType="NVarChar(255)")]
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
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_IPPCActivityCode", DbType="NVarChar(255)")]
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
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_IPPCSubActivityCode", DbType="NVarChar(255)")]
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
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_LOV_IASectorID", DbType="Int")]
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
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_LOV_IAActivityID", DbType="Int")]
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
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_LOV_IASubActivityID", DbType="Int")]
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
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_NACESectorCode", DbType="NVarChar(255)")]
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
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_NACEActivityCode", DbType="NVarChar(255)")]
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
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_NACESubActivityCode", DbType="NVarChar(255)")]
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
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_LOV_NACESectorID", DbType="Int")]
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
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_LOV_NACEActivityID", DbType="Int")]
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
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_LOV_NACESubActivityID", DbType="Int")]
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
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_LOV_ConfidentialityID", DbType="Int")]
		public System.Nullable<int> LOV_ConfidentialityID
		{
			get
			{
				return this._LOV_ConfidentialityID;
			}
			set
			{
				if ((this._LOV_ConfidentialityID != value))
				{
					this._LOV_ConfidentialityID = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_ConfidentialCode", DbType="NVarChar(255)")]
		public string ConfidentialCode
		{
			get
			{
				return this._ConfidentialCode;
			}
			set
			{
				if ((this._ConfidentialCode != value))
				{
					this._ConfidentialCode = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_ConfidentialIndicator", DbType="Bit NOT NULL")]
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
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_ConfidentialIndicatorFacility", DbType="Bit NOT NULL")]
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
