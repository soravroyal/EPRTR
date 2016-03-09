<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" CodeFile="pgFAQ.aspx.cs" Inherits="pgFAQ" %>


<asp:Content ID="infoarea" ContentPlaceHolderID="ContentInfoArea" runat="server">

    <%--Title and subtitle--%>
    <div class="StaticPageStyle">
        <h1>
            <asp:Literal ID="PageHeader" Text="<%$ Resources:Static, FAQPageHeader %>" runat="server" />
        </h1>
        <div>
            <asp:Literal ID="PageContent" Text="" Mode="Transform" runat="server"></asp:Literal>
        </div>
    </div>
</asp:Content>