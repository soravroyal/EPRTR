﻿#pragma warning disable 1591
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:2.0.50727.3053
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace QueryCms
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
	
	
	[System.Data.Linq.Mapping.DatabaseAttribute(Name="EPRTRcms")]
	public partial class DataClassesCultureDataContext : System.Data.Linq.DataContext
	{
		
		private static System.Data.Linq.Mapping.MappingSource mappingSource = new AttributeMappingSource();
		
    #region Extensibility Method Definitions
    partial void OnCreated();
    partial void InsertLOV_Culture(LOV_Culture instance);
    partial void UpdateLOV_Culture(LOV_Culture instance);
    partial void DeleteLOV_Culture(LOV_Culture instance);
    #endregion
		
		public DataClassesCultureDataContext(string connection) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public DataClassesCultureDataContext(System.Data.IDbConnection connection) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public DataClassesCultureDataContext(string connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public DataClassesCultureDataContext(System.Data.IDbConnection connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public System.Data.Linq.Table<LOV_Culture> LOV_Cultures
		{
			get
			{
				return this.GetTable<LOV_Culture>();
			}
		}
	}
	
	[Table(Name="dbo.LOV_Culture")]
	public partial class LOV_Culture : INotifyPropertyChanging, INotifyPropertyChanged
	{
		
		private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
		
		private int _LOV_CultureID;
		
		private string _Code;
		
		private string _EnglishName;
		
		private string _Name;
		
    #region Extensibility Method Definitions
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void OnLOV_CultureIDChanging(int value);
    partial void OnLOV_CultureIDChanged();
    partial void OnCodeChanging(string value);
    partial void OnCodeChanged();
    partial void OnEnglishNameChanging(string value);
    partial void OnEnglishNameChanged();
    partial void OnNameChanging(string value);
    partial void OnNameChanged();
    #endregion
		
		public LOV_Culture()
		{
			OnCreated();
		}
		
		[Column(Storage="_LOV_CultureID", AutoSync=AutoSync.OnInsert, DbType="Int NOT NULL IDENTITY", IsPrimaryKey=true, IsDbGenerated=true)]
		public int LOV_CultureID
		{
			get
			{
				return this._LOV_CultureID;
			}
			set
			{
				if ((this._LOV_CultureID != value))
				{
					this.OnLOV_CultureIDChanging(value);
					this.SendPropertyChanging();
					this._LOV_CultureID = value;
					this.SendPropertyChanged("LOV_CultureID");
					this.OnLOV_CultureIDChanged();
				}
			}
		}
		
		[Column(Storage="_Code", DbType="NVarChar(255) NOT NULL", CanBeNull=false)]
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
					this.OnCodeChanging(value);
					this.SendPropertyChanging();
					this._Code = value;
					this.SendPropertyChanged("Code");
					this.OnCodeChanged();
				}
			}
		}
		
		[Column(Storage="_EnglishName", DbType="NVarChar(255) NOT NULL", CanBeNull=false)]
		public string EnglishName
		{
			get
			{
				return this._EnglishName;
			}
			set
			{
				if ((this._EnglishName != value))
				{
					this.OnEnglishNameChanging(value);
					this.SendPropertyChanging();
					this._EnglishName = value;
					this.SendPropertyChanged("EnglishName");
					this.OnEnglishNameChanged();
				}
			}
		}
		
		[Column(Storage="_Name", DbType="NVarChar(255)")]
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
					this.OnNameChanging(value);
					this.SendPropertyChanging();
					this._Name = value;
					this.SendPropertyChanged("Name");
					this.OnNameChanged();
				}
			}
		}
		
		public event PropertyChangingEventHandler PropertyChanging;
		
		public event PropertyChangedEventHandler PropertyChanged;
		
		protected virtual void SendPropertyChanging()
		{
			if ((this.PropertyChanging != null))
			{
				this.PropertyChanging(this, emptyChangingEventArgs);
			}
		}
		
		protected virtual void SendPropertyChanged(String propertyName)
		{
			if ((this.PropertyChanged != null))
			{
				this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
			}
		}
	}
}
#pragma warning restore 1591
