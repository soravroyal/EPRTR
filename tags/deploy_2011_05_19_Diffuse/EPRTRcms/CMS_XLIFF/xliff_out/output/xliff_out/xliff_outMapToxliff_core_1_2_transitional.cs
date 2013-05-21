////////////////////////////////////////////////////////////////////////
//
// xliff_outMapToxliff_core_1_2_transitional.cs
//
// This file was generated by MapForce 2008r2sp1.
//
// YOU SHOULD NOT MODIFY THIS FILE, BECAUSE IT WILL BE
// OVERWRITTEN WHEN YOU RE-RUN CODE GENERATION.
//
// Refer to the MapForce Documentation for further details.
// http://www.altova.com/mapforce
//
////////////////////////////////////////////////////////////////////////

using System;
using System.Collections;
using System.Data;
using System.Xml;
using Altova.Types;
using Altova.Xml;
using Altova.Functions;
using Altova.Db;


using xliff_core_1_2_transitional; // application.libraries
using EPRTRcms; // application.libraries



namespace xliff_out

{
	
	public class xliff_outMapToxliff_core_1_2_transitional : Altova.TraceProvider 
	{
		private bool runDoesCloseAll = true;
		
		#region Members
		// documents
		
		// instances
		protected System.Data.IDbConnection	m_EPRTRcmsInstance;
		protected AutoNumberStateMap mAutoNumberStates;
		// members
		protected object m_var4_SourceLanguage;
		protected string m_var5_SourceLanguage_string;
		protected /* type 35 */ string m_var7_SourceLanguage_string_language;
		protected object m_var8_DataType;
		protected string m_var9_DataType_string;
		protected /* type 44 */ string m_var11_DataType_string_anySimpleType;
		protected object m_var12_TargetLanguage;
		protected string m_var13_TargetLanguage_string;
		protected /* type 35 */ string m_var15_TargetLanguage_string_language;
		protected object m_var18_uid;
		protected string m_var21_uid_string;
		protected object m_var24_GroupText;
		protected string m_var27_GroupText_string;
		protected object m_var30_TransIDText;
		protected string m_var33_TransIDText_string;
		protected object m_var36_Source;
		protected string m_var39_Source_string;
		protected object m_var42_Target;
		protected string m_var45_Target_string;
		System.Data.IDbCommand m_Queryloopdbo_xliff_file;
		System.Data.IDbCommand m_Queryloopdbo_xliff_header_FileID;
		System.Data.IDbCommand m_Queryloopdbo_xliff_Group_FileID;
		System.Data.IDbCommand m_Queryloopdbo_xliff_TransID_GroupID;
		System.Data.IDbCommand m_Queryloopdbo_xliff_Value_TransID;
		System.Data.IDbCommand m_Queryloopdbo_xliff_Value_TransID2;
		#endregion //Members


		public void Run(string EPRTRcmsSourceConnectionString, string xliff_core_1_2_transitionalTargetFilename)
		{
		// open source streams
		// open target stream
		Altova.IO.Output xliff_core_1_2_transitionalTarget = new Altova.IO.FileOutput(xliff_core_1_2_transitionalTargetFilename);

		// run
		Run(EPRTRcmsSourceConnectionString, xliff_core_1_2_transitionalTarget);

		// close source streams
		// close target stream
		WriteTrace("Saving " + xliff_core_1_2_transitionalTargetFilename + "...\n");
		xliff_core_1_2_transitionalTarget.Stream.Close();
	}

		public void Run(string EPRTRcmsSourceConnectionString, Altova.IO.Output xliff_core_1_2_transitionalTarget)
		{
			mAutoNumberStates = new AutoNumberStateMap();
			// Open the source(s)
			WriteTrace("Connecting to EPRTRcms database...\n");
			try
			{		
				m_EPRTRcmsInstance = new System.Data.OleDb.OleDbConnection( EPRTRcmsSourceConnectionString );
				m_EPRTRcmsInstance.Open();
			}
			catch (Exception e)
			{
				throw new DataSourceUnavailableException("Error connecting to database.", e);
			}
			m_Queryloopdbo_xliff_file = Altova.Db.DbTreeOperations.CreateCommand(
				m_EPRTRcmsInstance, 
				"SELECT [SourceLanguage], [DataType], [TargetLanguage], [FileID] FROM [dbo].[xliff_file]"
);
			m_Queryloopdbo_xliff_file.CommandTimeout = 0;
			m_Queryloopdbo_xliff_header_FileID = Altova.Db.DbTreeOperations.CreateCommand(
				m_EPRTRcmsInstance, 
				"SELECT [uid] FROM [dbo].[xliff_header] WHERE [FileID] = ?"
, System.Data.DbType.Int32);
			m_Queryloopdbo_xliff_header_FileID.CommandTimeout = 0;
			m_Queryloopdbo_xliff_Group_FileID = Altova.Db.DbTreeOperations.CreateCommand(
				m_EPRTRcmsInstance, 
				"SELECT [GroupText], [GroupID] FROM [dbo].[xliff_Group] WHERE [FileID] = ?"
, System.Data.DbType.Int32);
			m_Queryloopdbo_xliff_Group_FileID.CommandTimeout = 0;
			m_Queryloopdbo_xliff_TransID_GroupID = Altova.Db.DbTreeOperations.CreateCommand(
				m_EPRTRcmsInstance, 
				"SELECT [TransIDText], [TransID] FROM [dbo].[xliff_TransID] WHERE [GroupID] = ?"
, System.Data.DbType.Int32);
			m_Queryloopdbo_xliff_TransID_GroupID.CommandTimeout = 0;
			m_Queryloopdbo_xliff_Value_TransID = Altova.Db.DbTreeOperations.CreateCommand(
				m_EPRTRcmsInstance, 
				"SELECT [Source] FROM [dbo].[xliff_Value] WHERE [TransID] = ?"
, System.Data.DbType.Int32);
			m_Queryloopdbo_xliff_Value_TransID.CommandTimeout = 0;
			m_Queryloopdbo_xliff_Value_TransID2 = Altova.Db.DbTreeOperations.CreateCommand(
				m_EPRTRcmsInstance, 
				"SELECT [Target] FROM [dbo].[xliff_Value] WHERE [TransID] = ?"
, System.Data.DbType.Int32);
			m_Queryloopdbo_xliff_Value_TransID2.CommandTimeout = 0;
			// Create the target
			
			XmlDocument xliff_core_1_2_transitionalDoc = (xliff_core_1_2_transitionalTarget.Type == Altova.IO.Output.OutputType.XmlDocument) ? xliff_core_1_2_transitionalTarget.Document : new XmlDocument();
			// create processing instruction etc...
	
			XmlNode xliffTargetObject = xliff_core_1_2_transitionalDoc.CreateElement("xliff", "urn:oasis:names:tc:xliff:document:1.2");			
			xliff_core_1_2_transitionalDoc.AppendChild(xliffTargetObject);
			XmlElement xliffTargetEl = (XmlElement) xliffTargetObject;

			xliffTargetEl.SetAttribute("xmlns", "urn:oasis:names:tc:xliff:document:1.2");
			xliffTargetEl.SetAttribute("xmlns:xsi", "http://www.w3.org/2001/XMLSchema-instance");
			xliffTargetEl.SetAttribute("schemaLocation", "http://www.w3.org/2001/XMLSchema-instance", "urn:oasis:names:tc:xliff:document:1.2 C:/EIONET/CMS_XLIFF/xliff_out/xliff-core-1.2-transitional.xsd");
			xliffTargetEl.SetAttribute("xmlns:xs", "http://www.w3.org/2001/XMLSchema");			

			// Execute mapping
			loopdbo_xliff_file(m_EPRTRcmsInstance, xliffTargetObject);

			// Close the target
			XmlTreeOperations.SaveDocument(
				xliff_core_1_2_transitionalDoc,
				xliff_core_1_2_transitionalTarget,
				"UTF-8",
				false,
				false,
				true
			);

			// Close the Source Library
			m_EPRTRcmsInstance.Close();
		
			if (runDoesCloseAll)
			{
			xliff_core_1_2_transitionalTarget.Close();
			}
		}

public void loopdbo_xliff_file(System.Data.IDbConnection src_EPRTRcms, XmlNode tgt_xliff)
{
	// loop "dbo.xliff_file"
	using(Altova.Db.DbTreeOperations.MemberIterator en_dbo_xliff_file = Altova.Db.DbTreeOperations.GetElements(src_EPRTRcms, EPRTRcms_TypeInfo.binder.Members[EPRTRcms_TypeInfo._altova_mi_altova_EPRTRcms_altova_dbo_xliff_file], m_Queryloopdbo_xliff_file))
	{
		foreach (System.Data.IDataRecord cur_dbo_xliff_file in en_dbo_xliff_file)
		{
			addfile(cur_dbo_xliff_file, tgt_xliff);
		}
	}
}

public void addfile(System.Data.IDataRecord src_dbo_xliff_file, XmlNode tgt_xliff)
{
	// Create "file"
	XmlNode new_file = 
		Altova.Xml.XmlTreeOperations.AddElement(tgt_xliff, xliff_core_1_2_transitional_TypeInfo.binder.Members[xliff_core_1_2_transitional_TypeInfo._altova_mi_xlf_altova_xliffType_altova_file]);
	loopSourceLanguage(src_dbo_xliff_file, new_file);
	loopDataType(src_dbo_xliff_file, new_file);
	loopTargetLanguage(src_dbo_xliff_file, new_file);
	addheader(src_dbo_xliff_file, new_file);
	addbody(src_dbo_xliff_file, new_file);
}

public void loopSourceLanguage(System.Data.IDataRecord src_dbo_xliff_file, XmlNode tgt_file)
{
	// loop "SourceLanguage"
	object cur_SourceLanguage = Altova.Db.DbTreeOperations.FindAttribute(
		src_dbo_xliff_file, EPRTRcms_TypeInfo.binder.Members[EPRTRcms_TypeInfo._altova_mi_dbo_altova_xliff_file_altova_SourceLanguage]);
	if (Altova.Db.DbTreeOperations.Exists(cur_SourceLanguage))
	{
		m_var4_SourceLanguage = cur_SourceLanguage;
		m_var5_SourceLanguage_string = Altova.Db.DbTreeOperations.CastToString(m_var4_SourceLanguage, EPRTRcms_TypeInfo.binder.Members[EPRTRcms_TypeInfo._altova_mi_dbo_altova_xliff_file_altova_SourceLanguage]);
		m_var7_SourceLanguage_string_language = Altova.CoreTypes.CastToString(m_var5_SourceLanguage_string);
		addsource_language(cur_SourceLanguage, tgt_file);
	}
}

public void addsource_language(object src_SourceLanguage, XmlNode tgt_file)
{
	// Create "source-language"
	Altova.Xml.XmlTreeOperations.SetValue(tgt_file, xliff_core_1_2_transitional_TypeInfo.binder.Members[xliff_core_1_2_transitional_TypeInfo._altova_mi_xlf_altova_fileType_altova_source_language], Altova.CoreTypes.CastToString(m_var7_SourceLanguage_string_language));
}

public void loopDataType(System.Data.IDataRecord src_dbo_xliff_file, XmlNode tgt_file)
{
	// loop "DataType"
	object cur_DataType = Altova.Db.DbTreeOperations.FindAttribute(
		src_dbo_xliff_file, EPRTRcms_TypeInfo.binder.Members[EPRTRcms_TypeInfo._altova_mi_dbo_altova_xliff_file_altova_DataType]);
	if (Altova.Db.DbTreeOperations.Exists(cur_DataType))
	{
		m_var8_DataType = cur_DataType;
		m_var9_DataType_string = Altova.Db.DbTreeOperations.CastToString(m_var8_DataType, EPRTRcms_TypeInfo.binder.Members[EPRTRcms_TypeInfo._altova_mi_dbo_altova_xliff_file_altova_DataType]);
		m_var11_DataType_string_anySimpleType = Altova.CoreTypes.CastToString(m_var9_DataType_string);
		adddatatype(cur_DataType, tgt_file);
	}
}

public void adddatatype(object src_DataType, XmlNode tgt_file)
{
	// Create "datatype"
	Altova.Xml.XmlTreeOperations.SetValue(tgt_file, xliff_core_1_2_transitional_TypeInfo.binder.Members[xliff_core_1_2_transitional_TypeInfo._altova_mi_xlf_altova_fileType_altova_datatype], Altova.CoreTypes.CastToString(m_var11_DataType_string_anySimpleType));
}

public void loopTargetLanguage(System.Data.IDataRecord src_dbo_xliff_file, XmlNode tgt_file)
{
	// loop "TargetLanguage"
	object cur_TargetLanguage = Altova.Db.DbTreeOperations.FindAttribute(
		src_dbo_xliff_file, EPRTRcms_TypeInfo.binder.Members[EPRTRcms_TypeInfo._altova_mi_dbo_altova_xliff_file_altova_TargetLanguage]);
	if (Altova.Db.DbTreeOperations.Exists(cur_TargetLanguage))
	{
		m_var12_TargetLanguage = cur_TargetLanguage;
		m_var13_TargetLanguage_string = Altova.Db.DbTreeOperations.CastToString(m_var12_TargetLanguage, EPRTRcms_TypeInfo.binder.Members[EPRTRcms_TypeInfo._altova_mi_dbo_altova_xliff_file_altova_TargetLanguage]);
		m_var15_TargetLanguage_string_language = Altova.CoreTypes.CastToString(m_var13_TargetLanguage_string);
		addtarget_language(cur_TargetLanguage, tgt_file);
	}
}

public void addtarget_language(object src_TargetLanguage, XmlNode tgt_file)
{
	// Create "target-language"
	Altova.Xml.XmlTreeOperations.SetValue(tgt_file, xliff_core_1_2_transitional_TypeInfo.binder.Members[xliff_core_1_2_transitional_TypeInfo._altova_mi_xlf_altova_fileType_altova_target_language], Altova.CoreTypes.CastToString(m_var15_TargetLanguage_string_language));
}

public void addheader(System.Data.IDataRecord src_dbo_xliff_file, XmlNode tgt_file)
{
	// Create "header"
	XmlNode new_header = 
		Altova.Xml.XmlTreeOperations.AddElement(tgt_file, xliff_core_1_2_transitional_TypeInfo.binder.Members[xliff_core_1_2_transitional_TypeInfo._altova_mi_xlf_altova_fileType_altova_header]);
	loopdbo_xliff_header_FileID(src_dbo_xliff_file, new_header);
}

public void loopdbo_xliff_header_FileID(System.Data.IDataRecord src_dbo_xliff_file, XmlNode tgt_header)
{
	// loop "dbo.xliff_header|FileID"
	((System.Data.IDataParameter)m_Queryloopdbo_xliff_header_FileID.Parameters["0"]).Value = Altova.Db.DbTreeOperations.FindAttribute(src_dbo_xliff_file, EPRTRcms_TypeInfo.binder.Members[EPRTRcms_TypeInfo._altova_mi_dbo_altova_xliff_file_altova_FileID]);
	using(Altova.Db.DbTreeOperations.MemberIterator en_dbo_xliff_header_FileID = Altova.Db.DbTreeOperations.GetElements(src_dbo_xliff_file, EPRTRcms_TypeInfo.binder.Members[EPRTRcms_TypeInfo._altova_mi_dbo_altova_xliff_file_altova_dbo_xliff_header_FileID], m_Queryloopdbo_xliff_header_FileID))
	{
		foreach (System.Data.IDataRecord cur_dbo_xliff_header_FileID in en_dbo_xliff_header_FileID)
		{
			loopuid(cur_dbo_xliff_header_FileID, tgt_header);
		}
	}
}

public void loopuid(System.Data.IDataRecord src_dbo_xliff_header_FileID, XmlNode tgt_header)
{
	// loop "uid"
	object cur_uid = Altova.Db.DbTreeOperations.FindAttribute(
		src_dbo_xliff_header_FileID, EPRTRcms_TypeInfo.binder.Members[EPRTRcms_TypeInfo._altova_mi_dbo_altova_xliff_header_altova_uid]);
	if (Altova.Db.DbTreeOperations.Exists(cur_uid))
	{
		m_var18_uid = cur_uid;
		m_var21_uid_string = Altova.Db.DbTreeOperations.CastToString(m_var18_uid, EPRTRcms_TypeInfo.binder.Members[EPRTRcms_TypeInfo._altova_mi_dbo_altova_xliff_header_altova_uid]);
		addnote(cur_uid, tgt_header);
	}
}

public void addnote(object src_uid, XmlNode tgt_header)
{
	// Create "note"
	XmlNode new_note = 
		Altova.Xml.XmlTreeOperations.AddElement(tgt_header, xliff_core_1_2_transitional_TypeInfo.binder.Members[xliff_core_1_2_transitional_TypeInfo._altova_mi_xlf_altova_headerType_altova_note]);
	Altova.Xml.XmlTreeOperations.SetValue(new_note, xliff_core_1_2_transitional_TypeInfo.binder.Members[xliff_core_1_2_transitional_TypeInfo._altova_mi_xlf_altova_noteType_altova_unnamed], Altova.CoreTypes.CastToString(m_var21_uid_string));
}

public void addbody(System.Data.IDataRecord src_dbo_xliff_file, XmlNode tgt_file)
{
	// Create "body"
	XmlNode new_body = 
		Altova.Xml.XmlTreeOperations.AddElement(tgt_file, xliff_core_1_2_transitional_TypeInfo.binder.Members[xliff_core_1_2_transitional_TypeInfo._altova_mi_xlf_altova_fileType_altova_body]);
	loopdbo_xliff_Group_FileID(src_dbo_xliff_file, new_body);
}

public void loopdbo_xliff_Group_FileID(System.Data.IDataRecord src_dbo_xliff_file, XmlNode tgt_body)
{
	// loop "dbo.xliff_Group|FileID"
	((System.Data.IDataParameter)m_Queryloopdbo_xliff_Group_FileID.Parameters["0"]).Value = Altova.Db.DbTreeOperations.FindAttribute(src_dbo_xliff_file, EPRTRcms_TypeInfo.binder.Members[EPRTRcms_TypeInfo._altova_mi_dbo_altova_xliff_file_altova_FileID]);
	using(Altova.Db.DbTreeOperations.MemberIterator en_dbo_xliff_Group_FileID = Altova.Db.DbTreeOperations.GetElements(src_dbo_xliff_file, EPRTRcms_TypeInfo.binder.Members[EPRTRcms_TypeInfo._altova_mi_dbo_altova_xliff_file_altova_dbo_xliff_Group_FileID], m_Queryloopdbo_xliff_Group_FileID))
	{
		foreach (System.Data.IDataRecord cur_dbo_xliff_Group_FileID in en_dbo_xliff_Group_FileID)
		{
			addgroup(cur_dbo_xliff_Group_FileID, tgt_body);
		}
	}
}

public void addgroup(System.Data.IDataRecord src_dbo_xliff_Group_FileID, XmlNode tgt_body)
{
	// Create "group"
	XmlNode new_group = 
		Altova.Xml.XmlTreeOperations.AddElement(tgt_body, xliff_core_1_2_transitional_TypeInfo.binder.Members[xliff_core_1_2_transitional_TypeInfo._altova_mi_xlf_altova_bodyType_altova_group]);
	loopGroupText(src_dbo_xliff_Group_FileID, new_group);
	loopdbo_xliff_TransID_GroupID(src_dbo_xliff_Group_FileID, new_group);
}

public void loopGroupText(System.Data.IDataRecord src_dbo_xliff_Group_FileID, XmlNode tgt_group)
{
	// loop "GroupText"
	object cur_GroupText = Altova.Db.DbTreeOperations.FindAttribute(
		src_dbo_xliff_Group_FileID, EPRTRcms_TypeInfo.binder.Members[EPRTRcms_TypeInfo._altova_mi_dbo_altova_xliff_Group_altova_GroupText]);
	if (Altova.Db.DbTreeOperations.Exists(cur_GroupText))
	{
		m_var24_GroupText = cur_GroupText;
		m_var27_GroupText_string = Altova.Db.DbTreeOperations.CastToString(m_var24_GroupText, EPRTRcms_TypeInfo.binder.Members[EPRTRcms_TypeInfo._altova_mi_dbo_altova_xliff_Group_altova_GroupText]);
		addid(cur_GroupText, tgt_group);
	}
}

public void addid(object src_GroupText, XmlNode tgt_group)
{
	// Create "id"
	Altova.Xml.XmlTreeOperations.SetValue(tgt_group, xliff_core_1_2_transitional_TypeInfo.binder.Members[xliff_core_1_2_transitional_TypeInfo._altova_mi_xlf_altova_groupType_altova_id], Altova.CoreTypes.CastToString(m_var27_GroupText_string));
}

public void loopdbo_xliff_TransID_GroupID(System.Data.IDataRecord src_dbo_xliff_Group_FileID, XmlNode tgt_group)
{
	// loop "dbo.xliff_TransID|GroupID"
	((System.Data.IDataParameter)m_Queryloopdbo_xliff_TransID_GroupID.Parameters["0"]).Value = Altova.Db.DbTreeOperations.FindAttribute(src_dbo_xliff_Group_FileID, EPRTRcms_TypeInfo.binder.Members[EPRTRcms_TypeInfo._altova_mi_dbo_altova_xliff_Group_altova_GroupID]);
	using(Altova.Db.DbTreeOperations.MemberIterator en_dbo_xliff_TransID_GroupID = Altova.Db.DbTreeOperations.GetElements(src_dbo_xliff_Group_FileID, EPRTRcms_TypeInfo.binder.Members[EPRTRcms_TypeInfo._altova_mi_dbo_altova_xliff_Group_altova_dbo_xliff_TransID_GroupID], m_Queryloopdbo_xliff_TransID_GroupID))
	{
		foreach (System.Data.IDataRecord cur_dbo_xliff_TransID_GroupID in en_dbo_xliff_TransID_GroupID)
		{
			addtrans_unit(cur_dbo_xliff_TransID_GroupID, tgt_group);
		}
	}
}

public void addtrans_unit(System.Data.IDataRecord src_dbo_xliff_TransID_GroupID, XmlNode tgt_group)
{
	// Create "trans-unit"
	XmlNode new_trans_unit = 
		Altova.Xml.XmlTreeOperations.AddElement(tgt_group, xliff_core_1_2_transitional_TypeInfo.binder.Members[xliff_core_1_2_transitional_TypeInfo._altova_mi_xlf_altova_groupType_altova_trans_unit]);
	loopTransIDText(src_dbo_xliff_TransID_GroupID, new_trans_unit);
	loopdbo_xliff_Value_TransID(src_dbo_xliff_TransID_GroupID, new_trans_unit);
	loopdbo_xliff_Value_TransID2(src_dbo_xliff_TransID_GroupID, new_trans_unit);
}

public void loopTransIDText(System.Data.IDataRecord src_dbo_xliff_TransID_GroupID, XmlNode tgt_trans_unit)
{
	// loop "TransIDText"
	object cur_TransIDText = Altova.Db.DbTreeOperations.FindAttribute(
		src_dbo_xliff_TransID_GroupID, EPRTRcms_TypeInfo.binder.Members[EPRTRcms_TypeInfo._altova_mi_dbo_altova_xliff_TransID_altova_TransIDText]);
	if (Altova.Db.DbTreeOperations.Exists(cur_TransIDText))
	{
		m_var30_TransIDText = cur_TransIDText;
		m_var33_TransIDText_string = Altova.Db.DbTreeOperations.CastToString(m_var30_TransIDText, EPRTRcms_TypeInfo.binder.Members[EPRTRcms_TypeInfo._altova_mi_dbo_altova_xliff_TransID_altova_TransIDText]);
		addid2(cur_TransIDText, tgt_trans_unit);
	}
}

public void addid2(object src_TransIDText, XmlNode tgt_trans_unit)
{
	// Create "id"
	Altova.Xml.XmlTreeOperations.SetValue(tgt_trans_unit, xliff_core_1_2_transitional_TypeInfo.binder.Members[xliff_core_1_2_transitional_TypeInfo._altova_mi_xlf_altova_trans_unitType_altova_id], Altova.CoreTypes.CastToString(m_var33_TransIDText_string));
}

public void loopdbo_xliff_Value_TransID(System.Data.IDataRecord src_dbo_xliff_TransID_GroupID, XmlNode tgt_trans_unit)
{
	// loop "dbo.xliff_Value|TransID"
	((System.Data.IDataParameter)m_Queryloopdbo_xliff_Value_TransID.Parameters["0"]).Value = Altova.Db.DbTreeOperations.FindAttribute(src_dbo_xliff_TransID_GroupID, EPRTRcms_TypeInfo.binder.Members[EPRTRcms_TypeInfo._altova_mi_dbo_altova_xliff_TransID_altova_TransID]);
	using(Altova.Db.DbTreeOperations.MemberIterator en_dbo_xliff_Value_TransID = Altova.Db.DbTreeOperations.GetElements(src_dbo_xliff_TransID_GroupID, EPRTRcms_TypeInfo.binder.Members[EPRTRcms_TypeInfo._altova_mi_dbo_altova_xliff_TransID_altova_dbo_xliff_Value_TransID], m_Queryloopdbo_xliff_Value_TransID))
	{
		foreach (System.Data.IDataRecord cur_dbo_xliff_Value_TransID in en_dbo_xliff_Value_TransID)
		{
			loopSource(cur_dbo_xliff_Value_TransID, tgt_trans_unit);
		}
	}
}

public void loopSource(System.Data.IDataRecord src_dbo_xliff_Value_TransID, XmlNode tgt_trans_unit)
{
	// loop "Source"
	object cur_Source = Altova.Db.DbTreeOperations.FindAttribute(
		src_dbo_xliff_Value_TransID, EPRTRcms_TypeInfo.binder.Members[EPRTRcms_TypeInfo._altova_mi_dbo_altova_xliff_Value_altova_Source]);
	if (Altova.Db.DbTreeOperations.Exists(cur_Source))
	{
		m_var36_Source = cur_Source;
		m_var39_Source_string = Altova.Db.DbTreeOperations.CastToString(m_var36_Source, EPRTRcms_TypeInfo.binder.Members[EPRTRcms_TypeInfo._altova_mi_dbo_altova_xliff_Value_altova_Source]);
		addsource(cur_Source, tgt_trans_unit);
	}
}

public void addsource(object src_Source, XmlNode tgt_trans_unit)
{
	// Create "source"
	XmlNode new_source = 
		Altova.Xml.XmlTreeOperations.AddElement(tgt_trans_unit, xliff_core_1_2_transitional_TypeInfo.binder.Members[xliff_core_1_2_transitional_TypeInfo._altova_mi_xlf_altova_trans_unitType_altova_source]);
	Altova.Xml.XmlTreeOperations.SetValue(new_source, xliff_core_1_2_transitional_TypeInfo.binder.Members[xliff_core_1_2_transitional_TypeInfo._altova_mi_xlf_altova_sourceType_altova_unnamed], Altova.CoreTypes.CastToString(m_var39_Source_string));
}

public void loopdbo_xliff_Value_TransID2(System.Data.IDataRecord src_dbo_xliff_TransID_GroupID, XmlNode tgt_trans_unit)
{
	// loop "dbo.xliff_Value|TransID"
	((System.Data.IDataParameter)m_Queryloopdbo_xliff_Value_TransID2.Parameters["0"]).Value = Altova.Db.DbTreeOperations.FindAttribute(src_dbo_xliff_TransID_GroupID, EPRTRcms_TypeInfo.binder.Members[EPRTRcms_TypeInfo._altova_mi_dbo_altova_xliff_TransID_altova_TransID]);
	using(Altova.Db.DbTreeOperations.MemberIterator en_dbo_xliff_Value_TransID = Altova.Db.DbTreeOperations.GetElements(src_dbo_xliff_TransID_GroupID, EPRTRcms_TypeInfo.binder.Members[EPRTRcms_TypeInfo._altova_mi_dbo_altova_xliff_TransID_altova_dbo_xliff_Value_TransID], m_Queryloopdbo_xliff_Value_TransID2))
	{
		foreach (System.Data.IDataRecord cur_dbo_xliff_Value_TransID in en_dbo_xliff_Value_TransID)
		{
			loopTarget(cur_dbo_xliff_Value_TransID, tgt_trans_unit);
		}
	}
}

public void loopTarget(System.Data.IDataRecord src_dbo_xliff_Value_TransID, XmlNode tgt_trans_unit)
{
	// loop "Target"
	object cur_Target = Altova.Db.DbTreeOperations.FindAttribute(
		src_dbo_xliff_Value_TransID, EPRTRcms_TypeInfo.binder.Members[EPRTRcms_TypeInfo._altova_mi_dbo_altova_xliff_Value_altova_Target]);
	if (Altova.Db.DbTreeOperations.Exists(cur_Target))
	{
		m_var42_Target = cur_Target;
		m_var45_Target_string = Altova.Db.DbTreeOperations.CastToString(m_var42_Target, EPRTRcms_TypeInfo.binder.Members[EPRTRcms_TypeInfo._altova_mi_dbo_altova_xliff_Value_altova_Target]);
		addtarget(cur_Target, tgt_trans_unit);
	}
}

public void addtarget(object src_Target, XmlNode tgt_trans_unit)
{
	// Create "target"
	XmlNode new_target = 
		Altova.Xml.XmlTreeOperations.AddElement(tgt_trans_unit, xliff_core_1_2_transitional_TypeInfo.binder.Members[xliff_core_1_2_transitional_TypeInfo._altova_mi_xlf_altova_trans_unitType_altova_target]);
	Altova.Xml.XmlTreeOperations.SetValue(new_target, xliff_core_1_2_transitional_TypeInfo.binder.Members[xliff_core_1_2_transitional_TypeInfo._altova_mi_xlf_altova_targetType_altova_unnamed], Altova.CoreTypes.CastToString(m_var45_Target_string));
}

	public bool CloseObjectsAfterRun
	{
		get
		{
			return runDoesCloseAll;
		}
		set
		{
			runDoesCloseAll = value;
		}
	}
  } 
}