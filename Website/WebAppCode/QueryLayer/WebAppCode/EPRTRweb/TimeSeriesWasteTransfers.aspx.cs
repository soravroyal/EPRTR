﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using QueryLayer.Filters;
using EPRTR.Utilities;
using EPRTR.Localization;
using EPRTR.HeaderBuilders;

public partial class TimeSeriesWasteTransfers : BasePage
{
    /// <summary>
    /// Page load, add flash map and assign eventhandler
    /// </summary>
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            ((MasterSearchPage)this.Master).Headline = Resources.GetGlobal("Facility", "WasteTransfersTimeSeriesHeadline");
            ((MasterSearchPage)this.Master).ShowMapPanel(Global.MainSearchPages.TimeSeriesWasteTransfers);
        }
        /*
        if (!ScriptManager.GetCurrent(Page).IsInAsyncPostBack)
        {
            // add swf object to page
            MapUtils.AddSmallMap(MasterSearchPage.MAPID, this, Global.MainSearchPages.TimeSeriesWasteTransfers, Request.ApplicationPath);
        }
        */

        //MapUtils.AddSmallMap(MasterSearchPage.MAPID, this, Global.MainSearchPages.PollutantTransfers, Request.ApplicationPath);

        if (this.ucSearchOptions.InvokeSearch == null)
            this.ucSearchOptions.InvokeSearch = new EventHandler(doSearch);

        ((MasterSearchPage)this.Master).UpdateMode(false);
    }

    /// <summary>
    /// load completed, perserve scroll
    /// </summary>
    protected override void OnLoadComplete(EventArgs e)
    {
        base.OnLoadComplete(e);
        if (!IsPostBack)
        {
            //if filter is in request, search will be invoked from the start
            if (LinkSearchBuilder.HasWasteTransferTimeSeriesFilter(Request))
            {
                WasteTransferTimeSeriesFilter filter = this.ucSearchOptions.PopulateFilter();
                doSearch(filter, EventArgs.Empty);
            }
        }
    }
    
    /// <summary>
    /// query data to be displayed in the facility resul listview
    /// </summary>
    private void doSearch(object sender, EventArgs e)
    {
        ((MasterSearchPage)this.Master).UpdateMode(true);
        ((MasterSearchPage)this.Master).ShowResultArea();

        WasteTransferTimeSeriesFilter filter = sender as WasteTransferTimeSeriesFilter;
        if (filter != null)
        {
            this.ucTsWasteTransfersSheet.Populate(filter);
           // updateFlashMap(filter);
            updateJavaScriptMap(filter);
        }
    }

    /// <summary>
    /// update flash map
    /// </summary>
   /* private void updateFlashMap(WasteTransferTimeSeriesFilter filter)
    {
        MapFilter mapfilter = QueryLayer.WasteTransferTrend.GetMapFilter(filter);
        string header = MapPrintDetails.Build(SheetHeaderBuilder.GetTimeSeriesWasteTransferHeader(filter));
        MapUtils.UpdateSmallMap(MasterSearchPage.MAPID, this, this.ClientID, mapfilter, header, Request.ApplicationPath);
        ((MasterSearchPage)this.Master).UpdateExpandedScript(mapfilter, header);
    }*/

    private void updateJavaScriptMap(WasteTransferTimeSeriesFilter filter)
    {
        MapFilter mapfilter = QueryLayer.WasteTransferTrend.GetMapJavascriptFilter(filter);
      

        MapJavaScriptUtils.UpdateJavaScriptMap(mapfilter, Page);

    }
}
