﻿<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="test.aspx.cs" Inherits="test" %>

<asp:Content ID="infoarea"  ContentPlaceHolderID="ContentInfoArea" runat="server">

    <!--[if IE]>
      <link rel="stylesheet" type="text/css" href="css/ie.css" />
    <![endif]-->
    <script type="text/javascript">
    
    var path_location = location.pathname.replace(/\/[^/]+$/, '');
    
    var dojoConfig = {
      parseOnLoad: true,
      packages: [{
        name: "esriTemplate",
        location: path_location + '/JS_Map' 
      }, {
        name: "utilities",
        location: path_location + '/JS_Map/javascript'
      }, {
        name: "apl",
        location: path_location + '/JS_Map/apl'
      }, {
        name: "eea",
        location: path_location + '/JS_Map/eea'
      },{
        name: "templateConfig",
        location: path_location + '/JS_Map' 
      }]
    };
    
    </script>

    <script type="text/javascript" src="//serverapi.arcgisonline.com/jsapi/arcgis/3.4"></script>
    <script type="text/javascript">
        dojo.require("esri.layout");
    </script>
    <script type="text/javascript" src="JS_Map/javascript/layout.js"></script>
	<script type="text/javascript" src="JS_Map/eea/javascript/EEALayout.js"></script>
    <script type="text/javascript">
        dojo.require("utilities.App");
        dojo.require("templateConfig.commonConfig");

        var i18n;
        dojo.ready(function () {
            i18n = dojo.i18n.getLocalization("esriTemplate", "template");
            var defaults = {
                //The ID for the map from ArcGIS.com     
                webmap: "29ca3f3396f34d19b612c18870f6efb9",
                //The id for the web mapping applciation item that contains configuration info - in most
                //cases this will be null. 
                appid: "",
                //set to true to display the title
                displaytitle: true,
                //Enter a title, if no title is specified, the webmap's title is used.
                title: "",
                //Enter a description for the application. This description will appear in the left pane
                //if no description is entered the webmap description will be used.
                description: "",
                //specify an owner for the app - used by the print option. The default value will be the web map's owner
                owner: '',
                //Specify a color theme for the app. Valid options are gray,blue,purple,green and orange
                theme: 'gray',
                //Optional tools - set to false to hide the tool
                //set to false to hide the zoom slider on the map 
                displayslider: true,
                displaymeasure: true,
                displaybasemaps: true,
                displayoverviewmap: true,
                displayeditor: true,
                ////When editing you need to specify a proxyurl (see below) if the service is on a different domain
                //Specify a proxy url if you will be editing, using the elevation profile or have secure services or web maps that are not shared with everyone.
                proxyurl: location.protocol + '//' + location.host + "/map/sharing/proxy.ashx",
                displaylegend: true,
                displaysearch: true,
                displaylayerlist: true,
                displaybookmarks: true,
                displaydetails: true,
                displaytimeslider: true,
                displayprint: true,
                //Print options 
                printtask: "http://utility.arcgisonline.com/arcgis/rest/services/Utilities/PrintingTools/GPServer/Export%20Web%20Map%20Task",
                //Set the label in the nls file for your browsers language

                printlayouts: [{
                    layout: 'Letter ANSI A Landscape',
                    label: i18n.tools.print.layouts.label1,
                    format: 'PDF'
                }, {
                    layout: 'Letter ANSI A Portrait',
                    label: i18n.tools.print.layouts.label2,
                    format: 'PDF'
                }, {
                    layout: 'Letter ANSI A Landscape',
                    label: i18n.tools.print.layouts.label3,
                    format: 'PNG32'
                }, {
                    layout: 'Letter ANSI A Portrait',
                    label: i18n.tools.print.layouts.label4,
                    format: 'PNG32'
                }],

                //i18n.viewer.main.scaleBarUnits,
                //The elevation tool uses the  measurement tool to draw the lines. So if this is set
                //to true then displaymeasure needs to be true too. 
                displayelevation: false,
                //This option is used when the elevation chart is displayed to control what is displayed when users mouse over or touch the chart. When true, elevation gain/loss will be shown from the first location to the location under the cursor/finger. 
                showelevationdifference: false,
                displayscalebar: true,
                displayshare: false,
                //if enabled enter bitly key and login below.
                //The application allows users to share the map with social networking sites like twitter
                //and facebook. The url for the application can be quite long so shorten it using bit.ly. 
                //You will need to provide your own bitly key and login.
                bitly: {
                    key: 'R_b8a169f3a8b978b9697f64613bf1db6d',
                    login: 'arcgis'
                },
                //Set to true to display the left panel on startup. The left panel can contain the legend, details and editor. Set to true to 
                //hide left panel on initial startup. 2
                leftPanelVisibility: true,
                //If the webmap uses Bing Maps data, you will need to provide your Bing Maps Key
                bingmapskey: commonConfig.bingMapsKey,
                //Modify this to point to your sharing service URL if you are using the portal
                sharingurl: "http://www.arcgis.com/sharing/content/items",
                //specify a group in ArcGIS.com that contains the basemaps to display in the basemap gallery
                //example: title:'ArcGIS Online Basemaps' , owner:esri
                basemapgroup: {
                    title: '',
                    owner: ''
                },
                //Enter the URL's to the geometry service, print task and geocode service. 
                helperServices: commonConfig.helperServices,
                //Enter the URL to a Geometry Service 
                geometryserviceurl: "http://utility.arcgisonline.com/ArcGIS/rest/services/Geometry/GeometryServer",
                //Specify the geocoder options. By default uses the geocoder widget with the default locators. If you specify a url value then that locator will be used. 
                placefinder: {
                    "url": "",
                    "countryCode": "",
                    "currentExtent": false,
                    "placeholder": ""
                },
                //Set link text and url parameters if you want to display clickable links in the upper right-corner
                //of the application. 
                //ArcGIS.com. Enter link values for the link1 and link2 and text to add links. For example
                //url:'http://www.esri.com',text:'Esri'
                link1: {
                    url: '',
                    text: ''
                },
                link2: {
                    url: '',
                    text: ''
                },
                //specify the width of the panel that holds the editor, legend, details
                leftpanewidth: 228,
                //Restrict the map's extent to the initial extent of the web map. When true users
                //will not be able to pan/zoom outside the initial extent.
                constrainmapextent: false,
                //Provide an image and url for a logo that will be displayed as a clickable image 
                //in the lower right corner of the map. If nothing is specified then the esri logo will appear.
                customlogo: {
                    image: '',
                    link: ''
                },
                //embed = true means the margins will be collapsed to just include the map no title or links
                embed: false,

                toplogo: {
                    image: 'JSMap\\eea\\assets\\images\\eea_printlogo-en.gif',
                    link: 'http://www.eea.europa.eu/'
                },
                facebook: {
                    image: 'JSMap\\eea\\assets\\images\\face_book_trans-25.png',
                    link: 'http://www.facebook.com/European.Environment.Agency'
                },
                twitter: {
                    image: 'JSMap\\eea\\assets\\images\\twitter_trans_25.png',
                    link: 'https://twitter.com/euenvironment'
                }

            }

            var app = new utilities.App(defaults, defaults.geometryserviceurl, defaults.proxyurl);
            app.init().then(function (options) {
                initMap(options);
            });

        });

    </script>
    <div class="claro">
        <div id="bc" data-dojo-type="dijit.layout.BorderContainer" data-dojo-props="design:'headline', gutters:false" style="width:100%; height:100%;padding:0;">
          <!-- Header Section-->
          <div id="header" data-dojo-type="dijit.layout.ContentPane" data-dojo-props="region:'top'">
            <!--Title dyanmically generated -->
            <div id="nav" style='display:none;'>
              <!-- links are dynamically generated-->
              <ul>
                <li id="link1List"></li>
                <li>|</li>
                <li id="link2List"></li>
              </ul>
            </div>
          </div>
          <!--End Header-->
          <!-- Main Content Section (map, toolbars, left panel)-->
          <div id="mainWindow" data-dojo-type="dijit.layout.ContentPane" data-dojo-props="region:'center'"
          style="width:100%;height:100%;">
            <div data-dojo-type="dijit.layout.BorderContainer" data-dojo-props="design:'headline',gutters:false"
            style="width:100%;height:100%;padding:0;">
              <!-- Toolbar (Search Basemap Measure)-->
              <div id="toolbarContainer" data-dojo-type="dijit.layout.ContentPane" data-dojo-props='region:"top"'>
                <div data-dojo-type="dijit.Toolbar" id="toptoolbar">
                  <div id="webmap-toolbar-left">
                    <!--Toolbar buttons (Legend, Details, Edit) created dynamically-->
                  </div>
                   <div id="webmap-toolbar-fullscreen" style="float: right;">
                    <!--create the fullscreen button-->
                  </div>
                  <div id="webmap-toolbar-right">
                    <!--create the search tool-->
                  </div>
                  <div id="webmap-toolbar-center">              	
                    <!--Basemap,measure,share,time and layer list tools added if enabled-->
                  </div>
                </div>
              </div>
              <!--End Toolbar-->
              <!--Left Panel-->
              <div data-dojo-type="dijit.layout.BorderContainer" id="leftPane" data-dojo-props="design:'headline', gutters:false,region:'left'" style="height:100%;padding:0;display:none;"></div>
              <!--End Left Panel-->
              <!-- Map Section -->
              <div id="map" data-dojo-type="dijit.layout.ContentPane" data-dojo-props='region:"center"' dir="ltr">
                <div id="logo" class="logo" style="display:none;">
                  <!--If a logo is specified in config section then the logo will be added
                  to the map-->
                </div>
                <!--Floating window that contains the measure dijit-->
                <div id="floater">
                  <div id="measureDiv"></div>
                </div>
              </div>
               <div id="timec" data-dojo-type="dijit.layout.ContentPane" data-dojo-props='region:"bottom"' style="visibility:hidden;display:none;margin:0px 0px;width:auto;height:40px;">
                <!--Floating window contains the time slider-->
                <div id="timeFloater" style='display:none;'></div>
           	    </div>
              <!--end Map section-->
            </div>
          </div>
          <div id="bottomPane" dojotype="dijit.layout.ContentPane" region="bottom" gutters="false" style="display:none;margin:0px 0px;width:auto;height:275px;background-color:white;"></div>
          <!-- End Main Content section-->
        </div>
    </div>

</asp:Content> 