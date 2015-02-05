﻿<%@ Control Language="C#" AutoEventWireup="true" EnableViewState="true" CodeFile="ucFacilityPollutantTransfersTrendSheetEPER.ascx.cs" Inherits="ucFacilityPollutantTransfersTrendSheetEPER" %>

<%@ Register src="~/UserControls/Common/ucSheetLinks.ascx" tagname="ucSheetLinks" tagprefix="eprtr" %>
<%@ Register Src="~/UserControls/Common/ucSheetSubHeader.ascx" TagName="SheetSubHeader" TagPrefix="eprtr" %>
<%@ Register Src="~/UserControls/Common/ucStackColumnEPER.ascx" TagName="ucStackColumnEPER" TagPrefix="eprtr" %>
<%@ Register Src="~/UserControls/Common/ucYearCompareEPER.ascx" TagName="ucYearCompareEPER" TagPrefix="eprtr" %>
<%@ Register Src="~/UserControls/Common/ucDownloadPrint.ascx" TagName="ucDownloadPrint" TagPrefix="eprtr" %>

<div class="look_sheet_level2">

    <%-- headline --%>
    <div class="layout_sheet_header">
        <h2>
            <asp:Literal ID="litHeadline" Text="Header" runat="server" Visible="true"></asp:Literal>
        </h2>
    </div>
    
    <eprtr:ucSheetLinks ID="ucSheetLinks" runat="server" Visible="true" />
        
    <%-- download and print icons --%>
    <div class="layout_sheet_download_print">
      <eprtr:ucDownloadPrint ID="ucDownloadPrint" Visible="true" runat="server" />
    </div>
    
    <%-- Subheader --%>
    <div class="layout_sheet_subHeader">
        <eprtr:SheetSubHeader ID="ucSheetSubHeader" runat="server"/>
    </div>
            
    <div class="layout_sheet_content">
      <eprtr:ucStackColumnEPER ID="ucStackColumnTime" Visible="false"  Width="700" Height="250" runat="server" />
      
      <table id="compareTable" visible="true" cellspacing="15" runat="server">
      
        <tr>
          <%-- Compare year --%>
          <td>
            <eprtr:ucYearCompareEPER ID="ucYearCompareEPER" Visible="false" runat="server" />
            <asp:Label ID="lbNoDataForSelectedYears" Text=" <%$ Resources:Common, TimeSeriesCompareNoData %>" runat="server" Visible="false"></asp:Label>
          </td>
        </tr>
        
        <tr>
        
          <%-- Compare chart --%>
          <td style="width:50%">
              <eprtr:ucStackColumnEPER ID="ucStackColumnCompare" Visible="false" Width="300" Height="250" runat="server" />
          </td>
          
          <%-- Compare result in table --%>
          <td style="width:50%;vertical-align:top;">
                   
            <asp:GridView ID="grdCompareDetails" 
                runat="server" ShowHeader="false" AutoGenerateColumns="false" GridLines="none"
                EmptyDataRowStyle-Height="0px">
                <Columns>
                    <asp:BoundField DataField="Label"   ItemStyle-CssClass="CompColLabel"></asp:BoundField>
                    <asp:BoundField DataField="Value1" ItemStyle-CssClass="CompColData"></asp:BoundField>
                    <asp:BoundField DataField="Value2" ItemStyle-CssClass="CompColData"></asp:BoundField>
                </Columns>
            </asp:GridView>
              
                    
          </td>
        </tr>
      
      </table>
      
    </div>
    
    
    
</div>