﻿#pragma warning disable 1591
//------------------------------------------------------------------------------
// <auto-generated>
//     Este código fue generado por una herramienta.
//     Versión de runtime:4.0.30319.1
//
//     Los cambios en este archivo podrían causar un comportamiento incorrecto y se perderán si
//     se vuelve a generar el código.
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
	
	
	[global::System.Data.Linq.Mapping.DatabaseAttribute(Name="EPRTRweb")]
	public partial class DataClassesLOVDataContext : System.Data.Linq.DataContext
	{
		
		private static System.Data.Linq.Mapping.MappingSource mappingSource = new AttributeMappingSource();
		
    #region Definiciones de métodos de extensibilidad
    partial void OnCreated();
    #endregion
		
        //public DataClassesLOVDataContext() : 
        //        base(global::QueryLayer.Properties.Settings.Default.EPRTRwebConnectionString, mappingSource)
        //{
        //    OnCreated();
        //}
		
		public DataClassesLOVDataContext(string connection) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public DataClassesLOVDataContext(System.Data.IDbConnection connection) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public DataClassesLOVDataContext(string connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public DataClassesLOVDataContext(System.Data.IDbConnection connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public System.Data.Linq.Table<LOV_ANNEXIACTIVITY> LOV_ANNEXIACTIVITies
		{
			get
			{
				return this.GetTable<LOV_ANNEXIACTIVITY>();
			}
		}
		
		public System.Data.Linq.Table<LOV_AREAGROUP> LOV_AREAGROUPs
		{
			get
			{
				return this.GetTable<LOV_AREAGROUP>();
			}
		}
		
		public System.Data.Linq.Table<LOV_CONFIDENTIALITY> LOV_CONFIDENTIALITies
		{
			get
			{
				return this.GetTable<LOV_CONFIDENTIALITY>();
			}
		}
		
		public System.Data.Linq.Table<LOV_COUNTRY> LOV_COUNTRies
		{
			get
			{
				return this.GetTable<LOV_COUNTRY>();
			}
		}
		
		public System.Data.Linq.Table<LOV_COUNTRYAREAGROUP> LOV_COUNTRYAREAGROUPs
		{
			get
			{
				return this.GetTable<LOV_COUNTRYAREAGROUP>();
			}
		}
		
		public System.Data.Linq.Table<LOV_NUTSREGION> LOV_NUTSREGIONs
		{
			get
			{
				return this.GetTable<LOV_NUTSREGION>();
			}
		}
		
		public System.Data.Linq.Table<LOV_RIVERBASINDISTRICT> LOV_RIVERBASINDISTRICTs
		{
			get
			{
				return this.GetTable<LOV_RIVERBASINDISTRICT>();
			}
		}
		
		public System.Data.Linq.Table<REPORTINGCOUNTRY> REPORTINGCOUNTRies
		{
			get
			{
				return this.GetTable<REPORTINGCOUNTRY>();
			}
		}
		
		public System.Data.Linq.Table<REPORTINGYEAR> REPORTINGYEARs
		{
			get
			{
				return this.GetTable<REPORTINGYEAR>();
			}
		}
		
		public System.Data.Linq.Table<RECEIVINGCOUNTRY> RECEIVINGCOUNTRies
		{
			get
			{
				return this.GetTable<RECEIVINGCOUNTRY>();
			}
		}
		
		public System.Data.Linq.Table<LOV_NACEACTIVITY> LOV_NACEACTIVITies
		{
			get
			{
				return this.GetTable<LOV_NACEACTIVITY>();
			}
		}
		
		public System.Data.Linq.Table<LATEST_DATAIMPORT> LATEST_DATAIMPORTs
		{
			get
			{
				return this.GetTable<LATEST_DATAIMPORT>();
			}
		}
		
		public System.Data.Linq.Table<LOV_POLLUTANT> LOV_POLLUTANTs
		{
			get
			{
				return this.GetTable<LOV_POLLUTANT>();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.LOV_ANNEXIACTIVITY")]
	public partial class LOV_ANNEXIACTIVITY
	{
		
		private int _LOV_AnnexIActivityID;
		
		private string _Code;
		
		private string _Name;
		
		private System.Nullable<int> _StartYear;
		
		private System.Nullable<int> _EndYear;
		
		private System.Nullable<int> _ParentID;
		
		private string _IPPCCode;
		
		private System.Nullable<int> _eperAnnex3_ID;
		
		public LOV_ANNEXIACTIVITY()
		{
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_LOV_AnnexIActivityID", AutoSync=AutoSync.Always, DbType="Int NOT NULL IDENTITY", IsDbGenerated=true)]
		public int LOV_AnnexIActivityID
		{
			get
			{
				return this._LOV_AnnexIActivityID;
			}
			set
			{
				if ((this._LOV_AnnexIActivityID != value))
				{
					this._LOV_AnnexIActivityID = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Code", DbType="NVarChar(255) NOT NULL", CanBeNull=false)]
		public string Code
		{
			get
			{
				return this._Code;
			}
			set
			{
				if ((this._Code != value))
				{
					this._Code = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Name", DbType="NVarChar(255) NOT NULL", CanBeNull=false)]
		public string Name
		{
			get
			{
				return this._Name;
			}
			set
			{
				if ((this._Name != value))
				{
					this._Name = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_StartYear", DbType="Int")]
		public System.Nullable<int> StartYear
		{
			get
			{
				return this._StartYear;
			}
			set
			{
				if ((this._StartYear != value))
				{
					this._StartYear = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_EndYear", DbType="Int")]
		public System.Nullable<int> EndYear
		{
			get
			{
				return this._EndYear;
			}
			set
			{
				if ((this._EndYear != value))
				{
					this._EndYear = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_ParentID", DbType="Int")]
		public System.Nullable<int> ParentID
		{
			get
			{
				return this._ParentID;
			}
			set
			{
				if ((this._ParentID != value))
				{
					this._ParentID = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_IPPCCode", DbType="NVarChar(255)")]
		public string IPPCCode
		{
			get
			{
				return this._IPPCCode;
			}
			set
			{
				if ((this._IPPCCode != value))
				{
					this._IPPCCode = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_eperAnnex3_ID", DbType="Int")]
		public System.Nullable<int> eperAnnex3_ID
		{
			get
			{
				return this._eperAnnex3_ID;
			}
			set
			{
				if ((this._eperAnnex3_ID != value))
				{
					this._eperAnnex3_ID = value;
				}
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.LOV_AREAGROUP")]
	public partial class LOV_AREAGROUP
	{
		
		private int _LOV_AreaGroupID;
		
		private string _Code;
		
		private string _Name;
		
		public LOV_AREAGROUP()
		{
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_LOV_AreaGroupID", AutoSync=AutoSync.Always, DbType="Int NOT NULL IDENTITY", IsDbGenerated=true)]
		public int LOV_AreaGroupID
		{
			get
			{
				return this._LOV_AreaGroupID;
			}
			set
			{
				if ((this._LOV_AreaGroupID != value))
				{
					this._LOV_AreaGroupID = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Code", DbType="NVarChar(255) NOT NULL", CanBeNull=false)]
		public string Code
		{
			get
			{
				return this._Code;
			}
			set
			{
				if ((this._Code != value))
				{
					this._Code = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Name", DbType="NVarChar(255) NOT NULL", CanBeNull=false)]
		public string Name
		{
			get
			{
				return this._Name;
			}
			set
			{
				if ((this._Name != value))
				{
					this._Name = value;
				}
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.LOV_CONFIDENTIALITY")]
	public partial class LOV_CONFIDENTIALITY
	{
		
		private int _LOV_ConfidentialityID;
		
		private string _Code;
		
		private string _Name;
		
		private System.Nullable<int> _StartYear;
		
		private System.Nullable<int> _EndYear;
		
		public LOV_CONFIDENTIALITY()
		{
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_LOV_ConfidentialityID", AutoSync=AutoSync.Always, DbType="Int NOT NULL IDENTITY", IsDbGenerated=true)]
		public int LOV_ConfidentialityID
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
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Code", DbType="NVarChar(255) NOT NULL", CanBeNull=false)]
		public string Code
		{
			get
			{
				return this._Code;
			}
			set
			{
				if ((this._Code != value))
				{
					this._Code = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Name", DbType="NVarChar(255) NOT NULL", CanBeNull=false)]
		public string Name
		{
			get
			{
				return this._Name;
			}
			set
			{
				if ((this._Name != value))
				{
					this._Name = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_StartYear", DbType="Int")]
		public System.Nullable<int> StartYear
		{
			get
			{
				return this._StartYear;
			}
			set
			{
				if ((this._StartYear != value))
				{
					this._StartYear = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_EndYear", DbType="Int")]
		public System.Nullable<int> EndYear
		{
			get
			{
				return this._EndYear;
			}
			set
			{
				if ((this._EndYear != value))
				{
					this._EndYear = value;
				}
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.LOV_COUNTRY")]
	public partial class LOV_COUNTRY
	{
		
		private int _LOV_CountryID;
		
		private string _Code;
		
		private string _Name;
		
		private System.Nullable<int> _StartYear;
		
		private System.Nullable<int> _EndYear;
		
		public LOV_COUNTRY()
		{
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_LOV_CountryID", AutoSync=AutoSync.Always, DbType="Int NOT NULL IDENTITY", IsDbGenerated=true)]
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
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Code", DbType="NVarChar(255) NOT NULL", CanBeNull=false)]
		public string Code
		{
			get
			{
				return this._Code;
			}
			set
			{
				if ((this._Code != value))
				{
					this._Code = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Name", DbType="NVarChar(255) NOT NULL", CanBeNull=false)]
		public string Name
		{
			get
			{
				return this._Name;
			}
			set
			{
				if ((this._Name != value))
				{
					this._Name = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_StartYear", DbType="Int")]
		public System.Nullable<int> StartYear
		{
			get
			{
				return this._StartYear;
			}
			set
			{
				if ((this._StartYear != value))
				{
					this._StartYear = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_EndYear", DbType="Int")]
		public System.Nullable<int> EndYear
		{
			get
			{
				return this._EndYear;
			}
			set
			{
				if ((this._EndYear != value))
				{
					this._EndYear = value;
				}
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.LOV_COUNTRYAREAGROUP")]
	public partial class LOV_COUNTRYAREAGROUP
	{
		
		private int _LOV_AreaGroupID;
		
		private int _LOV_CountryID;
		
		public LOV_COUNTRYAREAGROUP()
		{
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_LOV_AreaGroupID", DbType="Int NOT NULL")]
		public int LOV_AreaGroupID
		{
			get
			{
				return this._LOV_AreaGroupID;
			}
			set
			{
				if ((this._LOV_AreaGroupID != value))
				{
					this._LOV_AreaGroupID = value;
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
	}
	
	[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.LOV_NUTSREGION")]
	public partial class LOV_NUTSREGION
	{
		
		private int _LOV_NUTSRegionID;
		
		private string _Code;
		
		private string _Name;
		
		private System.Nullable<int> _StartYear;
		
		private System.Nullable<int> _EndYear;
		
		private System.Nullable<int> _ParentID;
		
		private int _LOV_CountryID;
		
		private System.Nullable<int> _Level;
		
		public LOV_NUTSREGION()
		{
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_LOV_NUTSRegionID", AutoSync=AutoSync.Always, DbType="Int NOT NULL IDENTITY", IsDbGenerated=true)]
		public int LOV_NUTSRegionID
		{
			get
			{
				return this._LOV_NUTSRegionID;
			}
			set
			{
				if ((this._LOV_NUTSRegionID != value))
				{
					this._LOV_NUTSRegionID = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Code", DbType="NVarChar(255) NOT NULL", CanBeNull=false)]
		public string Code
		{
			get
			{
				return this._Code;
			}
			set
			{
				if ((this._Code != value))
				{
					this._Code = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Name", DbType="NVarChar(255) NOT NULL", CanBeNull=false)]
		public string Name
		{
			get
			{
				return this._Name;
			}
			set
			{
				if ((this._Name != value))
				{
					this._Name = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_StartYear", DbType="Int")]
		public System.Nullable<int> StartYear
		{
			get
			{
				return this._StartYear;
			}
			set
			{
				if ((this._StartYear != value))
				{
					this._StartYear = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_EndYear", DbType="Int")]
		public System.Nullable<int> EndYear
		{
			get
			{
				return this._EndYear;
			}
			set
			{
				if ((this._EndYear != value))
				{
					this._EndYear = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_ParentID", DbType="Int")]
		public System.Nullable<int> ParentID
		{
			get
			{
				return this._ParentID;
			}
			set
			{
				if ((this._ParentID != value))
				{
					this._ParentID = value;
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
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Name="[Level]", Storage="_Level", DbType="Int")]
		public System.Nullable<int> Level
		{
			get
			{
				return this._Level;
			}
			set
			{
				if ((this._Level != value))
				{
					this._Level = value;
				}
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.LOV_RIVERBASINDISTRICT")]
	public partial class LOV_RIVERBASINDISTRICT
	{
		
		private int _LOV_RiverBasinDistrictID;
		
		private string _Code;
		
		private string _Name;
		
		private System.Nullable<int> _StartYear;
		
		private System.Nullable<int> _EndYear;
		
		private System.Nullable<int> _LOV_CountryID;
		
		public LOV_RIVERBASINDISTRICT()
		{
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_LOV_RiverBasinDistrictID", AutoSync=AutoSync.Always, DbType="Int NOT NULL IDENTITY", IsDbGenerated=true)]
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
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Code", DbType="NVarChar(255) NOT NULL", CanBeNull=false)]
		public string Code
		{
			get
			{
				return this._Code;
			}
			set
			{
				if ((this._Code != value))
				{
					this._Code = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Name", DbType="NVarChar(255) NOT NULL", CanBeNull=false)]
		public string Name
		{
			get
			{
				return this._Name;
			}
			set
			{
				if ((this._Name != value))
				{
					this._Name = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_StartYear", DbType="Int")]
		public System.Nullable<int> StartYear
		{
			get
			{
				return this._StartYear;
			}
			set
			{
				if ((this._StartYear != value))
				{
					this._StartYear = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_EndYear", DbType="Int")]
		public System.Nullable<int> EndYear
		{
			get
			{
				return this._EndYear;
			}
			set
			{
				if ((this._EndYear != value))
				{
					this._EndYear = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_LOV_CountryID", DbType="Int")]
		public System.Nullable<int> LOV_CountryID
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
	}
	
	[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.REPORTINGCOUNTRY")]
	public partial class REPORTINGCOUNTRY
	{
		
		private int _LOV_CountryID;
		
		private string _Code;
		
		private string _Name;
		
		private System.Nullable<int> _StartYear;
		
		private System.Nullable<int> _EndYear;
		
		public REPORTINGCOUNTRY()
		{
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
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Code", DbType="NVarChar(255) NOT NULL", CanBeNull=false)]
		public string Code
		{
			get
			{
				return this._Code;
			}
			set
			{
				if ((this._Code != value))
				{
					this._Code = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Name", DbType="NVarChar(255) NOT NULL", CanBeNull=false)]
		public string Name
		{
			get
			{
				return this._Name;
			}
			set
			{
				if ((this._Name != value))
				{
					this._Name = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_StartYear", DbType="Int")]
		public System.Nullable<int> StartYear
		{
			get
			{
				return this._StartYear;
			}
			set
			{
				if ((this._StartYear != value))
				{
					this._StartYear = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_EndYear", DbType="Int")]
		public System.Nullable<int> EndYear
		{
			get
			{
				return this._EndYear;
			}
			set
			{
				if ((this._EndYear != value))
				{
					this._EndYear = value;
				}
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.REPORTINGYEAR")]
	public partial class REPORTINGYEAR
	{
		
		private int _Year;
		
		private System.Nullable<int> _Countries;
		
		public REPORTINGYEAR()
		{
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Year", DbType="Int NOT NULL")]
		public int Year
		{
			get
			{
				return this._Year;
			}
			set
			{
				if ((this._Year != value))
				{
					this._Year = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Countries", DbType="Int")]
		public System.Nullable<int> Countries
		{
			get
			{
				return this._Countries;
			}
			set
			{
				if ((this._Countries != value))
				{
					this._Countries = value;
				}
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.RECEIVINGCOUNTRY")]
	public partial class RECEIVINGCOUNTRY
	{
		
		private int _LOV_CountryID;
		
		private string _Code;
		
		private string _Name;
		
		private System.Nullable<int> _StartYear;
		
		private System.Nullable<int> _EndYear;
		
		public RECEIVINGCOUNTRY()
		{
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
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Code", DbType="NVarChar(255) NOT NULL", CanBeNull=false)]
		public string Code
		{
			get
			{
				return this._Code;
			}
			set
			{
				if ((this._Code != value))
				{
					this._Code = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Name", DbType="NVarChar(255) NOT NULL", CanBeNull=false)]
		public string Name
		{
			get
			{
				return this._Name;
			}
			set
			{
				if ((this._Name != value))
				{
					this._Name = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_StartYear", DbType="Int")]
		public System.Nullable<int> StartYear
		{
			get
			{
				return this._StartYear;
			}
			set
			{
				if ((this._StartYear != value))
				{
					this._StartYear = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_EndYear", DbType="Int")]
		public System.Nullable<int> EndYear
		{
			get
			{
				return this._EndYear;
			}
			set
			{
				if ((this._EndYear != value))
				{
					this._EndYear = value;
				}
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.LOV_NACEACTIVITY")]
	public partial class LOV_NACEACTIVITY
	{
		
		private int _LOV_NACEActivityID;
		
		private string _Code;
		
		private string _Name;
		
		private System.Nullable<int> _StartYear;
		
		private System.Nullable<int> _EndYear;
		
		private System.Nullable<int> _ParentID;
		
		public LOV_NACEACTIVITY()
		{
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_LOV_NACEActivityID", AutoSync=AutoSync.Always, DbType="Int NOT NULL IDENTITY", IsDbGenerated=true)]
		public int LOV_NACEActivityID
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
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Code", DbType="NVarChar(255) NOT NULL", CanBeNull=false)]
		public string Code
		{
			get
			{
				return this._Code;
			}
			set
			{
				if ((this._Code != value))
				{
					this._Code = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Name", DbType="NVarChar(255) NOT NULL", CanBeNull=false)]
		public string Name
		{
			get
			{
				return this._Name;
			}
			set
			{
				if ((this._Name != value))
				{
					this._Name = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_StartYear", DbType="Int")]
		public System.Nullable<int> StartYear
		{
			get
			{
				return this._StartYear;
			}
			set
			{
				if ((this._StartYear != value))
				{
					this._StartYear = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_EndYear", DbType="Int")]
		public System.Nullable<int> EndYear
		{
			get
			{
				return this._EndYear;
			}
			set
			{
				if ((this._EndYear != value))
				{
					this._EndYear = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_ParentID", DbType="Int")]
		public System.Nullable<int> ParentID
		{
			get
			{
				return this._ParentID;
			}
			set
			{
				if ((this._ParentID != value))
				{
					this._ParentID = value;
				}
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.LATEST_DATAIMPORT")]
	public partial class LATEST_DATAIMPORT
	{
		
		private int _ReportingYear;
		
		private int _LOV_CountryID;
		
		private System.Nullable<System.DateTime> _ForReview;
		
		private System.Nullable<System.DateTime> _Published;
		
		public LATEST_DATAIMPORT()
		{
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
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_ForReview", DbType="DateTime")]
		public System.Nullable<System.DateTime> ForReview
		{
			get
			{
				return this._ForReview;
			}
			set
			{
				if ((this._ForReview != value))
				{
					this._ForReview = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Published", DbType="DateTime")]
		public System.Nullable<System.DateTime> Published
		{
			get
			{
				return this._Published;
			}
			set
			{
				if ((this._Published != value))
				{
					this._Published = value;
				}
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.LOV_POLLUTANT")]
	public partial class LOV_POLLUTANT
	{
		
		private int _LOV_PollutantID;
		
		private string _Code;
		
		private string _Name;
		
		private System.Nullable<int> _StartYear;
		
		private System.Nullable<int> _EndYear;
		
		private System.Nullable<int> _ParentID;
		
		private string _CAS;
		
		private System.Nullable<int> _eperPollutant_ID;
		
		private string _CodeEPER;
		
		public LOV_POLLUTANT()
		{
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_LOV_PollutantID", AutoSync=AutoSync.Always, DbType="Int NOT NULL IDENTITY", IsDbGenerated=true)]
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
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Code", DbType="NVarChar(255) NOT NULL", CanBeNull=false)]
		public string Code
		{
			get
			{
				return this._Code;
			}
			set
			{
				if ((this._Code != value))
				{
					this._Code = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Name", DbType="NVarChar(255) NOT NULL", CanBeNull=false)]
		public string Name
		{
			get
			{
				return this._Name;
			}
			set
			{
				if ((this._Name != value))
				{
					this._Name = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_StartYear", DbType="Int")]
		public System.Nullable<int> StartYear
		{
			get
			{
				return this._StartYear;
			}
			set
			{
				if ((this._StartYear != value))
				{
					this._StartYear = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_EndYear", DbType="Int")]
		public System.Nullable<int> EndYear
		{
			get
			{
				return this._EndYear;
			}
			set
			{
				if ((this._EndYear != value))
				{
					this._EndYear = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_ParentID", DbType="Int")]
		public System.Nullable<int> ParentID
		{
			get
			{
				return this._ParentID;
			}
			set
			{
				if ((this._ParentID != value))
				{
					this._ParentID = value;
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
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_eperPollutant_ID", DbType="Int")]
		public System.Nullable<int> eperPollutant_ID
		{
			get
			{
				return this._eperPollutant_ID;
			}
			set
			{
				if ((this._eperPollutant_ID != value))
				{
					this._eperPollutant_ID = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_CodeEPER", DbType="NVarChar(255)")]
		public string CodeEPER
		{
			get
			{
				return this._CodeEPER;
			}
			set
			{
				if ((this._CodeEPER != value))
				{
					this._CodeEPER = value;
				}
			}
		}
	}
}
#pragma warning restore 1591
