﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;
using System.Web.Caching;
using System.IO;
using System.Xml.Xsl;
using System.Web.UI.HtmlControls;

public partial class ucLibraryPollutantsEPER : System.Web.UI.UserControl
{
    //private FileStream _Fs;


    private string _PollutantFile;
    public const string PollutantsOutputFolder = "/Pollutants\\";
    public const string PolluntantsXMLFolder = "/XML\\";
    private string PollutantXSLTFile
    {
        get
        {
            return Server.MapPath("~/" + PolluntantsXMLFolder + "Pollutants.xslt");
        }
    }
    private string PollutantXMLFolder
    {
        get
        {
            return Server.MapPath("~/" + PolluntantsXMLFolder);
        }
    }
    private CacheDependency _Dep 
    { 
        get
        { return new CacheDependency(PollutantXMLFolder, System.DateTime.Now);}
    }
    private string AllPollutantXMLFile
    {
        get
        {
            return Server.MapPath("~/" + PolluntantsXMLFolder + "AllPollutants.xml");
        }
    }
    private string HTMLDir
    {
        get
        {
            return Server.MapPath("~/"+PollutantsOutputFolder);
        }
    }
    
  


    protected void Page_Load(object sender, EventArgs e)
    {
        //HES: temporarily replaced pollutant info page with cms text
        this.PageContent.Text = CMSTextCache.CMSText("Library", "PollutantPageContentEPER");
        
       
    }

    private void DoesFileExist()
    {
        if (!File.Exists(HTMLFilePath())) //if the HTML file doesnt exist then generate it from xml
        {
            GenerateFile();
        }
        else // if the HTML file does exist then read it into the cache
        {
            // Read the file as one string.
            System.IO.StreamReader myFile =
               new System.IO.StreamReader(HTMLFilePath());
            string myString = myFile.ReadToEnd();

            string cacheName = HTMLFilePath();
            AddToCache(cacheName, myString);
            PageContent.Text = ReadFromCache();
            myFile.Close();
        }
    }

    private static string SetLanguage()
    {
        string lang = "EN"; //language var
        return lang;
    }



    
    private void GenerateFile()
    {     

        _PollutantFile = PollutantXSLTFile;
           
        string allPollutantsfile = AllPollutantXMLFile;
        
        
        // Execute the transformation.
        XslCompiledTransform xsltNew = new XslCompiledTransform();
        //xsltNew.Load(_PollutantFile);
        XsltSettings xsltSettings = new XsltSettings();
        xsltSettings.EnableDocumentFunction = true;
        System.Xml.XmlResolver styleSheetResolver = null;
        xsltNew.Load(_PollutantFile, xsltSettings, styleSheetResolver);
        // Create the XsltArgumentList.
        XsltArgumentList argList = new XsltArgumentList();
        argList.AddParam("language", "", SetLanguage());

        

        MemoryStream ms = new MemoryStream();
        xsltNew.Transform(new System.Xml.XPath.XPathDocument(allPollutantsfile), argList, ms);

        
        ms.Flush();
        ms.Position = 0;
        StreamReader sr = new StreamReader(ms);
        string s = sr.ReadToEnd();

       
        string myTest = ms.ToString();

        string cacheName = HTMLFilePath();
        AddToCache(cacheName, s);





        
    }

  

    private string HTMLFilePath()
    {
        string myDir = HTMLDir + String.Format("AllPollutants_{0}.html", SetLanguage()); 
        
        return myDir;
    }





    private string ReadFromCache()
    {
        string myCache = (string)Cache[HTMLFilePath()];
        return myCache;
    }

     private void AddToCache(string fileName, string fileContents)
    {
        
        Cache.Insert(fileName, fileContents, _Dep);
    }



    //log when item is added and removed from cache (low prority)
    private void Log(System.Diagnostics.EventLogEntryType eventLogEntryType, Uri url, string message)
    {

        string eventLog = "WebEPRTR";
        string eventSource = "www.eprtr.ec.europa.eu";
        string infoMessage = "";

        Exception exception = Server.GetLastError();
        infoMessage = "Message:\r\n" + message + "\r\n\r\n";
        infoMessage += "URL:\r\n" + url + "\r\n\r\n";


        //if (exception.InnerException != null)
        //    infoMessage += "InnerException:\r\n" + exception.StackTrace + "\r\n\r\n";

        // make sure the Eventlog Exists
        if (!System.Diagnostics.EventLog.SourceExists(eventSource))
            System.Diagnostics.EventLog.CreateEventSource(eventSource, eventLog);

        // make new log
        System.Diagnostics.EventLog log = new System.Diagnostics.EventLog(eventLog);
        log.Source = eventSource;
        log.WriteEntry("ERROR: " + eventSource + "\r\n\r\n" + infoMessage, eventLogEntryType);
    }


    //Clear cache, used for testing. 
    public void ClearApplicationCache()
    {

        List<string> keys = new List<string>();
        // retrieve application ResourceProvidersCache enumerator
        IDictionaryEnumerator enumerator = Cache.GetEnumerator();



        // copy all keys that currently exist in ResourceProvidersCache
        while (enumerator.MoveNext())
        {
            keys.Add(enumerator.Key.ToString());
        }



        // delete every key from cache

        for (int i = 0; i < keys.Count; i++)
        {
            Cache.Remove(keys[i]);
        }

        Log(System.Diagnostics.EventLogEntryType.Information, Request.Url, "Cache cleared");
    }
}