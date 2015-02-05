﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="EPRTRcms.Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>
    <asp:Literal runat="server" Text="<%$ Resources:TextStrings, LoginHeaderText%>" />
    </title>

</head>


<body>
    <form id="form1" runat="server">
    
    <br />
    <div style="font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 0.8em;">
        <asp:Literal ID="LoginHeaderText" runat="server" Text="<%$ Resources:TextStrings, LoginHeaderText%>" />
    </div>
    <br />    
    <div>
        <asp:Login ID="Login1" runat="server" MembershipProvider="EEAMembershipProvider"
            DestinationPageUrl="~/Home.aspx" BackColor="#F7F6F3" BorderColor="#E6E2D8"
            BorderPadding="4" BorderStyle="Solid" BorderWidth="1px" 
            Font-Names="Verdana" Font-Size="0.8em" ForeColor="#333333">
            <TextBoxStyle Font-Size="0.8em" />
            <LoginButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px"
                Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284775" />
            <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
            <TitleTextStyle BackColor="#5D7B9D" Font-Bold="True" Font-Size="0.9em" ForeColor="White" />
        </asp:Login>
    </div>
    </form>
</body>
</html>
